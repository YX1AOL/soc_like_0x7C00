`include "../../Head_Files/cpu.vh"

module seg_wb(
    input clk,
    input rst,

    input           mem2_wb_valid_i,
    input [69:0]    mem2_wb_bus_primary_i,
    input [69:0]    mem2_wb_bus_secondary_i,
    
    output [75:0]   wb_bypass_o,

    output [31:0]   inst_addr_primary_o,
    output          reg_write_primary_o,
    output [4:0]    reg_waddr_primary_o,
    output [31:0]   reg_wdata_primary_o,

    output [31:0]   inst_addr_secondary_o,
    output          reg_write_secondary_o,
    output [4:0]    reg_waddr_secondary_o,
    output [31:0]   reg_wdata_secondary_o
    );

    //-------------------------------------------------------------
    //                     signal define
    //-------------------------------------------------------------
    //----- FIFO signal -----
    reg wb_valid;
    reg [31:0] inst_addr_primary;
    reg        reg_write_primary;
    reg [4:0]  reg_waddr_primary;
    reg [31:0] reg_wdata_primary;

    reg [31:0] inst_addr_secondary;
    reg        reg_write_secondary;
    reg [4:0]  reg_waddr_secondary;
    reg [31:0] reg_wdata_secondary;
    //-------------------------------------------------------------
    //                     mem2_wb FIFO
    //-------------------------------------------------------------
    always @(posedge clk) begin
        if((rst == `RstEnable)) begin
            wb_valid <= 1'b0;
        end else begin
            wb_valid <= mem2_wb_valid_i;
        end

        if( mem2_wb_valid_i) begin
            inst_addr_primary  <=  mem2_wb_bus_primary_i[31:0];
            reg_write_primary  <=  mem2_wb_bus_primary_i[32];
            reg_waddr_primary  <=  mem2_wb_bus_primary_i[37:33];
            reg_wdata_primary  <=   mem2_wb_bus_primary_i[69:38];

            inst_addr_secondary  <=  mem2_wb_bus_secondary_i[31:0];
            reg_write_secondary  <=  mem2_wb_bus_secondary_i[32];
            reg_waddr_secondary  <=  mem2_wb_bus_secondary_i[37:33];
            reg_wdata_secondary  <=  mem2_wb_bus_secondary_i[69:38];
        end
    end

    assign inst_addr_primary_o = {32{wb_valid}} & inst_addr_primary;
    assign reg_write_primary_o =     wb_valid   & reg_write_primary;
    assign reg_waddr_primary_o = {5 {wb_valid}} & reg_waddr_primary;
    assign reg_wdata_primary_o = {32{wb_valid}} & reg_wdata_primary;

    assign inst_addr_secondary_o = {32{wb_valid}} & inst_addr_secondary;
    assign reg_write_secondary_o =     wb_valid   & reg_write_secondary;
    assign reg_waddr_secondary_o = {5 {wb_valid}} & reg_waddr_secondary;
    assign reg_wdata_secondary_o = {32{wb_valid}} & reg_wdata_secondary;


    //-------------------------------------------------------------
    //                            output     
    //-------------------------------------------------------------
    //----- wb_to_id bypass bus -----
    assign wb_bypass_o = {76{wb_valid}} & {reg_wdata_secondary_o,reg_waddr_secondary_o,reg_write_secondary_o,reg_wdata_primary_o,reg_waddr_primary_o,reg_write_primary_o};

endmodule