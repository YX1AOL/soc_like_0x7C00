-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:13:34 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_reset_synchronizer_0_0/bd_top_reset_synchronizer_0_0_sim_netlist.vhdl
-- Design      : bd_top_reset_synchronizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_reset_synchronizer_0_0_reset_synchronizer is
  port (
    rst_o : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_reset_synchronizer_0_0_reset_synchronizer : entity is "reset_synchronizer";
end bd_top_reset_synchronizer_0_0_reset_synchronizer;

architecture STRUCTURE of bd_top_reset_synchronizer_0_0_reset_synchronizer is
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \reset_negedge.reset_sync[2]_i_1_n_0\ : STD_LOGIC;
begin
\reset_negedge.reset_sync[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_i,
      O => \reset_negedge.reset_sync[2]_i_1_n_0\
    );
\reset_negedge.reset_sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \reset_negedge.reset_sync[2]_i_1_n_0\,
      D => '1',
      Q => p_0_in(1)
    );
\reset_negedge.reset_sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \reset_negedge.reset_sync[2]_i_1_n_0\,
      D => p_0_in(1),
      Q => p_0_in(2)
    );
\reset_negedge.reset_sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \reset_negedge.reset_sync[2]_i_1_n_0\,
      D => p_0_in(2),
      Q => rst_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_reset_synchronizer_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_top_reset_synchronizer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_reset_synchronizer_0_0 : entity is "bd_top_reset_synchronizer_0_0,reset_synchronizer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_top_reset_synchronizer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_top_reset_synchronizer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_top_reset_synchronizer_0_0 : entity is "reset_synchronizer,Vivado 2019.2";
end bd_top_reset_synchronizer_0_0;

architecture STRUCTURE of bd_top_reset_synchronizer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN bd_top_mig_7series_0_0_ui_clk, INSERT_VIP 0";
begin
inst: entity work.bd_top_reset_synchronizer_0_0_reset_synchronizer
     port map (
      clk => clk,
      rst_i => rst_i,
      rst_o => rst_o
    );
end STRUCTURE;
