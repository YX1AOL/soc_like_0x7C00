module RAS(
    input clk,
    input rst,
    input fllush,

    input           ras_pop_i,
    input           ras_push_i,
    input  [31:0]   ras_push_addr_i,
    output [31:0]   ras_branch_addr_o,
    
    input  [31:0]   corr_addr_i,
    input           corr_link_flag_i,
    input           corr_return_flag_i
);  
    
    integer i;
    //-------------------------------------------------------------
    //                   stack signal define
    //-------------------------------------------------------------
    reg  [31:0] stack_predictor [`RAS_NUM-1:0];
    reg  [$clog2(`RAS_NUM)-1:0] top_predictor;
    wire [$clog2(`RAS_NUM)-1:0] top_next_pridictor;

    reg  [31:0] stack_decoder [`RAS_NUM-1:0];
    reg  [$clog2(`RAS_NUM)-1:0] top_decoder;
    wire [$clog2(`RAS_NUM)-1:0] top_next_decoder;

    reg        ras_pop_r;
    reg        ras_push_r;
    reg [31:0] ras_push_addr_r;
    reg [31:0] corr_addr_8_r;
    reg        corr_link_flag_r;
    reg        corr_return_flag_r;

    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            ras_pop_r           <= 0;
            ras_push_r          <= 0;
            ras_push_addr_r     <= 0;
            corr_addr_8_r       <= 0;
            corr_link_flag_r    <= 0;
            corr_return_flag_r  <= 0;
        end else begin
            ras_pop_r           <= ras_pop_i;
            ras_push_r          <= ras_push_i;
            ras_push_addr_r     <= ras_push_addr_i;
            corr_addr_8_r       <= corr_addr_i + 32'd8;
            corr_link_flag_r    <= corr_link_flag_i;
            corr_return_flag_r  <= corr_return_flag_i;
        end
    end

    //-------------------------------------------------------------
    //                      stack_predictor
    //-------------------------------------------------------------
    assign top_next_pridictor   =   {($clog2(`RAS_NUM)-1){ ras_push_r &&  ras_pop_r}} &  top_predictor       |
                                    {($clog2(`RAS_NUM)-1){ ras_push_r && !ras_pop_r}} &  (top_predictor + 1) |
                                    {($clog2(`RAS_NUM)-1){!ras_push_r &&  ras_pop_r}} &  (top_predictor - 1) |
                                    {($clog2(`RAS_NUM)-1){!ras_push_r && !ras_pop_r}} &  top_predictor       ;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(i=0; i<`RAS_NUM; i=i+1)begin
                stack_predictor[i] <= 32'b0;
            end
        end else if(fllush)begin
            for(i=0; i<`RAS_NUM; i=i+1)begin
                stack_predictor[i] <= ((i == top_next_decoder) && corr_link_flag_r)? corr_addr_8_r:stack_decoder[i];
            end
        end else if(ras_push_r) begin
            stack_predictor[top_next_pridictor] <= ras_push_addr_r;
        end
    end

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            top_predictor <= {`RAS_NUM{1'b1}};
        end else if(fllush)begin
            top_predictor <= top_next_decoder;
        end else begin
            top_predictor <= top_next_pridictor;
        end
    end

    //-------------------------------------------------------------
    //                      stack_decode
    //-------------------------------------------------------------
    assign top_next_decoder =   {($clog2(`RAS_NUM)-1){ corr_link_flag_r &&  corr_return_flag_r}} &  top_decoder       |
                                {($clog2(`RAS_NUM)-1){ corr_link_flag_r && !corr_return_flag_r}} &  (top_decoder + 1) |
                                {($clog2(`RAS_NUM)-1){!corr_link_flag_r &&  corr_return_flag_r}} &  (top_decoder - 1) |
                                {($clog2(`RAS_NUM)-1){!corr_link_flag_r && !corr_return_flag_r}} &  top_decoder       ;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(i=0; i<`RAS_NUM; i=i+1)begin
                stack_decoder[i] <= 32'b0;
            end
        end else if(corr_link_flag_r) begin
            stack_decoder[top_next_decoder] <= corr_addr_8_r;
        end
    end

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            top_decoder <= {`RAS_NUM{1'b1}};
        end else begin
            top_decoder <= top_next_decoder;
        end
    end

    //-------------------------------------------------------------
    //                      output bus
    //-------------------------------------------------------------
    assign ras_branch_addr_o = (ras_push_r)? ras_push_addr_r:stack_predictor[top_predictor];


endmodule