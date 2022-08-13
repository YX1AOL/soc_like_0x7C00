`include "../../Head_Files/cpu.vh"

module alu_move(
    input [7 :0]    aluop_i,
    input [31:0]    opdata1_i,
    input [31:0]    opdata2_i,
    input [63:0]    hilo_rdata_i,

    output          unwrite_o,
    output [31:0]   moveout_o
    );
    assign unwrite_o = (aluop_i == `MOVN_OP  && opdata2_i == 32'b0) || 
                        (aluop_i == `MOVZ_OP  && opdata2_i != 32'b0) ;

    assign moveout_o  = {32{aluop_i == `MOVN_OP}}  &  opdata1_i             |
                        {32{aluop_i == `MOVZ_OP}}  &  opdata1_i             |
                        {32{aluop_i == `MFHI_OP}}  &  hilo_rdata_i[63:32]   |
                        {32{aluop_i == `MFLO_OP}}  &  hilo_rdata_i[31:0]    ;

endmodule