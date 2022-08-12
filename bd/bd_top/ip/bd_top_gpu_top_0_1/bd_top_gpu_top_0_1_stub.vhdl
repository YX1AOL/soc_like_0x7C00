-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:15:26 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_gpu_top_0_1/bd_top_gpu_top_0_1_stub.vhdl
-- Design      : bd_top_gpu_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_top_gpu_top_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_awlock : in STD_LOGIC;
    s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awvalid : in STD_LOGIC;
    s_awready : out STD_LOGIC;
    s_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wlast : in STD_LOGIC;
    s_wvalid : in STD_LOGIC;
    s_wready : out STD_LOGIC;
    s_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_bvalid : out STD_LOGIC;
    s_bready : in STD_LOGIC;
    s_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_arlock : in STD_LOGIC;
    s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arvalid : in STD_LOGIC;
    s_arready : out STD_LOGIC;
    s_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rlast : out STD_LOGIC;
    s_rvalid : out STD_LOGIC;
    s_rready : in STD_LOGIC;
    lcd_clk : in STD_LOGIC;
    lcd_rst : out STD_LOGIC;
    lcd_cs : out STD_LOGIC;
    lcd_rs : out STD_LOGIC;
    lcd_wr : out STD_LOGIC;
    lcd_rd : out STD_LOGIC;
    lcd_data_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    lcd_bl_ctr : out STD_LOGIC;
    ct_int : inout STD_LOGIC;
    ct_sda : inout STD_LOGIC;
    ct_scl : out STD_LOGIC;
    ct_rstn : out STD_LOGIC
  );

end bd_top_gpu_top_0_1;

architecture stub of bd_top_gpu_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_awid[3:0],s_awaddr[31:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awvalid,s_awready,s_wid[3:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[3:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[3:0],s_araddr[31:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arvalid,s_arready,s_rid[3:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,lcd_clk,lcd_rst,lcd_cs,lcd_rs,lcd_wr,lcd_rd,lcd_data_io[15:0],lcd_bl_ctr,ct_int,ct_sda,ct_scl,ct_rstn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gpu_top,Vivado 2019.2";
begin
end;