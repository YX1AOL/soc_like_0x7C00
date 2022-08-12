`include "../../Head_Files/cpu.vh"

module alu_mult#(
    parameter DATA_LEN = 32,
    parameter STATE_NUM = 5
) (

    input clk,
    input rst,

    input valid_i,
    input signed_i,
    input [DATA_LEN-1:0]opdata1_i,
    input [DATA_LEN-1:0]opdata2_i,

    output ready_o,
    output [DATA_LEN*2-1:0]result_o
    
);

    //if signed and negative opdata, change opdata
    wire [DATA_LEN-1:0] opdata1 = (signed_i && opdata1_i[31])?  (~opdata1_i + 1):opdata1_i;
	wire [DATA_LEN-1:0] opdata2 = (signed_i && opdata2_i[31])?  (~opdata2_i + 1):opdata2_i;    

    //counter
    reg [$clog2(STATE_NUM):0] cnt;
    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            cnt <= 0;
        end else if (valid_i) begin
            cnt <= !ready_o ? (cnt + 1):cnt;
        end else begin
            cnt <= 0;
        end
    end
	
    wire [DATA_LEN*2-1:0] result;
    wire rst_mul = (rst == `RstEnable)? 1'b1:1'b0;

    mult_gen_0 U_mult_gen_0 (
        .CLK(clk),              // input wire CLK
        .A(opdata1),            // input wire [31 : 0] A
        .B(opdata2),            // input wire [31 : 0] B
        .CE(valid_i),           // input wire CE
        .SCLR(rst_mul),         // input wire SCLR
        .P(result)              // output wire [63 : 0] P
    );

    
    assign ready_o =  (rst == `RstDisable) && (cnt == STATE_NUM);
    assign result_o = (signed_i &&  opdata1_i[31] ^ opdata2_i[31])? (~result + 1):result;
endmodule

