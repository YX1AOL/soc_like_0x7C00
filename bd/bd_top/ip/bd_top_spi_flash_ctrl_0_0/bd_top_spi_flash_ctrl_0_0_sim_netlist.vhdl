-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:12:06 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_spi_flash_ctrl_0_0/bd_top_spi_flash_ctrl_0_0_sim_netlist.vhdl
-- Design      : bd_top_spi_flash_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_spi_flash_ctrl_0_0_spi_fifo4 is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    buf_busy_reg : out STD_LOGIC;
    \buf_addr_reg[0]\ : out STD_LOGIC;
    second_write_reg : out STD_LOGIC;
    \buf_len_reg[3]\ : out STD_LOGIC;
    \rp__0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn : in STD_LOGIC;
    \rdata_reg[3][7]_i_7_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \wp_reg[1]_0\ : in STD_LOGIC;
    \rdata_reg[3][0]\ : in STD_LOGIC;
    \rdata_reg[3][0]_0\ : in STD_LOGIC;
    rvalid045_out : in STD_LOGIC;
    \rdata_reg[3][7]_i_7_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rdata_reg[3][1]\ : in STD_LOGIC;
    \rdata_reg[3][1]_0\ : in STD_LOGIC;
    gb_reg_0 : in STD_LOGIC;
    second_write : in STD_LOGIC;
    buf_busy : in STD_LOGIC;
    spif_i_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0_3_0_5_i_3_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rdata_reg[3][7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rdata_reg[3][6]\ : in STD_LOGIC;
    \rdata_reg[3][3]\ : in STD_LOGIC;
    \rdata_reg[3][3]_0\ : in STD_LOGIC;
    \rdata_reg[3][4]\ : in STD_LOGIC;
    \rdata_reg[3][5]\ : in STD_LOGIC;
    \rdata_reg[3][2]\ : in STD_LOGIC;
    \rdata_reg[3][2]_0\ : in STD_LOGIC;
    buf_busy_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wvalid : in STD_LOGIC;
    \rdata_reg[3][2]_1\ : in STD_LOGIC;
    \rdata_reg[3][7]_0\ : in STD_LOGIC;
    spif : in STD_LOGIC;
    \rdata_reg[3][6]_0\ : in STD_LOGIC;
    wcol : in STD_LOGIC;
    \rdata[3][6]_i_3_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_spi_flash_ctrl_0_0_spi_fifo4 : entity is "spi_fifo4";
end bd_top_spi_flash_ctrl_0_0_spi_fifo4;

architecture STRUCTURE of bd_top_spi_flash_ctrl_0_0_spi_fifo4 is
  signal \^buf_addr_reg[0]\ : STD_LOGIC;
  signal \^buf_busy_reg\ : STD_LOGIC;
  signal \^buf_len_reg[3]\ : STD_LOGIC;
  signal dout_2 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gb : STD_LOGIC;
  signal gb0 : STD_LOGIC;
  signal gb_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_3_0_5_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_3_0_5_i_5_n_0 : STD_LOGIC;
  signal \rdata[3][0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][0]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[3][1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][1]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[3][2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][5]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][6]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_9_n_0\ : STD_LOGIC;
  signal \rdata_reg[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_reg[3][6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_reg[3][7]_i_7_n_0\ : STD_LOGIC;
  signal rfre : STD_LOGIC;
  signal rp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rp[0]_i_1_n_0\ : STD_LOGIC;
  signal \rp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^rp__0\ : STD_LOGIC;
  signal \^second_write_reg\ : STD_LOGIC;
  signal wp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wp[0]_i_1_n_0\ : STD_LOGIC;
  signal \wp[1]_i_1_n_0\ : STD_LOGIC;
  signal NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gb_i_2 : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_3_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_3_0_5 : label is 32;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_3_0_5 : label is "inst/simple_spi/rfifo/mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_3_0_5 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_3_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_3_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_3_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_3_6_7 : label is 32;
  attribute RTL_RAM_NAME of mem_reg_0_3_6_7 : label is "inst/simple_spi/rfifo/mem";
  attribute ram_addr_begin of mem_reg_0_3_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_3_6_7 : label is 3;
  attribute ram_offset of mem_reg_0_3_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_3_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_3_6_7 : label is 7;
  attribute SOFT_HLUTNM of \rdata[2][7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[3][0]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[3][1]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[3][3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rp[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rp[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wp[1]_i_1\ : label is "soft_lutpair2";
begin
  \buf_addr_reg[0]\ <= \^buf_addr_reg[0]\;
  buf_busy_reg <= \^buf_busy_reg\;
  \buf_len_reg[3]\ <= \^buf_len_reg[3]\;
  \rp__0\ <= \^rp__0\;
  second_write_reg <= \^second_write_reg\;
buf_busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => buf_busy_reg_0(3),
      I1 => buf_busy_reg_0(0),
      I2 => buf_busy_reg_0(1),
      I3 => buf_busy_reg_0(2),
      O => \^buf_len_reg[3]\
    );
gb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2000000"
    )
        port map (
      I0 => gb,
      I1 => rfre,
      I2 => gb0,
      I3 => aresetn,
      I4 => \rdata_reg[3][7]_i_7_0\(5),
      O => gb_i_1_n_0
    );
gb_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08404008"
    )
        port map (
      I0 => rp(0),
      I1 => \wp_reg[1]_0\,
      I2 => wp(0),
      I3 => wp(1),
      I4 => rp(1),
      O => gb0
    );
gb_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gb_i_1_n_0,
      Q => gb,
      R => '0'
    );
\io_hit0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => spi_addr(3),
      I1 => Q(7),
      O => S(1)
    );
\io_hit0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(4),
      I1 => spi_addr(0),
      I2 => Q(5),
      I3 => spi_addr(1),
      I4 => spi_addr(2),
      I5 => Q(6),
      O => S(0)
    );
mem_reg_0_3_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rp(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rp(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rp(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wp(1 downto 0),
      DIA(1 downto 0) => \rdata[3][6]_i_3_0\(1 downto 0),
      DIB(1 downto 0) => \rdata[3][6]_i_3_0\(3 downto 2),
      DIC(1 downto 0) => \rdata[3][6]_i_3_0\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_2(2 downto 1),
      DOB(1 downto 0) => dout_2(4 downto 3),
      DOC(1 downto 0) => dout_2(6 downto 5),
      DOD(1 downto 0) => NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => \wp_reg[1]_0\
    );
mem_reg_0_3_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => buf_busy,
      I1 => \^second_write_reg\,
      I2 => spif_i_2(1),
      O => \^buf_busy_reg\
    );
mem_reg_0_3_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAABAAABAA"
    )
        port map (
      I0 => second_write,
      I1 => mem_reg_0_3_0_5_i_4_n_0,
      I2 => \^buf_len_reg[3]\,
      I3 => CO(0),
      I4 => mem_reg_0_3_0_5_i_5_n_0,
      I5 => mem_reg_0_3_0_5_i_3_0(0),
      O => \^second_write_reg\
    );
mem_reg_0_3_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => s_wvalid,
      I1 => spif_i_2(0),
      I2 => buf_busy,
      I3 => gb_reg_0,
      I4 => mem_reg_0_3_0_5_i_3_0(1),
      I5 => mem_reg_0_3_0_5_i_3_0(2),
      O => mem_reg_0_3_0_5_i_4_n_0
    );
mem_reg_0_3_0_5_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      O => mem_reg_0_3_0_5_i_5_n_0
    );
mem_reg_0_3_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rp(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rp(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rp(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wp(1 downto 0),
      DIA(1 downto 0) => \rdata[3][6]_i_3_0\(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_2(8 downto 7),
      DOB(1 downto 0) => NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => \wp_reg[1]_0\
    );
\rdata[2][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^buf_addr_reg[0]\
    );
\rdata[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAAFF0CAAAA"
    )
        port map (
      I0 => \rdata_reg[3][0]\,
      I1 => \rdata[3][0]_i_3_n_0\,
      I2 => Q(2),
      I3 => \rdata_reg[3][0]_0\,
      I4 => rvalid045_out,
      I5 => Q(3),
      O => D(0)
    );
\rdata[3][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(0),
      I1 => dout_2(1),
      I2 => Q(1),
      I3 => \rdata[3][0]_i_6_n_0\,
      I4 => Q(0),
      I5 => \rdata_reg[3][7]_i_7_0\(0),
      O => \rdata[3][0]_i_3_n_0\
    );
\rdata[3][0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => gb,
      I1 => wp(1),
      I2 => rp(1),
      I3 => wp(0),
      I4 => rp(0),
      O => \rdata[3][0]_i_6_n_0\
    );
\rdata[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAAFF0CAAAA"
    )
        port map (
      I0 => \rdata_reg[3][1]\,
      I1 => \rdata[3][1]_i_3_n_0\,
      I2 => Q(2),
      I3 => \rdata_reg[3][1]_0\,
      I4 => rvalid045_out,
      I5 => Q(3),
      O => D(1)
    );
\rdata[3][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(1),
      I1 => dout_2(2),
      I2 => Q(1),
      I3 => \rdata[3][1]_i_5_n_0\,
      I4 => Q(0),
      I5 => \rdata_reg[3][7]_i_7_0\(1),
      O => \rdata[3][1]_i_3_n_0\
    );
\rdata[3][1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => gb,
      I1 => wp(1),
      I2 => rp(1),
      I3 => wp(0),
      I4 => rp(0),
      O => \rdata[3][1]_i_5_n_0\
    );
\rdata[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAAFF0CAAAA"
    )
        port map (
      I0 => \rdata_reg[3][2]\,
      I1 => \rdata[3][2]_i_3_n_0\,
      I2 => Q(2),
      I3 => \rdata_reg[3][2]_0\,
      I4 => rvalid045_out,
      I5 => Q(3),
      O => D(2)
    );
\rdata[3][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(2),
      I1 => dout_2(3),
      I2 => Q(1),
      I3 => \rdata_reg[3][2]_1\,
      I4 => Q(0),
      I5 => \rdata_reg[3][7]_i_7_0\(2),
      O => \rdata[3][2]_i_3_n_0\
    );
\rdata[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B8B800FFB8B8"
    )
        port map (
      I0 => \rdata_reg[3][7]\(0),
      I1 => \rdata_reg[3][6]\,
      I2 => \rdata_reg[3][7]\(1),
      I3 => \rdata[3][3]_i_2_n_0\,
      I4 => rvalid045_out,
      I5 => Q(3),
      O => D(3)
    );
\rdata[3][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5455"
    )
        port map (
      I0 => \rdata[3][3]_i_3_n_0\,
      I1 => \rdata_reg[3][3]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \rdata_reg[3][3]_0\,
      O => \rdata[3][3]_i_2_n_0\
    );
\rdata[3][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA00F0CC"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(3),
      I1 => \rdata_reg[3][7]_i_7_0\(3),
      I2 => dout_2(4),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \rdata[3][3]_i_3_n_0\
    );
\rdata[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F101F1F1F101010"
    )
        port map (
      I0 => Q(3),
      I1 => \rdata[3][4]_i_2_n_0\,
      I2 => rvalid045_out,
      I3 => \rdata_reg[3][7]\(1),
      I4 => \rdata_reg[3][6]\,
      I5 => \rdata_reg[3][7]\(2),
      O => D(4)
    );
\rdata[3][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBBBBB8B888B88"
    )
        port map (
      I0 => \rdata_reg[3][4]\,
      I1 => Q(2),
      I2 => dout_2(5),
      I3 => Q(1),
      I4 => \rdata_reg[3][7]_i_7_1\(4),
      I5 => Q(0),
      O => \rdata[3][4]_i_2_n_0\
    );
\rdata[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F101F1F1F101010"
    )
        port map (
      I0 => Q(3),
      I1 => \rdata_reg[3][5]_i_2_n_0\,
      I2 => rvalid045_out,
      I3 => \rdata_reg[3][7]\(2),
      I4 => \rdata_reg[3][6]\,
      I5 => \rdata_reg[3][7]\(3),
      O => D(5)
    );
\rdata[3][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53F053FF"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(5),
      I1 => dout_2(6),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \rdata_reg[3][7]_i_7_0\(4),
      O => \rdata[3][5]_i_3_n_0\
    );
\rdata[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \rdata_reg[3][6]_i_2_n_0\,
      I1 => Q(3),
      I2 => rvalid045_out,
      I3 => \rdata_reg[3][7]\(3),
      I4 => \rdata_reg[3][6]\,
      I5 => \rdata_reg[3][7]\(4),
      O => D(6)
    );
\rdata[3][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(6),
      I1 => dout_2(7),
      I2 => Q(1),
      I3 => wcol,
      I4 => Q(0),
      I5 => \rdata_reg[3][7]_i_7_0\(5),
      O => \rdata[3][6]_i_3_n_0\
    );
\rdata[3][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_n_0\,
      I1 => Q(3),
      I2 => rvalid045_out,
      I3 => \rdata_reg[3][7]\(4),
      I4 => \rdata_reg[3][6]\,
      I5 => \rdata_reg[3][7]\(5),
      O => D(7)
    );
\rdata[3][7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_1\(7),
      I1 => dout_2(8),
      I2 => Q(1),
      I3 => spif,
      I4 => Q(0),
      I5 => \rdata_reg[3][7]_i_7_0\(6),
      O => \rdata[3][7]_i_9_n_0\
    );
\rdata_reg[3][5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rdata[3][5]_i_3_n_0\,
      I1 => \rdata_reg[3][5]\,
      O => \rdata_reg[3][5]_i_2_n_0\,
      S => Q(2)
    );
\rdata_reg[3][6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rdata[3][6]_i_3_n_0\,
      I1 => \rdata_reg[3][6]_0\,
      O => \rdata_reg[3][6]_i_2_n_0\,
      S => Q(2)
    );
\rdata_reg[3][7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rdata[3][7]_i_9_n_0\,
      I1 => \rdata_reg[3][7]_0\,
      O => \rdata_reg[3][7]_i_7_n_0\,
      S => Q(2)
    );
\rp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rfre,
      I1 => rp(0),
      O => \rp[0]_i_1_n_0\
    );
\rp[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rdata_reg[3][7]_i_7_0\(5),
      I1 => aresetn,
      O => \^rp__0\
    );
\rp[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rp(0),
      I1 => rfre,
      I2 => rp(1),
      O => \rp[1]_i_2_n_0\
    );
\rp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^buf_busy_reg\,
      I1 => \^buf_addr_reg[0]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => gb_reg_0,
      I5 => second_write,
      O => rfre
    );
\rp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rp[0]_i_1_n_0\,
      Q => rp(0),
      R => \^rp__0\
    );
\rp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rp[1]_i_2_n_0\,
      Q => rp(1),
      R => \^rp__0\
    );
\wp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wp_reg[1]_0\,
      I1 => wp(0),
      O => \wp[0]_i_1_n_0\
    );
\wp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wp(0),
      I1 => \wp_reg[1]_0\,
      I2 => wp(1),
      O => \wp[1]_i_1_n_0\
    );
\wp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wp[0]_i_1_n_0\,
      Q => wp(0),
      R => \^rp__0\
    );
\wp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wp[1]_i_1_n_0\,
      Q => wp(1),
      R => \^rp__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_spi_flash_ctrl_0_0_spi_fifo4_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gb_reg_0 : out STD_LOGIC;
    \wp_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    wcol0 : out STD_LOGIC;
    s_wdata_30_sp_1 : out STD_LOGIC;
    s_wdata_15_sp_1 : out STD_LOGIC;
    busy0 : out STD_LOGIC;
    \rp_reg[0]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \treg_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_sck : in STD_LOGIC;
    wfre : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    gb_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wcol_reg : in STD_LOGIC;
    wcol_reg_0 : in STD_LOGIC;
    wcol_reg_1 : in STD_LOGIC;
    wcol : in STD_LOGIC;
    wcol_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wcol_reg_3 : in STD_LOGIC;
    wcol_reg_4 : in STD_LOGIC;
    wcol_reg_5 : in STD_LOGIC;
    second_write : in STD_LOGIC;
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sck_o_reg : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    busy_reg : in STD_LOGIC;
    \sample__0\ : in STD_LOGIC;
    sdi_i : in STD_LOGIC;
    \treg_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \rp__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_spi_flash_ctrl_0_0_spi_fifo4_0 : entity is "spi_fifo4";
end bd_top_spi_flash_ctrl_0_0_spi_fifo4_0;

architecture STRUCTURE of bd_top_spi_flash_ctrl_0_0_spi_fifo4_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dout : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gb : STD_LOGIC;
  signal \gb_i_1__0_n_0\ : STD_LOGIC;
  signal \gb_i_2__0_n_0\ : STD_LOGIC;
  signal \^gb_reg_0\ : STD_LOGIC;
  signal rp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rp[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rp[1]_i_1_n_0\ : STD_LOGIC;
  signal s_wdata_15_sn_1 : STD_LOGIC;
  signal s_wdata_30_sn_1 : STD_LOGIC;
  signal sck_o_i_3_n_0 : STD_LOGIC;
  signal sck_o_i_5_n_0 : STD_LOGIC;
  signal sck_o_reg_i_2_n_0 : STD_LOGIC;
  signal \spcr[0]_i_2_n_0\ : STD_LOGIC;
  signal \spcr[1]_i_2_n_0\ : STD_LOGIC;
  signal \spcr[2]_i_2_n_0\ : STD_LOGIC;
  signal \spcr[3]_i_2_n_0\ : STD_LOGIC;
  signal \spcr[5]_i_2_n_0\ : STD_LOGIC;
  signal \sper[4]_i_2_n_0\ : STD_LOGIC;
  signal wfwe : STD_LOGIC;
  signal wp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wp[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wp[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^wp_reg[1]_0\ : STD_LOGIC;
  signal NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gb_i_2__0\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_3_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_3_0_5 : label is 32;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_3_0_5 : label is "inst/simple_spi/wfifo/mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_3_0_5 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_3_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_3_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_3_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_3_6_7 : label is 32;
  attribute RTL_RAM_NAME of mem_reg_0_3_6_7 : label is "inst/simple_spi/wfifo/mem";
  attribute ram_addr_begin of mem_reg_0_3_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_3_6_7 : label is 3;
  attribute ram_offset of mem_reg_0_3_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_3_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_3_6_7 : label is 7;
  attribute SOFT_HLUTNM of \rp[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \treg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \treg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \treg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \treg[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \treg[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \treg[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of wcol_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wp[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wp[1]_i_1__0\ : label is "soft_lutpair9";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  gb_reg_0 <= \^gb_reg_0\;
  s_wdata_15_sp_1 <= s_wdata_15_sn_1;
  s_wdata_30_sp_1 <= s_wdata_30_sn_1;
  \wp_reg[1]_0\ <= \^wp_reg[1]_0\;
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF6FFFFFFFF"
    )
        port map (
      I0 => rp(0),
      I1 => wp(0),
      I2 => rp(1),
      I3 => wp(1),
      I4 => gb,
      I5 => busy_reg,
      O => busy0
    );
\gb_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CAE000000000000"
    )
        port map (
      I0 => gb,
      I1 => wfwe,
      I2 => \gb_i_2__0_n_0\,
      I3 => wfre,
      I4 => aresetn,
      I5 => gb_reg_1(2),
      O => \gb_i_1__0_n_0\
    );
\gb_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F96F"
    )
        port map (
      I0 => wp(1),
      I1 => rp(1),
      I2 => rp(0),
      I3 => wp(0),
      O => \gb_i_2__0_n_0\
    );
gb_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gb_i_1__0_n_0\,
      Q => gb,
      R => '0'
    );
mem_reg_0_3_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rp(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rp(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rp(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wp(1 downto 0),
      DIA(1 downto 0) => \^d\(1 downto 0),
      DIB(1 downto 0) => \^d\(3 downto 2),
      DIC(1 downto 0) => \^d\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout(2 downto 1),
      DOB(1 downto 0) => dout(4 downto 3),
      DOC(1 downto 0) => dout(6 downto 5),
      DOD(1 downto 0) => NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => wfwe
    );
mem_reg_0_3_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000000"
    )
        port map (
      I0 => wcol_reg_2(2),
      I1 => wcol_reg_2(3),
      I2 => wcol_reg_3,
      I3 => wcol_reg_4,
      I4 => wcol_reg_5,
      I5 => second_write,
      O => wfwe
    );
mem_reg_0_3_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rp(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rp(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rp(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wp(1 downto 0),
      DIA(1 downto 0) => \^d\(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout(8 downto 7),
      DOB(1 downto 0) => NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => wfwe
    );
\rp[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wfre,
      I1 => rp(0),
      O => \rp[0]_i_1__0_n_0\
    );
\rp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rp(0),
      I1 => wfre,
      I2 => rp(1),
      O => \rp[1]_i_1_n_0\
    );
\rp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rp[0]_i_1__0_n_0\,
      Q => rp(0),
      R => \rp__0\
    );
\rp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rp[1]_i_1_n_0\,
      Q => rp(1),
      R => \rp__0\
    );
sck_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0EFF4EF100B100"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \state_reg[0]_1\,
      I3 => sck_o_reg_i_2_n_0,
      I4 => Q(0),
      I5 => ss_sck,
      O => \state_reg[0]\
    );
sck_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080B0F7F7F7F4"
    )
        port map (
      I0 => \state_reg[0]_2\,
      I1 => state(1),
      I2 => gb_reg_1(1),
      I3 => state(0),
      I4 => sck_o_i_5_n_0,
      I5 => ss_sck,
      O => sck_o_i_3_n_0
    );
sck_o_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA28AAAA28"
    )
        port map (
      I0 => gb_reg_1(0),
      I1 => rp(0),
      I2 => wp(0),
      I3 => rp(1),
      I4 => wp(1),
      I5 => gb,
      O => sck_o_i_5_n_0
    );
sck_o_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => sck_o_i_3_n_0,
      I1 => sck_o_reg,
      O => sck_o_reg_i_2_n_0,
      S => Q(0)
    );
\spcr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(24),
      I1 => second_write,
      I2 => \spcr[0]_i_2_n_0\,
      O => \^d\(0)
    );
\spcr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFCCF0AA00CCF0"
    )
        port map (
      I0 => s_wdata(24),
      I1 => s_wdata(16),
      I2 => s_wdata(0),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(8),
      O => \spcr[0]_i_2_n_0\
    );
\spcr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(25),
      I1 => second_write,
      I2 => \spcr[1]_i_2_n_0\,
      O => \^d\(1)
    );
\spcr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => s_wdata(25),
      I1 => s_wdata(17),
      I2 => s_wdata(9),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(1),
      O => \spcr[1]_i_2_n_0\
    );
\spcr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(26),
      I1 => second_write,
      I2 => \spcr[2]_i_2_n_0\,
      O => \^d\(2)
    );
\spcr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFCCF0AA00CCF0"
    )
        port map (
      I0 => s_wdata(26),
      I1 => s_wdata(18),
      I2 => s_wdata(2),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(10),
      O => \spcr[2]_i_2_n_0\
    );
\spcr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(27),
      I1 => second_write,
      I2 => \spcr[3]_i_2_n_0\,
      O => \^d\(3)
    );
\spcr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => s_wdata(11),
      I1 => s_wdata(3),
      I2 => s_wdata(27),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(19),
      O => \spcr[3]_i_2_n_0\
    );
\spcr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(29),
      I1 => second_write,
      I2 => \spcr[5]_i_2_n_0\,
      O => \^d\(5)
    );
\spcr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFCCF0AA00CCF0"
    )
        port map (
      I0 => s_wdata(29),
      I1 => s_wdata(21),
      I2 => s_wdata(5),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(13),
      O => \spcr[5]_i_2_n_0\
    );
\spcr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8D"
    )
        port map (
      I0 => second_write,
      I1 => s_wdata(30),
      I2 => s_wdata_30_sn_1,
      O => \^d\(6)
    );
\spcr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550F3300550F33FF"
    )
        port map (
      I0 => s_wdata(30),
      I1 => s_wdata(22),
      I2 => s_wdata(14),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(6),
      O => s_wdata_30_sn_1
    );
\spcr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8D"
    )
        port map (
      I0 => second_write,
      I1 => s_wdata(31),
      I2 => s_wdata_15_sn_1,
      O => \^d\(7)
    );
\spcr[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F5500330F55FF33"
    )
        port map (
      I0 => s_wdata(15),
      I1 => s_wdata(7),
      I2 => s_wdata(31),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(23),
      O => s_wdata_15_sn_1
    );
\sper[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(28),
      I1 => second_write,
      I2 => \sper[4]_i_2_n_0\,
      O => \^d\(4)
    );
\sper[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => s_wdata(12),
      I1 => s_wdata(4),
      I2 => s_wdata(28),
      I3 => wcol_reg_2(1),
      I4 => wcol_reg_2(0),
      I5 => s_wdata(20),
      O => \sper[4]_i_2_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33CC330F7700FF0F"
    )
        port map (
      I0 => \state_reg[0]_2\,
      I1 => \state_reg[0]_1\,
      I2 => \^gb_reg_0\,
      I3 => state(0),
      I4 => state(1),
      I5 => Q(0),
      O => \state_reg[0]_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => gb,
      I1 => wp(1),
      I2 => rp(1),
      I3 => wp(0),
      I4 => rp(0),
      O => \^gb_reg_0\
    );
\treg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \sample__0\,
      I1 => Q(0),
      I2 => sdi_i,
      I3 => state(1),
      I4 => dout(1),
      O => \treg_reg[6]\(0)
    );
\treg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(0),
      I1 => state(1),
      I2 => dout(2),
      O => \treg_reg[6]\(1)
    );
\treg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(1),
      I1 => state(1),
      I2 => dout(3),
      O => \treg_reg[6]\(2)
    );
\treg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(2),
      I1 => state(1),
      I2 => dout(4),
      O => \treg_reg[6]\(3)
    );
\treg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(3),
      I1 => state(1),
      I2 => dout(5),
      O => \treg_reg[6]\(4)
    );
\treg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(4),
      I1 => state(1),
      I2 => dout(6),
      O => \treg_reg[6]\(5)
    );
\treg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(5),
      I1 => state(1),
      I2 => dout(7),
      O => \treg_reg[6]\(6)
    );
\treg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \treg_reg[7]\(6),
      I1 => state(1),
      I2 => dout(8),
      O => \treg_reg[6]\(7)
    );
wcol_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFB00FB00"
    )
        port map (
      I0 => wcol_reg,
      I1 => wcol_reg_0,
      I2 => wcol_reg_1,
      I3 => wcol,
      I4 => \^wp_reg[1]_0\,
      I5 => wfwe,
      O => wcol0
    );
wcol_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF6FFFF"
    )
        port map (
      I0 => wp(1),
      I1 => rp(1),
      I2 => wp(0),
      I3 => rp(0),
      I4 => gb,
      O => \^wp_reg[1]_0\
    );
wfre_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA28AAAA28"
    )
        port map (
      I0 => busy_reg,
      I1 => rp(0),
      I2 => wp(0),
      I3 => rp(1),
      I4 => wp(1),
      I5 => gb,
      O => \rp_reg[0]_0\
    );
\wp[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wfwe,
      I1 => wp(0),
      O => \wp[0]_i_1__0_n_0\
    );
\wp[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wp(0),
      I1 => wfwe,
      I2 => wp(1),
      O => \wp[1]_i_1__0_n_0\
    );
\wp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wp[0]_i_1__0_n_0\,
      Q => wp(0),
      R => \rp__0\
    );
\wp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wp[1]_i_1__0_n_0\,
      Q => wp(1),
      R => \rp__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_spi_flash_ctrl_0_0_simple_spi_top is
  port (
    inta_o : out STD_LOGIC;
    busy_reg_0 : out STD_LOGIC;
    dual_in_r_reg : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rvalid_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ns_idle : out STD_LOGIC_VECTOR ( 5 downto 0 );
    second_write_reg : out STD_LOGIC;
    \buf_addr_reg[0]\ : out STD_LOGIC;
    \buf_len_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_addr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_addr_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_addr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    buf_busy_reg : out STD_LOGIC;
    \rd_state_reg[8]\ : out STD_LOGIC;
    nxt_addr0 : out STD_LOGIC;
    areset : out STD_LOGIC;
    buf_busy_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \param_reg[3]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sck_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdi_o : out STD_LOGIC;
    sdo_o : out STD_LOGIC;
    \cswcnt_reg[0]\ : out STD_LOGIC;
    SPI_CLK : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_state_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_run_reg : out STD_LOGIC;
    cs_reg : out STD_LOGIC;
    \param_reg[3]_1\ : out STD_LOGIC;
    sr_shift_inst_r_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    second_write : in STD_LOGIC;
    wcol_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rd_state_reg[3]\ : in STD_LOGIC;
    \cs_timer_reg[0]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \rd_state_reg[2]_1\ : in STD_LOGIC;
    buf_busy : in STD_LOGIC;
    pdreq_r : in STD_LOGIC;
    \rd_state_reg[6]\ : in STD_LOGIC;
    dual_in_r : in STD_LOGIC;
    dual_in_r_reg_0 : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdi_i : in STD_LOGIC;
    spi_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn : in STD_LOGIC;
    rvalid_reg_0 : in STD_LOGIC;
    rvalid045_out : in STD_LOGIC;
    rvalid_reg_1 : in STD_LOGIC;
    rvalid_reg_2 : in STD_LOGIC;
    rvalid_reg_3 : in STD_LOGIC;
    cs_reg_0 : in STD_LOGIC;
    cs_reg_1 : in STD_LOGIC;
    cs_reg_2 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0_3_0_5_i_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SPI_MOSI_iobuf : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[3][6]\ : in STD_LOGIC;
    nxt_addr_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[0][0]\ : in STD_LOGIC;
    \rdata_reg[3][0]\ : in STD_LOGIC;
    \rdata_reg[3][2]\ : in STD_LOGIC;
    \rd_state_reg[2]_2\ : in STD_LOGIC;
    \rd_state_reg[2]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_state_reg[2]_4\ : in STD_LOGIC;
    cs : in STD_LOGIC;
    \rd_state_reg[5]\ : in STD_LOGIC;
    \rd_state_reg[5]_0\ : in STD_LOGIC;
    buf_busy_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wvalid : in STD_LOGIC;
    buf_busy_d : in STD_LOGIC;
    s_awvalid : in STD_LOGIC;
    s_arvalid : in STD_LOGIC;
    cs_reg_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_state_reg[3]_0\ : in STD_LOGIC;
    sck : in STD_LOGIC;
    \rd_state_reg[3]_1\ : in STD_LOGIC;
    \shift_reg_reg[27]\ : in STD_LOGIC;
    \shift_reg_reg[27]_0\ : in STD_LOGIC;
    \shift_reg_reg[29]\ : in STD_LOGIC;
    \shift_reg_reg[31]\ : in STD_LOGIC;
    sr_shift_two_r : in STD_LOGIC;
    sr_shift_inst_r : in STD_LOGIC;
    sr_shift_two_r_reg : in STD_LOGIC;
    \rd_state_reg[6]_0\ : in STD_LOGIC;
    \rd_state_reg[2]_5\ : in STD_LOGIC;
    \rd_state_reg[2]_6\ : in STD_LOGIC;
    \rd_state_reg[2]_7\ : in STD_LOGIC;
    \rd_state_reg[2]_8\ : in STD_LOGIC;
    \rd_state_reg[4]\ : in STD_LOGIC;
    \rd_state_reg[0]\ : in STD_LOGIC;
    \rd_state_reg[0]_0\ : in STD_LOGIC;
    \rd_state_reg[0]_1\ : in STD_LOGIC;
    \tot_bytes_reg[0]\ : in STD_LOGIC;
    bit_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_state[2]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_state[4]_i_4_0\ : in STD_LOGIC;
    SPI_MISO_iobuf_i_1_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_state[4]_i_4_1\ : in STD_LOGIC;
    sdo_i : in STD_LOGIC;
    \clkcnt_reg[3]_0\ : in STD_LOGIC;
    \clkcnt_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkcnt_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    spi_run_reg_0 : in STD_LOGIC;
    sr_shift_two_r_reg_0 : in STD_LOGIC;
    sr_shift_inst_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_spi_flash_ctrl_0_0_simple_spi_top : entity is "simple_spi_top";
end bd_top_spi_flash_ctrl_0_0_simple_spi_top;

architecture STRUCTURE of bd_top_spi_flash_ctrl_0_0_simple_spi_top is
  signal SPI_MOSI_iobuf_i_3_n_0 : STD_LOGIC;
  signal SPI_MOSI_iobuf_i_4_n_0 : STD_LOGIC;
  signal \^areset\ : STD_LOGIC;
  signal bcnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \^buf_addr_reg[0]\ : STD_LOGIC;
  signal \^buf_len_reg[3]\ : STD_LOGIC;
  signal busy0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal \clkcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \clkcnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clkcnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clkcnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clkcnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal clkcnt_reg_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpha : STD_LOGIC;
  signal cpol : STD_LOGIC;
  signal cs_i_2_n_0 : STD_LOGIC;
  signal cs_i_3_n_0 : STD_LOGIC;
  signal cs_i_4_n_0 : STD_LOGIC;
  signal dual_in : STD_LOGIC;
  signal espr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal espr_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal icnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal inta_o0 : STD_LOGIC;
  signal \^ns_idle\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^nxt_addr0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal param2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \param2[7]_i_1_n_0\ : STD_LOGIC;
  signal \param2_reg_n_0_[3]\ : STD_LOGIC;
  signal \param2_reg_n_0_[4]\ : STD_LOGIC;
  signal \param2_reg_n_0_[5]\ : STD_LOGIC;
  signal \param2_reg_n_0_[6]\ : STD_LOGIC;
  signal \param2_reg_n_0_[7]\ : STD_LOGIC;
  signal \param[7]_i_1_n_0\ : STD_LOGIC;
  signal \param[7]_i_2_n_0\ : STD_LOGIC;
  signal param_burst_en : STD_LOGIC;
  signal param_dual_io : STD_LOGIC;
  signal param_fast_read : STD_LOGIC;
  signal param_memory_en : STD_LOGIC;
  signal \rd_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \rd_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \rd_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][2]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][3]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][4]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][5]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][6]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_10_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_4_n_0\ : STD_LOGIC;
  signal reg_dat_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rfifo_n_10 : STD_LOGIC;
  signal rfwe_i_1_n_0 : STD_LOGIC;
  signal rfwe_i_2_n_0 : STD_LOGIC;
  signal rfwe_i_3_n_0 : STD_LOGIC;
  signal rfwe_i_4_n_0 : STD_LOGIC;
  signal rfwe_i_5_n_0 : STD_LOGIC;
  signal rfwe_reg_n_0 : STD_LOGIC;
  signal \rp__0\ : STD_LOGIC;
  signal sample0_out : STD_LOGIC;
  signal \sample__0\ : STD_LOGIC;
  signal sample_i_1_n_0 : STD_LOGIC;
  signal sck_o_i_4_n_0 : STD_LOGIC;
  signal \^second_write_reg\ : STD_LOGIC;
  signal \shift_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal smh_spi : STD_LOGIC;
  signal \softcs[7]_i_1_n_0\ : STD_LOGIC;
  signal \softcs_reg_n_0_[0]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[1]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[2]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[3]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[4]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[5]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[6]\ : STD_LOGIC;
  signal \softcs_reg_n_0_[7]\ : STD_LOGIC;
  signal spcr : STD_LOGIC;
  signal \spcr[7]_i_4_n_0\ : STD_LOGIC;
  signal \spcr_reg_n_0_[5]\ : STD_LOGIC;
  signal spe : STD_LOGIC;
  signal sper : STD_LOGIC;
  signal \sper_reg_n_0_[3]\ : STD_LOGIC;
  signal \sper_reg_n_0_[4]\ : STD_LOGIC;
  signal \sper_reg_n_0_[5]\ : STD_LOGIC;
  signal spi_run_i_2_n_0 : STD_LOGIC;
  signal spi_run_i_3_n_0 : STD_LOGIC;
  signal spi_run_i_4_n_0 : STD_LOGIC;
  signal spibus_busy : STD_LOGIC;
  signal spie : STD_LOGIC;
  signal spif : STD_LOGIC;
  signal spif0 : STD_LOGIC;
  signal spif_i_2_n_0 : STD_LOGIC;
  signal spif_i_3_n_0 : STD_LOGIC;
  signal sr_shift_two_r_i_3_n_0 : STD_LOGIC;
  signal ss_mosi : STD_LOGIC;
  signal ss_sck : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal tcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \tcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal treg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \treg[7]_i_1_n_0\ : STD_LOGIC;
  signal wcol : STD_LOGIC;
  signal wcol0 : STD_LOGIC;
  signal wcol_i_2_n_0 : STD_LOGIC;
  signal wfifo_n_10 : STD_LOGIC;
  signal wfifo_n_12 : STD_LOGIC;
  signal wfifo_n_13 : STD_LOGIC;
  signal wfifo_n_15 : STD_LOGIC;
  signal wfifo_n_16 : STD_LOGIC;
  signal wfifo_n_8 : STD_LOGIC;
  signal wfifo_n_9 : STD_LOGIC;
  signal wfre : STD_LOGIC;
  signal \NLW_clkcnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clkcnt_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SPI_CLK_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of SPI_CS_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of SPI_MISO_iobuf_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of SPI_MISO_iobuf_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of SPI_MOSI_iobuf_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bcnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bcnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of cs_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \param[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_state[2]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rd_state[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rdata[1][7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata[3][4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_reg[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spcr[7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of spi_run_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of spi_run_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of spif_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of wcol_i_2 : label is "soft_lutpair19";
begin
  areset <= \^areset\;
  \buf_addr_reg[0]\ <= \^buf_addr_reg[0]\;
  \buf_len_reg[3]\ <= \^buf_len_reg[3]\;
  ns_idle(5 downto 0) <= \^ns_idle\(5 downto 0);
  nxt_addr0 <= \^nxt_addr0\;
  second_write_reg <= \^second_write_reg\;
SPI_CLK_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => sck,
      I1 => param_memory_en,
      I2 => spibus_busy,
      I3 => ss_sck,
      O => SPI_CLK
    );
SPI_CS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => cs,
      I1 => param_memory_en,
      I2 => \softcs_reg_n_0_[0]\,
      I3 => \softcs_reg_n_0_[4]\,
      O => SPI_CS
    );
SPI_MISO_iobuf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => SPI_MOSI_iobuf(31),
      I1 => param_memory_en,
      I2 => spibus_busy,
      I3 => SPI_MOSI_iobuf_i_3_n_0,
      O => sdi_o
    );
SPI_MISO_iobuf_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => SPI_MOSI_iobuf_i_3_n_0,
      I1 => spibus_busy,
      I2 => param_memory_en,
      O => busy_reg_0
    );
SPI_MOSI_iobuf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => \cs_timer_reg[0]\(4),
      I1 => SPI_MOSI_iobuf(30),
      I2 => SPI_MOSI_iobuf_i_3_n_0,
      I3 => SPI_MOSI_iobuf(31),
      I4 => SPI_MOSI_iobuf_i_4_n_0,
      I5 => ss_mosi,
      O => sdo_o
    );
SPI_MOSI_iobuf_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE0000000000"
    )
        port map (
      I0 => dual_in_r,
      I1 => \cs_timer_reg[0]\(4),
      I2 => dual_in_r_reg_0,
      I3 => param_dual_io,
      I4 => spibus_busy,
      I5 => param_memory_en,
      O => dual_in_r_reg
    );
SPI_MOSI_iobuf_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0FFFFF8FFF"
    )
        port map (
      I0 => SPI_MISO_iobuf_i_1_0(1),
      I1 => SPI_MISO_iobuf_i_1_0(0),
      I2 => param_dual_io,
      I3 => SPI_MISO_iobuf_i_1_0(3),
      I4 => SPI_MISO_iobuf_i_1_0(4),
      I5 => SPI_MISO_iobuf_i_1_0(2),
      O => SPI_MOSI_iobuf_i_3_n_0
    );
SPI_MOSI_iobuf_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => param_memory_en,
      I1 => spibus_busy,
      O => SPI_MOSI_iobuf_i_4_n_0
    );
\bcnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F91"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rfwe_i_3_n_0,
      I3 => bcnt(0),
      O => \bcnt[0]_i_1_n_0\
    );
\bcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F1191"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rfwe_i_3_n_0,
      I3 => bcnt(0),
      I4 => bcnt(1),
      O => \bcnt[1]_i_1_n_0\
    );
\bcnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F11111191"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rfwe_i_3_n_0,
      I3 => bcnt(0),
      I4 => bcnt(1),
      I5 => bcnt(2),
      O => \bcnt[2]_i_1_n_0\
    );
\bcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bcnt[0]_i_1_n_0\,
      Q => bcnt(0),
      R => rfwe_i_1_n_0
    );
\bcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bcnt[1]_i_1_n_0\,
      Q => bcnt(1),
      R => rfwe_i_1_n_0
    );
\bcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bcnt[2]_i_1_n_0\,
      Q => bcnt(2),
      R => rfwe_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => busy_i_2_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy0,
      Q => spibus_busy,
      R => '0'
    );
\clkcnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \clkcnt[0]_i_3__0_n_0\,
      I1 => espr_1(2),
      I2 => espr_1(3),
      O => \clkcnt[0]_i_1_n_0\
    );
\clkcnt[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rfwe_i_3_n_0,
      I3 => spe,
      O => \clkcnt[0]_i_3__0_n_0\
    );
\clkcnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFEECFEEC"
    )
        port map (
      I0 => espr_1(2),
      I1 => espr_1(3),
      I2 => espr_1(1),
      I3 => espr_1(0),
      I4 => clkcnt_reg_0(3),
      I5 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[0]_i_4_n_0\
    );
\clkcnt[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFE8FFE8"
    )
        port map (
      I0 => espr(0),
      I1 => espr(1),
      I2 => espr(2),
      I3 => espr(3),
      I4 => clkcnt_reg(3),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[0]_i_4__0_n_0\
    );
\clkcnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFEFCFEFC"
    )
        port map (
      I0 => espr_1(0),
      I1 => espr_1(1),
      I2 => espr_1(3),
      I3 => espr_1(2),
      I4 => clkcnt_reg_0(2),
      I5 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[0]_i_5_n_0\
    );
\clkcnt[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFECFFEC"
    )
        port map (
      I0 => espr(0),
      I1 => espr(1),
      I2 => espr(2),
      I3 => espr(3),
      I4 => clkcnt_reg(2),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[0]_i_5__0_n_0\
    );
\clkcnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFEFE"
    )
        port map (
      I0 => espr_1(3),
      I1 => espr_1(2),
      I2 => espr_1(1),
      I3 => clkcnt_reg_0(1),
      I4 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[0]_i_6_n_0\
    );
\clkcnt[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFEFE"
    )
        port map (
      I0 => espr(1),
      I1 => espr(2),
      I2 => espr(3),
      I3 => clkcnt_reg(1),
      I4 => \clkcnt_reg[3]_0\,
      O => \clkcnt[0]_i_6__0_n_0\
    );
\clkcnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFEFFFE"
    )
        port map (
      I0 => espr_1(1),
      I1 => espr_1(2),
      I2 => espr_1(3),
      I3 => espr_1(0),
      I4 => clkcnt_reg_0(0),
      I5 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[0]_i_7_n_0\
    );
\clkcnt[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFEFFFE"
    )
        port map (
      I0 => espr(2),
      I1 => espr(1),
      I2 => espr(0),
      I3 => espr(3),
      I4 => clkcnt_reg(0),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[0]_i_7__0_n_0\
    );
\clkcnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => espr(3),
      I1 => clkcnt_reg(7),
      I2 => \clkcnt_reg[3]_0\,
      O => \clkcnt[4]_i_2_n_0\
    );
\clkcnt[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rfwe_i_3_n_0,
      I3 => spe,
      O => \clkcnt[4]_i_2__0_n_0\
    );
\clkcnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => espr_1(3),
      I1 => clkcnt_reg_0(7),
      I2 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[4]_i_3_n_0\
    );
\clkcnt[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFF80FF80"
    )
        port map (
      I0 => espr(2),
      I1 => espr(1),
      I2 => espr(0),
      I3 => espr(3),
      I4 => clkcnt_reg(6),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[4]_i_3__0_n_0\
    );
\clkcnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFF80FF80"
    )
        port map (
      I0 => espr_1(0),
      I1 => espr_1(1),
      I2 => espr_1(2),
      I3 => espr_1(3),
      I4 => clkcnt_reg_0(6),
      I5 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[4]_i_4_n_0\
    );
\clkcnt[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFF8F8"
    )
        port map (
      I0 => espr(1),
      I1 => espr(2),
      I2 => espr(3),
      I3 => clkcnt_reg(5),
      I4 => \clkcnt_reg[3]_0\,
      O => \clkcnt[4]_i_4__0_n_0\
    );
\clkcnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFF8F8"
    )
        port map (
      I0 => espr_1(2),
      I1 => espr_1(1),
      I2 => espr_1(3),
      I3 => clkcnt_reg_0(5),
      I4 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[4]_i_5_n_0\
    );
\clkcnt[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFA8FFA8"
    )
        port map (
      I0 => espr(2),
      I1 => espr(1),
      I2 => espr(0),
      I3 => espr(3),
      I4 => clkcnt_reg(4),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[4]_i_5__0_n_0\
    );
\clkcnt[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFEF0FEF0"
    )
        port map (
      I0 => espr_1(0),
      I1 => espr_1(1),
      I2 => espr_1(3),
      I3 => espr_1(2),
      I4 => clkcnt_reg_0(4),
      I5 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[4]_i_6_n_0\
    );
\clkcnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clkcnt[0]_i_3__0_n_0\,
      I1 => clkcnt_reg_0(11),
      O => \clkcnt[8]_i_2_n_0\
    );
\clkcnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF8080"
    )
        port map (
      I0 => espr_1(1),
      I1 => espr_1(0),
      I2 => espr_1(3),
      I3 => clkcnt_reg_0(10),
      I4 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[8]_i_3_n_0\
    );
\clkcnt[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFEA00EA00"
    )
        port map (
      I0 => espr(2),
      I1 => espr(1),
      I2 => espr(0),
      I3 => espr(3),
      I4 => clkcnt_reg(10),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[8]_i_3__0_n_0\
    );
\clkcnt[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => espr_1(1),
      I1 => espr_1(3),
      I2 => clkcnt_reg_0(9),
      I3 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[8]_i_4_n_0\
    );
\clkcnt[8]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFE0E0"
    )
        port map (
      I0 => espr(1),
      I1 => espr(2),
      I2 => espr(3),
      I3 => clkcnt_reg(9),
      I4 => \clkcnt_reg[3]_0\,
      O => \clkcnt[8]_i_4__0_n_0\
    );
\clkcnt[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFE0E0"
    )
        port map (
      I0 => espr_1(1),
      I1 => espr_1(0),
      I2 => espr_1(3),
      I3 => clkcnt_reg_0(8),
      I4 => \clkcnt[0]_i_3__0_n_0\,
      O => \clkcnt[8]_i_5_n_0\
    );
\clkcnt[8]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFE00FE00"
    )
        port map (
      I0 => espr(2),
      I1 => espr(1),
      I2 => espr(0),
      I3 => espr(3),
      I4 => clkcnt_reg(8),
      I5 => \clkcnt_reg[3]_0\,
      O => \clkcnt[8]_i_5__0_n_0\
    );
\clkcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[0]_i_2_n_7\,
      Q => clkcnt_reg_0(0),
      R => '0'
    );
\clkcnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkcnt_reg[0]_i_2_n_0\,
      CO(2) => \clkcnt_reg[0]_i_2_n_1\,
      CO(1) => \clkcnt_reg[0]_i_2_n_2\,
      CO(0) => \clkcnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \clkcnt[0]_i_3__0_n_0\,
      DI(2) => \clkcnt[0]_i_3__0_n_0\,
      DI(1) => \clkcnt[0]_i_3__0_n_0\,
      DI(0) => \clkcnt[0]_i_3__0_n_0\,
      O(3) => \clkcnt_reg[0]_i_2_n_4\,
      O(2) => \clkcnt_reg[0]_i_2_n_5\,
      O(1) => \clkcnt_reg[0]_i_2_n_6\,
      O(0) => \clkcnt_reg[0]_i_2_n_7\,
      S(3) => \clkcnt[0]_i_4_n_0\,
      S(2) => \clkcnt[0]_i_5_n_0\,
      S(1) => \clkcnt[0]_i_6_n_0\,
      S(0) => \clkcnt[0]_i_7_n_0\
    );
\clkcnt_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkcnt_reg[0]_i_2__0_n_0\,
      CO(2) => \clkcnt_reg[0]_i_2__0_n_1\,
      CO(1) => \clkcnt_reg[0]_i_2__0_n_2\,
      CO(0) => \clkcnt_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3) => \clkcnt_reg[3]_0\,
      DI(2) => \clkcnt_reg[3]_0\,
      DI(1) => \clkcnt_reg[3]_0\,
      DI(0) => \clkcnt_reg[3]_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \clkcnt[0]_i_4__0_n_0\,
      S(2) => \clkcnt[0]_i_5__0_n_0\,
      S(1) => \clkcnt[0]_i_6__0_n_0\,
      S(0) => \clkcnt[0]_i_7__0_n_0\
    );
\clkcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[8]_i_1_n_5\,
      Q => clkcnt_reg_0(10),
      R => '0'
    );
\clkcnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[8]_i_1_n_4\,
      Q => clkcnt_reg_0(11),
      R => '0'
    );
\clkcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[0]_i_2_n_6\,
      Q => clkcnt_reg_0(1),
      R => '0'
    );
\clkcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[0]_i_2_n_5\,
      Q => clkcnt_reg_0(2),
      R => '0'
    );
\clkcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[0]_i_2_n_4\,
      Q => clkcnt_reg_0(3),
      R => '0'
    );
\clkcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[4]_i_1_n_7\,
      Q => clkcnt_reg_0(4),
      R => '0'
    );
\clkcnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkcnt_reg[0]_i_2_n_0\,
      CO(3) => \clkcnt_reg[4]_i_1_n_0\,
      CO(2) => \clkcnt_reg[4]_i_1_n_1\,
      CO(1) => \clkcnt_reg[4]_i_1_n_2\,
      CO(0) => \clkcnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \clkcnt[4]_i_2__0_n_0\,
      DI(2) => \clkcnt[0]_i_3__0_n_0\,
      DI(1) => \clkcnt[0]_i_3__0_n_0\,
      DI(0) => \clkcnt[0]_i_3__0_n_0\,
      O(3) => \clkcnt_reg[4]_i_1_n_4\,
      O(2) => \clkcnt_reg[4]_i_1_n_5\,
      O(1) => \clkcnt_reg[4]_i_1_n_6\,
      O(0) => \clkcnt_reg[4]_i_1_n_7\,
      S(3) => \clkcnt[4]_i_3_n_0\,
      S(2) => \clkcnt[4]_i_4_n_0\,
      S(1) => \clkcnt[4]_i_5_n_0\,
      S(0) => \clkcnt[4]_i_6_n_0\
    );
\clkcnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkcnt_reg[0]_i_2__0_n_0\,
      CO(3) => \clkcnt_reg[4]_i_1__0_n_0\,
      CO(2) => \clkcnt_reg[4]_i_1__0_n_1\,
      CO(1) => \clkcnt_reg[4]_i_1__0_n_2\,
      CO(0) => \clkcnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \clkcnt_reg[3]_0\,
      DI(2) => \clkcnt_reg[3]_0\,
      DI(1) => \clkcnt_reg[3]_0\,
      DI(0) => \clkcnt_reg[3]_0\,
      O(3 downto 0) => \rd_state_reg[2]\(3 downto 0),
      S(3) => \clkcnt[4]_i_2_n_0\,
      S(2) => \clkcnt[4]_i_3__0_n_0\,
      S(1) => \clkcnt[4]_i_4__0_n_0\,
      S(0) => \clkcnt[4]_i_5__0_n_0\
    );
\clkcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[4]_i_1_n_6\,
      Q => clkcnt_reg_0(5),
      R => '0'
    );
\clkcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[4]_i_1_n_5\,
      Q => clkcnt_reg_0(6),
      R => '0'
    );
\clkcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[4]_i_1_n_4\,
      Q => clkcnt_reg_0(7),
      R => '0'
    );
\clkcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[8]_i_1_n_7\,
      Q => clkcnt_reg_0(8),
      R => '0'
    );
\clkcnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkcnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_clkcnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clkcnt_reg[8]_i_1_n_1\,
      CO(1) => \clkcnt_reg[8]_i_1_n_2\,
      CO(0) => \clkcnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \clkcnt[0]_i_3__0_n_0\,
      DI(1) => \clkcnt[0]_i_3__0_n_0\,
      DI(0) => \clkcnt[0]_i_3__0_n_0\,
      O(3) => \clkcnt_reg[8]_i_1_n_4\,
      O(2) => \clkcnt_reg[8]_i_1_n_5\,
      O(1) => \clkcnt_reg[8]_i_1_n_6\,
      O(0) => \clkcnt_reg[8]_i_1_n_7\,
      S(3) => \clkcnt[8]_i_2_n_0\,
      S(2) => \clkcnt[8]_i_3_n_0\,
      S(1) => \clkcnt[8]_i_4_n_0\,
      S(0) => \clkcnt[8]_i_5_n_0\
    );
\clkcnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkcnt_reg[4]_i_1__0_n_0\,
      CO(3) => \NLW_clkcnt_reg[8]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \clkcnt_reg[8]_i_1__0_n_1\,
      CO(1) => \clkcnt_reg[8]_i_1__0_n_2\,
      CO(0) => \clkcnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \clkcnt_reg[3]_0\,
      DI(1) => \clkcnt_reg[3]_0\,
      DI(0) => \clkcnt_reg[3]_0\,
      O(3 downto 0) => \rd_state_reg[2]_0\(3 downto 0),
      S(3) => \clkcnt_reg[11]_0\(0),
      S(2) => \clkcnt[8]_i_3__0_n_0\,
      S(1) => \clkcnt[8]_i_4__0_n_0\,
      S(0) => \clkcnt[8]_i_5__0_n_0\
    );
\clkcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clkcnt[0]_i_1_n_0\,
      D => \clkcnt_reg[8]_i_1_n_6\,
      Q => clkcnt_reg_0(9),
      R => '0'
    );
cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFF0200"
    )
        port map (
      I0 => cs,
      I1 => spi_run_i_3_n_0,
      I2 => cs_i_2_n_0,
      I3 => cs_i_3_n_0,
      I4 => cs_i_4_n_0,
      I5 => \^nxt_addr0\,
      O => cs_reg
    );
cs_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ns_idle\(0),
      I1 => param_burst_en,
      O => cs_i_2_n_0
    );
cs_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00545454"
    )
        port map (
      I0 => \^ns_idle\(1),
      I1 => buf_busy,
      I2 => cs_reg_1,
      I3 => \^second_write_reg\,
      I4 => cs_reg_2,
      O => cs_i_3_n_0
    );
cs_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \^ns_idle\(2),
      I1 => spi_run_i_2_n_0,
      I2 => cs_i_2_n_0,
      I3 => \^ns_idle\(1),
      I4 => cs_reg_0,
      O => cs_i_4_n_0
    );
\cs_timer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFFFFFFF"
    )
        port map (
      I0 => \cs_timer_reg[0]\(8),
      I1 => cs,
      I2 => buf_busy,
      I3 => \cs_timer_reg[0]\(7),
      I4 => param_memory_en,
      I5 => aresetn,
      O => \rd_state_reg[8]\
    );
dual_in_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000700070000000"
    )
        port map (
      I0 => \rd_state[2]_i_3_0\(0),
      I1 => \cs_timer_reg[0]\(2),
      I2 => cs,
      I3 => aresetn,
      I4 => dual_in_r,
      I5 => dual_in,
      O => \cswcnt_reg[0]\
    );
dual_in_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => param_dual_io,
      I1 => dual_in_r_reg_0,
      I2 => \cs_timer_reg[0]\(4),
      I3 => dual_in_r,
      O => dual_in
    );
inta_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spie,
      I1 => spif,
      O => inta_o0
    );
inta_o_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => inta_o0,
      Q => inta_o,
      R => '0'
    );
\nxt_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => param_memory_en,
      I1 => aresetn,
      O => \^nxt_addr0\
    );
\nxt_addr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => \rdata[3][7]_i_4_n_0\,
      I1 => buf_busy,
      I2 => \cs_timer_reg[0]\(0),
      I3 => buf_busy_d,
      O => buf_busy_reg
    );
\param2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \param[7]_i_2_n_0\,
      O => \param2[7]_i_1_n_0\
    );
\param2_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(0),
      Q => param2(0),
      S => \^areset\
    );
\param2_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(1),
      Q => param2(1),
      S => \^areset\
    );
\param2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(2),
      Q => param2(2),
      R => \^areset\
    );
\param2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(3),
      Q => \param2_reg_n_0_[3]\,
      R => \^areset\
    );
\param2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(4),
      Q => \param2_reg_n_0_[4]\,
      R => \^areset\
    );
\param2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(5),
      Q => \param2_reg_n_0_[5]\,
      R => \^areset\
    );
\param2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(6),
      Q => \param2_reg_n_0_[6]\,
      R => \^areset\
    );
\param2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param2[7]_i_1_n_0\,
      D => reg_dat_i(7),
      Q => \param2_reg_n_0_[7]\,
      R => \^areset\
    );
\param[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \param[7]_i_2_n_0\,
      O => \param[7]_i_1_n_0\
    );
\param[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => second_write,
      I1 => wcol_reg_0,
      I2 => rfifo_n_10,
      O => \param[7]_i_2_n_0\
    );
\param_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(0),
      Q => param_memory_en,
      S => \^areset\
    );
\param_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(1),
      Q => param_burst_en,
      R => \^areset\
    );
\param_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(2),
      Q => param_fast_read,
      R => \^areset\
    );
\param_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(3),
      Q => param_dual_io,
      R => \^areset\
    );
\param_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(4),
      Q => espr(0),
      R => \^areset\
    );
\param_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(5),
      Q => espr(1),
      R => \^areset\
    );
\param_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(6),
      Q => espr(2),
      R => \^areset\
    );
\param_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \param[7]_i_1_n_0\,
      D => reg_dat_i(7),
      Q => espr(3),
      R => \^areset\
    );
\rd_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8AAA8A8A8A8"
    )
        port map (
      I0 => \rd_state_reg[0]\,
      I1 => \rd_state_reg[0]_0\,
      I2 => \rd_state_reg[0]_1\,
      I3 => rvalid_reg_2,
      I4 => \rd_state[0]_i_5_n_0\,
      I5 => sr_shift_two_r_reg,
      O => \^ns_idle\(0)
    );
\rd_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFFFFFFFFFFFFF"
    )
        port map (
      I0 => param_dual_io,
      I1 => bit_cnt(2),
      I2 => rvalid_reg_0,
      I3 => \cs_timer_reg[0]\(4),
      I4 => bit_cnt(0),
      I5 => bit_cnt(1),
      O => \rd_state[0]_i_5_n_0\
    );
\rd_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAC8F8"
    )
        port map (
      I0 => \rd_state_reg[2]_1\,
      I1 => \rd_state[2]_i_2_n_0\,
      I2 => \cs_timer_reg[0]\(2),
      I3 => \rd_state[2]_i_3_n_0\,
      I4 => \rd_state_reg[2]_2\,
      I5 => \rd_state[2]_i_5_n_0\,
      O => \^ns_idle\(1)
    );
\rd_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => rvalid_reg_2,
      I1 => sr_shift_two_r_reg,
      I2 => \rd_state[0]_i_5_n_0\,
      I3 => param_burst_en,
      I4 => \rd_state_reg[2]_8\,
      O => \rd_state[2]_i_2_n_0\
    );
\rd_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \rd_state_reg[2]_5\,
      I1 => \rd_state_reg[2]_6\,
      I2 => \rd_state_reg[2]_7\,
      I3 => rvalid_reg_0,
      I4 => \rd_state[2]_i_6_n_0\,
      O => \rd_state[2]_i_3_n_0\
    );
\rd_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000D0000000D"
    )
        port map (
      I0 => \rd_state_reg[2]_3\(0),
      I1 => \rd_state[2]_i_7_n_0\,
      I2 => spibus_busy,
      I3 => \rd_state_reg[2]_4\,
      I4 => CO(0),
      I5 => \^buf_len_reg[3]\,
      O => \rd_state[2]_i_5_n_0\
    );
\rd_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0FFF0FFFCFFFCF"
    )
        port map (
      I0 => \rd_state[2]_i_3_0\(3),
      I1 => param2(0),
      I2 => \rd_state[2]_i_3_0\(0),
      I3 => param2(1),
      I4 => \rd_state[2]_i_3_0\(2),
      I5 => \rd_state[2]_i_3_0\(1),
      O => \rd_state[2]_i_6_n_0\
    );
\rd_state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => param_burst_en,
      I1 => cs,
      O => \rd_state[2]_i_7_n_0\
    );
\rd_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \rd_state_reg[5]_0\,
      I1 => \rd_state[4]_i_4_n_0\,
      I2 => \cs_timer_reg[0]\(3),
      I3 => \rd_state[3]_i_2_n_0\,
      O => \^ns_idle\(2)
    );
\rd_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F007F7FFFFFFFFF"
    )
        port map (
      I0 => \rd_state[2]_i_3_n_0\,
      I1 => \rd_state_reg[3]\,
      I2 => \cs_timer_reg[0]\(2),
      I3 => spibus_busy,
      I4 => \cs_timer_reg[0]\(5),
      I5 => \rd_state_reg[2]_1\,
      O => \rd_state[3]_i_2_n_0\
    );
\rd_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F773F337F770000"
    )
        port map (
      I0 => \rd_state[4]_i_2_n_0\,
      I1 => \rd_state[4]_i_3_n_0\,
      I2 => \rd_state[4]_i_4_n_0\,
      I3 => \cs_timer_reg[0]\(3),
      I4 => \cs_timer_reg[0]\(4),
      I5 => \rd_state_reg[2]_1\,
      O => \^ns_idle\(3)
    );
\rd_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BB0000BBBB0000"
    )
        port map (
      I0 => \rd_state_reg[4]\,
      I1 => \rd_state_reg[3]\,
      I2 => \rd_state_reg[2]_8\,
      I3 => param_burst_en,
      I4 => \rdata[3][7]_i_4_n_0\,
      I5 => rvalid_reg_2,
      O => \rd_state[4]_i_2_n_0\
    );
\rd_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00000000"
    )
        port map (
      I0 => spibus_busy,
      I1 => param_burst_en,
      I2 => cs,
      I3 => \rd_state_reg[2]_3\(0),
      I4 => \rd_state_reg[5]\,
      I5 => \rd_state_reg[2]_1\,
      O => \rd_state[4]_i_3_n_0\
    );
\rd_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE2FF"
    )
        port map (
      I0 => \rd_state[4]_i_8_n_0\,
      I1 => param_dual_io,
      I2 => \rd_state_reg[3]_0\,
      I3 => sck,
      I4 => \rd_state_reg[3]_1\,
      O => \rd_state[4]_i_4_n_0\
    );
\rd_state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BBBBBBBBBB"
    )
        port map (
      I0 => \rd_state[4]_i_4_0\,
      I1 => param_fast_read,
      I2 => SPI_MISO_iobuf_i_1_0(4),
      I3 => SPI_MISO_iobuf_i_1_0(3),
      I4 => \rd_state[4]_i_4_1\,
      I5 => SPI_MISO_iobuf_i_1_0(2),
      O => \rd_state[4]_i_8_n_0\
    );
\rd_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CC44"
    )
        port map (
      I0 => \rd_state_reg[5]_0\,
      I1 => \cs_timer_reg[0]\(5),
      I2 => \rd_state_reg[5]\,
      I3 => spibus_busy,
      I4 => \rd_state_reg[2]_1\,
      O => \^ns_idle\(4)
    );
\rd_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \cs_timer_reg[0]\(6),
      I1 => \rd_state_reg[6]_0\,
      I2 => \rd_state[6]_i_2_n_0\,
      O => \^ns_idle\(5)
    );
\rd_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF0000FFFFFFFF"
    )
        port map (
      I0 => \rd_state[2]_i_3_n_0\,
      I1 => \cs_timer_reg[0]\(2),
      I2 => buf_busy,
      I3 => pdreq_r,
      I4 => \rd_state_reg[6]\,
      I5 => \rd_state_reg[2]_1\,
      O => \rd_state[6]_i_2_n_0\
    );
\rdata[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A2A000000200"
    )
        port map (
      I0 => rvalid_reg_3,
      I1 => nxt_addr_reg(0),
      I2 => rvalid045_out,
      I3 => \rdata[3][7]_i_4_n_0\,
      I4 => nxt_addr_reg(1),
      I5 => \rdata_reg[0][0]\,
      O => \nxt_addr_reg[0]\(0)
    );
\rdata[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080A28080808080"
    )
        port map (
      I0 => rvalid_reg_3,
      I1 => rvalid045_out,
      I2 => \rdata[1][7]_i_2_n_0\,
      I3 => \rdata[3][7]_i_4_n_0\,
      I4 => nxt_addr_reg(1),
      I5 => nxt_addr_reg(0),
      O => \nxt_addr_reg[1]\(0)
    );
\rdata[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \rdata[1][7]_i_2_n_0\
    );
\rdata[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002000AAAA2000"
    )
        port map (
      I0 => rvalid_reg_3,
      I1 => nxt_addr_reg(0),
      I2 => nxt_addr_reg(1),
      I3 => \rdata[3][7]_i_4_n_0\,
      I4 => rvalid045_out,
      I5 => \^buf_addr_reg[0]\,
      O => E(0)
    );
\rdata[3][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4454"
    )
        port map (
      I0 => sr_shift_inst_r,
      I1 => \rdata[3][0]_i_5_n_0\,
      I2 => \shift_reg[1]_i_2_n_0\,
      I3 => sr_shift_two_r,
      O => \rdata[3][0]_i_2_n_0\
    );
\rdata[3][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => param_memory_en,
      I1 => Q(0),
      I2 => \softcs_reg_n_0_[0]\,
      I3 => Q(1),
      I4 => param2(0),
      I5 => Q(2),
      O => \rdata[3][0]_i_4_n_0\
    );
\rdata[3][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sr_shift_two_r,
      I1 => sdo_i,
      I2 => param2(2),
      I3 => sample(0),
      I4 => \cs_timer_reg[0]\(4),
      O => \rdata[3][0]_i_5_n_0\
    );
\rdata[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => sample(1),
      I1 => param2(2),
      I2 => sdi_i,
      I3 => \cs_timer_reg[0]\(4),
      I4 => \rdata_reg[3][6]\,
      I5 => SPI_MOSI_iobuf(0),
      O => \rdata[3][1]_i_2_n_0\
    );
\rdata[3][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => param_burst_en,
      I1 => Q(0),
      I2 => \softcs_reg_n_0_[1]\,
      I3 => Q(1),
      I4 => param2(1),
      I5 => Q(2),
      O => \rdata[3][1]_i_4_n_0\
    );
\rdata[3][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => param_fast_read,
      I1 => Q(0),
      I2 => \softcs_reg_n_0_[2]\,
      I3 => Q(1),
      I4 => param2(2),
      I5 => Q(2),
      O => \rdata[3][2]_i_4_n_0\
    );
\rdata[3][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0505000F03030"
    )
        port map (
      I0 => \softcs_reg_n_0_[3]\,
      I1 => param_dual_io,
      I2 => Q(2),
      I3 => \param2_reg_n_0_[3]\,
      I4 => Q(1),
      I5 => Q(0),
      O => \rdata[3][3]_i_4_n_0\
    );
\rdata[3][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F053FF53"
    )
        port map (
      I0 => \softcs_reg_n_0_[4]\,
      I1 => espr(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \param2_reg_n_0_[4]\,
      O => \rdata[3][4]_i_3_n_0\
    );
\rdata[3][5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F053FF53"
    )
        port map (
      I0 => \softcs_reg_n_0_[5]\,
      I1 => espr(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \param2_reg_n_0_[5]\,
      O => \rdata[3][5]_i_4_n_0\
    );
\rdata[3][6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \param2_reg_n_0_[6]\,
      I1 => Q(1),
      I2 => \softcs_reg_n_0_[6]\,
      I3 => Q(0),
      I4 => espr(2),
      O => \rdata[3][6]_i_4_n_0\
    );
\rdata[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000AAAA8000"
    )
        port map (
      I0 => rvalid_reg_3,
      I1 => nxt_addr_reg(1),
      I2 => nxt_addr_reg(0),
      I3 => \rdata[3][7]_i_4_n_0\,
      I4 => rvalid045_out,
      I5 => \rdata_reg[3][0]\,
      O => \nxt_addr_reg[1]_0\(0)
    );
\rdata[3][7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \param2_reg_n_0_[7]\,
      I1 => Q(1),
      I2 => \softcs_reg_n_0_[7]\,
      I3 => Q(0),
      I4 => espr(3),
      O => \rdata[3][7]_i_10_n_0\
    );
\rdata[3][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200000"
    )
        port map (
      I0 => sr_shift_two_r_reg,
      I1 => \tot_bytes_reg[0]\,
      I2 => \cs_timer_reg[0]\(4),
      I3 => rvalid_reg_0,
      I4 => bit_cnt(2),
      I5 => param_dual_io,
      O => \rdata[3][7]_i_4_n_0\
    );
rfifo: entity work.bd_top_spi_flash_ctrl_0_0_spi_fifo4
     port map (
      CO(0) => CO(0),
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      S(1 downto 0) => S(1 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \buf_addr_reg[0]\ => \^buf_addr_reg[0]\,
      buf_busy => buf_busy,
      buf_busy_reg => rfifo_n_10,
      buf_busy_reg_0(3 downto 0) => buf_busy_reg_1(3 downto 0),
      \buf_len_reg[3]\ => \^buf_len_reg[3]\,
      gb_reg_0 => wcol_reg_0,
      mem_reg_0_3_0_5_i_3_0(2 downto 0) => mem_reg_0_3_0_5_i_3(2 downto 0),
      \rdata[3][6]_i_3_0\(7) => ss_mosi,
      \rdata[3][6]_i_3_0\(6 downto 0) => treg(6 downto 0),
      \rdata_reg[3][0]\ => \rdata[3][0]_i_2_n_0\,
      \rdata_reg[3][0]_0\ => \rdata[3][0]_i_4_n_0\,
      \rdata_reg[3][1]\ => \rdata[3][1]_i_2_n_0\,
      \rdata_reg[3][1]_0\ => \rdata[3][1]_i_4_n_0\,
      \rdata_reg[3][2]\ => \rdata_reg[3][2]\,
      \rdata_reg[3][2]_0\ => \rdata[3][2]_i_4_n_0\,
      \rdata_reg[3][2]_1\ => wfifo_n_8,
      \rdata_reg[3][3]\ => wfifo_n_9,
      \rdata_reg[3][3]_0\ => \rdata[3][3]_i_4_n_0\,
      \rdata_reg[3][4]\ => \rdata[3][4]_i_3_n_0\,
      \rdata_reg[3][5]\ => \rdata[3][5]_i_4_n_0\,
      \rdata_reg[3][6]\ => \rdata_reg[3][6]\,
      \rdata_reg[3][6]_0\ => \rdata[3][6]_i_4_n_0\,
      \rdata_reg[3][7]\(5 downto 0) => SPI_MOSI_iobuf(6 downto 1),
      \rdata_reg[3][7]_0\ => \rdata[3][7]_i_10_n_0\,
      \rdata_reg[3][7]_i_7_0\(6) => spie,
      \rdata_reg[3][7]_i_7_0\(5) => spe,
      \rdata_reg[3][7]_i_7_0\(4) => \spcr_reg_n_0_[5]\,
      \rdata_reg[3][7]_i_7_0\(3) => cpol,
      \rdata_reg[3][7]_i_7_0\(2) => cpha,
      \rdata_reg[3][7]_i_7_0\(1 downto 0) => espr_1(1 downto 0),
      \rdata_reg[3][7]_i_7_1\(7 downto 6) => icnt(1 downto 0),
      \rdata_reg[3][7]_i_7_1\(5) => \sper_reg_n_0_[5]\,
      \rdata_reg[3][7]_i_7_1\(4) => \sper_reg_n_0_[4]\,
      \rdata_reg[3][7]_i_7_1\(3) => \sper_reg_n_0_[3]\,
      \rdata_reg[3][7]_i_7_1\(2) => smh_spi,
      \rdata_reg[3][7]_i_7_1\(1 downto 0) => espr_1(3 downto 2),
      \rp__0\ => \rp__0\,
      rvalid045_out => rvalid045_out,
      s_wvalid => s_wvalid,
      second_write => second_write,
      second_write_reg => \^second_write_reg\,
      spi_addr(3 downto 0) => spi_addr(3 downto 0),
      spif => spif,
      spif_i_2(1 downto 0) => \cs_timer_reg[0]\(1 downto 0),
      wcol => wcol,
      \wp_reg[1]_0\ => rfwe_reg_n_0
    );
rfwe_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spe,
      O => rfwe_i_1_n_0
    );
rfwe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => rfwe_i_3_n_0,
      I1 => state(1),
      I2 => state(0),
      I3 => bcnt(1),
      I4 => bcnt(0),
      I5 => bcnt(2),
      O => rfwe_i_2_n_0
    );
rfwe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clkcnt_reg_0(5),
      I1 => clkcnt_reg_0(8),
      I2 => clkcnt_reg_0(0),
      I3 => clkcnt_reg_0(3),
      I4 => rfwe_i_4_n_0,
      I5 => rfwe_i_5_n_0,
      O => rfwe_i_3_n_0
    );
rfwe_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clkcnt_reg_0(11),
      I1 => clkcnt_reg_0(1),
      I2 => clkcnt_reg_0(4),
      I3 => clkcnt_reg_0(2),
      O => rfwe_i_4_n_0
    );
rfwe_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clkcnt_reg_0(9),
      I1 => clkcnt_reg_0(7),
      I2 => clkcnt_reg_0(10),
      I3 => clkcnt_reg_0(6),
      O => rfwe_i_5_n_0
    );
rfwe_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rfwe_i_2_n_0,
      Q => rfwe_reg_n_0,
      R => rfwe_i_1_n_0
    );
rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFEFE00000000"
    )
        port map (
      I0 => rvalid_reg_0,
      I1 => rvalid045_out,
      I2 => \rdata[3][7]_i_4_n_0\,
      I3 => rvalid_reg_1,
      I4 => rvalid_reg_2,
      I5 => rvalid_reg_3,
      O => rvalid_reg
    );
sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdi_i,
      I1 => sample0_out,
      I2 => \sample__0\,
      O => sample_i_1_n_0
    );
sample_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080C00000000000"
    )
        port map (
      I0 => state(1),
      I1 => smh_spi,
      I2 => spe,
      I3 => state(0),
      I4 => cpha,
      I5 => rfwe_i_3_n_0,
      O => sample0_out
    );
sample_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sample_i_1_n_0,
      Q => \sample__0\,
      R => '0'
    );
sck_o_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82BE02FE"
    )
        port map (
      I0 => cpol,
      I1 => state(0),
      I2 => state(1),
      I3 => ss_sck,
      I4 => \state[1]_i_2_n_0\,
      O => sck_o_i_4_n_0
    );
sck_o_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wfifo_n_10,
      Q => ss_sck,
      R => rfwe_i_1_n_0
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => nxt_addr_reg(0),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => \rdata[3][0]_i_2_n_0\,
      O => \param_reg[3]_0\(0)
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(10),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(8),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(9),
      O => \param_reg[3]_0\(10)
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(11),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(9),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(10),
      O => \param_reg[3]_0\(11)
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(12),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(10),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(11),
      O => \param_reg[3]_0\(12)
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(13),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(11),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(12),
      O => \param_reg[3]_0\(13)
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(14),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(12),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(13),
      O => \param_reg[3]_0\(14)
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(15),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(13),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(14),
      O => \param_reg[3]_0\(15)
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(16),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(14),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(15),
      O => \param_reg[3]_0\(16)
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(17),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(15),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(16),
      O => \param_reg[3]_0\(17)
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(18),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(16),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(17),
      O => \param_reg[3]_0\(18)
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(19),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(17),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(18),
      O => \param_reg[3]_0\(19)
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(1),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => \shift_reg[1]_i_2_n_0\,
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(0),
      O => \param_reg[3]_0\(1)
    );
\shift_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => sample(1),
      I1 => param2(2),
      I2 => sdi_i,
      I3 => \cs_timer_reg[0]\(4),
      O => \shift_reg[1]_i_2_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(20),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(18),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(19),
      O => \param_reg[3]_0\(20)
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(21),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(19),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(20),
      O => \param_reg[3]_0\(21)
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(22),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(20),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(21),
      O => \param_reg[3]_0\(22)
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \shift_reg[31]_i_5_n_0\,
      I1 => sr_shift_two_r_reg,
      I2 => \shift_reg_reg[27]\,
      I3 => \shift_reg[31]_i_3_n_0\,
      O => sck_reg(0)
    );
\shift_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(23),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(21),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(22),
      O => \param_reg[3]_0\(23)
    );
\shift_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFFFE"
    )
        port map (
      I0 => \shift_reg[31]_i_3_n_0\,
      I1 => \shift_reg_reg[27]\,
      I2 => \shift_reg[31]_i_5_n_0\,
      I3 => SPI_MOSI_iobuf(23),
      I4 => \rdata_reg[3][6]\,
      I5 => SPI_MOSI_iobuf(22),
      O => \param_reg[3]_0\(24)
    );
\shift_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABABABBBA"
    )
        port map (
      I0 => \shift_reg_reg[27]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => \shift_reg[31]_i_5_n_0\,
      I3 => SPI_MOSI_iobuf(24),
      I4 => \rdata_reg[3][6]\,
      I5 => SPI_MOSI_iobuf(23),
      O => \param_reg[3]_0\(25)
    );
\shift_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \shift_reg[31]_i_5_n_0\,
      I1 => \shift_reg_reg[27]\,
      I2 => \shift_reg[31]_i_3_n_0\,
      I3 => SPI_MOSI_iobuf(25),
      I4 => \rdata_reg[3][6]\,
      I5 => SPI_MOSI_iobuf(24),
      O => \param_reg[3]_0\(26)
    );
\shift_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFEFEFFFC"
    )
        port map (
      I0 => param_dual_io,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => \shift_reg_reg[27]\,
      I3 => \shift_reg_reg[27]_0\,
      I4 => \shift_reg[31]_i_5_n_0\,
      I5 => param_fast_read,
      O => \param_reg[3]_0\(27)
    );
\shift_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \shift_reg_reg[27]\,
      I1 => \shift_reg[28]_i_2_n_0\,
      I2 => \shift_reg[31]_i_3_n_0\,
      O => \param_reg[3]_0\(28)
    );
\shift_reg[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => param_dual_io,
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(26),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(27),
      O => \shift_reg[28]_i_2_n_0\
    );
\shift_reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFC"
    )
        port map (
      I0 => param_dual_io,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => \shift_reg_reg[27]\,
      I3 => \shift_reg[31]_i_5_n_0\,
      I4 => \shift_reg_reg[29]\,
      O => \param_reg[3]_0\(29)
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(2),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(0),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(1),
      O => \param_reg[3]_0\(2)
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \shift_reg[31]_i_5_n_0\,
      I1 => \shift_reg_reg[27]\,
      I2 => \shift_reg[31]_i_3_n_0\,
      I3 => SPI_MOSI_iobuf(29),
      I4 => \rdata_reg[3][6]\,
      I5 => SPI_MOSI_iobuf(28),
      O => \param_reg[3]_0\(30)
    );
\shift_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sr_shift_two_r_reg,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => \shift_reg_reg[27]\,
      I3 => \shift_reg[31]_i_5_n_0\,
      O => sck_reg(1)
    );
\shift_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => \shift_reg_reg[31]\,
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => param_dual_io,
      I3 => \shift_reg[31]_i_3_n_0\,
      I4 => \shift_reg_reg[27]\,
      O => \param_reg[3]_0\(31)
    );
\shift_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cs_timer_reg[0]\(6),
      I1 => \rd_state[6]_i_2_n_0\,
      O => \shift_reg[31]_i_3_n_0\
    );
\shift_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cs_timer_reg[0]\(3),
      I1 => \rd_state[3]_i_2_n_0\,
      O => \shift_reg[31]_i_5_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(3),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(1),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(2),
      O => \param_reg[3]_0\(3)
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(4),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(2),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(3),
      O => \param_reg[3]_0\(4)
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(5),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(3),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(4),
      O => \param_reg[3]_0\(5)
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(6),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(4),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(5),
      O => \param_reg[3]_0\(6)
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(7),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(5),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(6),
      O => \param_reg[3]_0\(7)
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(8),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(6),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(7),
      O => \param_reg[3]_0\(8)
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => nxt_addr_reg(9),
      I1 => \shift_reg[31]_i_5_n_0\,
      I2 => SPI_MOSI_iobuf(7),
      I3 => sr_shift_two_r,
      I4 => sr_shift_inst_r,
      I5 => SPI_MOSI_iobuf(8),
      O => \param_reg[3]_0\(9)
    );
\softcs[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \param[7]_i_2_n_0\,
      O => \softcs[7]_i_1_n_0\
    );
\softcs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(0),
      Q => \softcs_reg_n_0_[0]\,
      R => \^areset\
    );
\softcs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(1),
      Q => \softcs_reg_n_0_[1]\,
      R => \^areset\
    );
\softcs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(2),
      Q => \softcs_reg_n_0_[2]\,
      R => \^areset\
    );
\softcs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(3),
      Q => \softcs_reg_n_0_[3]\,
      R => \^areset\
    );
\softcs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(4),
      Q => \softcs_reg_n_0_[4]\,
      S => \^areset\
    );
\softcs_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(5),
      Q => \softcs_reg_n_0_[5]\,
      S => \^areset\
    );
\softcs_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(6),
      Q => \softcs_reg_n_0_[6]\,
      S => \^areset\
    );
\softcs_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \softcs[7]_i_1_n_0\,
      D => reg_dat_i(7),
      Q => \softcs_reg_n_0_[7]\,
      S => \^areset\
    );
\spcr[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^areset\
    );
\spcr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \spcr[7]_i_4_n_0\,
      O => spcr
    );
\spcr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => rfifo_n_10,
      I3 => wcol_reg_0,
      I4 => second_write,
      O => \spcr[7]_i_4_n_0\
    );
\spcr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(0),
      Q => espr_1(0),
      R => \^areset\
    );
\spcr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(1),
      Q => espr_1(1),
      S => \^areset\
    );
\spcr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(2),
      Q => cpha,
      R => \^areset\
    );
\spcr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(3),
      Q => cpol,
      R => \^areset\
    );
\spcr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(5),
      Q => \spcr_reg_n_0_[5]\,
      R => \^areset\
    );
\spcr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(6),
      Q => spe,
      R => \^areset\
    );
\spcr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spcr,
      D => reg_dat_i(7),
      Q => spie,
      R => \^areset\
    );
\sper[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \spcr[7]_i_4_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => sper
    );
\sper_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(0),
      Q => espr_1(2),
      R => \^areset\
    );
\sper_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(1),
      Q => espr_1(3),
      R => \^areset\
    );
\sper_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(2),
      Q => smh_spi,
      R => \^areset\
    );
\sper_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(3),
      Q => \sper_reg_n_0_[3]\,
      R => \^areset\
    );
\sper_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(4),
      Q => \sper_reg_n_0_[4]\,
      R => \^areset\
    );
\sper_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(5),
      Q => \sper_reg_n_0_[5]\,
      R => \^areset\
    );
\sper_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(6),
      Q => icnt(0),
      R => \^areset\
    );
\sper_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sper,
      D => reg_dat_i(7),
      Q => icnt(1),
      R => \^areset\
    );
spi_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCDFFFFFCCD0"
    )
        port map (
      I0 => spi_run_i_2_n_0,
      I1 => \^ns_idle\(2),
      I2 => spi_run_i_3_n_0,
      I3 => spi_run_i_4_n_0,
      I4 => \^ns_idle\(3),
      I5 => spi_run_reg_0,
      O => spi_run_reg
    );
spi_run_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => cs_reg_3(0),
      I1 => \rd_state[6]_i_2_n_0\,
      I2 => \rd_state_reg[6]_0\,
      I3 => \cs_timer_reg[0]\(6),
      O => spi_run_i_2_n_0
    );
spi_run_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \^ns_idle\(2),
      I1 => spi_run_i_2_n_0,
      I2 => cs_reg_3(2),
      I3 => cs_reg_3(1),
      O => spi_run_i_3_n_0
    );
spi_run_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ns_idle\(1),
      I1 => \^ns_idle\(0),
      O => spi_run_i_4_n_0
    );
spif_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0EEE0E0E0E0"
    )
        port map (
      I0 => spif_i_2_n_0,
      I1 => spif_i_3_n_0,
      I2 => spif,
      I3 => tcnt(0),
      I4 => tcnt(1),
      I5 => rfwe_reg_n_0,
      O => spif0
    );
spif_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1FFFFFFFFF"
    )
        port map (
      I0 => second_write,
      I1 => wcol_reg_0,
      I2 => rfifo_n_10,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \rdata[1][7]_i_2_n_0\,
      O => spif_i_2_n_0
    );
spif_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => wfifo_n_13,
      I1 => s_wdata(31),
      I2 => second_write,
      O => spif_i_3_n_0
    );
spif_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spif0,
      Q => spif,
      R => rfwe_i_1_n_0
    );
sr_shift_inst_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => \^ns_idle\(2),
      I1 => sr_shift_inst_r_reg_0,
      I2 => sr_shift_two_r_reg,
      I3 => \shift_reg[31]_i_5_n_0\,
      I4 => sr_shift_inst_r,
      O => sr_shift_inst_r_reg
    );
sr_shift_two_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8FFA8A8A800"
    )
        port map (
      I0 => param_dual_io,
      I1 => sr_shift_two_r_reg_0,
      I2 => \^ns_idle\(3),
      I3 => sr_shift_two_r_reg,
      I4 => sr_shift_two_r_i_3_n_0,
      I5 => sr_shift_two_r,
      O => \param_reg[3]_1\
    );
sr_shift_two_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007500"
    )
        port map (
      I0 => \rd_state[4]_i_3_n_0\,
      I1 => \rd_state[4]_i_4_n_0\,
      I2 => \cs_timer_reg[0]\(3),
      I3 => \rd_state_reg[2]_1\,
      I4 => \cs_timer_reg[0]\(4),
      O => sr_shift_two_r_i_3_n_0
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FC030C0"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => rfwe_i_3_n_0,
      I2 => state(0),
      I3 => state(1),
      I4 => smh_spi,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bcnt(1),
      I1 => bcnt(0),
      I2 => bcnt(2),
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wfifo_n_16,
      Q => state(0),
      R => rfwe_i_1_n_0
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rfwe_i_1_n_0
    );
\tcnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCCE0CC"
    )
        port map (
      I0 => tcnt(1),
      I1 => icnt(0),
      I2 => rfwe_reg_n_0,
      I3 => spe,
      I4 => tcnt(0),
      O => \tcnt[0]_i_1_n_0\
    );
\tcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAA20AA"
    )
        port map (
      I0 => icnt(1),
      I1 => tcnt(0),
      I2 => rfwe_reg_n_0,
      I3 => spe,
      I4 => tcnt(1),
      O => \tcnt[1]_i_1_n_0\
    );
\tcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tcnt[0]_i_1_n_0\,
      Q => tcnt(0),
      R => '0'
    );
\tcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tcnt[1]_i_1_n_0\,
      Q => tcnt(1),
      R => '0'
    );
\tot_bytes[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABAAABAAAAA"
    )
        port map (
      I0 => \rdata[3][7]_i_4_n_0\,
      I1 => buf_busy,
      I2 => \cs_timer_reg[0]\(0),
      I3 => pdreq_r,
      I4 => s_awvalid,
      I5 => s_arvalid,
      O => buf_busy_reg_0(0)
    );
\treg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B00040FF"
    )
        port map (
      I0 => cpha,
      I1 => smh_spi,
      I2 => rfwe_i_3_n_0,
      I3 => state(1),
      I4 => state(0),
      O => \treg[7]_i_1_n_0\
    );
\treg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => treg(0),
      R => rfwe_i_1_n_0
    );
\treg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => treg(1),
      R => rfwe_i_1_n_0
    );
\treg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => treg(2),
      R => rfwe_i_1_n_0
    );
\treg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => treg(3),
      R => rfwe_i_1_n_0
    );
\treg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => treg(4),
      R => rfwe_i_1_n_0
    );
\treg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => treg(5),
      R => rfwe_i_1_n_0
    );
\treg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => treg(6),
      R => rfwe_i_1_n_0
    );
\treg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \treg[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => ss_mosi,
      R => rfwe_i_1_n_0
    );
wcol_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => wfifo_n_12,
      I1 => s_wdata(30),
      I2 => second_write,
      O => wcol_i_2_n_0
    );
wcol_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wcol0,
      Q => wcol,
      R => rfwe_i_1_n_0
    );
wfifo: entity work.bd_top_spi_flash_ctrl_0_0_spi_fifo4_0
     port map (
      D(7 downto 0) => reg_dat_i(7 downto 0),
      Q(0) => smh_spi,
      aclk => aclk,
      aresetn => aresetn,
      busy0 => busy0,
      busy_reg => busy_i_2_n_0,
      gb_reg_0 => wfifo_n_8,
      gb_reg_1(2) => spe,
      gb_reg_1(1) => cpol,
      gb_reg_1(0) => cpha,
      \rp__0\ => \rp__0\,
      \rp_reg[0]_0\ => wfifo_n_15,
      s_wdata(31 downto 0) => s_wdata(31 downto 0),
      s_wdata_15_sp_1 => wfifo_n_13,
      s_wdata_30_sp_1 => wfifo_n_12,
      \sample__0\ => \sample__0\,
      sck_o_reg => sck_o_i_4_n_0,
      sdi_i => sdi_i,
      second_write => second_write,
      ss_sck => ss_sck,
      state(1 downto 0) => state(1 downto 0),
      \state_reg[0]\ => wfifo_n_10,
      \state_reg[0]_0\ => wfifo_n_16,
      \state_reg[0]_1\ => rfwe_i_3_n_0,
      \state_reg[0]_2\ => \state[1]_i_2_n_0\,
      \treg_reg[6]\(7 downto 0) => p_2_in(7 downto 0),
      \treg_reg[7]\(6 downto 0) => treg(6 downto 0),
      wcol => wcol,
      wcol0 => wcol0,
      wcol_reg => \spcr[7]_i_4_n_0\,
      wcol_reg_0 => \rdata[1][7]_i_2_n_0\,
      wcol_reg_1 => wcol_i_2_n_0,
      wcol_reg_2(3 downto 0) => Q(3 downto 0),
      wcol_reg_3 => \^buf_addr_reg[0]\,
      wcol_reg_4 => rfifo_n_10,
      wcol_reg_5 => wcol_reg_0,
      wfre => wfre,
      \wp_reg[1]_0\ => wfifo_n_9
    );
wfre_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wfifo_n_15,
      Q => wfre,
      R => rfwe_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl is
  port (
    s_awready : out STD_LOGIC;
    rvalid_reg_0 : out STD_LOGIC;
    inta_o : out STD_LOGIC;
    s_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rlast : out STD_LOGIC;
    s_bvalid : out STD_LOGIC;
    s_wready : out STD_LOGIC;
    s_arready : out STD_LOGIC;
    SPI_CLK : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    power_down_ack : out STD_LOGIC;
    SPI_MOSI : inout STD_LOGIC;
    SPI_MISO : inout STD_LOGIC;
    s_arvalid : in STD_LOGIC;
    s_awvalid : in STD_LOGIC;
    s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    power_down_req : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wvalid : in STD_LOGIC;
    s_bready : in STD_LOGIC;
    s_wlast : in STD_LOGIC;
    s_rready : in STD_LOGIC;
    fast_startup : in STD_LOGIC;
    s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl : entity is "spi_flash_ctrl";
end bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl;

architecture STRUCTURE of bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl is
  signal SPI_MOSI_iobuf_i_5_n_0 : STD_LOGIC;
  signal adbit_cnt0 : STD_LOGIC;
  signal \adbit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \adbit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal adbit_cnt_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal areset : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal buf_addr : STD_LOGIC;
  signal \buf_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[22]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[25]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[26]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[27]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[28]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[29]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[30]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \buf_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \buf_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \buf_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal buf_busy : STD_LOGIC;
  signal buf_busy_d : STD_LOGIC;
  signal buf_busy_i_1_n_0 : STD_LOGIC;
  signal buf_busy_i_2_n_0 : STD_LOGIC;
  signal \buf_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[4]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[5]_i_2_n_0\ : STD_LOGIC;
  signal buf_len : STD_LOGIC;
  signal \buf_len[2]_i_2_n_0\ : STD_LOGIC;
  signal \buf_len[3]_i_3_n_0\ : STD_LOGIC;
  signal buf_len_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal buf_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \buf_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_size[2]_i_1_n_0\ : STD_LOGIC;
  signal buf_wrap0 : STD_LOGIC;
  signal buf_wrap_i_2_n_0 : STD_LOGIC;
  signal buf_wrap_reg_n_0 : STD_LOGIC;
  signal buf_write0 : STD_LOGIC;
  signal buf_write_i_1_n_0 : STD_LOGIC;
  signal buf_write_reg_n_0 : STD_LOGIC;
  signal burst_cont0 : STD_LOGIC;
  signal \burst_cont0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \burst_cont0_carry__0_n_1\ : STD_LOGIC;
  signal \burst_cont0_carry__0_n_2\ : STD_LOGIC;
  signal \burst_cont0_carry__0_n_3\ : STD_LOGIC;
  signal burst_cont0_carry_i_1_n_0 : STD_LOGIC;
  signal burst_cont0_carry_i_2_n_0 : STD_LOGIC;
  signal burst_cont0_carry_i_3_n_0 : STD_LOGIC;
  signal burst_cont0_carry_i_4_n_0 : STD_LOGIC;
  signal burst_cont0_carry_n_0 : STD_LOGIC;
  signal burst_cont0_carry_n_1 : STD_LOGIC;
  signal burst_cont0_carry_n_2 : STD_LOGIC;
  signal burst_cont0_carry_n_3 : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal \clkcnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \clkcnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \clkcnt[8]_i_2__0_n_0\ : STD_LOGIC;
  signal clkcnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cs : STD_LOGIC;
  signal cs_i_5_n_0 : STD_LOGIC;
  signal cs_i_6_n_0 : STD_LOGIC;
  signal \cs_timer[0]_i_2_n_0\ : STD_LOGIC;
  signal \cs_timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \cs_timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \cs_timer[0]_i_6_n_0\ : STD_LOGIC;
  signal cs_timer_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \cs_timer_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cs_timer_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cs_timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cs_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cs_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cs_timer_reg__0\ : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal cswcnt0 : STD_LOGIC;
  signal cswcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dual_in_r : STD_LOGIC;
  signal io_hit049_in : STD_LOGIC;
  signal \io_hit0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \io_hit0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \io_hit0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \io_hit0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \io_hit0_carry__0_n_0\ : STD_LOGIC;
  signal \io_hit0_carry__0_n_1\ : STD_LOGIC;
  signal \io_hit0_carry__0_n_2\ : STD_LOGIC;
  signal \io_hit0_carry__0_n_3\ : STD_LOGIC;
  signal \io_hit0_carry__1_n_3\ : STD_LOGIC;
  signal io_hit0_carry_i_1_n_0 : STD_LOGIC;
  signal io_hit0_carry_i_2_n_0 : STD_LOGIC;
  signal io_hit0_carry_i_3_n_0 : STD_LOGIC;
  signal io_hit0_carry_i_4_n_0 : STD_LOGIC;
  signal io_hit0_carry_n_0 : STD_LOGIC;
  signal io_hit0_carry_n_1 : STD_LOGIC;
  signal io_hit0_carry_n_2 : STD_LOGIC;
  signal io_hit0_carry_n_3 : STD_LOGIC;
  signal ns_idle : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal nxt_addr0 : STD_LOGIC;
  signal \nxt_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_addr[0]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_addr[0]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_addr[0]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_addr[12]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr[12]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[12]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_addr[16]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_addr[16]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr[16]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[16]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_addr[20]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_addr[4]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr[8]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_addr[8]_i_5_n_0\ : STD_LOGIC;
  signal nxt_addr_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \nxt_addr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \nxt_addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal p_62_in : STD_LOGIC;
  signal pdreq_r : STD_LOGIC;
  signal \rd_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \rd_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \rd_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_10_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \rd_state[4]_i_9_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \rd_state[5]_i_7_n_0\ : STD_LOGIC;
  signal \rd_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_4_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_5_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_6_n_0\ : STD_LOGIC;
  signal \rd_state[7]_i_7_n_0\ : STD_LOGIC;
  signal \rd_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state[9]_i_2_n_0\ : STD_LOGIC;
  signal \rd_state[9]_i_3_n_0\ : STD_LOGIC;
  signal \rd_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_state_reg_n_0_[5]\ : STD_LOGIC;
  signal rdata0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[3][7]_i_8_n_0\ : STD_LOGIC;
  signal rvalid045_out : STD_LOGIC;
  signal rvalid1 : STD_LOGIC;
  signal rvalid_i_2_n_0 : STD_LOGIC;
  signal rvalid_i_3_n_0 : STD_LOGIC;
  signal \^rvalid_reg_0\ : STD_LOGIC;
  signal s_addr : STD_LOGIC;
  signal \^s_awready\ : STD_LOGIC;
  signal \^s_bvalid\ : STD_LOGIC;
  signal s_csturn : STD_LOGIC;
  signal s_data : STD_LOGIC;
  signal s_ioread : STD_LOGIC;
  signal s_pdenter : STD_LOGIC;
  signal s_pdexit : STD_LOGIC;
  signal s_pwrdown : STD_LOGIC;
  signal s_startup : STD_LOGIC;
  signal sample : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample[1]_i_2_n_0\ : STD_LOGIC;
  signal sck : STD_LOGIC;
  signal sck_i_1_n_0 : STD_LOGIC;
  signal sdi_i : STD_LOGIC;
  signal sdi_o : STD_LOGIC;
  signal sdo_i : STD_LOGIC;
  signal sdo_o : STD_LOGIC;
  signal second_write : STD_LOGIC;
  signal second_write0 : STD_LOGIC;
  signal second_write_i_2_n_0 : STD_LOGIC;
  signal second_write_i_3_n_0 : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \shift_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal simple_spi_n_1 : STD_LOGIC;
  signal simple_spi_n_2 : STD_LOGIC;
  signal simple_spi_n_20 : STD_LOGIC;
  signal simple_spi_n_21 : STD_LOGIC;
  signal simple_spi_n_22 : STD_LOGIC;
  signal simple_spi_n_23 : STD_LOGIC;
  signal simple_spi_n_24 : STD_LOGIC;
  signal simple_spi_n_25 : STD_LOGIC;
  signal simple_spi_n_26 : STD_LOGIC;
  signal simple_spi_n_27 : STD_LOGIC;
  signal simple_spi_n_28 : STD_LOGIC;
  signal simple_spi_n_3 : STD_LOGIC;
  signal simple_spi_n_31 : STD_LOGIC;
  signal simple_spi_n_32 : STD_LOGIC;
  signal simple_spi_n_33 : STD_LOGIC;
  signal simple_spi_n_34 : STD_LOGIC;
  signal simple_spi_n_35 : STD_LOGIC;
  signal simple_spi_n_36 : STD_LOGIC;
  signal simple_spi_n_37 : STD_LOGIC;
  signal simple_spi_n_38 : STD_LOGIC;
  signal simple_spi_n_39 : STD_LOGIC;
  signal simple_spi_n_4 : STD_LOGIC;
  signal simple_spi_n_40 : STD_LOGIC;
  signal simple_spi_n_41 : STD_LOGIC;
  signal simple_spi_n_42 : STD_LOGIC;
  signal simple_spi_n_43 : STD_LOGIC;
  signal simple_spi_n_44 : STD_LOGIC;
  signal simple_spi_n_45 : STD_LOGIC;
  signal simple_spi_n_46 : STD_LOGIC;
  signal simple_spi_n_47 : STD_LOGIC;
  signal simple_spi_n_48 : STD_LOGIC;
  signal simple_spi_n_49 : STD_LOGIC;
  signal simple_spi_n_5 : STD_LOGIC;
  signal simple_spi_n_50 : STD_LOGIC;
  signal simple_spi_n_51 : STD_LOGIC;
  signal simple_spi_n_52 : STD_LOGIC;
  signal simple_spi_n_53 : STD_LOGIC;
  signal simple_spi_n_54 : STD_LOGIC;
  signal simple_spi_n_55 : STD_LOGIC;
  signal simple_spi_n_56 : STD_LOGIC;
  signal simple_spi_n_57 : STD_LOGIC;
  signal simple_spi_n_58 : STD_LOGIC;
  signal simple_spi_n_59 : STD_LOGIC;
  signal simple_spi_n_60 : STD_LOGIC;
  signal simple_spi_n_61 : STD_LOGIC;
  signal simple_spi_n_62 : STD_LOGIC;
  signal simple_spi_n_63 : STD_LOGIC;
  signal simple_spi_n_64 : STD_LOGIC;
  signal simple_spi_n_65 : STD_LOGIC;
  signal simple_spi_n_68 : STD_LOGIC;
  signal simple_spi_n_71 : STD_LOGIC;
  signal simple_spi_n_72 : STD_LOGIC;
  signal simple_spi_n_73 : STD_LOGIC;
  signal simple_spi_n_74 : STD_LOGIC;
  signal simple_spi_n_75 : STD_LOGIC;
  signal simple_spi_n_76 : STD_LOGIC;
  signal simple_spi_n_77 : STD_LOGIC;
  signal simple_spi_n_78 : STD_LOGIC;
  signal simple_spi_n_79 : STD_LOGIC;
  signal simple_spi_n_80 : STD_LOGIC;
  signal simple_spi_n_81 : STD_LOGIC;
  signal simple_spi_n_82 : STD_LOGIC;
  signal simple_spi_n_83 : STD_LOGIC;
  signal simple_spi_n_84 : STD_LOGIC;
  signal simple_spi_n_85 : STD_LOGIC;
  signal simple_spi_n_86 : STD_LOGIC;
  signal spi_run_reg_n_0 : STD_LOGIC;
  signal sr_shift_inst_r : STD_LOGIC;
  signal sr_shift_inst_r_i_2_n_0 : STD_LOGIC;
  signal sr_shift_two_r : STD_LOGIC;
  signal sr_shift_two_r_i_2_n_0 : STD_LOGIC;
  signal sr_shift_two_r_i_4_n_0 : STD_LOGIC;
  signal tot_bytes : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tot_bytes[0]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[0]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[1]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[2]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[3]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[3]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[3]_i_3_n_0\ : STD_LOGIC;
  signal \tot_bytes[4]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[4]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[4]_i_3_n_0\ : STD_LOGIC;
  signal \tot_bytes[4]_i_4_n_0\ : STD_LOGIC;
  signal \tot_bytes[5]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[5]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[5]_i_3_n_0\ : STD_LOGIC;
  signal \tot_bytes[6]_i_1_n_0\ : STD_LOGIC;
  signal \tot_bytes[6]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[6]_i_3_n_0\ : STD_LOGIC;
  signal \tot_bytes[6]_i_4_n_0\ : STD_LOGIC;
  signal \tot_bytes[7]_i_2_n_0\ : STD_LOGIC;
  signal \tot_bytes[7]_i_3_n_0\ : STD_LOGIC;
  signal \tot_bytes[7]_i_4_n_0\ : STD_LOGIC;
  signal \tot_bytes[7]_i_5_n_0\ : STD_LOGIC;
  signal \tot_bytes[7]_i_6_n_0\ : STD_LOGIC;
  signal NLW_burst_cont0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_burst_cont0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cs_timer_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_io_hit0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_io_hit0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_io_hit0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_io_hit0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nxt_addr_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of SPI_MISO_iobuf : label is "PRIMITIVE";
  attribute BOX_TYPE of SPI_MOSI_iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adbit_cnt[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \adbit_cnt[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \adbit_cnt[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adbit_cnt[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adbit_cnt[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \buf_addr[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \buf_addr[10]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \buf_addr[11]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \buf_addr[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \buf_addr[13]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \buf_addr[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \buf_addr[15]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \buf_addr[16]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \buf_addr[17]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buf_addr[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \buf_addr[19]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \buf_addr[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \buf_addr[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \buf_addr[21]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \buf_addr[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \buf_addr[23]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \buf_addr[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \buf_addr[25]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \buf_addr[26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \buf_addr[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \buf_addr[28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \buf_addr[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \buf_addr[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \buf_addr[30]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \buf_addr[31]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buf_addr[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \buf_addr[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \buf_addr[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \buf_addr[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \buf_addr[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \buf_addr[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \buf_addr[9]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of buf_busy_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \buf_id[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \buf_id[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \buf_id[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \buf_id[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \buf_id[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \buf_id[5]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buf_len[3]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \buf_size[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \buf_size[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buf_size[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_cont0_carry__0_i_7\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of bvalid_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of cs_i_5 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cswcnt[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cswcnt[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cswcnt[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cswcnt[3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \nxt_addr[20]_i_6\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of power_down_ack_INST_0 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rd_state[0]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rd_state[0]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_state[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_state[2]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_state[4]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_state[4]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rd_state[5]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rd_state[5]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rd_state[5]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rd_state[5]_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rd_state[6]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rd_state[7]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rd_state[7]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd_state[8]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rd_state[9]_i_3\ : label is "soft_lutpair27";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \rd_state_reg[0]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[1]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[2]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[3]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[4]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[5]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[6]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[7]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[8]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute FSM_ENCODED_STATES of \rd_state_reg[9]\ : label is "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001";
  attribute SOFT_HLUTNM of \rdata[0][7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdata[3][7]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdata[3][7]_i_8\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of s_arready_INST_0 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of s_awready_INST_0 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of s_rlast_INST_0 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of s_wready_INST_0 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sample[1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of second_write_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of second_write_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_reg[29]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of sr_shift_two_r_i_4 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \tot_bytes[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tot_bytes[3]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tot_bytes[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tot_bytes[4]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \tot_bytes[5]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tot_bytes[5]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tot_bytes[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tot_bytes[6]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tot_bytes[7]_i_4\ : label is "soft_lutpair31";
begin
  rvalid_reg_0 <= \^rvalid_reg_0\;
  s_awready <= \^s_awready\;
  s_bvalid <= \^s_bvalid\;
SPI_MISO_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sdi_o,
      IO => SPI_MISO,
      O => sdi_i,
      T => simple_spi_n_1
    );
SPI_MOSI_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sdo_o,
      IO => SPI_MOSI,
      O => sdo_i,
      T => simple_spi_n_2
    );
SPI_MOSI_iobuf_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF8F8F8"
    )
        port map (
      I0 => adbit_cnt_reg(4),
      I1 => adbit_cnt_reg(3),
      I2 => adbit_cnt_reg(5),
      I3 => adbit_cnt_reg(1),
      I4 => adbit_cnt_reg(2),
      O => SPI_MOSI_iobuf_i_5_n_0
    );
\adbit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adbit_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\adbit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => adbit_cnt_reg(0),
      I1 => adbit_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\adbit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => adbit_cnt_reg(2),
      I1 => adbit_cnt_reg(0),
      I2 => adbit_cnt_reg(1),
      O => \p_0_in__1\(2)
    );
\adbit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => adbit_cnt_reg(3),
      I1 => adbit_cnt_reg(2),
      I2 => adbit_cnt_reg(1),
      I3 => adbit_cnt_reg(0),
      O => \p_0_in__1\(3)
    );
\adbit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => adbit_cnt_reg(4),
      I1 => adbit_cnt_reg(3),
      I2 => adbit_cnt_reg(2),
      I3 => adbit_cnt_reg(1),
      I4 => adbit_cnt_reg(0),
      O => \adbit_cnt[4]_i_1_n_0\
    );
\adbit_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rd_state_reg_n_0_[0]\,
      I1 => s_csturn,
      O => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_addr,
      I1 => sck,
      I2 => \sample[1]_i_2_n_0\,
      I3 => spi_run_reg_n_0,
      O => adbit_cnt0
    );
\adbit_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => adbit_cnt_reg(3),
      I1 => adbit_cnt_reg(2),
      I2 => adbit_cnt_reg(1),
      I3 => adbit_cnt_reg(0),
      I4 => adbit_cnt_reg(4),
      I5 => adbit_cnt_reg(5),
      O => \p_0_in__1\(5)
    );
\adbit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \p_0_in__1\(0),
      Q => adbit_cnt_reg(0),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \p_0_in__1\(1),
      Q => adbit_cnt_reg(1),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \p_0_in__1\(2),
      Q => adbit_cnt_reg(2),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \p_0_in__1\(3),
      Q => adbit_cnt_reg(3),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \adbit_cnt[4]_i_1_n_0\,
      Q => adbit_cnt_reg(4),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\adbit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => adbit_cnt0,
      D => \p_0_in__1\(5),
      Q => adbit_cnt_reg(5),
      R => \adbit_cnt[5]_i_1_n_0\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => aresetn,
      I3 => \rd_state_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => bit_cnt(0),
      I3 => aresetn,
      I4 => \rd_state_reg_n_0_[0]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => aresetn,
      I5 => \rd_state_reg_n_0_[0]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \rd_state[0]_i_6_n_0\,
      I1 => s_pdenter,
      I2 => s_pdexit,
      I3 => s_data,
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => bit_cnt(0),
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => bit_cnt(1),
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => bit_cnt(2),
      R => '0'
    );
\buf_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(0),
      I1 => s_awvalid,
      I2 => s_araddr(0),
      O => \buf_addr[0]_i_1_n_0\
    );
\buf_addr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(10),
      I1 => s_awvalid,
      I2 => s_araddr(10),
      O => \buf_addr[10]_i_1_n_0\
    );
\buf_addr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(11),
      I1 => s_awvalid,
      I2 => s_araddr(11),
      O => \buf_addr[11]_i_1_n_0\
    );
\buf_addr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(12),
      I1 => s_awvalid,
      I2 => s_araddr(12),
      O => \buf_addr[12]_i_1_n_0\
    );
\buf_addr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(13),
      I1 => s_awvalid,
      I2 => s_araddr(13),
      O => \buf_addr[13]_i_1_n_0\
    );
\buf_addr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(14),
      I1 => s_awvalid,
      I2 => s_araddr(14),
      O => \buf_addr[14]_i_1_n_0\
    );
\buf_addr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(15),
      I1 => s_awvalid,
      I2 => s_araddr(15),
      O => \buf_addr[15]_i_1_n_0\
    );
\buf_addr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(16),
      I1 => s_awvalid,
      I2 => s_araddr(16),
      O => \buf_addr[16]_i_1_n_0\
    );
\buf_addr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(17),
      I1 => s_awvalid,
      I2 => s_araddr(17),
      O => \buf_addr[17]_i_1_n_0\
    );
\buf_addr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(18),
      I1 => s_awvalid,
      I2 => s_araddr(18),
      O => \buf_addr[18]_i_1_n_0\
    );
\buf_addr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(19),
      I1 => s_awvalid,
      I2 => s_araddr(19),
      O => \buf_addr[19]_i_1_n_0\
    );
\buf_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(1),
      I1 => s_awvalid,
      I2 => s_araddr(1),
      O => \buf_addr[1]_i_1_n_0\
    );
\buf_addr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(20),
      I1 => s_awvalid,
      I2 => s_araddr(20),
      O => \buf_addr[20]_i_1_n_0\
    );
\buf_addr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(21),
      I1 => s_awvalid,
      I2 => s_araddr(21),
      O => \buf_addr[21]_i_1_n_0\
    );
\buf_addr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(22),
      I1 => s_awvalid,
      I2 => s_araddr(22),
      O => \buf_addr[22]_i_1_n_0\
    );
\buf_addr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(23),
      I1 => s_awvalid,
      I2 => s_araddr(23),
      O => \buf_addr[23]_i_1_n_0\
    );
\buf_addr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(24),
      I1 => s_awvalid,
      I2 => s_araddr(24),
      O => \buf_addr[24]_i_1_n_0\
    );
\buf_addr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(25),
      I1 => s_awvalid,
      I2 => s_araddr(25),
      O => \buf_addr[25]_i_1_n_0\
    );
\buf_addr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(26),
      I1 => s_awvalid,
      I2 => s_araddr(26),
      O => \buf_addr[26]_i_1_n_0\
    );
\buf_addr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(27),
      I1 => s_awvalid,
      I2 => s_araddr(27),
      O => \buf_addr[27]_i_1_n_0\
    );
\buf_addr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(28),
      I1 => s_awvalid,
      I2 => s_araddr(28),
      O => \buf_addr[28]_i_1_n_0\
    );
\buf_addr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(29),
      I1 => s_awvalid,
      I2 => s_araddr(29),
      O => \buf_addr[29]_i_1_n_0\
    );
\buf_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(2),
      I1 => s_awvalid,
      I2 => s_araddr(2),
      O => \buf_addr[2]_i_1_n_0\
    );
\buf_addr[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(30),
      I1 => s_awvalid,
      I2 => s_araddr(30),
      O => \buf_addr[30]_i_1_n_0\
    );
\buf_addr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(31),
      I1 => s_awvalid,
      I2 => s_araddr(31),
      O => \buf_addr[31]_i_1_n_0\
    );
\buf_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(3),
      I1 => s_awvalid,
      I2 => s_araddr(3),
      O => \buf_addr[3]_i_1_n_0\
    );
\buf_addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(4),
      I1 => s_awvalid,
      I2 => s_araddr(4),
      O => \buf_addr[4]_i_1_n_0\
    );
\buf_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(5),
      I1 => s_awvalid,
      I2 => s_araddr(5),
      O => \buf_addr[5]_i_1_n_0\
    );
\buf_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(6),
      I1 => s_awvalid,
      I2 => s_araddr(6),
      O => \buf_addr[6]_i_1_n_0\
    );
\buf_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(7),
      I1 => s_awvalid,
      I2 => s_araddr(7),
      O => \buf_addr[7]_i_1_n_0\
    );
\buf_addr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(8),
      I1 => s_awvalid,
      I2 => s_araddr(8),
      O => \buf_addr[8]_i_1_n_0\
    );
\buf_addr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awaddr(9),
      I1 => s_awvalid,
      I2 => s_araddr(9),
      O => \buf_addr[9]_i_1_n_0\
    );
\buf_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[0]_i_1_n_0\,
      Q => \buf_addr_reg_n_0_[0]\,
      R => '0'
    );
\buf_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[10]_i_1_n_0\,
      Q => p_1_in(6),
      R => '0'
    );
\buf_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[11]_i_1_n_0\,
      Q => p_1_in(7),
      R => '0'
    );
\buf_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[12]_i_1_n_0\,
      Q => p_1_in(8),
      R => '0'
    );
\buf_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[13]_i_1_n_0\,
      Q => p_1_in(9),
      R => '0'
    );
\buf_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[14]_i_1_n_0\,
      Q => p_1_in(10),
      R => '0'
    );
\buf_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[15]_i_1_n_0\,
      Q => p_1_in(11),
      R => '0'
    );
\buf_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[16]_i_1_n_0\,
      Q => p_1_in(12),
      R => '0'
    );
\buf_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[17]_i_1_n_0\,
      Q => p_1_in(13),
      R => '0'
    );
\buf_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[18]_i_1_n_0\,
      Q => p_1_in(14),
      R => '0'
    );
\buf_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[19]_i_1_n_0\,
      Q => p_1_in(15),
      R => '0'
    );
\buf_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[1]_i_1_n_0\,
      Q => \buf_addr_reg_n_0_[1]\,
      R => '0'
    );
\buf_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[20]_i_1_n_0\,
      Q => p_1_in(16),
      R => '0'
    );
\buf_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[21]_i_1_n_0\,
      Q => p_1_in(17),
      R => '0'
    );
\buf_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[22]_i_1_n_0\,
      Q => p_1_in(18),
      R => '0'
    );
\buf_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[23]_i_1_n_0\,
      Q => p_1_in(19),
      R => '0'
    );
\buf_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[24]_i_1_n_0\,
      Q => p_1_in(20),
      R => '0'
    );
\buf_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[25]_i_1_n_0\,
      Q => p_1_in(21),
      R => '0'
    );
\buf_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[26]_i_1_n_0\,
      Q => p_1_in(22),
      R => '0'
    );
\buf_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[27]_i_1_n_0\,
      Q => p_1_in(23),
      R => '0'
    );
\buf_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[28]_i_1_n_0\,
      Q => p_1_in(24),
      R => '0'
    );
\buf_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[29]_i_1_n_0\,
      Q => p_1_in(25),
      R => '0'
    );
\buf_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[2]_i_1_n_0\,
      Q => \buf_addr_reg_n_0_[2]\,
      R => '0'
    );
\buf_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[30]_i_1_n_0\,
      Q => p_1_in(26),
      R => '0'
    );
\buf_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[31]_i_1_n_0\,
      Q => p_1_in(27),
      R => '0'
    );
\buf_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[3]_i_1_n_0\,
      Q => \buf_addr_reg_n_0_[3]\,
      R => '0'
    );
\buf_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[4]_i_1_n_0\,
      Q => p_1_in(0),
      R => '0'
    );
\buf_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[5]_i_1_n_0\,
      Q => p_1_in(1),
      R => '0'
    );
\buf_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[6]_i_1_n_0\,
      Q => p_1_in(2),
      R => '0'
    );
\buf_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[7]_i_1_n_0\,
      Q => p_1_in(3),
      R => '0'
    );
\buf_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[8]_i_1_n_0\,
      Q => p_1_in(4),
      R => '0'
    );
\buf_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_addr[9]_i_1_n_0\,
      Q => p_1_in(5),
      R => '0'
    );
buf_busy_d_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => buf_busy,
      Q => buf_busy_d,
      R => '0'
    );
buf_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DDDFFFF0000FFFF"
    )
        port map (
      I0 => buf_busy_i_2_n_0,
      I1 => simple_spi_n_22,
      I2 => \^s_bvalid\,
      I3 => s_bready,
      I4 => \tot_bytes[7]_i_4_n_0\,
      I5 => buf_busy,
      O => buf_busy_i_1_n_0
    );
buf_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => s_rready,
      O => buf_busy_i_2_n_0
    );
buf_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => buf_busy_i_1_n_0,
      Q => buf_busy,
      R => areset
    );
\buf_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(0),
      I1 => s_awvalid,
      I2 => s_arid(0),
      O => \buf_id[0]_i_1_n_0\
    );
\buf_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(1),
      I1 => s_awvalid,
      I2 => s_arid(1),
      O => \buf_id[1]_i_1_n_0\
    );
\buf_id[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(2),
      I1 => s_awvalid,
      I2 => s_arid(2),
      O => \buf_id[2]_i_1_n_0\
    );
\buf_id[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(3),
      I1 => s_awvalid,
      I2 => s_arid(3),
      O => \buf_id[3]_i_1_n_0\
    );
\buf_id[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(4),
      I1 => s_awvalid,
      I2 => s_arid(4),
      O => \buf_id[4]_i_1_n_0\
    );
\buf_id[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200000"
    )
        port map (
      I0 => aresetn,
      I1 => buf_busy,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => pdreq_r,
      I4 => s_awvalid,
      I5 => s_arvalid,
      O => buf_addr
    );
\buf_id[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awid(5),
      I1 => s_awvalid,
      I2 => s_arid(5),
      O => \buf_id[5]_i_2_n_0\
    );
\buf_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[0]_i_1_n_0\,
      Q => s_bid(0),
      R => '0'
    );
\buf_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[1]_i_1_n_0\,
      Q => s_bid(1),
      R => '0'
    );
\buf_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[2]_i_1_n_0\,
      Q => s_bid(2),
      R => '0'
    );
\buf_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[3]_i_1_n_0\,
      Q => s_bid(3),
      R => '0'
    );
\buf_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[4]_i_1_n_0\,
      Q => s_bid(4),
      R => '0'
    );
\buf_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_id[5]_i_2_n_0\,
      Q => s_bid(5),
      R => '0'
    );
\buf_len[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => buf_len_reg(0),
      I1 => \tot_bytes[7]_i_4_n_0\,
      I2 => s_awlen(0),
      I3 => s_awvalid,
      I4 => s_arlen(0),
      O => p_0_in(0)
    );
\buf_len[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => buf_len_reg(0),
      I1 => buf_len_reg(1),
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => s_awlen(1),
      I4 => s_awvalid,
      I5 => s_arlen(1),
      O => p_0_in(1)
    );
\buf_len[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \buf_len[2]_i_2_n_0\,
      I1 => buf_len_reg(2),
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => s_awlen(2),
      I4 => s_awvalid,
      I5 => s_arlen(2),
      O => p_0_in(2)
    );
\buf_len[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buf_len_reg(0),
      I1 => buf_len_reg(1),
      O => \buf_len[2]_i_2_n_0\
    );
\buf_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => aresetn,
      I1 => \^rvalid_reg_0\,
      I2 => s_rready,
      I3 => \tot_bytes[7]_i_4_n_0\,
      O => buf_len
    );
\buf_len[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \buf_len[3]_i_3_n_0\,
      I1 => buf_len_reg(3),
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => s_awlen(3),
      I4 => s_awvalid,
      I5 => s_arlen(3),
      O => p_0_in(3)
    );
\buf_len[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => buf_len_reg(2),
      I1 => buf_len_reg(1),
      I2 => buf_len_reg(0),
      O => \buf_len[3]_i_3_n_0\
    );
\buf_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_len,
      D => p_0_in(0),
      Q => buf_len_reg(0),
      R => '0'
    );
\buf_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_len,
      D => p_0_in(1),
      Q => buf_len_reg(1),
      R => '0'
    );
\buf_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_len,
      D => p_0_in(2),
      Q => buf_len_reg(2),
      R => '0'
    );
\buf_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_len,
      D => p_0_in(3),
      Q => buf_len_reg(3),
      R => '0'
    );
\buf_size[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awsize(0),
      I1 => s_awvalid,
      I2 => s_arsize(0),
      O => \buf_size[0]_i_1_n_0\
    );
\buf_size[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awsize(1),
      I1 => s_awvalid,
      I2 => s_arsize(1),
      O => \buf_size[1]_i_1_n_0\
    );
\buf_size[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_awsize(2),
      I1 => s_awvalid,
      I2 => s_arsize(2),
      O => \buf_size[2]_i_1_n_0\
    );
\buf_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_size[0]_i_1_n_0\,
      Q => buf_size(0),
      R => '0'
    );
\buf_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_size[1]_i_1_n_0\,
      Q => buf_size(1),
      R => '0'
    );
\buf_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => \buf_size[2]_i_1_n_0\,
      Q => buf_size(2),
      R => '0'
    );
buf_wrap_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => s_arlen(0),
      I1 => s_arlen(3),
      I2 => s_arlen(1),
      I3 => s_arlen(2),
      I4 => buf_wrap_i_2_n_0,
      O => buf_wrap0
    );
buf_wrap_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFFFFFFFF"
    )
        port map (
      I0 => s_araddr(2),
      I1 => s_araddr(3),
      I2 => s_araddr(4),
      I3 => s_arvalid,
      I4 => s_arburst(0),
      I5 => s_arburst(1),
      O => buf_wrap_i_2_n_0
    );
buf_wrap_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => buf_addr,
      D => buf_wrap0,
      Q => buf_wrap_reg_n_0,
      R => '0'
    );
buf_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D1D5C0C0"
    )
        port map (
      I0 => buf_write0,
      I1 => \^s_awready\,
      I2 => s_awvalid,
      I3 => s_arvalid,
      I4 => buf_write_reg_n_0,
      O => buf_write_i_1_n_0
    );
buf_write_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => buf_write_i_1_n_0,
      Q => buf_write_reg_n_0,
      R => areset
    );
burst_cont0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => burst_cont0_carry_n_0,
      CO(2) => burst_cont0_carry_n_1,
      CO(1) => burst_cont0_carry_n_2,
      CO(0) => burst_cont0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_burst_cont0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => burst_cont0_carry_i_1_n_0,
      S(2) => burst_cont0_carry_i_2_n_0,
      S(1) => burst_cont0_carry_i_3_n_0,
      S(0) => burst_cont0_carry_i_4_n_0
    );
\burst_cont0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => burst_cont0_carry_n_0,
      CO(3) => burst_cont0,
      CO(2) => \burst_cont0_carry__0_n_1\,
      CO(1) => \burst_cont0_carry__0_n_2\,
      CO(0) => \burst_cont0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_burst_cont0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \burst_cont0_carry__0_i_1_n_0\,
      S(2) => \burst_cont0_carry__0_i_2_n_0\,
      S(1) => \burst_cont0_carry__0_i_3_n_0\,
      S(0) => \burst_cont0_carry__0_i_4_n_0\
    );
\burst_cont0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090005050009"
    )
        port map (
      I0 => nxt_addr_reg(22),
      I1 => p_1_in(18),
      I2 => \burst_cont0_carry__0_i_5_n_0\,
      I3 => p_1_in(19),
      I4 => \burst_cont0_carry__0_i_6_n_0\,
      I5 => nxt_addr_reg(23),
      O => \burst_cont0_carry__0_i_1_n_0\
    );
\burst_cont0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(15),
      I1 => nxt_addr_reg(19),
      I2 => p_1_in(14),
      I3 => nxt_addr_reg(18),
      I4 => nxt_addr_reg(20),
      I5 => p_1_in(16),
      O => \burst_cont0_carry__0_i_2_n_0\
    );
\burst_cont0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => nxt_addr_reg(17),
      I1 => p_1_in(13),
      I2 => p_1_in(11),
      I3 => nxt_addr_reg(15),
      I4 => p_1_in(12),
      I5 => nxt_addr_reg(16),
      O => \burst_cont0_carry__0_i_3_n_0\
    );
\burst_cont0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(8),
      I1 => nxt_addr_reg(12),
      I2 => p_1_in(9),
      I3 => nxt_addr_reg(13),
      I4 => nxt_addr_reg(14),
      I5 => p_1_in(10),
      O => \burst_cont0_carry__0_i_4_n_0\
    );
\burst_cont0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(17),
      I1 => nxt_addr_reg(21),
      O => \burst_cont0_carry__0_i_5_n_0\
    );
\burst_cont0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_1_in(21),
      I2 => p_1_in(24),
      I3 => p_1_in(17),
      I4 => \burst_cont0_carry__0_i_7_n_0\,
      I5 => \burst_cont0_carry__0_i_8_n_0\,
      O => \burst_cont0_carry__0_i_6_n_0\
    );
\burst_cont0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => p_1_in(19),
      I1 => p_1_in(27),
      I2 => p_1_in(26),
      I3 => p_1_in(16),
      O => \burst_cont0_carry__0_i_7_n_0\
    );
\burst_cont0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => p_1_in(23),
      I1 => p_1_in(22),
      I2 => p_1_in(20),
      I3 => p_1_in(25),
      O => \burst_cont0_carry__0_i_8_n_0\
    );
burst_cont0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(5),
      I1 => nxt_addr_reg(9),
      I2 => p_1_in(6),
      I3 => nxt_addr_reg(10),
      I4 => nxt_addr_reg(11),
      I5 => p_1_in(7),
      O => burst_cont0_carry_i_1_n_0
    );
burst_cont0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(3),
      I1 => nxt_addr_reg(7),
      I2 => p_1_in(2),
      I3 => nxt_addr_reg(6),
      I4 => nxt_addr_reg(8),
      I5 => p_1_in(4),
      O => burst_cont0_carry_i_2_n_0
    );
burst_cont0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(0),
      I1 => nxt_addr_reg(4),
      I2 => nxt_addr_reg(3),
      I3 => \buf_addr_reg_n_0_[3]\,
      I4 => nxt_addr_reg(5),
      I5 => p_1_in(1),
      O => burst_cont0_carry_i_3_n_0
    );
burst_cont0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => nxt_addr_reg(1),
      I2 => nxt_addr_reg(2),
      I3 => \buf_addr_reg_n_0_[2]\,
      I4 => nxt_addr_reg(0),
      I5 => \buf_addr_reg_n_0_[0]\,
      O => burst_cont0_carry_i_4_n_0
    );
bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => buf_write0,
      I1 => aresetn,
      I2 => s_bready,
      I3 => \^s_bvalid\,
      O => bvalid_i_1_n_0
    );
bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_wlast,
      I1 => s_wvalid,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => buf_write_reg_n_0,
      O => buf_write0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => \^s_bvalid\,
      R => '0'
    );
\clkcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      O => rvalid1
    );
\clkcnt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \clkcnt[0]_i_8_n_0\,
      I1 => s_csturn,
      I2 => spi_run_reg_n_0,
      O => \clkcnt[0]_i_3_n_0\
    );
\clkcnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clkcnt_reg(4),
      I1 => clkcnt_reg(10),
      I2 => clkcnt_reg(0),
      I3 => clkcnt_reg(3),
      I4 => \rd_state[7]_i_6_n_0\,
      I5 => \rd_state[7]_i_5_n_0\,
      O => \clkcnt[0]_i_8_n_0\
    );
\clkcnt[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clkcnt[0]_i_3_n_0\,
      I1 => clkcnt_reg(11),
      O => \clkcnt[8]_i_2__0_n_0\
    );
\clkcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_74,
      Q => clkcnt_reg(0),
      R => areset
    );
\clkcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_80,
      Q => clkcnt_reg(10),
      R => areset
    );
\clkcnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_79,
      Q => clkcnt_reg(11),
      R => areset
    );
\clkcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_73,
      Q => clkcnt_reg(1),
      R => areset
    );
\clkcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_72,
      Q => clkcnt_reg(2),
      R => areset
    );
\clkcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_71,
      Q => clkcnt_reg(3),
      R => areset
    );
\clkcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_78,
      Q => clkcnt_reg(4),
      R => areset
    );
\clkcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_77,
      Q => clkcnt_reg(5),
      R => areset
    );
\clkcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_76,
      Q => clkcnt_reg(6),
      R => areset
    );
\clkcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_75,
      Q => clkcnt_reg(7),
      R => areset
    );
\clkcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_82,
      Q => clkcnt_reg(8),
      R => areset
    );
\clkcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rvalid1,
      D => simple_spi_n_81,
      Q => clkcnt_reg(9),
      R => areset
    );
cs_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => \buf_addr_reg_n_0_[0]\,
      I2 => \buf_addr_reg_n_0_[3]\,
      I3 => \buf_addr_reg_n_0_[2]\,
      O => cs_i_5_n_0
    );
cs_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001000100FFFF"
    )
        port map (
      I0 => simple_spi_n_21,
      I1 => \buf_addr_reg_n_0_[3]\,
      I2 => \buf_addr_reg_n_0_[2]\,
      I3 => simple_spi_n_20,
      I4 => \cs_timer[0]_i_2_n_0\,
      I5 => buf_busy,
      O => cs_i_6_n_0
    );
cs_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_84,
      Q => cs,
      R => '0'
    );
\cs_timer[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => cs_timer_reg(9),
      I1 => cs_timer_reg(10),
      I2 => cs_timer_reg(6),
      I3 => cs_timer_reg(8),
      I4 => \cs_timer[0]_i_4_n_0\,
      I5 => \cs_timer[0]_i_5_n_0\,
      O => \cs_timer[0]_i_2_n_0\
    );
\cs_timer[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cs_timer_reg(1),
      I1 => cs_timer_reg(2),
      I2 => cs_timer_reg(5),
      I3 => cs_timer_reg(3),
      I4 => cs_timer_reg(0),
      I5 => cs_timer_reg(4),
      O => \cs_timer[0]_i_4_n_0\
    );
\cs_timer[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cs_timer_reg__0\(12),
      I1 => \cs_timer_reg__0\(13),
      I2 => \cs_timer_reg__0\(11),
      I3 => cs_timer_reg(7),
      I4 => \cs_timer_reg__0\(15),
      I5 => \cs_timer_reg__0\(14),
      O => \cs_timer[0]_i_5_n_0\
    );
\cs_timer[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_timer_reg(0),
      O => \cs_timer[0]_i_6_n_0\
    );
\cs_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[0]_i_3_n_7\,
      Q => cs_timer_reg(0),
      R => simple_spi_n_28
    );
\cs_timer_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cs_timer_reg[0]_i_3_n_0\,
      CO(2) => \cs_timer_reg[0]_i_3_n_1\,
      CO(1) => \cs_timer_reg[0]_i_3_n_2\,
      CO(0) => \cs_timer_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cs_timer_reg[0]_i_3_n_4\,
      O(2) => \cs_timer_reg[0]_i_3_n_5\,
      O(1) => \cs_timer_reg[0]_i_3_n_6\,
      O(0) => \cs_timer_reg[0]_i_3_n_7\,
      S(3 downto 1) => cs_timer_reg(3 downto 1),
      S(0) => \cs_timer[0]_i_6_n_0\
    );
\cs_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[8]_i_1_n_5\,
      Q => cs_timer_reg(10),
      R => simple_spi_n_28
    );
\cs_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[8]_i_1_n_4\,
      Q => \cs_timer_reg__0\(11),
      R => simple_spi_n_28
    );
\cs_timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[12]_i_1_n_7\,
      Q => \cs_timer_reg__0\(12),
      R => simple_spi_n_28
    );
\cs_timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cs_timer_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cs_timer_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cs_timer_reg[12]_i_1_n_1\,
      CO(1) => \cs_timer_reg[12]_i_1_n_2\,
      CO(0) => \cs_timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cs_timer_reg[12]_i_1_n_4\,
      O(2) => \cs_timer_reg[12]_i_1_n_5\,
      O(1) => \cs_timer_reg[12]_i_1_n_6\,
      O(0) => \cs_timer_reg[12]_i_1_n_7\,
      S(3 downto 0) => \cs_timer_reg__0\(15 downto 12)
    );
\cs_timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[12]_i_1_n_6\,
      Q => \cs_timer_reg__0\(13),
      R => simple_spi_n_28
    );
\cs_timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[12]_i_1_n_5\,
      Q => \cs_timer_reg__0\(14),
      R => simple_spi_n_28
    );
\cs_timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[12]_i_1_n_4\,
      Q => \cs_timer_reg__0\(15),
      R => simple_spi_n_28
    );
\cs_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[0]_i_3_n_6\,
      Q => cs_timer_reg(1),
      R => simple_spi_n_28
    );
\cs_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[0]_i_3_n_5\,
      Q => cs_timer_reg(2),
      R => simple_spi_n_28
    );
\cs_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[0]_i_3_n_4\,
      Q => cs_timer_reg(3),
      R => simple_spi_n_28
    );
\cs_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[4]_i_1_n_7\,
      Q => cs_timer_reg(4),
      R => simple_spi_n_28
    );
\cs_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cs_timer_reg[0]_i_3_n_0\,
      CO(3) => \cs_timer_reg[4]_i_1_n_0\,
      CO(2) => \cs_timer_reg[4]_i_1_n_1\,
      CO(1) => \cs_timer_reg[4]_i_1_n_2\,
      CO(0) => \cs_timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cs_timer_reg[4]_i_1_n_4\,
      O(2) => \cs_timer_reg[4]_i_1_n_5\,
      O(1) => \cs_timer_reg[4]_i_1_n_6\,
      O(0) => \cs_timer_reg[4]_i_1_n_7\,
      S(3 downto 0) => cs_timer_reg(7 downto 4)
    );
\cs_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[4]_i_1_n_6\,
      Q => cs_timer_reg(5),
      R => simple_spi_n_28
    );
\cs_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[4]_i_1_n_5\,
      Q => cs_timer_reg(6),
      R => simple_spi_n_28
    );
\cs_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[4]_i_1_n_4\,
      Q => cs_timer_reg(7),
      R => simple_spi_n_28
    );
\cs_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[8]_i_1_n_7\,
      Q => cs_timer_reg(8),
      R => simple_spi_n_28
    );
\cs_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cs_timer_reg[4]_i_1_n_0\,
      CO(3) => \cs_timer_reg[8]_i_1_n_0\,
      CO(2) => \cs_timer_reg[8]_i_1_n_1\,
      CO(1) => \cs_timer_reg[8]_i_1_n_2\,
      CO(0) => \cs_timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cs_timer_reg[8]_i_1_n_4\,
      O(2) => \cs_timer_reg[8]_i_1_n_5\,
      O(1) => \cs_timer_reg[8]_i_1_n_6\,
      O(0) => \cs_timer_reg[8]_i_1_n_7\,
      S(3) => \cs_timer_reg__0\(11),
      S(2 downto 0) => cs_timer_reg(10 downto 8)
    );
\cs_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cs_timer[0]_i_2_n_0\,
      D => \cs_timer_reg[8]_i_1_n_6\,
      Q => cs_timer_reg(9),
      R => simple_spi_n_28
    );
\cswcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cswcnt_reg(0),
      O => \p_0_in__0\(0)
    );
\cswcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cswcnt_reg(0),
      I1 => cswcnt_reg(1),
      O => \p_0_in__0\(1)
    );
\cswcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cswcnt_reg(2),
      I1 => cswcnt_reg(1),
      I2 => cswcnt_reg(0),
      O => \p_0_in__0\(2)
    );
\cswcnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => s_csturn,
      O => cswcnt0
    );
\cswcnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample[1]_i_2_n_0\,
      O => p_62_in
    );
\cswcnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cswcnt_reg(3),
      I1 => cswcnt_reg(0),
      I2 => cswcnt_reg(1),
      I3 => cswcnt_reg(2),
      O => \p_0_in__0\(3)
    );
\cswcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_62_in,
      D => \p_0_in__0\(0),
      Q => cswcnt_reg(0),
      R => cswcnt0
    );
\cswcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_62_in,
      D => \p_0_in__0\(1),
      Q => cswcnt_reg(1),
      R => cswcnt0
    );
\cswcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_62_in,
      D => \p_0_in__0\(2),
      Q => cswcnt_reg(2),
      R => cswcnt0
    );
\cswcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_62_in,
      D => \p_0_in__0\(3),
      Q => cswcnt_reg(3),
      R => cswcnt0
    );
dual_in_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_68,
      Q => dual_in_r,
      R => '0'
    );
io_hit0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => io_hit0_carry_n_0,
      CO(2) => io_hit0_carry_n_1,
      CO(1) => io_hit0_carry_n_2,
      CO(0) => io_hit0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_io_hit0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => io_hit0_carry_i_1_n_0,
      S(2) => io_hit0_carry_i_2_n_0,
      S(1) => io_hit0_carry_i_3_n_0,
      S(0) => io_hit0_carry_i_4_n_0
    );
\io_hit0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => io_hit0_carry_n_0,
      CO(3) => \io_hit0_carry__0_n_0\,
      CO(2) => \io_hit0_carry__0_n_1\,
      CO(1) => \io_hit0_carry__0_n_2\,
      CO(0) => \io_hit0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_io_hit0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \io_hit0_carry__0_i_1_n_0\,
      S(2) => \io_hit0_carry__0_i_2_n_0\,
      S(1) => \io_hit0_carry__0_i_3_n_0\,
      S(0) => \io_hit0_carry__0_i_4_n_0\
    );
\io_hit0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(21),
      I1 => spi_addr(9),
      I2 => p_1_in(22),
      I3 => spi_addr(10),
      I4 => spi_addr(11),
      I5 => p_1_in(23),
      O => \io_hit0_carry__0_i_1_n_0\
    );
\io_hit0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(18),
      I1 => spi_addr(6),
      I2 => p_1_in(19),
      I3 => spi_addr(7),
      I4 => spi_addr(8),
      I5 => p_1_in(20),
      O => \io_hit0_carry__0_i_2_n_0\
    );
\io_hit0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(16),
      I1 => spi_addr(4),
      I2 => p_1_in(15),
      I3 => spi_addr(3),
      I4 => spi_addr(5),
      I5 => p_1_in(17),
      O => \io_hit0_carry__0_i_3_n_0\
    );
\io_hit0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => spi_addr(1),
      I1 => p_1_in(13),
      I2 => p_1_in(14),
      I3 => spi_addr(2),
      I4 => p_1_in(12),
      I5 => spi_addr(0),
      O => \io_hit0_carry__0_i_4_n_0\
    );
\io_hit0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \io_hit0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_io_hit0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => io_hit049_in,
      CO(0) => \io_hit0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_io_hit0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => simple_spi_n_3,
      S(0) => simple_spi_n_4
    );
io_hit0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(10),
      I1 => p_1_in(11),
      I2 => p_1_in(9),
      O => io_hit0_carry_i_1_n_0
    );
io_hit0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(7),
      I1 => p_1_in(8),
      I2 => p_1_in(6),
      O => io_hit0_carry_i_2_n_0
    );
io_hit0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(5),
      I2 => p_1_in(3),
      O => io_hit0_carry_i_3_n_0
    );
io_hit0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_1_in(2),
      I2 => p_1_in(0),
      O => io_hit0_carry_i_4_n_0
    );
\nxt_addr[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => buf_busy,
      I1 => \rd_state_reg_n_0_[0]\,
      I2 => buf_busy_d,
      O => \nxt_addr[0]_i_4_n_0\
    );
\nxt_addr[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[3]\,
      I1 => buf_busy_d,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => nxt_addr_reg(3),
      O => \nxt_addr[0]_i_5_n_0\
    );
\nxt_addr[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[2]\,
      I1 => buf_busy_d,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => nxt_addr_reg(2),
      O => \nxt_addr[0]_i_6_n_0\
    );
\nxt_addr[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => buf_busy_d,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => nxt_addr_reg(1),
      O => \nxt_addr[0]_i_7_n_0\
    );
\nxt_addr[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555C555"
    )
        port map (
      I0 => nxt_addr_reg(0),
      I1 => \buf_addr_reg_n_0_[0]\,
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      O => \nxt_addr[0]_i_8_n_0\
    );
\nxt_addr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(15),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(11),
      O => \nxt_addr[12]_i_2_n_0\
    );
\nxt_addr[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(14),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(10),
      O => \nxt_addr[12]_i_3_n_0\
    );
\nxt_addr[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(13),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(9),
      O => \nxt_addr[12]_i_4_n_0\
    );
\nxt_addr[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(12),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(8),
      O => \nxt_addr[12]_i_5_n_0\
    );
\nxt_addr[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(19),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(15),
      O => \nxt_addr[16]_i_2_n_0\
    );
\nxt_addr[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(18),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(14),
      O => \nxt_addr[16]_i_3_n_0\
    );
\nxt_addr[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(17),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(13),
      O => \nxt_addr[16]_i_4_n_0\
    );
\nxt_addr[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(16),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(12),
      O => \nxt_addr[16]_i_5_n_0\
    );
\nxt_addr[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(23),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => \nxt_addr[20]_i_6_n_0\,
      O => \nxt_addr[20]_i_2_n_0\
    );
\nxt_addr[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(22),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => \nxt_addr[20]_i_7_n_0\,
      O => \nxt_addr[20]_i_3_n_0\
    );
\nxt_addr[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(21),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(17),
      O => \nxt_addr[20]_i_4_n_0\
    );
\nxt_addr[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(20),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(16),
      O => \nxt_addr[20]_i_5_n_0\
    );
\nxt_addr[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(19),
      I1 => \burst_cont0_carry__0_i_6_n_0\,
      O => \nxt_addr[20]_i_6_n_0\
    );
\nxt_addr[20]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(18),
      I1 => \burst_cont0_carry__0_i_6_n_0\,
      O => \nxt_addr[20]_i_7_n_0\
    );
\nxt_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888888"
    )
        port map (
      I0 => rvalid_i_3_n_0,
      I1 => \rd_state[4]_i_7_n_0\,
      I2 => buf_busy_d,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy,
      O => \nxt_addr[4]_i_2_n_0\
    );
\nxt_addr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(7),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(3),
      O => \nxt_addr[4]_i_3_n_0\
    );
\nxt_addr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(6),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(2),
      O => \nxt_addr[4]_i_4_n_0\
    );
\nxt_addr[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(5),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(1),
      O => \nxt_addr[4]_i_5_n_0\
    );
\nxt_addr[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => p_1_in(0),
      I1 => buf_busy_d,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => nxt_addr_reg(4),
      O => \nxt_addr[4]_i_6_n_0\
    );
\nxt_addr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(11),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(7),
      O => \nxt_addr[8]_i_2_n_0\
    );
\nxt_addr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(10),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(6),
      O => \nxt_addr[8]_i_3_n_0\
    );
\nxt_addr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(9),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(5),
      O => \nxt_addr[8]_i_4_n_0\
    );
\nxt_addr[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666656666666A666"
    )
        port map (
      I0 => \nxt_addr[4]_i_2_n_0\,
      I1 => nxt_addr_reg(8),
      I2 => buf_busy,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy_d,
      I5 => p_1_in(4),
      O => \nxt_addr[8]_i_5_n_0\
    );
\nxt_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[0]_i_3_n_7\,
      Q => nxt_addr_reg(0),
      R => nxt_addr0
    );
\nxt_addr_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nxt_addr_reg[0]_i_3_n_0\,
      CO(2) => \nxt_addr_reg[0]_i_3_n_1\,
      CO(1) => \nxt_addr_reg[0]_i_3_n_2\,
      CO(0) => \nxt_addr_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \nxt_addr[0]_i_4_n_0\,
      O(3) => \nxt_addr_reg[0]_i_3_n_4\,
      O(2) => \nxt_addr_reg[0]_i_3_n_5\,
      O(1) => \nxt_addr_reg[0]_i_3_n_6\,
      O(0) => \nxt_addr_reg[0]_i_3_n_7\,
      S(3) => \nxt_addr[0]_i_5_n_0\,
      S(2) => \nxt_addr[0]_i_6_n_0\,
      S(1) => \nxt_addr[0]_i_7_n_0\,
      S(0) => \nxt_addr[0]_i_8_n_0\
    );
\nxt_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[8]_i_1_n_5\,
      Q => nxt_addr_reg(10),
      R => nxt_addr0
    );
\nxt_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[8]_i_1_n_4\,
      Q => nxt_addr_reg(11),
      R => nxt_addr0
    );
\nxt_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[12]_i_1_n_7\,
      Q => nxt_addr_reg(12),
      R => nxt_addr0
    );
\nxt_addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_addr_reg[8]_i_1_n_0\,
      CO(3) => \nxt_addr_reg[12]_i_1_n_0\,
      CO(2) => \nxt_addr_reg[12]_i_1_n_1\,
      CO(1) => \nxt_addr_reg[12]_i_1_n_2\,
      CO(0) => \nxt_addr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \nxt_addr[4]_i_2_n_0\,
      DI(2) => \nxt_addr[4]_i_2_n_0\,
      DI(1) => \nxt_addr[4]_i_2_n_0\,
      DI(0) => \nxt_addr[4]_i_2_n_0\,
      O(3) => \nxt_addr_reg[12]_i_1_n_4\,
      O(2) => \nxt_addr_reg[12]_i_1_n_5\,
      O(1) => \nxt_addr_reg[12]_i_1_n_6\,
      O(0) => \nxt_addr_reg[12]_i_1_n_7\,
      S(3) => \nxt_addr[12]_i_2_n_0\,
      S(2) => \nxt_addr[12]_i_3_n_0\,
      S(1) => \nxt_addr[12]_i_4_n_0\,
      S(0) => \nxt_addr[12]_i_5_n_0\
    );
\nxt_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[12]_i_1_n_6\,
      Q => nxt_addr_reg(13),
      R => nxt_addr0
    );
\nxt_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[12]_i_1_n_5\,
      Q => nxt_addr_reg(14),
      R => nxt_addr0
    );
\nxt_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[12]_i_1_n_4\,
      Q => nxt_addr_reg(15),
      R => nxt_addr0
    );
\nxt_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[16]_i_1_n_7\,
      Q => nxt_addr_reg(16),
      R => nxt_addr0
    );
\nxt_addr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_addr_reg[12]_i_1_n_0\,
      CO(3) => \nxt_addr_reg[16]_i_1_n_0\,
      CO(2) => \nxt_addr_reg[16]_i_1_n_1\,
      CO(1) => \nxt_addr_reg[16]_i_1_n_2\,
      CO(0) => \nxt_addr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \nxt_addr[4]_i_2_n_0\,
      DI(2) => \nxt_addr[4]_i_2_n_0\,
      DI(1) => \nxt_addr[4]_i_2_n_0\,
      DI(0) => \nxt_addr[4]_i_2_n_0\,
      O(3) => \nxt_addr_reg[16]_i_1_n_4\,
      O(2) => \nxt_addr_reg[16]_i_1_n_5\,
      O(1) => \nxt_addr_reg[16]_i_1_n_6\,
      O(0) => \nxt_addr_reg[16]_i_1_n_7\,
      S(3) => \nxt_addr[16]_i_2_n_0\,
      S(2) => \nxt_addr[16]_i_3_n_0\,
      S(1) => \nxt_addr[16]_i_4_n_0\,
      S(0) => \nxt_addr[16]_i_5_n_0\
    );
\nxt_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[16]_i_1_n_6\,
      Q => nxt_addr_reg(17),
      R => nxt_addr0
    );
\nxt_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[16]_i_1_n_5\,
      Q => nxt_addr_reg(18),
      R => nxt_addr0
    );
\nxt_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[16]_i_1_n_4\,
      Q => nxt_addr_reg(19),
      R => nxt_addr0
    );
\nxt_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[0]_i_3_n_6\,
      Q => nxt_addr_reg(1),
      R => nxt_addr0
    );
\nxt_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[20]_i_1_n_7\,
      Q => nxt_addr_reg(20),
      R => nxt_addr0
    );
\nxt_addr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_addr_reg[16]_i_1_n_0\,
      CO(3) => \NLW_nxt_addr_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \nxt_addr_reg[20]_i_1_n_1\,
      CO(1) => \nxt_addr_reg[20]_i_1_n_2\,
      CO(0) => \nxt_addr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \nxt_addr[4]_i_2_n_0\,
      DI(1) => \nxt_addr[4]_i_2_n_0\,
      DI(0) => \nxt_addr[4]_i_2_n_0\,
      O(3) => \nxt_addr_reg[20]_i_1_n_4\,
      O(2) => \nxt_addr_reg[20]_i_1_n_5\,
      O(1) => \nxt_addr_reg[20]_i_1_n_6\,
      O(0) => \nxt_addr_reg[20]_i_1_n_7\,
      S(3) => \nxt_addr[20]_i_2_n_0\,
      S(2) => \nxt_addr[20]_i_3_n_0\,
      S(1) => \nxt_addr[20]_i_4_n_0\,
      S(0) => \nxt_addr[20]_i_5_n_0\
    );
\nxt_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[20]_i_1_n_6\,
      Q => nxt_addr_reg(21),
      R => nxt_addr0
    );
\nxt_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[20]_i_1_n_5\,
      Q => nxt_addr_reg(22),
      R => nxt_addr0
    );
\nxt_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[20]_i_1_n_4\,
      Q => nxt_addr_reg(23),
      R => nxt_addr0
    );
\nxt_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[0]_i_3_n_5\,
      Q => nxt_addr_reg(2),
      R => nxt_addr0
    );
\nxt_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[0]_i_3_n_4\,
      Q => nxt_addr_reg(3),
      R => nxt_addr0
    );
\nxt_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[4]_i_1_n_7\,
      Q => nxt_addr_reg(4),
      R => nxt_addr0
    );
\nxt_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_addr_reg[0]_i_3_n_0\,
      CO(3) => \nxt_addr_reg[4]_i_1_n_0\,
      CO(2) => \nxt_addr_reg[4]_i_1_n_1\,
      CO(1) => \nxt_addr_reg[4]_i_1_n_2\,
      CO(0) => \nxt_addr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \nxt_addr[4]_i_2_n_0\,
      DI(2) => \nxt_addr[4]_i_2_n_0\,
      DI(1) => \nxt_addr[4]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \nxt_addr_reg[4]_i_1_n_4\,
      O(2) => \nxt_addr_reg[4]_i_1_n_5\,
      O(1) => \nxt_addr_reg[4]_i_1_n_6\,
      O(0) => \nxt_addr_reg[4]_i_1_n_7\,
      S(3) => \nxt_addr[4]_i_3_n_0\,
      S(2) => \nxt_addr[4]_i_4_n_0\,
      S(1) => \nxt_addr[4]_i_5_n_0\,
      S(0) => \nxt_addr[4]_i_6_n_0\
    );
\nxt_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[4]_i_1_n_6\,
      Q => nxt_addr_reg(5),
      R => nxt_addr0
    );
\nxt_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[4]_i_1_n_5\,
      Q => nxt_addr_reg(6),
      R => nxt_addr0
    );
\nxt_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[4]_i_1_n_4\,
      Q => nxt_addr_reg(7),
      R => nxt_addr0
    );
\nxt_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[8]_i_1_n_7\,
      Q => nxt_addr_reg(8),
      R => nxt_addr0
    );
\nxt_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_addr_reg[4]_i_1_n_0\,
      CO(3) => \nxt_addr_reg[8]_i_1_n_0\,
      CO(2) => \nxt_addr_reg[8]_i_1_n_1\,
      CO(1) => \nxt_addr_reg[8]_i_1_n_2\,
      CO(0) => \nxt_addr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \nxt_addr[4]_i_2_n_0\,
      DI(2) => \nxt_addr[4]_i_2_n_0\,
      DI(1) => \nxt_addr[4]_i_2_n_0\,
      DI(0) => \nxt_addr[4]_i_2_n_0\,
      O(3) => \nxt_addr_reg[8]_i_1_n_4\,
      O(2) => \nxt_addr_reg[8]_i_1_n_5\,
      O(1) => \nxt_addr_reg[8]_i_1_n_6\,
      O(0) => \nxt_addr_reg[8]_i_1_n_7\,
      S(3) => \nxt_addr[8]_i_2_n_0\,
      S(2) => \nxt_addr[8]_i_3_n_0\,
      S(1) => \nxt_addr[8]_i_4_n_0\,
      S(0) => \nxt_addr[8]_i_5_n_0\
    );
\nxt_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_27,
      D => \nxt_addr_reg[8]_i_1_n_6\,
      Q => nxt_addr_reg(9),
      R => nxt_addr0
    );
pdreq_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => power_down_req,
      Q => pdreq_r,
      R => '0'
    );
power_down_ack_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_pwrdown,
      I1 => s_startup,
      I2 => s_pdexit,
      O => power_down_ack
    );
\rd_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rd_state_reg_n_0_[0]\,
      I1 => \rd_state[5]_i_3_n_0\,
      O => \rd_state[0]_i_2_n_0\
    );
\rd_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0008"
    )
        port map (
      I0 => s_startup,
      I1 => cs_timer_reg(7),
      I2 => \rd_state[8]_i_3_n_0\,
      I3 => \cs_timer[0]_i_4_n_0\,
      I4 => fast_startup,
      O => \rd_state[0]_i_3_n_0\
    );
\rd_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_ioread,
      I1 => \rd_state[9]_i_2_n_0\,
      O => \rd_state[0]_i_4_n_0\
    );
\rd_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sck,
      I1 => \rd_state[7]_i_7_n_0\,
      I2 => \rd_state[7]_i_6_n_0\,
      I3 => \rd_state[7]_i_5_n_0\,
      I4 => \^rvalid_reg_0\,
      I5 => spi_run_reg_n_0,
      O => \rd_state[0]_i_6_n_0\
    );
\rd_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \rd_state[9]_i_2_n_0\,
      I1 => s_ioread,
      I2 => \rd_state[5]_i_3_n_0\,
      I3 => rvalid045_out,
      O => ns_idle(1)
    );
\rd_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45444044FFFFFFFF"
    )
        port map (
      I0 => \rd_state[4]_i_5_n_0\,
      I1 => s_csturn,
      I2 => buf_busy,
      I3 => pdreq_r,
      I4 => cs,
      I5 => \rd_state[5]_i_3_n_0\,
      O => \rd_state[2]_i_4_n_0\
    );
\rd_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \rd_state_reg_n_0_[0]\,
      I1 => buf_busy_d,
      I2 => buf_busy,
      I3 => buf_write_reg_n_0,
      O => \rd_state[2]_i_8_n_0\
    );
\rd_state[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => adbit_cnt_reg(2),
      I1 => adbit_cnt_reg(5),
      I2 => adbit_cnt_reg(0),
      I3 => adbit_cnt_reg(1),
      I4 => adbit_cnt_reg(4),
      I5 => adbit_cnt_reg(3),
      O => \rd_state[4]_i_10_n_0\
    );
\rd_state[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => buf_busy_d,
      I1 => buf_busy,
      I2 => buf_write_reg_n_0,
      I3 => \rd_state_reg_n_0_[0]\,
      O => \rd_state[4]_i_5_n_0\
    );
\rd_state[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => buf_busy,
      I1 => pdreq_r,
      O => \rd_state[4]_i_6_n_0\
    );
\rd_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => nxt_addr_reg(1),
      I1 => nxt_addr_reg(0),
      I2 => buf_wrap_reg_n_0,
      I3 => nxt_addr_reg(2),
      I4 => nxt_addr_reg(3),
      I5 => nxt_addr_reg(4),
      O => \rd_state[4]_i_7_n_0\
    );
\rd_state[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => adbit_cnt_reg(5),
      I1 => adbit_cnt_reg(3),
      I2 => adbit_cnt_reg(2),
      I3 => adbit_cnt_reg(4),
      I4 => adbit_cnt_reg(0),
      I5 => adbit_cnt_reg(1),
      O => \rd_state[4]_i_9_n_0\
    );
\rd_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FFFFFFFFFF"
    )
        port map (
      I0 => simple_spi_n_22,
      I1 => io_hit049_in,
      I2 => buf_write_reg_n_0,
      I3 => buf_busy,
      I4 => buf_busy_d,
      I5 => \rd_state_reg_n_0_[0]\,
      O => \rd_state[5]_i_2_n_0\
    );
\rd_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => \rd_state[5]_i_4_n_0\,
      I1 => \rd_state[5]_i_5_n_0\,
      I2 => \rd_state[5]_i_6_n_0\,
      I3 => \rd_state[5]_i_7_n_0\,
      O => \rd_state[5]_i_3_n_0\
    );
\rd_state[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \rd_state_reg_n_0_[0]\,
      I1 => s_ioread,
      I2 => s_csturn,
      I3 => s_addr,
      I4 => s_data,
      O => \rd_state[5]_i_4_n_0\
    );
\rd_state[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => \rd_state_reg_n_0_[0]\,
      I1 => s_ioread,
      I2 => s_csturn,
      I3 => s_addr,
      I4 => s_data,
      O => \rd_state[5]_i_5_n_0\
    );
\rd_state[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \rd_state_reg_n_0_[5]\,
      I1 => s_pdenter,
      I2 => s_pdexit,
      I3 => s_startup,
      I4 => s_pwrdown,
      O => \rd_state[5]_i_6_n_0\
    );
\rd_state[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => \rd_state_reg_n_0_[5]\,
      I1 => s_pdenter,
      I2 => s_pdexit,
      I3 => s_startup,
      I4 => s_pwrdown,
      O => \rd_state[5]_i_7_n_0\
    );
\rd_state[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFEF"
    )
        port map (
      I0 => \rd_state[4]_i_5_n_0\,
      I1 => cs,
      I2 => pdreq_r,
      I3 => buf_busy,
      I4 => s_pdenter,
      O => \rd_state[6]_i_3_n_0\
    );
\rd_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFF0000"
    )
        port map (
      I0 => \rd_state[9]_i_2_n_0\,
      I1 => \rd_state[7]_i_2_n_0\,
      I2 => \rd_state[7]_i_3_n_0\,
      I3 => bit_cnt(2),
      I4 => s_pdexit,
      I5 => \rd_state[7]_i_4_n_0\,
      O => ns_idle(7)
    );
\rd_state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => spi_run_reg_n_0,
      I1 => \^rvalid_reg_0\,
      I2 => \rd_state[7]_i_5_n_0\,
      I3 => \rd_state[7]_i_6_n_0\,
      I4 => \rd_state[7]_i_7_n_0\,
      I5 => sck,
      O => \rd_state[7]_i_2_n_0\
    );
\rd_state[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => bit_cnt(1),
      O => \rd_state[7]_i_3_n_0\
    );
\rd_state[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => pdreq_r,
      I1 => buf_busy,
      I2 => \rd_state[5]_i_3_n_0\,
      I3 => s_pwrdown,
      O => \rd_state[7]_i_4_n_0\
    );
\rd_state[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clkcnt_reg(7),
      I1 => clkcnt_reg(1),
      I2 => clkcnt_reg(9),
      I3 => clkcnt_reg(5),
      O => \rd_state[7]_i_5_n_0\
    );
\rd_state[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clkcnt_reg(11),
      I1 => clkcnt_reg(8),
      I2 => clkcnt_reg(6),
      I3 => clkcnt_reg(2),
      O => \rd_state[7]_i_6_n_0\
    );
\rd_state[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clkcnt_reg(3),
      I1 => clkcnt_reg(0),
      I2 => clkcnt_reg(10),
      I3 => clkcnt_reg(4),
      O => \rd_state[7]_i_7_n_0\
    );
\rd_state[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \rd_state[9]_i_2_n_0\,
      I1 => \rd_state[8]_i_2_n_0\,
      I2 => s_startup,
      I3 => \rd_state[9]_i_3_n_0\,
      I4 => s_pdexit,
      O => ns_idle(8)
    );
\rd_state[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDD"
    )
        port map (
      I0 => fast_startup,
      I1 => \cs_timer[0]_i_4_n_0\,
      I2 => \rd_state[8]_i_3_n_0\,
      I3 => cs_timer_reg(7),
      O => \rd_state[8]_i_2_n_0\
    );
\rd_state[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cs_timer_reg(9),
      I1 => cs_timer_reg(10),
      I2 => cs_timer_reg(6),
      I3 => cs_timer_reg(8),
      O => \rd_state[8]_i_3_n_0\
    );
\rd_state[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00FFFF2F002F00"
    )
        port map (
      I0 => pdreq_r,
      I1 => buf_busy,
      I2 => \rd_state[9]_i_2_n_0\,
      I3 => s_pwrdown,
      I4 => \rd_state[9]_i_3_n_0\,
      I5 => s_pdenter,
      O => ns_idle(9)
    );
\rd_state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAAAA0020AAAA"
    )
        port map (
      I0 => \rd_state[5]_i_3_n_0\,
      I1 => buf_busy_d,
      I2 => buf_busy,
      I3 => buf_write_reg_n_0,
      I4 => \rd_state_reg_n_0_[0]\,
      I5 => pdreq_r,
      O => \rd_state[9]_i_2_n_0\
    );
\rd_state[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \rd_state[7]_i_2_n_0\,
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => bit_cnt(2),
      I4 => \rd_state[5]_i_3_n_0\,
      O => \rd_state[9]_i_3_n_0\
    );
\rd_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(0),
      Q => \rd_state_reg_n_0_[0]\,
      R => areset
    );
\rd_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(1),
      Q => s_ioread,
      R => areset
    );
\rd_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(2),
      Q => s_csturn,
      R => areset
    );
\rd_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(3),
      Q => s_addr,
      R => areset
    );
\rd_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(4),
      Q => s_data,
      R => areset
    );
\rd_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(5),
      Q => \rd_state_reg_n_0_[5]\,
      R => areset
    );
\rd_state_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(6),
      Q => s_pdenter,
      R => areset
    );
\rd_state_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(7),
      Q => s_pdexit,
      R => areset
    );
\rd_state_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(8),
      Q => s_startup,
      R => areset
    );
\rd_state_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => ns_idle(9),
      Q => s_pwrdown,
      S => areset
    );
\rdata[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[0]\,
      I1 => \buf_addr_reg_n_0_[1]\,
      O => \rdata[0][7]_i_2_n_0\
    );
\rdata[3][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => shift_reg(0),
      I1 => sr_shift_two_r,
      I2 => sr_shift_inst_r,
      I3 => shift_reg(1),
      O => \rdata[3][2]_i_2_n_0\
    );
\rdata[3][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => aresetn,
      I1 => s_rready,
      I2 => \^rvalid_reg_0\,
      O => \rdata[3][7]_i_3_n_0\
    );
\rdata[3][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => simple_spi_n_22,
      I1 => io_hit049_in,
      I2 => buf_write_reg_n_0,
      I3 => buf_busy,
      I4 => buf_busy_d,
      I5 => \rd_state_reg_n_0_[0]\,
      O => rvalid045_out
    );
\rdata[3][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[0]\,
      I1 => \buf_addr_reg_n_0_[1]\,
      O => \rdata[3][7]_i_6_n_0\
    );
\rdata[3][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_shift_two_r,
      I1 => sr_shift_inst_r,
      O => \rdata[3][7]_i_8_n_0\
    );
\rdata_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(0),
      Q => s_rdata(0),
      R => '0'
    );
\rdata_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(1),
      Q => s_rdata(1),
      R => '0'
    );
\rdata_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(2),
      Q => s_rdata(2),
      R => '0'
    );
\rdata_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(3),
      Q => s_rdata(3),
      R => '0'
    );
\rdata_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(4),
      Q => s_rdata(4),
      R => '0'
    );
\rdata_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(5),
      Q => s_rdata(5),
      R => '0'
    );
\rdata_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(6),
      Q => s_rdata(6),
      R => '0'
    );
\rdata_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_24,
      D => rdata0_in(7),
      Q => s_rdata(7),
      R => '0'
    );
\rdata_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(0),
      Q => s_rdata(8),
      R => '0'
    );
\rdata_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(1),
      Q => s_rdata(9),
      R => '0'
    );
\rdata_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(2),
      Q => s_rdata(10),
      R => '0'
    );
\rdata_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(3),
      Q => s_rdata(11),
      R => '0'
    );
\rdata_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(4),
      Q => s_rdata(12),
      R => '0'
    );
\rdata_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(5),
      Q => s_rdata(13),
      R => '0'
    );
\rdata_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(6),
      Q => s_rdata(14),
      R => '0'
    );
\rdata_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_25,
      D => rdata0_in(7),
      Q => s_rdata(15),
      R => '0'
    );
\rdata_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(0),
      Q => s_rdata(16),
      R => '0'
    );
\rdata_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(1),
      Q => s_rdata(17),
      R => '0'
    );
\rdata_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(2),
      Q => s_rdata(18),
      R => '0'
    );
\rdata_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(3),
      Q => s_rdata(19),
      R => '0'
    );
\rdata_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(4),
      Q => s_rdata(20),
      R => '0'
    );
\rdata_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(5),
      Q => s_rdata(21),
      R => '0'
    );
\rdata_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(6),
      Q => s_rdata(22),
      R => '0'
    );
\rdata_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_23,
      D => rdata0_in(7),
      Q => s_rdata(23),
      R => '0'
    );
\rdata_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(0),
      Q => s_rdata(24),
      R => '0'
    );
\rdata_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(1),
      Q => s_rdata(25),
      R => '0'
    );
\rdata_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(2),
      Q => s_rdata(26),
      R => '0'
    );
\rdata_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(3),
      Q => s_rdata(27),
      R => '0'
    );
\rdata_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(4),
      Q => s_rdata(28),
      R => '0'
    );
\rdata_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(5),
      Q => s_rdata(29),
      R => '0'
    );
\rdata_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(6),
      Q => s_rdata(30),
      R => '0'
    );
\rdata_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_26,
      D => rdata0_in(7),
      Q => s_rdata(31),
      R => '0'
    );
rvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => nxt_addr_reg(0),
      I1 => nxt_addr_reg(1),
      O => rvalid_i_2_n_0
    );
rvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tot_bytes(7),
      I1 => tot_bytes(5),
      I2 => \tot_bytes[6]_i_2_n_0\,
      I3 => tot_bytes(6),
      O => rvalid_i_3_n_0
    );
rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_5,
      Q => \^rvalid_reg_0\,
      R => '0'
    );
s_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => pdreq_r,
      I1 => \rd_state_reg_n_0_[0]\,
      I2 => buf_busy,
      I3 => s_awvalid,
      O => s_arready
    );
s_awready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => buf_busy,
      I1 => \rd_state_reg_n_0_[0]\,
      I2 => pdreq_r,
      O => \^s_awready\
    );
s_rlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => buf_len_reg(2),
      I1 => buf_len_reg(1),
      I2 => buf_len_reg(0),
      I3 => buf_len_reg(3),
      O => s_rlast
    );
s_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => buf_write_reg_n_0,
      I1 => buf_busy,
      I2 => \rd_state_reg_n_0_[0]\,
      O => s_wready
    );
\sample[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => sdo_i,
      I1 => sck,
      I2 => s_data,
      I3 => spi_run_reg_n_0,
      I4 => \sample[1]_i_2_n_0\,
      I5 => sample(0),
      O => \sample[0]_i_1_n_0\
    );
\sample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => sdi_i,
      I1 => sck,
      I2 => s_data,
      I3 => spi_run_reg_n_0,
      I4 => \sample[1]_i_2_n_0\,
      I5 => sample(1),
      O => \sample[1]_i_1_n_0\
    );
\sample[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => \rd_state[7]_i_5_n_0\,
      I2 => \rd_state[7]_i_6_n_0\,
      I3 => \rd_state[7]_i_7_n_0\,
      O => \sample[1]_i_2_n_0\
    );
\sample_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \sample[0]_i_1_n_0\,
      Q => sample(0),
      R => '0'
    );
\sample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \sample[1]_i_1_n_0\,
      Q => sample(1),
      R => '0'
    );
sck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => spi_run_reg_n_0,
      I1 => \sample[1]_i_2_n_0\,
      I2 => sck,
      O => sck_i_1_n_0
    );
sck_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sck_i_1_n_0,
      Q => sck,
      R => areset
    );
second_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => buf_size(0),
      I1 => \buf_addr_reg_n_0_[2]\,
      I2 => \buf_addr_reg_n_0_[1]\,
      I3 => \buf_addr_reg_n_0_[0]\,
      I4 => second_write_i_2_n_0,
      O => second_write0
    );
second_write_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => buf_size(2),
      I1 => buf_size(1),
      I2 => second_write_i_3_n_0,
      I3 => simple_spi_n_22,
      I4 => io_hit049_in,
      O => second_write_i_2_n_0
    );
second_write_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => buf_write_reg_n_0,
      I1 => buf_busy,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => s_wvalid,
      O => second_write_i_3_n_0
    );
second_write_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => second_write0,
      Q => second_write,
      R => areset
    );
\shift_reg[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => shift_reg(25),
      I1 => sr_shift_two_r,
      I2 => sr_shift_inst_r,
      I3 => shift_reg(26),
      O => \shift_reg[27]_i_2_n_0\
    );
\shift_reg[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => shift_reg(27),
      I1 => sr_shift_two_r,
      I2 => sr_shift_inst_r,
      I3 => shift_reg(28),
      O => \shift_reg[29]_i_2_n_0\
    );
\shift_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_pwrdown,
      I1 => ns_idle(9),
      O => \shift_reg[31]_i_4_n_0\
    );
\shift_reg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => shift_reg(30),
      I1 => sr_shift_two_r,
      I2 => sr_shift_inst_r,
      I3 => shift_reg(29),
      O => \shift_reg[31]_i_6_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_63,
      Q => shift_reg(0),
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_53,
      Q => shift_reg(10),
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_52,
      Q => shift_reg(11),
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_51,
      Q => shift_reg(12),
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_50,
      Q => shift_reg(13),
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_49,
      Q => shift_reg(14),
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_48,
      Q => shift_reg(15),
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_47,
      Q => shift_reg(16),
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_46,
      Q => shift_reg(17),
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_45,
      Q => shift_reg(18),
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_44,
      Q => shift_reg(19),
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_62,
      Q => shift_reg(1),
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_43,
      Q => shift_reg(20),
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_42,
      Q => shift_reg(21),
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_41,
      Q => shift_reg(22),
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_40,
      Q => shift_reg(23),
      R => '0'
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_39,
      Q => shift_reg(24),
      R => '0'
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_38,
      Q => shift_reg(25),
      R => '0'
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_37,
      Q => shift_reg(26),
      R => '0'
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_36,
      Q => shift_reg(27),
      R => '0'
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_35,
      Q => shift_reg(28),
      R => '0'
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_34,
      Q => shift_reg(29),
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_61,
      Q => shift_reg(2),
      R => '0'
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_33,
      Q => shift_reg(30),
      R => '0'
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_64,
      D => simple_spi_n_32,
      Q => shift_reg(31),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_60,
      Q => shift_reg(3),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_59,
      Q => shift_reg(4),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_58,
      Q => shift_reg(5),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_57,
      Q => shift_reg(6),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_56,
      Q => shift_reg(7),
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_55,
      Q => shift_reg(8),
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_65,
      D => simple_spi_n_54,
      Q => shift_reg(9),
      R => '0'
    );
simple_spi: entity work.bd_top_spi_flash_ctrl_0_0_simple_spi_top
     port map (
      CO(0) => io_hit049_in,
      D(7 downto 0) => rdata0_in(7 downto 0),
      E(0) => simple_spi_n_23,
      O(3) => simple_spi_n_71,
      O(2) => simple_spi_n_72,
      O(1) => simple_spi_n_73,
      O(0) => simple_spi_n_74,
      Q(7 downto 4) => p_1_in(27 downto 24),
      Q(3) => \buf_addr_reg_n_0_[3]\,
      Q(2) => \buf_addr_reg_n_0_[2]\,
      Q(1) => \buf_addr_reg_n_0_[1]\,
      Q(0) => \buf_addr_reg_n_0_[0]\,
      S(1) => simple_spi_n_3,
      S(0) => simple_spi_n_4,
      SPI_CLK => SPI_CLK,
      SPI_CS => SPI_CS,
      SPI_MISO_iobuf_i_1_0(4 downto 0) => adbit_cnt_reg(5 downto 1),
      SPI_MOSI_iobuf(31 downto 0) => shift_reg(31 downto 0),
      aclk => aclk,
      areset => areset,
      aresetn => aresetn,
      bit_cnt(2 downto 0) => bit_cnt(2 downto 0),
      \buf_addr_reg[0]\ => simple_spi_n_21,
      buf_busy => buf_busy,
      buf_busy_d => buf_busy_d,
      buf_busy_reg => simple_spi_n_27,
      buf_busy_reg_0(0) => simple_spi_n_31,
      buf_busy_reg_1(3 downto 0) => buf_len_reg(3 downto 0),
      \buf_len_reg[3]\ => simple_spi_n_22,
      busy_reg_0 => simple_spi_n_1,
      clkcnt_reg(10 downto 0) => clkcnt_reg(10 downto 0),
      \clkcnt_reg[11]_0\(0) => \clkcnt[8]_i_2__0_n_0\,
      \clkcnt_reg[3]_0\ => \clkcnt[0]_i_3_n_0\,
      cs => cs,
      cs_reg => simple_spi_n_84,
      cs_reg_0 => cs_i_6_n_0,
      cs_reg_1 => \cs_timer[0]_i_2_n_0\,
      cs_reg_2 => cs_i_5_n_0,
      cs_reg_3(2 downto 0) => ns_idle(9 downto 7),
      \cs_timer_reg[0]\(8) => s_startup,
      \cs_timer_reg[0]\(7) => s_pdexit,
      \cs_timer_reg[0]\(6) => s_pdenter,
      \cs_timer_reg[0]\(5) => \rd_state_reg_n_0_[5]\,
      \cs_timer_reg[0]\(4) => s_data,
      \cs_timer_reg[0]\(3) => s_addr,
      \cs_timer_reg[0]\(2) => s_csturn,
      \cs_timer_reg[0]\(1) => s_ioread,
      \cs_timer_reg[0]\(0) => \rd_state_reg_n_0_[0]\,
      \cswcnt_reg[0]\ => simple_spi_n_68,
      dual_in_r => dual_in_r,
      dual_in_r_reg => simple_spi_n_2,
      dual_in_r_reg_0 => SPI_MOSI_iobuf_i_5_n_0,
      inta_o => inta_o,
      mem_reg_0_3_0_5_i_3(2 downto 0) => buf_size(2 downto 0),
      ns_idle(5 downto 1) => ns_idle(6 downto 2),
      ns_idle(0) => ns_idle(0),
      nxt_addr0 => nxt_addr0,
      nxt_addr_reg(23 downto 0) => nxt_addr_reg(23 downto 0),
      \nxt_addr_reg[0]\(0) => simple_spi_n_24,
      \nxt_addr_reg[1]\(0) => simple_spi_n_25,
      \nxt_addr_reg[1]_0\(0) => simple_spi_n_26,
      \param_reg[3]_0\(31) => simple_spi_n_32,
      \param_reg[3]_0\(30) => simple_spi_n_33,
      \param_reg[3]_0\(29) => simple_spi_n_34,
      \param_reg[3]_0\(28) => simple_spi_n_35,
      \param_reg[3]_0\(27) => simple_spi_n_36,
      \param_reg[3]_0\(26) => simple_spi_n_37,
      \param_reg[3]_0\(25) => simple_spi_n_38,
      \param_reg[3]_0\(24) => simple_spi_n_39,
      \param_reg[3]_0\(23) => simple_spi_n_40,
      \param_reg[3]_0\(22) => simple_spi_n_41,
      \param_reg[3]_0\(21) => simple_spi_n_42,
      \param_reg[3]_0\(20) => simple_spi_n_43,
      \param_reg[3]_0\(19) => simple_spi_n_44,
      \param_reg[3]_0\(18) => simple_spi_n_45,
      \param_reg[3]_0\(17) => simple_spi_n_46,
      \param_reg[3]_0\(16) => simple_spi_n_47,
      \param_reg[3]_0\(15) => simple_spi_n_48,
      \param_reg[3]_0\(14) => simple_spi_n_49,
      \param_reg[3]_0\(13) => simple_spi_n_50,
      \param_reg[3]_0\(12) => simple_spi_n_51,
      \param_reg[3]_0\(11) => simple_spi_n_52,
      \param_reg[3]_0\(10) => simple_spi_n_53,
      \param_reg[3]_0\(9) => simple_spi_n_54,
      \param_reg[3]_0\(8) => simple_spi_n_55,
      \param_reg[3]_0\(7) => simple_spi_n_56,
      \param_reg[3]_0\(6) => simple_spi_n_57,
      \param_reg[3]_0\(5) => simple_spi_n_58,
      \param_reg[3]_0\(4) => simple_spi_n_59,
      \param_reg[3]_0\(3) => simple_spi_n_60,
      \param_reg[3]_0\(2) => simple_spi_n_61,
      \param_reg[3]_0\(1) => simple_spi_n_62,
      \param_reg[3]_0\(0) => simple_spi_n_63,
      \param_reg[3]_1\ => simple_spi_n_85,
      pdreq_r => pdreq_r,
      \rd_state[2]_i_3_0\(3 downto 0) => cswcnt_reg(3 downto 0),
      \rd_state[4]_i_4_0\ => \rd_state[4]_i_10_n_0\,
      \rd_state[4]_i_4_1\ => sr_shift_two_r_i_4_n_0,
      \rd_state_reg[0]\ => \rd_state[0]_i_2_n_0\,
      \rd_state_reg[0]_0\ => \rd_state[0]_i_3_n_0\,
      \rd_state_reg[0]_1\ => \rd_state[0]_i_4_n_0\,
      \rd_state_reg[2]\(3) => simple_spi_n_75,
      \rd_state_reg[2]\(2) => simple_spi_n_76,
      \rd_state_reg[2]\(1) => simple_spi_n_77,
      \rd_state_reg[2]\(0) => simple_spi_n_78,
      \rd_state_reg[2]_0\(3) => simple_spi_n_79,
      \rd_state_reg[2]_0\(2) => simple_spi_n_80,
      \rd_state_reg[2]_0\(1) => simple_spi_n_81,
      \rd_state_reg[2]_0\(0) => simple_spi_n_82,
      \rd_state_reg[2]_1\ => \rd_state[5]_i_3_n_0\,
      \rd_state_reg[2]_2\ => \rd_state[2]_i_4_n_0\,
      \rd_state_reg[2]_3\(0) => burst_cont0,
      \rd_state_reg[2]_4\ => \rd_state[2]_i_8_n_0\,
      \rd_state_reg[2]_5\ => \rd_state[7]_i_7_n_0\,
      \rd_state_reg[2]_6\ => \rd_state[7]_i_6_n_0\,
      \rd_state_reg[2]_7\ => \rd_state[7]_i_5_n_0\,
      \rd_state_reg[2]_8\ => \rd_state[4]_i_7_n_0\,
      \rd_state_reg[3]\ => \rd_state[4]_i_6_n_0\,
      \rd_state_reg[3]_0\ => \rd_state[4]_i_9_n_0\,
      \rd_state_reg[3]_1\ => \sample[1]_i_2_n_0\,
      \rd_state_reg[4]\ => \rd_state[4]_i_5_n_0\,
      \rd_state_reg[5]\ => \rd_state[5]_i_2_n_0\,
      \rd_state_reg[5]_0\ => \rd_state[9]_i_2_n_0\,
      \rd_state_reg[6]\ => \rd_state[6]_i_3_n_0\,
      \rd_state_reg[6]_0\ => \rd_state[9]_i_3_n_0\,
      \rd_state_reg[8]\ => simple_spi_n_28,
      \rdata_reg[0][0]\ => \rdata[0][7]_i_2_n_0\,
      \rdata_reg[3][0]\ => \rdata[3][7]_i_6_n_0\,
      \rdata_reg[3][2]\ => \rdata[3][2]_i_2_n_0\,
      \rdata_reg[3][6]\ => \rdata[3][7]_i_8_n_0\,
      rvalid045_out => rvalid045_out,
      rvalid_reg => simple_spi_n_5,
      rvalid_reg_0 => \^rvalid_reg_0\,
      rvalid_reg_1 => rvalid_i_2_n_0,
      rvalid_reg_2 => rvalid_i_3_n_0,
      rvalid_reg_3 => \rdata[3][7]_i_3_n_0\,
      s_arvalid => s_arvalid,
      s_awvalid => s_awvalid,
      s_wdata(31 downto 0) => s_wdata(31 downto 0),
      s_wvalid => s_wvalid,
      sample(1 downto 0) => sample(1 downto 0),
      sck => sck,
      sck_reg(1) => simple_spi_n_64,
      sck_reg(0) => simple_spi_n_65,
      sdi_i => sdi_i,
      sdi_o => sdi_o,
      sdo_i => sdo_i,
      sdo_o => sdo_o,
      second_write => second_write,
      second_write_reg => simple_spi_n_20,
      \shift_reg_reg[27]\ => \shift_reg[31]_i_4_n_0\,
      \shift_reg_reg[27]_0\ => \shift_reg[27]_i_2_n_0\,
      \shift_reg_reg[29]\ => \shift_reg[29]_i_2_n_0\,
      \shift_reg_reg[31]\ => \shift_reg[31]_i_6_n_0\,
      spi_addr(3 downto 0) => spi_addr(15 downto 12),
      spi_run_reg => simple_spi_n_83,
      spi_run_reg_0 => spi_run_reg_n_0,
      sr_shift_inst_r => sr_shift_inst_r,
      sr_shift_inst_r_reg => simple_spi_n_86,
      sr_shift_inst_r_reg_0 => sr_shift_inst_r_i_2_n_0,
      sr_shift_two_r => sr_shift_two_r,
      sr_shift_two_r_reg => \rd_state[0]_i_6_n_0\,
      sr_shift_two_r_reg_0 => sr_shift_two_r_i_2_n_0,
      \tot_bytes_reg[0]\ => \rd_state[7]_i_3_n_0\,
      wcol_reg_0 => buf_write_reg_n_0
    );
spi_run_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_83,
      Q => spi_run_reg_n_0,
      R => areset
    );
sr_shift_inst_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000007F"
    )
        port map (
      I0 => adbit_cnt_reg(0),
      I1 => adbit_cnt_reg(1),
      I2 => adbit_cnt_reg(2),
      I3 => adbit_cnt_reg(3),
      I4 => adbit_cnt_reg(5),
      I5 => adbit_cnt_reg(4),
      O => sr_shift_inst_r_i_2_n_0
    );
sr_shift_inst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_86,
      Q => sr_shift_inst_r,
      R => areset
    );
sr_shift_two_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => s_addr,
      I1 => adbit_cnt_reg(4),
      I2 => adbit_cnt_reg(5),
      I3 => adbit_cnt_reg(3),
      I4 => sr_shift_two_r_i_4_n_0,
      O => sr_shift_two_r_i_2_n_0
    );
sr_shift_two_r_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => adbit_cnt_reg(2),
      I1 => adbit_cnt_reg(1),
      I2 => adbit_cnt_reg(0),
      O => sr_shift_two_r_i_4_n_0
    );
sr_shift_two_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => simple_spi_n_85,
      Q => sr_shift_two_r,
      R => areset
    );
\tot_bytes[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05D505D5051505D5"
    )
        port map (
      I0 => tot_bytes(0),
      I1 => s_arvalid,
      I2 => \^s_awready\,
      I3 => s_awvalid,
      I4 => \tot_bytes[0]_i_2_n_0\,
      I5 => s_arsize(2),
      O => \tot_bytes[0]_i_1_n_0\
    );
\tot_bytes[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_arsize(1),
      I1 => s_arsize(0),
      I2 => s_arlen(0),
      O => \tot_bytes[0]_i_2_n_0\
    );
\tot_bytes[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF88888F8"
    )
        port map (
      I0 => s_arsize(2),
      I1 => \tot_bytes[3]_i_3_n_0\,
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => tot_bytes(0),
      I4 => tot_bytes(1),
      I5 => \tot_bytes[5]_i_3_n_0\,
      O => \tot_bytes[1]_i_1_n_0\
    );
\tot_bytes[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAE"
    )
        port map (
      I0 => \tot_bytes[6]_i_4_n_0\,
      I1 => \tot_bytes[7]_i_4_n_0\,
      I2 => tot_bytes(1),
      I3 => tot_bytes(0),
      I4 => tot_bytes(2),
      I5 => \tot_bytes[7]_i_5_n_0\,
      O => \tot_bytes[2]_i_1_n_0\
    );
\tot_bytes[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF9090909090"
    )
        port map (
      I0 => tot_bytes(3),
      I1 => \tot_bytes[3]_i_2_n_0\,
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => s_arsize(2),
      I4 => \tot_bytes[7]_i_6_n_0\,
      I5 => \tot_bytes[3]_i_3_n_0\,
      O => \tot_bytes[3]_i_1_n_0\
    );
\tot_bytes[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => tot_bytes(2),
      I1 => tot_bytes(0),
      I2 => tot_bytes(1),
      O => \tot_bytes[3]_i_2_n_0\
    );
\tot_bytes[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => s_awvalid,
      I1 => buf_busy,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => pdreq_r,
      I4 => s_arvalid,
      O => \tot_bytes[3]_i_3_n_0\
    );
\tot_bytes[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F909090909090"
    )
        port map (
      I0 => \tot_bytes[4]_i_2_n_0\,
      I1 => tot_bytes(4),
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => s_awvalid,
      I4 => s_arvalid,
      I5 => \tot_bytes[4]_i_3_n_0\,
      O => \tot_bytes[4]_i_1_n_0\
    );
\tot_bytes[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tot_bytes(3),
      I1 => tot_bytes(1),
      I2 => tot_bytes(0),
      I3 => tot_bytes(2),
      O => \tot_bytes[4]_i_2_n_0\
    );
\tot_bytes[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0ACA0ACA0"
    )
        port map (
      I0 => \tot_bytes[4]_i_4_n_0\,
      I1 => s_arlen(3),
      I2 => s_arsize(1),
      I3 => s_arsize(0),
      I4 => s_arlen(0),
      I5 => s_arsize(2),
      O => \tot_bytes[4]_i_3_n_0\
    );
\tot_bytes[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_arlen(1),
      I1 => s_arsize(0),
      I2 => s_arlen(2),
      O => \tot_bytes[4]_i_4_n_0\
    );
\tot_bytes[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90FF9090"
    )
        port map (
      I0 => tot_bytes(5),
      I1 => \tot_bytes[6]_i_2_n_0\,
      I2 => \tot_bytes[7]_i_4_n_0\,
      I3 => \tot_bytes[5]_i_2_n_0\,
      I4 => \tot_bytes[5]_i_3_n_0\,
      O => \tot_bytes[5]_i_1_n_0\
    );
\tot_bytes[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15111555"
    )
        port map (
      I0 => s_arsize(2),
      I1 => s_arsize(1),
      I2 => s_arlen(2),
      I3 => s_arsize(0),
      I4 => s_arlen(3),
      O => \tot_bytes[5]_i_2_n_0\
    );
\tot_bytes[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => \tot_bytes[3]_i_3_n_0\,
      I1 => s_arlen(0),
      I2 => s_arsize(0),
      I3 => s_arlen(1),
      I4 => s_arsize(1),
      O => \tot_bytes[5]_i_3_n_0\
    );
\tot_bytes[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900FFFFA900A900"
    )
        port map (
      I0 => tot_bytes(6),
      I1 => \tot_bytes[6]_i_2_n_0\,
      I2 => tot_bytes(5),
      I3 => \tot_bytes[7]_i_4_n_0\,
      I4 => \tot_bytes[6]_i_3_n_0\,
      I5 => \tot_bytes[6]_i_4_n_0\,
      O => \tot_bytes[6]_i_1_n_0\
    );
\tot_bytes[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tot_bytes(4),
      I1 => tot_bytes(2),
      I2 => tot_bytes(0),
      I3 => tot_bytes(1),
      I4 => tot_bytes(3),
      O => \tot_bytes[6]_i_2_n_0\
    );
\tot_bytes[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => s_arsize(2),
      I1 => s_arsize(1),
      I2 => s_arlen(3),
      I3 => s_arsize(0),
      O => \tot_bytes[6]_i_3_n_0\
    );
\tot_bytes[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA808A0A0A808"
    )
        port map (
      I0 => \tot_bytes[3]_i_3_n_0\,
      I1 => s_arlen(2),
      I2 => s_arsize(0),
      I3 => s_arlen(1),
      I4 => s_arsize(1),
      I5 => s_arlen(0),
      O => \tot_bytes[6]_i_4_n_0\
    );
\tot_bytes[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => tot_bytes(7),
      I1 => \tot_bytes[7]_i_3_n_0\,
      I2 => tot_bytes(6),
      I3 => \tot_bytes[7]_i_4_n_0\,
      I4 => \tot_bytes[7]_i_5_n_0\,
      I5 => \tot_bytes[7]_i_6_n_0\,
      O => \tot_bytes[7]_i_2_n_0\
    );
\tot_bytes[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tot_bytes(5),
      I1 => tot_bytes(3),
      I2 => tot_bytes(1),
      I3 => tot_bytes(0),
      I4 => tot_bytes(2),
      I5 => tot_bytes(4),
      O => \tot_bytes[7]_i_3_n_0\
    );
\tot_bytes[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF1FF"
    )
        port map (
      I0 => s_arvalid,
      I1 => s_awvalid,
      I2 => pdreq_r,
      I3 => \rd_state_reg_n_0_[0]\,
      I4 => buf_busy,
      O => \tot_bytes[7]_i_4_n_0\
    );
\tot_bytes[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_arvalid,
      I1 => pdreq_r,
      I2 => \rd_state_reg_n_0_[0]\,
      I3 => buf_busy,
      I4 => s_awvalid,
      I5 => s_arsize(2),
      O => \tot_bytes[7]_i_5_n_0\
    );
\tot_bytes[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_arlen(0),
      I1 => s_arlen(1),
      I2 => s_arsize(1),
      I3 => s_arlen(2),
      I4 => s_arsize(0),
      I5 => s_arlen(3),
      O => \tot_bytes[7]_i_6_n_0\
    );
\tot_bytes_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[0]_i_1_n_0\,
      Q => tot_bytes(0),
      R => areset
    );
\tot_bytes_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[1]_i_1_n_0\,
      Q => tot_bytes(1),
      R => areset
    );
\tot_bytes_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[2]_i_1_n_0\,
      Q => tot_bytes(2),
      R => areset
    );
\tot_bytes_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[3]_i_1_n_0\,
      Q => tot_bytes(3),
      R => areset
    );
\tot_bytes_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[4]_i_1_n_0\,
      Q => tot_bytes(4),
      R => areset
    );
\tot_bytes_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[5]_i_1_n_0\,
      Q => tot_bytes(5),
      R => areset
    );
\tot_bytes_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[6]_i_1_n_0\,
      Q => tot_bytes(6),
      R => areset
    );
\tot_bytes_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => simple_spi_n_31,
      D => \tot_bytes[7]_i_2_n_0\,
      Q => tot_bytes(7),
      R => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_spi_flash_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_top_spi_flash_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_spi_flash_ctrl_0_0 : entity is "bd_top_spi_flash_ctrl_0_0,spi_flash_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_top_spi_flash_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_top_spi_flash_ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_top_spi_flash_ctrl_0_0 : entity is "spi_flash_ctrl,Vivado 2019.2";
end bd_top_spi_flash_ctrl_0_0;

architecture STRUCTURE of bd_top_spi_flash_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_bid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SPI_CLK : signal is "xilinx.com:signal:clock:1.0 SPI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SPI_CLK : signal is "XIL_INTERFACENAME SPI_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_top_spi_flash_ctrl_0_0_SPI_CLK, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s, FREQ_HZ 33000000, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_arready : signal is "xilinx.com:interface:aximm:1.0 s ARREADY";
  attribute X_INTERFACE_INFO of s_arvalid : signal is "xilinx.com:interface:aximm:1.0 s ARVALID";
  attribute X_INTERFACE_INFO of s_awready : signal is "xilinx.com:interface:aximm:1.0 s AWREADY";
  attribute X_INTERFACE_INFO of s_awvalid : signal is "xilinx.com:interface:aximm:1.0 s AWVALID";
  attribute X_INTERFACE_INFO of s_bready : signal is "xilinx.com:interface:aximm:1.0 s BREADY";
  attribute X_INTERFACE_INFO of s_bvalid : signal is "xilinx.com:interface:aximm:1.0 s BVALID";
  attribute X_INTERFACE_INFO of s_rlast : signal is "xilinx.com:interface:aximm:1.0 s RLAST";
  attribute X_INTERFACE_INFO of s_rready : signal is "xilinx.com:interface:aximm:1.0 s RREADY";
  attribute X_INTERFACE_PARAMETER of s_rready : signal is "XIL_INTERFACENAME s, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_rvalid : signal is "xilinx.com:interface:aximm:1.0 s RVALID";
  attribute X_INTERFACE_INFO of s_wlast : signal is "xilinx.com:interface:aximm:1.0 s WLAST";
  attribute X_INTERFACE_INFO of s_wready : signal is "xilinx.com:interface:aximm:1.0 s WREADY";
  attribute X_INTERFACE_INFO of s_wvalid : signal is "xilinx.com:interface:aximm:1.0 s WVALID";
  attribute X_INTERFACE_INFO of s_araddr : signal is "xilinx.com:interface:aximm:1.0 s ARADDR";
  attribute X_INTERFACE_INFO of s_arburst : signal is "xilinx.com:interface:aximm:1.0 s ARBURST";
  attribute X_INTERFACE_INFO of s_arcache : signal is "xilinx.com:interface:aximm:1.0 s ARCACHE";
  attribute X_INTERFACE_INFO of s_arid : signal is "xilinx.com:interface:aximm:1.0 s ARID";
  attribute X_INTERFACE_INFO of s_arlen : signal is "xilinx.com:interface:aximm:1.0 s ARLEN";
  attribute X_INTERFACE_INFO of s_arlock : signal is "xilinx.com:interface:aximm:1.0 s ARLOCK";
  attribute X_INTERFACE_INFO of s_arprot : signal is "xilinx.com:interface:aximm:1.0 s ARPROT";
  attribute X_INTERFACE_INFO of s_arsize : signal is "xilinx.com:interface:aximm:1.0 s ARSIZE";
  attribute X_INTERFACE_INFO of s_awaddr : signal is "xilinx.com:interface:aximm:1.0 s AWADDR";
  attribute X_INTERFACE_INFO of s_awburst : signal is "xilinx.com:interface:aximm:1.0 s AWBURST";
  attribute X_INTERFACE_INFO of s_awcache : signal is "xilinx.com:interface:aximm:1.0 s AWCACHE";
  attribute X_INTERFACE_INFO of s_awid : signal is "xilinx.com:interface:aximm:1.0 s AWID";
  attribute X_INTERFACE_INFO of s_awlen : signal is "xilinx.com:interface:aximm:1.0 s AWLEN";
  attribute X_INTERFACE_INFO of s_awlock : signal is "xilinx.com:interface:aximm:1.0 s AWLOCK";
  attribute X_INTERFACE_INFO of s_awprot : signal is "xilinx.com:interface:aximm:1.0 s AWPROT";
  attribute X_INTERFACE_INFO of s_awsize : signal is "xilinx.com:interface:aximm:1.0 s AWSIZE";
  attribute X_INTERFACE_INFO of s_bid : signal is "xilinx.com:interface:aximm:1.0 s BID";
  attribute X_INTERFACE_INFO of s_bresp : signal is "xilinx.com:interface:aximm:1.0 s BRESP";
  attribute X_INTERFACE_INFO of s_rdata : signal is "xilinx.com:interface:aximm:1.0 s RDATA";
  attribute X_INTERFACE_INFO of s_rid : signal is "xilinx.com:interface:aximm:1.0 s RID";
  attribute X_INTERFACE_INFO of s_rresp : signal is "xilinx.com:interface:aximm:1.0 s RRESP";
  attribute X_INTERFACE_INFO of s_wdata : signal is "xilinx.com:interface:aximm:1.0 s WDATA";
  attribute X_INTERFACE_INFO of s_wid : signal is "xilinx.com:interface:aximm:1.0 s WID";
  attribute X_INTERFACE_INFO of s_wstrb : signal is "xilinx.com:interface:aximm:1.0 s WSTRB";
begin
  s_bid(5 downto 0) <= \^s_bid\(5 downto 0);
  s_bresp(1) <= \<const0>\;
  s_bresp(0) <= \<const0>\;
  s_rid(5 downto 0) <= \^s_bid\(5 downto 0);
  s_rresp(1) <= \<const0>\;
  s_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl
     port map (
      SPI_CLK => SPI_CLK,
      SPI_CS => SPI_CS,
      SPI_MISO => SPI_MISO,
      SPI_MOSI => SPI_MOSI,
      aclk => aclk,
      aresetn => aresetn,
      fast_startup => fast_startup,
      inta_o => inta_o,
      power_down_ack => power_down_ack,
      power_down_req => power_down_req,
      rvalid_reg_0 => s_rvalid,
      s_araddr(31 downto 0) => s_araddr(31 downto 0),
      s_arburst(1 downto 0) => s_arburst(1 downto 0),
      s_arid(5 downto 0) => s_arid(5 downto 0),
      s_arlen(3 downto 0) => s_arlen(3 downto 0),
      s_arready => s_arready,
      s_arsize(2 downto 0) => s_arsize(2 downto 0),
      s_arvalid => s_arvalid,
      s_awaddr(31 downto 0) => s_awaddr(31 downto 0),
      s_awid(5 downto 0) => s_awid(5 downto 0),
      s_awlen(3 downto 0) => s_awlen(3 downto 0),
      s_awready => s_awready,
      s_awsize(2 downto 0) => s_awsize(2 downto 0),
      s_awvalid => s_awvalid,
      s_bid(5 downto 0) => \^s_bid\(5 downto 0),
      s_bready => s_bready,
      s_bvalid => s_bvalid,
      s_rdata(31 downto 0) => s_rdata(31 downto 0),
      s_rlast => s_rlast,
      s_rready => s_rready,
      s_wdata(31 downto 0) => s_wdata(31 downto 0),
      s_wlast => s_wlast,
      s_wready => s_wready,
      s_wvalid => s_wvalid,
      spi_addr(15 downto 0) => spi_addr(15 downto 0)
    );
end STRUCTURE;
