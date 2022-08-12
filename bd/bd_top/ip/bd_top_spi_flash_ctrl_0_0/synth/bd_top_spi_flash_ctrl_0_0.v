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


// IP VLNV: xilinx.com:module_ref:spi_flash_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "spi_flash_ctrl,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "bd_top_spi_flash_ctrl_0_0,spi_flash_ctrl,{}" *)
(* CORE_GENERATION_INFO = "bd_top_spi_flash_ctrl_0_0,spi_flash_ctrl,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=spi_flash_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ID_WIDTH=6}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_top_spi_flash_ctrl_0_0 (
  aclk,
  aresetn,
  spi_addr,
  power_down_req,
  power_down_ack,
  fast_startup,
  s_awlen,
  s_awcache,
  s_awid,
  s_awaddr,
  s_awsize,
  s_awprot,
  s_awburst,
  s_awlock,
  s_awvalid,
  s_awready,
  s_wid,
  s_wdata,
  s_wstrb,
  s_wlast,
  s_wvalid,
  s_wready,
  s_bid,
  s_bresp,
  s_bvalid,
  s_bready,
  s_arlen,
  s_arcache,
  s_arid,
  s_araddr,
  s_arsize,
  s_arprot,
  s_arburst,
  s_arlock,
  s_arvalid,
  s_arready,
  s_rid,
  s_rdata,
  s_rresp,
  s_rlast,
  s_rvalid,
  s_rready,
  SPI_CLK,
  SPI_CS,
  SPI_MISO,
  SPI_MOSI,
  inta_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s, FREQ_HZ 33000000, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire [15 : 0] spi_addr;
input wire power_down_req;
output wire power_down_ack;
input wire fast_startup;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLEN" *)
input wire [3 : 0] s_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWCACHE" *)
input wire [3 : 0] s_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWID" *)
input wire [5 : 0] s_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWADDR" *)
input wire [31 : 0] s_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWSIZE" *)
input wire [2 : 0] s_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWPROT" *)
input wire [2 : 0] s_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWBURST" *)
input wire [1 : 0] s_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLOCK" *)
input wire [1 : 0] s_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWVALID" *)
input wire s_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWREADY" *)
output wire s_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WID" *)
input wire [5 : 0] s_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WDATA" *)
input wire [31 : 0] s_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WSTRB" *)
input wire [3 : 0] s_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WLAST" *)
input wire s_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WVALID" *)
input wire s_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WREADY" *)
output wire s_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BID" *)
output wire [5 : 0] s_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BRESP" *)
output wire [1 : 0] s_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BVALID" *)
output wire s_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BREADY" *)
input wire s_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLEN" *)
input wire [3 : 0] s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARCACHE" *)
input wire [3 : 0] s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARID" *)
input wire [5 : 0] s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARADDR" *)
input wire [31 : 0] s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARSIZE" *)
input wire [2 : 0] s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARPROT" *)
input wire [2 : 0] s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARBURST" *)
input wire [1 : 0] s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLOCK" *)
input wire [1 : 0] s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARVALID" *)
input wire s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARREADY" *)
output wire s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RID" *)
output wire [5 : 0] s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RDATA" *)
output wire [31 : 0] s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RRESP" *)
output wire [1 : 0] s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RLAST" *)
output wire s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RVALID" *)
output wire s_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER\
_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RREADY" *)
input wire s_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPI_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_top_spi_flash_ctrl_0_0_SPI_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SPI_CLK CLK" *)
output wire SPI_CLK;
output wire SPI_CS;
inout wire SPI_MISO;
inout wire SPI_MOSI;
output wire inta_o;

  spi_flash_ctrl #(
    .ID_WIDTH(6)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .spi_addr(spi_addr),
    .power_down_req(power_down_req),
    .power_down_ack(power_down_ack),
    .fast_startup(fast_startup),
    .s_awlen(s_awlen),
    .s_awcache(s_awcache),
    .s_awid(s_awid),
    .s_awaddr(s_awaddr),
    .s_awsize(s_awsize),
    .s_awprot(s_awprot),
    .s_awburst(s_awburst),
    .s_awlock(s_awlock),
    .s_awvalid(s_awvalid),
    .s_awready(s_awready),
    .s_wid(s_wid),
    .s_wdata(s_wdata),
    .s_wstrb(s_wstrb),
    .s_wlast(s_wlast),
    .s_wvalid(s_wvalid),
    .s_wready(s_wready),
    .s_bid(s_bid),
    .s_bresp(s_bresp),
    .s_bvalid(s_bvalid),
    .s_bready(s_bready),
    .s_arlen(s_arlen),
    .s_arcache(s_arcache),
    .s_arid(s_arid),
    .s_araddr(s_araddr),
    .s_arsize(s_arsize),
    .s_arprot(s_arprot),
    .s_arburst(s_arburst),
    .s_arlock(s_arlock),
    .s_arvalid(s_arvalid),
    .s_arready(s_arready),
    .s_rid(s_rid),
    .s_rdata(s_rdata),
    .s_rresp(s_rresp),
    .s_rlast(s_rlast),
    .s_rvalid(s_rvalid),
    .s_rready(s_rready),
    .SPI_CLK(SPI_CLK),
    .SPI_CS(SPI_CS),
    .SPI_MISO(SPI_MISO),
    .SPI_MOSI(SPI_MOSI),
    .inta_o(inta_o)
  );
endmodule
