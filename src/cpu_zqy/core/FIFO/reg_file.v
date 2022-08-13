`include "../../Head_Files/cpu.vh"

module reg_file(
    input clk,
    input rst,

    input [9:0]id_raddr1_i,//{[4:0]addr1,[4:0]addr2}
    input [9:0]id_raddr2_i,//{[4:0]addr1,[4:0]addr2}
    input [9:0]ex_raddr1_i,//{[4:0]addr1,[4:0]addr2}
    input [9:0]ex_raddr2_i,//{[4:0]addr1,[4:0]addr2}

    input we1_i,
    input [4:0]waddr1_i,
    input [31:0]wdata1_i,
    input we2_i,
    input [4:0]waddr2_i,
    input [31:0]wdata2_i,


    output [63:0]id_reg_rdata1_o,
    output [63:0]id_reg_rdata2_o,
    output [63:0]ex_reg_rdata1_o,
    output [63:0]ex_reg_rdata2_o
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
	wire [31:0]reg1 = (id_raddr1_i[9:5] == `Zero5)?`Zero32:regs[id_raddr1_i[9:5]];
	wire [31:0]reg2 = (id_raddr1_i[4:0] == `Zero5)?`Zero32:regs[id_raddr1_i[4:0]];	
	assign id_reg_rdata1_o = {reg1,reg2};

    wire [31:0]reg3 = (id_raddr2_i[9:5] == `Zero5)?`Zero32:regs[id_raddr2_i[9:5]];
	wire [31:0]reg4 = (id_raddr2_i[4:0] == `Zero5)?`Zero32:regs[id_raddr2_i[4:0]];	
	assign id_reg_rdata2_o = {reg3,reg4};

    wire [31:0]reg5 = (ex_raddr1_i[9:5] == `Zero5)?`Zero32:regs[ex_raddr1_i[9:5]];
	wire [31:0]reg6 = (ex_raddr1_i[4:0] == `Zero5)?`Zero32:regs[ex_raddr1_i[4:0]];	
	assign ex_reg_rdata1_o = {reg5,reg6};

    wire [31:0]reg7 = (ex_raddr2_i[9:5] == `Zero5)?`Zero32:regs[ex_raddr2_i[9:5]];
	wire [31:0]reg8 = (ex_raddr2_i[4:0] == `Zero5)?`Zero32:regs[ex_raddr2_i[4:0]];	
	assign ex_reg_rdata2_o = {reg7,reg8};

endmodule