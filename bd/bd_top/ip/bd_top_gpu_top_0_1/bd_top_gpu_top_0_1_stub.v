// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:15:26 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_gpu_top_0_1/bd_top_gpu_top_0_1_stub.v
// Design      : bd_top_gpu_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gpu_top,Vivado 2019.2" *)
module bd_top_gpu_top_0_1(aclk, aresetn, s_awid, s_awaddr, s_awlen, s_awsize, 
  s_awburst, s_awlock, s_awcache, s_awprot, s_awvalid, s_awready, s_wid, s_wdata, s_wstrb, s_wlast, 
  s_wvalid, s_wready, s_bid, s_bresp, s_bvalid, s_bready, s_arid, s_araddr, s_arlen, s_arsize, 
  s_arburst, s_arlock, s_arcache, s_arprot, s_arvalid, s_arready, s_rid, s_rdata, s_rresp, s_rlast, 
  s_rvalid, s_rready, lcd_clk, lcd_rst, lcd_cs, lcd_rs, lcd_wr, lcd_rd, lcd_data_io, lcd_bl_ctr, 
  ct_int, ct_sda, ct_scl, ct_rstn)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_awid[3:0],s_awaddr[31:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awvalid,s_awready,s_wid[3:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[3:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[3:0],s_araddr[31:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arvalid,s_arready,s_rid[3:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,lcd_clk,lcd_rst,lcd_cs,lcd_rs,lcd_wr,lcd_rd,lcd_data_io[15:0],lcd_bl_ctr,ct_int,ct_sda,ct_scl,ct_rstn" */;
  input aclk;
  input aresetn;
  input [3:0]s_awid;
  input [31:0]s_awaddr;
  input [7:0]s_awlen;
  input [2:0]s_awsize;
  input [1:0]s_awburst;
  input s_awlock;
  input [3:0]s_awcache;
  input [2:0]s_awprot;
  input s_awvalid;
  output s_awready;
  input [3:0]s_wid;
  input [31:0]s_wdata;
  input [3:0]s_wstrb;
  input s_wlast;
  input s_wvalid;
  output s_wready;
  output [3:0]s_bid;
  output [1:0]s_bresp;
  output s_bvalid;
  input s_bready;
  input [3:0]s_arid;
  input [31:0]s_araddr;
  input [7:0]s_arlen;
  input [2:0]s_arsize;
  input [1:0]s_arburst;
  input s_arlock;
  input [3:0]s_arcache;
  input [2:0]s_arprot;
  input s_arvalid;
  output s_arready;
  output [3:0]s_rid;
  output [31:0]s_rdata;
  output [1:0]s_rresp;
  output s_rlast;
  output s_rvalid;
  input s_rready;
  input lcd_clk;
  output lcd_rst;
  output lcd_cs;
  output lcd_rs;
  output lcd_wr;
  output lcd_rd;
  inout [15:0]lcd_data_io;
  output lcd_bl_ctr;
  inout ct_int;
  inout ct_sda;
  output ct_scl;
  output ct_rstn;
endmodule
