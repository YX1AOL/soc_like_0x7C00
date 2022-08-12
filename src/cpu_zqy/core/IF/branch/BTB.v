`include "../../../Head_Files/cpu.vh"

module BTB(
    input clk,
    input rst,

    //search port 1
    input [31:0]    search_addr1_i,
    output          search_found1_o,
    output [31:0]   branch_addr1_o,
    output          uncondition_flag1_o,    //if the branch is uncondition flag
    output          link_flag1_o,           //if the branch is link flag
    output          return_flag1_o,         //if the branch is return flag


    //search port 2
    input [31:0]    search_addr2_i,
    output          search_found2_o,
    output [31:0]   branch_addr2_o,
    output          uncondition_flag2_o,    //if the branch is uncondition flag
    output          link_flag2_o,           //if the branch is link flag
    output          return_flag2_o,         //if the branch is return flag

    //correct port
    input           corr_valid_i,
    input [31:0]    corr_addr_i,
    input           corr_uncondition_flag_i,
    input           corr_link_flag_i,
    input           corr_return_flag_i,
    input [31:0]    corr_branch_addr_i,
    input           corr_fllush_valid_i,
    input [31:0]    corr_fllush_addr_i
);

    //-------------------------------------------------------------
    //             Signal Define and Bus Decode
    //-------------------------------------------------------------
    //----- reg -----
    reg [`BTB_NUM-1  :0]    valid;
    reg [`BTB_NUM-1  :0]    uncondition_flag;
    reg [`BTB_NUM-1  :0]    link_flag;
    reg [`BTB_NUM-1  :0]    return_flag;
    reg [`BTB_BITSt-1:0]    tag         [`BTB_NUM-1:0];
    reg [31:0]              branch_addr [`BTB_NUM-1:0];

    reg                    corr_valid_r;
    reg [`BTB_BITSi-1:0]   corr_index_r;
    reg [`BTB_BITSt-1:0]   corr_tag_r;
    reg                    corr_uncondition_flag_r;
    reg                    corr_link_flag_r;
    reg                    corr_return_flag_r;
    reg [31:0]             corr_branch_addr_r;
    reg                    corr_fllush_valid_r;
    reg [`BTB_BITSi-1:0]   corr_fllush_index_r;

    //----- selection of addr ------
    wire [`BTB_BITSi-1:0]   search_index1   = search_addr1_i[1+`BTB_BITSi:2];
    wire [`BTB_BITSi-1:0]   search_index2   = search_addr2_i[1+`BTB_BITSi:2];
    wire [`BTB_BITSt-1:0]   search_tag1     = search_addr1_i[`BTB_BITSi+`BTB_BITSt+1:2+`BTB_BITSi];
    wire [`BTB_BITSt-1:0]   search_tag2     = search_addr2_i[`BTB_BITSi+`BTB_BITSt+1:2+`BTB_BITSi];

    wire [`BTB_BITSi-1:0]   corr_index  = corr_addr_i[1+`BTB_BITSi:2];
    wire [`BTB_BITSt-1:0]   corr_tag    = corr_addr_i[`BTB_BITSi+`BTB_BITSt+1:2+`BTB_BITSi];

    wire [`BTB_BITSi-1:0]   corr_fllush_index  = corr_fllush_addr_i[1+`BTB_BITSi:2];
    //-------------------------------------------------------------
    //                      search prot
    //------------------------------------------------------------
    assign  search_found1_o      = valid[search_index1] && (tag[search_index1] == search_tag1);
    assign  search_found2_o      = valid[search_index2] && (tag[search_index2] == search_tag2);
    
    assign  branch_addr1_o       = branch_addr[search_index1];
    assign  uncondition_flag1_o  = uncondition_flag[search_index1];
    assign  link_flag1_o         = link_flag[search_index1];
    assign  return_flag1_o       = return_flag[search_index1];

    assign  branch_addr2_o       = branch_addr[search_index2];
    assign  uncondition_flag2_o  = uncondition_flag[search_index2];
    assign  link_flag2_o         = link_flag[search_index2];
    assign  return_flag2_o       = return_flag[search_index2];

    //-------------------------------------------------------------
    //                            update
    //-------------------------------------------------------------
    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            corr_valid_r              <= 0;
            corr_index_r              <= 0;
            corr_tag_r                <= 0;
            corr_uncondition_flag_r   <= 0;
            corr_link_flag_r          <= 0;
            corr_return_flag_r        <= 0;
            corr_branch_addr_r        <= 0;
            corr_fllush_valid_r       <= 0;
            corr_fllush_index_r       <= 0;
        end else begin
            corr_valid_r              <= corr_valid_i;
            corr_index_r              <= corr_index;
            corr_tag_r                <= corr_tag;
            corr_uncondition_flag_r   <= corr_uncondition_flag_i;
            corr_link_flag_r          <= corr_link_flag_i;
            corr_return_flag_r        <= corr_return_flag_i;
            corr_branch_addr_r        <= corr_branch_addr_i;
            corr_fllush_valid_r       <= corr_fllush_valid_i;
            corr_fllush_index_r       <= corr_fllush_index;
        end
    end


    //corr_fllush_addr != corr_addr
    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            valid <= 0;
        end
        
        if(rst == `RstDisable && corr_valid_r) begin
            valid[corr_index_r]               <= corr_valid_r;
            branch_addr[corr_index_r]         <= corr_branch_addr_r;
            tag[corr_index_r]                 <= corr_tag_r;
            uncondition_flag[corr_index_r]    <= corr_uncondition_flag_r;
            link_flag[corr_index_r]           <= corr_link_flag_r;
            return_flag[corr_index_r]         <= corr_return_flag_r;
        end

        if(rst == `RstDisable && corr_fllush_valid_r) begin
            valid[corr_fllush_index_r]        <= 1'b0;
        end
    end
    
endmodule