`include "../../Head_Files/cpu.vh"

module predictor(
    input clk,
    input rst,

    //fllush the state mashine
    wire            exception_flag_i,
    wire            branch_flag_i,
    //pre_if to predictor bus
    input   [66:0]  preif_preditor_bus_i,
    //correct bus from id
    input   [103:0] corr_branch_bus_i,

    //output
    output  [32:0]  predictor_computepc_bus_o,
    output  [69:0]  predictor_if_bus_o
    
);
    //-------------------------------------------------------------
    //                        bus decode
    //-------------------------------------------------------------
    wire        fllush = exception_flag_i || branch_flag_i;

    wire        inst_data2_valid    =   preif_preditor_bus_i[0];
    wire [31:0] inst_addr1          =   preif_preditor_bus_i[32:1];
    wire [31:0] inst_addr2          =   preif_preditor_bus_i[32:1] + 32'd4;
    wire        preif_to_if_valid   =   preif_preditor_bus_i[33];  //this valid is different from pipeline control signal. It equal to <preif_to_if_valid && if_allowin>.
    wire        to_preif_valid      =   preif_preditor_bus_i[34];
    wire [31:0] to_preif_pc1        =   preif_preditor_bus_i[66:35];
    wire [31:0] to_preif_pc2        =   preif_preditor_bus_i[66:35] + 32'd4;

    wire        corr_valid              = corr_branch_bus_i[0];
    wire        corr_branch_flag        = corr_branch_bus_i[1];
    wire [31:0] corr_inst_addr          = corr_branch_bus_i[33:2];
    wire [31:0] corr_branch_addr        = corr_branch_bus_i[65:34];
    wire        corr_uncondition_flag   = corr_branch_bus_i[66];
    wire        corr_link_flag          = corr_branch_bus_i[67];
    wire        corr_return_flag        = corr_branch_bus_i[68];
    wire        corr_pht_branch_flag    = corr_branch_bus_i[69];
    wire        corr_bht_branch_flag    = corr_branch_bus_i[70];
    wire        corr_fllush_valid       = corr_branch_bus_i[71];
    wire [31:0] corr_fllush_addr        = corr_branch_bus_i[103:72];

    //-------------------------------------------------------------
    //                        search
    //-------------------------------------------------------------
    //----- PHT seach result -----
    wire        pht_branch_flag1;
    wire        pht_branch_flag2;
    
    //----- BTB search result -----
    wire        search_found1;
    wire        search_found2;
    wire [31:0] btb_branch_addr1;
    wire [31:0] btb_branch_addr2;
    wire        btb_uncondition_flag1;
    wire        btb_uncondition_flag2;
    wire        btb_link_flag1;
    wire        btb_link_flag2;
    wire        btb_return_flag1;
    wire        btb_return_flag2;

    //----- RAS search result -----
    wire        ras_pop;
    wire        ras_push;
    wire [31:0] ras_push_addr;
    wire [31:0] ras_branch_addr;

    PHT U_PHT(
        .clk    (clk),
        .rst    (rst),

        //search port 1
        .search_addr1_i (inst_addr1),
        .branch_flag1_o (pht_branch_flag1),

        //search port 2
        .search_addr2_i (inst_addr2),
        .branch_flag2_o (pht_branch_flag2),

        //correct port
        .corr_valid_i       (corr_valid && !corr_uncondition_flag),
        .corr_index_i       (corr_inst_addr),
        .corr_branch_flag_i (corr_branch_flag)
    );

    BTB U_BTB(
        .clk    (clk),
        .rst    (rst),

        //search port 1
        .search_addr1_i         (inst_addr1),
        .search_found1_o        (search_found1),
        .branch_addr1_o         (btb_branch_addr1),
        .uncondition_flag1_o    (btb_uncondition_flag1),
        .link_flag1_o           (btb_link_flag1),
        .return_flag1_o         (btb_return_flag1),

        //search port 2
        .search_addr2_i         (inst_addr2),
        .search_found2_o        (search_found2),
        .branch_addr2_o         (btb_branch_addr2),
        .uncondition_flag2_o    (btb_uncondition_flag2),
        .link_flag2_o           (btb_link_flag2),
        .return_flag2_o         (btb_return_flag2),

        //correct port
        .corr_valid_i               (corr_valid && corr_branch_flag),
        .corr_addr_i                (corr_inst_addr),
        .corr_uncondition_flag_i    (corr_uncondition_flag),
        .corr_link_flag_i           (corr_link_flag),
        .corr_return_flag_i         (corr_return_flag),
        .corr_branch_addr_i         (corr_branch_addr),
        .corr_fllush_valid_i        (corr_fllush_valid),
        .corr_fllush_addr_i         (corr_fllush_addr)
    );

    RAS U_RAS(
        .clk    (clk),
        .rst    (rst),
        .fllush (branch_flag_i),

        .ras_pop_i          (ras_pop),
        .ras_push_i         (ras_push),
        .ras_push_addr_i    (ras_push_addr),
        .ras_branch_addr_o  (ras_branch_addr),
    
        .corr_addr_i        (corr_inst_addr),
        .corr_link_flag_i   (corr_valid && corr_link_flag),
        .corr_return_flag_i (corr_valid && corr_return_flag)
    );

    //-------------------------------------------------------------
    //                      search result
    //-------------------------------------------------------------
    //only branch_flag1 is low, branch_flag2 can be high
    wire branch_flag1 =  search_found1 && (pht_branch_flag1 || btb_uncondition_flag1);
    wire branch_flag2 =  !branch_flag1 && inst_data2_valid && search_found2 && (pht_branch_flag2 || btb_uncondition_flag2);
    
    wire [31:0] branch_addr  =  {32{ branch_flag1 &&  btb_return_flag1}} & ras_branch_addr  |
                                {32{ branch_flag1 && !btb_return_flag1}} & btb_branch_addr1 |
                                {32{ branch_flag2 &&  btb_return_flag2}} & ras_branch_addr  |
                                {32{ branch_flag2 && !btb_return_flag2}} & btb_branch_addr2 ;
    
    //-------------------------------------------------------------
    //                      state mashine
    //-------------------------------------------------------------
    //----- state define -----
    parameter IDEL = 1'b0;
    parameter BUSY = 1'b1;
    //----- ram define -----
    reg state;
    reg [31:0]state_addr;

    //----- state machine state transition -----
    always @(posedge clk) begin
        if((rst == `RstEnable) || fllush) begin
            state <= IDEL;
        end else if(preif_to_if_valid) begin
            case(state)
                IDEL: state <= (branch_flag1 && !inst_data2_valid || branch_flag2)? BUSY:IDEL;
                BUSY: state <= IDEL;
            endcase
        end else begin end

        if(preif_to_if_valid) begin
            state_addr <= branch_addr;
        end else begin end
    end

    //-------------------------------------------------------------
    //                     update ras 
    //-------------------------------------------------------------
    assign ras_pop       = preif_to_if_valid && (search_found1 &&  btb_return_flag1 || inst_data2_valid && search_found2 && btb_return_flag2);
    //dont care the two link_flag is high, it must be wrong and RAS need to be fllush.
    assign ras_push      = preif_to_if_valid && (search_found1 &&  btb_link_flag1   || inst_data2_valid && search_found2 && btb_link_flag2);
    assign ras_push_addr = {32{search_found1 && btb_link_flag1                     }} & (inst_addr1 + 32'd8)  |
                           {32{search_found2 && btb_link_flag2 && inst_data2_valid }} & (inst_addr1 + 32'd12) ;
    //-------------------------------------------------------------
    //                     search prot needed
    //-------------------------------------------------------------
    //----- predictor to compute-pc bus-----
    wire [31:0] next_pc         =   (inst_data2_valid)? (inst_addr1 + 32'd8):(inst_addr1 + 32'd4);

    wire        predictor_data2_valid = !((state == IDEL) && (branch_flag1 && !inst_data2_valid || branch_flag2));
    wire [31:0] predictor_addr  =   (state == BUSY)?                           state_addr  :
                                    (branch_flag1 && inst_data2_valid)?        branch_addr :next_pc;

    //----- generate output bus -----
    assign predictor_computepc_bus_o = {predictor_addr,predictor_data2_valid};
    assign predictor_if_bus_o        = {70{state == IDEL}} & {1'b0,pht_branch_flag2,branch_addr,branch_flag2,1'b0,pht_branch_flag1,branch_addr,branch_flag1};

endmodule