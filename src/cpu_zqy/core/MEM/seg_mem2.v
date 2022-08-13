`include "../../Head_Files/cpu.vh"

module seg_mem2(
    input clk,
    input rst,

    //pipeline control signal
    input           wb_allowin_i,
    input           mem1_mem2_valid_i,
    input [145:0]   mem1_mem2_bus_primary_i,
    input [69:0]    mem1_mem2_bus_secondary_i,
    output          mem2_allowin_o,
    output          mem2_wb_valid_o,
    output [69:0]   mem2_wb_bus_primary_o,
    output [69:0]   mem2_wb_bus_secondary_o,

    //mem
    input [31:0]    mem_rdata_i,
    input           data_data_ok_i,
    
    //stall and bypass bus
    output [5 :0]   mem2_up_bus_o,
    output [75:0]   mem2_bypass_o
    
);
    //-------------------------------------------------------------
    //                        signal define
    //-------------------------------------------------------------
    //----- FIFO signal -----
    wire mem2_allowin;
    wire mem2_ready_go;
    wire mem2_wb_valid;
    reg  mem2_valid;
    
    //---- fifo ram signal----
    reg [31:0]  inst_addr_primary       ;
    reg         reg_write_primary       ;
    reg [4:0]   reg_waddr_primary       ;
    reg [31:0]  reg_wdata_primary       ;
    reg [3:0]   alusel_primary          ;
    reg [7:0]   aluop_primary           ;
    reg [31:0]  mem_addr_primary        ;
    reg [31:0]  opdata2_primary         ;

    reg [31:0] inst_addr_secondary      ;
    reg        reg_write_secondary      ;
    reg [4:0]  reg_waddr_secondary      ;
    reg [31:0] reg_wdata_secondary      ;


    //---- mem_ready_go control signal -----
    wire LLbit = reg_wdata_primary[0];
    wire SC_need_exe = ((aluop_primary == `SC_OP) && LLbit);
    wire inst_is_memory = alusel_primary == `LOAD || (alusel_primary == `STORE && aluop_primary !=`SC_OP) || SC_need_exe;
    //-------------------------------------------------------------
    //                     mem1_mem2 FIFO
    //-------------------------------------------------------------
    assign mem2_ready_go = (inst_is_memory && !data_data_ok_i)? 1'b0:1'b1;
    assign mem2_allowin = !mem2_valid || mem2_ready_go && wb_allowin_i;
    assign mem2_wb_valid = mem2_valid && mem2_ready_go;
    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            mem2_valid <= 1'b0;
        end else if(mem2_allowin) begin
            mem2_valid <= mem1_mem2_valid_i;
        end

        if(mem2_allowin && mem1_mem2_valid_i) begin
            inst_addr_primary       <= mem1_mem2_bus_primary_i[31:0];
            reg_write_primary       <= mem1_mem2_bus_primary_i[32];
            reg_waddr_primary       <= mem1_mem2_bus_primary_i[37:33];
            reg_wdata_primary       <= mem1_mem2_bus_primary_i[69:38];
            alusel_primary          <= mem1_mem2_bus_primary_i[73:70];
            aluop_primary           <= mem1_mem2_bus_primary_i[81:74];
            mem_addr_primary        <= mem1_mem2_bus_primary_i[113:82];
            opdata2_primary         <= mem1_mem2_bus_primary_i[145:114];

            inst_addr_secondary     <= mem1_mem2_bus_secondary_i[31:0];
            reg_write_secondary     <= mem1_mem2_bus_secondary_i[32];
            reg_waddr_secondary     <= mem1_mem2_bus_secondary_i[37:33];
            reg_wdata_secondary     <= mem1_mem2_bus_secondary_i[69:38];
        end
    end


    //-------------------------------------------------------------
    //                        select loaddata
    //-------------------------------------------------------------
    wire [31:0] loadout =   {32{aluop_primary == `LB_OP   && mem_addr_primary[1:0] == 2'b00}} & {{24{mem_rdata_i[7]}} ,mem_rdata_i[7:0]  } |
                            {32{aluop_primary == `LB_OP   && mem_addr_primary[1:0] == 2'b01}} & {{24{mem_rdata_i[15]}},mem_rdata_i[15:8] } |
                            {32{aluop_primary == `LB_OP   && mem_addr_primary[1:0] == 2'b10}} & {{24{mem_rdata_i[23]}},mem_rdata_i[23:16]} |
                            {32{aluop_primary == `LB_OP   && mem_addr_primary[1:0] == 2'b11}} & {{24{mem_rdata_i[31]}},mem_rdata_i[31:24]} |
                            {32{aluop_primary == `LBU_OP  && mem_addr_primary[1:0] == 2'b00}} & {{24{1'b0}}           ,mem_rdata_i[7:0]  } |
                            {32{aluop_primary == `LBU_OP  && mem_addr_primary[1:0] == 2'b01}} & {{24{1'b0}}           ,mem_rdata_i[15:8] } |
                            {32{aluop_primary == `LBU_OP  && mem_addr_primary[1:0] == 2'b10}} & {{24{1'b0}}           ,mem_rdata_i[23:16]} |
                            {32{aluop_primary == `LBU_OP  && mem_addr_primary[1:0] == 2'b11}} & {{24{1'b0}}           ,mem_rdata_i[31:24]} |
                            {32{aluop_primary == `LH_OP   && mem_addr_primary[1:0] == 2'b00}} & {{16{mem_rdata_i[15]}},mem_rdata_i[15:0] } |
                            {32{aluop_primary == `LH_OP   && mem_addr_primary[1:0] == 2'b10}} & {{16{mem_rdata_i[31]}},mem_rdata_i[31:16]} |
                            {32{aluop_primary == `LHU_OP  && mem_addr_primary[1:0] == 2'b00}} & {{16{1'b0}}           ,mem_rdata_i[15:0] } |
                            {32{aluop_primary == `LHU_OP  && mem_addr_primary[1:0] == 2'b10}} & {{16{1'b0}}           ,mem_rdata_i[31:16]} |
                            {32{aluop_primary == `LW_OP                                    }} & mem_rdata_i[31:0]                          |
                            {32{aluop_primary == `LL_OP                                    }} & mem_rdata_i[31:0]                          |
                            {32{aluop_primary == `LWL_OP  && mem_addr_primary[1:0] == 2'b00}} & {mem_rdata_i[7:0] ,opdata2_primary[23:0] } |
                            {32{aluop_primary == `LWL_OP  && mem_addr_primary[1:0] == 2'b01}} & {mem_rdata_i[15:0],opdata2_primary[15:0] } |
                            {32{aluop_primary == `LWL_OP  && mem_addr_primary[1:0] == 2'b10}} & {mem_rdata_i[23:0],opdata2_primary[7:0]  } |
                            {32{aluop_primary == `LWL_OP  && mem_addr_primary[1:0] == 2'b11}} & mem_rdata_i |
                            {32{aluop_primary == `LWR_OP  && mem_addr_primary[1:0] == 2'b00}} & mem_rdata_i |
                            {32{aluop_primary == `LWR_OP  && mem_addr_primary[1:0] == 2'b01}} & {opdata2_primary[31:24],mem_rdata_i[31:8] } |
                            {32{aluop_primary == `LWR_OP  && mem_addr_primary[1:0] == 2'b10}} & {opdata2_primary[31:16],mem_rdata_i[31:16]} |
                            {32{aluop_primary == `LWR_OP  && mem_addr_primary[1:0] == 2'b11}} & {opdata2_primary[31:8],mem_rdata_i[31:24] } ;

    //-------------------------------------------------------------
    //                            output     
    //-------------------------------------------------------------
    //----- mem2_to_id stall bus and bypass bus -----
    assign mem2_bypass_o = {76{mem2_valid}} & {reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,(alusel_primary == `LOAD)?loadout:reg_wdata_primary,reg_waddr_primary,reg_write_primary}; 
    assign mem2_up_bus_o = {6{mem2_valid}}  & {reg_waddr_primary,(alusel_primary == `LOAD && !data_data_ok_i)};

    //----- pipeline output -----
    assign mem2_allowin_o  = mem2_allowin;
    assign mem2_wb_valid_o = mem2_wb_valid;
    assign mem2_wb_bus_primary_o   = {70{mem2_valid}} & {(alusel_primary == `LOAD)?loadout:reg_wdata_primary,reg_waddr_primary,reg_write_primary,inst_addr_primary};
    assign mem2_wb_bus_secondary_o = {70{mem2_valid}} & {reg_wdata_secondary,reg_waddr_secondary,reg_write_secondary,inst_addr_secondary};

endmodule