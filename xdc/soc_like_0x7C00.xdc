# Clock and reset
set_property PACKAGE_PIN AC19 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk]
# create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

set_property PACKAGE_PIN Y3 [get_ports resetn]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports resetn]

# LED
set_property PACKAGE_PIN K23 [get_ports {led[0]}]
set_property PACKAGE_PIN J21 [get_ports {led[1]}]
set_property PACKAGE_PIN H23 [get_ports {led[2]}]
set_property PACKAGE_PIN J19 [get_ports {led[3]}]
set_property PACKAGE_PIN G9 [get_ports {led[4]}]
set_property PACKAGE_PIN J26 [get_ports {led[5]}]
set_property PACKAGE_PIN J23 [get_ports {led[6]}]
set_property PACKAGE_PIN J8 [get_ports {led[7]}]
set_property PACKAGE_PIN H8 [get_ports {led[8]}]
set_property PACKAGE_PIN G8 [get_ports {led[9]}]
set_property PACKAGE_PIN F7 [get_ports {led[10]}]
set_property PACKAGE_PIN A4 [get_ports {led[11]}]
set_property PACKAGE_PIN A5 [get_ports {led[12]}]
set_property PACKAGE_PIN A3 [get_ports {led[13]}]
set_property PACKAGE_PIN D5 [get_ports {led[14]}]
set_property PACKAGE_PIN H7 [get_ports {led[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]

# led_rg 0/1
set_property PACKAGE_PIN G7 [get_ports {led_rg0[0]}]
set_property PACKAGE_PIN F8 [get_ports {led_rg0[1]}]
set_property PACKAGE_PIN B5 [get_ports {led_rg1[0]}]
set_property PACKAGE_PIN D6 [get_ports {led_rg1[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led_rg0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_rg1[*]}]

# NUM
set_property PACKAGE_PIN D3  [get_ports {num_csn[7]}]
set_property PACKAGE_PIN D25 [get_ports {num_csn[6]}]
set_property PACKAGE_PIN D26 [get_ports {num_csn[5]}]
set_property PACKAGE_PIN E25 [get_ports {num_csn[4]}]
set_property PACKAGE_PIN E26 [get_ports {num_csn[3]}]
set_property PACKAGE_PIN G25 [get_ports {num_csn[2]}]
set_property PACKAGE_PIN G26 [get_ports {num_csn[1]}]
set_property PACKAGE_PIN H26 [get_ports {num_csn[0]}]

set_property PACKAGE_PIN C3 [get_ports {num_a_g[0]}]
set_property PACKAGE_PIN E6 [get_ports {num_a_g[1]}]
set_property PACKAGE_PIN B2 [get_ports {num_a_g[2]}]
set_property PACKAGE_PIN B4 [get_ports {num_a_g[3]}]
set_property PACKAGE_PIN E5 [get_ports {num_a_g[4]}]
set_property PACKAGE_PIN D4 [get_ports {num_a_g[5]}]
set_property PACKAGE_PIN A2 [get_ports {num_a_g[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {num_a_g[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_csn[*]}]

# switch
set_property PACKAGE_PIN AC21 [get_ports {switch[7]}]
set_property PACKAGE_PIN AD24 [get_ports {switch[6]}]
set_property PACKAGE_PIN AC22 [get_ports {switch[5]}]
set_property PACKAGE_PIN AC23 [get_ports {switch[4]}]
set_property PACKAGE_PIN AB6  [get_ports {switch[3]}]
set_property PACKAGE_PIN W6   [get_ports {switch[2]}]
set_property PACKAGE_PIN AA7  [get_ports {switch[1]}]
set_property PACKAGE_PIN Y6   [get_ports {switch[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {switch[*]}]

# btn_key
set_property PACKAGE_PIN V8  [get_ports {btn_key_col[0]}]
set_property PACKAGE_PIN V9  [get_ports {btn_key_col[1]}]
set_property PACKAGE_PIN Y8  [get_ports {btn_key_col[2]}]
set_property PACKAGE_PIN V7  [get_ports {btn_key_col[3]}]
set_property PACKAGE_PIN U7  [get_ports {btn_key_row[0]}]
set_property PACKAGE_PIN W8  [get_ports {btn_key_row[1]}]
set_property PACKAGE_PIN Y7  [get_ports {btn_key_row[2]}]
set_property PACKAGE_PIN AA8 [get_ports {btn_key_row[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_col[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_row[*]}]

# btn_step
set_property PACKAGE_PIN Y5 [get_ports btn_step[0]]
set_property PACKAGE_PIN V6 [get_ports btn_step[1]]

set_property IOSTANDARD LVCMOS33 [get_ports {btn_step[*]}]

# SPI flash (plugable)
set_property PACKAGE_PIN P20 [get_ports SPI_CLK]
set_property PACKAGE_PIN R20 [get_ports SPI_CS]
set_property PACKAGE_PIN P19 [get_ports SPI_MISO]
set_property PACKAGE_PIN N18 [get_ports SPI_MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_MISO]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CS]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CLK]

# UART
set_property PACKAGE_PIN F23 [get_ports UART_RX]
set_property PACKAGE_PIN H19 [get_ports UART_TX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_RX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_TX]

# Ethernet PHY
set_property PACKAGE_PIN AB21 [get_ports MII_tx_clk]
set_property PACKAGE_PIN AA19 [get_ports MII_rx_clk]
set_property PACKAGE_PIN AA15 [get_ports MII_tx_en]
set_property PACKAGE_PIN AF18 [get_ports {MII_txd[0]}]
set_property PACKAGE_PIN AE18 [get_ports {MII_txd[1]}]
set_property PACKAGE_PIN W15 [get_ports {MII_txd[2]}]
set_property PACKAGE_PIN W14 [get_ports {MII_txd[3]}]
set_property PACKAGE_PIN AB20 [get_ports MII_tx_er]
set_property PACKAGE_PIN AE22 [get_ports MII_rx_dv]
set_property PACKAGE_PIN V1 [get_ports {MII_rxd[0]}]
set_property PACKAGE_PIN V4 [get_ports {MII_rxd[1]}]
set_property PACKAGE_PIN V2 [get_ports {MII_rxd[2]}]
set_property PACKAGE_PIN V3 [get_ports {MII_rxd[3]}]
set_property PACKAGE_PIN W16 [get_ports MII_rx_er]
set_property PACKAGE_PIN Y15 [get_ports MII_col]
set_property PACKAGE_PIN AF20 [get_ports MII_crs]
set_property PACKAGE_PIN W3 [get_ports MDIO_mdc]
set_property PACKAGE_PIN W1 [get_ports MDIO_mdio_io]
set_property PACKAGE_PIN AE26 [get_ports MII_rst_n]

set_property IOSTANDARD LVCMOS33 [get_ports {MII_rxd[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MII_txd[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports MII_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports MII_tx_er]
set_property IOSTANDARD LVCMOS33 [get_ports MII_tx_en]
set_property IOSTANDARD LVCMOS33 [get_ports MII_tx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports MII_rx_er]
set_property IOSTANDARD LVCMOS33 [get_ports MII_col]
set_property IOSTANDARD LVCMOS33 [get_ports MII_crs]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports MII_rx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports MII_rx_dv]

set_input_delay -clock MII_rx_clk -min 10  [get_ports [list MII_rx_dv  MII_rx_er MII_rxd*]]
set_input_delay -clock MII_rx_clk -max [expr 40-10]  [get_ports [list MII_rx_dv  MII_rx_er MII_rxd*]]
set_output_delay -clock MII_tx_clk -min 0  [get_ports [list MII_tx_en  MII_txd*]]
set_output_delay -clock MII_tx_clk -max 12  [get_ports [list MII_tx_en  MII_txd*]]

# EJTAG
#set_property PACKAGE_PIN J18 [get_ports EJTAG_TRST]
#set_property PACKAGE_PIN K18 [get_ports EJTAG_TCK]
#set_property PACKAGE_PIN K20 [get_ports EJTAG_TDI]
#set_property PACKAGE_PIN K22 [get_ports EJTAG_TMS]
#set_property PACKAGE_PIN K21 [get_ports EJTAG_TDO]

#set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TRST]
#set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TCK]
#set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDI]
#set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TMS]
#set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDO]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets EJTAG_TCK_IBUF]

# LCD
set_property IOSTANDARD LVCMOS33 [get_ports lcd_*]

set_property PACKAGE_PIN H9 [get_ports {lcd_data_io[0]}]
set_property PACKAGE_PIN K17 [get_ports {lcd_data_io[1]}]
set_property PACKAGE_PIN J20 [get_ports {lcd_data_io[2]}]
set_property PACKAGE_PIN M17 [get_ports {lcd_data_io[3]}]
set_property PACKAGE_PIN L17 [get_ports {lcd_data_io[4]}]
set_property PACKAGE_PIN L18 [get_ports {lcd_data_io[5]}]
set_property PACKAGE_PIN L15 [get_ports {lcd_data_io[6]}]
set_property PACKAGE_PIN M15 [get_ports {lcd_data_io[7]}]
set_property PACKAGE_PIN M16 [get_ports {lcd_data_io[8]}]
set_property PACKAGE_PIN L14 [get_ports {lcd_data_io[9]}]
set_property PACKAGE_PIN M14 [get_ports {lcd_data_io[10]}]
set_property PACKAGE_PIN F22 [get_ports {lcd_data_io[11]}]
set_property PACKAGE_PIN G22 [get_ports {lcd_data_io[12]}]
set_property PACKAGE_PIN G21 [get_ports {lcd_data_io[13]}]
set_property PACKAGE_PIN H24 [get_ports {lcd_data_io[14]}]
set_property PACKAGE_PIN J16 [get_ports {lcd_data_io[15]}]

set_property PACKAGE_PIN J25 [get_ports lcd_rst]
set_property PACKAGE_PIN H18 [get_ports lcd_cs]
set_property PACKAGE_PIN K8  [get_ports lcd_rd]
set_property PACKAGE_PIN K16 [get_ports lcd_rs]
set_property PACKAGE_PIN L8  [get_ports lcd_wr]

set_property PACKAGE_PIN L19 [get_ports ct_int]
set_property PACKAGE_PIN J24 [get_ports ct_sda]
set_property PACKAGE_PIN H21 [get_ports ct_scl]
set_property PACKAGE_PIN G24 [get_ports ct_rstn]
set_property IOSTANDARD LVCMOS33 [get_ports ct_int]
set_property IOSTANDARD LVCMOS33 [get_ports ct_sda]
set_property IOSTANDARD LVCMOS33 [get_ports ct_scl]
set_property IOSTANDARD LVCMOS33 [get_ports ct_rstn]

set_property PACKAGE_PIN J15 [get_ports lcd_bl_ctr]

#IIC
set_property PACKAGE_PIN T15 [get_ports IIC_scl_io]
set_property PACKAGE_PIN T14 [get_ports IIC_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_sda_io]


# set_false_path -from [get_clocks clk_pll_i] -to [get_clocks clk_out1_clk_pll_33]

