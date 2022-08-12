-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:14:09 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_confreg_0_1/bd_top_confreg_0_1_stub.vhdl
-- Design      : bd_top_confreg_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_top_confreg_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_awlock : in STD_LOGIC;
    s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awvalid : in STD_LOGIC;
    s_awready : out STD_LOGIC;
    s_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wlast : in STD_LOGIC;
    s_wvalid : in STD_LOGIC;
    s_wready : out STD_LOGIC;
    s_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_bvalid : out STD_LOGIC;
    s_bready : in STD_LOGIC;
    s_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_arlock : in STD_LOGIC;
    s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arvalid : in STD_LOGIC;
    s_arready : out STD_LOGIC;
    s_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rlast : out STD_LOGIC;
    s_rvalid : out STD_LOGIC;
    s_rready : in STD_LOGIC;
    order_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    finish_read_order : in STD_LOGIC;
    write_dma_end : in STD_LOGIC;
    cr00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr02 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr03 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr04 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr05 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr06 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr07 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led_rg0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    led_rg1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    num_csn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    num_a_g : out STD_LOGIC_VECTOR ( 6 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btn_key_col : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_key_row : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_step : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end bd_top_confreg_0_1;

architecture stub of bd_top_confreg_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_awid[5:0],s_awaddr[31:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awvalid,s_awready,s_wid[5:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[5:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[5:0],s_araddr[31:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arvalid,s_arready,s_rid[5:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,order_addr_reg[31:0],finish_read_order,write_dma_end,cr00[31:0],cr01[31:0],cr02[31:0],cr03[31:0],cr04[31:0],cr05[31:0],cr06[31:0],cr07[31:0],led[15:0],led_rg0[1:0],led_rg1[1:0],num_csn[7:0],num_a_g[6:0],switch[7:0],btn_key_col[3:0],btn_key_row[3:0],btn_step[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "confreg,Vivado 2019.2";
begin
end;
