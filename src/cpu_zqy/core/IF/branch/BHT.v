`include "../../../Head_Files/cpu.vh"

module BHT(
    input clk,
    input rst,
    input fllush,

    //seach query
    input        to_preif_valid_i,
    input [31:0] to_preif_pc_i,

    //search result
    output       branch_flag1_o,
    output       branch_flag2_o,

    //search result of predictor
    input        predictor_valid_i,
    input        predictor_flag_i,
    input [31:0] predictor_instaddr_i,

    
    //correct port of decoder
    input        corr_valid_i,
    input [31:0] corr_addr_i,
    input        corr_branch_flag_i
);
    //-------------------------------------------------------------
    //                 hash convet of search addr         
    //-------------------------------------------------------------
    wire [31:0] search_addr1 = to_preif_pc_i;
    wire [31:0] search_addr2 = to_preif_pc_i + 32'd4;

    wire [`HASH_BITS-1:0] search_bht_index1;
    wire [`HASH_BITS-1:0] search_bht_index2;
    wire [`HASH_BITS-1:0] predictor_bht_index;
    wire [`HASH_BITS-1:0] corr_bht_index;

    hash_bht U_hash1(
        .data_i (search_addr1),
        .data_o (search_bht_index1)
    );

    hash_bht U_hash2(
        .data_i (search_addr2),
        .data_o (search_bht_index2)
    );

    hash_bht U_hash3(
        .data_i (predictor_instaddr_i),
        .data_o (predictor_bht_index)
    );

    hash_bht U_hash4(
        .data_i (corr_addr_i),
        .data_o (corr_bht_index)
    );
    //-------------------------------------------------------------
    //              branch history table of predictor        
    //-------------------------------------------------------------
    reg [`BHR_BITS-1:0] bht_decoder[`BHT_NUM-1:0];
    integer i;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(i=0; i<`BHT_NUM; i=i+1)begin
                bht_decoder[i] <= 0;
            end
        end else if(corr_valid_i) begin 
            bht_decoder[corr_bht_index] <= {bht_decoder[corr_bht_index][`BHR_BITS-2:0],corr_branch_flag_i};
        end
    end

    //-------------------------------------------------------------
    //              branch history table of predictor        
    //-------------------------------------------------------------
    reg [`BHR_BITS-1:0] bht_predictor[`BHT_NUM-1:0];
    integer j;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(j=0; j<`BHT_NUM; j=j+1)begin
                bht_predictor[j] <= 0;
            end
        end else if(fllush) begin
            for(j=0; j<`BHT_NUM; j=j+1)begin
                bht_predictor[j] <= (corr_valid_i && (j == corr_bht_index))? {bht_decoder[corr_bht_index][`BHR_BITS-2:0],corr_branch_flag_i}:bht_decoder[j];
            end
        end else if(predictor_valid_i) begin
            bht_predictor[predictor_bht_index] <= {bht_predictor[predictor_bht_index][`BHR_BITS-2:0],predictor_flag_i};
        end
    end

    //-------------------------------------------------------------
    //          regsiter to truncate long paths        
    //-------------------------------------------------------------
        /*
    wire [`PHT_BITS-1:0] search_pht_index1 = {bht_predictor[search_bht_index1],search_addr1[`PC_BITS-1:2]};
    wire [`PHT_BITS-1:0] search_pht_index2 = {bht_predictor[search_bht_index2],search_addr2[`PC_BITS-1:2]};

    wire [`PHT_BITS-1:0] corr_pht_index2   = {bht_decoder[corr_bht_index],corr_addr_i[`PC_BITS-1:2]};
    */
    wire [`BHT_pht_BITS-1:0] search_pht_index1 = {bht_predictor[search_bht_index1],5'b0} ^ search_addr1[`BHT_pht_BITS-1:2];
    wire [`BHT_pht_BITS-1:0] search_pht_index2 = {bht_predictor[search_bht_index2],5'b0} ^ search_addr2[`BHT_pht_BITS-1:2];
    wire [`BHT_pht_BITS-1:0] corr_pht_index2   = {bht_decoder[corr_bht_index],5'b0}^ corr_addr_i[`BHT_pht_BITS-1:2];

    reg last_fllush_r;
    reg [`BHT_pht_BITS-1:0] search_pht_index1_r;
    reg [`BHT_pht_BITS-1:0] search_pht_index2_r;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            search_pht_index1_r <= 0;
            search_pht_index2_r <= 0;
            last_fllush_r       <= 0;
        end else if(to_preif_valid_i) begin
            search_pht_index1_r <= search_pht_index1;
            search_pht_index2_r <= search_pht_index2;
            last_fllush_r       <= fllush;
        end
    end

    reg                     corr_valid_r;
    reg [`BHT_pht_BITS-1:0] corr_pht_index2_r;
    reg                     corr_branch_flag_r;
    always @(posedge clk) begin
        if(rst == `RstEnable)begin
            corr_valid_r    <= 0;
        end else begin
            corr_valid_r    <= corr_valid_i;
        end

        if(rst == `RstEnable)begin
            corr_pht_index2_r   <= 0;
            corr_branch_flag_r  <= 0;
        end else if(corr_valid_i)begin
            corr_pht_index2_r   <= corr_pht_index2;
            corr_branch_flag_r  <= corr_branch_flag_i;
        end
    end

    //-------------------------------------------------------------
    //          genrate index of PHT(pattren history table)        
    //-------------------------------------------------------------
    wire branch_flag1;
    wire branch_flag2;

    assign branch_flag1_o = branch_flag1 && !last_fllush_r;
    assign branch_flag2_o = branch_flag2 && !last_fllush_r;

    PHT_CORE #(.PHT_BITS(`BHT_pht_BITS)) 
    U_BHT_pht (
        .clk    (clk),
        .rst    (rst),

        //search port 1
        .search_index1_i    (search_pht_index1_r),
        .branch_flag1_o     (branch_flag1),

        //search port 2
        .search_index2_i    (search_pht_index2_r),
        .branch_flag2_o     (branch_flag2),

        //correct port
        .corr_valid_i       (corr_valid_r),
        .corr_index_i       (corr_pht_index2_r),
        .corr_branch_flag_i (corr_branch_flag_r)

    );


endmodule