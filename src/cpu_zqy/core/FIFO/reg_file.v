`include "../../Head_Files/cpu.vh"

module reg_file(
    input clk,
    input rst,

    input [9:0]raddr1_i,//{[4:0]addr1,[4:0]addr2}
    input [9:0]raddr2_i,//{[4:0]addr1,[4:0]addr2}

    input we1_i,
    input [4:0]waddr1_i,
    input [31:0]wdata1_i,
    input we2_i,
    input [4:0]waddr2_i,
    input [31:0]wdata2_i,


    output [63:0]reg_rdata1_o,
    output [63:0]reg_rdata2_o
    );

	reg [31:0]regs [31:0];

	////////////////////////////////////////////////////////////////
	/////////////////		regfile write		////////////////////
	////////////////////////////////////////////////////////////////
    wire WAW_relvance = (we1_i && we2_i && waddr1_i == waddr2_i);

	integer i;
	//regfile write
	always @(posedge clk) begin
        if(rst == `RstEnable)begin
            for(i = 0; i<32 ;i=i+1)begin
                regs[i] <= 32'b0;
            end
        end

		if(we2_i) begin
	        regs[waddr2_i] <= wdata2_i;
        end else begin end

        if(!WAW_relvance && we1_i) begin
            regs[waddr1_i] <= wdata1_i;
        end else begin end
	end
	
	////////////////////////////////////////////////////////////////
	/////////////////		regfile ouput		////////////////////
	////////////////////////////////////////////////////////////////
	wire [31:0]reg1 = (raddr1_i[9:5] == `Zero5)?`Zero32:regs[raddr1_i[9:5]];
	wire [31:0]reg2 = (raddr1_i[4:0] == `Zero5)?`Zero32:regs[raddr1_i[4:0]];	
	assign reg_rdata1_o = {reg1,reg2};

    wire [31:0]reg3 = (raddr2_i[9:5] == `Zero5)?`Zero32:regs[raddr2_i[9:5]];
	wire [31:0]reg4 = (raddr2_i[4:0] == `Zero5)?`Zero32:regs[raddr2_i[4:0]];	
	assign reg_rdata2_o = {reg3,reg4};
endmodule