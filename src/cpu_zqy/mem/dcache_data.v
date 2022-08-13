// date:        2022/08/06
// by:          kun
// module:      dcache_data
// description: data cache data bank

`timescale 1ns / 1ps

module dcache_data (
    input          clk    ,
    input          wen    ,
    input  [31 :0] wstrb  ,
    input  [6  :0] rindex ,
    input  [6  :0] windex ,
    input  [255:0] data_in,

    output [255:0] data_out
);

    reg  [255:0] wline;
    reg  [31 :0] wstrb_reg;
    reg          collison_reg;
    wire [255:0] doutb;
    wire collison = (rindex == windex) && wen;

    always @(posedge clk) begin
        collison_reg <= collison;
        wline        <= data_in;
        wstrb_reg    <= wstrb;
    end

    wire [255:0] collison_ramout = doutb;
    wire [255:0] collison_output;

    genvar i;
    generate
        for (i = 0; i < 256; i = i + 1) begin
            assign collison_output[i] = wstrb_reg[i >> 3] ? wline[i] : doutb[i];
        end
    endgenerate

    // xpm_memory_sdpram: Simple Dual Port RAM
    // Xilinx Parameterized Macro, version 2019.2

    xpm_memory_sdpram #(
        .ADDR_WIDTH_A           (7              ),
        .ADDR_WIDTH_B           (7              ),
        .AUTO_SLEEP_TIME        (0              ),
        .BYTE_WRITE_WIDTH_A     (8              ),
        .CASCADE_HEIGHT         (0              ),
        .CLOCKING_MODE          ("common_clock" ),
        .ECC_MODE               ("no_ecc"       ),
        .MEMORY_INIT_FILE       ("none"         ),
        .MEMORY_INIT_PARAM      ("0"            ),
        .MEMORY_OPTIMIZATION    ("true"         ),
        .MEMORY_PRIMITIVE       ("block"        ),
        .MEMORY_SIZE            (32768          ),
        .MESSAGE_CONTROL        (0              ),
        .READ_DATA_WIDTH_B      (256            ),
        .READ_LATENCY_B         (1              ),
        .READ_RESET_VALUE_B     ("0"            ),
        .RST_MODE_A             ("SYNC"         ),
        .RST_MODE_B             ("SYNC"         ),
        .SIM_ASSERT_CHK         (1              ),
        .USE_EMBEDDED_CONSTRAINT(0              ),
        .USE_MEM_INIT           (0              ),
        .WAKEUP_TIME            ("disable_sleep"),
        .WRITE_DATA_WIDTH_A     (256            ),
        .WRITE_MODE_B           ("read_first"   )
    )
    xpm_memory_sdpram_inst (
        .clka          (clk     ),
        .clkb          (clk     ),
        .rstb          (1'b0    ),
        .ena           (wen     ),
        .wea           (wstrb   ),
        .addra         (windex  ),
        .dina          (data_in ),
        .enb           (1'b1    ),
        .addrb         (rindex  ),
        .doutb         (doutb   ),
        .injectdbiterra(1'b0    ),
        .injectsbiterra(1'b0    ),
        .regceb        (1'b0    ),
        .sleep         (1'b0    ),
        .dbiterrb      (        ),
        .sbiterrb      (        )
    );

    assign data_out = collison_reg ? collison_output : doutb;

endmodule
