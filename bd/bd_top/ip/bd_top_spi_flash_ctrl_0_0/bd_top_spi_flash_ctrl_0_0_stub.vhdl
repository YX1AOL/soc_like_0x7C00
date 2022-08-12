-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:12:06 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_spi_flash_ctrl_0_0/bd_top_spi_flash_ctrl_0_0_stub.vhdl
-- Design      : bd_top_spi_flash_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_top_spi_flash_ctrl_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    spi_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    power_down_req : in STD_LOGIC;
    power_down_ack : out STD_LOGIC;
    fast_startup : in STD_LOGIC;
    s_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
    s_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_arvalid : in STD_LOGIC;
    s_arready : out STD_LOGIC;
    s_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rlast : out STD_LOGIC;
    s_rvalid : out STD_LOGIC;
    s_rready : in STD_LOGIC;
    SPI_CLK : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    SPI_MISO : inout STD_LOGIC;
    SPI_MOSI : inout STD_LOGIC;
    inta_o : out STD_LOGIC
  );

end bd_top_spi_flash_ctrl_0_0;

architecture stub of bd_top_spi_flash_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,spi_addr[15:0],power_down_req,power_down_ack,fast_startup,s_awlen[3:0],s_awcache[3:0],s_awid[5:0],s_awaddr[31:0],s_awsize[2:0],s_awprot[2:0],s_awburst[1:0],s_awlock[1:0],s_awvalid,s_awready,s_wid[5:0],s_wdata[31:0],s_wstrb[3:0],s_wlast,s_wvalid,s_wready,s_bid[5:0],s_bresp[1:0],s_bvalid,s_bready,s_arlen[3:0],s_arcache[3:0],s_arid[5:0],s_araddr[31:0],s_arsize[2:0],s_arprot[2:0],s_arburst[1:0],s_arlock[1:0],s_arvalid,s_arready,s_rid[5:0],s_rdata[31:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,SPI_CLK,SPI_CS,SPI_MISO,SPI_MOSI,inta_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_flash_ctrl,Vivado 2019.2";
begin
end;
