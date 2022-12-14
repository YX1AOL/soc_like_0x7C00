`include "../../Head_Files/cpu.vh"

module seg_mem1(
    input clk,
    input rst, 


    //pipeline signal
    input           mem2_allowin_i,
    input           ex_mem1_valid_i,
    input   [317:0] ex_mem1_bus_primary_i,
    input   [179:0] ex_mem1_bus_secondary_i,
    output          mem1_allowin_o,
    output          mem1_mem2_valid_o,
    output  [143:0] mem1_mem2_bus_primary_o,
    output  [69:0]  mem1_mem2_bus_secondary_o,

    //tlb bus
    input   [37:0]   tlb_mem1_bus_i,
    output  [31:0]   virtual_data_addr_o,

    //stall and bypass bus
    output  [71:0]  mem1_cp0_bus_o,
    output  [5 :0]  mem1_up_bus_o,
    output  [75:0]  mem1_bypass_o,

    //cp0 regfile to compute exception addr
    input [31:0]    cp0_epc_i,
    input [31:0]    cp0_ebase_i,
    input [31:0]    cp0_status_i,
    input [31:0]    cp0_cause_i,
    output [32:0]   exception_bus_o,

    //cache
    output          cache_req_o,
    output [4:0]    cache_op_o,
    input           cache_over_i,

    //mem
    input           data_addr_ok_i,
    output          mem_req_o,
    output          mem_wr_o,
    output  [2:0]   mem_size_o,
    output  [3:0]   mem_sel_o,
    output  [31:0]  mem_addr_o,
    output  [31:0]  mem_wdata_o,
    output          data_cache_o
);

    //-------------------------------------------------------------
    //                        signal define
    //-------------------------------------------------------------
    //----- FIFO signal -----
    wire mem1_allowin;
    wire mem1_ready_go;
    wire mem1_mem2_valid;
    reg  mem1_valid;
    
    //----- FIFO ram signal -----
    reg [31:0] inst_addr_primary;
    reg        reg_write_primary_tmp;
    reg [4:0]  reg_waddr_primary;
    reg [31:0] reg_wdata_primary_tmp;
    reg [31:0] exception_vector_primary_tmp;
    reg        in_delaysolt_primary;
    reg [3:0]  alusel_primary;
    (* max_fanout = "3" *)reg [7:0]  aluop_primary;
    reg        mem_wr_primary;                
    reg [3: 0] mem_sel_primary;
    reg [2: 0] mem_size_primary;
    reg [31:0] mem_addr_primary;
    reg [31:0] mem_wdata_primary;
    reg        untlb_cache_primary;
    reg        need_tlb_primary;
    reg [31:0] untlb_paddr_primary;
    reg [31:0] opdata2_primary;
    reg        delay_exe_primary;
    reg [31:0] delay_opdata1_primary;
    reg [31:0] delay_opdata2_primary;

    reg [31:0] inst_addr_secondary;
    reg        reg_write_secondary_tmp;
    reg [4:0]  reg_waddr_secondary;
    reg [31:0] reg_wdata_secondary_tmp;
    reg [31:0] exception_vector_secondary;
    reg        in_delaysolt_secondary;
    reg [3:0]  alusel_secondary;
    reg [7:0]  aluop_secondary;
    reg        delay_exe_secondary;
    reg [31:0] delay_opdata1_secondary;
    reg [31:0] delay_opdata2_secondary;

    //---- mem_ready_go control signal -----
    reg  LLbit;
    wire SC_need_exe    = aluop_primary == `SC_OP && LLbit;
    wire inst_is_memory = alusel_primary == `LOAD || (alusel_primary == `STORE && aluop_primary !=`SC_OP) || SC_need_exe;
    wire inst_is_cache  = alusel_primary == `CACHE;

    //-----exception check------
    wire exception_occur_primary;
    wire exception_occur_secondary;

    //-------------------------------------------------------------
    //                        ex_mem1 FIFO
    //-------------------------------------------------------------
    assign mem1_ready_go    =  !(inst_is_memory && !data_addr_ok_i && !exception_occur_primary ) &&
                               !(inst_is_cache  && !cache_over_i   && !exception_occur_primary ) ;
    assign mem1_allowin     =   !mem1_valid || mem1_mem2_valid && mem2_allowin_i;
    assign mem1_mem2_valid  =   mem1_valid && mem1_ready_go;

    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            mem1_valid <= 1'b0;
        end else if(mem1_allowin)begin
            mem1_valid <= ex_mem1_valid_i;
        end

        if(mem1_allowin && ex_mem1_valid_i)begin
            inst_addr_primary               <= ex_mem1_bus_primary_i[31:0];
            reg_write_primary_tmp           <= ex_mem1_bus_primary_i[32];
            reg_waddr_primary               <= ex_mem1_bus_primary_i[37:33];
            reg_wdata_primary_tmp           <= ex_mem1_bus_primary_i[69:38];
            exception_vector_primary_tmp    <= ex_mem1_bus_primary_i[101:70];
            in_delaysolt_primary            <= ex_mem1_bus_primary_i[102];
            alusel_primary                  <= ex_mem1_bus_primary_i[106:103];
            aluop_primary                   <= ex_mem1_bus_primary_i[114:107];
            mem_wr_primary                  <= ex_mem1_bus_primary_i[115];
            mem_sel_primary                 <= ex_mem1_bus_primary_i[119:116];
            mem_size_primary                <= ex_mem1_bus_primary_i[122:120];
            mem_addr_primary                <= ex_mem1_bus_primary_i[154:123];//this addr is virtual_addr. 
            mem_wdata_primary               <= ex_mem1_bus_primary_i[186:155];
            untlb_cache_primary             <= ex_mem1_bus_primary_i[187];
            need_tlb_primary                <= ex_mem1_bus_primary_i[188];
            untlb_paddr_primary             <= ex_mem1_bus_primary_i[220:189];//this addr is changed when unmap. 
            opdata2_primary                 <= ex_mem1_bus_primary_i[252:221];
            delay_exe_primary               <= ex_mem1_bus_primary_i[253];
            delay_opdata1_primary           <= ex_mem1_bus_primary_i[285:254];
            delay_opdata2_primary           <= ex_mem1_bus_primary_i[317:286];

            inst_addr_secondary             <= ex_mem1_bus_secondary_i[31:0];
            reg_write_secondary_tmp         <= ex_mem1_bus_secondary_i[32];
            reg_waddr_secondary             <= ex_mem1_bus_secondary_i[37:33];
            reg_wdata_secondary_tmp         <= ex_mem1_bus_secondary_i[69:38];
            exception_vector_secondary      <= ex_mem1_bus_secondary_i[101:70];
            in_delaysolt_secondary          <= ex_mem1_bus_secondary_i[102];
            alusel_secondary                <= ex_mem1_bus_secondary_i[106:103];
            aluop_secondary                 <= ex_mem1_bus_secondary_i[114:107];
            delay_exe_secondary             <= ex_mem1_bus_secondary_i[115];
            delay_opdata1_secondary         <= ex_mem1_bus_secondary_i[147:116];
            delay_opdata2_secondary         <= ex_mem1_bus_secondary_i[179:148];
        end
    end

    //----- LLbit -----
    always @(posedge clk) begin
        if(rst == `RstEnable ) begin
            LLbit <= 1'b0; 
        end else begin
            case(LLbit)
                1'b0: LLbit <= (mem1_valid && aluop_primary == `LL_OP && !exception_occur_primary )?           1'b1:1'b0;
                1'b1: LLbit <= (mem1_mem2_valid && mem2_allowin_i && exception_flag && exception_code == `Er)? 1'b0:1'b1;
            endcase 
        end
    end
    
    
    //-------------------------------------------------------------
    //                      TLB control module         
    //-------------------------------------------------------------
    //----- addr translate bus between TLB and mem1 -----
    assign      virtual_data_addr_o = mem_addr_primary;
    wire        data_found          = tlb_mem1_bus_i[0];
    wire        data_valid          = tlb_mem1_bus_i[1];
    wire        data_dirty          = tlb_mem1_bus_i[2];
    wire [2:0]  data_cache          = tlb_mem1_bus_i[5:3];
    wire [31:0] physical_data_addr  = tlb_mem1_bus_i[37:6];

    //----- TLB state -----
    parameter TLB_NOT_USE = 2'b00;
    parameter TLB_REQ     = 2'b01;
    parameter TLB_OK      = 2'b10;
    reg [1:0] tlb_state;

    //----- TLB signal -----
    reg         data_found_r;
    reg         data_valid_r;
    reg         data_dirty_r;
    reg [2:0]   data_cache_r;
    reg [31:0]  physical_data_addr_r;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            tlb_state <= TLB_NOT_USE;
        end else begin
            case (tlb_state)
                TLB_NOT_USE :   tlb_state <= (mem1_valid && (inst_is_memory || inst_is_cache)  && need_tlb_primary && !exception_vector_primary_tmp)? TLB_REQ:TLB_NOT_USE;
                TLB_REQ     :   tlb_state <= TLB_OK;
                TLB_OK      :   tlb_state <= (mem1_mem2_valid && mem2_allowin_i)?  TLB_NOT_USE:TLB_OK;
                default     :   tlb_state <= TLB_NOT_USE;
            endcase
        end
    end


    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            data_found_r            <=  1'b0; 
            data_valid_r            <=  1'b0;
            data_dirty_r            <=  1'b0;
            data_cache_r            <=  3'b00;
            physical_data_addr_r    <=  32'b0;
        end else if(tlb_state == TLB_REQ)begin
            data_found_r            <=  data_found; 
            data_valid_r            <=  data_valid;
            data_dirty_r            <=  data_dirty;
            data_cache_r            <=  data_cache;
            physical_data_addr_r    <=  physical_data_addr;
        end
    end
    //-------------------------------------------------------------
    //                  exception check
    //-------------------------------------------------------------
    //----- TLB Refill Invalid Mod Exception -----
    wire exception_tlbrefill_dataaddr_read_primary   = (tlb_state == TLB_OK) && (alusel_primary == `LOAD || alusel_primary == `CACHE) && !data_found_r;
    wire exception_tlbrefill_dataaddr_write_primary  = (tlb_state == TLB_OK) && (alusel_primary == `STORE                           ) && !data_found_r;
    wire exception_tlbinvalid_dataaddr_read_primary  = (tlb_state == TLB_OK) && (alusel_primary == `LOAD || alusel_primary == `CACHE) &&  data_found_r && !data_valid_r;
    wire exception_tlbinvalid_dataaddr_write_primary = (tlb_state == TLB_OK) && (alusel_primary == `STORE                           ) &&  data_found_r && !data_valid_r;
    wire exception_tlbmodified_primary               = (tlb_state == TLB_OK) && (alusel_primary == `STORE                           ) &&  data_found_r &&  data_valid_r && !data_dirty_r ;
    
    //----- generate exception vector -----
    wire    [31:0]exception_vector_primary;
    excepttpye mem1_excepttpye (
        .refetch_i                      (1'b0),
        .cop0_unused_i                  (1'b0),
        .cop1_unused_i                  (1'b0),
        .tlb_modified_i                 (exception_tlbmodified_primary),
        .tlb_invalid_dataaddr_write_i   (exception_tlbinvalid_dataaddr_write_primary),
        .tlb_invalid_dataaddr_read_i    (exception_tlbinvalid_dataaddr_read_primary),
        .tlb_refill_dataaddr_write_i    (exception_tlbrefill_dataaddr_write_primary),
        .tlb_refill_dataaddr_read_i     (exception_tlbrefill_dataaddr_read_primary),
        .tlb_invalid_instaddr_i         (1'b0),
        .tlb_refill_instaddr_i          (1'b0),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (1'b0),
        .overflow_i                     (1'b0),
        .instvaild_i                    (1'b0),
        .eret_i                         (1'b0),
        .break_i                        (1'b0),
        .syscall_i                      (1'b0),
        .instaddr_i                     (1'b0),
        .interrupt_i                    (1'b0),

        .exception_vector_i             (exception_vector_primary_tmp),
        .exception_vector_o             (exception_vector_primary)
    );

    //-------------------------------------------------------------
    //         exception handle: decode exception vector
    //-------------------------------------------------------------
    //  1#[31] excepttype_refetch
    //  1#[18] excepttype_cop0_unused
    //  1#[17] excepttype_cop1_unused
    //  1#[16] excepttype_tlb_modified
    //  1#[15] excepttype_tlb_invalid_dataaddr_write
    //  1#[14] excepttype_tlb_invalid_dataaddr_read
    //  1#[13] excepttype_tlb_refill_dataaddr_write
    //  1#[12] excepttype_tlb_refill_dataaddr_read
    //  1#[11] excepttype_tlb_invalid_instaddr
    //  1#[10] excepttype_tlb_refill_instaddr
    //  1#[9]  excepttype_dataaddr_write
    //  1#[8]  excepttype_dataaddr_read
    //  1#[7]  excepttype_trap
    //  1#[6]  excepttype_overflow
    //  1#[5]  excepttype_instvaild
    //  1#[4]  excepttype_eret
    //  1#[3]  excepttype_break
    //  1#[2]  excepttype_syscall
    //  1#[1]  excepttype_instaddr
    //  1#[0]  excepttype_interrupt

    //----- generate the exception code ----- 
    wire [4:0]exception_code_primary =  (exception_vector_primary[0]  )?  `Int:
                                        (exception_vector_primary[1]  )?  `AdEL:
                                        (exception_vector_primary[10] )?  `TLBL:
                                        (exception_vector_primary[11] )?  `TLBL:
                                        (|exception_vector_primary[18:17] )?  `CpU:
                                        (exception_vector_primary[5]  )?  `RI:
                                        (exception_vector_primary[2]  )?  `Sys:
                                        (exception_vector_primary[3]  )?  `Bp:
                                        (exception_vector_primary[6]  )?  `Ov:
                                        (exception_vector_primary[8]  )?  `AdEL:
                                        (exception_vector_primary[9]  )?  `AdES:
                                        (exception_vector_primary[12] )?  `TLBL:
                                        (exception_vector_primary[13] )?  `TLBS:
                                        (exception_vector_primary[14] )?  `TLBL:
                                        (exception_vector_primary[15] )?  `TLBS:
                                        (exception_vector_primary[16] )?  `MOD:
                                        (exception_vector_primary[4]  )?  `Er:
                                        (exception_vector_primary[31] )?  `Refetch:`NoException;

    wire [4:0]exception_code_secondary =    (exception_vector_secondary[1]    )?  `AdEL:
                                            (exception_vector_secondary[10]   )?  `TLBL:
                                            (exception_vector_secondary[11]   )?  `TLBL:
                                            (|exception_vector_secondary[18:17] )?  `CpU:
                                            (exception_vector_secondary[5]    )?  `RI:
                                            (exception_vector_secondary[2]    )?  `Sys:
                                            (exception_vector_secondary[3]    )?  `Bp:
                                            (exception_vector_secondary[6]    )?  `Ov:
                                            (exception_vector_secondary[4]    )?  `Er:
                                            (exception_vector_secondary[31]   )?  `Refetch:`NoException;

    //----- generate the exception flag -----
    assign exception_occur_primary    = |exception_vector_primary;
    assign exception_occur_secondary  = |exception_vector_secondary;
    //-------------------------------------------------------------
    //      exception handle: generate exception bus to cp0
    //-------------------------------------------------------------
    //----- generate the exception code && epc && delaysolt-----
    wire [4:0]  exception_code      = (exception_occur_primary)? exception_code_primary :exception_code_secondary;
    wire [31:0] exception_inst_addr = (exception_occur_primary)? inst_addr_primary      :inst_addr_secondary;
    wire        in_delaysolt        = (exception_occur_primary)? in_delaysolt_primary   :in_delaysolt_secondary;

    //----- generate the exception addr to badaddr or context -----
    wire [31:0]exception_badaddr_primary    =   (exception_vector_primary[1] | exception_vector_primary[10] | exception_vector_primary[11] )? inst_addr_primary:mem_addr_primary;
    wire [31:0]exception_badaddr_secondary  =   inst_addr_secondary; 
    wire [31:0]exception_badaddr    = (exception_occur_primary)? exception_badaddr_primary:exception_badaddr_secondary;
    
    //----- generate the cpux unused -----
    wire exception_cpux_primary   =  exception_vector_primary[17]   ;
    wire exception_cpux_secondary =  exception_vector_secondary[17] ;
    wire exception_cpux           =  (exception_occur_primary)? exception_cpux_primary:exception_cpux_secondary;

    //-------------------------------------------------------------
    //   exception handle: generate exception bus to compute_npc
    //-------------------------------------------------------------
    //----- generate the tlb refill to compute exception addr----- because of exception TLB only occur in other exception not occur
    wire exception_refill_primary   =  (exception_vector_primary[10] | exception_vector_primary[12] | exception_vector_primary[13]);
    wire exception_refill_secondary =  (exception_vector_secondary[10]);
    wire exception_refill           =  (exception_occur_primary)? exception_refill_primary:exception_refill_secondary;

    //----- generate the Int to compute exception addr-----
    wire exception_int              =   exception_vector_primary[0];
    wire exception_eret             =   exception_vector_primary[4]     | exception_vector_secondary[4];
    wire exception_refetch          =   exception_vector_primary[31]    | exception_vector_secondary[31];

    //----- generate the exception flag ----- 
    wire exception_flag = exception_occur_primary || exception_occur_secondary;

    //----- compute the exception addr -----
    wire [31:0]exception_base   =   (cp0_status_i[`STATUS_BEV]                           )?     32'hBFC00200:{cp0_ebase_i[31:12],12'b0};
    wire [11:0]exception_offset =   (exception_int          && cp0_cause_i[`CAUSE_IV]    )?     12'h200:
                                    (exception_refill       && !cp0_status_i[`STATUS_EXL])?     12'h000:12'h180;

    wire [31:0]exception_addr   =   (exception_eret)?          cp0_epc_i:
                                    (exception_refetch)?       (exception_inst_addr + 32'd4):(exception_base + exception_offset);
    
    //--------------------------------------------------------------------
    //  exception state mashine to make branch signal exist just a cycle
    //--------------------------------------------------------------------
    localparam IDEL = 1'b0;
    localparam BUSY = 1'b1;

    //----- signal define -----
    reg exception_state;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            exception_state <= IDEL;
        end else begin
            case (exception_state)
                IDEL :  exception_state <= (mem1_mem2_valid && !mem2_allowin_i)? BUSY:IDEL;
                BUSY :  exception_state <= (mem1_mem2_valid &&  mem2_allowin_i)? IDEL:BUSY;
            endcase
        end
    end

    //----- exception bus to cp0 -----
    assign mem1_cp0_bus_o   = {72{mem1_valid && exception_state == IDEL}} & {exception_cpux,in_delaysolt,exception_badaddr,exception_code,exception_inst_addr,exception_flag};
    //----- exception bus to if -----
    assign exception_bus_o  = {33{mem1_valid && exception_state == IDEL}} & {exception_addr,exception_flag};

    //-------------------------------------------------------------
    //                      Dcache signal       
    //-------------------------------------------------------------
    wire   addr_ready   =   (tlb_state == TLB_OK) || (tlb_state == TLB_NOT_USE && !need_tlb_primary); 
    assign mem_req_o    =   (rst == `RstDisable) && mem1_valid /*&& mem2_allowin_i*/ && inst_is_memory && !exception_occur_primary && addr_ready;
    
    assign mem_addr_o  =   (need_tlb_primary)? physical_data_addr_r:untlb_paddr_primary;
    //TODO:maybe wrong
    //assign mem_addr_o = (aluop_primary == `LWL_OP ||aluop_primary == `LWR_OP ||aluop_primary == `SWL_OP || aluop_primary == `SWR_OP)? {mem_addr_tmp[31:2],2'b00}:mem_addr_tmp;

    assign mem_wdata_o  =   mem_wdata_primary;
    
    assign mem_wr_o     =   mem_wr_primary;
    
    assign mem_sel_o    =   mem_sel_primary;

    assign mem_size_o   =   mem_size_primary;

    assign data_cache_o = (need_tlb_primary)?  (data_cache_r == 3'h3):untlb_cache_primary;

    //-------------------------------------------------------------
    //                       CACHE inst signal       
    //-------------------------------------------------------------
    assign cache_req_o = (rst == `RstDisable) && mem1_valid /*&& mem2_allowin_i*/ && inst_is_cache && !exception_occur_primary && addr_ready;
    /*assign cache_op_o[0] = (reg_waddr_primary == 5'b00000); // icache index invalidate
    assign cache_op_o[1] = (reg_waddr_primary == 5'b01000); // icache index store tag
    assign cache_op_o[2] = (reg_waddr_primary == 5'b10000); // icache hit invalidate
    assign cache_op_o[3] = (reg_waddr_primary == 5'b00001); // dcache index writeback invalidate
    assign cache_op_o[4] = (reg_waddr_primary == 5'b01001); // dcache index store tag
    assign cache_op_o[5] = (reg_waddr_primary == 5'b10001); // dcache hit invalidate
    assign cache_op_o[6] = (reg_waddr_primary == 5'b10101); // dcache hit writeback invalidate*/
    assign cache_op_o = reg_waddr_primary;

    //-------------------------------------------------------------
    //                      delay exceute      
    //-------------------------------------------------------------
    wire [31:0] logicout_primary;
    wire [31:0] shiftout_primary;
    wire [31:0] arithmeticout_primary;

    wire [31:0] logicout_secondary;
    wire [31:0] shiftout_secondary;
    wire [31:0] arithmeticout_secondary;

    alu ex_alu_primary(

        .aluop_i            (aluop_primary          ),
        .opdata1_i          (delay_opdata1_primary  ),
        .opdata2_i          (delay_opdata2_primary  ), 

        .logicout_o         (logicout_primary       ),
        .shiftout_o         (shiftout_primary       ),
        .arithmeticout_o    (arithmeticout_primary  ),

        .exception_ov_o     (                       ),
        .exception_trap_o   (                       )
    );
    
    alu ex_alu_secondary(

        .aluop_i            (aluop_secondary          ),
        .opdata1_i          (delay_opdata1_secondary  ),
        .opdata2_i          (delay_opdata2_secondary  ),

        .logicout_o         (logicout_secondary       ),
        .shiftout_o         (shiftout_secondary       ),
        .arithmeticout_o    (arithmeticout_secondary  ),

        .exception_ov_o     (                         ),
        .exception_trap_o   (                         )
    );

    wire        unwrite_primary;
    wire [31:0] moveout_primary;

    wire        unwrite_secondary;
    wire [31:0] moveout_secondary;

    alu_move ex_alu_move_primary(

        .aluop_i            (aluop_primary          ),
        .opdata1_i          (delay_opdata1_primary  ),
        .opdata2_i          (delay_opdata2_primary  ),
        .hilo_rdata_i       (0                      ),

        .unwrite_o          (unwrite_primary        ),
        .moveout_o          (moveout_primary        )
    );
    
    alu_move ex_alu_move_secondary(

        .aluop_i            (aluop_secondary          ),
        .opdata1_i          (delay_opdata1_secondary  ),
        .opdata2_i          (delay_opdata2_secondary  ),
        .hilo_rdata_i       (0                        ),

        .unwrite_o          (unwrite_secondary        ),
        .moveout_o          (moveout_secondary        )
    );

    wire [31:0] delay_result_primary =  logicout_primary        & {32{alusel_primary == `LOGIC         }} |
                                        shiftout_primary        & {32{alusel_primary == `SHIFT         }} |
                                        arithmeticout_primary   & {32{alusel_primary == `ARITHMETIC    }} |
                                        moveout_primary         & {32{alusel_primary == `MOVE          }} ;
    
    wire [31:0] delay_result_secondary =  logicout_secondary      & {32{alusel_secondary == `LOGIC     }} |
                                          shiftout_secondary      & {32{alusel_secondary == `SHIFT     }} |
                                          arithmeticout_secondary & {32{alusel_secondary == `ARITHMETIC}} |
                                          moveout_secondary       & {32{alusel_secondary == `MOVE      }} ;

    //-------------------------------------------------------------
    //                      reg_write change      
    //-------------------------------------------------------------
    wire reg_write_primary   = !exception_occur_primary && reg_write_primary_tmp && (!delay_exe_primary || !unwrite_primary);
    wire reg_write_secondary = !exception_occur_primary && !exception_occur_secondary && reg_write_secondary_tmp && (!delay_exe_secondary || !unwrite_secondary);
    
    wire [31:0] reg_wdata_primary   =   (aluop_primary == `SC_OP)?  {31'b0,LLbit}:
                                        (delay_exe_primary)?        delay_result_primary:reg_wdata_primary_tmp;
    wire [31:0] reg_wdata_secondary =   (delay_exe_secondary)?      delay_result_secondary:reg_wdata_secondary_tmp;

    //-------------------------------------------------------------
    //                      otuput bus       
    //-------------------------------------------------------------
    //----- mem1 stall bus and bypass bus -----
    assign mem1_bypass_o = {76{mem1_valid}} & {reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,reg_wdata_primary,reg_waddr_primary,reg_write_primary};
    assign mem1_up_bus_o = {6{mem1_valid}} & {reg_waddr_primary,alusel_primary == `LOAD};
    //----- pipeline output -----
    assign mem1_allowin_o = mem1_allowin;
    assign mem1_mem2_valid_o = mem1_mem2_valid;
    assign mem1_mem2_bus_primary_o      =   {144{mem1_valid}} & 
                                            {   aluop_primary,
                                                inst_is_memory,
                                                (alusel_primary == `LOAD),
                                                opdata2_primary,mem_addr_primary,
                                                reg_wdata_primary,reg_waddr_primary,reg_write_primary,inst_addr_primary};
    assign mem1_mem2_bus_secondary_o    =   {70{mem1_valid}} & 
                                            {   reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,inst_addr_secondary};

endmodule