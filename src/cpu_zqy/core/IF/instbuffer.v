`include "../../Head_Files/cpu.vh"

module instbuffer#(
    parameter FIFO_WIDTH = 131,
    parameter FIFO_DEPTH = 8,
    parameter ADDR_MSB   = $clog2(FIFO_DEPTH) - 1,
    parameter PTR_MSB    = ADDR_MSB + 1
)(
    input clk,
    input rst,

    input [1:0]     issue_mode_i,

    //fllush signal
    input           exception_flag_i,
    input           branch_flag_i,
    
    //instbuffer interactive with if
    input                      if_to_instbuffer_bus1_valid_i,
    input                      if_to_instbuffer_bus2_valid_i,
    input  [FIFO_WIDTH - 1:0]  if_to_instbuffer_bus1_i,
    input  [FIFO_WIDTH - 1:0]  if_to_instbuffer_bus2_i,
    output                     instbufer_allowin_o,
    
    //instbuffer interactive with id
    output [FIFO_WIDTH - 1:0]  inst1_bus_o,
    output [FIFO_WIDTH - 1:0]  inst2_bus_o,
    output [1:0]               instbuffer_count_o
);
    //-------------------------------------------------------------
    //                      signal define
    //-------------------------------------------------------------
    reg  [FIFO_WIDTH-1 :0] quene_data [(FIFO_DEPTH-1):0];
    reg  [PTR_MSB :0] readPtr, writePtr;
    wire [ADDR_MSB:0] readAddr  = readPtr[ADDR_MSB:0];
    wire [ADDR_MSB:0] writeAddr = writePtr[ADDR_MSB:0];

    wire [PTR_MSB :0] readPtr_1 = readPtr + 1;
    wire [PTR_MSB :0] readPtr_2 = readPtr + 2;

    wire [PTR_MSB :0] writePtr_1 = writePtr + 1;
    wire [PTR_MSB :0] writePtr_2 = writePtr + 2;

    wire [ADDR_MSB:0] writeAddr_1 = writeAddr + 1;
    wire [ADDR_MSB:0] readAddr_1  = readAddr + 1;

    wire fllush = branch_flag_i || exception_flag_i;
    //-------------------------------------------------------------
    //                      FIFO degsin
    //-------------------------------------------------------------
    //control signal
    wire fifo_full  = (writePtr[PTR_MSB] ^ readPtr[PTR_MSB])   && (readAddr == writeAddr)   || 
                      (writePtr_1[PTR_MSB] ^ readPtr[PTR_MSB]) && (readAddr == writeAddr_1) ;

    // write pointer
    always @(posedge clk) begin
        if(rst == `RstEnable || fllush)begin
            writePtr <= 0;
        end else if(if_to_instbuffer_bus1_valid_i && !fifo_full) begin
            writePtr <= (if_to_instbuffer_bus2_valid_i)? writePtr_2:writePtr_1;
        end else begin end
    end

    // read pointer
    always @(posedge clk) begin
        if(rst == `RstEnable || fllush)begin
            readPtr <= 0;
        end else begin
            readPtr <= (issue_mode_i == `SingleIssue)? readPtr_1:
                       (issue_mode_i == `DoubleIssue)? readPtr_2: readPtr;
        end
    end

    // memory write
    integer i;
    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            for(i = 0;i < FIFO_DEPTH;i=i+1)begin
                quene_data[i] <= 0;
            end
        end else if(if_to_instbuffer_bus1_valid_i && !fifo_full) begin
            quene_data[writeAddr]   <= if_to_instbuffer_bus1_i;
            quene_data[writeAddr_1] <= (if_to_instbuffer_bus2_valid_i)? if_to_instbuffer_bus2_i:quene_data[writeAddr_1];
        end else begin end
    end

    //-------------------------------------------------------------
    //                      output signal
    //-------------------------------------------------------------
    assign instbufer_allowin_o = !fifo_full;
    assign instbuffer_count_o  = (writePtr == readPtr  )? `HaveNoInst:
                                 (writePtr == readPtr_1)? `HaveOneInst:`HaveTwoInst;
                                 
    assign inst1_bus_o         =  quene_data[readAddr];
    assign inst2_bus_o         =  quene_data[readAddr_1];
    

endmodule