`include "../../Head_Files/cpu.vh"

module seg_ex(
    input clk,
    input rst,

    //fllush signal
    input           exception_flag_i, 

    //pipeline signal
    input           mem1_allowin_i,
    input           id_ex_valid_i,
    input [300:0]   id_ex_bus_primary_i,
    input [205:0]   id_ex_bus_secondary_i,
    output          ex_allowin_o,
    output          ex_mem1_valid_o,
    output [317:0]  ex_mem1_bus_primary_o,
    output [179:0]  ex_mem1_bus_secondary_o,

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
    output [11:0]   ex_up_bus_o,
    output [75:0]   ex_bypass_o,

    //branch bus
    output [103:0]  corr_branch_bus_o,
    output [32:0]   branch_bus_o,

    //delay exe register read
    output [9:0]    rsrt_primary_o,
    output [9:0]    rsrt_secondary_o,
    input  [63:0]   reg_rdata_primary_i,
    input  [63:0]   reg_rdata_secondary_i,

    //delay exe mem2 stall signal and bypass
    input  [227:0]  reg_bypass_i,
    input  [5 :0]   mem1_up_bus_i,
    input  [5 :0]   mem2_up_bus_i,
    
    //mem addr
    input           cp0_config_uncache_i
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
    wire stall_mul;
    wire stall_div;
    wire stall_cloz;
    wire stall_delay;

    //----- FIFO ram signal-----
    reg [31:0] inst_addr_primary;
    reg        reg_write_primary_tmp;
    reg [4:0]  reg_waddr_primary;
    reg [3:0]  alusel_primary;
    (* max_fanout = "3" *)reg [7:0]  aluop_primary;
    reg [31:0] opdata1_primary;
    reg [31:0] opdata2_primary;
    reg [31:0] link_addr_primary;
    reg [31:0] exception_vector_primary_tmp;
    reg        in_delayslot_primary;
    reg [31:0] mem_addr_primary_tmp;
    reg        cp0_write_primary_tmp;
    reg [7:0]  cp0_addr_primary;
    reg        hilo_write_primary_tmp;
    reg [31:0] branch_addr_primary_tmp;
    reg        predictor_flag_primary;
    reg [31:0] predictor_addr_primary;
    reg        predictor_pht_flag_primary;
    reg        predictor_bht_flag_primary;
    reg        delay_exe_primary;
    reg        reg1_read_primary;
    reg [4:0]  reg1_read_addr_primary;
    reg        reg2_read_primary;
    reg [4:0]  reg2_read_addr_primary;

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
    reg        delay_exe_secondary;
    reg        reg1_read_secondary;
    reg [4:0]  reg1_read_addr_secondary;
    reg        reg2_read_secondary;
    reg [4:0]  reg2_read_addr_secondary;
    //-------------------------------------------------------------
    //                      idex FIFO       
    //-------------------------------------------------------------
    assign ex_ready_go  =   (exception_flag_i                                  )? 1'b0:
                            (stall_mul || stall_div || stall_cloz ||stall_delay)? 1'b0:1'b1;
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
            branch_addr_primary_tmp         <= id_ex_bus_primary_i[252:221];
            predictor_flag_primary          <= id_ex_bus_primary_i[253];
            predictor_addr_primary          <= id_ex_bus_primary_i[285:254];
            predictor_pht_flag_primary      <= id_ex_bus_primary_i[286];
            predictor_bht_flag_primary      <= id_ex_bus_primary_i[287];
            delay_exe_primary               <= id_ex_bus_primary_i[288];
            reg1_read_primary               <= id_ex_bus_primary_i[289];
            reg1_read_addr_primary          <= id_ex_bus_primary_i[294:290];
            reg2_read_primary               <= id_ex_bus_primary_i[295];
            reg2_read_addr_primary          <= id_ex_bus_primary_i[300:296];

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
            delay_exe_secondary             <= id_ex_bus_secondary_i[193];
            reg1_read_secondary             <= id_ex_bus_secondary_i[194];
            reg1_read_addr_secondary        <= id_ex_bus_secondary_i[199:195];
            reg2_read_secondary             <= id_ex_bus_secondary_i[200];
            reg2_read_addr_secondary        <= id_ex_bus_secondary_i[205:201];
        end
    end

    //-------------------------------------------------------------
    //                             alu
    //-------------------------------------------------------------
    wire [31:0] logicout_primary;
    wire [31:0] shiftout_primary;
    wire [31:0] arithmeticout_primary;
    wire        exception_ov_primary;
    wire        exception_trap_primary;

    wire [31:0] logicout_secondary;
    wire [31:0] shiftout_secondary;
    wire [31:0] arithmeticout_secondary;
    wire        exception_ov_secondary;
    wire        exception_trap_secondary;

    alu ex_alu_primary(

        .aluop_i            (aluop_primary          ),
        .opdata1_i          (opdata1_primary        ),
        .opdata2_i          (opdata2_primary        ),  

        .logicout_o         (logicout_primary       ),
        .shiftout_o         (shiftout_primary       ),
        .arithmeticout_o    (arithmeticout_primary  ),

        .exception_ov_o     (exception_ov_primary   ),
        .exception_trap_o   (exception_trap_primary )
    );
    
    alu ex_alu_secondary(

        .aluop_i            (aluop_secondary          ),
        .opdata1_i          (opdata1_secondary        ),
        .opdata2_i          (opdata2_secondary        ),  

        .logicout_o         (logicout_secondary       ),
        .shiftout_o         (shiftout_secondary       ),
        .arithmeticout_o    (arithmeticout_secondary  ),

        .exception_ov_o     (exception_ov_secondary   ),
        .exception_trap_o   (exception_trap_secondary )
    );

    //-------------------------------------------------------------
    //                       alu_moveout
    //-------------------------------------------------------------
    wire        unwrite_primary;
    wire [31:0] moveout_primary;

    wire        unwrite_secondary;
    wire [31:0] moveout_secondary;

    alu_move ex_alu_move_primary(

        .aluop_i            (aluop_primary          ),
        .opdata1_i          (opdata1_primary        ),
        .opdata2_i          (opdata2_primary        ),
        .hilo_rdata_i       (hilo_rdata_i           ),

        .unwrite_o          (unwrite_primary        ),
        .moveout_o          (moveout_primary        )
    );
    
    alu_move ex_alu_move_secondary(

        .aluop_i            (aluop_secondary          ),
        .opdata1_i          (opdata1_secondary        ),
        .opdata2_i          (opdata2_secondary        ),
        .hilo_rdata_i       (hilo_rdata_i             ),

        .unwrite_o          (unwrite_secondary        ),
        .moveout_o          (moveout_secondary        )
    );

    //-------------------------------------------------------------
    //                      clo and clz
    //-------------------------------------------------------------
    wire        cloz_one    = (aluop_primary == `CLO_OP);
    wire        cloz_valid  = ex_valid && (aluop_primary == `CLZ_OP || aluop_primary == `CLO_OP);
    wire        cloz_ready ;
    wire [31:0] cloz_result;

    assign stall_cloz = (aluop_primary == `CLZ_OP || aluop_primary == `CLO_OP ) && !cloz_ready;

    alu_cloz cloz_primary(
        .clk        (clk),
        .rst        ((rst == `RstEnable) || exception_flag_i || (ex_allowin && id_ex_valid_i)),

        .one_i      (cloz_one                       ),
        .valid_i    (cloz_valid                     ),
        .opdata_i   (opdata1_primary                ),

        .end_i      (ex_ready_go && mem1_allowin_i  ),

        .ready_o    (cloz_ready                     ),
        .result_o   (cloz_result                    )
    );

    //-------------------------------------------------------------
    //                           mul
    //-------------------------------------------------------------
    //----- control signal -----
    wire        mult_sign  = aluop_primary == `MULT_OP || aluop_primary == `MUL_OP || aluop_primary == `MADD_OP || aluop_primary == `MSUB_OP ;
    wire        mult_valid = ex_valid && (alusel_primary == `MULL) && !mul_ready ;

    wire        mul_ready;
    wire [63:0] multout_tmp;
    wire [63:0] multout_mux = (aluop_primary == `MSUB_OP || aluop_primary == `MSUBU_OP )? (~multout_tmp + 1):multout_tmp;
    wire [63:0] multout     = (aluop_primary == `MSUB_OP || aluop_primary == `MSUBU_OP || aluop_primary == `MADD_OP || aluop_primary == `MADDU_OP)? (hilo_rdata_i + multout_mux):multout_tmp;
    
    assign stall_mul = (alusel_primary == `MULL) && !mul_ready;

    alu_mult U_mult(
        .clk        (clk                ),
        .rst        (rst                ),

        .valid_i    (mult_valid         ),
        .signed_i   (mult_sign          ),
        .opdata1_i  (opdata1_primary    ),
        .opdata2_i  (opdata2_primary    ),
        
        .ready_o    (mul_ready          ),
        .result_o   (multout_tmp        )

    );

    //-------------------------------------------------------------
    //                           div
    //-------------------------------------------------------------
    //----- div -----
    wire        div_sign = (aluop_primary == `DIV_OP);
    wire        div_valid = ex_valid && (alusel_primary == `DIVV) && !div_ready ;

    wire        div_ready;
    wire [63:0] divout;

    assign stall_div = (alusel_primary == `DIVV) && !div_ready;

    alu_div U_div(
        .clk        (clk                ),
        .rst        (rst                ),

        .valid_i    (div_valid          ),
        .signed_i   (div_sign           ),
        .opdata1_i  (opdata1_primary    ),
        .opdata2_i  (opdata2_primary    ),
        
        .ready_o    (div_ready          ),
        .result_o   (divout             )
    );

    //-------------------------------------------------------------
    //                     mem addr convert
    //-------------------------------------------------------------
    //----- compute mem_addr -----
    wire        mem_wr_primary  =   (alusel_primary == `STORE);
    
    wire [3 :0] mem_sel_primary =   {4{aluop_primary == `SB_OP   }} & (4'b0001 <<  mem_addr_primary[1:0]  ) |
                                    {4{aluop_primary == `SH_OP   }} & (4'b0011 <<  mem_addr_primary[1:0]  ) |
                                    {4{aluop_primary == `SWL_OP  }} & (4'b1111 >> ~mem_addr_primary[1:0]  ) |
                                    {4{aluop_primary == `SWR_OP  }} & (4'b1111 <<  mem_addr_primary[1:0]  ) |
                                    {4{aluop_primary == `SW_OP   }} & (4'b1111                            ) |
                                    {4{aluop_primary == `SC_OP   }} & (4'b1111                            ) ;
    
    wire [2:0] mem_size_primary =   3'b000 & {3{aluop_primary == `LB_OP   || aluop_primary == `LBU_OP  || aluop_primary == `SB_OP    }} |
                                    3'b001 & {3{aluop_primary == `LH_OP   || aluop_primary == `LHU_OP  || aluop_primary == `SH_OP    }} |
                                    3'b010 & {3{aluop_primary == `LW_OP   || aluop_primary == `SW_OP                                 }} |
                                    3'b010 & {3{aluop_primary == `LL_OP   || aluop_primary == `SC_OP                                 }} |
                                    3'b010 & {3{aluop_primary == `LWL_OP  || aluop_primary == `LWR_OP                                }} |
                                    3'b010 & {3{aluop_primary == `SWL_OP  || aluop_primary == `SWR_OP                                }} ;
    
    wire [31:0] mem_addr_primary  = mem_addr_primary_tmp + opdata1_primary;

    wire [31:0] mem_wdata_primary = {32{aluop_primary == `SB_OP    }} & {4{opdata2_primary[7:0] }}                              |
                                    {32{aluop_primary == `SH_OP    }} & {2{opdata2_primary[15:0]}}                              |
                                    {32{aluop_primary == `SWL_OP   }} & (opdata2_primary >> {~mem_addr_primary[1:0],3'b0})      |
                                    {32{aluop_primary == `SWR_OP   }} & (opdata2_primary << { mem_addr_primary[1:0],3'b0})      |
                                    {32{aluop_primary == `SW_OP    }} &  opdata2_primary                                        |
                                    {32{aluop_primary == `SC_OP    }} &  opdata2_primary                                        ;
    
    //----- convert mem_addr by virtual address segment -----
    wire        addr_error;
    wire        need_tlb_primary;
    wire        untlb_cache_primary;
    wire [31:0] untlb_paddr_primary;
    convert_addr if_ConvertAddr(
        .cp0_status_i           (cp0_status_i),
        .virtual_addr_i         (mem_addr_primary),
        .cp0_config_uncache_i   (cp0_config_uncache_i),
        .error_o                (addr_error),
        .need_tlb_o             (need_tlb_primary),
        .untlb_cache_o          (untlb_cache_primary),
        .untlb_paddr_o          (untlb_paddr_primary)
    );

    //----- Addr Error Exception -----
    wire exception_dataaddr_read_primary    =   ((aluop_primary == `LH_OP || aluop_primary == `LHU_OP)  &&  mem_addr_primary[0]   ) ||  
                                                ((aluop_primary == `LW_OP || aluop_primary == `LL_OP)   && |mem_addr_primary[1:0] ) ||
                                                ( alusel_primary == `LOAD                               &&  addr_error            ) ;
    wire exception_dataaddr_write_primary   =   ( aluop_primary == `SH_OP                               &&  mem_addr_primary[0]   ) ||
                                                ((aluop_primary == `SW_OP || aluop_primary == `SC_OP)   && |mem_addr_primary[1:0] ) ||
                                                ( alusel_primary == `STORE                              &&  addr_error            ) ;

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
        .dataaddr_write_i               (exception_dataaddr_write_primary),
        .dataaddr_read_i                (exception_dataaddr_read_primary),
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
    //                     reg write bus
    //-------------------------------------------------------------
    //----- regfile -----
    wire reg_write_primary   = !(unwrite_primary   && !delay_exe_primary)    && reg_write_primary_tmp;
    wire reg_write_secondary = !(unwrite_secondary && !delay_exe_secondary ) && reg_write_secondary_tmp;

    wire [31:0] rdhwr_wdata = (cp0_addr_primary == `ebase_ADDR)? {22'b0,cp0_rdata_primary_i[9:0]}:cp0_rdata_primary_i;
    wire [31:0] reg_wdata_primary   =   multout                & {32{aluop_primary == `MUL_OP                             }} |
                                        cloz_result             & {32{aluop_primary == `CLZ_OP || aluop_primary == `CLO_OP }} |
                                        cp0_rdata_primary_i     & {32{aluop_primary == `MFC0_OP                            }} |
                                        rdhwr_wdata             & {32{aluop_primary == `RDHWR_OP                           }} |
                                        logicout_primary        & {32{alusel_primary == `LOGIC                             }} |
                                        shiftout_primary        & {32{alusel_primary == `SHIFT                             }} |
                                        arithmeticout_primary   & {32{alusel_primary == `ARITHMETIC                        }} |
                                        moveout_primary         & {32{alusel_primary == `MOVE                              }} |
                                        link_addr_primary       & {32{alusel_primary == `BRANCH                            }} |
                                        link_addr_primary       & {32{alusel_primary == `LIKELY                            }} ;
    
    wire [31:0] reg_wdata_secondary =   cp0_rdata_secondary_i   & {32{aluop_secondary == `MFC0_OP                               }} |
                                        logicout_secondary      & {32{alusel_secondary == `LOGIC                                }} |
                                        shiftout_secondary      & {32{alusel_secondary == `SHIFT                                }} |
                                        arithmeticout_secondary & {32{alusel_secondary == `ARITHMETIC                           }} |
                                        moveout_secondary       & {32{alusel_secondary == `MOVE                                 }} ;

    //-------------------------------------------------------------
    //                branch inst handle
    //-------------------------------------------------------------
    //----- read branch result -----
    wire branch_flag_actual =   (aluop_primary == `J_OP)                                                   ||
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
    wire        corr_return_flag        = (aluop_primary == `JR_OP) && (reg1_read_addr_primary == 5'b11111);
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
            succesd_jr31_count      <= ((aluop_primary == `JR_OP) && (reg1_read_addr_primary == 5'b11111) && !branch_flag  )?                                 (succesd_jr31_count + 1):succesd_jr31_count;
            jr31_count              <= ((aluop_primary == `JR_OP) && (reg1_read_addr_primary == 5'b11111))?                                                   (jr31_count + 1):jr31_count;
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
    wire        hilo_write_primary   =   need_executed_primary   && hilo_write_primary_tmp;
    wire        hilo_write_secondary =   need_executed_secondary && hilo_write_secondary_tmp;
    wire [63:0] hilo_data_primary   =   {64{aluop_primary == `MTHI_OP  }} & {opdata1_primary,hilo_rdata_i[31:0]   } |
                                        {64{aluop_primary == `MTLO_OP  }} & {hilo_rdata_i[63:32],opdata1_primary  } |
                                        {64{alusel_primary == `DIVV     }} &  divout                                 |
                                        {64{alusel_primary == `MULL     }} &  multout                                ;
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
    //-------------------------------------------------------------
    //                     delay execute
    //-------------------------------------------------------------
    //----- delay opdata -----
    //delay exe register read
    assign rsrt_primary_o   = {reg1_read_addr_primary,  reg2_read_addr_primary};
    assign rsrt_secondary_o = {reg1_read_addr_secondary,reg2_read_addr_secondary};

    //delay exe mem2 stall signal and bypass
    wire        mem1_reg1_w     = reg_bypass_i[0];
    wire [4:0]  mem1_reg1_waddr = reg_bypass_i[5:1];
    wire [31:0] mem1_reg1_wdata = reg_bypass_i[37:6];
    wire        mem1_reg2_w     = reg_bypass_i[38];
    wire [4:0]  mem1_reg2_waddr = reg_bypass_i[43:39];
    wire [31:0] mem1_reg2_wdata = reg_bypass_i[75:44];
    wire        mem2_reg1_w     = reg_bypass_i[76];
    wire [4:0]  mem2_reg1_waddr = reg_bypass_i[81:77];
    wire [31:0] mem2_reg1_wdata = reg_bypass_i[113:82];
    wire        mem2_reg2_w     = reg_bypass_i[114];
    wire [4:0]  mem2_reg2_waddr = reg_bypass_i[119:115];
    wire [31:0] mem2_reg2_wdata = reg_bypass_i[151:120];
    wire        wb_reg1_w       = reg_bypass_i[152];
    wire [4:0]  wb_reg1_waddr   = reg_bypass_i[157:153];
    wire [31:0] wb_reg1_wdata   = reg_bypass_i[189:158];
    wire        wb_reg2_w       = reg_bypass_i[190];
    wire [4:0]  wb_reg2_waddr   = reg_bypass_i[195:191];
    wire [31:0] wb_reg2_wdata   = reg_bypass_i[227:196];

    wire [31:0] delay_opdata1_primary = (!reg1_read_primary                                       )?   opdata1_primary:
                                        (mem1_reg2_w &&  reg1_read_addr_primary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg1_read_addr_primary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg1_read_addr_primary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg1_read_addr_primary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg1_read_addr_primary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg1_read_addr_primary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_primary_i[63:32];
    
    wire [31:0] delay_opdata2_primary = (!reg2_read_primary                                         )?   opdata2_primary:
                                        (mem1_reg2_w &&  reg2_read_addr_primary == mem1_reg2_waddr  )?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg2_read_addr_primary == mem1_reg1_waddr  )?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg2_read_addr_primary == mem2_reg2_waddr  )?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg2_read_addr_primary == mem2_reg1_waddr  )?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg2_read_addr_primary == wb_reg2_waddr    )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg2_read_addr_primary == wb_reg1_waddr    )?  wb_reg1_wdata:reg_rdata_primary_i[31:0];

    wire [31:0] delay_opdata1_secondary =   (!reg1_read_secondary                                       )?  opdata1_secondary:
                                            (mem1_reg2_w &&  reg1_read_addr_secondary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                            (mem1_reg1_w &&  reg1_read_addr_secondary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                            (mem2_reg2_w &&  reg1_read_addr_secondary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                            (mem2_reg1_w &&  reg1_read_addr_secondary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                            (wb_reg2_w   &&  reg1_read_addr_secondary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                            (wb_reg1_w   &&  reg1_read_addr_secondary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_secondary_i[63:32];
    
    wire [31:0] delay_opdata2_secondary =   (!reg2_read_secondary                                       )?  opdata2_secondary:
                                            (mem1_reg2_w &&  reg2_read_addr_secondary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                            (mem1_reg1_w &&  reg2_read_addr_secondary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                            (mem2_reg2_w &&  reg2_read_addr_secondary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                            (mem2_reg1_w &&  reg2_read_addr_secondary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                            (wb_reg2_w   &&  reg2_read_addr_secondary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                            (wb_reg1_w   &&  reg2_read_addr_secondary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_secondary_i[31:0];

    //----- delay control signal -----
    wire       mem1_stall_primary   = mem1_up_bus_i[0];
    wire [4:0] mem1_waddr_primary   = mem1_up_bus_i[5:1];

    wire       mem2_stall_primary   = mem2_up_bus_i[0];
    wire [4:0] mem2_waddr_primary   = mem2_up_bus_i[5:1];

    wire opdata1_stall_primary = reg1_read_primary && |reg1_read_addr_primary && (
                                        (reg1_read_addr_primary == mem1_waddr_primary  )   && (mem1_stall_primary   ) ||
                                        (reg1_read_addr_primary == mem2_waddr_primary  )   && (mem2_stall_primary   ) 
                                    );
    wire opdata2_stall_primary = reg2_read_primary && |reg2_read_addr_primary && (
                                        (reg2_read_addr_primary == mem1_waddr_primary  )   && (mem1_stall_primary   ) ||
                                        (reg2_read_addr_primary == mem2_waddr_primary  )   && (mem2_stall_primary   )
                                    );
    wire opdata1_stall_secondary = reg1_read_secondary && |reg1_read_addr_secondary && (
                                        (reg1_read_addr_secondary == mem1_waddr_primary  )   && (mem1_stall_primary   ) ||
                                        (reg1_read_addr_secondary == mem2_waddr_primary  )   && (mem2_stall_primary   ) 
                                    );
    wire opdata2_stall_secondary = reg2_read_secondary && |reg2_read_addr_secondary && (
                                        (reg2_read_addr_secondary == mem1_waddr_primary  )   && (mem1_stall_primary   ) ||
                                        (reg2_read_addr_secondary == mem2_waddr_primary  )   && (mem2_stall_primary   ) 
                                    );
    
    assign stall_delay =    delay_exe_primary   && (opdata1_stall_primary   || opdata2_stall_primary) ||
                            delay_exe_secondary && (opdata1_stall_secondary || opdata2_stall_secondary);

    //-------------------------------------------------------------
    //                     output bus
    //-------------------------------------------------------------
    //----- cp0 read bus -----
    assign cp0_raddr_primary_o      = {8{ex_valid}} & {cp0_addr_primary};
    assign cp0_raddr_secondary_o    = {8{ex_valid}} & {cp0_addr_secondary};

    //----- ex stall bus and bypass bus -----
    assign ex_up_bus_o              = {12{ex_valid}} & {reg_waddr_secondary,delay_exe_secondary,reg_waddr_primary,(delay_exe_primary || alusel_primary == `LOAD || aluop_primary == `SC_OP)};
    assign ex_bypass_o              = {76{ex_valid}} & {{38{!cancel_likely}} & {reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary},{38{!cancel_delaysolt}} & {reg_wdata_primary,reg_waddr_primary,reg_write_primary}};

    //----- pipeline output -----
    assign ex_allowin_o     = ex_allowin;
    assign ex_mem1_valid_o  = ex_mem1_valid;
    assign ex_mem1_bus_primary_o     =  {318{ex_valid  && !cancel_delaysolt}} & 
                                        {   delay_opdata2_primary,delay_opdata1_primary,delay_exe_primary,
                                            opdata2_primary,
                                            untlb_paddr_primary,need_tlb_primary,untlb_cache_primary,mem_wdata_primary,mem_addr_primary,mem_size_primary,mem_sel_primary,mem_wr_primary,
                                            aluop_primary,alusel_primary,
                                            in_delayslot_primary,exception_vector_primary,
                                            reg_wdata_primary,reg_waddr_primary,reg_write_primary,inst_addr_primary};
    assign ex_mem1_bus_secondary_o   =  {180{ex_valid && !cancel_likely}} & 
                                        {   delay_opdata2_secondary,delay_opdata1_secondary,delay_exe_secondary,aluop_secondary,alusel_secondary,
                                            in_delayslot_secondary,exception_vector_secondary,
                                            reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,inst_addr_secondary};

endmodule