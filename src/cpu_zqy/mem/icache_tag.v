// date:        2022/08/06
// by:          kun
// module:      icache_tag
// description: icache_tag, using Distributed RAM

`timescale 1ns / 1ps

module icache_tag (
    input         clk   ,
    input         wen   ,
    input  [6 :0] qindex,
    input  [6 :0] windex,
    input  [19:0] qtag  ,
    input  [19:0] wtag  ,
    input         valid ,

    output        hit
);

    // tag structure:
    // |  20   |19  0|
    // | valid | tag |
    (* ram_style = "distributed" *) reg [20:0] tags [127:0];
 
    always @(posedge clk) begin
        if (wen) begin
            tags[windex] <= {valid, wtag};
        end
    end

    wire [19:0] tag_out   = tags[qindex][19:0];
    wire        valid_out = tags[qindex][20];

    assign hit = (tag_out == qtag) && valid_out;

endmodule
