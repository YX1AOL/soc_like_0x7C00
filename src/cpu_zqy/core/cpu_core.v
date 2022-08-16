`include "../Head_Files/cpu.vh"

module cpu_core(

    input           clk,
    input           resetn,//low active
    input [5:0]     ext_int,//interrupt,high active

    output          inst_req,
    output [31:0]   inst_addr,
    input  [31:0]   inst1_rdata,
    input  [31:0]   inst2_rdata,
    input           inst_addr_ok,
    input           inst_data_ok,
    
    output          data_req,
    output          data_wr,
    output [3:0]    data_wstrb,
    output [31:0]   data_addr,
    output [2:0]    data_size,
    output [31:0]   data_wdata,
    input  [31:0]   data_rdata,
    input           data_addr_ok,
    input           data_data_ok,
    
    output          cache_req,
    output [4:0]    cache_op,
    output [31:0]   cache_tag,
    input           cache_over,

    //debug
    output [31:0]   debug_wb_pc_1,
    output [3:0]    debug_wb_rf_wen_1,
    output [4:0]    debug_wb_rf_wnum_1,
    output [31:0]   debug_wb_rf_wdata_1,
    output [31:0]   debug_wb_pc_2,
    output [3:0]    debug_wb_rf_wen_2,
    output [4:0]    debug_wb_rf_wnum_2,
    output [31:0]   debug_wb_rf_wdata_2,

    output          inst_cache,
    output          data_cache
    );
//-----IF-----
wire        if_instbuffer_valid1;
wire        if_instbuffer_valid2;
wire [31:0] if_instbuffer_pc;
wire [31:0] if_instbuffer_rdata1;
wire [31:0] if_instbuffer_rdata2;
wire [31:0] if_instbuffer_exception_vector;
wire [34:0] if_instbuffer_predictor_bus1;
wire [34:0] if_instbuffer_predictor_bus2;
wire [66:0] preif_preditor_bus;
wire [31:0] virtual_inst_addr;
//-----predictor------
wire [32:0] predictor_computepc_bus;
wire [69:0] predictor_if_bus;
//-----instbuffer-----
wire [130:0]instbuffer_bus_primary;
wire [130:0]instbuffer_bus_secondary;
wire        instbufer_allowin;
wire [1:0]  instbuffer_count;
//-----ISSUE-----
wire [1:0]  issue_mode;
wire [267:0]issue_id_bus_primary;
wire [171:0]issue_id_bus_secondary;
//----- ID -----
wire        id_allowin;
wire        id_ex_valid;
wire [300:0]id_ex_bus_primary;
wire [205:0]id_ex_bus_secondary;
wire [9:0]  id_rsrt_primary;
wire [9:0]  id_rsrt_secondary;
wire [103:0]corr_branch_bus;
wire [32:0] branch_bus;
//-----EX-----
wire        ex_allowin;
wire        ex_mem1_valid;
wire [317:0]ex_mem1_bus_primary;
wire [179:0]ex_mem1_bus_secondary;
wire [7:0]  cp0_raddr_primary;
wire [7:0]  cp0_raddr_secondary;
wire [64:0] ex_hilo_bus_primary;
wire [64:0] ex_hilo_bus_secondary;
wire [40:0] ex_cp0_bus_primary;
wire        tlb_write_index;
wire        tlb_write_random;
wire        tlb_read;
wire        tlb_probe;
wire [11:0] ex_up_bus;
wire [75:0] ex_bypass;
wire [9:0]  ex_rsrt_primary;
wire [9:0]  ex_rsrt_secondary;
//-----cp0-----
wire [191:0]cp0_tlb_bus;
wire [31:0] cp0_rdata_primary;
wire [31:0] cp0_rdata_secondary;
wire [31:0] cp0_cause;
wire [31:0] cp0_status;
wire [31:0] cp0_epc;
wire [31:0] cp0_ebase;
wire [31:0] cp0_hwrena;
wire        cp0_config_uncache;
//-----hilo-----
wire [63:0] hilo_rdata;
//-----mem1----
wire        mem1_allowin;
wire        mem1_mem2_valid;
wire [143:0]mem1_mem2_bus_primary;
wire [69:0] mem1_mem2_bus_secondary;
wire [71:0] mem1_cp0_bus;
wire [5:0]  mem1_up_bus;
wire [75:0] mem1_bypass;
wire [32:0] exception_bus;
wire [31:0] virtual_data_addr;
//-----mem2-----
wire        mem2_allowin;
wire        mem2_wb_valid;
wire [69:0] mem2_wb_bus_primary;
wire [69:0] mem2_wb_bus_secondary;
wire [9:0]  mem2_id_bus_primary;
wire [75:0] mem2_bypass;
wire [5:0]  mem2_up_bus;
//-----wb-----
wire [75:0] wb_bypass;
wire [31:0] inst_addr_primary;
wire        reg_write_primary;
wire [4:0]  reg_waddr_primary;
wire [31:0] reg_wdata_primary;
wire [31:0] inst_addr_secondary;
wire        reg_write_secondary;
wire [4:0]  reg_waddr_secondary;
wire [31:0] reg_wdata_secondary;
//-----regfile-----
wire [63:0] id_reg_rdata_primary;
wire [63:0] id_reg_rdata_secondary;
wire [63:0] ex_reg_rdata_primary;
wire [63:0] ex_reg_rdata_secondary;
//-----mmu-----
wire [36:0] tlb_if_bus;
wire [37:0] tlb_mem1_bus;
wire [159:0]tlb_cp0_bus;


seg_if U_if(
    .clk(clk),
    .rst(resetn),
    
    //execption and branch bus
    .branch_bus_i       (branch_bus),
    .exception_bus_i    (exception_bus),

    //pipeline control signal and bus
    .instbuffer_allowin_i               (instbufer_allowin),
    .if_instbuffer_valid1_o             (if_instbuffer_valid1),
    .if_instbuffer_valid2_o             (if_instbuffer_valid2),
    .if_instbuffer_pc_o                 (if_instbuffer_pc),
    .if_instbuffer_rdata1_o             (if_instbuffer_rdata1),
    .if_instbuffer_rdata2_o             (if_instbuffer_rdata2),
    .if_instbuffer_exception_vector_o   (if_instbuffer_exception_vector),
    .if_instbuffer_predictor_bus1_o     (if_instbuffer_predictor_bus1),
    .if_instbuffer_predictor_bus2_o     (if_instbuffer_predictor_bus2),

    //predictor signal to updata pre_if_pc
    .predictor_computepc_bus_i  (predictor_computepc_bus),
    .predictor_if_bus_i         (predictor_if_bus),
    .preif_preditor_bus_o       (preif_preditor_bus),

    //hold data when instbuffer_allowin is low
    .inst_rdata1_i      (inst1_rdata),
    .inst_rdata2_i      (inst2_rdata),

    //tlb to if bus
    .virtual_inst_addr_o    (virtual_inst_addr),
    .tlb_if_bus_i           (tlb_if_bus),

    //axi
    .inst_req_o             (inst_req),
    .inst_addr_o            (inst_addr),
    .inst_cache_o           (inst_cache),
    .inst_addr_ok_i         (inst_addr_ok),
    .inst_data_ok_i         (inst_data_ok),

    //cp0
    .cp0_config_uncache_i   (cp0_config_uncache),
    .cp0_status_i           (cp0_status)
    );

predictor U_predictor(
    .clk(clk),
    .rst(resetn),

    //fllush the state mashine
    .exception_flag_i   (exception_bus[0]),
    .branch_flag_i      (branch_bus[0]),
    //pre_if to predictor bus
    .preif_preditor_bus_i(preif_preditor_bus),
    //correct bus from id
    .corr_branch_bus_i(corr_branch_bus),

    //output
    .predictor_computepc_bus_o(predictor_computepc_bus),
    .predictor_if_bus_o(predictor_if_bus)

    );

instbuffer U_instbuffer(
    .clk    (clk),
    .rst    (resetn),

    .issue_mode_i   (issue_mode),

    //control signal
    .exception_flag_i   (exception_bus[0]),
    .branch_flag_i      (branch_bus[0]),

    //instbuffer interactive with if
    .if_to_instbuffer_bus1_valid_i  (if_instbuffer_valid1),
    .if_to_instbuffer_bus2_valid_i  (if_instbuffer_valid2),
    .if_to_instbuffer_bus1_i        ({if_instbuffer_predictor_bus1,if_instbuffer_rdata1,if_instbuffer_exception_vector,if_instbuffer_pc}),
    .if_to_instbuffer_bus2_i        ({if_instbuffer_predictor_bus2,if_instbuffer_rdata2,32'b0,(if_instbuffer_pc + 32'h4)}),
    .instbufer_allowin_o            (instbufer_allowin),

    //data signal 
    .inst1_bus_o            (instbuffer_bus_primary),
    .inst2_bus_o            (instbuffer_bus_secondary),
    .instbuffer_count_o     (instbuffer_count)
    );

seg_issue U_issue(
    .clk    (clk),
    .rst    (resetn),

    //fllush signal
    .branch_flag_i      (branch_bus[0]),

    //pipeline control signal
    .id_allowin_i       (id_allowin),

    //issue 
    .instbuffer_count_i   (instbuffer_count),
    .inst1_bus_i            (instbuffer_bus_primary),
    .inst2_bus_i            (instbuffer_bus_secondary),
    
    //pipeline signal 
    .issue_mode_o               (issue_mode),
    .issue_id_bus_primary_o     (issue_id_bus_primary),
    .issue_id_bus_secondary_o   (issue_id_bus_secondary)
    );

seg_id U_id(
    .clk(clk),
    .rst(resetn),

    .exception_flag_i           (exception_bus[0]),
    .branch_flag_i              (branch_bus[0]),

    //pipeline signal
    .ex_allowin_i               (ex_allowin),
    .issue_mode_i               (issue_mode),
    .issue_id_bus_primary_i     (issue_id_bus_primary),
    .issue_id_bus_secondary_i   (issue_id_bus_secondary),
    .id_allowin_o               (id_allowin),
    .id_ex_valid_o              (id_ex_valid),
    .id_ex_bus_primary_o        (id_ex_bus_primary),
    .id_ex_bus_secondary_o      (id_ex_bus_secondary),

    //LOAD stall signal
    .ex_up_bus_i                (ex_up_bus),
    .mem1_up_bus_i              (mem1_up_bus),
    .mem2_up_bus_i              (mem2_up_bus),

    //regile and bypass
    .reg_bypass_i               ({wb_bypass,mem2_bypass,mem1_bypass,ex_bypass}),
    .reg_rdata_primary_i        (id_reg_rdata_primary),
    .reg_rdata_secondary_i      (id_reg_rdata_secondary),
    .rsrt_primary_o             (id_rsrt_primary),
    .rsrt_secondary_o           (id_rsrt_secondary)
    
    );

seg_ex U_ex(
    .clk(clk),
    .rst(resetn),

    //fllush signal
    .exception_flag_i       (exception_bus[0]),

    //pipeline signal
    .mem1_allowin_i         (mem1_allowin),
    .id_ex_valid_i          (id_ex_valid),
    .id_ex_bus_primary_i    (id_ex_bus_primary),
    .id_ex_bus_secondary_i  (id_ex_bus_secondary),
    .ex_allowin_o           (ex_allowin),
    .ex_mem1_valid_o        (ex_mem1_valid),
    .ex_mem1_bus_primary_o  (ex_mem1_bus_primary),
    .ex_mem1_bus_secondary_o(ex_mem1_bus_secondary),

    //hilo or cp0 rdata
    .cp0_rdata_primary_i    (cp0_rdata_primary),
    .cp0_rdata_secondary_i  (cp0_rdata_secondary),
    .cp0_raddr_primary_o    (cp0_raddr_primary),
    .cp0_raddr_secondary_o  (cp0_raddr_secondary),
    .hilo_rdata_i           (hilo_rdata),

    //ex to hilo and cp0 bus
    .ex_hilo_bus_primary_o  (ex_hilo_bus_primary),
    .ex_hilo_bus_secondary_o(ex_hilo_bus_secondary),
    .ex_cp0_bus_primary_o   (ex_cp0_bus_primary),
    
    //cp0 needed by interrupt and cpU exception
    .cp0_cause_i                (cp0_cause),
    .cp0_status_i               (cp0_status),
    .cp0_hwrena_i               (cp0_hwrena),

    //ex to tlb bus
    .tlb_write_index_o      (tlb_write_index),
    .tlb_write_random_o     (tlb_write_random),
    .tlb_read_o             (tlb_read),
    .tlb_probe_o            (tlb_probe),
    
    //bypass bus and load stall signal
    .ex_up_bus_o            (ex_up_bus),//Load_stall
    .ex_bypass_o            (ex_bypass),
    
    //branch bus
    .corr_branch_bus_o      (corr_branch_bus),
    .branch_bus_o           (branch_bus),
    
    //delay exe register read
    .rsrt_primary_o         (ex_rsrt_primary),
    .rsrt_secondary_o       (ex_rsrt_secondary),
    .reg_rdata_primary_i    (ex_reg_rdata_primary),
    .reg_rdata_secondary_i  (ex_reg_rdata_secondary),

    //delay exe mem2 stall signal and bypass
    .reg_bypass_i           ({wb_bypass,mem2_bypass,mem1_bypass}),
    .mem1_up_bus_i          (mem1_up_bus),
    .mem2_up_bus_i          (mem2_up_bus),

    //mem_addr
    .cp0_config_uncache_i   (cp0_config_uncache)
    );

reg_cp0 U_cp0(
    .clk    (clk),
    .rst   (resetn),
    .int_i  (ext_int),
    
    //write port
    .ex_cp0_bus_primary_i   (ex_cp0_bus_primary),

    //read port
    .cp0_raddr_primary_i    (cp0_raddr_primary),
    .cp0_raddr_secondary_i  (cp0_raddr_secondary),
    .cp0_rdata_primary_o    (cp0_rdata_primary),
    .cp0_rdata_secondary_o  (cp0_rdata_secondary),

    //TLB
    .tlb_write_random_i (tlb_write_random),
    .tlb_read_i         (tlb_read),
    .tlb_probe_i        (tlb_probe),
    .tlb_cp0_bus_i      (tlb_cp0_bus),
    .cp0_tlb_bus_o      (cp0_tlb_bus),
    
    //exception
    .mem1_cp0_bus_i         (mem1_cp0_bus),

    //the register needed
    .cp0_cause_o            (cp0_cause),
    .cp0_status_o           (cp0_status),
    .cp0_epc_o              (cp0_epc),
    .cp0_ebase_o            (cp0_ebase),
    .cp0_taglo_o            (cache_tag),
    .cp0_hwrena_o           (cp0_hwrena),

    .cp0_config_uncache_o   (cp0_config_uncache)
    );

reg_hilo U_hilo(
    .clk    (clk),
    .rst    (resetn),
    
    .ex_hilo_bus_primary_i      (ex_hilo_bus_primary),
    .ex_hilo_bus_secondary_i    (ex_hilo_bus_secondary),

    .hilo_o     (hilo_rdata)
    );


seg_mem1 U_mem1(
    .clk(clk),
    .rst(resetn),

    //pipeline signal
    .mem2_allowin_i             (mem2_allowin),
    .ex_mem1_valid_i            (ex_mem1_valid),
    .ex_mem1_bus_primary_i      (ex_mem1_bus_primary),
    .ex_mem1_bus_secondary_i    (ex_mem1_bus_secondary),
    .mem1_allowin_o             (mem1_allowin),
    .mem1_mem2_valid_o          (mem1_mem2_valid),
    .mem1_mem2_bus_primary_o    (mem1_mem2_bus_primary),
    .mem1_mem2_bus_secondary_o  (mem1_mem2_bus_secondary),

    //tlb control signal
    .virtual_data_addr_o    (virtual_data_addr),
    .tlb_mem1_bus_i         (tlb_mem1_bus),

    //output bus
    .mem1_cp0_bus_o     (mem1_cp0_bus),
    .mem1_up_bus_o      (mem1_up_bus),//Load_stall
    .mem1_bypass_o      (mem1_bypass),

    //cache
    .cache_req_o    (cache_req),
    .cache_op_o     (cache_op),
    .cache_over_i   (cache_over),
    
    //cp0 regfile to compute exception addr
    .cp0_epc_i      (cp0_epc),
    .cp0_ebase_i    (cp0_ebase),
    .cp0_status_i   (cp0_status),
    .cp0_cause_i    (cp0_cause),
    .exception_bus_o(exception_bus),

    //mem
    .data_addr_ok_i         (data_addr_ok),
    .mem_req_o              (data_req),
    .mem_wr_o               (data_wr),
    .mem_size_o             (data_size),
    .mem_sel_o              (data_wstrb),
    .mem_addr_o             (data_addr),
    .mem_wdata_o            (data_wdata),
    .data_cache_o           (data_cache)
);

seg_mem2 U_mem2(
    .clk(clk),
    .rst(resetn),

    //pipeline control signal
    .wb_allowin_i               (1'b1),
    .mem1_mem2_valid_i          (mem1_mem2_valid),
    .mem1_mem2_bus_primary_i    (mem1_mem2_bus_primary),
    .mem1_mem2_bus_secondary_i  (mem1_mem2_bus_secondary),
    .mem2_allowin_o             (mem2_allowin),
    .mem2_wb_valid_o            (mem2_wb_valid),
    .mem2_wb_bus_primary_o      (mem2_wb_bus_primary),
    .mem2_wb_bus_secondary_o    (mem2_wb_bus_secondary),

    //mem
    .mem_rdata_i            (data_rdata),
    .data_data_ok_i         (data_data_ok),
    
    //bus
    .mem2_up_bus_o          (mem2_up_bus),
    .mem2_bypass_o          (mem2_bypass)
);

seg_wb U_wb(
    .clk(clk),
    .rst(resetn),

    .mem2_wb_valid_i        (mem2_wb_valid),
    .mem2_wb_bus_primary_i  (mem2_wb_bus_primary),
    .mem2_wb_bus_secondary_i(mem2_wb_bus_secondary),
    
    .wb_bypass_o    (wb_bypass),

    .inst_addr_primary_o    (inst_addr_primary),
    .reg_write_primary_o    (reg_write_primary),
    .reg_waddr_primary_o    (reg_waddr_primary),
    .reg_wdata_primary_o    (reg_wdata_primary),

    .inst_addr_secondary_o  (inst_addr_secondary),
    .reg_write_secondary_o  (reg_write_secondary),
    .reg_waddr_secondary_o  (reg_waddr_secondary),
    .reg_wdata_secondary_o  (reg_wdata_secondary)
    );

reg_file U_regfile(
    .clk    (clk),
    .rst    (resetn),

    .id_raddr1_i   (id_rsrt_primary),
    .id_raddr2_i   (id_rsrt_secondary),
    .ex_raddr1_i   (ex_rsrt_primary),
    .ex_raddr2_i   (ex_rsrt_secondary),

    .we1_i      (reg_write_primary),
    .waddr1_i   (reg_waddr_primary),
    .wdata1_i   (reg_wdata_primary),
    .we2_i      (reg_write_secondary),
    .waddr2_i   (reg_waddr_secondary),
    .wdata2_i   (reg_wdata_secondary),


    .id_reg_rdata1_o (id_reg_rdata_primary),
    .id_reg_rdata2_o (id_reg_rdata_secondary),
    .ex_reg_rdata1_o (ex_reg_rdata_primary),
    .ex_reg_rdata2_o (ex_reg_rdata_secondary)
    );

//TLB U_tlb(
TLB U_tlb(
    .clk(clk),
    .rst(resetn),

    //address transformation
    .inst_vaddr_i       (virtual_inst_addr),
    .data_vaddr_i       (virtual_data_addr),
    .tlb_if_bus_o       (tlb_if_bus),
    .tlb_mem1_bus_o     (tlb_mem1_bus),

    //cp0 register read data
    .tlb_write_index_i  (tlb_write_index),
    .tlb_write_random_i (tlb_write_random),
    .cp0_tlb_bus_i      (cp0_tlb_bus),
    .tlb_cp0_bus_o      (tlb_cp0_bus)

);

//-----debug-----
assign debug_wb_pc_1 = inst_addr_primary;
assign debug_wb_rf_wen_1 = {4{reg_write_primary}};
assign debug_wb_rf_wnum_1 = reg_waddr_primary;
assign debug_wb_rf_wdata_1 = reg_wdata_primary;
assign debug_wb_pc_2 = inst_addr_secondary;
assign debug_wb_rf_wen_2 = {4{reg_write_secondary}};
assign debug_wb_rf_wnum_2 = reg_waddr_secondary;
assign debug_wb_rf_wdata_2 = reg_wdata_secondary;

endmodule