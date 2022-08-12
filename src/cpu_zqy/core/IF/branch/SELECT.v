`include "../../../Head_Files/cpu.vh"

module SELECT(
    input clk,
    input rst,

    //search port 1
    input [31:0]    search_addr1_i,
    output          select_flag1_o,//high choose BHR

    //search port 2
    input [31:0]    search_addr2_i,
    output          select_flag2_o,//high choose BHR

    //correct port
    input           corr_valid_i,
    input [31:0]    corr_addr_i,
    input           corr_pht_branch_flag_i,
    input           corr_bht_branch_flag_i,
    input           corr_branch_flag_i
);

    wire[`SELECT_BITS-1:0] search_index1 = search_addr1_i[`SELECT_BITS+1:2];
    wire[`SELECT_BITS-1:0] search_index2 = search_addr2_i[`SELECT_BITS+1:2];
    wire[`SELECT_BITS-1:0] corr_index    = corr_addr_i[`SELECT_BITS+1:2];

    wire pht_succeed = (corr_pht_branch_flag_i == corr_branch_flag_i);
    wire bht_succeed = (corr_bht_branch_flag_i == corr_branch_flag_i);
   
    PHT_CORE #(.PHT_BITS(`SELECT_BITS))
    U_SELECT_pht (
        .clk    (clk),
        .rst    (rst),

        //search port 1
        .search_index1_i    (search_index1),
        .branch_flag1_o     (select_flag1_o),

        //search port 2
        .search_index2_i    (search_index2),
        .branch_flag2_o     (select_flag2_o),

        //correct port
        .corr_valid_i       (corr_valid_i && (pht_succeed ^ bht_succeed)),
        .corr_index_i       (corr_index),
        .corr_branch_flag_i (pht_succeed)
    );


endmodule