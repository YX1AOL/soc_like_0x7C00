// date:        2021/07/09
// by:          kun
// module:      data_uncache
// description: sram-axi bridge, used to handle uncached data
//              transactions, a FIFO of 32 depth used as a store
//              buffer to accelerate store transactions
//* NOTE:       transactions must be in-order, so we need to empty
//*             the store buffer to handle a new read request
//! Better to use 'miscellaneous/data_uncache_nofifo.v' for correctness

`timescale 1ns / 1ps

`include "./cache_def.vh"

module data_uncache (
    input         clk          ,
    input         rstn         ,

    // a modified sram-like protocol
    input         data_req     ,
    input         data_wr      ,
    input  [2 :0] data_size    ,
    input  [31:0] data_addr    ,
    input  [31:0] data_wdata   ,
    input  [3 :0] data_wstrb   ,
    output [31:0] data_rdata   ,
    output        data_addr_ok ,
    output        data_data_ok ,

    // axi ar
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
    // axi r
    input  [3 :0] rid          ,
    input  [31:0] rdata        ,
    input  [1 :0] rresp        ,
    input         rlast        ,
    input         rvalid       ,
    output        rready       ,
    // axi aw
    output [3 :0] awid         ,
    output [31:0] awaddr       ,
    output [3 :0] awlen        ,
    output [2 :0] awsize       ,
    output [1 :0] awburst      ,
    output [1 :0] awlock       ,
    output [3 :0] awcache      ,
    output [2 :0] awprot       ,
    output [3 :0] awqos        ,
    output        awvalid      ,
    input         awready      ,
    // axi w
    output [3 :0] wid          ,
    output [31:0] wdata        ,
    output [3 :0] wstrb        ,
    output        wlast        ,
    output        wvalid       ,
    input         wready       ,
    // axi b
    input  [3 :0] bid          ,
    input  [1 :0] bresp        ,
    input         bvalid       ,
    output        bready
);

    // Structure:
    //      SRAM <---> Store Buffer <---> SRAM-AXI Bridge

    //* Store Buffer
    // 32 depth FIFO, stores data write request

    reg [31:0] fifo_addr  [31:0];
    reg [2 :0] fifo_size  [31:0];
    reg [31:0] fifo_wdata [31:0];
    reg [3 :0] fifo_wstrb [31:0];

    // SRAM-AXI Bridge state
    // cannot write when axi is reading
    reg     axi_reading;
    always @(posedge clk) begin
        if (!rstn) begin
            axi_reading <= 1'b0;
        end else if (data_req && !data_wr && data_addr_ok) begin
            axi_reading <= 1'b1;
        end else if (data_data_ok) begin
            axi_reading <= 1'b0;
        end
    end

    // read from head, write to tail
    // data in fifo[tail] is not valid 
    reg [4 :0] fifo_head_ptr;
    reg [4 :0] fifo_tail_ptr;

    wire    fifo_empty = (fifo_head_ptr == fifo_tail_ptr);
    wire    fifo_full  = ((fifo_tail_ptr + 5'd1) == fifo_head_ptr);

    wire    fifo_read  = !fifo_empty && fifo_req_addr_ok;
    wire    fifo_write = !fifo_full && data_req && data_wr && !axi_reading;

    always @(posedge clk) begin
        fifo_head_ptr <=    !rstn      ? 5'd0                 :
                            fifo_read  ? fifo_head_ptr + 5'd1 :
                            fifo_head_ptr;
        fifo_tail_ptr <=    !rstn      ? 5'd0                 :
                            fifo_write ? fifo_tail_ptr + 5'd1 :
                            fifo_tail_ptr;
    end

    always @(posedge clk) begin
        if (fifo_write) begin
            fifo_addr [fifo_tail_ptr] <= data_addr ;
            fifo_size [fifo_tail_ptr] <= data_size ;
            fifo_wdata[fifo_tail_ptr] <= data_wdata;
            fifo_wstrb[fifo_tail_ptr] <= data_wstrb;
        end
    end

    // used to generate a "data_ok" signal from FIFO to CPU
    // a cycle after "addr_ok" i.e. "fifo_write"
    reg     fifo_data_ok_reg;
    always @(posedge clk) begin
        fifo_data_ok_reg <= !rstn ? 1'b0 : fifo_write;
    end

    // when fifo_last_trans is high, after this cycle, the fifo will be empty
    // but we need to wait until data_ok, so the FIFO can't bypass the response right now
    wire fifo_last_trans = (fifo_head_ptr + 5'd1 == fifo_tail_ptr) && fifo_read && !fifo_write;

    reg fifo_last_trans_wait;
    always @(posedge clk) begin
        fifo_last_trans_wait <= !rstn                                       ? 1'b0 :
                                (fifo_last_trans)                           ? 1'b1 :
                                (fifo_last_trans_wait && fifo_req_data_ok)  ? 1'b0 : fifo_last_trans_wait;
    end

    // all write requests should through the FIFO, we only bypass read requests
    wire fifo_bypass_req     = fifo_empty && !(data_req && data_wr);

    wire fifo_bypass_addr_ok = fifo_empty;
    wire fifo_bypass_data_ok = fifo_empty && !fifo_last_trans_wait;

    // Request from CPU to FIFO
    assign data_rdata   = fifo_req_rdata;
    assign data_addr_ok = data_req && (data_wr ? fifo_write : (fifo_bypass_addr_ok && fifo_req_addr_ok));
    assign data_data_ok = fifo_bypass_data_ok ? fifo_req_data_ok : fifo_data_ok_reg;

    // Request from FIFO to SRAM-AXI Bridge
    // CPU write req -> store, CPU read req -> bypass
    // to make sure requests in order, wait until the fifo is empty (and is able to bypass requests)
    wire        fifo_req_req     = fifo_bypass_req ? data_req   : !fifo_empty;
    wire        fifo_req_wr      = fifo_bypass_req ? 1'b0       : 1'b1;
    wire [2 :0] fifo_req_size    = fifo_bypass_req ? data_size  : fifo_size [fifo_head_ptr];
    wire [31:0] fifo_req_addr    = fifo_bypass_req ? data_addr  : fifo_addr [fifo_head_ptr];
    wire [31:0] fifo_req_wdata   = fifo_bypass_req ? data_wdata : fifo_wdata[fifo_head_ptr];
    wire [3 :0] fifo_req_wstrb   = fifo_bypass_req ? data_wstrb : fifo_wstrb[fifo_head_ptr];

    wire [31:0] fifo_req_rdata;
    wire        fifo_req_addr_ok;
    wire        fifo_req_data_ok;

    //* SRAM-AXI Bridge

    assign  fifo_req_rdata   = rdata;
    assign  fifo_req_addr_ok = fifo_req_req && (req_reg ? fifo_req_data_ok : 1'b1);
    assign  fifo_req_data_ok = axi_data && (rvalid || bvalid);

    reg         req_reg;
    reg         wr_reg;
    reg [2 :0]  size_reg;
    reg [31:0]  addr_reg;
    reg [31:0]  wdata_reg;
    reg [3 :0]  wstrb_reg;

    always @(posedge clk) begin
        if (!rstn) begin
            req_reg   <= 1'b0;
            wr_reg    <= 1'b0;
            size_reg  <= 3'b0;
            addr_reg  <= 32'b0;
            wdata_reg <= 32'b0;
            wstrb_reg <= 4'b0;
        end else if (fifo_req_addr_ok) begin
            req_reg   <= 1'b1;
            wr_reg    <= fifo_req_wr;
            size_reg  <= fifo_req_size;
            addr_reg  <= fifo_req_addr;
            wdata_reg <= fifo_req_wdata;
            wstrb_reg <= fifo_req_wstrb;
        end else if (fifo_req_data_ok) begin
            req_reg   <= 1'b0;
        end
    end

    // axi_address & axi_data indicates the state of AXI transaction
    reg axi_address;
    reg axi_data;

    //* No need to care about the arid & awid, since we are using a crossbar
    //* Unless there are multiple different transactions in a channel
    always @(posedge clk) begin
        axi_address <= !rstn                                        ? 1'b0 :
                       fifo_req_addr_ok                             ? 1'b1 :
                       (arvalid && arready) || (awvalid && awready) ? 1'b0 : axi_address;
        axi_data    <= !rstn                                        ? 1'b0 :
                       (arvalid && arready) || (awvalid && awready) ? 1'b1 :
                       (rvalid  && rready)  || (bvalid  && bready)  ? 1'b0 : axi_data;
    end

    // AXI Signals
    assign arid    = `D_UNCACHE_ARID;
    assign araddr  = addr_reg;
    assign arlen   = 4'd0;
    assign arsize  = size_reg;
    assign arburst = 2'd0;
    assign arlock  = 2'd0;
    assign arcache = 4'd0;
    assign arprot  = 3'd0;
    assign arqos   = 4'b0;
    assign arvalid = req_reg && !wr_reg && axi_address;

    assign rready  = 1'b1;

    assign awid    = `D_UNCACHE_AWID;
    assign awaddr  = addr_reg;
    assign awlen   = 4'd0;
    assign awsize  = size_reg;
    assign awburst = 2'd0;
    assign awlock  = 2'd0;
    assign awcache = 4'd0;
    assign awprot  = 3'd0;
    assign awqos   = 4'b0;
    assign awvalid = req_reg && wr_reg && axi_address;

    assign wid     = `D_UNCACHE_WID;
    assign wdata   = wdata_reg;
    assign wstrb   = wstrb_reg;
    assign wlast   = 1'b1;
    assign wvalid  = req_reg && wr_reg && axi_data;

    assign bready  = 1'b1;

endmodule
