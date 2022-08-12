module PHT(
    input clk,
    input rst,

    //search port 1
    input [31:0]    search_addr1_i,
    output          branch_flag1_o,

    //search port 2
    input [31:0]    search_addr2_i,
    output          branch_flag2_o,
    
    //correct port
    input           corr_valid_i,
    input [31:0]    corr_index_i,
    input           corr_branch_flag_i
);  

    wire[`PHT_BITS-1:0] search_index1 = search_addr1_i[`PHT_BITS+1:2];
    wire[`PHT_BITS-1:0] search_index2 = search_addr2_i[`PHT_BITS+1:2];
    wire[`PHT_BITS-1:0] corr_index    = corr_index_i[`PHT_BITS+1:2];

    PHT_CORE #(.PHT_BITS(`PHT_BITS))
    U_PHT_pht (
        .clk    (clk),
        .rst    (rst),

        //search port 1
        .search_index1_i    (search_index1),
        .branch_flag1_o     (branch_flag1_o),

        //search port 2
        .search_index2_i    (search_index2),
        .branch_flag2_o     (branch_flag2_o),

        //correct port
        .corr_valid_i       (corr_valid_i),
        .corr_index_i       (corr_index),
        .corr_branch_flag_i (corr_branch_flag_i)

    );

endmodule