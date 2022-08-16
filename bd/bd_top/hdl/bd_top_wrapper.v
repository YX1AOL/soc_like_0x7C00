//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Aug 16 10:50:09 2022
//Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
//Command     : generate_target bd_top_wrapper.bd
//Design      : bd_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_top_wrapper
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    IIC_scl_io,
    IIC_sda_io,
    MDIO_mdc,
    MDIO_mdio_io,
    MII_col,
    MII_crs,
    MII_rst_n,
    MII_rx_clk,
    MII_rx_dv,
    MII_rx_er,
    MII_rxd,
    MII_tx_clk,
    MII_tx_en,
    MII_tx_er,
    MII_txd,
    SPI_CLK,
    SPI_CS,
    SPI_MISO,
    SPI_MOSI,
    UART_RX,
    UART_TX,
    btn_key_col,
    btn_key_row,
    btn_step,
    clk,
    ct_int,
    ct_rstn,
    ct_scl,
    ct_sda,
    lcd_bl_ctr,
    lcd_cs,
    lcd_data_io,
    lcd_rd,
    lcd_rs,
    lcd_rst,
    lcd_wr,
    led,
    led_rg0,
    led_rg1,
    num_a_g,
    num_csn,
    resetn,
    switch);
  output [12:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [1:0]DDR3_dm;
  inout [15:0]DDR3_dq;
  inout [1:0]DDR3_dqs_n;
  inout [1:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  inout IIC_scl_io;
  inout IIC_sda_io;
  output MDIO_mdc;
  inout MDIO_mdio_io;
  input MII_col;
  input MII_crs;
  output MII_rst_n;
  input MII_rx_clk;
  input MII_rx_dv;
  input MII_rx_er;
  input [3:0]MII_rxd;
  input MII_tx_clk;
  output MII_tx_en;
  output [0:0]MII_tx_er;
  output [3:0]MII_txd;
  output SPI_CLK;
  output SPI_CS;
  inout SPI_MISO;
  inout SPI_MOSI;
  input UART_RX;
  output UART_TX;
  output [3:0]btn_key_col;
  input [3:0]btn_key_row;
  input [1:0]btn_step;
  input clk;
  inout ct_int;
  output ct_rstn;
  output ct_scl;
  inout ct_sda;
  output lcd_bl_ctr;
  output lcd_cs;
  inout [15:0]lcd_data_io;
  output lcd_rd;
  output lcd_rs;
  output lcd_rst;
  output lcd_wr;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [6:0]num_a_g;
  output [7:0]num_csn;
  input resetn;
  input [7:0]switch;

  wire [12:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [1:0]DDR3_dm;
  wire [15:0]DDR3_dq;
  wire [1:0]DDR3_dqs_n;
  wire [1:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire IIC_scl_i;
  wire IIC_scl_io;
  wire IIC_scl_o;
  wire IIC_scl_t;
  wire IIC_sda_i;
  wire IIC_sda_io;
  wire IIC_sda_o;
  wire IIC_sda_t;
  wire MDIO_mdc;
  wire MDIO_mdio_i;
  wire MDIO_mdio_io;
  wire MDIO_mdio_o;
  wire MDIO_mdio_t;
  wire MII_col;
  wire MII_crs;
  wire MII_rst_n;
  wire MII_rx_clk;
  wire MII_rx_dv;
  wire MII_rx_er;
  wire [3:0]MII_rxd;
  wire MII_tx_clk;
  wire MII_tx_en;
  wire [0:0]MII_tx_er;
  wire [3:0]MII_txd;
  wire SPI_CLK;
  wire SPI_CS;
  wire SPI_MISO;
  wire SPI_MOSI;
  wire UART_RX;
  wire UART_TX;
  wire [3:0]btn_key_col;
  wire [3:0]btn_key_row;
  wire [1:0]btn_step;
  wire clk;
  wire ct_int;
  wire ct_rstn;
  wire ct_scl;
  wire ct_sda;
  wire lcd_bl_ctr;
  wire lcd_cs;
  wire [15:0]lcd_data_io;
  wire lcd_rd;
  wire lcd_rs;
  wire lcd_rst;
  wire lcd_wr;
  wire [15:0]led;
  wire [1:0]led_rg0;
  wire [1:0]led_rg1;
  wire [6:0]num_a_g;
  wire [7:0]num_csn;
  wire resetn;
  wire [7:0]switch;

  IOBUF IIC_scl_iobuf
       (.I(IIC_scl_o),
        .IO(IIC_scl_io),
        .O(IIC_scl_i),
        .T(IIC_scl_t));
  IOBUF IIC_sda_iobuf
       (.I(IIC_sda_o),
        .IO(IIC_sda_io),
        .O(IIC_sda_i),
        .T(IIC_sda_t));
  IOBUF MDIO_mdio_iobuf
       (.I(MDIO_mdio_o),
        .IO(MDIO_mdio_io),
        .O(MDIO_mdio_i),
        .T(MDIO_mdio_t));
  bd_top bd_top_i
       (.DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .IIC_scl_i(IIC_scl_i),
        .IIC_scl_o(IIC_scl_o),
        .IIC_scl_t(IIC_scl_t),
        .IIC_sda_i(IIC_sda_i),
        .IIC_sda_o(IIC_sda_o),
        .IIC_sda_t(IIC_sda_t),
        .MDIO_mdc(MDIO_mdc),
        .MDIO_mdio_i(MDIO_mdio_i),
        .MDIO_mdio_o(MDIO_mdio_o),
        .MDIO_mdio_t(MDIO_mdio_t),
        .MII_col(MII_col),
        .MII_crs(MII_crs),
        .MII_rst_n(MII_rst_n),
        .MII_rx_clk(MII_rx_clk),
        .MII_rx_dv(MII_rx_dv),
        .MII_rx_er(MII_rx_er),
        .MII_rxd(MII_rxd),
        .MII_tx_clk(MII_tx_clk),
        .MII_tx_en(MII_tx_en),
        .MII_tx_er(MII_tx_er),
        .MII_txd(MII_txd),
        .SPI_CLK(SPI_CLK),
        .SPI_CS(SPI_CS),
        .SPI_MISO(SPI_MISO),
        .SPI_MOSI(SPI_MOSI),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .btn_key_col(btn_key_col),
        .btn_key_row(btn_key_row),
        .btn_step(btn_step),
        .clk(clk),
        .ct_int(ct_int),
        .ct_rstn(ct_rstn),
        .ct_scl(ct_scl),
        .ct_sda(ct_sda),
        .lcd_bl_ctr(lcd_bl_ctr),
        .lcd_cs(lcd_cs),
        .lcd_data_io(lcd_data_io),
        .lcd_rd(lcd_rd),
        .lcd_rs(lcd_rs),
        .lcd_rst(lcd_rst),
        .lcd_wr(lcd_wr),
        .led(led),
        .led_rg0(led_rg0),
        .led_rg1(led_rg1),
        .num_a_g(num_a_g),
        .num_csn(num_csn),
        .resetn(resetn),
        .switch(switch));
endmodule
