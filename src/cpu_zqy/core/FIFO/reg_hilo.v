`include "../../Head_Files/cpu.vh"

module reg_hilo(
    input clk,
    input rst,
    
    input [64:0]ex_hilo_bus_primary_i,
    input [64:0]ex_hilo_bus_secondary_i,

    output reg [63:0]hilo_o
    );

    wire        hilo_write_primary   = ex_hilo_bus_primary_i[0];
    wire [63:0] hilo_wdata_primary   = ex_hilo_bus_primary_i[64:1];
    wire        hilo_write_secondary = ex_hilo_bus_secondary_i[0];
    wire [63:0] hilo_wdata_secondary = ex_hilo_bus_secondary_i[64:1];

	always @(posedge clk) begin
	    if (rst == `RstEnable) begin
	        hilo_o <= {`Zero32,`Zero32};
	    end else if (hilo_write_secondary) begin
	        hilo_o <= hilo_wdata_secondary;
        end else if (hilo_write_primary) begin
            hilo_o <= hilo_wdata_primary;
        end else begin end
	end

endmodule