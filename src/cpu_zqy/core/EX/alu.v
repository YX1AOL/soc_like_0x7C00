`include "../../Head_Files/cpu.vh"

module alu(
    input [7:0]aluop_i,
    input [31:0]opdata1_i,
    input [31:0]opdata2_i,  

    output [31:0] logicout_o,
    output [31:0] shiftout_o,
    output [31:0] arithmeticout_o,

    output exception_ov_o,
    output exception_trap_o
    );
    //-------------------------------------------------------------
    //----- logicout ------
    assign logicout_o = {32{aluop_i == `AND_OP}} & (  opdata1_i & opdata2_i ) |
                        {32{aluop_i == `OR_OP }} & (  opdata1_i | opdata2_i ) |
                        {32{aluop_i == `XOR_OP}} & (  opdata1_i ^ opdata2_i ) |
                        {32{aluop_i == `NOR_OP}} & (~(opdata1_i | opdata2_i)) ;

    //-------------------------------------------------------------
    //----- shiftout -----
    assign shiftout_o = {32{aluop_i == `SLL_OP }} & ( opdata2_i << opdata1_i[4:0] ) |
                        {32{aluop_i == `SRL_OP }} & ( opdata2_i >> opdata1_i[4:0] ) |
                        {32{aluop_i == `SRA_OP }} & (({32{opdata2_i[31]}} << (6'd32 - {1'b0,opdata1_i[4:0]})) | (opdata2_i >> opdata1_i[4:0])) ;

    //-------------------------------------------------------------
    //----- arithmeticout -----
    //if inst is sltu, 33bits is the only sign bit of opdata
    //if others , 33bits is the frist sign bit of opdata, opdata[31] is the second sign bit of opdata
    wire SUB_inst = aluop_i == `SUB_OP || aluop_i == `SUBU_OP || aluop_i == `SLT_OP || aluop_i == `TGE_OP || aluop_i == `TLT_OP || aluop_i == `SLTU_OP|| aluop_i == `TGEU_OP || aluop_i == `TLTU_OP;

    wire cout;
    wire [31:0] sum;
    wire lessthan;
    wire overflow;

    wire [31:0] opdata1     =    opdata1_i;
    wire [31:0] opdata2     =    (SUB_inst)? ~opdata2_i:opdata2_i;
    wire        opdata_cin  =    (SUB_inst)? 1'b1:1'b0;
    
    
    assign {cout,sum} = opdata1 + opdata2 + opdata_cin;
    assign overflow = (opdata2[31] && opdata1[31] && ~sum[31]) | (~opdata2[31] && ~opdata1[31] && sum[31]);

    assign lessthan = (aluop_i == `SLT_OP || aluop_i == `TGE_OP || aluop_i == `TLT_OP)? ((opdata1_i[31] && !opdata2_i[31]) || (~(opdata1_i[31]^opdata2_i[31]) && sum[31])):~cout;
    
    assign arithmeticout_o = sum              & {32{aluop_i == `ADD_OP || aluop_i == `ADDU_OP || aluop_i == `SUB_OP || aluop_i == `SUBU_OP }} |
                             {31'H0,lessthan} & {32{aluop_i == `SLT_OP || aluop_i == `SLTU_OP                                              }} ;

    //-------------------------------------------------------------
    //                  exception check
    //-------------------------------------------------------------
    //----- exception_trap -----
    assign exception_trap_o  =  (aluop_i == `TEQ_OP  && opdata1_i == opdata2_i)        ||
                                (aluop_i == `TGE_OP  && !lessthan             )        ||
                                (aluop_i == `TGEU_OP && !lessthan             )        ||
                                (aluop_i == `TLT_OP  && lessthan              )        ||
                                (aluop_i == `TLTU_OP && lessthan              )        ||
                                (aluop_i == `TNE_OP  && opdata1_i != opdata2_i)        ;
    //----- exception_overflow -----
    assign exception_ov_o = ((aluop_i == `ADD_OP)||(aluop_i ==`SUB_OP))? overflow:1'b0 ;

endmodule