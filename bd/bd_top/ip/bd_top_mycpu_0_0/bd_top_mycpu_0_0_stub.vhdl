-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:16:52 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_mycpu_0_0/bd_top_mycpu_0_0_stub.vhdl
-- Design      : bd_top_mycpu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_top_mycpu_0_0 is
  Port ( 
    ext_int : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    inst_cache_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_cache_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_cache_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_cache_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_arvalid : out STD_LOGIC;
    inst_cache_arready : in STD_LOGIC;
    inst_cache_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_cache_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_rlast : in STD_LOGIC;
    inst_cache_rvalid : in STD_LOGIC;
    inst_cache_rready : out STD_LOGIC;
    inst_cache_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_cache_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_cache_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_cache_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_awvalid : out STD_LOGIC;
    inst_cache_awready : in STD_LOGIC;
    inst_cache_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_cache_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_wlast : out STD_LOGIC;
    inst_cache_wvalid : out STD_LOGIC;
    inst_cache_wready : in STD_LOGIC;
    inst_cache_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_cache_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_cache_bvalid : in STD_LOGIC;
    inst_cache_bready : out STD_LOGIC;
    inst_uncache_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_uncache_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_uncache_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_uncache_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_arvalid : out STD_LOGIC;
    inst_uncache_arready : in STD_LOGIC;
    inst_uncache_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_uncache_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_rlast : in STD_LOGIC;
    inst_uncache_rvalid : in STD_LOGIC;
    inst_uncache_rready : out STD_LOGIC;
    inst_uncache_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_uncache_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_uncache_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_uncache_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_awvalid : out STD_LOGIC;
    inst_uncache_awready : in STD_LOGIC;
    inst_uncache_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_uncache_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_wlast : out STD_LOGIC;
    inst_uncache_wvalid : out STD_LOGIC;
    inst_uncache_wready : in STD_LOGIC;
    inst_uncache_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_uncache_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_uncache_bvalid : in STD_LOGIC;
    inst_uncache_bready : out STD_LOGIC;
    data_cache_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cache_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_cache_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_cache_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_arvalid : out STD_LOGIC;
    data_cache_arready : in STD_LOGIC;
    data_cache_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cache_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_rlast : in STD_LOGIC;
    data_cache_rvalid : in STD_LOGIC;
    data_cache_rready : out STD_LOGIC;
    data_cache_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cache_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_cache_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_cache_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_awvalid : out STD_LOGIC;
    data_cache_awready : in STD_LOGIC;
    data_cache_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cache_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_wlast : out STD_LOGIC;
    data_cache_wvalid : out STD_LOGIC;
    data_cache_wready : in STD_LOGIC;
    data_cache_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cache_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_cache_bvalid : in STD_LOGIC;
    data_cache_bready : out STD_LOGIC;
    data_uncache_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_uncache_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_uncache_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_uncache_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_arvalid : out STD_LOGIC;
    data_uncache_arready : in STD_LOGIC;
    data_uncache_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_uncache_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_rlast : in STD_LOGIC;
    data_uncache_rvalid : in STD_LOGIC;
    data_uncache_rready : out STD_LOGIC;
    data_uncache_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_uncache_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_uncache_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_uncache_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_awvalid : out STD_LOGIC;
    data_uncache_awready : in STD_LOGIC;
    data_uncache_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_uncache_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_wlast : out STD_LOGIC;
    data_uncache_wvalid : out STD_LOGIC;
    data_uncache_wready : in STD_LOGIC;
    data_uncache_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_uncache_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_uncache_bvalid : in STD_LOGIC;
    data_uncache_bready : out STD_LOGIC;
    debug_wb_pc_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_wen_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_wb_rf_wnum_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_pc_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_wen_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_wb_rf_wnum_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata_2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bd_top_mycpu_0_0;

architecture stub of bd_top_mycpu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ext_int[5:0],aclk,aresetn,inst_cache_arid[3:0],inst_cache_araddr[31:0],inst_cache_arlen[3:0],inst_cache_arsize[2:0],inst_cache_arburst[1:0],inst_cache_arlock[1:0],inst_cache_arcache[3:0],inst_cache_arprot[2:0],inst_cache_arqos[3:0],inst_cache_arvalid,inst_cache_arready,inst_cache_rid[3:0],inst_cache_rdata[31:0],inst_cache_rresp[1:0],inst_cache_rlast,inst_cache_rvalid,inst_cache_rready,inst_cache_awid[3:0],inst_cache_awaddr[31:0],inst_cache_awlen[3:0],inst_cache_awsize[2:0],inst_cache_awburst[1:0],inst_cache_awlock[1:0],inst_cache_awcache[3:0],inst_cache_awprot[2:0],inst_cache_awqos[3:0],inst_cache_awvalid,inst_cache_awready,inst_cache_wid[3:0],inst_cache_wdata[31:0],inst_cache_wstrb[3:0],inst_cache_wlast,inst_cache_wvalid,inst_cache_wready,inst_cache_bid[3:0],inst_cache_bresp[1:0],inst_cache_bvalid,inst_cache_bready,inst_uncache_arid[3:0],inst_uncache_araddr[31:0],inst_uncache_arlen[3:0],inst_uncache_arsize[2:0],inst_uncache_arburst[1:0],inst_uncache_arlock[1:0],inst_uncache_arcache[3:0],inst_uncache_arprot[2:0],inst_uncache_arqos[3:0],inst_uncache_arvalid,inst_uncache_arready,inst_uncache_rid[3:0],inst_uncache_rdata[31:0],inst_uncache_rresp[1:0],inst_uncache_rlast,inst_uncache_rvalid,inst_uncache_rready,inst_uncache_awid[3:0],inst_uncache_awaddr[31:0],inst_uncache_awlen[3:0],inst_uncache_awsize[2:0],inst_uncache_awburst[1:0],inst_uncache_awlock[1:0],inst_uncache_awcache[3:0],inst_uncache_awprot[2:0],inst_uncache_awqos[3:0],inst_uncache_awvalid,inst_uncache_awready,inst_uncache_wid[3:0],inst_uncache_wdata[31:0],inst_uncache_wstrb[3:0],inst_uncache_wlast,inst_uncache_wvalid,inst_uncache_wready,inst_uncache_bid[3:0],inst_uncache_bresp[1:0],inst_uncache_bvalid,inst_uncache_bready,data_cache_arid[3:0],data_cache_araddr[31:0],data_cache_arlen[3:0],data_cache_arsize[2:0],data_cache_arburst[1:0],data_cache_arlock[1:0],data_cache_arcache[3:0],data_cache_arprot[2:0],data_cache_arqos[3:0],data_cache_arvalid,data_cache_arready,data_cache_rid[3:0],data_cache_rdata[31:0],data_cache_rresp[1:0],data_cache_rlast,data_cache_rvalid,data_cache_rready,data_cache_awid[3:0],data_cache_awaddr[31:0],data_cache_awlen[3:0],data_cache_awsize[2:0],data_cache_awburst[1:0],data_cache_awlock[1:0],data_cache_awcache[3:0],data_cache_awprot[2:0],data_cache_awqos[3:0],data_cache_awvalid,data_cache_awready,data_cache_wid[3:0],data_cache_wdata[31:0],data_cache_wstrb[3:0],data_cache_wlast,data_cache_wvalid,data_cache_wready,data_cache_bid[3:0],data_cache_bresp[1:0],data_cache_bvalid,data_cache_bready,data_uncache_arid[3:0],data_uncache_araddr[31:0],data_uncache_arlen[3:0],data_uncache_arsize[2:0],data_uncache_arburst[1:0],data_uncache_arlock[1:0],data_uncache_arcache[3:0],data_uncache_arprot[2:0],data_uncache_arqos[3:0],data_uncache_arvalid,data_uncache_arready,data_uncache_rid[3:0],data_uncache_rdata[31:0],data_uncache_rresp[1:0],data_uncache_rlast,data_uncache_rvalid,data_uncache_rready,data_uncache_awid[3:0],data_uncache_awaddr[31:0],data_uncache_awlen[3:0],data_uncache_awsize[2:0],data_uncache_awburst[1:0],data_uncache_awlock[1:0],data_uncache_awcache[3:0],data_uncache_awprot[2:0],data_uncache_awqos[3:0],data_uncache_awvalid,data_uncache_awready,data_uncache_wid[3:0],data_uncache_wdata[31:0],data_uncache_wstrb[3:0],data_uncache_wlast,data_uncache_wvalid,data_uncache_wready,data_uncache_bid[3:0],data_uncache_bresp[1:0],data_uncache_bvalid,data_uncache_bready,debug_wb_pc_1[31:0],debug_wb_rf_wen_1[3:0],debug_wb_rf_wnum_1[4:0],debug_wb_rf_wdata_1[31:0],debug_wb_pc_2[31:0],debug_wb_rf_wen_2[3:0],debug_wb_rf_wnum_2[4:0],debug_wb_rf_wdata_2[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mycpu,Vivado 2019.2";
begin
end;
