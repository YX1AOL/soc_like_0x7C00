-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:12:02 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_clk_wiz_0_0/bd_top_clk_wiz_0_0_stub.vhdl
-- Design      : bd_top_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_top_clk_wiz_0_0 is
  Port ( 
    clk_cpu : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end bd_top_clk_wiz_0_0;

architecture stub of bd_top_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_cpu,clk_in1";
begin
end;
