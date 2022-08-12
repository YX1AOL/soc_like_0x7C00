`include "../../Head_Files/cpu.vh"

module TLB(
    input clk,
    input rst,
    
    //address transformation
    input [31:0]inst_vaddr_i,
    input [31:0]data_vaddr_i,
    output [36:0]tlb_if_bus_o,
    output [37:0]tlb_mem1_bus_o,

    //cp0 register read data
    input          tlb_write_index_i,
    input          tlb_write_random_i,
    input  [191:0] cp0_tlb_bus_i,
    output [159:0] tlb_cp0_bus_o

    );
    //-------------------------------------------------------------
    //                        bus decode
    //-------------------------------------------------------------
    wire [31:0] cp0_index_i     = cp0_tlb_bus_i[31:0];
    wire [31:0] cp0_pagemask_i  = cp0_tlb_bus_i[63:32];
    wire [31:0] cp0_entryhi_i   = cp0_tlb_bus_i[95:64];
    wire [31:0] cp0_entrylo0_i  = cp0_tlb_bus_i[127:96];
    wire [31:0] cp0_entrylo1_i  = cp0_tlb_bus_i[159:128];
    wire [31:0] cp0_random_i    = cp0_tlb_bus_i[191:160];

    wire tlb_write = tlb_write_index_i || tlb_write_random_i;
    wire [$clog2(`TLB_NUM)-1:0] write_index = ({$clog2(`TLB_NUM){tlb_write_index_i}}  & cp0_index_i[$clog2(`TLB_NUM)-1:0] ) | 
                                              ({$clog2(`TLB_NUM){tlb_write_random_i}} & cp0_random_i[$clog2(`TLB_NUM)-1:0] );
    //-------------------------------------------------------------
    //                        tlb RAM
    //-------------------------------------------------------------
    //----- the comparison section -----
`ifdef GKD
    reg [11:0]  tlb_mask    [`TLB_NUM-1:0];
`else
    reg [15:0]  tlb_mask    [`TLB_NUM-1:0];
`endif

    reg [18:0]  tlb_vpn2    [`TLB_NUM-1:0];
    reg         tlb_g       [`TLB_NUM-1:0];
    reg [7:0]   tlb_asid    [`TLB_NUM-1:0];
    //----- physical translation section -----
    reg [19:0]  tlb_pfn0    [`TLB_NUM-1:0];
    reg [19:0]  tlb_pfn1    [`TLB_NUM-1:0];
    reg [2:0]   tlb_c0      [`TLB_NUM-1:0];
    reg [2:0]   tlb_c1      [`TLB_NUM-1:0];
    reg         tlb_d0      [`TLB_NUM-1:0];
    reg         tlb_d1      [`TLB_NUM-1:0];
    reg         tlb_v0      [`TLB_NUM-1:0];
    reg         tlb_v1      [`TLB_NUM-1:0];
    
    //-------------------------------------------------------------
    //       compute the EvenOddBit for every tlb entry
    //-------------------------------------------------------------
    genvar i;
`ifdef GKD
`else
    wire [4:0]  EvenOddBit [`TLB_NUM-1:0];

    generate
        for (i=0; i<`TLB_NUM; i=i+1) begin
            assign  EvenOddBit[i] = (                           tlb_mask[i][15:14] == 2'b11)?  5'd28:
                                    (tlb_mask[i][15:14] == 0 && tlb_mask[i][13:12] == 2'b11)?  5'd26:
                                    (tlb_mask[i][15:12] == 0 && tlb_mask[i][11:10] == 2'b11)?  5'd24:
                                    (tlb_mask[i][15:10] == 0 && tlb_mask[i][9:8]   == 2'b11)?  5'd22:
                                    (tlb_mask[i][15:8]  == 0 && tlb_mask[i][7:6]   == 2'b11)?  5'd20:
                                    (tlb_mask[i][15:6]  == 0 && tlb_mask[i][5:4]   == 2'b11)?  5'd18:
                                    (tlb_mask[i][15:4]  == 0 && tlb_mask[i][3:2]   == 2'b11)?  5'd16:
                                    (tlb_mask[i][15:2]  == 0 && tlb_mask[i][1:0]   == 2'b11)?  5'd14:
                                    (tlb_mask[i]        == 0                               )?  5'd12:5'd0;
        end
    endgenerate
`endif
    //-------------------------------------------------------------
    //                        inst addr translation
    //-------------------------------------------------------------
    wire [`TLB_NUM-1:0] inst_match;
    wire [`TLB_NUM-1:0] inst_sel;
    
    wire [19:0] inst_pfn             [`TLB_NUM-1:0];
    wire [31:0] inst_lookup_paddr    [`TLB_NUM:0];
    wire [2:0]  inst_lookup_c        [`TLB_NUM:0];
    wire        inst_lookup_v        [`TLB_NUM:0];
    
    assign inst_lookup_paddr[0]  = 32'd0;
    assign inst_lookup_c[0]      = 3'd0;
    assign inst_lookup_v[0]      = 1'd0; 

    generate
        for (i=0; i<`TLB_NUM; i=i+1) begin
            // all lookup results are OR'd together assuming match is at-most-one-hot, (EvenOddBit[i]-5'd12) means bits of inst_pfn that should be replaced with offset
            assign inst_match[i] = ((inst_vaddr_i[31:13] & ~tlb_mask[i]) == (tlb_vpn2[i] & ~tlb_mask[i])) && (tlb_g[i] || tlb_asid[i] == cp0_entryhi_i[7:0]);
            assign inst_pfn[i]   =  inst_sel[i]? tlb_pfn1[i] : tlb_pfn0[i];
            assign inst_lookup_c[i+1]        = inst_lookup_c[i]       | { 3{inst_match[i]}} & (inst_sel[i] ? tlb_c1[i]   : tlb_c0[i]);
            assign inst_lookup_v[i+1]        = inst_lookup_v[i]       | { 1{inst_match[i]}} & (inst_sel[i] ? tlb_v1[i]   : tlb_v0[i]);

`ifdef GKD  
            assign inst_sel[i]   = (inst_vaddr_i[24:12] & {tlb_mask[i], 1'b1}) != (inst_vaddr_i[24:12] & {1'b0, tlb_mask[i]});
            assign inst_lookup_paddr[i+1]    = inst_lookup_paddr[i]   | {32{inst_match[i]}} & (((inst_pfn[i] & ~tlb_mask[i]) << 12) | (inst_vaddr_i & {tlb_mask[i], 12'hfff}));
`else
            assign inst_sel[i]   = inst_vaddr_i[12];
            assign inst_lookup_paddr[i+1]    = inst_lookup_paddr[i]   | {32{inst_match[i]}} & ((inst_pfn[i] << 12) | (inst_vaddr_i & {20'b0, 12'hfff}));
            //assign inst_sel[i]   = inst_vaddr_i[EvenOddBit[i]];
            //assign inst_lookup_paddr[i+1]    = inst_lookup_paddr[i]   | {32{inst_match[i]}} & {((inst_pfn[i] & (20'hfffff << (EvenOddBit[i]-5'd12))) << 12) ,(inst_vaddr_i & (32'hffffffff >> (5'd0-EvenOddBit[i])))};
`endif

        end
    endgenerate

    wire [31:0] inst_paddr  = inst_lookup_paddr[`TLB_NUM];
    wire  [2:0] inst_cache  = inst_lookup_c[`TLB_NUM];
    wire        inst_found  = |inst_match;
    wire        inst_valid  = inst_lookup_v[`TLB_NUM];

    assign tlb_if_bus_o = {inst_paddr,inst_cache,inst_valid,inst_found};

    //-------------------------------------------------------------
    //                        data addr translation
    //-------------------------------------------------------------
    wire [`TLB_NUM-1:0] data_match;
    wire [`TLB_NUM-1:0] data_sel;
    wire [19:0] data_pfn        [`TLB_NUM-1:0];
    wire [31:0] data_lookup_paddr    [`TLB_NUM:0];
    wire [2:0]  data_lookup_c        [`TLB_NUM:0];
    wire        data_lookup_d        [`TLB_NUM:0];
    wire        data_lookup_v        [`TLB_NUM:0];

    assign data_lookup_paddr[0]  = 32'd0;
    assign data_lookup_c[0]      = 3'd0;
    assign data_lookup_d[0]      = 1'd0; 
    assign data_lookup_v[0]      = 1'd0; 
    
    generate
        for (i=0; i<`TLB_NUM; i=i+1) begin
            //all lookup results are OR'd together assuming match is at-most-one-hot
            assign data_match[i] = ((data_vaddr_i[31:13] & ~tlb_mask[i]) == (tlb_vpn2[i] & ~tlb_mask[i])) && (tlb_g[i] || tlb_asid[i] == cp0_entryhi_i[7:0]);
            assign data_pfn[i]   = data_sel[i] ? tlb_pfn1[i] : tlb_pfn0[i];
            assign data_lookup_c[i+1]        = data_lookup_c[i]       | { 3{data_match[i]}} & (data_sel[i] ? tlb_c1[i]   : tlb_c0[i]);
            assign data_lookup_d[i+1]        = data_lookup_d[i]       | { 1{data_match[i]}} & (data_sel[i] ? tlb_d1[i]   : tlb_d0[i]);
            assign data_lookup_v[i+1]        = data_lookup_v[i]       | { 1{data_match[i]}} & (data_sel[i] ? tlb_v1[i]   : tlb_v0[i]);

`ifdef GKD  
            assign data_sel[i]   = (data_vaddr_i[24:12] & {tlb_mask[i], 1'b1}) != (data_vaddr_i[24:12] & {1'b0, tlb_mask[i]});
            assign data_lookup_paddr[i+1]    = data_lookup_paddr[i]   | {32{data_match[i]}} & (((data_pfn[i] & ~tlb_mask[i]) << 12) | (data_vaddr_i & {tlb_mask[i], 12'hfff}));
`else
            assign data_sel[i]   = data_vaddr_i[12];
            assign data_lookup_paddr[i+1]    = data_lookup_paddr[i]   | {32{data_match[i]}} & ((data_pfn[i] << 12) | (data_vaddr_i & {20'b0, 12'hfff}));
            //assign data_sel[i]   = data_vaddr_i[EvenOddBit[i]];
            //assign data_lookup_paddr[i+1]    = data_lookup_paddr[i]   | {32{data_match[i]}} & {((data_pfn[i] & (20'hfffff << (EvenOddBit[i]-5'd12))) << 12) | (data_vaddr_i & (32'hffffffff >> (5'd0-EvenOddBit[i])))};
`endif
            
        end
    endgenerate

    wire [31:0] data_paddr    = data_lookup_paddr[`TLB_NUM];
    wire [2:0]  data_cache    = data_lookup_c[`TLB_NUM];
    wire        data_found    = |data_match;
    wire        data_valid    = data_lookup_v[`TLB_NUM];
    wire        data_dirty    = data_lookup_d[`TLB_NUM];
    
    assign tlb_mem1_bus_o = {data_paddr,data_cache,data_dirty,data_valid,data_found};


    //-------------------------------------------------------------
    //                        wirte
    //-------------------------------------------------------------
    integer j;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(j=0; j<`TLB_NUM; j=j+1)begin
                tlb_mask[j]    <= 0;
                tlb_vpn2[j]    <= 0;
                tlb_g[j]       <= 0;
                tlb_asid[j]    <= 0;
                tlb_pfn0[j]    <= 0;
                tlb_c0[j]      <= 0;
                tlb_d0[j]      <= 0;
                tlb_v0[j]      <= 0;
                tlb_pfn1[j]    <= 0;
                tlb_c1[j]      <= 0;
                tlb_d1[j]      <= 0;
                tlb_v1[j]      <= 0;
            end
        end else if(tlb_write)begin
            //-----comparison section-----
            tlb_mask[write_index]   <= cp0_pagemask_i[24:13];
            tlb_vpn2[write_index]   <= cp0_entryhi_i[31:13] & ~cp0_pagemask_i[24:13];
            tlb_g[write_index]      <= cp0_entrylo0_i[0] & cp0_entrylo1_i[0];
            tlb_asid[write_index]   <= cp0_entryhi_i[7:0];
            //-----physical translation section-----
            tlb_pfn0[write_index]   <= cp0_entrylo0_i[25:6] & ~cp0_pagemask_i[24:13];
            tlb_c0[write_index]     <= cp0_entrylo0_i[5:3];
            tlb_d0[write_index]     <= cp0_entrylo0_i[2];
            tlb_v0[write_index]     <= cp0_entrylo0_i[1];
            tlb_pfn1[write_index]   <= cp0_entrylo1_i[25:6] & ~cp0_pagemask_i[24:13];
            tlb_c1[write_index]     <= cp0_entrylo1_i[5:3];
            tlb_d1[write_index]     <= cp0_entrylo1_i[2];
            tlb_v1[write_index]     <= cp0_entrylo1_i[1];
        end
    end

    //-------------------------------------------------------------
    //                        probe
    //-------------------------------------------------------------

    wire [`TLB_NUM-1:0] probe_match;
    wire [$clog2(`TLB_NUM)-1:0] probe_idx [`TLB_NUM:0];
    
    assign probe_idx[0] = 0;
    generate
        for (i=0; i<`TLB_NUM; i=i+1) begin
            assign probe_match[i] = ((cp0_entryhi_i[31:13] & ~tlb_mask[i]) == (tlb_vpn2[i] & ~tlb_mask[i])) && (tlb_g[i] || tlb_asid[i] == cp0_entryhi_i[7:0]);
            assign probe_idx[i+1] = probe_idx[i] | (probe_match[i] ? i : 0);
        end
    endgenerate
    
    wire [31:0] probe_index = ((!probe_match) << 31) | probe_idx[`TLB_NUM];
    //-------------------------------------------------------------
    //                        read
    //-------------------------------------------------------------
    wire [31:0] read_entryhi = {
        tlb_vpn2[cp0_index_i],
        5'd0,
        tlb_asid[cp0_index_i]
    };
    
    wire [31:0] read_entrylo0 = {
        6'd0,
        tlb_pfn0[cp0_index_i],
        tlb_c0[cp0_index_i],
        tlb_d0[cp0_index_i],
        tlb_v0[cp0_index_i],
        tlb_g[cp0_index_i]
    };
    
    wire [31:0] read_entrylo1 = {
        6'd0,
        tlb_pfn1[cp0_index_i],
        tlb_c1[cp0_index_i],
        tlb_d1[cp0_index_i],
        tlb_v1[cp0_index_i],
        tlb_g[cp0_index_i]
    };
    
    wire [31:0] read_pagemask = {7'b0,tlb_mask[cp0_index_i],13'b0};

    assign tlb_cp0_bus_o = {read_entrylo1,read_entrylo0,read_entryhi,read_pagemask,probe_index};

endmodule