// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:mycpu:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_top_mycpu_0_0 (
  ext_int,
  aclk,
  aresetn,
  inst_cache_arid,
  inst_cache_araddr,
  inst_cache_arlen,
  inst_cache_arsize,
  inst_cache_arburst,
  inst_cache_arlock,
  inst_cache_arcache,
  inst_cache_arprot,
  inst_cache_arqos,
  inst_cache_arvalid,
  inst_cache_arready,
  inst_cache_rid,
  inst_cache_rdata,
  inst_cache_rresp,
  inst_cache_rlast,
  inst_cache_rvalid,
  inst_cache_rready,
  inst_cache_awid,
  inst_cache_awaddr,
  inst_cache_awlen,
  inst_cache_awsize,
  inst_cache_awburst,
  inst_cache_awlock,
  inst_cache_awcache,
  inst_cache_awprot,
  inst_cache_awqos,
  inst_cache_awvalid,
  inst_cache_awready,
  inst_cache_wid,
  inst_cache_wdata,
  inst_cache_wstrb,
  inst_cache_wlast,
  inst_cache_wvalid,
  inst_cache_wready,
  inst_cache_bid,
  inst_cache_bresp,
  inst_cache_bvalid,
  inst_cache_bready,
  inst_uncache_arid,
  inst_uncache_araddr,
  inst_uncache_arlen,
  inst_uncache_arsize,
  inst_uncache_arburst,
  inst_uncache_arlock,
  inst_uncache_arcache,
  inst_uncache_arprot,
  inst_uncache_arqos,
  inst_uncache_arvalid,
  inst_uncache_arready,
  inst_uncache_rid,
  inst_uncache_rdata,
  inst_uncache_rresp,
  inst_uncache_rlast,
  inst_uncache_rvalid,
  inst_uncache_rready,
  inst_uncache_awid,
  inst_uncache_awaddr,
  inst_uncache_awlen,
  inst_uncache_awsize,
  inst_uncache_awburst,
  inst_uncache_awlock,
  inst_uncache_awcache,
  inst_uncache_awprot,
  inst_uncache_awqos,
  inst_uncache_awvalid,
  inst_uncache_awready,
  inst_uncache_wid,
  inst_uncache_wdata,
  inst_uncache_wstrb,
  inst_uncache_wlast,
  inst_uncache_wvalid,
  inst_uncache_wready,
  inst_uncache_bid,
  inst_uncache_bresp,
  inst_uncache_bvalid,
  inst_uncache_bready,
  data_cache_arid,
  data_cache_araddr,
  data_cache_arlen,
  data_cache_arsize,
  data_cache_arburst,
  data_cache_arlock,
  data_cache_arcache,
  data_cache_arprot,
  data_cache_arqos,
  data_cache_arvalid,
  data_cache_arready,
  data_cache_rid,
  data_cache_rdata,
  data_cache_rresp,
  data_cache_rlast,
  data_cache_rvalid,
  data_cache_rready,
  data_cache_awid,
  data_cache_awaddr,
  data_cache_awlen,
  data_cache_awsize,
  data_cache_awburst,
  data_cache_awlock,
  data_cache_awcache,
  data_cache_awprot,
  data_cache_awqos,
  data_cache_awvalid,
  data_cache_awready,
  data_cache_wid,
  data_cache_wdata,
  data_cache_wstrb,
  data_cache_wlast,
  data_cache_wvalid,
  data_cache_wready,
  data_cache_bid,
  data_cache_bresp,
  data_cache_bvalid,
  data_cache_bready,
  data_uncache_arid,
  data_uncache_araddr,
  data_uncache_arlen,
  data_uncache_arsize,
  data_uncache_arburst,
  data_uncache_arlock,
  data_uncache_arcache,
  data_uncache_arprot,
  data_uncache_arqos,
  data_uncache_arvalid,
  data_uncache_arready,
  data_uncache_rid,
  data_uncache_rdata,
  data_uncache_rresp,
  data_uncache_rlast,
  data_uncache_rvalid,
  data_uncache_rready,
  data_uncache_awid,
  data_uncache_awaddr,
  data_uncache_awlen,
  data_uncache_awsize,
  data_uncache_awburst,
  data_uncache_awlock,
  data_uncache_awcache,
  data_uncache_awprot,
  data_uncache_awqos,
  data_uncache_awvalid,
  data_uncache_awready,
  data_uncache_wid,
  data_uncache_wdata,
  data_uncache_wstrb,
  data_uncache_wlast,
  data_uncache_wvalid,
  data_uncache_wready,
  data_uncache_bid,
  data_uncache_bresp,
  data_uncache_bvalid,
  data_uncache_bready,
  debug_wb_pc_1,
  debug_wb_rf_wen_1,
  debug_wb_rf_wnum_1,
  debug_wb_rf_wdata_1,
  debug_wb_pc_2,
  debug_wb_rf_wen_2,
  debug_wb_rf_wnum_2,
  debug_wb_rf_wdata_2
);

input wire [5 : 0] ext_int;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF data_cache:data_uncache:inst_cache:inst_uncache, ASSOCIATED_RESET aresetn, FREQ_HZ 33000000, PHASE 0.0, CLK_DOMAIN /clk_pll_cpu_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARID" *)
output wire [3 : 0] inst_cache_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARADDR" *)
output wire [31 : 0] inst_cache_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARLEN" *)
output wire [3 : 0] inst_cache_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARSIZE" *)
output wire [2 : 0] inst_cache_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARBURST" *)
output wire [1 : 0] inst_cache_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARLOCK" *)
output wire [1 : 0] inst_cache_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARCACHE" *)
output wire [3 : 0] inst_cache_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARPROT" *)
output wire [2 : 0] inst_cache_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARQOS" *)
output wire [3 : 0] inst_cache_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARVALID" *)
output wire inst_cache_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache ARREADY" *)
input wire inst_cache_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RID" *)
input wire [3 : 0] inst_cache_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RDATA" *)
input wire [31 : 0] inst_cache_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RRESP" *)
input wire [1 : 0] inst_cache_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RLAST" *)
input wire inst_cache_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RVALID" *)
input wire inst_cache_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache RREADY" *)
output wire inst_cache_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWID" *)
output wire [3 : 0] inst_cache_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWADDR" *)
output wire [31 : 0] inst_cache_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWLEN" *)
output wire [3 : 0] inst_cache_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWSIZE" *)
output wire [2 : 0] inst_cache_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWBURST" *)
output wire [1 : 0] inst_cache_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWLOCK" *)
output wire [1 : 0] inst_cache_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWCACHE" *)
output wire [3 : 0] inst_cache_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWPROT" *)
output wire [2 : 0] inst_cache_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWQOS" *)
output wire [3 : 0] inst_cache_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWVALID" *)
output wire inst_cache_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache AWREADY" *)
input wire inst_cache_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WID" *)
output wire [3 : 0] inst_cache_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WDATA" *)
output wire [31 : 0] inst_cache_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WSTRB" *)
output wire [3 : 0] inst_cache_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WLAST" *)
output wire inst_cache_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WVALID" *)
output wire inst_cache_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache WREADY" *)
input wire inst_cache_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache BID" *)
input wire [3 : 0] inst_cache_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache BRESP" *)
input wire [1 : 0] inst_cache_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache BVALID" *)
input wire inst_cache_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inst_cache, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_cpu_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_cache BREADY" *)
output wire inst_cache_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARID" *)
output wire [3 : 0] inst_uncache_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARADDR" *)
output wire [31 : 0] inst_uncache_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARLEN" *)
output wire [3 : 0] inst_uncache_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARSIZE" *)
output wire [2 : 0] inst_uncache_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARBURST" *)
output wire [1 : 0] inst_uncache_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARLOCK" *)
output wire [1 : 0] inst_uncache_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARCACHE" *)
output wire [3 : 0] inst_uncache_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARPROT" *)
output wire [2 : 0] inst_uncache_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARQOS" *)
output wire [3 : 0] inst_uncache_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARVALID" *)
output wire inst_uncache_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache ARREADY" *)
input wire inst_uncache_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RID" *)
input wire [3 : 0] inst_uncache_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RDATA" *)
input wire [31 : 0] inst_uncache_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RRESP" *)
input wire [1 : 0] inst_uncache_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RLAST" *)
input wire inst_uncache_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RVALID" *)
input wire inst_uncache_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache RREADY" *)
output wire inst_uncache_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWID" *)
output wire [3 : 0] inst_uncache_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWADDR" *)
output wire [31 : 0] inst_uncache_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWLEN" *)
output wire [3 : 0] inst_uncache_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWSIZE" *)
output wire [2 : 0] inst_uncache_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWBURST" *)
output wire [1 : 0] inst_uncache_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWLOCK" *)
output wire [1 : 0] inst_uncache_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWCACHE" *)
output wire [3 : 0] inst_uncache_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWPROT" *)
output wire [2 : 0] inst_uncache_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWQOS" *)
output wire [3 : 0] inst_uncache_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWVALID" *)
output wire inst_uncache_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache AWREADY" *)
input wire inst_uncache_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WID" *)
output wire [3 : 0] inst_uncache_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WDATA" *)
output wire [31 : 0] inst_uncache_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WSTRB" *)
output wire [3 : 0] inst_uncache_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WLAST" *)
output wire inst_uncache_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WVALID" *)
output wire inst_uncache_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache WREADY" *)
input wire inst_uncache_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache BID" *)
input wire [3 : 0] inst_uncache_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache BRESP" *)
input wire [1 : 0] inst_uncache_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache BVALID" *)
input wire inst_uncache_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inst_uncache, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_cpu_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 inst_uncache BREADY" *)
output wire inst_uncache_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARID" *)
output wire [3 : 0] data_cache_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARADDR" *)
output wire [31 : 0] data_cache_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARLEN" *)
output wire [3 : 0] data_cache_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARSIZE" *)
output wire [2 : 0] data_cache_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARBURST" *)
output wire [1 : 0] data_cache_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARLOCK" *)
output wire [1 : 0] data_cache_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARCACHE" *)
output wire [3 : 0] data_cache_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARPROT" *)
output wire [2 : 0] data_cache_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARQOS" *)
output wire [3 : 0] data_cache_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARVALID" *)
output wire data_cache_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache ARREADY" *)
input wire data_cache_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RID" *)
input wire [3 : 0] data_cache_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RDATA" *)
input wire [31 : 0] data_cache_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RRESP" *)
input wire [1 : 0] data_cache_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RLAST" *)
input wire data_cache_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RVALID" *)
input wire data_cache_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache RREADY" *)
output wire data_cache_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWID" *)
output wire [3 : 0] data_cache_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWADDR" *)
output wire [31 : 0] data_cache_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWLEN" *)
output wire [3 : 0] data_cache_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWSIZE" *)
output wire [2 : 0] data_cache_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWBURST" *)
output wire [1 : 0] data_cache_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWLOCK" *)
output wire [1 : 0] data_cache_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWCACHE" *)
output wire [3 : 0] data_cache_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWPROT" *)
output wire [2 : 0] data_cache_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWQOS" *)
output wire [3 : 0] data_cache_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWVALID" *)
output wire data_cache_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache AWREADY" *)
input wire data_cache_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WID" *)
output wire [3 : 0] data_cache_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WDATA" *)
output wire [31 : 0] data_cache_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WSTRB" *)
output wire [3 : 0] data_cache_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WLAST" *)
output wire data_cache_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WVALID" *)
output wire data_cache_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache WREADY" *)
input wire data_cache_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache BID" *)
input wire [3 : 0] data_cache_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache BRESP" *)
input wire [1 : 0] data_cache_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache BVALID" *)
input wire data_cache_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_cache, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_cpu_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_cache BREADY" *)
output wire data_cache_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARID" *)
output wire [3 : 0] data_uncache_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARADDR" *)
output wire [31 : 0] data_uncache_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARLEN" *)
output wire [3 : 0] data_uncache_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARSIZE" *)
output wire [2 : 0] data_uncache_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARBURST" *)
output wire [1 : 0] data_uncache_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARLOCK" *)
output wire [1 : 0] data_uncache_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARCACHE" *)
output wire [3 : 0] data_uncache_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARPROT" *)
output wire [2 : 0] data_uncache_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARQOS" *)
output wire [3 : 0] data_uncache_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARVALID" *)
output wire data_uncache_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache ARREADY" *)
input wire data_uncache_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RID" *)
input wire [3 : 0] data_uncache_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RDATA" *)
input wire [31 : 0] data_uncache_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RRESP" *)
input wire [1 : 0] data_uncache_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RLAST" *)
input wire data_uncache_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RVALID" *)
input wire data_uncache_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache RREADY" *)
output wire data_uncache_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWID" *)
output wire [3 : 0] data_uncache_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWADDR" *)
output wire [31 : 0] data_uncache_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWLEN" *)
output wire [3 : 0] data_uncache_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWSIZE" *)
output wire [2 : 0] data_uncache_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWBURST" *)
output wire [1 : 0] data_uncache_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWLOCK" *)
output wire [1 : 0] data_uncache_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWCACHE" *)
output wire [3 : 0] data_uncache_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWPROT" *)
output wire [2 : 0] data_uncache_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWQOS" *)
output wire [3 : 0] data_uncache_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWVALID" *)
output wire data_uncache_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache AWREADY" *)
input wire data_uncache_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WID" *)
output wire [3 : 0] data_uncache_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WDATA" *)
output wire [31 : 0] data_uncache_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WSTRB" *)
output wire [3 : 0] data_uncache_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WLAST" *)
output wire data_uncache_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WVALID" *)
output wire data_uncache_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache WREADY" *)
input wire data_uncache_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache BID" *)
input wire [3 : 0] data_uncache_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache BRESP" *)
input wire [1 : 0] data_uncache_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache BVALID" *)
input wire data_uncache_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_uncache, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_cpu_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_uncache BREADY" *)
output wire data_uncache_bready;
output wire [31 : 0] debug_wb_pc_1;
output wire [3 : 0] debug_wb_rf_wen_1;
output wire [4 : 0] debug_wb_rf_wnum_1;
output wire [31 : 0] debug_wb_rf_wdata_1;
output wire [31 : 0] debug_wb_pc_2;
output wire [3 : 0] debug_wb_rf_wen_2;
output wire [4 : 0] debug_wb_rf_wnum_2;
output wire [31 : 0] debug_wb_rf_wdata_2;

  mycpu inst (
    .ext_int(ext_int),
    .aclk(aclk),
    .aresetn(aresetn),
    .inst_cache_arid(inst_cache_arid),
    .inst_cache_araddr(inst_cache_araddr),
    .inst_cache_arlen(inst_cache_arlen),
    .inst_cache_arsize(inst_cache_arsize),
    .inst_cache_arburst(inst_cache_arburst),
    .inst_cache_arlock(inst_cache_arlock),
    .inst_cache_arcache(inst_cache_arcache),
    .inst_cache_arprot(inst_cache_arprot),
    .inst_cache_arqos(inst_cache_arqos),
    .inst_cache_arvalid(inst_cache_arvalid),
    .inst_cache_arready(inst_cache_arready),
    .inst_cache_rid(inst_cache_rid),
    .inst_cache_rdata(inst_cache_rdata),
    .inst_cache_rresp(inst_cache_rresp),
    .inst_cache_rlast(inst_cache_rlast),
    .inst_cache_rvalid(inst_cache_rvalid),
    .inst_cache_rready(inst_cache_rready),
    .inst_cache_awid(inst_cache_awid),
    .inst_cache_awaddr(inst_cache_awaddr),
    .inst_cache_awlen(inst_cache_awlen),
    .inst_cache_awsize(inst_cache_awsize),
    .inst_cache_awburst(inst_cache_awburst),
    .inst_cache_awlock(inst_cache_awlock),
    .inst_cache_awcache(inst_cache_awcache),
    .inst_cache_awprot(inst_cache_awprot),
    .inst_cache_awqos(inst_cache_awqos),
    .inst_cache_awvalid(inst_cache_awvalid),
    .inst_cache_awready(inst_cache_awready),
    .inst_cache_wid(inst_cache_wid),
    .inst_cache_wdata(inst_cache_wdata),
    .inst_cache_wstrb(inst_cache_wstrb),
    .inst_cache_wlast(inst_cache_wlast),
    .inst_cache_wvalid(inst_cache_wvalid),
    .inst_cache_wready(inst_cache_wready),
    .inst_cache_bid(inst_cache_bid),
    .inst_cache_bresp(inst_cache_bresp),
    .inst_cache_bvalid(inst_cache_bvalid),
    .inst_cache_bready(inst_cache_bready),
    .inst_uncache_arid(inst_uncache_arid),
    .inst_uncache_araddr(inst_uncache_araddr),
    .inst_uncache_arlen(inst_uncache_arlen),
    .inst_uncache_arsize(inst_uncache_arsize),
    .inst_uncache_arburst(inst_uncache_arburst),
    .inst_uncache_arlock(inst_uncache_arlock),
    .inst_uncache_arcache(inst_uncache_arcache),
    .inst_uncache_arprot(inst_uncache_arprot),
    .inst_uncache_arqos(inst_uncache_arqos),
    .inst_uncache_arvalid(inst_uncache_arvalid),
    .inst_uncache_arready(inst_uncache_arready),
    .inst_uncache_rid(inst_uncache_rid),
    .inst_uncache_rdata(inst_uncache_rdata),
    .inst_uncache_rresp(inst_uncache_rresp),
    .inst_uncache_rlast(inst_uncache_rlast),
    .inst_uncache_rvalid(inst_uncache_rvalid),
    .inst_uncache_rready(inst_uncache_rready),
    .inst_uncache_awid(inst_uncache_awid),
    .inst_uncache_awaddr(inst_uncache_awaddr),
    .inst_uncache_awlen(inst_uncache_awlen),
    .inst_uncache_awsize(inst_uncache_awsize),
    .inst_uncache_awburst(inst_uncache_awburst),
    .inst_uncache_awlock(inst_uncache_awlock),
    .inst_uncache_awcache(inst_uncache_awcache),
    .inst_uncache_awprot(inst_uncache_awprot),
    .inst_uncache_awqos(inst_uncache_awqos),
    .inst_uncache_awvalid(inst_uncache_awvalid),
    .inst_uncache_awready(inst_uncache_awready),
    .inst_uncache_wid(inst_uncache_wid),
    .inst_uncache_wdata(inst_uncache_wdata),
    .inst_uncache_wstrb(inst_uncache_wstrb),
    .inst_uncache_wlast(inst_uncache_wlast),
    .inst_uncache_wvalid(inst_uncache_wvalid),
    .inst_uncache_wready(inst_uncache_wready),
    .inst_uncache_bid(inst_uncache_bid),
    .inst_uncache_bresp(inst_uncache_bresp),
    .inst_uncache_bvalid(inst_uncache_bvalid),
    .inst_uncache_bready(inst_uncache_bready),
    .data_cache_arid(data_cache_arid),
    .data_cache_araddr(data_cache_araddr),
    .data_cache_arlen(data_cache_arlen),
    .data_cache_arsize(data_cache_arsize),
    .data_cache_arburst(data_cache_arburst),
    .data_cache_arlock(data_cache_arlock),
    .data_cache_arcache(data_cache_arcache),
    .data_cache_arprot(data_cache_arprot),
    .data_cache_arqos(data_cache_arqos),
    .data_cache_arvalid(data_cache_arvalid),
    .data_cache_arready(data_cache_arready),
    .data_cache_rid(data_cache_rid),
    .data_cache_rdata(data_cache_rdata),
    .data_cache_rresp(data_cache_rresp),
    .data_cache_rlast(data_cache_rlast),
    .data_cache_rvalid(data_cache_rvalid),
    .data_cache_rready(data_cache_rready),
    .data_cache_awid(data_cache_awid),
    .data_cache_awaddr(data_cache_awaddr),
    .data_cache_awlen(data_cache_awlen),
    .data_cache_awsize(data_cache_awsize),
    .data_cache_awburst(data_cache_awburst),
    .data_cache_awlock(data_cache_awlock),
    .data_cache_awcache(data_cache_awcache),
    .data_cache_awprot(data_cache_awprot),
    .data_cache_awqos(data_cache_awqos),
    .data_cache_awvalid(data_cache_awvalid),
    .data_cache_awready(data_cache_awready),
    .data_cache_wid(data_cache_wid),
    .data_cache_wdata(data_cache_wdata),
    .data_cache_wstrb(data_cache_wstrb),
    .data_cache_wlast(data_cache_wlast),
    .data_cache_wvalid(data_cache_wvalid),
    .data_cache_wready(data_cache_wready),
    .data_cache_bid(data_cache_bid),
    .data_cache_bresp(data_cache_bresp),
    .data_cache_bvalid(data_cache_bvalid),
    .data_cache_bready(data_cache_bready),
    .data_uncache_arid(data_uncache_arid),
    .data_uncache_araddr(data_uncache_araddr),
    .data_uncache_arlen(data_uncache_arlen),
    .data_uncache_arsize(data_uncache_arsize),
    .data_uncache_arburst(data_uncache_arburst),
    .data_uncache_arlock(data_uncache_arlock),
    .data_uncache_arcache(data_uncache_arcache),
    .data_uncache_arprot(data_uncache_arprot),
    .data_uncache_arqos(data_uncache_arqos),
    .data_uncache_arvalid(data_uncache_arvalid),
    .data_uncache_arready(data_uncache_arready),
    .data_uncache_rid(data_uncache_rid),
    .data_uncache_rdata(data_uncache_rdata),
    .data_uncache_rresp(data_uncache_rresp),
    .data_uncache_rlast(data_uncache_rlast),
    .data_uncache_rvalid(data_uncache_rvalid),
    .data_uncache_rready(data_uncache_rready),
    .data_uncache_awid(data_uncache_awid),
    .data_uncache_awaddr(data_uncache_awaddr),
    .data_uncache_awlen(data_uncache_awlen),
    .data_uncache_awsize(data_uncache_awsize),
    .data_uncache_awburst(data_uncache_awburst),
    .data_uncache_awlock(data_uncache_awlock),
    .data_uncache_awcache(data_uncache_awcache),
    .data_uncache_awprot(data_uncache_awprot),
    .data_uncache_awqos(data_uncache_awqos),
    .data_uncache_awvalid(data_uncache_awvalid),
    .data_uncache_awready(data_uncache_awready),
    .data_uncache_wid(data_uncache_wid),
    .data_uncache_wdata(data_uncache_wdata),
    .data_uncache_wstrb(data_uncache_wstrb),
    .data_uncache_wlast(data_uncache_wlast),
    .data_uncache_wvalid(data_uncache_wvalid),
    .data_uncache_wready(data_uncache_wready),
    .data_uncache_bid(data_uncache_bid),
    .data_uncache_bresp(data_uncache_bresp),
    .data_uncache_bvalid(data_uncache_bvalid),
    .data_uncache_bready(data_uncache_bready),
    .debug_wb_pc_1(debug_wb_pc_1),
    .debug_wb_rf_wen_1(debug_wb_rf_wen_1),
    .debug_wb_rf_wnum_1(debug_wb_rf_wnum_1),
    .debug_wb_rf_wdata_1(debug_wb_rf_wdata_1),
    .debug_wb_pc_2(debug_wb_pc_2),
    .debug_wb_rf_wen_2(debug_wb_rf_wen_2),
    .debug_wb_rf_wnum_2(debug_wb_rf_wnum_2),
    .debug_wb_rf_wdata_2(debug_wb_rf_wdata_2)
  );
endmodule
