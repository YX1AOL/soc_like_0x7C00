// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:12:06 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_top_spi_flash_ctrl_0_0_stub.v
// Design      : bd_top_spi_flash_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spi_flash_ctrl,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, spi_addr, power_down_req, 
  power_down_ack, fast_startup, s_awlen, s_awcache, s_awid, s_awaddr, s_awsize, s_awprot, 
  s_awburst, s_awlock, s_awvalid, s_awready, s_wid, s_wdata, s_wstrb, s_wlast, s_wvalid, s_wready, 
  s_bid, s_bresp, s_bvalid, s_bready, s_arlen, s_arcache, s_arid, s_araddr, s_arsize, s_arprot, 
  s_arburst, s_arlock, s_arvalid, s_arready, s_rid, s_rdata, s_rresp, s_rlast, s_rvalid, s_rready, 
  SPI_CLK, SPI_CS, SPI_MISO, SPI_MOSI, inta_o)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,spi_addr[15:0],power_down_req,power_down_ack,fast_startup,s_awlen[3:0],s_awcache[3:0],s_awid[5:0],s_awaddr[31:0],s_awsize[2:0],s_awprot[2:0],s_awburst[1:0],s_awlock[1:0],s_awvalid,s_awready,s_wid[5:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[5:0],s_bresp[1:0],s_bvalid,s_bready,s_arlen[3:0],s_arcache[3:0],s_arid[5:0],s_araddr[31:0],s_arsize[2:0],s_arprot[2:0],s_arburst[1:0],s_arlock[1:0],s_arvalid,s_arready,s_rid[5:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,SPI_CLK,SPI_CS,SPI_MISO,SPI_MOSI,inta_o" */;
  input aclk;
  input aresetn;
  input [15:0]spi_addr;
  input power_down_req;
  output power_down_ack;
  input fast_startup;
  input [3:0]s_awlen;
  input [3:0]s_awcache;
  input [5:0]s_awid;
  input [31:0]s_awaddr;
  input [2:0]s_awsize;
  input [2:0]s_awprot;
  input [1:0]s_awburst;
  input [1:0]s_awlock;
  input s_awvalid;
  output s_awready;
  input [5:0]s_wid;
  input [31:0]s_wdata;
  input [3:0]s_wstrb;
  input s_wlast;
  input s_wvalid;
  output s_wready;
  output [5:0]s_bid;
  output [1:0]s_bresp;
  output s_bvalid;
  input s_bready;
  input [3:0]s_arlen;
  input [3:0]s_arcache;
  input [5:0]s_arid;
  input [31:0]s_araddr;
  input [2:0]s_arsize;
  input [2:0]s_arprot;
  input [1:0]s_arburst;
  input [1:0]s_arlock;
  input s_arvalid;
  output s_arready;
  output [5:0]s_rid;
  output [31:0]s_rdata;
  output [1:0]s_rresp;
  output s_rlast;
  output s_rvalid;
  input s_rready;
  output SPI_CLK;
  output SPI_CS;
  inout SPI_MISO;
  inout SPI_MOSI;
  output inta_o;
endmodule
