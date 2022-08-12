`include "../../Head_Files/cpu.vh"

module seg_if(
    input clk,
    input rst,
    
    //execption and branch bus
    input   [32:0]  branch_bus_i,
    input   [32:0]  exception_bus_i,

    //pipeline control signal and bus
    input           instbuffer_allowin_i,
    output          if_instbuffer_valid1_o,
    output          if_instbuffer_valid2_o,
    output  [31:0]  if_instbuffer_pc_o,
    output  [31:0]  if_instbuffer_rdata1_o,
    output  [31:0]  if_instbuffer_rdata2_o,
    output  [31:0]  if_instbuffer_exception_vector_o,
    output  [34:0]  if_instbuffer_predictor_bus1_o,
    output  [34:0]  if_instbuffer_predictor_bus2_o,


    //predictor signal to update preif_pc or control if-stage
    input   [32:0]  predictor_computepc_bus_i,
    input   [69:0]  predictor_if_bus_i,
    output  [66:0]  preif_preditor_bus_o,

    //hold data when instbuffer_allowin is low
    input   [31:0]  inst_rdata1_i,
    input   [31:0]  inst_rdata2_i,

    //tlb control signal
    output  [31:0]  virtual_inst_addr_o,
    input   [36:0]  tlb_if_bus_i,

    //axi
    output          inst_req_o,
    output  [31:0]  inst_addr_o,
    output          inst_cache_o,
    input           inst_addr_ok_i,
    input           inst_data_ok_i,

    //cp0
    input           cp0_config_uncache_i,
    input  [31:0]   cp0_status_i
    
    );
    //-------------------------------------------------------------
    //                        bus decode
    //-------------------------------------------------------------
    wire        exception_flag  = exception_bus_i[0];
    wire [31:0] exception_pc    = exception_bus_i[32:1];
    wire        branch_flag     = branch_bus_i[0];
    wire [31:0] branch_pc       = branch_bus_i[32:1];
    
`ifdef UsePredictor
    wire        predictor_data2_valid   = predictor_computepc_bus_i[0];
    wire [31:0] predictor_pc            = predictor_computepc_bus_i[32:1];
    wire [34:0] predictor_to_if_bus1    = predictor_if_bus_i[34:0];
    wire [34:0] predictor_to_if_bus2    = predictor_if_bus_i[69:35];
`else
    wire        predictor_data2_valid   = 0;
    wire [34:0] predictor_to_if_bus1    = 0;
    wire [34:0] predictor_to_if_bus2    = 0;
`endif

    //-------------------------------------------------------------
    //                        signal define
    //-------------------------------------------------------------
    //preif stage
    wire        preif_ready_go;
    wire        preif_to_if_valid;
    wire        preif_allowin;
    reg         preif_valid;
    reg [31:0]  preif_pc;
    reg         preif_rdata2_valid;//preif_pc inst 2 valid or not valid

    //if stage
    wire        if_ready_go;
    reg         if_valid;
    wire        if_allowin;
    reg [31:0]  if_exception_vector;
    reg [31:0]  if_pc;
    reg         if_rdata2_valid;
    reg [34:0]  if_predictor_bus1;
    reg [34:0]  if_predictor_bus2;

    //data_ok but id_allowin is low
    reg         valid_tmp;
    reg [31:0]  inst_rdata1_tmp;
    reg [31:0]  inst_rdata2_tmp;

    //-------------------------------------------------------------
    //                compute-pc stage: send inst addr to cache
    //-------------------------------------------------------------
    //----- select next pc -----
    wire fllush = exception_flag || branch_flag;
 
`ifdef UsePredictor
    wire [31:0] preif_pc_n  =   exception_flag? exception_pc:
                                branch_flag?    branch_pc   :predictor_pc;
`else
    wire [31:0] order_pc_n  =   preif_pc + {preif_to_if_rdata2_valid,!preif_to_if_rdata2_valid,2'b0};
    wire [31:0] preif_pc_n  =   exception_flag? exception_pc:
                                branch_flag?    branch_pc   :order_pc_n;
`endif

    //-------------------------------------------------------------
    //                pre-IF stage: send inst addr to cache
    //-------------------------------------------------------------
    //-----pipeline reg-----
    assign preif_ready_go   =   inst_req_o && inst_addr_ok_i || |preif_exception_vector;
    assign preif_allowin    =  !preif_valid || preif_to_if_valid && if_allowin ;
    assign preif_to_if_valid =  preif_valid && preif_ready_go;
    wire   to_preif_valid   =  1'b1;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            preif_valid    <=  1'b1;
        end else if(preif_allowin) begin
            preif_valid    <=  to_preif_valid;
        end

        if(rst == `RstEnable) begin
            preif_pc                <=  `Reset_PC;
            preif_rdata2_valid      <=  1'b1;
        end else if(preif_allowin && to_preif_valid || fllush ) begin
            preif_pc                <=  preif_pc_n;
            preif_rdata2_valid      <=  predictor_data2_valid;
        end
    end
    //-------------------------------------------------------------
    //-----check preif instaddr exception----- 
    wire        addr_error;
    wire        untlb_cache;
    wire        cache_tmp; 
    wire [31:0] untlb_paddr;
    convert_addr if_ConvertAddr(
        .cp0_status_i           (cp0_status_i),
        .virtual_addr_i         (preif_pc),
        .cp0_config_uncache_i   (cp0_config_uncache_i),
        .error_o                (addr_error),
        .need_tlb_o             (need_tlb),
        .untlb_cache_o          (untlb_cache),
        .untlb_paddr_o          (untlb_paddr)
    );

    wire preif_excepttype_instaddr = |preif_pc[1:0] || addr_error;

    //-------------------------------------------------------------
    //----- addr translate bus between TLB and pre_if -----
    assign      virtual_inst_addr_o = preif_pc;
    wire        inst_found          = tlb_if_bus_i[0];
    wire        inst_valid          = tlb_if_bus_i[1];
    wire [2:0]  inst_cache          = tlb_if_bus_i[4:2];
    wire [31:0] physical_inst_addr  = tlb_if_bus_i[36:5];

    //----- TLB state -----
    parameter TLB_NOT_USE = 2'b00;
    parameter TLB_REQ     = 2'b01;
    parameter TLB_OK      = 2'b10;

    //----- TLB signal -----
    reg [1:0]  tlb_state;
    reg        inst_found_r;
    reg        inst_valid_r;
    reg [2:0]  inst_cache_r;
    reg [31:0] physical_inst_addr_r;

    always @(posedge clk) begin
        if(rst == `RstEnable || fllush) begin
            tlb_state <= TLB_NOT_USE;
        end else begin
            case (tlb_state)
                TLB_NOT_USE :   tlb_state <= (preif_valid && need_tlb && !preif_excepttype_instaddr)? TLB_REQ:TLB_NOT_USE;
                TLB_REQ     :   tlb_state <= TLB_OK;
                TLB_OK      :   tlb_state <= (preif_to_if_valid && if_allowin)?  TLB_NOT_USE:TLB_OK;
                default     :   tlb_state <= TLB_NOT_USE;
            endcase
        end
    end

    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            inst_found_r            <=  1'b0; 
            inst_valid_r            <=  1'b0;
            inst_cache_r            <=  3'b000;
            physical_inst_addr_r    <=  32'b0;
        end else if(tlb_state == TLB_REQ)begin
            inst_found_r            <=  inst_found; 
            inst_valid_r            <=  inst_valid;
            inst_cache_r            <=  inst_cache;
            physical_inst_addr_r    <=  physical_inst_addr;
        end
    end

    //-------------------------------------------------------------
    //-----check preif addr error exception and tlb exception ----- 
    wire preif_excepttype_tlbrefill_instaddr  = need_tlb && (tlb_state == TLB_OK) && !inst_found_r;
    wire preif_excepttype_tlbinvalid_instaddr = need_tlb && (tlb_state == TLB_OK) &&  inst_found_r && !inst_valid_r;
    
    wire [31:0] preif_exception_vector;
    excepttpye preif_excepttpye (
        .refetch_i                      (1'b0),
        .cop0_unused_i                  (1'b0),
        .cop1_unused_i                  (1'b0),
        .tlb_modified_i                 (1'b0),
        .tlb_invalid_dataaddr_write_i   (1'b0),
        .tlb_invalid_dataaddr_read_i    (1'b0),
        .tlb_refill_dataaddr_write_i    (1'b0),
        .tlb_refill_dataaddr_read_i     (1'b0),
        .tlb_invalid_instaddr_i         (preif_excepttype_tlbinvalid_instaddr),
        .tlb_refill_instaddr_i          (preif_excepttype_tlbrefill_instaddr),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (1'b0),
        .overflow_i                     (1'b0),
        .instvaild_i                    (1'b0),
        .eret_i                         (1'b0),
        .break_i                        (1'b0),
        .syscall_i                      (1'b0),
        .instaddr_i                     (preif_excepttype_instaddr),
        .interrupt_i                    (1'b0),

        .exception_vector_i             (32'b0),
        .exception_vector_o             (preif_exception_vector)
    );


    //-------------------------------------------------------------
    //-----Send a request to the inst cache-----
    wire    addr_ready      =  (tlb_state == TLB_OK) || (tlb_state == TLB_NOT_USE) && !need_tlb; 
    assign  inst_req_o      =  (rst == `RstDisable) && !fllush && preif_valid /*&& if_allowin */&& !preif_exception_vector && addr_ready;
    assign  inst_addr_o     =  {need_tlb?   physical_inst_addr_r[31:3]:untlb_paddr[31:3] , 3'b000};
 
 `ifdef Simulation
    assign  inst_cache_o    =   1'b1;
 `else
    assign  inst_cache_o    =   (need_tlb)? (inst_cache_r == 3'h3):untlb_cache;
 `endif  

    //-------------------------------------------------------------
    //-----the second instruction is valid or not-----
    //only using cache and not in cache boundary, the second inst is valid
 `ifdef Cache_Have_rdata2
    wire preif_to_if_rdata2_valid = preif_rdata2_valid && !preif_pc[2];
 `else 
    wire preif_to_if_rdata2_valid = 1'b0;
`endif
    //-------------------------------------------------------------
    //----- preif bus to predictor ----
    assign preif_preditor_bus_o =   {   preif_pc_n,
                                        to_preif_valid && preif_allowin,
                                        preif_to_if_valid && if_allowin,
                                        preif_pc,
                                        preif_to_if_rdata2_valid    };

    //------------------------------------------------------------
    //                    IF stage: get inst data
    //------------------------------------------------------------
    assign if_ready_go          =   !pre_addr_ok && (|if_exception_vector || inst_data_ok_i || valid_tmp);
    assign if_allowin           =   !if_valid || if_instbuffer_valid && instbuffer_allowin_i;
    assign if_instbuffer_valid  =   if_valid && if_ready_go;
    
    always @(posedge clk) begin
        if ((rst == `RstEnable) || fllush) begin
            if_valid <= 1'b0;
        end else if (if_allowin) begin
            if_valid <= preif_to_if_valid;
        end

        if (rst == `RstEnable) begin
            if_pc               <= 32'b0;
            if_exception_vector <= 32'b0;
            if_rdata2_valid     <= 1'b0;
            if_predictor_bus1   <=  35'b0;
            if_predictor_bus2   <=  35'b0;
        end else if (preif_to_if_valid && if_allowin) begin
            if_pc                   <=  preif_pc;
            if_exception_vector     <=  preif_exception_vector;
            if_rdata2_valid         <=  preif_rdata2_valid;
            if_predictor_bus1       <=  predictor_to_if_bus1;
            if_predictor_bus2       <=  predictor_to_if_bus2;
        end
    end
    
    //-----data_ok but instbuffer_allowin is low-----
    always @(posedge clk) begin
        if((rst == `RstEnable) || fllush)begin
            valid_tmp <= 1'b0;
        end else begin
            case(valid_tmp)
                1'b0: valid_tmp <= (inst_data_ok_i && !instbuffer_allowin_i)?       1'b1:1'b0;
                1'b1: valid_tmp <= (if_instbuffer_valid && instbuffer_allowin_i)?   1'b0:1'b1;
            endcase
        end

        if(!valid_tmp && inst_data_ok_i && !instbuffer_allowin_i)begin
            inst_rdata1_tmp <= inst_rdata1_i;
            inst_rdata2_tmp <= inst_rdata2_i;
        end
    end

    //-----need to fllush, but exits previous addr ok and data not ok-----
    reg pre_addr_ok;
    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            pre_addr_ok <= 0;
        end else begin
            case(pre_addr_ok)
                1'b0: pre_addr_ok <= (fllush && !if_ready_go && if_valid)?    1'b1:1'b0;
                1'b1: pre_addr_ok <= (inst_data_ok_i)?                        1'b0:1'b1;
            endcase
        end
    end

    //-------------------------------------------------------------
    //                    assign output signal
    //-------------------------------------------------------------
    //-----signal to instbuffer, indicate inst valid-----
    assign if_instbuffer_valid1_o           = if_instbuffer_valid;
    assign if_instbuffer_valid2_o           = if_instbuffer_valid && if_rdata2_valid && !if_pc[2];
    assign if_instbuffer_pc_o               = if_pc;
    assign if_instbuffer_exception_vector_o = if_exception_vector;
    assign if_instbuffer_predictor_bus1_o   = if_predictor_bus1;
    assign if_instbuffer_predictor_bus2_o   = if_predictor_bus2;
    assign if_instbuffer_rdata1_o           = (if_pc[2])?   (valid_tmp? inst_rdata2_tmp : inst_rdata2_i):(valid_tmp? inst_rdata1_tmp : inst_rdata1_i);
    assign if_instbuffer_rdata2_o           = (valid_tmp)?  inst_rdata2_tmp:inst_rdata2_i;

endmodule
