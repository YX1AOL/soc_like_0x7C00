// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:16:52 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_mycpu_0_0/bd_top_mycpu_0_0_stub.v
// Design      : bd_top_mycpu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mycpu,Vivado 2019.2" *)
module bd_top_mycpu_0_0(ext_int, aclk, aresetn, inst_cache_arid, 
  inst_cache_araddr, inst_cache_arlen, inst_cache_arsize, inst_cache_arburst, 
  inst_cache_arlock, inst_cache_arcache, inst_cache_arprot, inst_cache_arqos, 
  inst_cache_arvalid, inst_cache_arready, inst_cache_rid, inst_cache_rdata, 
  inst_cache_rresp, inst_cache_rlast, inst_cache_rvalid, inst_cache_rready, 
  inst_cache_awid, inst_cache_awaddr, inst_cache_awlen, inst_cache_awsize, 
  inst_cache_awburst, inst_cache_awlock, inst_cache_awcache, inst_cache_awprot, 
  inst_cache_awqos, inst_cache_awvalid, inst_cache_awready, inst_cache_wid, 
  inst_cache_wdata, inst_cache_wstrb, inst_cache_wlast, inst_cache_wvalid, 
  inst_cache_wready, inst_cache_bid, inst_cache_bresp, inst_cache_bvalid, 
  inst_cache_bready, inst_uncache_arid, inst_uncache_araddr, inst_uncache_arlen, 
  inst_uncache_arsize, inst_uncache_arburst, inst_uncache_arlock, inst_uncache_arcache, 
  inst_uncache_arprot, inst_uncache_arqos, inst_uncache_arvalid, inst_uncache_arready, 
  inst_uncache_rid, inst_uncache_rdata, inst_uncache_rresp, inst_uncache_rlast, 
  inst_uncache_rvalid, inst_uncache_rready, inst_uncache_awid, inst_uncache_awaddr, 
  inst_uncache_awlen, inst_uncache_awsize, inst_uncache_awburst, inst_uncache_awlock, 
  inst_uncache_awcache, inst_uncache_awprot, inst_uncache_awqos, inst_uncache_awvalid, 
  inst_uncache_awready, inst_uncache_wid, inst_uncache_wdata, inst_uncache_wstrb, 
  inst_uncache_wlast, inst_uncache_wvalid, inst_uncache_wready, inst_uncache_bid, 
  inst_uncache_bresp, inst_uncache_bvalid, inst_uncache_bready, data_cache_arid, 
  data_cache_araddr, data_cache_arlen, data_cache_arsize, data_cache_arburst, 
  data_cache_arlock, data_cache_arcache, data_cache_arprot, data_cache_arqos, 
  data_cache_arvalid, data_cache_arready, data_cache_rid, data_cache_rdata, 
  data_cache_rresp, data_cache_rlast, data_cache_rvalid, data_cache_rready, 
  data_cache_awid, data_cache_awaddr, data_cache_awlen, data_cache_awsize, 
  data_cache_awburst, data_cache_awlock, data_cache_awcache, data_cache_awprot, 
  data_cache_awqos, data_cache_awvalid, data_cache_awready, data_cache_wid, 
  data_cache_wdata, data_cache_wstrb, data_cache_wlast, data_cache_wvalid, 
  data_cache_wready, data_cache_bid, data_cache_bresp, data_cache_bvalid, 
  data_cache_bready, data_uncache_arid, data_uncache_araddr, data_uncache_arlen, 
  data_uncache_arsize, data_uncache_arburst, data_uncache_arlock, data_uncache_arcache, 
  data_uncache_arprot, data_uncache_arqos, data_uncache_arvalid, data_uncache_arready, 
  data_uncache_rid, data_uncache_rdata, data_uncache_rresp, data_uncache_rlast, 
  data_uncache_rvalid, data_uncache_rready, data_uncache_awid, data_uncache_awaddr, 
  data_uncache_awlen, data_uncache_awsize, data_uncache_awburst, data_uncache_awlock, 
  data_uncache_awcache, data_uncache_awprot, data_uncache_awqos, data_uncache_awvalid, 
  data_uncache_awready, data_uncache_wid, data_uncache_wdata, data_uncache_wstrb, 
  data_uncache_wlast, data_uncache_wvalid, data_uncache_wready, data_uncache_bid, 
  data_uncache_bresp, data_uncache_bvalid, data_uncache_bready, debug_wb_pc_1, 
  debug_wb_rf_wen_1, debug_wb_rf_wnum_1, debug_wb_rf_wdata_1, debug_wb_pc_2, 
  debug_wb_rf_wen_2, debug_wb_rf_wnum_2, debug_wb_rf_wdata_2)
/* synthesis syn_black_box black_box_pad_pin="ext_int[5:0],aclk,aresetn,inst_cache_arid[3:0],inst_cache_araddr[31:0],inst_cache_arlen[3:0],inst_cache_arsize[2:0],inst_cache_arburst[1:0],inst_cache_arlock[1:0],inst_cache_arcache[3:0],inst_cache_arprot[2:0],inst_cache_arqos[3:0],inst_cache_arvalid,inst_cache_arready,inst_cache_rid[3:0],inst_cache_rdata[31:0],inst_cache_rresp[1:0],inst_cache_rlast,inst_cache_rvalid,inst_cache_rready,inst_cache_awid[3:0],inst_cache_awaddr[31:0],inst_cache_awlen[3:0],inst_cache_awsize[2:0],inst_cache_awburst[1:0],inst_cache_awlock[1:0],inst_cache_awcache[3:0],inst_cache_awprot[2:0],inst_cache_awqos[3:0],inst_cache_awvalid,inst_cache_awready,inst_cache_wid[3:0],inst_cache_wdata[31:0],inst_cache_wstrb[3:0],inst_cache_wlast,inst_cache_wvalid,inst_cache_wready,inst_cache_bid[3:0],inst_cache_bresp[1:0],inst_cache_bvalid,inst_cache_bready,inst_uncache_arid[3:0],inst_uncache_araddr[31:0],inst_uncache_arlen[3:0],inst_uncache_arsize[2:0],inst_uncache_arburst[1:0],inst_uncache_arlock[1:0],inst_uncache_arcache[3:0],inst_uncache_arprot[2:0],inst_uncache_arqos[3:0],inst_uncache_arvalid,inst_uncache_arready,inst_uncache_rid[3:0],inst_uncache_rdata[31:0],inst_uncache_rresp[1:0],inst_uncache_rlast,inst_uncache_rvalid,inst_uncache_rready,inst_uncache_awid[3:0],inst_uncache_awaddr[31:0],inst_uncache_awlen[3:0],inst_uncache_awsize[2:0],inst_uncache_awburst[1:0],inst_uncache_awlock[1:0],inst_uncache_awcache[3:0],inst_uncache_awprot[2:0],inst_uncache_awqos[3:0],inst_uncache_awvalid,inst_uncache_awready,inst_uncache_wid[3:0],inst_uncache_wdata[31:0],inst_uncache_wstrb[3:0],inst_uncache_wlast,inst_uncache_wvalid,inst_uncache_wready,inst_uncache_bid[3:0],inst_uncache_bresp[1:0],inst_uncache_bvalid,inst_uncache_bready,data_cache_arid[3:0],data_cache_araddr[31:0],data_cache_arlen[3:0],data_cache_arsize[2:0],data_cache_arburst[1:0],data_cache_arlock[1:0],data_cache_arcache[3:0],data_cache_arprot[2:0],data_cache_arqos[3:0],data_cache_arvalid,data_cache_arready,data_cache_rid[3:0],data_cache_rdata[31:0],data_cache_rresp[1:0],data_cache_rlast,data_cache_rvalid,data_cache_rready,data_cache_awid[3:0],data_cache_awaddr[31:0],data_cache_awlen[3:0],data_cache_awsize[2:0],data_cache_awburst[1:0],data_cache_awlock[1:0],data_cache_awcache[3:0],data_cache_awprot[2:0],data_cache_awqos[3:0],data_cache_awvalid,data_cache_awready,data_cache_wid[3:0],data_cache_wdata[31:0],data_cache_wstrb[3:0],data_cache_wlast,data_cache_wvalid,data_cache_wready,data_cache_bid[3:0],data_cache_bresp[1:0],data_cache_bvalid,data_cache_bready,data_uncache_arid[3:0],data_uncache_araddr[31:0],data_uncache_arlen[3:0],data_uncache_arsize[2:0],data_uncache_arburst[1:0],data_uncache_arlock[1:0],data_uncache_arcache[3:0],data_uncache_arprot[2:0],data_uncache_arqos[3:0],data_uncache_arvalid,data_uncache_arready,data_uncache_rid[3:0],data_uncache_rdata[31:0],data_uncache_rresp[1:0],data_uncache_rlast,data_uncache_rvalid,data_uncache_rready,data_uncache_awid[3:0],data_uncache_awaddr[31:0],data_uncache_awlen[3:0],data_uncache_awsize[2:0],data_uncache_awburst[1:0],data_uncache_awlock[1:0],data_uncache_awcache[3:0],data_uncache_awprot[2:0],data_uncache_awqos[3:0],data_uncache_awvalid,data_uncache_awready,data_uncache_wid[3:0],data_uncache_wdata[31:0],data_uncache_wstrb[3:0],data_uncache_wlast,data_uncache_wvalid,data_uncache_wready,data_uncache_bid[3:0],data_uncache_bresp[1:0],data_uncache_bvalid,data_uncache_bready,debug_wb_pc_1[31:0],debug_wb_rf_wen_1[3:0],debug_wb_rf_wnum_1[4:0],debug_wb_rf_wdata_1[31:0],debug_wb_pc_2[31:0],debug_wb_rf_wen_2[3:0],debug_wb_rf_wnum_2[4:0],debug_wb_rf_wdata_2[31:0]" */;
  input [5:0]ext_int;
  input aclk;
  input aresetn;
  output [3:0]inst_cache_arid;
  output [31:0]inst_cache_araddr;
  output [3:0]inst_cache_arlen;
  output [2:0]inst_cache_arsize;
  output [1:0]inst_cache_arburst;
  output [1:0]inst_cache_arlock;
  output [3:0]inst_cache_arcache;
  output [2:0]inst_cache_arprot;
  output [3:0]inst_cache_arqos;
  output inst_cache_arvalid;
  input inst_cache_arready;
  input [3:0]inst_cache_rid;
  input [31:0]inst_cache_rdata;
  input [1:0]inst_cache_rresp;
  input inst_cache_rlast;
  input inst_cache_rvalid;
  output inst_cache_rready;
  output [3:0]inst_cache_awid;
  output [31:0]inst_cache_awaddr;
  output [3:0]inst_cache_awlen;
  output [2:0]inst_cache_awsize;
  output [1:0]inst_cache_awburst;
  output [1:0]inst_cache_awlock;
  output [3:0]inst_cache_awcache;
  output [2:0]inst_cache_awprot;
  output [3:0]inst_cache_awqos;
  output inst_cache_awvalid;
  input inst_cache_awready;
  output [3:0]inst_cache_wid;
  output [31:0]inst_cache_wdata;
  output [3:0]inst_cache_wstrb;
  output inst_cache_wlast;
  output inst_cache_wvalid;
  input inst_cache_wready;
  input [3:0]inst_cache_bid;
  input [1:0]inst_cache_bresp;
  input inst_cache_bvalid;
  output inst_cache_bready;
  output [3:0]inst_uncache_arid;
  output [31:0]inst_uncache_araddr;
  output [3:0]inst_uncache_arlen;
  output [2:0]inst_uncache_arsize;
  output [1:0]inst_uncache_arburst;
  output [1:0]inst_uncache_arlock;
  output [3:0]inst_uncache_arcache;
  output [2:0]inst_uncache_arprot;
  output [3:0]inst_uncache_arqos;
  output inst_uncache_arvalid;
  input inst_uncache_arready;
  input [3:0]inst_uncache_rid;
  input [31:0]inst_uncache_rdata;
  input [1:0]inst_uncache_rresp;
  input inst_uncache_rlast;
  input inst_uncache_rvalid;
  output inst_uncache_rready;
  output [3:0]inst_uncache_awid;
  output [31:0]inst_uncache_awaddr;
  output [3:0]inst_uncache_awlen;
  output [2:0]inst_uncache_awsize;
  output [1:0]inst_uncache_awburst;
  output [1:0]inst_uncache_awlock;
  output [3:0]inst_uncache_awcache;
  output [2:0]inst_uncache_awprot;
  output [3:0]inst_uncache_awqos;
  output inst_uncache_awvalid;
  input inst_uncache_awready;
  output [3:0]inst_uncache_wid;
  output [31:0]inst_uncache_wdata;
  output [3:0]inst_uncache_wstrb;
  output inst_uncache_wlast;
  output inst_uncache_wvalid;
  input inst_uncache_wready;
  input [3:0]inst_uncache_bid;
  input [1:0]inst_uncache_bresp;
  input inst_uncache_bvalid;
  output inst_uncache_bready;
  output [3:0]data_cache_arid;
  output [31:0]data_cache_araddr;
  output [3:0]data_cache_arlen;
  output [2:0]data_cache_arsize;
  output [1:0]data_cache_arburst;
  output [1:0]data_cache_arlock;
  output [3:0]data_cache_arcache;
  output [2:0]data_cache_arprot;
  output [3:0]data_cache_arqos;
  output data_cache_arvalid;
  input data_cache_arready;
  input [3:0]data_cache_rid;
  input [31:0]data_cache_rdata;
  input [1:0]data_cache_rresp;
  input data_cache_rlast;
  input data_cache_rvalid;
  output data_cache_rready;
  output [3:0]data_cache_awid;
  output [31:0]data_cache_awaddr;
  output [3:0]data_cache_awlen;
  output [2:0]data_cache_awsize;
  output [1:0]data_cache_awburst;
  output [1:0]data_cache_awlock;
  output [3:0]data_cache_awcache;
  output [2:0]data_cache_awprot;
  output [3:0]data_cache_awqos;
  output data_cache_awvalid;
  input data_cache_awready;
  output [3:0]data_cache_wid;
  output [31:0]data_cache_wdata;
  output [3:0]data_cache_wstrb;
  output data_cache_wlast;
  output data_cache_wvalid;
  input data_cache_wready;
  input [3:0]data_cache_bid;
  input [1:0]data_cache_bresp;
  input data_cache_bvalid;
  output data_cache_bready;
  output [3:0]data_uncache_arid;
  output [31:0]data_uncache_araddr;
  output [3:0]data_uncache_arlen;
  output [2:0]data_uncache_arsize;
  output [1:0]data_uncache_arburst;
  output [1:0]data_uncache_arlock;
  output [3:0]data_uncache_arcache;
  output [2:0]data_uncache_arprot;
  output [3:0]data_uncache_arqos;
  output data_uncache_arvalid;
  input data_uncache_arready;
  input [3:0]data_uncache_rid;
  input [31:0]data_uncache_rdata;
  input [1:0]data_uncache_rresp;
  input data_uncache_rlast;
  input data_uncache_rvalid;
  output data_uncache_rready;
  output [3:0]data_uncache_awid;
  output [31:0]data_uncache_awaddr;
  output [3:0]data_uncache_awlen;
  output [2:0]data_uncache_awsize;
  output [1:0]data_uncache_awburst;
  output [1:0]data_uncache_awlock;
  output [3:0]data_uncache_awcache;
  output [2:0]data_uncache_awprot;
  output [3:0]data_uncache_awqos;
  output data_uncache_awvalid;
  input data_uncache_awready;
  output [3:0]data_uncache_wid;
  output [31:0]data_uncache_wdata;
  output [3:0]data_uncache_wstrb;
  output data_uncache_wlast;
  output data_uncache_wvalid;
  input data_uncache_wready;
  input [3:0]data_uncache_bid;
  input [1:0]data_uncache_bresp;
  input data_uncache_bvalid;
  output data_uncache_bready;
  output [31:0]debug_wb_pc_1;
  output [3:0]debug_wb_rf_wen_1;
  output [4:0]debug_wb_rf_wnum_1;
  output [31:0]debug_wb_rf_wdata_1;
  output [31:0]debug_wb_pc_2;
  output [3:0]debug_wb_rf_wen_2;
  output [4:0]debug_wb_rf_wnum_2;
  output [31:0]debug_wb_rf_wdata_2;
endmodule
