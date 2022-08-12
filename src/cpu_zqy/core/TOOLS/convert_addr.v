`include "../../Head_Files/cpu.vh"

module convert_addr (
    input [31:0] cp0_status_i,
    input [31:0] virtual_addr_i,
    input        cp0_config_uncache_i,
    output       error_o,
    output       need_tlb_o,
    output       untlb_cache_o,
    output[31:0] untlb_paddr_o      
);  

    wire user_mode   = !cp0_status_i[`STATUS_EXL] && cp0_status_i[`STATUS_KSU] == 2'b10;
    wire kernel_mode = !user_mode;
    //wire supervisor_mode = !cp0_status_i[`EXL] && !cp0_status_i[`ERL] && cp0_status_i[`KSU] == 2'b01;
     //wire kernel_mode =  cp0_status_i[`STATUS_EXL] || cp0_status_i[`STATUS_ERL]  || cp0_status_i[`STATUS_KSU] == 2'b00;

    wire kseg3 = virtual_addr_i[31:29] == 3'b111;
    wire ksseg = virtual_addr_i[31:29] == 3'b110;
    wire kseg1 = virtual_addr_i[31:29] == 3'b101;
    wire kseg0 = virtual_addr_i[31:29] == 3'b100;
    wire kuseg = virtual_addr_i[31]    == 1'b0;

    assign error_o      =   user_mode   && (kseg3 || ksseg || kseg1 || kseg0);
    assign need_tlb_o   =   user_mode   && kuseg ||
                            kernel_mode && (kseg3 || ksseg || kuseg && ~cp0_status_i[`STATUS_ERL]);
    assign untlb_cache_o  =   kernel_mode && kseg0 && ~cp0_config_uncache_i;
    assign untlb_paddr_o = {3'b000,virtual_addr_i[28:0]};

endmodule