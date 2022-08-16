// date:        2021/07/21
// by:          kun
// module:      dcache_tag
// description: data cache tag

`timescale 1ns / 1ps

module dcache_tag (
    input          clk      ,
    input          tag_wen  ,
    input          valid_wen,
    input          dirty_wen,

    input  [6 :0]  qidx     ,
    input  [6 :0]  widx     ,
    input  [19:0]  tag_query,
    input  [19:0]  tag_write,
    input          valid_in ,
    input          dirty_in ,

    output         hit      ,
    output [19:0]  tag_out  ,
    output         valid_out,
    output         dirty_out
);

    (* ram_style = "distributed" *) reg [19:0] tags [127:0];
    reg [127:0] valid;
    reg [127:0] dirty;

    always @(posedge clk) begin
        if (tag_wen) begin
            tags[widx] <= tag_write;
        end
    end

    always @(posedge clk) begin
        if (valid_wen) begin
            valid[widx] <= valid_in;
        end
    end

    always @(posedge clk) begin
        if (dirty_wen) begin
            dirty[widx] <= dirty_in;
        end
    end

    assign tag_out   = tags[qidx];
    assign valid_out = valid[qidx];
    assign dirty_out = dirty[qidx];

    reg match_tag;
    reg valid_reg;

    initial begin
        match_tag = 1'b0;
        valid_reg = 1'b0;
    end

    always @(posedge clk) begin
        if (qidx == widx && tag_wen) begin
            match_tag <= (tag_query == tag_write);
        end else begin
            match_tag <= (tag_query == tags[qidx]);
        end
    end

    always @(posedge clk) begin
        if (qidx == widx && valid_wen) begin
            valid_reg <= valid_in;
        end else begin
            valid_reg <= valid[qidx];
        end
    end

    assign hit = match_tag && valid_reg;

endmodule
