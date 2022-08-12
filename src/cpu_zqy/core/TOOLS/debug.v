`include "../defines.vh"

module debug(
    input clk,
    input rst,

    input [31:0]   inst_addr_primary_i,
    input          reg_write_primary_i,
    input [4:0]    reg_waddr_primary_i,
    input [31:0]   reg_wdata_primary_i,

    input [31:0]   inst_addr_secondary_i,
    input          reg_write_secondary_i,
    input [4:0]    reg_waddr_secondary_i,
    input [31:0]   reg_wdata_secondary_i,

    output [31:0]   inst_addr_o,
    output [3:0]    reg_write_o,
    output [4:0]    reg_waddr_o,
    output [31:0]   reg_wdata_o
    );
    //-------------------------------------------------------------
	//                      instbuffer ram
	//-------------------------------------------------------------
    reg [31:0]  inst_addr[31:0];
    reg         reg_write[31:0];
    reg [4:0]   reg_waddr[31:0];
    reg [31:0]  reg_wdata[31:0];


    reg [4:0] rear;//point to the next write location, this location is not valid
    reg [4:0] head;//point to the next rear location, this loaction is valid
    reg [5:0] count;

    //-------------------------------------------------------------
	//                          count
	//-------------------------------------------------------------
    wire [4:0]count_next;
    wire valid = |count;
    assign count_next = {6{( valid &&  reg_write_primary_i &&  reg_write_secondary_i)}} & (count + 1) |
                        {6{( valid && !reg_write_primary_i && !reg_write_secondary_i)}} & (count - 1) |
                        {6{( valid &&  reg_write_primary_i && !reg_write_secondary_i)}} & (count    ) |
                        {6{( valid && !reg_write_primary_i &&  reg_write_secondary_i)}} & (count    ) |
                        {6{(!valid &&  reg_write_primary_i &&  reg_write_secondary_i)}} & (count + 2) |
                        {6{(!valid && !reg_write_primary_i && !reg_write_secondary_i)}} & (count    ) |
                        {6{(!valid && !reg_write_primary_i &&  reg_write_secondary_i)}} & (count + 1) |
                        {6{(!valid &&  reg_write_primary_i && !reg_write_secondary_i)}} & (count + 1) ;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            count <= 0;
        end else begin
            count <= count_next;
        end 
    end
    //-------------------------------------------------------------
	//                          read
	//-------------------------------------------------------------
    wire [4:0] head_next;
    assign head_next =  {5{ valid}}  & (head + 1) |
                        {5{!valid}}  & (head    ) ;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            head <= 0;
        end else begin
            head <= head_next;
        end 
    end
    
    //-------------------------------------------------------------
	//                          write
	//-------------------------------------------------------------
    wire [4:0] rear_next;
    assign rear_next =  {5{( reg_write_primary_i &&  reg_write_secondary_i)}} & (rear + 2) |
                        {5{(!reg_write_primary_i &&  reg_write_secondary_i)}} & (rear + 1) |
                        {5{( reg_write_primary_i && !reg_write_secondary_i)}} & (rear + 1) |
                        {5{(!reg_write_primary_i && !reg_write_secondary_i)}} & (rear) ;

    always @(posedge clk) begin
        if(rst == `RstEnable) begin
            rear <= 0;
        end else begin
            rear <= rear_next;
        end 
    end

    wire all_write = reg_write_primary_i && reg_write_secondary_i;
    wire primary_write = reg_write_primary_i && !reg_write_secondary_i;
    wire secondary_write = !reg_write_primary_i && reg_write_secondary_i;
    wire [4:0] rear_1 = rear+1;

    always @(posedge clk) begin
        if(all_write) begin
            inst_addr[rear] <= inst_addr_primary_i;
            reg_write[rear] <= reg_write_primary_i;
            reg_waddr[rear] <= reg_waddr_primary_i;
            reg_wdata[rear] <= reg_wdata_primary_i;
        end else if(primary_write) begin
            inst_addr[rear] <= inst_addr_primary_i;
            reg_write[rear] <= reg_write_primary_i;
            reg_waddr[rear] <= reg_waddr_primary_i;
            reg_wdata[rear] <= reg_wdata_primary_i;
        end else if(secondary_write)begin
            inst_addr[rear] <= inst_addr_secondary_i;
            reg_write[rear] <= reg_write_secondary_i;
            reg_waddr[rear] <= reg_waddr_secondary_i;
            reg_wdata[rear] <= reg_wdata_secondary_i;
        end
        if(all_write)begin
            inst_addr[rear_1] <= inst_addr_secondary_i;
            reg_write[rear_1] <= reg_write_secondary_i;
            reg_waddr[rear_1] <= reg_waddr_secondary_i;
            reg_wdata[rear_1] <= reg_wdata_secondary_i;
        end
    end

    //-------------------------------------------------------------
	//                          output
	//-------------------------------------------------------------
    assign inst_addr_o = {32{valid}} & inst_addr[head];
    assign reg_write_o = {4{valid}} & {4{reg_write[head]}};
    assign reg_waddr_o = {5{valid}} & reg_waddr[head];
    assign reg_wdata_o = {32{valid}} & reg_wdata[head];
endmodule