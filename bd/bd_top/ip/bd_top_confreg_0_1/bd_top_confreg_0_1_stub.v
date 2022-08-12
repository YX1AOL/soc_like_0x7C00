// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:14:09 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_confreg_0_1/bd_top_confreg_0_1_stub.v
// Design      : bd_top_confreg_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "confreg,Vivado 2019.2" *)
module bd_top_confreg_0_1(aclk, aresetn, s_awid, s_awaddr, s_awlen, s_awsize, 
  s_awburst, s_awlock, s_awcache, s_awprot, s_awvalid, s_awready, s_wid, s_wdata, s_wstrb, s_wlast, 
  s_wvalid, s_wready, s_bid, s_bresp, s_bvalid, s_bready, s_arid, s_araddr, s_arlen, s_arsize, 
  s_arburst, s_arlock, s_arcache, s_arprot, s_arvalid, s_arready, s_rid, s_rdata, s_rresp, s_rlast, 
  s_rvalid, s_rready, order_addr_reg, finish_read_order, write_dma_end, cr00, cr01, cr02, cr03, cr04, 
  cr05, cr06, cr07, led, led_rg0, led_rg1, num_csn, num_a_g, switch, btn_key_col, btn_key_row, btn_step)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_awid[5:0],s_awaddr[31:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awvalid,s_awready,s_wid[5:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[5:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[5:0],s_araddr[31:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arvalid,s_arready,s_rid[5:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,order_addr_reg[31:0],finish_read_order,write_dma_end,cr00[31:0],cr01[31:0],cr02[31:0],cr03[31:0],cr04[31:0],cr05[31:0],cr06[31:0],cr07[31:0],led[15:0],led_rg0[1:0],led_rg1[1:0],num_csn[7:0],num_a_g[6:0],switch[7:0],btn_key_col[3:0],btn_key_row[3:0],btn_step[1:0]" */;
  input aclk;
  input aresetn;
  input [5:0]s_awid;
  input [31:0]s_awaddr;
  input [7:0]s_awlen;
  input [2:0]s_awsize;
  input [1:0]s_awburst;
  input s_awlock;
  input [3:0]s_awcache;
  input [2:0]s_awprot;
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
  input [5:0]s_arid;
  input [31:0]s_araddr;
  input [7:0]s_arlen;
  input [2:0]s_arsize;
  input [1:0]s_arburst;
  input s_arlock;
  input [3:0]s_arcache;
  input [2:0]s_arprot;
  input s_arvalid;
  output s_arready;
  output [5:0]s_rid;
  output [31:0]s_rdata;
  output [1:0]s_rresp;
  output s_rlast;
  output s_rvalid;
  input s_rready;
  output [31:0]order_addr_reg;
  input finish_read_order;
  input write_dma_end;
  output [31:0]cr00;
  output [31:0]cr01;
  output [31:0]cr02;
  output [31:0]cr03;
  output [31:0]cr04;
  output [31:0]cr05;
  output [31:0]cr06;
  output [31:0]cr07;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [7:0]num_csn;
  output [6:0]num_a_g;
  input [7:0]switch;
  output [3:0]btn_key_col;
  input [3:0]btn_key_row;
  input [1:0]btn_step;
endmodule
