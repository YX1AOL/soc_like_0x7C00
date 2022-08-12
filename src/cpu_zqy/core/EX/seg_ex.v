`include "../../Head_Files/cpu.vh"

module seg_ex(
    input clk,
    input rst,

    //fllush signal
    input           exception_flag_i, 

    //pipeline signal
    input           mem1_allowin_i,
    input           id_ex_valid_i,
    input [288:0]   id_ex_bus_primary_i,
    input [192:0]   id_ex_bus_secondary_i,
    output          ex_allowin_o,
    output          ex_mem1_valid_o,
    output [212:0]  ex_mem1_bus_primary_o,
    output [102:0]  ex_mem1_bus_secondary_o,

    //hilo or cp0 rdata
    output [7:0]    cp0_raddr_primary_o,
    output [7:0]    cp0_raddr_secondary_o,
    input [31:0]    cp0_rdata_primary_i,
    input [31:0]    cp0_rdata_secondary_i,
    input [63:0]    hilo_rdata_i,

    //ex to hilo and cp0 bus
    output [64:0]   ex_hilo_bus_primary_o,
    output [64:0]   ex_hilo_bus_secondary_o,
    output [40:0]   ex_cp0_bus_primary_o,
    output [40:0]   ex_cp0_bus_secondary_o,

    //cp0 needed by interrupt and cpU exception
    input [31:0]    cp0_cause_i,
    input [31:0]    cp0_status_i,
    input [31:0]    cp0_hwrena_i,

    //ex to tlb bus
    output          tlb_write_index_o,
    output          tlb_write_random_o,
    output          tlb_read_o,
    output          tlb_probe_o,

    //bypass bus and load stall signal
    output [29:0]   ex_id_bus_primary_o,//Load_stall
    output [75:0]   ex_bypass_o,

    //branch bus
    output [103:0]  corr_branch_bus_o,
    output [32:0]   branch_bus_o
    );
    //-------------------------------------------------------------
    //                      signal define         
    //-------------------------------------------------------------
    //----- FIFO signal -----
    wire ex_allowin;
    wire ex_ready_go;
    wire ex_mem1_valid;
    reg  ex_valid;

    //---- ex_ready_go control signal -----
    wire stall_mul_div;
    wire ready_cloz_primary;

    //----- FIFO ram signal-----
    reg [31:0] inst_addr_primary;
    reg        reg_write_primary_tmp;
    reg [4:0]  reg_waddr_primary;
    reg [3:0]  alusel_primary;
    reg [7:0]  aluop_primary;
    reg [31:0] opdata1_primary;
    reg [31:0] opdata2_primary;
    reg [31:0] link_addr_primary;
    reg [31:0] exception_vector_primary_tmp;
    reg        in_delayslot_primary;
    reg [31:0] mem_addr_primary_tmp;
    reg        cp0_write_primary_tmp;
    reg [7:0]  cp0_addr_primary;
    reg        hilo_write_primary_tmp;
    reg        return_flag_primary;
    reg [31:0] branch_addr_primary_tmp;
    reg        predictor_flag_primary;
    reg [31:0] predictor_addr_primary;
    reg        predictor_pht_flag_primary;
    reg        predictor_bht_flag_primary;

    reg        valid_secondary;
    reg [31:0] inst_addr_secondary;
    reg        reg_write_secondary_tmp;
    reg [4:0]  reg_waddr_secondary;
    reg [3:0]  alusel_secondary;
    reg [7:0]  aluop_secondary;
    reg [31:0] opdata1_secondary;
    reg [31:0] opdata2_secondary;
    reg [31:0] exception_vector_secondary_tmp;
    reg        in_delayslot_secondary;
    reg        cp0_write_secondary_tmp;
    reg [7:0]  cp0_addr_secondary;
    reg        hilo_write_secondary_tmp;
    reg        predictor_flag_secondary;
    reg [31:0] predictor_addr_secondary;
    reg        predictor_pht_flag_secondary;
    reg        predictor_bht_flag_secondary;
    //-------------------------------------------------------------
    //                      idex FIFO       
    //-------------------------------------------------------------
    assign ex_ready_go  =   (exception_flag_i                                                                     )? 1'b0:
                            (alusel_primary == `MULDIV && stall_mul_div                                           )? 1'b0:
                            ((aluop_primary == `CLZ_OP || aluop_primary == `CLO_OP) && !ready_cloz_primary        )? 1'b0:1'b1;
    assign ex_allowin   =   !ex_valid || ex_ready_go && mem1_allowin_i;
    assign ex_mem1_valid = ex_valid && ex_ready_go;

    always @(posedge clk) begin
        if(rst == `RstEnable || exception_flag_i) begin
            ex_valid <= 1'b0;
        end else if(ex_allowin) begin
            ex_valid <= id_ex_valid_i;
        end

        if(ex_allowin && id_ex_valid_i) begin
            inst_addr_primary               <= id_ex_bus_primary_i[31:0];
            reg_write_primary_tmp           <= id_ex_bus_primary_i[32];
            reg_waddr_primary               <= id_ex_bus_primary_i[37:33];
            alusel_primary                  <= id_ex_bus_primary_i[41:38];
            aluop_primary                   <= id_ex_bus_primary_i[49:42];
            opdata1_primary                 <= id_ex_bus_primary_i[81:50];
            opdata2_primary                 <= id_ex_bus_primary_i[113:82];
            link_addr_primary               <= id_ex_bus_primary_i[145:114];
            exception_vector_primary_tmp    <= id_ex_bus_primary_i[177:146];
            in_delayslot_primary            <= id_ex_bus_primary_i[178];
            mem_addr_primary_tmp            <= id_ex_bus_primary_i[210:179];
            cp0_write_primary_tmp           <= id_ex_bus_primary_i[211];
            cp0_addr_primary                <= id_ex_bus_primary_i[219:212];
            hilo_write_primary_tmp          <= id_ex_bus_primary_i[220];
            return_flag_primary             <= id_ex_bus_primary_i[221];
            branch_addr_primary_tmp         <= id_ex_bus_primary_i[253:222];
            predictor_flag_primary          <= id_ex_bus_primary_i[254];
            predictor_addr_primary          <= id_ex_bus_primary_i[286:255];
            predictor_pht_flag_primary      <= id_ex_bus_primary_i[287];
            predictor_bht_flag_primary      <= id_ex_bus_primary_i[288];

            valid_secondary                 <= id_ex_bus_secondary_i[0];
            inst_addr_secondary             <= id_ex_bus_secondary_i[32:1];
            reg_write_secondary_tmp         <= id_ex_bus_secondary_i[33];
            reg_waddr_secondary             <= id_ex_bus_secondary_i[38:34];
            alusel_secondary                <= id_ex_bus_secondary_i[42:39];
            aluop_secondary                 <= id_ex_bus_secondary_i[50:43];
            opdata1_secondary               <= id_ex_bus_secondary_i[82:51];
            opdata2_secondary               <= id_ex_bus_secondary_i[114:83];
            exception_vector_secondary_tmp  <= id_ex_bus_secondary_i[146:115];
            in_delayslot_secondary          <= id_ex_bus_secondary_i[147];
            cp0_write_secondary_tmp         <= id_ex_bus_secondary_i[148];
            cp0_addr_secondary              <= id_ex_bus_secondary_i[156:149];
            hilo_write_secondary_tmp        <= id_ex_bus_secondary_i[157];
            predictor_flag_secondary        <= id_ex_bus_secondary_i[158];
            predictor_addr_secondary        <= id_ex_bus_secondary_i[190:159];
            predictor_pht_flag_secondary    <= id_ex_bus_secondary_i[191];
            predictor_bht_flag_secondary    <= id_ex_bus_secondary_i[192];
        end
    end

    //-------------------------------------------------------------
    //                             alu
    //-------------------------------------------------------------
    wire [31:0] reg_wdata_primary_tmp;
    wire        exception_ov_primary;
    wire        exception_trap_primary;
    wire [31:0] reg_wdata_secondary_tmp;
    wire        exception_ov_secondary;
    wire        exception_trap_secondary;

    alu U_alu_primary(

        .alusel_i       (alusel_primary),
        .aluop_i        (aluop_primary),
        .opdata1_i      (opdata1_primary),
        .opdata2_i      (opdata2_primary),  
        .hilo_rdata_i   (hilo_rdata_i),
        .link_addr_i    (link_addr_primary),

        .reg_wdata_o        (reg_wdata_primary_tmp),
        .exception_ov_o     (exception_ov_primary),
        .exception_trap_o   (exception_trap_primary)
        );
    
    alu U_alu_secondary(

        .alusel_i       (alusel_secondary),
        .aluop_i        (aluop_secondary),
        .opdata1_i      (opdata1_secondary),
        .opdata2_i      (opdata2_secondary),  
        .hilo_rdata_i   (hilo_rdata_i),
        .link_addr_i    (),

        .reg_wdata_o        (reg_wdata_secondary_tmp),
        .exception_ov_o     (exception_ov_secondary),
        .exception_trap_o   (exception_trap_secondary)
        );

    //-------------------------------------------------------------
    //                      clo and clz
    //-------------------------------------------------------------
    wire [31:0]result_cloz_primary;

    wire valid_primary   = (ex_valid && (aluop_primary == `CLZ_OP   || aluop_primary == `CLO_OP   ));
    wire stall_cloz = (valid_primary && !ready_cloz_primary);

    alu_cloz cloz_primary(
        .clk    (clk),
        .rst    ((rst == `RstEnable) || exception_flag_i || (ex_allowin && id_ex_valid_i)),

        .one_i      (aluop_primary == `CLO_OP),
        .valid_i    (valid_primary),
        .opdata_i   (opdata1_primary),

        .end_i  (ex_ready_go && mem1_allowin_i),

        .ready_o    (ready_cloz_primary),
        .result_o   (result_cloz_primary)
    );

    //-------------------------------------------------------------
    //                      mult and div
    //-------------------------------------------------------------
    //----- control signal -----
    wire MUL_inst = aluop_primary == `MULTU_OP || aluop_primary == `MULT_OP || aluop_primary == `MUL_OP || aluop_primary == `MADD_OP || aluop_primary == `MADDU_OP || aluop_primary == `MSUB_OP || aluop_primary == `MSUBU_OP;
    wire DIV_inst = aluop_primary == `DIV_OP   || aluop_primary == `DIVU_OP;

    wire ready_mul;
    wire ready_div;
    wire vaild_mult = ex_valid && MUL_inst && !ready_mul ;
    wire vaild_div  = ex_valid && DIV_inst && !ready_div ;    
    wire sign       = aluop_primary == `DIV_OP || aluop_primary == `MULT_OP || aluop_primary == `MUL_OP || aluop_primary == `MADD_OP || aluop_primary == `MSUB_OP;
    
    assign stall_mul_div = vaild_mult || vaild_div ;

    //----- mult -----
    wire [63:0] multout_tmp;
    wire [63:0] multout_mux = (aluop_primary == `MSUB_OP ||aluop_primary == `MSUBU_OP)? (~multout_tmp + 1):multout_tmp;
    wire [63:0] multout     = (aluop_primary == `MSUB_OP ||aluop_primary == `MSUBU_OP ||aluop_primary == `MADD_OP ||aluop_primary == `MADDU_OP)? (hilo_rdata_i + multout_mux):multout_tmp;
    alu_mult U_mult(
        .clk        (clk),
        .rst        (rst),

        .valid_i    (vaild_mult),
        .signed_i   (sign),
        .opdata1_i  (opdata1_primary),
        .opdata2_i  (opdata2_primary),
        
        .ready_o    (ready_mul),
        .result_o   (multout_tmp)

    );

    
    //----- div -----
    wire [63:0] divout;
    alu_div U_div(
        .clk        (clk),
        .rst        (rst),

        .valid_i    (vaild_div),
        .signed_i   (sign),
        .opdata1_i  (opdata1_primary),
        .opdata2_i  (opdata2_primary),
        
        .ready_o    (ready_div),
        .result_o   (divout)

    );

    //-------------------------------------------------------------
    //                branch inst handle
    //-------------------------------------------------------------
    //----- read branch result -----
    wire branch_flag_actual =  (aluop_primary == `J_OP)                                                   ||
                            (aluop_primary == `JR_OP)                                                  ||
                            (aluop_primary == `BLT_OP &&  opdata1_primary[31])                         ||
                            (aluop_primary == `BGE_OP && !opdata1_primary[31])                         ||
                            (aluop_primary == `BEQ_OP &&  opdata1_primary == opdata2_primary)          ||
                            (aluop_primary == `BNE_OP &&  opdata1_primary != opdata2_primary)          ||
                            (aluop_primary == `BGT_OP && !opdata1_primary[31] && |opdata1_primary)     ||
                            (aluop_primary == `BLE_OP && (opdata1_primary[31] || !opdata1_primary))    ;

    wire [31:0]branch_addr_actual  =  (aluop_primary == `JR_OP)? opdata1_primary:branch_addr_primary_tmp;


`ifdef UsePredictor
    //----- compare predictor result with the decoder result ----- 
    //these signals indicate result of the primary instrcution. predictor_<decoder result>_<predictor result>
    wire predictor_jump_jump     =  branch_flag_actual &&  predictor_flag_primary;
    wire predictor_nojump_nojump = !branch_flag_actual && !predictor_flag_primary;
    wire predictor_jump_nojump   =  branch_flag_actual && !predictor_flag_primary;
    wire predictor_nojump_jump   = !branch_flag_actual &&  predictor_flag_primary;

    //this singal indicate the result of secondary instruction. this is only needed when frist instruction is not branch and the prediction is not branch. 
    wire predictor_failure_secondary  =   predictor_nojump_nojump && predictor_flag_secondary;
    //this singal indicate the result of primary instruction.
    wire predictor_failure_primary    =   predictor_jump_jump && (branch_addr_actual != predictor_addr_primary);

    //the branch addr when predictor_nojump_jump is active.
    wire [31:0] addr_nojump_jump   =   (valid_secondary || alusel_primary == `BRANCH || alusel_primary == `LIKELY)? (inst_addr_primary + 32'd8):(inst_addr_primary + 32'd4) ;

    //----- generate branch flag and branch addr to correct predictor error ----- 
    wire        branch_flag =   predictor_failure_primary || predictor_failure_secondary || predictor_nojump_jump || predictor_jump_nojump;
    wire [31:0] branch_addr =   {32{predictor_failure_primary  }} & { branch_addr_actual           } |
                                {32{predictor_failure_secondary}} & { inst_addr_primary + 32'd8 } |
                                {32{predictor_jump_nojump      }} & { branch_addr_actual           } |
                                {32{predictor_nojump_jump      }} & { addr_nojump_jump          } ;

    //----- correct bus -----
    wire        corr_valid              = (alusel_primary == `BRANCH);
    wire        corr_branch_flag        = branch_flag_actual;
    wire [31:0] corr_inst_addr          = inst_addr_primary;
    wire [31:0] corr_branch_addr        = branch_addr_actual;
    wire        corr_uncondition_flag   = (aluop_primary == `JR_OP) || (aluop_primary == `J_OP);
    wire        corr_link_flag          = (reg_write_primary_tmp  ) && (reg_waddr_primary == 5'b11111);
    wire        corr_return_flag        = return_flag_primary;
    wire [1:0]  corr_select_flag        = {predictor_bht_flag_primary,predictor_pht_flag_primary};
    wire        corr_fllush_valid       = predictor_failure_secondary || (predictor_nojump_jump && alusel_primary != `BRANCH);
    wire [31:0] corr_fllush_addr        = predictor_failure_secondary? (inst_addr_primary + 32'd4):inst_addr_primary;
`else
    //----- not use predictor ----- 
    wire        branch_flag = branch_flag_actual;
    wire [31:0] branch_addr = branch_addr_actual;
    wire        corr_valid              = 0;
    wire        corr_branch_flag        = 0;
    wire [31:0] corr_inst_addr          = 0;
    wire [31:0] corr_branch_addr        = 0;
    wire        corr_uncondition_flag   = 0;
    wire        corr_link_flag          = 0;
    wire        corr_return_flag        = 0;
    wire [1:0]  corr_select_flag        = 0;
    wire        corr_fllush_valid       = 0;
    wire [31:0] corr_fllush_addr        = 0;
`endif

    //-------------------------------------------------------------
    //       predictor analyze when BranchAnalyze is defined
    //-------------------------------------------------------------
`ifdef BranchAnalyze
    reg [31:0]  branch_count;
    reg [31:0]  succeed_branch_count;
    reg [31:0]  fail_branch_count;
    reg [31:0]  fail_count;
    reg [31:0]  succesd_jr_count;
    reg [31:0]  jr_count;
    reg [31:0]  succesd_jr31_count;
    reg [31:0]  jr31_count;

    reg [31:0]  addr_error_count;
    reg [31:0]  flag_error_count;

    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            branch_count            <= 0;
            succeed_branch_count    <= 0;
            fail_branch_count       <= 0;
            fail_count              <= 0;
            succesd_jr_count        <= 0;
            jr_count                <= 0;
            succesd_jr31_count      <= 0;
            jr31_count              <= 0;
            addr_error_count        <= 0;
            flag_error_count        <= 0;
        end else if(ex_mem1_valid && mem1_allowin_i) begin
            branch_count            <= (alusel_primary == `BRANCH)?                                             (branch_count + 1):branch_count;
            succeed_branch_count    <= (alusel_primary == `BRANCH && !branch_flag  )?                           (succeed_branch_count + 1):succeed_branch_count;
            fail_branch_count       <= (alusel_primary == `BRANCH &&  branch_flag  )?                           (fail_branch_count + 1):fail_branch_count;
            fail_count              <= (branch_flag)?                                                           (fail_count + 1):fail_count;
            succesd_jr_count        <= (aluop_primary == `JR_OP   && !branch_flag  )?                           (succesd_jr_count + 1):succesd_jr_count;
            jr_count                <= (aluop_primary == `JR_OP )?                                              (jr_count + 1):jr_count;
            succesd_jr31_count      <= (return_flag_primary && !branch_flag  )?                                 (succesd_jr31_count + 1):succesd_jr31_count;
            jr31_count              <= (return_flag_primary)?                                                   (jr31_count + 1):jr31_count;
            addr_error_count        <= (alusel_primary == `BRANCH && branch_flag_actual && predictor_flag_primary && branch_addr_actual != predictor_addr_primary)? (addr_error_count + 1):addr_error_count;
            flag_error_count        <= (alusel_primary == `BRANCH && branch_flag_actual != predictor_flag_primary )? (flag_error_count + 1):flag_error_count;
        end
    end
`endif
    
    //---------------------------------------------------------------
    //                      branch bus output
    //---------------------------------------------------------------
    //----- branch state mashine to make branch signal exist just a cycle -----
    localparam IDLE = 1'b0;
    localparam REQ  = 1'b1;
    reg branch_state;

    always @(posedge clk) begin
        if(rst == `RstEnable || exception_flag_i) begin
            branch_state <= IDLE;
        end else begin
            case (branch_state)
                IDLE :  branch_state <= (id_ex_valid_i && ex_allowin)? REQ:IDLE;
                REQ  :  branch_state <= (id_ex_valid_i && ex_allowin)? REQ:IDLE;
            endcase
        end
    end

    //----- branch bus -----
    assign branch_bus_o =  {33{branch_state == REQ}} & {branch_addr,branch_flag};
    //----- predictor correct bus -----
    //only ex go to mem1, update predictor,beacuse maybe occur exception
    assign corr_branch_bus_o = {104{ex_mem1_valid && mem1_allowin_i}} & {corr_fllush_addr,corr_fllush_valid,corr_select_flag,corr_return_flag,corr_link_flag,corr_uncondition_flag,corr_branch_addr,corr_inst_addr,corr_branch_flag,corr_valid};

    //-------------------------------------------------------------
    //                      branch likely
    //-------------------------------------------------------------
    //----- cancel signal when branch likely instruction is issued with delaysolt -----
    wire cancel_likely = !branch_flag_actual && (alusel_primary == `LIKELY);

    //----- cancel signal when branch likely instruction is not issued with delaysolt -----
    reg cancel_delaysolt;
    always @(posedge clk) begin
        if(rst == `RstEnable || exception_flag_i)begin
            cancel_delaysolt <= 1'b0;
        end else if( ex_mem1_valid && mem1_allowin_i) begin
            case(cancel_delaysolt)
                1'b0: cancel_delaysolt <= ( cancel_likely && !in_delayslot_secondary)?   1'b1:1'b0;
                1'b1: cancel_delaysolt <= ( in_delayslot_primary)?                       1'b0:1'b1;
            endcase
        end
    end

    //-------------------------------------------------------------
    //                     mem addr convert
    //-------------------------------------------------------------
    //----- compute mem_addr -----
    wire [31:0] mem_addr_primary  = mem_addr_primary_tmp + opdata1_primary;

    //-------------------------------------------------------------
    //                     exception check
    //------------------------------------------------------------
    //----- Coprocessor 0 Unusable Exception -----
    wire user_mode          = !cp0_status_i[`STATUS_EXL] && !cp0_status_i[`STATUS_ERL] && cp0_status_i[`STATUS_KSU] == 2'b10;
    wire cp0_inst_primary   = (alusel_primary == `CP0   || alusel_primary == `TLB   || alusel_primary == `CACHE  );
    wire cp0_inst_secondary = (alusel_secondary == `CP0 || alusel_secondary == `TLB || alusel_secondary == `CACHE);
    wire excepton_cop0_unused_primary    = cp0_inst_primary     && !cp0_status_i[`STATUS_CU0] && user_mode;
    wire excepton_cop0_unused_secondary  = cp0_inst_secondary   && !cp0_status_i[`STATUS_CU0] && user_mode;
    
    //----- Int Exception -----
    wire hasint = ((cp0_cause_i[`CAUSE_IP] & cp0_status_i[`STATUS_IM]) != 8'h00 ) && !cp0_status_i[`STATUS_EXL] && cp0_status_i[`STATUS_IE] && !cp0_status_i[`STATUS_ERL];

    //----- instvaild Exception -----
    wire rdhwr_invalid = (aluop_primary == `RDHWR_OP) && (
                            (!cp0_hwrena_i[0]  && cp0_addr_primary == `ebase_ADDR    ) || 
                            (!cp0_hwrena_i[2]  && cp0_addr_primary == `count_ADDR    ) ||
                            (!cp0_hwrena_i[29] && cp0_addr_primary == `userlocal_ADDR) );

    //----- generate exception vector -----
    wire [31:0]exception_vector_primary;
    wire [31:0]exception_vector_secondary;
    excepttpye ex_excepttpye_primary(
        .refetch_i                      (1'b0),
        .cop0_unused_i                  (excepton_cop0_unused_primary),
        .cop1_unused_i                  (1'b0),
        .tlb_modified_i                 (1'b0),
        .tlb_invalid_dataaddr_write_i   (1'b0),
        .tlb_invalid_dataaddr_read_i    (1'b0),
        .tlb_refill_dataaddr_write_i    (1'b0),
        .tlb_refill_dataaddr_read_i     (1'b0),
        .tlb_invalid_instaddr_i         (1'b0),
        .tlb_refill_instaddr_i          (1'b0),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (exception_trap_primary),
        .overflow_i                     (exception_ov_primary),
        .instvaild_i                    (rdhwr_invalid),
        .eret_i                         (1'b0),
        .break_i                        (1'b0),
        .syscall_i                      (1'b0),
        .instaddr_i                     (1'b0),
        .interrupt_i                    (hasint),

        .exception_vector_i             (exception_vector_primary_tmp),
        .exception_vector_o             (exception_vector_primary)
    );
    excepttpye ex_excepttpye_secondary(
        .refetch_i                      (1'b0),
        .cop0_unused_i                  (excepton_cop0_unused_secondary),
        .cop1_unused_i                  (1'b0),
        .tlb_modified_i                 (1'b0),
        .tlb_invalid_dataaddr_write_i   (1'b0),
        .tlb_invalid_dataaddr_read_i    (1'b0),
        .tlb_refill_dataaddr_write_i    (1'b0),
        .tlb_refill_dataaddr_read_i     (1'b0),
        .tlb_invalid_instaddr_i         (1'b0),
        .tlb_refill_instaddr_i          (1'b0),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (exception_trap_secondary),
        .overflow_i                     (exception_ov_secondary),
        .instvaild_i                    (1'b0),
        .eret_i                         (1'b0),
        .break_i                        (1'b0),
        .syscall_i                      (1'b0),
        .instaddr_i                     (1'b0),
        .interrupt_i                    (1'b0),

        .exception_vector_i             (exception_vector_secondary_tmp),
        .exception_vector_o             (exception_vector_secondary)
    );
   
    //-------------------------------------------------------------
    //                   Write bus from EX stage
    //-------------------------------------------------------------
    //----- control signal -----
    wire need_executed_primary   = !exception_vector_primary[30:0] && !cancel_delaysolt;
    wire need_executed_secondary = !exception_vector_secondary[30:0] && !exception_vector_primary[31:0] && !cancel_likely;
    
    //----- cp0  write bus -----
    wire        cp0_write_primary    =   need_executed_primary   && cp0_write_primary_tmp;
    wire        cp0_write_secondary  =   need_executed_secondary && cp0_write_secondary_tmp;
    wire [31:0] cp0_wdata_primary    =   opdata2_primary;
    wire [31:0] cp0_wdata_secondary  =   opdata2_secondary;

    assign ex_cp0_bus_primary_o        = {41{ex_mem1_valid && mem1_allowin_i}} & {cp0_wdata_primary,cp0_addr_primary,cp0_write_primary};
    assign ex_cp0_bus_secondary_o      = {41{ex_mem1_valid && mem1_allowin_i}} & {cp0_wdata_secondary,cp0_addr_secondary,cp0_write_secondary};
    
    //----- hilo write bus -----
    wire MUL_hilowrite = aluop_primary == `MULT_OP || aluop_primary == `MULTU_OP ||aluop_primary == `MSUB_OP ||aluop_primary == `MSUBU_OP ||aluop_primary == `MADD_OP ||aluop_primary == `MADDU_OP;
    wire DIV_hilowrite = aluop_primary == `DIV_OP  || aluop_primary == `DIVU_OP;  

    wire        hilo_write_primary   =   need_executed_primary   && hilo_write_primary_tmp;
    wire        hilo_write_secondary =   need_executed_secondary && hilo_write_secondary_tmp;
    wire [63:0] hilo_data_primary   =   {64{aluop_primary == `MTHI_OP  }} & {opdata1_primary,hilo_rdata_i[31:0]   } |
                                        {64{aluop_primary == `MTLO_OP  }} & {hilo_rdata_i[63:32],opdata1_primary  } |
                                        {64{MUL_hilowrite              }} &  multout                                |
                                        {64{DIV_hilowrite              }} &  divout                                 ;
    wire [63:0] hilo_data_secondary =   {64{aluop_secondary == `MTHI_OP}} & {opdata1_secondary,hilo_rdata_i[31:0] } |
                                        {64{aluop_secondary == `MTLO_OP}} & {hilo_rdata_i[63:32],opdata1_secondary} ;

    assign ex_hilo_bus_primary_o       = {65{ex_mem1_valid && mem1_allowin_i}} & {hilo_data_primary,hilo_write_primary};
    assign ex_hilo_bus_secondary_o     = {65{ex_mem1_valid && mem1_allowin_i}} & {hilo_data_secondary,hilo_write_secondary};

    //----- tlb write bus -----
    wire tlb_write_index    =   need_executed_primary && aluop_primary == `TLBWI_OP;  
    wire tlb_write_random   =   need_executed_primary && aluop_primary == `TLBWR_OP; 
    wire tlb_read           =   need_executed_primary && aluop_primary == `TLBR_OP; 
    wire tlb_probe          =   need_executed_primary && aluop_primary == `TLBP_OP; 

    assign tlb_write_index_o    = ex_mem1_valid && mem1_allowin_i && tlb_write_index;
    assign tlb_write_random_o   = ex_mem1_valid && mem1_allowin_i && tlb_write_random;
    assign tlb_read_o           = ex_mem1_valid && mem1_allowin_i && tlb_read;
    assign tlb_probe_o          = ex_mem1_valid && mem1_allowin_i && tlb_probe;

    //----- regfile -----
    wire reg_write_primary   = !((aluop_primary == `MOVN_OP   && opdata2_primary   == 32'b0) || (aluop_primary == `MOVZ_OP   && opdata2_primary   != 32'b0)) && reg_write_primary_tmp;
    wire reg_write_secondary = !((aluop_secondary == `MOVN_OP && opdata2_secondary == 32'b0) || (aluop_secondary == `MOVZ_OP && opdata2_secondary != 32'b0)) && reg_write_secondary_tmp;

    wire [31:0] rdhwr_wdata = (cp0_addr_primary == `ebase_ADDR)? {22'b0,cp0_rdata_primary_i[9:0]}:cp0_rdata_primary_i;
    wire [31:0] reg_wdata_primary = (aluop_primary == `MUL_OP)?                                 multout[31:0]:
                                    (aluop_primary == `CLZ_OP || aluop_primary == `CLO_OP)?     result_cloz_primary:
                                    (aluop_primary == `MFC0_OP)?                                cp0_rdata_primary_i:
                                    (aluop_primary == `RDHWR_OP)?                               rdhwr_wdata:reg_wdata_primary_tmp;
    
    wire [31:0] reg_wdata_secondary = (aluop_secondary == `MFC0_OP)? cp0_rdata_secondary_i:reg_wdata_secondary_tmp;

    //-------------------------------------------------------------
    //                     output bus
    //-------------------------------------------------------------
    
    //----- cp0 read bus -----
    assign cp0_raddr_primary_o      = {8{ex_valid}} & {cp0_addr_primary};
    assign cp0_raddr_secondary_o    = {8{ex_valid}} & {cp0_addr_secondary};

    //----- ex_to_id stall bus and bypass bus -----
    assign ex_id_bus_primary_o      = {30{ex_valid}} & {aluop_secondary,reg_waddr_secondary,aluop_primary,reg_waddr_primary,alusel_primary};
    assign ex_bypass_o              = {76{ex_valid}} & {{38{!cancel_likely}} & {reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary},{38{!cancel_delaysolt}} & {reg_wdata_primary,reg_waddr_primary,reg_write_primary}};

    //----- pipeline output -----
    assign ex_allowin_o     = ex_allowin;
    assign ex_mem1_valid_o  = ex_mem1_valid;
    assign ex_mem1_bus_primary_o     =  {213{ex_valid  && !cancel_delaysolt}} & 
                                        {   /*virtual_addr,need_tlb,cache_tmp*/34'b0,opdata2_primary,mem_addr_primary,aluop_primary,alusel_primary,
                                            in_delayslot_primary,exception_vector_primary,
                                            reg_wdata_primary,reg_waddr_primary,reg_write_primary,inst_addr_primary};
    assign ex_mem1_bus_secondary_o   =  {103{ex_valid && !cancel_likely}} & 
                                        {   in_delayslot_secondary,exception_vector_secondary,
                                            reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,inst_addr_secondary};

endmodule