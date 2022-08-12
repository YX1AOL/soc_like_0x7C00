`include "../../Head_Files/cpu.vh"

module alu_cloz (
    input clk,
    input rst,

    input one_i,            //need to count one
    input valid_i,          //need to count
    input [31:0]opdata_i,   

    input end_i,            //master get data
    
    output ready_o,         //result ready
    output [31:0]result_o
);
    //----- signal define -----
    reg [4:0]cnt;
    reg [31:0]result;

    parameter NOT_USE = 2'b00;
    parameter COMPUTE = 2'b01;
    parameter OK      = 2'b10;

    reg [1:0] state;
    
    //----- cnt -----
    always @(posedge clk) begin
        if(rst)begin
            cnt <= 0;
        end else if(valid_i)begin
            cnt <= cnt + 1;
        end
    end

    //----- result -----
    always @(posedge clk) begin
        if(rst || (state == OK && end_i))begin
            result <= 0;
        end else if(valid_i)begin
            result <= ((opdata_i[cnt] == one_i) && (state != OK))? (result_o + 5'd1):result_o;
        end   
    end

    //----- DFA -----
    always @(posedge clk) begin
        if(rst)begin
            state <= NOT_USE;
        end else begin
            case (state)
                NOT_USE : state <= (valid_i     )?      COMPUTE :NOT_USE;
                COMPUTE : state <= (cnt == 5'd31)?      OK      :COMPUTE;
                OK      : state <= (end_i       )?      NOT_USE :OK     ;
                default : state <= NOT_USE;
            endcase
        end
    end 

    assign ready_o = (state == OK);
    assign result_o = result;

endmodule