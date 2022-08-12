`include "configure.vh"

////////////////////////////////
//----- don't to modify ----- 
`define SELECT_BITS `PHT_BITS
`define BTB_NUM (1<<`BTB_BITSi)
`define BHT_NUM (1<<`HASH_BITS)
`define PHT_NUM (1<<`PHT_BITS)


////////////////////////////////
//CP0_register

`define STATUS_CU0 28
`define STATUS_BEV 22
`define STATUS_IM  15:8
`define STATUS_KSU 4:3
`define STATUS_ERL 2
`define STATUS_EXL 1
`define STATUS_IE  0

`define CAUSE_IP 15:8
`define CAUSE_IV 23

//Zero
`define Zero32 32'h00000000
`define Zero5 5'b00000

////////////////////////////////
//issue_mode
`define NoIssue 2'b00
`define SingleIssue 2'b01
`define DoubleIssue 2'b10
//instbuffer count
`define HaveNoInst  2'b00
`define HaveOneInst 2'b01
`define HaveTwoInst 2'b10
////////////////////////////////
//exception
`define Int     5'h00
`define MOD     5'h01
`define TLBL    5'h02
`define TLBS    5'h03
`define AdEL    5'h04
`define AdES    5'h05
`define Sys     5'h08
`define Bp      5'h09
`define RI      5'h0a
`define CpU     5'h0b
`define Ov      5'h0c
`define Refetch 5'h1d
`define Er      5'h1e
`define NoException 5'h1f
////////////////////////////////
//cp0
`define BadVaddr 3'b000
`define Count 3'b001
`define Status 3'b010
`define Cause 3'b011
`define EPC 3'b100


////////////////////////////////
//Distinguish among Instructions
//Instruction Code
`define SPECIAL 6'b000000
`define REGIMM  6'b000001
`define COP0    6'b010000
`define SPEICAL2 6'b011100
`define SPEICAL3 6'b011111

`define ANDI    6'b001100
`define XORI    6'b001110
`define ORI     6'b001101
`define LUI     6'b001111
`define SLTI    6'b001010
`define SLTIU   6'b001011
`define ADDI    6'b001000
`define ADDIU   6'b001001
`define J       6'b000010
`define JAL     6'b000011
`define BEQ     6'b000100
`define BGTZ    6'b000111
`define BLEZ    6'b000110
`define BNE     6'b000101
`define LB      6'b100000
`define LBU     6'b100100
`define LH      6'b100001
`define LHU     6'b100101
`define LW      6'b100011
`define SB      6'b101000
`define SH      6'b101001
`define SW      6'b101011
`define LL      6'b110000
`define SC      6'b111000
`define LWL     6'b100010
`define LWR     6'b100110
`define SWL     6'b101010
`define SWR     6'b101110
`define PREF    6'b110011
`define BEQL    6'b010100
`define BGTZL   6'b010111
`define BLEZL   6'b010110
`define BNEL    6'b010101
`define CACHE_ins   6'b101111
`define COP1    6'b010001
`define LWC1    6'b110001
`define SWC1    6'b111001
`define LDC1    6'b110101
`define SDC1    6'b111101



//SPECIAL lastcode
`define ADD     6'b100000
`define ADDU    6'b100001
`define SYNC    6'b001111
`define TEQ     6'b110100
`define TGE     6'b110000
`define TGEU    6'b110001
`define TLT     6'b110010
`define TLTU    6'b110011
`define TNE     6'b110110
`define AND     6'b100100
`define OR      6'b100101
`define XOR     6'b100110
`define NOR     6'b100111
`define SLL     6'b000000
`define SLLV    6'b000100
`define SRL     6'b000010
`define SRLV    6'b000110
`define SRA     6'b000011
`define SRAV    6'b000111
`define MOVZ    6'b001010
`define MOVN    6'b001011
`define MFHI    6'b010000
`define MTHI    6'b010001
`define MFLO    6'b010010
`define MTLO    6'b010011
`define SLT     6'b101010
`define SLTU    6'b101011
`define SUB     6'b100010
`define SUBU    6'b100011
`define MULT    6'b011000
`define MULTU   6'b011001
`define DIV     6'b011010
`define DIVU    6'b011011
`define JALR    6'b001001
`define JR      6'b001000
`define SYSCALL 6'b001100
`define BREAK   6'b001101
`define MOVCI   6'b000001
//SPECIAL2 lastcode
`define CLO     6'b100001
`define CLZ     6'b100000
`define MADD    6'b000000
`define MADDU   6'b000001
`define MSUB    6'b000100
`define MSUBU   6'b000101
`define MUL     6'b000010
//REGIMM  op2 [20:16]
`define BGEZ    5'b00001
`define BGEZAL  5'b10001
`define BLTZ    5'b00000
`define BLTZAL  5'b10000
`define TEQI    5'b01100
`define TGEI    5'b01000
`define TGEIU   5'b01001
`define TLTI    5'b01010
`define TLTIU   5'b01011
`define TNEI    5'b01110
`define BGEZALL 5'b10011
`define BGEZL   5'b00011
`define BLTZL   5'b00010
`define BLTZALL 5'b10010
//COP0    op1 [25:21]
`define MTC0    5'b00100
`define MFC0    5'b00000
//COP0    lastcode
`define ERET    6'b011000
`define WAIT    6'b100000
`define TLBP    6'b001000
`define TLBR    6'b000001
`define TLBWI   6'b000010
`define TLBWR   6'b000110

`define RDHWR   6'b111011

////////////////////////////////
//Distinguish among Alu
//Alusel Code
`define NOP             4'b0000
`define LOGIC           4'b0001
`define SHIFT           4'b0010
`define MOVE            4'b0011
`define ARITHMETIC      4'b0100
`define BRANCH          4'b0110
`define LOAD            4'b0111
`define STORE           4'b1000 
`define MULDIV          4'b1001
`define TLB             4'b1010
`define EXCEPTION       4'b1011
`define LIKELY          4'b1100
`define CACHE           4'b1101
`define CP0             4'b1110


//NOP Aluop
`define NOP_OP      8'b00000000
//Others Aluop      begin 1111
`define ERET_OP     8'b11110001
//ARITHMETIC Aluop  begin 0000
`define ADD_OP      8'b00000001
`define ADDU_OP     8'b00000010
`define ADDI_OP     8'b00000011
`define ADDIU_OP    8'b00000100
`define SLT_OP      8'b00000101
`define SLTU_OP     8'b00000110  
`define SUB_OP      8'b00000111
`define SUBU_OP     8'b00001000
`define CLO_OP      8'b00001001
`define CLZ_OP      8'b00001011
//LOGIC Aluop       begin 0001
`define AND_OP      8'b00010000
`define OR_OP       8'b00010001
`define XOR_OP      8'b00010010
`define NOR_OP      8'b00010011
//SHIFT Aluop       begin 0010
`define SLL_OP      8'b00100000
`define SRL_OP      8'b00100001
`define SRA_OP      8'b00100010
//MOVE Aluop        begin 0011
`define MOVZ_OP     8'b00110000
`define MOVN_OP     8'b00110001
`define MFHI_OP     8'b00110010
`define MTHI_OP     8'b00110011
`define MFLO_OP     8'b00110100
`define MTLO_OP     8'b00110101
`define MFC0_OP     8'b00110110
`define MTC0_OP     8'b00110111
`define RDHWR_OP    8'b00111111
//LD Aluop          begin 0100
`define LB_OP       8'b01000000
`define LBU_OP      8'b01000001
`define LH_OP       8'b01000010
`define LHU_OP      8'b01000011
`define LW_OP       8'b01000100
`define LL_OP       8'b01000101
`define LWL_OP      8'b01000110
`define LWR_OP      8'b01000111
//SD aluop          begin 0101
`define SB_OP       8'b01010000
`define SH_OP       8'b01010001
`define SW_OP       8'b01010010
`define SC_OP       8'b01010011
`define SWL_OP      8'b01010100
`define SWR_OP      8'b01010101
//branch / likely aluop      begin 0110
`define J_OP        8'b01100000
`define JR_OP       8'b01100001
`define BLT_OP      8'b01100010
`define BGE_OP      8'b01100011
`define BEQ_OP      8'b01100100
`define BNE_OP      8'b01100101
`define BGT_OP      8'b01100110
`define BLE_OP      8'b01100111
//TLB aluop         begin 0111
`define TLBP_OP     8'b01110000
`define TLBWI_OP    8'b01110001
`define TLBR_OP     8'b01110010
`define TLBWR_OP    8'b01110011
//MULDIV            begin 1000
`define MULT_OP     8'b10000000
`define MULTU_OP    8'b10000001
`define DIV_OP      8'b10000010
`define DIVU_OP     8'b10000011
`define MUL_OP      8'b10000100
`define MADD_OP     8'b10000101
`define MADDU_OP    8'b10000110
`define MSUB_OP     8'b10000111
`define MSUBU_OP    8'b10001000
//EXCEPTION         begin 1001
`define SYSCALL_OP  8'b10010000
`define BREAK_OP    8'b10010001
`define TEQ_OP      8'b10010010
`define TGE_OP      8'b10010011
`define TGEU_OP     8'b10010100
`define TLT_OP      8'b10010101
`define TLTU_OP     8'b10010110
`define TNE_OP      8'b10010111
`define WAIT_OP     8'b10011000


//CP0 addr
`define index_ADDR      8'b00000000
`define random_ADDR     8'b00001000
`define entrylo0_ADDR   8'b00010000
`define entrylo1_ADDR   8'b00011000
`define context_ADDR    8'b00100000
`define pagemask_ADDR   8'b00101000
`define wire_ADDR       8'b00110000
`define badvaddr_ADDR   8'b01000000
`define count_ADDR      8'b01001000
`define entryhi_ADDR    8'b01010000
`define compare_ADDR    8'b01011000
`define status_ADDR     8'b01100000
`define cause_ADDR      8'b01101000
`define epc_ADDR        8'b01110000
`define prid_ADDR       8'b01111000
`define ebase_ADDR      8'b01111001
`define config0_ADDR    8'b10000000
`define config1_ADDR    8'b10000001
`define taglo_ADDR      8'b11100000
`define taghi_ADDR      8'b11101000

`define hwrena_ADDR     8'b00111000
`define userlocal_ADDR  8'b00100010
`define config2_ADDR    8'b10000010
`define config3_ADDR    8'b10000011