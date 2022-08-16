// date:        2021/07/21
// by:          kun
// module:      icache_data
// description: icache_data, using Block RAM

`timescale 1ns / 1ps

module icache_data (
    input          clk    ,
    input          wen    , // write enable
    input  [6  :0] index  , // index, 128 entries
    input  [4  :0] offset , // r/w offset
    input  [255:0] data_in,

    output [63 :0] data_out
);

    wire [255:0] dout;
    wire [31 :0] words [7:0];

    // xpm_memory_spram: Single Port RAM
    // Xilinx Parameterized Macro, version 2019.2

    xpm_memory_spram #(
        .ADDR_WIDTH_A       (7              ),
        .AUTO_SLEEP_TIME    (0              ),
        .BYTE_WRITE_WIDTH_A (256            ),
        .CASCADE_HEIGHT     (0              ),
        .ECC_MODE           ("no_ecc"       ),
        .MEMORY_INIT_FILE   ("none"         ),
        .MEMORY_INIT_PARAM  ("0"            ),
        .MEMORY_OPTIMIZATION("true"         ),
        .MEMORY_PRIMITIVE   ("block"        ),
        .MEMORY_SIZE        (32768          ),
        .MESSAGE_CONTROL    (0              ),
        .READ_DATA_WIDTH_A  (256            ),
        .READ_LATENCY_A     (1              ),
        .READ_RESET_VALUE_A ("0"            ),
        .RST_MODE_A         ("SYNC"         ),
        .SIM_ASSERT_CHK     (0              ),
        .USE_MEM_INIT       (0              ),
        .WAKEUP_TIME        ("disable_sleep"),
        .WRITE_DATA_WIDTH_A (256            ),
        .WRITE_MODE_A       ("read_first"   )
    )
    xpm_memory_spram_inst (
        .clka          (clk    ),
        .addra         (index  ),
        .wea           (wen    ),
        .dina          (data_in),
        .douta         (dout   ),
        .ena           (1'b1   ),
        .injectdbiterra(1'b0   ),
        .injectsbiterra(1'b0   ),
        .dbiterra      (       ),
        .sbiterra      (       ),
        .regcea        (1'b0   ),
        .rsta          (1'b0   ),
        .sleep         (1'b0   )
    );

    assign {words[7], words[6], words[5], words[4], words[3], words[2], words[1], words[0]} = dout;
    assign data_out = {words[offset[4:2] + 3'b1], words[offset[4:2]]};

endmodule
