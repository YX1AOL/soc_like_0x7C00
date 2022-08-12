`include "../../Head_Files/cpu.vh"

module alu_div#(
    parameter DATA_LEN = 32,
    parameter STATE_NUM = 34
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
    wire [DATA_LEN-1:0]opdata1 = (signed_i && opdata1_i[31])? (~opdata1_i + 1) : opdata1_i;
	wire [DATA_LEN-1:0]opdata2 = (signed_i && opdata2_i[31])? (~opdata2_i + 1) : opdata2_i;    

    //counter
    reg [$clog2(STATE_NUM):0]cnt;
    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            cnt <= 0;
        end else if (valid_i) begin
            cnt <= !ready_o ? (cnt + 1):cnt;
        end  else begin
            cnt <= 0;
        end
    end
	
    wire [DATA_LEN*2-1:0] result;
    wire rst_div = (rst == `RstEnable)? 1'b0:1'b1;
    
	div_gen_0 U_div_gen_0 (
  		.aclk(clk),                                     // input wire aclk
  		.aclken(valid_i),                               // input wire aclken
  		.aresetn(rst_div),                              // input wire aresetn
  		.s_axis_divisor_tvalid(valid_i),                // input wire s_axis_divisor_tvalid
  		.s_axis_divisor_tdata(opdata2),                 // input wire [31 : 0] s_axis_divisor_tdata
  		.s_axis_dividend_tvalid(valid_i),               // input wire s_axis_dividend_tvalid
  		.s_axis_dividend_tdata(opdata1),                // input wire [31 : 0] s_axis_dividend_tdata
  		//.m_axis_dout_tvalid(m_axis_dout_tvalid),      // output wire m_axis_dout_tvalid
  		.m_axis_dout_tdata(result)                      // output wire [63 : 0] m_axis_dout_tdata
	);
    wire [DATA_LEN-1:0] quotient;
    wire [DATA_LEN-1:0] remainder;
    assign {quotient,remainder} = result; 

    wire [DATA_LEN-1:0]result_quotient  = (signed_i && (opdata1_i[31] ^ opdata2_i[31]))? (~quotient  + 1):quotient;
    wire [DATA_LEN-1:0]result_remainder = (signed_i && opdata1_i[31]                  )? (~remainder + 1):remainder;


    assign ready_o  = (rst == `RstDisable) && (cnt == STATE_NUM) ;
    assign result_o = {result_remainder,result_quotient};
endmodule

