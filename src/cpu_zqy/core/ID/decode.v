`include "../../Head_Files/cpu.vh"
    
module decode(
    //instruction
    input [95:0]    inst_bus_i,
    output [232:0]  decode_bus_o,
    //output
    output       reg_write_o,
    output [4:0] reg_waddr_o,
    
    output       reg1_read_o,
    output       reg2_read_o,
    output [4:0] reg1_read_addr_o,
    output [4:0] reg2_read_addr_o,

    output       hilo_write_o,
    output       hilo_read_o,
    
    output       not_2_issue_o,
    output       wait_delaysolt_o,
    output       only_issue_o    

    );
    //-------------------------------------------------------------
    //                  input bus decode
    //-------------------------------------------------------------
    wire [31:0]inst_addr            = inst_bus_i[31:0];
    wire [31:0]exception_vector_tmp = inst_bus_i[63:32];
    wire [31:0]inst_data            = inst_bus_i[95:64];
    //-------------------------------------------------------------
    //                  signal of instruction
    //-------------------------------------------------------------
    //Split the ir signal according to the format,and get the value of each field
    wire [5:0]opcode    =   inst_data[31:26];
    wire [4:0]op1       =   inst_data[25:21];
    wire [4:0]op2       =   inst_data[20:16];
    wire [4:0]op3       =   inst_data[15:11];
    wire [4:0]op4       =   inst_data[10:6];
    wire [5:0]lastcode  =   inst_data[5:0];
    //branch addr
    wire [31:0]pc_plus_4  = inst_addr + 32'd4;
    wire [31:0]pc_plus_8  = inst_addr + 32'd8;
    wire [31:0]imm_offset = {{14{inst_data[15]}},inst_data[15:0],2'b00};

    //regfile
    wire        reg_write;
    wire [4:0]  reg_addr;
    wire [3:0]  alusel;
    wire [7:0]  aluop;
    wire [31:0] link_addr   = pc_plus_8;
    //branch
    wire        branch_flag;
    wire [31:0] branch_addr;
    //mem
    wire [31:0] mem_addr    = {{16{inst_data[15]}},inst_data[15:0]};
    //cp0
    wire        cp0_write   = (aluop == `MTC0_OP);
    wire [7:0]  cp0_addr    = (ins_rdhwr)?(
                                    {8{op3 == 5'd0}}  & `ebase_ADDR |
                                    {8{op3 == 5'd2}}  & `count_ADDR |
                                    {8{op3 == 5'd29}} & `userlocal_ADDR 
                                ):{inst_data[15:11],inst_data[2:0]};
    //exception
    wire [31:0] exception_vector;

    //-------------------------------------------------------------
    //              instruction type identification
    //-------------------------------------------------------------
    //---------- instruction type identification----------
    //Arithmetic opcodeeration instruction
    wire ins_add      = (opcode ==`SPECIAL)     && (lastcode == `ADD)   && (op4 == `Zero5);
    wire ins_addu     = (opcode ==`SPECIAL)     && (lastcode == `ADDU)  && (op4 == `Zero5);
    wire ins_addi     = (opcode ==`ADDI);
    wire ins_addiu    = (opcode ==`ADDIU);
    wire ins_clo      = (opcode ==`SPEICAL2)    && (lastcode == `CLO)   &&  (op4 == `Zero5);
    wire ins_clz      = (opcode ==`SPEICAL2)    && (lastcode == `CLZ)   &&  (op4 == `Zero5);
    wire ins_madd     = (opcode ==`SPEICAL2)    && (lastcode == `MADD)  &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_maddu    = (opcode ==`SPEICAL2)    && (lastcode == `MADDU) &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_msub     = (opcode ==`SPEICAL2)    && (lastcode == `MSUB)  &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_msubu    = (opcode ==`SPEICAL2)    && (lastcode == `MSUBU) &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_div      = (opcode ==`SPECIAL)     && (lastcode == `DIV)   &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_divu     = (opcode ==`SPECIAL)     && (lastcode == `DIVU)  &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_mul      = (opcode ==`SPEICAL2)    && (lastcode == `MUL)   &&  (op4 == `Zero5);
    wire ins_mult     = (opcode ==`SPECIAL)     && (lastcode == `MULT)  &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_multu    = (opcode ==`SPECIAL)     && (lastcode == `MULTU) &&  (op3 == `Zero5)  && (op4 == `Zero5);
    wire ins_slt      = (opcode ==`SPECIAL)     && (lastcode == `SLT)   &&  (op4 == `Zero5);
    wire ins_sltu     = (opcode ==`SPECIAL)     && (lastcode == `SLTU)  &&  (op4 == `Zero5);
    wire ins_slti     = (opcode ==`SLTI);
    wire ins_sltiu    = (opcode ==`SLTIU);
    wire ins_sub      = (opcode ==`SPECIAL)     && (lastcode == `SUB)   &&  (op4 == `Zero5);
    wire ins_subu     = (opcode ==`SPECIAL)     && (lastcode == `SUBU)  &&  (op4 == `Zero5);
    //Branch instruction
    wire ins_beq      = (opcode ==`BEQ);
    wire ins_bgez     = (opcode ==`REGIMM)      && (op2 == `BGEZ);
    wire ins_bgezal   = (opcode ==`REGIMM)      && (op2 == `BGEZAL);
    wire ins_bgtz     = (opcode ==`BGTZ)        && (op2 == `Zero5);
    wire ins_blez     = (opcode ==`BLEZ)        && (op2 == `Zero5);
    wire ins_bltz     = (opcode ==`REGIMM)      && (op2 == `BLTZ);
    wire ins_bltzal   = (opcode ==`REGIMM)      && (op2 == `BLTZAL);
    wire ins_bne      = (opcode ==`BNE);
    wire ins_j        = (opcode ==`J);
    wire ins_jal      = (opcode ==`JAL);
    wire ins_jalr     = (opcode ==`SPECIAL)     && (lastcode == `JALR)  &&  (op2 == `Zero5)  && (op4[3:0] == 4'b0000);
    wire ins_jr       = (opcode ==`SPECIAL)     && (lastcode == `JR)    &&  (op2 == `Zero5)  && (op3 == `Zero5) && (op4 == `Zero5);
    //likely instruction
    wire ins_beql     = (opcode == `BEQL);
    wire ins_bgezall  = (opcode == `REGIMM)     && (op2 == `BGEZALL);
    wire ins_bgezl    = (opcode == `REGIMM)     && (op2 == `BGEZL);
    wire ins_bgtzl    = (opcode == `BGTZL)      && (op2 == `Zero5);
    wire ins_blezl    = (opcode == `BLEZL)      && (op2 == `Zero5);
    wire ins_bltzl    = (opcode == `REGIMM)     && (op2 == `BLTZL);
    wire ins_bltzall  = (opcode == `REGIMM)     && (op2 == `BLTZALL);
    wire ins_bnel     = (opcode == `BNEL);
    //Memory Access instruction
    wire ins_lb       = (opcode ==`LB);
    wire ins_lbu      = (opcode ==`LBU);
    wire ins_lh       = (opcode ==`LH);
    wire ins_lhu      = (opcode ==`LHU);
    wire ins_ll       = (opcode ==`LL);
    wire ins_lw       = (opcode ==`LW);
    wire ins_lwl      = (opcode ==`LWL);
    wire ins_lwr      = (opcode ==`LWR);
    wire ins_pref     = (opcode ==`PREF);//just like nop
    wire ins_sc       = (opcode ==`SC);
    wire ins_sb       = (opcode ==`SB);
    wire ins_sh       = (opcode ==`SH);
    wire ins_sw       = (opcode ==`SW);
    wire ins_swl      = (opcode ==`SWL);
    wire ins_swr      = (opcode ==`SWR);
    wire ins_sync     = (opcode ==`SPECIAL)     && (op1 == `Zero5)       && (op2 == `Zero5) && (op3 == `Zero5) && (lastcode == `SYNC);//just like nop
    //Logical opcodeeration instruction
    wire ins_and      = (opcode ==`SPECIAL)     && (lastcode == `AND)    && (op4 == `Zero5);
    wire ins_andi     = (opcode ==`ANDI);
    wire ins_lui      = (opcode ==`LUI)         && (op1 == `Zero5);
    wire ins_nor      = (opcode ==`SPECIAL)     && (lastcode == `NOR)    && (op4 == `Zero5);
    wire ins_or       = (opcode ==`SPECIAL)     && (lastcode == `OR)     && (op4 == `Zero5);
    wire ins_ori      = (opcode ==`ORI);
    wire ins_xor      = (opcode ==`SPECIAL)     && (lastcode == `XOR)    && (op4 == `Zero5);
    wire ins_xori     = (opcode ==`XORI);
    //Data Movement instruction
    wire ins_mfhi     = (opcode ==`SPECIAL)     && (lastcode == `MFHI)   && (op1 == `Zero5) && (op2 == `Zero5) && (op4 == `Zero5);
    wire ins_mflo     = (opcode ==`SPECIAL)     && (lastcode == `MFLO)   && (op1 == `Zero5) && (op2 == `Zero5) && (op4 == `Zero5);
    wire ins_movf     = (opcode ==`SPECIAL)     && (lastcode == `MOVCI)  && (op4 == `Zero5) && (inst_data[17:16] == 2'b00);
    wire ins_movt     = (opcode ==`SPECIAL)     && (lastcode == `MOVCI)  && (op4 == `Zero5) && (inst_data[17:16] == 2'b01);
    wire ins_movn     = (opcode ==`SPECIAL)     && (lastcode == `MOVN)   && (op4 == `Zero5);
    wire ins_movz     = (opcode ==`SPECIAL)     && (lastcode == `MOVZ)   && (op4 == `Zero5);
    wire ins_mthi     = (opcode ==`SPECIAL)     && (lastcode == `MTHI)   && (op2 == `Zero5) && (op3 == `Zero5) && (op4 == `Zero5);
    wire ins_mtlo     = (opcode ==`SPECIAL)     && (lastcode == `MTLO)   && (op2 == `Zero5) && (op3 == `Zero5) && (op4 == `Zero5);
    //Shift opcodeeration instruction
    wire ins_sll      = (opcode ==`SPECIAL)     && (lastcode == `SLL)    && (op1 == `Zero5);
    wire ins_sllv     = (opcode ==`SPECIAL)     && (lastcode == `SLLV)   && (op4 == `Zero5);
    wire ins_sra      = (opcode ==`SPECIAL)     && (lastcode == `SRA)    && (op1 == `Zero5);
    wire ins_srav     = (opcode ==`SPECIAL)     && (lastcode == `SRAV)   && (op4 == `Zero5);
    wire ins_srl      = (opcode ==`SPECIAL)     && (lastcode == `SRL)    && (op1 == `Zero5);
    wire ins_srlv     = (opcode ==`SPECIAL)     && (lastcode == `SRLV)   && (op4 == `Zero5);
    //Self-trap instruction
    wire ins_break    = (opcode ==`SPECIAL)     && (lastcode == `BREAK);
    wire ins_syscall  = (opcode ==`SPECIAL)     && (lastcode == `SYSCALL);
    wire ins_teq      = (opcode ==`SPECIAL)     && (lastcode == `TEQ);
    wire ins_tge      = (opcode ==`SPECIAL)     && (lastcode == `TGE);
    wire ins_tgeu     = (opcode ==`SPECIAL)     && (lastcode == `TGEU);
    wire ins_tlt      = (opcode ==`SPECIAL)     && (lastcode == `TLT);
    wire ins_tltu     = (opcode ==`SPECIAL)     && (lastcode == `TLTU);
    wire ins_tne      = (opcode ==`SPECIAL)     && (lastcode == `TNE);
    wire ins_teqi     = (opcode ==`REGIMM)      && (op2 == `TEQI);
    wire ins_tgei     = (opcode ==`REGIMM)      && (op2 == `TGEI);
    wire ins_tgeiu    = (opcode ==`REGIMM)      && (op2 == `TGEIU);
    wire ins_tlti     = (opcode ==`REGIMM)      && (op2 == `TLTI);
    wire ins_tltiu    = (opcode ==`REGIMM)      && (op2 == `TLTIU);
    wire ins_tnei     = (opcode ==`REGIMM)      && (op2 == `TNEI);        
    //Privileged instructions
    wire ins_wait     = (opcode ==`COP0)    && (lastcode == `WAIT)  && ( inst_data[25] == 1'b1);
    wire ins_eret     = (opcode ==`COP0)    && (lastcode == `ERET)  && ( inst_data[25] == 1'b1);
    wire ins_mfc0     = (opcode ==`COP0)    && (op1 == `MFC0)       && ( inst_data[10:3] == 8'b00000000);
    wire ins_mtc0     = (opcode ==`COP0)    && (op1 == `MTC0)       && ( inst_data[10:3] == 8'b00000000);
    //tlb instructions
    wire ins_tlbp     = (opcode == `COP0)   && (inst_data[25:6] == 20'h80000) && (lastcode == `TLBP);
    wire ins_tlbr     = (opcode == `COP0)   && (inst_data[25:6] == 20'h80000) && (lastcode == `TLBR);
    wire ins_tlbwi    = (opcode == `COP0)   && (inst_data[25:6] == 20'h80000) && (lastcode == `TLBWI);
    wire ins_tlbwr    = (opcode == `COP0)   && (inst_data[25:6] == 20'h80000) && (lastcode == `TLBWR);
    //cache instruction
`ifdef Cacheinst
    wire ins_cache    = (opcode ==`CACHE_ins); 
    wire ins_uncache = 1'b0;
`else
    wire ins_uncache = (opcode ==`CACHE_ins); 
    wire ins_cache = 1'b0;
`endif
    //Coprocessor 2 Unusable Exception
    wire ins_cop1     = (opcode == `COP1)   && (op1 != 5'b01110);//"op1 != 5'b01101" is becasuse func_test
    wire ins_lwc1     = (opcode == `LWC1);
    wire ins_swc1     = (opcode == `SWC1);
    wire ins_ldc1     = (opcode == `LDC1);
    wire ins_sdc1     = (opcode == `SDC1);
    //RDHWR instruction
    wire ins_rdhwr    = (opcode == `SPEICAL3) && (op1 == `Zero5) && (op4 == `Zero5) && (lastcode == `RDHWR);



    //-------------------------------------------------------------
    //                      Instruction decode
    //-------------------------------------------------------------
    //----------Instruction decode----------
    assign reg_write    =   ins_and     | ins_or       | ins_xor      | ins_nor      | ins_sll      | ins_sllv     | 
                            ins_srl     | ins_srlv     | ins_sra      | ins_srav     | ins_add      | ins_addu     | 
                            ins_sub     | ins_subu     | ins_slt      | ins_sltu     | ins_mfhi     | ins_mflo     | 
                            ins_jalr    | ins_bltzal   | ins_bgezal   | ins_mfc0     | ins_andi     | ins_xori     | 
                            ins_ori     | ins_lui      | ins_addi     | ins_addiu    | ins_slti     | ins_sltiu    | 
                            ins_jal     | ins_lb       | ins_lbu      | ins_lh       | ins_lhu      | ins_lw       | 
                            ins_mul     | ins_clo      | ins_clz      | ins_ll       | ins_sc       | ins_lwl      | 
                            ins_lwr     | ins_movn     | ins_movz     | ins_bgezall  | ins_bltzall  | ins_rdhwr;

    //if instruction is ins_cache, reg_addr is cache_op
    assign reg_addr     =   inst_data[15:11] &  {5{  ins_and     | ins_or       | ins_xor      | ins_nor      | ins_sll      | ins_sllv     | 
                                                     ins_srl     | ins_srlv     | ins_sra      | ins_srav     | ins_add      | ins_addu     | 
                                                     ins_sub     | ins_subu     | ins_slt      | ins_sltu     | ins_mfhi     | ins_mflo     | 
                                                     ins_jalr    | ins_mul      | ins_clo      | ins_clz      | ins_movn     | ins_movz     }} |
                            5'b11111         &  {5{  ins_bltzal  | ins_bgezal   | ins_jal      | ins_bgezall  | ins_bltzall                 }} |
                            inst_data[20:16] &  {5{  ins_mfc0    | ins_andi     | ins_xori     | ins_ori      | ins_lui      | ins_addi     |  
                                                     ins_addiu   | ins_slti     | ins_sltiu    | ins_lb       | ins_lbu      | ins_lh       |  
                                                     ins_lhu     | ins_lw       | ins_ll       | ins_sc       | ins_lwl      | ins_lwr      | 
                                                     ins_cache   | ins_rdhwr                                                                          }} ; 
    
    assign alusel       =   `LOGIC      &   {4{ins_and    | ins_or       | ins_xor      | ins_nor      | ins_andi     | ins_ori      | ins_xori     | ins_lui                                                               }} |
                            `SHIFT      &   {4{ins_sll    | ins_sllv     | ins_srl      | ins_srlv     | ins_sra      | ins_srav                                                                                            }} |
                            `ARITHMETIC &   {4{ins_add    | ins_addu     | ins_sub      | ins_subu     | ins_slt      | ins_sltu     | ins_addi     | ins_addiu    | ins_slti     | ins_sltiu    | ins_clo      | ins_clz   }} |
                            `BRANCH     &   {4{ins_jr     | ins_jalr     | ins_j        | ins_jal      | ins_bltz     | ins_bltzal   | ins_bgez     | ins_bgezal   | ins_beq      | ins_bgtz     | ins_blez     | ins_bne   }} |
                            `LOAD       &   {4{ins_lb     | ins_lbu      | ins_lh       | ins_lhu      | ins_lw       | ins_ll       | ins_lwl      | ins_lwr                                                               }} |
                            `STORE      &   {4{ins_sb     | ins_sh       | ins_sw       | ins_sc       | ins_swl      | ins_swr                                                                                             }} |
                            `MULL       &   {4{ins_mult   | ins_multu    | ins_mul      | ins_madd     | ins_maddu    | ins_msub     | ins_msubu                                                                            }} |
                            `DIVV       &   {4{ins_div    | ins_divu                                                                                                                                                        }} |
                            `MOVE       &   {4{ins_mflo   | ins_mfhi     | ins_mthi     | ins_mtlo     | ins_movn     | ins_movz                                                                                            }} |
                            `CP0        &   {4{ins_mtc0   | ins_mfc0     | ins_eret     | ins_wait     | ins_rdhwr                                                                                                          }} |
                            `TLB        &   {4{ins_tlbp   | ins_tlbr     | ins_tlbwi    | ins_tlbwr                                                                                                                         }} |
                            `LIKELY     &   {4{ins_beql   | ins_bgezall  | ins_bgezl    | ins_bgtzl    | ins_blezl    | ins_bltzl    | ins_bnel     | ins_bltzall                                                           }} |
                            `CACHE      &   {4{ins_cache                                                                                                                                                                    }} ;


    assign aluop        =   `AND_OP       & {8{ins_and   | ins_andi             }} |
                            `OR_OP        & {8{ins_or    | ins_ori  | ins_lui   }} |
                            `NOR_OP       & {8{ins_nor                          }} |
                            `XOR_OP       & {8{ins_xor   | ins_xori             }} |
                            `SLL_OP       & {8{ins_sll   | ins_sllv             }} |
                            `SRL_OP       & {8{ins_srl   | ins_srlv             }} |
                            `SRA_OP       & {8{ins_sra   | ins_srav             }} |
                            `ADD_OP       & {8{ins_add   | ins_addi             }} |
                            `ADDU_OP      & {8{ins_addu  | ins_addiu            }} |
                            `SUB_OP       & {8{ins_sub                          }} |
                            `CLO_OP       & {8{ins_clo                          }} |
                            `CLZ_OP       & {8{ins_clz                          }} |
                            `SUBU_OP      & {8{ins_subu                         }} |
                            `SLT_OP       & {8{ins_slt   | ins_slti             }} |
                            `SLTU_OP      & {8{ins_sltu  | ins_sltiu            }} |
                            `MFHI_OP      & {8{ins_mfhi                         }} |
                            `MFLO_OP      & {8{ins_mflo                         }} |
                            `MTHI_OP      & {8{ins_mthi                         }} |
                            `MTLO_OP      & {8{ins_mtlo                         }} |
                            `MULT_OP      & {8{ins_mult                         }} |
                            `MULTU_OP     & {8{ins_multu                        }} |
                            `MUL_OP       & {8{ins_mul                          }} |
                            `MADD_OP      & {8{ins_madd                         }} |
                            `MADDU_OP     & {8{ins_maddu                        }} |
                            `MSUB_OP      & {8{ins_msub                         }} |
                            `MSUBU_OP     & {8{ins_msubu                        }} |
                            `DIV_OP       & {8{ins_div                          }} |
                            `DIVU_OP      & {8{ins_divu                         }} |
                            `BREAK_OP     & {8{ins_break                        }} |
                            `SYSCALL_OP   & {8{ins_syscall                      }} |
                            `MTC0_OP      & {8{ins_mtc0                         }} |
                            `TEQ_OP       & {8{ins_teq    | ins_teqi            }} |
                            `TGE_OP       & {8{ins_tge    | ins_tgei            }} |
                            `TGEU_OP      & {8{ins_tgeu   | ins_tgeiu           }} |
                            `TLT_OP       & {8{ins_tlt    | ins_tlti            }} |
                            `TLTU_OP      & {8{ins_tltu   | ins_tltiu           }} |
                            `TNE_OP       & {8{ins_tne    | ins_tnei            }} |
                            `MFC0_OP      & {8{ins_mfc0                         }} |
                            `ERET_OP      & {8{ins_eret                         }} |
                            `LL_OP        & {8{ins_ll                           }} |
                            `LB_OP        & {8{ins_lb                           }} |
                            `LBU_OP       & {8{ins_lbu                          }} |
                            `LH_OP        & {8{ins_lh                           }} |
                            `LHU_OP       & {8{ins_lhu                          }} |
                            `LW_OP        & {8{ins_lw                           }} |
                            `LWL_OP       & {8{ins_lwl                          }} |
                            `LWR_OP       & {8{ins_lwr                          }} |
                            `SC_OP        & {8{ins_sc                           }} |
                            `SB_OP        & {8{ins_sb                           }} |
                            `SH_OP        & {8{ins_sh                           }} |
                            `SW_OP        & {8{ins_sw                           }} |
                            `SWL_OP       & {8{ins_swl                          }} |
                            `SWR_OP       & {8{ins_swr                          }} |
                            `JR_OP        & {8{ins_jr     |  ins_jalr           }} |
                            `J_OP         & {8{ins_j      |  ins_jal            }} |
                            `BLT_OP       & {8{ins_bltz   |  ins_bltzl          }} |
                            `BLT_OP       & {8{ins_bltzal |  ins_bltzall        }} |
                            `BGE_OP       & {8{ins_bgez   |  ins_bgezl          }} |
                            `BGE_OP       & {8{ins_bgezal |  ins_bgezall        }} |
                            `BEQ_OP       & {8{ins_beq    |  ins_beql           }} |
                            `BNE_OP       & {8{ins_bne    |  ins_bnel           }} |
                            `BGT_OP       & {8{ins_bgtz   |  ins_bgtzl          }} |
                            `BLE_OP       & {8{ins_blez   |  ins_blezl          }} |
                            `TLBP_OP      & {8{ins_tlbp                         }} |
                            `TLBR_OP      & {8{ins_tlbr                         }} |
                            `TLBWI_OP     & {8{ins_tlbwi                        }} |
                            `TLBWR_OP     & {8{ins_tlbwr                        }} |
                            `MOVN_OP      & {8{ins_movn                         }} |
                            `MOVZ_OP      & {8{ins_movz                         }} |
                            `WAIT_OP      & {8{ins_wait                         }} |
                            `RDHWR_OP     & {8{ins_rdhwr                        }};
    
    wire reg1_read  =   ins_and   | ins_or    | ins_xor   | ins_nor   | ins_sllv  | ins_srlv  | ins_srav  | ins_add     | 
                        ins_addu  | ins_sub   | ins_subu  | ins_slt   | ins_sltu  | ins_mthi  | ins_mtlo  | ins_mult    | 
                        ins_multu | ins_div   | ins_divu  | ins_jr    | ins_jalr  | ins_andi  | ins_xori  | ins_clo     | 
                        ins_bltz  | ins_bltzal| ins_bgez  | ins_bgezal| ins_ori   | ins_lui   | ins_mul   | ins_clz     | 
                        ins_addi  | ins_addiu | ins_slti  | ins_sltiu | ins_beq   | ins_bgtz  | ins_blez  | ins_bne     | 
                        ins_lb    | ins_lbu   | ins_lh    | ins_lhu   | ins_lw    | ins_sb    | ins_sh    | ins_sw      | 
                        ins_madd  | ins_maddu | ins_msub  | ins_msubu | ins_ll    | ins_sc    | ins_lwl   | ins_lwr     | 
                        ins_swl   | ins_swr   | ins_movn  | ins_movz  | ins_teq   | ins_tge   | ins_tgeu  | ins_tlt     | 
                        ins_tltu  | ins_tne   | ins_teqi  | ins_tgei  | ins_tgeiu | ins_tlti  | ins_tltiu | ins_tnei    | 
                        ins_beql  | ins_bgezl | ins_bgtzl | ins_bltzl | ins_blezl | ins_bnel  | ins_cache | ins_bgezall | ins_bltzall ;
    
    wire reg2_read  =   ins_and   | ins_or    | ins_xor   | ins_nor   | ins_sll   | ins_sllv  | ins_srl   | ins_srlv  | 
                        ins_sra   | ins_srav  | ins_add   | ins_addu  | ins_sub   | ins_subu  | ins_slt   | ins_sltu  | 
                        ins_mult  | ins_multu | ins_div   | ins_divu  | ins_mtc0  | ins_bne   | ins_beq   | ins_sb    | 
                        ins_sh    | ins_sw    | ins_mul   | ins_madd  | ins_maddu | ins_msub  | ins_msubu | ins_lwl   | 
                        ins_lwr   | ins_swl   | ins_swr   | ins_movn  | ins_movz  | ins_teq   | ins_tge   | ins_tgeu  | 
                        ins_tlt   | ins_tltu  | ins_tne   | ins_beql  | ins_bnel  | ins_sc    ;
    
    wire [4:0]  reg1_read_addr  =  inst_data[25:21];
    
    wire [4:0]  reg2_read_addr  =  inst_data[20:16];

    wire [31:0] imm =   {27'h0,inst_data[10:6]              }   & {32{ins_sll    | ins_srl   | ins_sra  }} |
                        {16'h0,inst_data[15:0]              }   & {32{ins_andi   | ins_xori  | ins_ori  }} |
                        {inst_data[15:0],16'h0              }   & {32{ins_lui                           }} |
                        {{16{inst_data[15]}},inst_data[15:0]}   & {32{ins_addi   | ins_addiu | ins_slti | ins_sltiu | ins_teqi  | ins_tgei  | ins_tgeiu | ins_tlti  | ins_tltiu | ins_tnei }};
    
    wire instvalid  =   ins_and   | ins_or    | ins_xor   | ins_nor   | ins_sll   | ins_sllv  | ins_srl   | ins_srlv  | 
                        ins_sra   | ins_srav  | ins_add   | ins_addu  | ins_sub   | ins_subu  | ins_slt   | ins_sltu  | 
                        ins_mfhi  | ins_mflo  | ins_mthi  | ins_mtlo  | ins_mult  | ins_multu | ins_div   | ins_divu  | 
                        ins_jr    | ins_jalr  | ins_break | ins_syscall| ins_bltz | ins_bltzal| ins_bgez  | ins_bgezal| 
                        ins_mtc0  | ins_mfc0  | ins_eret  | ins_andi  | ins_xori  | ins_ori   | ins_lui   | ins_addi  | 
                        ins_addiu | ins_slti  | ins_sltiu | ins_j     | ins_jal   | ins_beq   | ins_bgtz  | ins_blez  | 
                        ins_bne   | ins_lb    | ins_lbu   | ins_lh    | ins_lhu   | ins_lw    | ins_sb    | ins_sh    | 
                        ins_sw    | ins_tlbp  | ins_tlbr  | ins_tlbwi | ins_tlbwr | ins_mul   | ins_clo   | ins_clz   | 
                        ins_madd  | ins_maddu | ins_msub  | ins_msubu | ins_sc    | ins_ll    | ins_lwl   | ins_lwr   | 
                        ins_swl   | ins_swr   | ins_sync  | ins_pref  | ins_movn  | ins_movz  | ins_teq   | ins_tge   | 
                        ins_tgeu  | ins_tlt   | ins_tltu  | ins_tne   | ins_teqi  | ins_tgei  | ins_tgeiu | ins_tlti  | 
                        ins_tltiu | ins_tnei  | ins_beql  | ins_bgezl | ins_bgtzl | ins_bltzl | ins_blezl | ins_bgezall | ins_bltzall | 
                        ins_bnel  | ins_movf  | ins_movt  | ins_wait  | ins_cache | ins_cop1  | ins_lwc1  | ins_swc1  | 
                        ins_ldc1  | ins_sdc1  | ins_uncache | ins_rdhwr;

    assign branch_addr  =   (pc_plus_4 + imm_offset)                 & {32{ins_bltz | ins_bltzal    | ins_bgez  | ins_bgezal    | ins_beq   | ins_bgtz  | ins_blez  | ins_bne | ins_beql  | ins_bgezl | ins_bgtzl | ins_bltzl | ins_blezl | ins_bnel  | ins_bgezall }} |
                            {pc_plus_4[31:28],inst_data[25:0],2'b00} & {32{ins_j    | ins_jal }};

    wire hilo_write     =   ins_mult   | ins_multu | ins_div   | ins_divu  | ins_mthi  | ins_mtlo  | ins_madd  | ins_maddu | ins_msub  | ins_msubu;

    wire delay_exe      =   ins_addu    | ins_addiu | ins_subu  | ins_slt   | ins_sltu  | ins_slti  | ins_sltiu | 
                            ins_and     | ins_andi  | ins_lui   | ins_nor   | ins_or    | ins_ori   | ins_xor   | ins_xori  |
                            ins_sll     | ins_sllv  | ins_sra   | ins_srav  | ins_srl   | ins_srlv  |
                            ins_movn    | ins_movz  ;
    //-------------------------------------------------------------
    //                      exception check
    //-------------------------------------------------------------
    wire refetch_cp0            = cp0_write && (cp0_addr == `entryhi_ADDR || cp0_addr == `status_ADDR || cp0_addr == `config0_ADDR);
`ifdef CachePreFetch
    wire excepttype_refetch     = ins_tlbwi | ins_tlbwr | ins_tlbr | refetch_cp0 | (ins_cache && reg_addr[1:0] == 2'b00);
`else
    wire excepttype_refetch     = ins_tlbwi | ins_tlbwr | ins_tlbr | refetch_cp0 ;
`endif
    wire excepttype_instvaild   = !instvalid || (ins_rdhwr && op3 != 5'd0 && op3 != 5'd2 && op3 != 5'd29);
    wire excepttype_eret        = ins_eret;
    wire excepttype_break       = ins_break;
    wire excepttype_syscall     = ins_syscall;
    wire excepttype_cop1_unused = ins_movf | ins_movt | ins_cop1  | ins_lwc1  | ins_swc1 | ins_ldc1  | ins_sdc1;

    excepttpye decode_excepttpye (
        .refetch_i                      (excepttype_refetch),
        .cop0_unused_i                  (1'b0),
        .cop1_unused_i                  (excepttype_cop1_unused),
        .tlb_modified_i                 (1'b0),
        .tlb_invalid_dataaddr_write_i   (1'b0),
        .tlb_invalid_dataaddr_read_i    (1'b0),
        .tlb_refill_dataaddr_write_i    (1'b0),
        .tlb_refill_dataaddr_read_i     (1'b0),
        .tlb_invalid_instaddr_i         (1'b0),
        .tlb_refill_instaddr_i          (1'b0),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (1'b0),
        .overflow_i                     (1'b0),
        .instvaild_i                    (excepttype_instvaild),
        .eret_i                         (excepttype_eret),
        .break_i                        (excepttype_break),
        .syscall_i                      (excepttype_syscall),
        .instaddr_i                     (1'b0),
        .interrupt_i                    (1'b0),

        .exception_vector_i             (exception_vector_tmp),
        .exception_vector_o             (exception_vector)
    );

    //-------------------------------------------------------------
    //                      output bus encode
    //-------------------------------------------------------------
    assign decode_bus_o = { delay_exe,
                            branch_addr,hilo_write,cp0_addr,cp0_write,mem_addr,exception_vector,link_addr,
                            imm,reg2_read_addr,reg2_read,reg1_read_addr,reg1_read,
                            aluop,alusel,
                            reg_addr,reg_write,
                            inst_addr};

    assign reg_write_o      = reg_write;
    assign reg_waddr_o      = reg_addr;
    assign reg1_read_o      = reg1_read;
    assign reg2_read_o      = reg2_read;
    assign reg1_read_addr_o =  reg1_read_addr;
    assign reg2_read_addr_o =  reg2_read_addr;
    assign hilo_write_o     =  hilo_write;
    assign hilo_read_o      = ins_mfhi || ins_mflo;

    wire sel_load   = ins_lb | ins_lbu | ins_lh | ins_lhu | ins_lw  | ins_ll | ins_lwl| ins_lwr;
    wire sel_store  = ins_sb | ins_sh  | ins_sw | ins_sc  | ins_swl | ins_swr;
    wire sel_muldiv = ins_mult| ins_multu | ins_div | ins_divu | ins_mul | ins_madd | ins_maddu | ins_msub | ins_msubu;
    wire sel_cloz   = ins_clz | ins_clo;
    
    wire sel_branch = ins_jr | ins_jalr | ins_j | ins_jal | ins_bltz | ins_bltzal | ins_bgez | ins_bgezal | ins_beq | ins_bgtz | ins_blez | ins_bne;
    wire sel_likely = ins_beql | ins_bgezall | ins_bgezl | ins_bgtzl | ins_blezl | ins_bltzl | ins_bnel | ins_bltzall;

    assign not_2_issue_o      = sel_load | sel_store | sel_muldiv | sel_cloz | sel_branch | sel_likely;
    assign wait_delaysolt_o = sel_branch | sel_likely;
    assign only_issue_o     = ins_mtc0| ins_mfc0  | ins_eret | ins_wait | ins_rdhwr | ins_tlbp | ins_tlbr | ins_tlbwi | ins_tlbwr | ins_cache;

endmodule