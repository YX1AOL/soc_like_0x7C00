`include "../../../../Head_Files/cpu.vh"

module PHT_CORE#(
    parameter PHT_BITS = 10,
    parameter PHT_NUM  = ( 1 << PHT_BITS)
)
(
    input clk,
    input rst,

    //search port 1
    input [PHT_BITS-1:0]    search_index1_i,
    output                  branch_flag1_o,

    //search port 2
    input [PHT_BITS-1:0]    search_index2_i,
    output                  branch_flag2_o,
    
    //correct port
    input                   corr_valid_i,
    input [PHT_BITS-1:0]    corr_index_i,
    input                   corr_branch_flag_i
);  
    //-------------------------------------------------------------
    //               Signal Define and Bus Decode
    //-------------------------------------------------------------
    //----- state machine paramter -----
    localparam strongly_not_taken    = 2'b00;
    localparam weakly_not_taken      = 2'b01;
    localparam weakly_taken          = 2'b11;
    localparam strongly_taken        = 2'b10;

    //----- reg -----
    reg [1:0]   counter[PHT_NUM-1:0];

    reg                corr_valid_r;
    reg [PHT_BITS-1:0] corr_index_r;
    reg                corr_branch_flag_r;

    //-------------------------------------------------------------
    //                        search port
    //-------------------------------------------------------------
    assign branch_flag1_o = counter[search_index1_i][1] ;
    assign branch_flag2_o = counter[search_index2_i][1] ;

    //-------------------------------------------------------------
    //                        update
    //-------------------------------------------------------------
    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            corr_valid_r        <= 0;
            corr_index_r        <= 0;
            corr_branch_flag_r  <= 0;
        end else begin
            corr_valid_r        <= corr_valid_i;
            corr_index_r        <= corr_index_i;
            corr_branch_flag_r  <= corr_branch_flag_i;
        end
    end

    integer i;
    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for( i = 0;i < PHT_NUM; i=i+1)begin
                counter[i] <= weakly_not_taken;
            end
        end else if (corr_valid_r) begin
            case(counter[corr_index_r]) 
                strongly_taken:     counter[corr_index_r] <= (corr_branch_flag_r)? strongly_taken:  weakly_taken;
                weakly_taken:       counter[corr_index_r] <= (corr_branch_flag_r)? strongly_taken:  weakly_not_taken;
                weakly_not_taken:   counter[corr_index_r] <= (corr_branch_flag_r)? weakly_taken:    strongly_not_taken;
                strongly_not_taken: counter[corr_index_r] <= (corr_branch_flag_r)? weakly_not_taken:strongly_not_taken;
            endcase
        end
    end

endmodule