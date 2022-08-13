// date:        2022/08/06
// by:          kun
// module:      dcache
// description: data cache, can handle 1 request a cycle at most
// features:    Critical Word First, Victim Cache
//! note: Cache OP Index WriteBack Invalidate didn't check Victim Cache

`timescale 1ns / 1ps

`include "./cache_def.vh"

module dcache (
    input           clk      ,
    input           rstn     ,

`ifdef ENABLE_CACHE_OP
    // cache op
    // "cache_ok" means the cache op is finished
    input         cache_req  ,
    input  [4 :0] cache_op   ,
    input  [31:0] cache_addr ,
    input  [19:0] cache_tag  ,
    input         cache_valid,
    input         cache_dirty,
    output        cache_ok   ,
`endif

    // data access
    input         data_req    ,
    input         data_wr     ,
    input  [31:0] data_addr   ,
    input  [31:0] data_wdata  ,
    input  [3 :0] data_wstrb  ,
    output [31:0] data_rdata  ,
    output        data_addr_ok,
    output        data_data_ok,

    // axi read address
    output [3 :0] arid   ,
    output [31:0] araddr ,
    output [3 :0] arlen  ,
    output [2 :0] arsize ,
    output [1 :0] arburst,
    output [1 :0] arlock ,
    output [3 :0] arcache,
    output [2 :0] arprot ,
    output [3 :0] arqos  ,
    output        arvalid,
    input         arready,

    // axi read data
    input  [3 :0] rid   ,
    input  [31:0] rdata ,
    input  [1 :0] rresp ,
    input         rlast ,
    input         rvalid,
    output        rready,

    // axi write address
    output [3 :0] awid   ,
    output [31:0] awaddr ,
    output [3 :0] awlen  ,
    output [2 :0] awsize ,
    output [1 :0] awburst,
    output [1 :0] awlock ,
    output [3 :0] awcache,
    output [2 :0] awprot ,
    output [3 :0] awqos  ,
    output        awvalid,
    input         awready,

    // axi write data
    output [3 :0] wid   ,
    output [31:0] wdata ,
    output [3 :0] wstrb ,
    output        wlast ,
    output        wvalid,
    input         wready,

    // axi write response
    input  [3 :0] bid   ,
    input  [1 :0] bresp ,
    input         bvalid,
    output        bready
);

    function [31:0] get_word (input [255:0] line, input [2:0] offset);
        get_word = line[{offset, 5'b0} +: 32];
    endfunction

    // cache state
    // REPLACE: victim cache hit, replace dcache line with victim cache
    localparam RESET       = 4'd0;
    localparam IDLE        = 4'd1;
    localparam RUN         = 4'd2;
    localparam MISS        = 4'd3;
    localparam READ_REQ    = 4'd4;
    localparam WRITE_VC    = 4'd5;
    localparam WB          = 4'd6;
    localparam REPLACE     = 4'd7;
    localparam FILL        = 4'd8;
    localparam FINISH      = 4'd9;

`ifdef ENABLE_CACHE_OP
    // CACHE:     used for "dcache_tag" read the tag to compare 
    // CACHE_SEL: find out which to invalidate or writeback
    // CACHE_OP:  perform the operation(invalidate), include victim cache
    // CACHE_WB:  write back
    localparam CACHE_SEL   = 4'd10;
    localparam CACHE_OP    = 4'd11;
    localparam CACHE_WB    = 4'd12;
    localparam CACHE       = 4'd13;

    localparam IDX_WB_INV  = 5'b00001;
    localparam IDX_STR_TAG = 5'b01001;
    localparam HIT_INV     = 5'b10001;
    localparam HIT_WB_INV  = 5'b10101;
`endif

    localparam WB_IDLE   = 2'd0;
    localparam WB_REQ    = 2'd1;
    localparam WB_WRITE  = 2'd2;
    localparam WB_FINISH = 2'd3;

    wire [19:0] tag;
    wire [6 :0] index;
    wire [4 :0] offset;
    assign {tag, index, offset} = data_addr;

    reg         req_reg;
    reg         wr_reg;
    reg  [19:0] tag_reg;
    reg  [6 :0] index_reg;
    reg  [4 :0] offset_reg;
    reg  [31:0] wdata_reg;
    reg  [3 :0] wstrb_reg;

`ifdef ENABLE_CACHE_OP
    // Cache OP
    wire        cache_start = (state == RUN) && !req_reg && cache_req;
    reg  [4 :0] cache_op_reg;
    reg  [1 :0] cache_way_reg;

    reg  [3 :0] cache_tag_wen;
    reg  [19:0] cache_tag_reg;

    reg  [3 :0] cache_valid_wen;
    reg         cache_valid_reg;

    reg  [3 :0] cache_dirty_wen;
    reg         cache_dirty_reg;

    reg         cache_need_wb; // hit and dirty, including victim cache
    wire        cache_hit_op = (cache_op_reg == HIT_INV) || (cache_op_reg == HIT_WB_INV);

    reg         cache_wb_vc;   // hit and dirty on victim cache
    reg         cache_wb_vc_way;

    always @(posedge clk) begin
        if (cache_start) begin
            cache_op_reg    <= cache_op;
            cache_tag_reg   <= cache_tag;
            cache_way_reg   <= cache_addr[13:12];
            cache_valid_reg <= cache_valid;
            cache_dirty_reg <= cache_dirty;
            cache_need_wb   <= 1'b0;
            cache_wb_vc     <= 1'b0;
        end else if (state == CACHE_SEL) begin
            (* full_case, parallel_case *)
            case (cache_op_reg)
                IDX_WB_INV : begin
                    cache_tag_wen   <= 4'b0;
                    cache_valid_wen <= hit_array & (4'b1 << cache_way_reg);
                    cache_valid_reg <= 1'b0;
                    cache_dirty_wen <= hit_array & (4'b1 << cache_way_reg);
                    cache_dirty_reg <= 1'b0;
                    cache_need_wb   <= dirty_array[cache_way_reg] && valid_array[cache_way_reg];
                end
                IDX_STR_TAG: begin
                    cache_tag_wen   <= 4'b1 << cache_way_reg;
                    cache_valid_wen <= 4'b1 << cache_way_reg;
                    cache_dirty_wen <= 4'b1 << cache_way_reg;
                end
                HIT_INV    : begin
                    cache_tag_wen   <= 4'b0;
                    cache_valid_wen <= hit_array;
                    cache_valid_reg <= 1'b0;
                    cache_dirty_wen <= hit_array;
                    cache_dirty_reg <= 1'b0;
                    cache_way_reg   <= `ENCODE4_2(hit_array);
                end
                HIT_WB_INV : begin
                    cache_tag_wen   <= 4'b0;
                    cache_valid_wen <= hit_array;
                    cache_valid_reg <= 1'b0;
                    cache_dirty_wen <= hit_array;
                    cache_dirty_reg <= 1'b0;
                    cache_way_reg   <= `ENCODE4_2(hit_array);
                    cache_need_wb   <= |(hit_array & dirty_array) || hit_vc;
                    cache_wb_vc     <= hit_vc;
                    cache_wb_vc_way <= hit_vc_way;
                end
            endcase
        end
    end
`endif

    always @(posedge clk) begin
        if (state == RESET) begin
            req_reg    <= 1'b0;
            tag_reg    <= 20'b0;
        end else if (data_addr_ok) begin
            req_reg    <= 1'b1;
            wr_reg     <= data_wr;
            wdata_reg  <= data_wdata;
            wstrb_reg  <= data_wstrb;
            tag_reg    <= tag;
            index_reg  <= index;
            offset_reg <= offset;
        end else if (data_data_ok) begin
            req_reg    <= 1'b0;
            wr_reg     <= 1'b0;
`ifdef ENABLE_CACHE_OP
        end else if (cache_start) begin
            tag_reg    <= cache_addr[31:12];
            index_reg  <= cache_addr[11: 5];
`endif
        end
    end

    // main FSM
    reg [3:0] state;
    always @(posedge clk) begin
        if (!rstn) begin
            state <= RESET;
        end else begin
            (* full_case, parallel_case *)
            case (state)
               IDLE:     state <= RUN;
`ifdef ENABLE_CACHE_OP
               RUN      : state <= cache_start            ? CACHE :
                                   (req_reg && !hit_data) ? MISS  : RUN;
               CACHE    : state <= CACHE_SEL;
               CACHE_SEL: state <= CACHE_OP;
               CACHE_OP : state <= cache_need_wb                     ? CACHE_WB  : RUN;
               CACHE_WB : state <= (wb_state == WB_FINISH) && bvalid ? RUN       : CACHE_WB;
`else
               RUN      : state <= (req_reg && !hit_data) ? MISS : RUN;
`endif
               MISS     : state <= hit_vc          ? REPLACE  :
                                   sel_way_need_wb ? WRITE_VC : READ_REQ;
               REPLACE  : state <= RUN;
               WRITE_VC : state <= vc_full  ? WB       : READ_REQ;
               WB       : state <= wb_ready ? WRITE_VC : WB;
               READ_REQ : state <= arready && arvalid ? FILL   : READ_REQ;
               FILL     : state <= rvalid  && rlast   ? FINISH : FILL;
               FINISH   : state <= RUN;
               RESET    : state <= (reset_cnt == 7'd127) ? IDLE : RESET;
            endcase
        end
    end

    // LRU
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
    reg  [3 :0] dirty_array_reg, valid_array_reg;
    always @(posedge clk) begin
        if (state == RUN && req_reg && !hit_data) begin
            way_sel <= lru[index_reg][2] ? {lru[index_reg][2], lru[index_reg][0]} :
                                           {lru[index_reg][2], lru[index_reg][1]};
            dirty_array_reg <= dirty_array;
            valid_array_reg <= valid_array;
        end
    end

    wire sel_way_need_wb = dirty_array_reg[way_sel] && valid_array_reg[way_sel];

    // FILL & read buffer
    // to fully utilize critical word first, i.e. AXI wrap burst mode
    reg  [19:0] fill_tag;
    reg  [6 :0] fill_index;
    reg  [2 :0] fill_cnt;
    reg         fill_dirty;
    reg  [31:0] r_buf [7:0];
    reg  [7 :0] r_buf_valid;

    wire         buf_wr        = wr_reg;
    wire [19 :0] buf_rwtag     = tag_reg;
    wire [6  :0] buf_rwindex   = index_reg;
    wire [2  :0] buf_rwoffset  = offset_reg[4:2];
    wire [31 :0] buf_wstrb_bit = {{8{wstrb_reg[3]}}, {8{wstrb_reg[2]}}, {8{wstrb_reg[1]}}, {8{wstrb_reg[0]}}};
    wire [31 :0] buf_wdata     = wdata_reg;
    wire [31 :0] buf_wword     = (r_buf[buf_rwoffset] & ~buf_wstrb_bit) | (buf_wdata & buf_wstrb_bit);

    wire         buf_valid     = r_buf_valid[buf_rwoffset];
    wire [31 :0] buf_rdata     = r_buf[buf_rwoffset];
    wire [255:0] buf_line      = {r_buf[7], r_buf[6], r_buf[5], r_buf[4], r_buf[3], r_buf[2], r_buf[1], r_buf[0]};
    wire         hit_buf       = (fill_tag == buf_rwtag) && (fill_index == buf_rwindex) && buf_valid;
    // wire         hit_buf       = match_line_reg && buf_valid;

    // reg          match_line_reg;
    // always @(posedge clk) begin
    //     if (data_addr_ok) begin
    //         match_line_reg <= (fill_tag == tag) && (fill_index == index);
    //     end
    // end

    always @(posedge clk) begin
        if (state == READ_REQ) begin
            fill_tag   <= tag_reg;
            fill_index <= index_reg;
            fill_cnt   <= offset_reg[4:2];
        end
        else if (state == FILL) begin
            if (rvalid) begin
                fill_cnt <= fill_cnt + 3'b1;
            end
        end
    end

    always @(posedge clk) begin
        if (state == RESET || state == FINISH) begin
            fill_dirty  <= 1'b0;
            r_buf_valid <= 8'b0;
        end
        else begin
            if (state == FILL && rvalid) begin
                r_buf[fill_cnt]       <= rdata;
                r_buf_valid[fill_cnt] <= 1'b1;
            end
            if (state == FILL && req_reg && hit_buf && buf_wr) begin
                fill_dirty          <= 1'b1;
                r_buf[buf_rwoffset] <= buf_wword;
            end
        end
    end

    // RESET
    reg [6:0] reset_cnt; // used as index in reset
    always @(posedge clk) begin
        if(!rstn) begin
            reset_cnt  <= 7'b0;
        end
        else if(state == RESET) begin
            reset_cnt  <= reset_cnt + 7'b1;
        end
    end

    // Victim Cache

    reg  vc_wb_sel;
    reg  [26 :0] victim_cache_tagindex [1:0];
    reg  [1  :0] victim_cache_valid;
    reg  [255:0] victim_cache          [1:0];
    // wire [31 :0] victim_cache_word     [1:0][7:0];

    // genvar j;
    // generate
    //     for (j = 0; j < 8; j = j + 1) begin
    //         assign victim_cache_word[0][j] = victim_cache[0][31 + j * 32 : j * 32];
    //         assign victim_cache_word[1][j] = victim_cache[1][31 + j * 32 : j * 32];
    //     end
    // endgenerate

    wire vc_full  = &victim_cache_valid;

    wire   [1:0] hit_vc_array;
    assign hit_vc_array[0] = (victim_cache_tagindex[0] == {tag_reg, index_reg}) && victim_cache_valid[0];
    assign hit_vc_array[1] = (victim_cache_tagindex[1] == {tag_reg, index_reg}) && victim_cache_valid[1];

    wire   hit_vc     = |hit_vc_array;
    wire   hit_vc_way = hit_vc_array[1];

    // when victim cache is not full, get which line to write
    // if "victim_cache_valid" equal to:
    // 00 -> way 1
    // 01 -> way 1
    // 10 -> way 0
    // 11 -> don't write
    wire   write_way  = ~victim_cache_valid[1];

    // LRU algorithm
    always @(posedge clk) begin
        if (state == RESET) begin
            vc_wb_sel <= 1'b0;
        end else if (state == REPLACE) begin
            vc_wb_sel <= ~hit_vc_way;
        end else if (state == WB && wb_ready) begin
            vc_wb_sel <= ~vc_wb_sel;
        end
    end

    always @(posedge clk) begin
        if (state == RESET) begin
            victim_cache_valid                <= 2'b0;
        end else if (state == REPLACE) begin
            victim_cache_valid[hit_vc_way]    <= sel_way_need_wb;
            victim_cache_tagindex[hit_vc_way] <= {tag_array[way_sel], index_reg};
            victim_cache[hit_vc_way]          <= data_array[way_sel];
        end else if (state == WRITE_VC && !vc_full) begin
            victim_cache_tagindex[write_way]  <= {tag_array[way_sel], index_reg};
            victim_cache_valid[write_way]     <= 1'b1;
            victim_cache[write_way]           <= data_array[way_sel];
        end else if (state == WB && wb_ready) begin
            victim_cache_valid[vc_wb_sel]     <= 1'b0;
`ifdef ENABLE_CACHE_OP
        end else if (state == CACHE_OP && cache_hit_op && hit_vc) begin
            victim_cache_valid[hit_vc_way]    <= 1'b0;
`endif
        end
    end

    // Write Back FSM

    reg [1  :0] wb_state;
    reg [2  :0] wb_word_cnt;
    reg [26 :0] wb_tagindex;
    reg [255:0] wb_line;

    wire        wb_ready = (wb_state == WB_IDLE);
`ifdef ENABLE_CACHE_OP
    wire        start_wb = (state == WB) || (state == CACHE_WB);
`else
    wire        start_wb = (state == WB);
`endif

    always @(posedge clk) begin
        if (wb_ready && start_wb) begin
            wb_word_cnt <= 3'd0;
`ifdef ENABLE_CACHE_OP
            wb_tagindex <= (state == WB) ? victim_cache_tagindex[vc_wb_sel]       :
                           cache_wb_vc   ? victim_cache_tagindex[cache_wb_vc_way] :
                                           {tag_array[cache_way_reg], index_reg};
            wb_line     <= (state == WB) ? victim_cache[vc_wb_sel]       :
                           cache_wb_vc   ? victim_cache[cache_wb_vc_way] :
                                           data_array[cache_way_reg];
`else
            wb_tagindex <= victim_cache_tagindex[vc_wb_sel];
            wb_line     <= victim_cache[vc_wb_sel];
`endif
        end else if (wb_state == WB_WRITE) begin
            if (wready) begin
                wb_word_cnt <= wb_word_cnt + 3'd1;
            end
        end
    end

    always @(posedge clk) begin
        if (!rstn) begin
            wb_state <= WB_IDLE;
        end else begin
            (* full_case, parallel_case *)
            case (wb_state)
                WB_IDLE  : wb_state <= start_wb        ? WB_REQ    : WB_IDLE;
                WB_REQ   : wb_state <= awready         ? WB_WRITE  : WB_REQ;
                WB_WRITE : wb_state <= wlast && wready ? WB_FINISH : WB_WRITE;
                WB_FINISH: wb_state <= bvalid          ? WB_IDLE   : WB_FINISH;
            endcase
        end
    end

    wire        hit_data      = |hit_array;
    wire        state_ready   = (state == RUN) || (state == FILL);
    wire [31:0] wstrb_runfill = {28'b0, wstrb_reg} << {offset_reg[4:2], 2'b0};
    wire        hit           = hit_buf | hit_data;

    // tags
    // modify tags in these situations:
    // 1. write hit(set dirty)
    // 2. replace a way, and it's not dirty (invalidate)
    // 3. fill finished (set tag, valid, dirty)
    // 4. replace a way with victim cache (set tag, valid, dirty)
    // 5. write to victim cache (invalidate)
    // 6. cache op
    wire [19:0] tag_query = state_ready && data_addr_ok ? tag   : tag_reg;
    wire [6 :0] tag_qidx  = state_ready && data_addr_ok ? index : index_reg;
    wire [6 :0] tag_widx  = (state == RESET)                      ? reset_cnt       :
                            (state == FINISH)                     ? fill_index      : index_reg;
`ifdef ENABLE_CACHE_OP
    wire [3 :0] tag_wen   = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE) ? 4'b1 << way_sel :
                            (state == CACHE_OP)                   ? cache_tag_wen   : 4'b0;
    wire [3 :0] valid_wen = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE || state == WRITE_VC ||
                            (state == MISS && !sel_way_need_wb))  ? 4'b1 << way_sel :
                            (state == CACHE_OP)                   ? cache_valid_wen : 4'b0;
    wire [3 :0] dirty_wen = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE) ? 4'b1 << way_sel :
                            (state_ready && hit_data && wr_reg)   ? hit_array       :
                            (state == CACHE_OP)                   ? cache_dirty_wen : 4'b0;
    wire [19:0] tag_write = (state == REPLACE)                    ? tag_reg         :
                            (state == CACHE_OP)                   ? cache_tag_reg   : fill_tag;
    wire        valid_in  = (state == CACHE_OP)                   ? cache_valid_reg :
                            (state == FINISH) || (state == REPLACE);
    wire        dirty_in  = (state == RESET)                      ? 1'b0            :
                            (state == FINISH)                     ? fill_dirty      :
                            (state == REPLACE)                    ? 1'b1            :
                            (state_ready && hit_data && wr_reg)   ? 1'b1            :
                            (state == CACHE_OP)                   ? cache_dirty_reg : 1'b0;
`else
    wire [3 :0] tag_wen   = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE) ? 4'b1 << way_sel : 4'b0;
    wire [3 :0] valid_wen = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE || state == WRITE_VC ||
                            (state == MISS && !sel_way_need_wb))  ? 4'b1 << way_sel : 4'b0;
    wire [3 :0] dirty_wen = (state == RESET)                      ? 4'hf            :
                            (state == FINISH || state == REPLACE) ? 4'b1 << way_sel :
                            (state_ready && hit_data && wr_reg)   ? hit_array       : 4'b0;
    wire [19:0] tag_write = (state == REPLACE)                    ? tag_reg         : fill_tag;
    wire        valid_in  = (state == FINISH) || (state == REPLACE);
    wire        dirty_in  = (state == RESET)                      ? 1'b0            :
                            (state == FINISH)                     ? fill_dirty      :
                            (state == REPLACE)                    ? 1'b1            :
                            (state_ready && hit_data && wr_reg)   ? 1'b1            : 1'b0;
`endif

    wire [3 :0] hit_array;
    wire [1 :0] hit_way = `ENCODE4_2(hit_array);
    wire [19:0] tag_array [3:0];
    wire [3 :0] valid_array;
    wire [3 :0] dirty_array;

    // data
    // write data in these situations:
    // 1. write hit (RUN && FILL)
    // 2. replace with victim cache (REPLACE)
    // 3. fill finish (FINISH)
    wire [3  :0] data_wen      = (state_ready && wr_reg && hit_data)   ? hit_array       :
                                 (state == REPLACE || state == FINISH) ? 4'b1 << way_sel : 4'b0;
    wire [31 :0] data_waywstrb = (state_ready)                         ? wstrb_runfill   : 32'hffff_ffff;
    wire [6  :0] data_rindex   = (state == RUN || state == FILL)       ? index           : index_reg;
    wire [6  :0] data_windex   = (state == FINISH)  ? fill_index               : index_reg;
    wire [255:0] data_in       = (state == REPLACE) ? victim_cache[hit_vc_way] :
                                 (state == FINISH)  ? buf_line                 : {8{wdata_reg}};

    wire [255:0] data_array [3:0];

    // Generate cache ways
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : dcache_ways
            dcache_tag U_dcache_tag(
            	.clk       (clk           ),
                .tag_wen   (tag_wen[i]    ),
                .valid_wen (valid_wen[i]  ),
                .dirty_wen (dirty_wen[i]  ),
                .qidx      (tag_qidx      ),
                .widx      (tag_widx      ),
                .tag_query (tag_query     ),
                .tag_write (tag_write     ),
                .valid_in  (valid_in      ),
                .dirty_in  (dirty_in      ),
                .hit       (hit_array[i]  ),
                .tag_out   (tag_array[i]  ),
                .valid_out (valid_array[i]),
                .dirty_out (dirty_array[i])
            );

            dcache_data U_dcache_data(
            	.clk      (clk            ),
                .wen      (data_wen[i]    ),
                .wstrb    (data_waywstrb  ),
                .rindex   (data_rindex    ),
                .windex   (data_windex    ),
                .data_in  (data_in        ),
                .data_out (data_array[i]  )
            );
        end
    endgenerate

    // to cpu
`ifdef ENABLE_CACHE_OP
    assign data_addr_ok = !cache_start && data_req && (state == RUN || state == FILL) && (req_reg ? hit : 1'b1);
    assign cache_ok     = (state == CACHE_OP && !cache_need_wb) || (state == CACHE_WB && (wb_state == WB_FINISH) && bvalid);
`else
    assign data_addr_ok = data_req && (state == RUN || state == FILL) && (req_reg ? hit : 1'b1);
`endif
    assign data_data_ok = req_reg && (state == RUN || state == FILL) && hit;
    assign data_rdata   = hit_data ? get_word(data_array[hit_way], offset_reg[4:2]) : buf_rdata ;

    // to axi crossbar
    assign arid    = `D_CACHE_ARID;
    assign araddr  = {tag_reg, index_reg, offset_reg[4:2], 2'b0};
    assign arlen   = 4'd7;
    assign arsize  = 3'd2;
    assign arburst = 2'd2;      // WRAP
    assign arlock  = 2'd0;
    assign arcache = 4'd0;
    assign arprot  = 3'd0;
    assign arqos   = 4'd0;
    assign arvalid = (state == READ_REQ) && !(wb_tagindex == {tag_reg, index_reg} && !wb_ready);

    assign rready  = (state == FILL);

    assign awid    = `D_CACHE_AWID;
    assign awaddr  = {wb_tagindex, 5'b0};
    assign awlen   = 4'd7;      // 8 transfers
    assign awsize  = 3'd2;      // 4 bytes each transfer
    assign awburst = 2'd1;      // INCR
    assign awlock  = 2'd0;
    assign awcache = 4'd0;
    assign awprot  = 3'd0;
    assign awqos   = 4'd0;
    assign awvalid = (wb_state == WB_REQ);

    assign wid     = `D_CACHE_WID;
    assign wdata   = get_word(wb_line, wb_word_cnt);
    assign wstrb   = 4'hf;
    assign wlast   = (wb_word_cnt == 3'd7);
    assign wvalid  = (wb_state == WB_WRITE);

    assign bready  = 1'b1;

endmodule
