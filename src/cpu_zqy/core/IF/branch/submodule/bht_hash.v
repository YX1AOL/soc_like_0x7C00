`include "../../../../Head_Files/cpu.vh"

module hash_bht(
    input  [31:0]data_i,
    output [`HASH_BITS-1:0]data_o
);

    assign data_o = data_i[`HASH_BITS+1:2] ^ data_i[15:15-`HASH_BITS+1];

endmodule