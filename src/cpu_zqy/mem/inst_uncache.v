// date:        2021/08/11
// by:          kun
// module:      inst_uncache
// description: sram-axi bridge, used to handle uncached instruction
//              fetching

`timescale 1ns / 1ps

`include "./cache_def.vh"

module inst_uncache (
    input         clk          ,
    input         rstn         ,

    // sram-like simplified
    input         inst_req     ,
    input  [31:0] inst_addr    ,
    output [63:0] inst_rdata   ,
    output        inst_addr_ok ,
    output        inst_data_ok ,

    // axi read address
    output [3 :0] arid         ,
    output [31:0] araddr       ,
    output [3 :0] arlen        ,
    output [2 :0] arsize       ,
    output [1 :0] arburst      ,
    output [1 :0] arlock       ,
    output [3 :0] arcache      ,
    output [2 :0] arprot       ,
    output [3 :0] arqos        ,
    output        arvalid      ,
    input         arready      ,

    // axi read data
    input  [3 :0] rid          ,
    input  [31:0] rdata        ,
    input  [1 :0] rresp        ,
    input         rlast        ,
    input         rvalid       ,
    output        rready
);

    // axi_ar means it's in the read-address step
    reg        axi_ar;
    reg        req_reg;
    reg [31:0] addr_reg;

    reg [31:0] instruction [1:0];

    always @(posedge clk) begin
        if (rvalid && ~rlast) begin
            instruction[0] <= rdata;
        end else if (rvalid && rlast) begin
            instruction[1] <= rdata;
        end
    end

    reg        axi_data_back;
    always @(posedge clk) begin
        if (!rstn) begin
            axi_data_back <= 1'b0;
        end else if (rvalid && rlast) begin
            axi_data_back <= 1'b1;
        end else if (inst_addr_ok) begin
            axi_data_back <= 1'b0;
        end
    end

    assign inst_addr_ok = inst_req && (req_reg ? inst_data_ok : 1'b1);
    assign inst_data_ok = req_reg && axi_data_back;
    assign inst_rdata   = {instruction[1], instruction[0]};

    always @(posedge clk) begin
        req_reg     <=  !rstn        ? 1'b0 :
                        inst_addr_ok ? 1'b1 :
                        inst_data_ok ? 1'b0 : req_reg;
        addr_reg    <=  inst_addr_ok ? inst_addr : addr_reg;
    end

    always @(posedge clk) begin
        axi_ar  <=  !rstn              ? 1'b0 :
                    inst_addr_ok       ? 1'b1 :
                    arvalid && arready ? 1'b0 : axi_ar;
    end

    assign arid    = `I_UNCACHE_ARID;
    assign araddr  = addr_reg;
    assign arlen   = 4'd1;  // two transfers for dual-issue cpu
    assign arsize  = 3'd2;  // 4 bytes in a transfer
    assign arburst = 2'd1;  // INCR
    assign arlock  = 2'd0;
    assign arcache = 4'd0;
    assign arprot  = 3'd0;
    assign arqos   = 4'd0;
    assign arvalid = axi_ar;

    assign rready  = 1'b1;

endmodule
