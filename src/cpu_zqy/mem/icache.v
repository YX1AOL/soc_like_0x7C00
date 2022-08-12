// date:        2021/07/21
// by:          kun
// module:      icache
// description: instruction cache, for dual-issue cpu
// features:    Critical Word First

`timescale 1ns / 1ps

`include "./cache_def.vh"

module icache (
    input   clk          ,
    input   rstn         ,

    // cache op
`ifdef ENABLE_CACHE_OP
    input         cache_req  ,
    input  [4 :0] cache_op   ,
    input  [31:0] cache_addr ,
    output        cache_ok   ,
`endif

    // instruction fetch
    input         inst_req    ,
    input  [31:0] inst_addr   , // 8-byte aligned
    output [63:0] inst_rdata  ,
    output        inst_addr_ok,
    output        inst_data_ok,

    // axi read address
    input         arready,
    output [3 :0] arid   ,
    output [31:0] araddr ,
    output [3 :0] arlen  ,
    output [2 :0] arsize ,
    output [1 :0] arburst,
    output [1 :0] arlock ,
    output [3 :0] arcache,
    output [2 :0] arprot ,
    output [3 :0] arqos,
    output        arvalid,

    // axi read data
    input  [3 :0] rid   ,
    input  [31:0] rdata ,
    input  [1 :0] rresp ,
    input         rlast ,
    input         rvalid,
    output        rready
);

    // cache FSM state
    localparam RESET       = 3'h0;
    localparam IDLE        = 3'h1;
    localparam RUN         = 3'h2;
    localparam MISS        = 3'h3;
    localparam FILL        = 3'h4;
    localparam FINISH      = 3'h5;
`ifdef ENABLE_CACHE_OP
    localparam CACHE_OP    = 3'h6;

    // cache op
    localparam IDX_INV     = 5'b00000;
    localparam IDX_STR_TAG = 5'b01000;
    localparam HIT_INV     = 5'b10000;
`endif

    wire [19:0] tag;
    wire [6 :0] index;
    wire [4 :0] offset;
    assign {tag, index, offset} = inst_addr;

    reg         req_reg;
    reg  [19:0] tag_reg;
    reg  [6 :0] index_reg;
    reg  [4 :0] offset_reg;

    always @(posedge clk) begin
        if (state == RESET) begin
            req_reg    <= 1'b0;
            tag_reg    <= 20'b0;
        end
        else if (inst_addr_ok) begin   // handle new request
            req_reg    <= 1'b1;
            tag_reg    <= tag;
            index_reg  <= index;
            offset_reg <= offset;
        end
        else if (inst_data_ok) begin   // clear when finished
            req_reg    <= 1'b0;
`ifdef ENABLE_CACHE_OP
        end 
        else if (state == RUN && cache_req && !req_reg) begin
            tag_reg    <= cache_addr[31:12];
            index_reg  <= cache_addr[11:5];
`endif
        end
    end

    // main FSM
    reg [2:0] state;

    always @(posedge clk) begin
        if (!rstn) begin
            state <= RESET;
        end
        else begin
            (* full_case, parallel_case *)
            case (state)
                IDLE    : state <= RUN;
`ifdef ENABLE_CACHE_OP
                RUN     : state <= cache_req && !req_reg  ? CACHE_OP :
                          (req_reg && !hit_data) ? MISS     : RUN;
                CACHE_OP: state <= RUN;
`else
                RUN     : state <= (req_reg && !hit_data) ? MISS : RUN;
`endif
                MISS    : state <= arready ? FILL : MISS;
                FILL    : state <= (axi_datacome && rlast) ? FINISH : FILL;
                FINISH  : state <= RUN;
                RESET   : state <= (reset_cnt == 7'd127) ? IDLE : RESET;
            endcase
        end
    end


    // update lru
    // discard when hit buf
    // state before miss  |  state after miss
    //       000         ->       110
    //       001         ->       111
    //       010         ->       100
    //       011         ->       101
    //       100         ->       001
    //       101         ->       000
    //       110         ->       011
    //       111         ->       010
    reg [2:0] lru [127:0];

    always @(posedge clk) begin
        if ((state == RUN || state == FILL || state == FINISH) && req_reg && hit_data) begin
            if (hit_way[1])
                {lru[index_reg][2], lru[index_reg][0]} <= ~hit_way;
            else
                {lru[index_reg][2], lru[index_reg][1]} <= ~hit_way;
        end
        else if (state == RUN && req_reg && !hit_data) begin
            lru[index_reg][2] <= ~lru[index_reg][2];
            if (lru[index_reg][2])
                lru[index_reg][0] <= ~lru[index_reg][0];
            else
                lru[index_reg][1] <= ~lru[index_reg][1];
        end
        else if (state == RESET) begin
            lru[reset_cnt] <= 3'b0;
        end
    end

    // get which way to replace when not hit
    reg  [1 :0] way_sel;
    always @(posedge clk) begin
        if (state == RUN && req_reg && !hit_data) begin
            way_sel <= lru[index_reg][2] ? {lru[index_reg][2], lru[index_reg][0]} :
                                           {lru[index_reg][2], lru[index_reg][1]};
        end
    end

    // FILL
    reg  [19:0] fill_tag;
    reg  [6 :0] fill_index;
    reg  [2 :0] fill_cnt;
    wire [4 :0] fill_offset  = {fill_cnt, 2'b0};
    wire        axi_datacome = (rvalid && rid == `I_CACHE_RID);

    always @(posedge clk) begin
        if (state == MISS) begin
            fill_tag   <= tag_reg;
            fill_index <= index_reg;
            fill_cnt   <= offset_reg[4:2];
        end
        else if (state == FILL) begin
            if (axi_datacome) begin
                fill_cnt <= fill_cnt + 3'b1;
            end
        end
    end

    // read buffer
    reg [31:0] r_buf [7:0];
    reg [7 :0] r_buf_valid;

    always @(posedge clk) begin
        if (state == RESET || state == FINISH) begin
            r_buf_valid <= 8'b0;
        end
        else if (state == FILL && axi_datacome) begin
            r_buf[fill_cnt] <= rdata;
            r_buf_valid[fill_cnt] <= 1'b1;
        end
    end

    wire [19:0] buf_rtag    = tag_reg;
    wire [6 :0] buf_rindex  = index_reg;
    wire [2 :0] buf_roffset = offset_reg[4:2];

    wire [1  :0] buf_valid  = {r_buf_valid[buf_roffset + 3'd1], r_buf_valid[buf_roffset]};
    wire [63 :0] buf_rdata  = {r_buf[buf_roffset + 3'd1], r_buf[buf_roffset]};
    wire         hit_buf    = (fill_tag == buf_rtag) && (fill_index == buf_rindex) && (&buf_valid);
    wire [255:0] buf_rline  = {r_buf[7], r_buf[6], r_buf[5], r_buf[4], r_buf[3], r_buf[2], r_buf[1], r_buf[0]};

    // RESET
    reg [6:0] reset_cnt; // also used as index in reset
    always @(posedge clk) begin
        if(!rstn) begin
            reset_cnt  <= 7'b0;
        end
        else if(state == RESET) begin
            reset_cnt  <= reset_cnt + 7'b1;
        end
    end

`ifdef ENABLE_CACHE_OP
    // CACHE OP
    reg  [4 :0] cache_op_reg   ;
    reg  [31:0] cache_addr_reg ;

    wire [1 :0] cache_addr_waysel = cache_addr_reg[13:12];

    always @(posedge clk) begin
        if (state == RUN && cache_req) begin
            cache_op_reg    <= cache_op;
            cache_addr_reg  <= cache_addr;
        end
    end

    assign cache_ok = (state == CACHE_OP);

    wire cache_op_idx_inv     = (state == CACHE_OP && cache_op_reg == IDX_INV);
    wire cache_op_idx_str_tag = (state == CACHE_OP && cache_op_reg == IDX_STR_TAG);
    wire cache_op_hit_inv     = (state == CACHE_OP && cache_op_reg == HIT_INV);

`endif

    // used in tag
`ifdef ENABLE_CACHE_OP
    wire [6 :0] tag_windex  = (state == RESET)    ? reset_cnt :
                              (state == CACHE_OP) ? index_reg : fill_index;
    wire [3 :0] tag_wen     = (state == RESET)                           ? 4'hf                      :
                              (state == FINISH)                          ? 4'b1 << way_sel           :
                              (cache_op_idx_inv || cache_op_idx_str_tag) ? 4'b1 << cache_addr_waysel :
                              (cache_op_hit_inv)                         ? hit_array                 : 4'b0;
`else
    wire [6 :0] tag_windex  = (state == RESET)  ? reset_cnt       : fill_index;
    wire [3 :0] tag_wen     = (state == RESET)  ? 4'hf            :
                              (state == FINISH) ? 4'b1 << way_sel : 4'b0;
`endif
    wire [6 :0] tag_qindex  = index_reg;
    wire [19:0] tag_q       = tag_reg;
    wire [19:0] tag_w       = fill_tag;
    wire        tag_valid   = (state == FINISH);

    wire [3 :0] hit_array;
    wire [1 :0] hit_way = `encoder4_2(hit_array);

    // used in data
    wire [6  :0] data_index     = (state == FINISH) ? fill_index :
                                  inst_addr_ok      ? index      : index_reg;
    wire [3  :0] data_wen       = (state == FINISH) ? 4'b1 << way_sel : 4'b0;
    wire [4  :0] data_offset    = offset_reg;
    wire [255:0] data_in        = buf_rline;

    wire [63 :0] data_out [3:0];

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : icache_ways
            icache_tag U_icache_tag(
                .clk   (clk         ),
                .wen   (tag_wen[i]  ),
                .qindex(tag_qindex  ),
                .windex(tag_windex  ),
                .qtag  (tag_q       ),
                .wtag  (tag_w       ),
                .valid (tag_valid   ),
                .hit   (hit_array[i])
            );

            icache_data u_icache_data(
                .clk      (clk        ),
                .wen      (data_wen[i]),
                .index    (data_index ),
                .offset   (data_offset),
                .data_in  (data_in    ),
                .data_out (data_out[i])
            );
        end
    endgenerate

    // axi read address
    assign arid    = `I_CACHE_ARID;
    assign araddr  = {tag_reg, index_reg, offset_reg[4:2], 2'b0};
    assign arlen   = 4'd7;  // 8 transfers
    assign arsize  = 3'd2;  // each transfer 4 bytes
    assign arburst = 2'd2;  // WRAP mode
    assign arlock  = 2'd0;
    assign arcache = 4'd0;
    assign arprot  = 3'd0;
    assign arqos   = 4'd0;
    assign arvalid = (state == MISS);

    // axi read data
    assign rready  = (state == FILL);

    wire hit_data = |hit_array;
    wire hit      = hit_buf | hit_data;

    // cpu data interface
`ifdef ENABLE_CACHE_OP
    assign inst_addr_ok = !cache_req && inst_req && (state == RUN || state == FILL) && (req_reg ? hit : 1'b1);
`else
    assign inst_addr_ok = inst_req && (state == RUN || state == FILL) && (req_reg ? hit : 1'b1);
`endif
    assign inst_data_ok = req_reg && (state == RUN || state == FILL || state == FINISH) && hit;
    assign inst_rdata   = hit_buf ? buf_rdata : data_out[hit_way];

endmodule
