-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 11 18:14:09 2022
-- Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_confreg_0_1/bd_top_confreg_0_1_sim_netlist.vhdl
-- Design      : bd_top_confreg_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_confreg_0_1_confreg is
  port (
    s_arready : out STD_LOGIC;
    s_awready : out STD_LOGIC;
    s_rlast_reg_0 : out STD_LOGIC;
    s_rvalid_reg_0 : out STD_LOGIC;
    s_bvalid : out STD_LOGIC;
    s_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    order_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led_rg0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    led_rg1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cr00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr02 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr03 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr04 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr05 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr06 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cr07 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    num_csn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    num_a_g : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_wready_reg_0 : out STD_LOGIC;
    btn_key_col : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_key_row : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_awvalid : in STD_LOGIC;
    s_arvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_rready : in STD_LOGIC;
    s_bready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    finish_read_order : in STD_LOGIC;
    write_dma_end : in STD_LOGIC;
    btn_step : in STD_LOGIC_VECTOR ( 1 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_wvalid : in STD_LOGIC;
    s_wlast : in STD_LOGIC;
    s_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_confreg_0_1_confreg : entity is "confreg";
end bd_top_confreg_0_1_confreg;

architecture STRUCTURE of bd_top_confreg_0_1_confreg is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal R_or_W : STD_LOGIC;
  signal ar_enter : STD_LOGIC;
  signal aw_enter : STD_LOGIC;
  signal btn_key_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \btn_key_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[10]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[10]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[11]_i_4_n_0\ : STD_LOGIC;
  signal \btn_key_r[11]_i_5_n_0\ : STD_LOGIC;
  signal \btn_key_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[12]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[13]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[13]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[14]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[14]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[14]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_10_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_11_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_12_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_13_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_4_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_5_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_6_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_7_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_8_n_0\ : STD_LOGIC;
  signal \btn_key_r[15]_i_9_n_0\ : STD_LOGIC;
  signal \btn_key_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \btn_key_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \btn_key_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \btn_key_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \btn_key_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \btn_key_r[9]_i_1_n_0\ : STD_LOGIC;
  signal \btn_key_r[9]_i_2_n_0\ : STD_LOGIC;
  signal btn_key_tmp1 : STD_LOGIC;
  signal btn_key_tmp13 : STD_LOGIC;
  signal btn_key_tmp2 : STD_LOGIC;
  signal btn_key_tmp9 : STD_LOGIC;
  signal btn_step0_r : STD_LOGIC;
  signal btn_step0_r_i_1_n_0 : STD_LOGIC;
  signal btn_step1_r : STD_LOGIC;
  signal btn_step1_r_i_1_n_0 : STD_LOGIC;
  signal \buf_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \buf_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \buf_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[4]_i_1_n_0\ : STD_LOGIC;
  signal \buf_id[5]_i_2_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal busy01_out : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \^cr00\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr00[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr01\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr01[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr02\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr02[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr03\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr03[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr04\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr04[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr05\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr05[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr06\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr06[31]_i_1_n_0\ : STD_LOGIC;
  signal \^cr07\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cr07[31]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \key_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \key_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \key_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \key_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \key_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \key_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \key_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \key_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \key_count_reg_n_0_[9]\ : STD_LOGIC;
  signal key_flag : STD_LOGIC;
  signal key_flag_i_1_n_0 : STD_LOGIC;
  signal key_flag_i_2_n_0 : STD_LOGIC;
  signal key_sample : STD_LOGIC;
  signal \key_start1__1\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \led_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \led_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \led_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \led_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \led_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \led_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \^led_rg0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \led_rg0_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_rg0_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \led_rg0_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \^led_rg1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \led_rg1_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \led_rg1_data_reg_n_0_[9]\ : STD_LOGIC;
  signal num_a_g_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \num_csn[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[3]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[4]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[5]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[6]_i_1_n_0\ : STD_LOGIC;
  signal \num_csn[7]_i_1_n_0\ : STD_LOGIC;
  signal \num_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \num_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \num_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \num_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \^order_addr_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \order_addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \order_addr_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \order_addr_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \order_addr_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \order_addr_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \order_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in10_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal p_1_in9_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \r_retire__1\ : STD_LOGIC;
  signal \^s_bvalid\ : STD_LOGIC;
  signal s_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[12]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[13]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[14]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[16]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[17]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[18]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[20]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[21]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[22]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[23]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[24]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[25]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[26]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[27]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[28]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[29]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[30]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_13_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_15_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_16_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_17_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_18_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_19_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_20_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_21_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_22_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_23_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_24_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_25_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_26_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_27_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_28_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_29_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_30_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_31_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_32_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_33_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_34_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_35_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[25]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[28]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[30]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_rdata_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal s_rlast_i_1_n_0 : STD_LOGIC;
  signal \^s_rlast_reg_0\ : STD_LOGIC;
  signal s_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_rvalid_reg_0\ : STD_LOGIC;
  signal s_wready_i_1_n_0 : STD_LOGIC;
  signal s_wready_i_2_n_0 : STD_LOGIC;
  signal \^s_wready_reg_0\ : STD_LOGIC;
  signal scan_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \scan_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \scan_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \scan_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \scan_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \scan_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \scan_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \scan_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \scan_data[3]_i_3_n_0\ : STD_LOGIC;
  signal scan_data_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \step0_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \step0_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \step0_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \step0_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \step0_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \step0_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \step0_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \step0_count_reg_n_0_[9]\ : STD_LOGIC;
  signal step0_flag : STD_LOGIC;
  signal step0_flag_i_1_n_0 : STD_LOGIC;
  signal step0_sample : STD_LOGIC;
  signal \step1_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \step1_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \step1_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \step1_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \step1_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \step1_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \step1_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \step1_count_reg_n_0_[9]\ : STD_LOGIC;
  signal step1_flag : STD_LOGIC;
  signal step1_flag_i_1_n_0 : STD_LOGIC;
  signal step1_sample : STD_LOGIC;
  signal \timer[0]_i_2_n_0\ : STD_LOGIC;
  signal \timer[0]_i_3_n_0\ : STD_LOGIC;
  signal \timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \timer[0]_i_6_n_0\ : STD_LOGIC;
  signal \timer[0]_i_8_n_0\ : STD_LOGIC;
  signal \timer[12]_i_2_n_0\ : STD_LOGIC;
  signal \timer[12]_i_3_n_0\ : STD_LOGIC;
  signal \timer[12]_i_4_n_0\ : STD_LOGIC;
  signal \timer[12]_i_5_n_0\ : STD_LOGIC;
  signal \timer[16]_i_2_n_0\ : STD_LOGIC;
  signal \timer[16]_i_3_n_0\ : STD_LOGIC;
  signal \timer[16]_i_4_n_0\ : STD_LOGIC;
  signal \timer[16]_i_5_n_0\ : STD_LOGIC;
  signal \timer[20]_i_2_n_0\ : STD_LOGIC;
  signal \timer[20]_i_3_n_0\ : STD_LOGIC;
  signal \timer[20]_i_4_n_0\ : STD_LOGIC;
  signal \timer[20]_i_5_n_0\ : STD_LOGIC;
  signal \timer[24]_i_2_n_0\ : STD_LOGIC;
  signal \timer[24]_i_3_n_0\ : STD_LOGIC;
  signal \timer[24]_i_4_n_0\ : STD_LOGIC;
  signal \timer[24]_i_5_n_0\ : STD_LOGIC;
  signal \timer[28]_i_2_n_0\ : STD_LOGIC;
  signal \timer[28]_i_3_n_0\ : STD_LOGIC;
  signal \timer[28]_i_4_n_0\ : STD_LOGIC;
  signal \timer[28]_i_5_n_0\ : STD_LOGIC;
  signal \timer[4]_i_2_n_0\ : STD_LOGIC;
  signal \timer[4]_i_3_n_0\ : STD_LOGIC;
  signal \timer[4]_i_4_n_0\ : STD_LOGIC;
  signal \timer[4]_i_5_n_0\ : STD_LOGIC;
  signal \timer[8]_i_2_n_0\ : STD_LOGIC;
  signal \timer[8]_i_3_n_0\ : STD_LOGIC;
  signal \timer[8]_i_4_n_0\ : STD_LOGIC;
  signal \timer[8]_i_5_n_0\ : STD_LOGIC;
  signal timer_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal write : STD_LOGIC;
  signal write_i_1_n_0 : STD_LOGIC;
  signal write_led : STD_LOGIC;
  signal write_led_rg0 : STD_LOGIC;
  signal write_led_rg1 : STD_LOGIC;
  signal write_num : STD_LOGIC;
  signal write_order_reg : STD_LOGIC;
  signal \write_timer__8\ : STD_LOGIC;
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_key_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute SOFT_HLUTNM of R_or_W_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \btn_key_col[0]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \btn_key_col[1]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \btn_key_col[2]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \btn_key_col[3]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \btn_key_r[10]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \btn_key_r[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \btn_key_r[11]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \btn_key_r[12]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \btn_key_r[14]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \btn_key_r[15]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \btn_key_r[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \btn_key_r[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \btn_key_r[2]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \btn_key_r[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \btn_key_r[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \btn_key_r[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \btn_key_r[4]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \btn_key_r[6]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \btn_key_r[7]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \btn_key_r[8]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \buf_addr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_data[15]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \led_data[15]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \led_data[15]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \led_rg0_data[1]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \led_rg1_data[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \num_a_g[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \num_a_g[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \num_a_g[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \num_a_g[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \num_a_g[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \num_a_g[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \num_csn[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \num_csn[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \num_csn[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \num_csn[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \num_csn[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \num_csn[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \num_csn[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \num_csn[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \order_addr_reg[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \order_addr_reg[31]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \order_addr_reg[31]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of s_arready_INST_0 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of s_awready_INST_0 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of s_bvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_rdata[0]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_rdata[10]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_rdata[11]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_rdata[12]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_rdata[13]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_rdata[14]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_rdata[15]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_rdata[16]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_rdata[17]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_rdata[18]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_rdata[19]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_rdata[1]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_rdata[20]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_rdata[21]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_rdata[22]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_rdata[23]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_rdata[24]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_rdata[25]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_rdata[26]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_rdata[27]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_rdata[28]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_rdata[29]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_rdata[2]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_rdata[30]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_17\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_18\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_21\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_22\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_23\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_25\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_27\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_29\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_30\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_32\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_33\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_rdata[31]_i_35\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_rdata[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_rdata[4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_rdata[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_rdata[6]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_rdata[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_rdata[8]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_rdata[9]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_rlast_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_rvalid_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_wready_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state_count[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state_count[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state_count[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state_count[3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of write_i_1 : label is "soft_lutpair4";
begin
  cr00(31 downto 0) <= \^cr00\(31 downto 0);
  cr01(31 downto 0) <= \^cr01\(31 downto 0);
  cr02(31 downto 0) <= \^cr02\(31 downto 0);
  cr03(31 downto 0) <= \^cr03\(31 downto 0);
  cr04(31 downto 0) <= \^cr04\(31 downto 0);
  cr05(31 downto 0) <= \^cr05\(31 downto 0);
  cr06(31 downto 0) <= \^cr06\(31 downto 0);
  cr07(31 downto 0) <= \^cr07\(31 downto 0);
  led(15 downto 0) <= \^led\(15 downto 0);
  led_rg0(1 downto 0) <= \^led_rg0\(1 downto 0);
  led_rg1(1 downto 0) <= \^led_rg1\(1 downto 0);
  order_addr_reg(31 downto 0) <= \^order_addr_reg\(31 downto 0);
  s_bvalid <= \^s_bvalid\;
  s_rlast_reg_0 <= \^s_rlast_reg_0\;
  s_rvalid_reg_0 <= \^s_rvalid_reg_0\;
  s_wready_reg_0 <= \^s_wready_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FCE0CC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \key_start1__1\,
      I3 => key_sample,
      I4 => p_1_in6_in,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FF33FF33FF32"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => \key_start1__1\,
      I2 => p_1_in6_in,
      I3 => \FSM_onehot_state[1]_i_3_n_0\,
      I4 => p_1_in11_in,
      I5 => p_1_in9_in,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => btn_key_row(1),
      I1 => btn_key_row(0),
      I2 => btn_key_row(3),
      I3 => btn_key_row(2),
      O => \key_start1__1\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => btn_key_row(1),
      I2 => btn_key_row(0),
      I3 => btn_key_row(3),
      I4 => btn_key_row(2),
      I5 => key_sample,
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => btn_key_row(1),
      I2 => btn_key_row(0),
      I3 => btn_key_row(3),
      I4 => btn_key_row(2),
      I5 => key_sample,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => s_wready_i_1_n_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => s_wready_i_1_n_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_1_in6_in,
      R => s_wready_i_1_n_0
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in9_in,
      R => s_wready_i_1_n_0
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_1_in10_in,
      R => s_wready_i_1_n_0
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in13_in,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => p_1_in11_in,
      R => s_wready_i_1_n_0
    );
R_or_W_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_arvalid,
      I1 => R_or_W,
      I2 => s_awvalid,
      O => ar_enter
    );
R_or_W_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => ar_enter,
      Q => R_or_W,
      R => s_wready_i_1_n_0
    );
\btn_key_col[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in6_in,
      I2 => p_1_in10_in,
      O => btn_key_col(0)
    );
\btn_key_col[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in6_in,
      I2 => p_1_in11_in,
      O => btn_key_col(1)
    );
\btn_key_col[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => p_1_in6_in,
      I2 => p_1_in11_in,
      O => btn_key_col(2)
    );
\btn_key_col[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => p_1_in9_in,
      I2 => p_1_in11_in,
      O => btn_key_col(3)
    );
\btn_key_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => btn_key_r(0),
      I1 => \btn_key_r[15]_i_5_n_0\,
      I2 => btn_key_tmp1,
      I3 => \btn_key_r[15]_i_3_n_0\,
      O => \btn_key_r[0]_i_1_n_0\
    );
\btn_key_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(10),
      I1 => p_0_in7_in,
      I2 => p_1_in9_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[10]_i_2_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[10]_i_1_n_0\
    );
\btn_key_r[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[8]_i_2_n_0\,
      I1 => \btn_key_r[11]_i_5_n_0\,
      I2 => \btn_key_r[10]_i_3_n_0\,
      O => \btn_key_r[10]_i_2_n_0\
    );
\btn_key_r[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA0C000C0000000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => p_1_in10_in,
      I2 => btn_key_row(3),
      I3 => btn_key_row(2),
      I4 => btn_key_row(0),
      I5 => btn_key_row(1),
      O => \btn_key_r[10]_i_3_n_0\
    );
\btn_key_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(11),
      I1 => p_0_in7_in,
      I2 => p_1_in6_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[11]_i_3_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[11]_i_1_n_0\
    );
\btn_key_r[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => btn_key_row(3),
      I1 => btn_key_row(2),
      I2 => btn_key_row(1),
      I3 => btn_key_row(0),
      O => p_0_in7_in
    );
\btn_key_r[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[9]_i_2_n_0\,
      I1 => \btn_key_r[11]_i_4_n_0\,
      I2 => \btn_key_r[11]_i_5_n_0\,
      O => \btn_key_r[11]_i_3_n_0\
    );
\btn_key_r[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA0C000C0000000"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in6_in,
      I2 => btn_key_row(3),
      I3 => btn_key_row(2),
      I4 => btn_key_row(0),
      I5 => btn_key_row(1),
      O => \btn_key_r[11]_i_4_n_0\
    );
\btn_key_r[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA0C000C0000000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => p_1_in9_in,
      I2 => btn_key_row(3),
      I3 => btn_key_row(2),
      I4 => btn_key_row(0),
      I5 => btn_key_row(1),
      O => \btn_key_r[11]_i_5_n_0\
    );
\btn_key_r[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(12),
      I1 => p_0_in5_in,
      I2 => p_1_in11_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[12]_i_2_n_0\,
      O => \btn_key_r[12]_i_1_n_0\
    );
\btn_key_r[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28800000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(0),
      I2 => btn_key_row(1),
      I3 => btn_key_row(2),
      I4 => btn_key_row(3),
      O => \btn_key_r[12]_i_2_n_0\
    );
\btn_key_r[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(13),
      I1 => p_0_in5_in,
      I2 => p_1_in10_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[13]_i_2_n_0\,
      O => \btn_key_r[13]_i_1_n_0\
    );
\btn_key_r[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6880688028800000"
    )
        port map (
      I0 => btn_key_row(3),
      I1 => btn_key_row(2),
      I2 => btn_key_row(1),
      I3 => btn_key_row(0),
      I4 => p_1_in10_in,
      I5 => p_1_in11_in,
      O => \btn_key_r[13]_i_2_n_0\
    );
\btn_key_r[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(14),
      I1 => p_0_in5_in,
      I2 => p_1_in9_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[14]_i_2_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[14]_i_1_n_0\
    );
\btn_key_r[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[12]_i_2_n_0\,
      I1 => \btn_key_r[15]_i_10_n_0\,
      I2 => \btn_key_r[14]_i_3_n_0\,
      O => \btn_key_r[14]_i_2_n_0\
    );
\btn_key_r[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC0C000A0000000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => p_1_in10_in,
      I2 => btn_key_row(0),
      I3 => btn_key_row(1),
      I4 => btn_key_row(2),
      I5 => btn_key_row(3),
      O => \btn_key_r[14]_i_3_n_0\
    );
\btn_key_r[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(15),
      I1 => p_0_in5_in,
      I2 => p_1_in6_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[15]_i_4_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[15]_i_1_n_0\
    );
\btn_key_r[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC0C000A0000000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => p_1_in9_in,
      I2 => btn_key_row(0),
      I3 => btn_key_row(1),
      I4 => btn_key_row(2),
      I5 => btn_key_row(3),
      O => \btn_key_r[15]_i_10_n_0\
    );
\btn_key_r[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \btn_key_r[15]_i_11_n_0\
    );
\btn_key_r[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \btn_key_r[15]_i_12_n_0\
    );
\btn_key_r[15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => \btn_key_r[15]_i_13_n_0\
    );
\btn_key_r[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => btn_key_row(2),
      I1 => btn_key_row(3),
      I2 => btn_key_row(1),
      I3 => btn_key_row(0),
      O => p_0_in5_in
    );
\btn_key_r[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => aresetn,
      I1 => \btn_key_r[15]_i_6_n_0\,
      I2 => \btn_key_r[15]_i_7_n_0\,
      I3 => \btn_key_r[15]_i_8_n_0\,
      O => \btn_key_r[15]_i_3_n_0\
    );
\btn_key_r[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[13]_i_2_n_0\,
      I1 => \btn_key_r[15]_i_9_n_0\,
      I2 => \btn_key_r[15]_i_10_n_0\,
      O => \btn_key_r[15]_i_4_n_0\
    );
\btn_key_r[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \btn_key_r[15]_i_6_n_0\,
      I1 => \btn_key_r[15]_i_7_n_0\,
      I2 => \btn_key_r[15]_i_8_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \btn_key_r[15]_i_5_n_0\
    );
\btn_key_r[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAFAFAFAE"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in6_in,
      I2 => \key_start1__1\,
      I3 => p_1_in11_in,
      I4 => p_1_in10_in,
      I5 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \btn_key_r[15]_i_6_n_0\
    );
\btn_key_r[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_1_n_0\,
      I1 => p_1_in10_in,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \btn_key_r[15]_i_11_n_0\,
      I4 => \btn_key_r[15]_i_12_n_0\,
      I5 => \btn_key_r[15]_i_13_n_0\,
      O => \btn_key_r[15]_i_7_n_0\
    );
\btn_key_r[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBBFFFFFFBA"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => \key_start1__1\,
      I2 => p_1_in9_in,
      I3 => \FSM_onehot_state[1]_i_3_n_0\,
      I4 => p_1_in11_in,
      I5 => p_1_in6_in,
      O => \btn_key_r[15]_i_8_n_0\
    );
\btn_key_r[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC0C000A0000000"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => p_1_in6_in,
      I2 => btn_key_row(0),
      I3 => btn_key_row(1),
      I4 => btn_key_row(2),
      I5 => btn_key_row(3),
      O => \btn_key_r[15]_i_9_n_0\
    );
\btn_key_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(1),
      I1 => \btn_key_r[1]_i_2_n_0\,
      I2 => p_1_in10_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[3]_i_4_n_0\,
      O => \btn_key_r[1]_i_1_n_0\
    );
\btn_key_r[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => btn_key_row(0),
      I1 => btn_key_row(1),
      I2 => btn_key_row(2),
      I3 => btn_key_row(3),
      O => \btn_key_r[1]_i_2_n_0\
    );
\btn_key_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000A000A00CA"
    )
        port map (
      I0 => btn_key_r(2),
      I1 => btn_key_tmp9,
      I2 => \btn_key_r[15]_i_5_n_0\,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[2]_i_3_n_0\,
      I5 => \btn_key_r[3]_i_4_n_0\,
      O => \btn_key_r[2]_i_1_n_0\
    );
\btn_key_r[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      O => btn_key_tmp9
    );
\btn_key_r[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28808000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => btn_key_row(0),
      I2 => btn_key_row(1),
      I3 => btn_key_row(3),
      I4 => btn_key_row(2),
      O => \btn_key_r[2]_i_3_n_0\
    );
\btn_key_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0A0A0A0A"
    )
        port map (
      I0 => btn_key_r(3),
      I1 => btn_key_tmp13,
      I2 => \btn_key_r[15]_i_3_n_0\,
      I3 => \btn_key_r[3]_i_3_n_0\,
      I4 => \btn_key_r[3]_i_4_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[3]_i_1_n_0\
    );
\btn_key_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      O => btn_key_tmp13
    );
\btn_key_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC0C00028808000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => btn_key_row(2),
      I2 => btn_key_row(3),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      I5 => p_1_in9_in,
      O => \btn_key_r[3]_i_3_n_0\
    );
\btn_key_r[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28808000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(0),
      I2 => btn_key_row(1),
      I3 => btn_key_row(3),
      I4 => btn_key_row(2),
      O => \btn_key_r[3]_i_4_n_0\
    );
\btn_key_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0A000000000"
    )
        port map (
      I0 => btn_key_r(4),
      I1 => btn_key_tmp2,
      I2 => \btn_key_r[4]_i_3_n_0\,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => btn_key_tmp1,
      I5 => aresetn,
      O => \btn_key_r[4]_i_1_n_0\
    );
\btn_key_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(0),
      I4 => btn_key_row(1),
      O => btn_key_tmp2
    );
\btn_key_r[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[15]_i_8_n_0\,
      I1 => \btn_key_r[15]_i_7_n_0\,
      I2 => \btn_key_r[15]_i_6_n_0\,
      O => \btn_key_r[4]_i_3_n_0\
    );
\btn_key_r[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      O => btn_key_tmp1
    );
\btn_key_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(5),
      I1 => p_0_in8_in,
      I2 => p_1_in10_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[5]_i_2_n_0\,
      O => \btn_key_r[5]_i_1_n_0\
    );
\btn_key_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3880800028808000"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => btn_key_row(0),
      I2 => btn_key_row(1),
      I3 => btn_key_row(2),
      I4 => btn_key_row(3),
      I5 => p_1_in10_in,
      O => \btn_key_r[5]_i_2_n_0\
    );
\btn_key_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(6),
      I1 => p_0_in8_in,
      I2 => p_1_in9_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[6]_i_2_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[6]_i_1_n_0\
    );
\btn_key_r[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => btn_key_tmp1,
      I1 => \btn_key_r[7]_i_5_n_0\,
      I2 => \btn_key_r[6]_i_3_n_0\,
      O => \btn_key_r[6]_i_2_n_0\
    );
\btn_key_r[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC0800000008000"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      I5 => p_1_in11_in,
      O => \btn_key_r[6]_i_3_n_0\
    );
\btn_key_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000AA00AA"
    )
        port map (
      I0 => btn_key_r(7),
      I1 => p_0_in8_in,
      I2 => p_1_in6_in,
      I3 => \btn_key_r[15]_i_3_n_0\,
      I4 => \btn_key_r[7]_i_3_n_0\,
      I5 => \btn_key_r[15]_i_5_n_0\,
      O => \btn_key_r[7]_i_1_n_0\
    );
\btn_key_r[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => btn_key_row(1),
      I1 => btn_key_row(0),
      I2 => btn_key_row(2),
      I3 => btn_key_row(3),
      O => p_0_in8_in
    );
\btn_key_r[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \btn_key_r[5]_i_2_n_0\,
      I1 => \btn_key_r[7]_i_4_n_0\,
      I2 => \btn_key_r[7]_i_5_n_0\,
      O => \btn_key_r[7]_i_3_n_0\
    );
\btn_key_r[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC0800000008000"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      I5 => p_1_in9_in,
      O => \btn_key_r[7]_i_4_n_0\
    );
\btn_key_r[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC0800000008000"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => btn_key_row(3),
      I2 => btn_key_row(2),
      I3 => btn_key_row(1),
      I4 => btn_key_row(0),
      I5 => p_1_in10_in,
      O => \btn_key_r[7]_i_5_n_0\
    );
\btn_key_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(8),
      I1 => p_0_in7_in,
      I2 => p_1_in11_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[8]_i_2_n_0\,
      O => \btn_key_r[8]_i_1_n_0\
    );
\btn_key_r[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60000000"
    )
        port map (
      I0 => btn_key_row(1),
      I1 => btn_key_row(0),
      I2 => btn_key_row(2),
      I3 => btn_key_row(3),
      I4 => p_1_in11_in,
      O => \btn_key_r[8]_i_2_n_0\
    );
\btn_key_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0000C0AA"
    )
        port map (
      I0 => btn_key_r(9),
      I1 => p_0_in7_in,
      I2 => p_1_in10_in,
      I3 => \btn_key_r[15]_i_5_n_0\,
      I4 => \btn_key_r[15]_i_3_n_0\,
      I5 => \btn_key_r[9]_i_2_n_0\,
      O => \btn_key_r[9]_i_1_n_0\
    );
\btn_key_r[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6880688060000000"
    )
        port map (
      I0 => btn_key_row(1),
      I1 => btn_key_row(0),
      I2 => btn_key_row(2),
      I3 => btn_key_row(3),
      I4 => p_1_in10_in,
      I5 => p_1_in11_in,
      O => \btn_key_r[9]_i_2_n_0\
    );
\btn_key_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[0]_i_1_n_0\,
      Q => btn_key_r(0),
      R => '0'
    );
\btn_key_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[10]_i_1_n_0\,
      Q => btn_key_r(10),
      R => '0'
    );
\btn_key_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[11]_i_1_n_0\,
      Q => btn_key_r(11),
      R => '0'
    );
\btn_key_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[12]_i_1_n_0\,
      Q => btn_key_r(12),
      R => '0'
    );
\btn_key_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[13]_i_1_n_0\,
      Q => btn_key_r(13),
      R => '0'
    );
\btn_key_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[14]_i_1_n_0\,
      Q => btn_key_r(14),
      R => '0'
    );
\btn_key_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[15]_i_1_n_0\,
      Q => btn_key_r(15),
      R => '0'
    );
\btn_key_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[1]_i_1_n_0\,
      Q => btn_key_r(1),
      R => '0'
    );
\btn_key_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[2]_i_1_n_0\,
      Q => btn_key_r(2),
      R => '0'
    );
\btn_key_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[3]_i_1_n_0\,
      Q => btn_key_r(3),
      R => '0'
    );
\btn_key_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[4]_i_1_n_0\,
      Q => btn_key_r(4),
      R => '0'
    );
\btn_key_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[5]_i_1_n_0\,
      Q => btn_key_r(5),
      R => '0'
    );
\btn_key_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[6]_i_1_n_0\,
      Q => btn_key_r(6),
      R => '0'
    );
\btn_key_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[7]_i_1_n_0\,
      Q => btn_key_r(7),
      R => '0'
    );
\btn_key_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[8]_i_1_n_0\,
      Q => btn_key_r(8),
      R => '0'
    );
\btn_key_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \btn_key_r[9]_i_1_n_0\,
      Q => btn_key_r(9),
      R => '0'
    );
btn_step0_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => btn_step(0),
      I1 => step0_sample,
      I2 => btn_step0_r,
      O => btn_step0_r_i_1_n_0
    );
btn_step0_r_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => btn_step0_r_i_1_n_0,
      Q => btn_step0_r,
      S => s_wready_i_1_n_0
    );
btn_step1_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => btn_step(1),
      I1 => step1_sample,
      I2 => btn_step1_r,
      O => btn_step1_r_i_1_n_0
    );
btn_step1_r_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => btn_step1_r_i_1_n_0,
      Q => btn_step1_r,
      S => s_wready_i_1_n_0
    );
\buf_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(0),
      I1 => s_awaddr(0),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(0)
    );
\buf_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(10),
      I1 => s_awaddr(10),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(10)
    );
\buf_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(11),
      I1 => s_awaddr(11),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(11)
    );
\buf_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(12),
      I1 => s_awaddr(12),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(12)
    );
\buf_addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(13),
      I1 => s_awaddr(13),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(13)
    );
\buf_addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(14),
      I1 => s_awaddr(14),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(14)
    );
\buf_addr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(15),
      I1 => s_awaddr(15),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(15)
    );
\buf_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(1),
      I1 => s_awaddr(1),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(1)
    );
\buf_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(2),
      I1 => s_awaddr(2),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(2)
    );
\buf_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(3),
      I1 => s_awaddr(3),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(3)
    );
\buf_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(4),
      I1 => s_awaddr(4),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(4)
    );
\buf_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(5),
      I1 => s_awaddr(5),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(5)
    );
\buf_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(6),
      I1 => s_awaddr(6),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(6)
    );
\buf_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(7),
      I1 => s_awaddr(7),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(7)
    );
\buf_addr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(8),
      I1 => s_awaddr(8),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(8)
    );
\buf_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACACAC"
    )
        port map (
      I0 => s_araddr(9),
      I1 => s_awaddr(9),
      I2 => s_arvalid,
      I3 => R_or_W,
      I4 => s_awvalid,
      O => p_1_in(9)
    );
\buf_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(0),
      Q => \buf_addr_reg_n_0_[0]\,
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(10),
      Q => p_1_in_0(8),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(11),
      Q => p_1_in_0(9),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(12),
      Q => p_1_in_0(10),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(13),
      Q => p_1_in_0(11),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(14),
      Q => p_1_in_0(12),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(15),
      Q => p_1_in_0(13),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(1),
      Q => \buf_addr_reg_n_0_[1]\,
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(2),
      Q => p_1_in_0(0),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(3),
      Q => p_1_in_0(1),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(4),
      Q => p_1_in_0(2),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(5),
      Q => p_1_in_0(3),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(6),
      Q => p_1_in_0(4),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(7),
      Q => p_1_in_0(5),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(8),
      Q => p_1_in_0(6),
      R => s_wready_i_1_n_0
    );
\buf_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => p_1_in(9),
      Q => p_1_in_0(7),
      R => s_wready_i_1_n_0
    );
\buf_id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(0),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(0),
      O => \buf_id[0]_i_1_n_0\
    );
\buf_id[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(1),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(1),
      O => \buf_id[1]_i_1_n_0\
    );
\buf_id[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(2),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(2),
      O => \buf_id[2]_i_1_n_0\
    );
\buf_id[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(3),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(3),
      O => \buf_id[3]_i_1_n_0\
    );
\buf_id[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(4),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(4),
      O => \buf_id[4]_i_1_n_0\
    );
\buf_id[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => s_arvalid,
      I1 => busy,
      I2 => s_awvalid,
      O => busy01_out
    );
\buf_id[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_arid(5),
      I1 => s_arvalid,
      I2 => R_or_W,
      I3 => s_awvalid,
      I4 => s_awid(5),
      O => \buf_id[5]_i_2_n_0\
    );
\buf_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[0]_i_1_n_0\,
      Q => s_rid(0),
      R => s_wready_i_1_n_0
    );
\buf_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[1]_i_1_n_0\,
      Q => s_rid(1),
      R => s_wready_i_1_n_0
    );
\buf_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[2]_i_1_n_0\,
      Q => s_rid(2),
      R => s_wready_i_1_n_0
    );
\buf_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[3]_i_1_n_0\,
      Q => s_rid(3),
      R => s_wready_i_1_n_0
    );
\buf_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[4]_i_1_n_0\,
      Q => s_rid(4),
      R => s_wready_i_1_n_0
    );
\buf_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => busy01_out,
      D => \buf_id[5]_i_2_n_0\,
      Q => s_rid(5),
      R => s_wready_i_1_n_0
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232323232FEFEFE"
    )
        port map (
      I0 => s_arvalid,
      I1 => busy,
      I2 => s_awvalid,
      I3 => \^s_bvalid\,
      I4 => s_bready,
      I5 => \r_retire__1\,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_rvalid_reg_0\,
      I1 => s_rready,
      I2 => \^s_rlast_reg_0\,
      O => \r_retire__1\
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy,
      R => s_wready_i_1_n_0
    );
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => s_wready_i_1_n_0
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => \count_reg_n_0_[10]\,
      R => s_wready_i_1_n_0
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => \count_reg_n_0_[11]\,
      R => s_wready_i_1_n_0
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => \count_reg_n_0_[12]\,
      R => s_wready_i_1_n_0
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count_reg_n_0_[15]\,
      S(2) => \count_reg_n_0_[14]\,
      S(1) => \count_reg_n_0_[13]\,
      S(0) => \count_reg_n_0_[12]\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => \count_reg_n_0_[13]\,
      R => s_wready_i_1_n_0
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => \count_reg_n_0_[14]\,
      R => s_wready_i_1_n_0
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => \count_reg_n_0_[15]\,
      R => s_wready_i_1_n_0
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => \count_reg_n_0_[16]\,
      R => s_wready_i_1_n_0
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 1) => sel0(2 downto 0),
      S(0) => \count_reg_n_0_[16]\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => sel0(0),
      R => s_wready_i_1_n_0
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => sel0(1),
      R => s_wready_i_1_n_0
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => sel0(2),
      R => s_wready_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => s_wready_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => s_wready_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => s_wready_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => s_wready_i_1_n_0
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count_reg_n_0_[7]\,
      S(2) => \count_reg_n_0_[6]\,
      S(1) => \count_reg_n_0_[5]\,
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => \count_reg_n_0_[5]\,
      R => s_wready_i_1_n_0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => \count_reg_n_0_[6]\,
      R => s_wready_i_1_n_0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => \count_reg_n_0_[7]\,
      R => s_wready_i_1_n_0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => \count_reg_n_0_[8]\,
      R => s_wready_i_1_n_0
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count_reg_n_0_[11]\,
      S(2) => \count_reg_n_0_[10]\,
      S(1) => \count_reg_n_0_[9]\,
      S(0) => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => \count_reg_n_0_[9]\,
      R => s_wready_i_1_n_0
    );
\cr00[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(2),
      O => \cr00[31]_i_1_n_0\
    );
\cr00_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr00\(0),
      R => s_wready_i_1_n_0
    );
\cr00_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr00\(10),
      R => s_wready_i_1_n_0
    );
\cr00_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr00\(11),
      R => s_wready_i_1_n_0
    );
\cr00_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr00\(12),
      R => s_wready_i_1_n_0
    );
\cr00_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr00\(13),
      R => s_wready_i_1_n_0
    );
\cr00_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr00\(14),
      R => s_wready_i_1_n_0
    );
\cr00_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr00\(15),
      R => s_wready_i_1_n_0
    );
\cr00_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr00\(16),
      R => s_wready_i_1_n_0
    );
\cr00_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr00\(17),
      R => s_wready_i_1_n_0
    );
\cr00_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr00\(18),
      R => s_wready_i_1_n_0
    );
\cr00_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr00\(19),
      R => s_wready_i_1_n_0
    );
\cr00_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr00\(1),
      R => s_wready_i_1_n_0
    );
\cr00_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr00\(20),
      R => s_wready_i_1_n_0
    );
\cr00_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr00\(21),
      R => s_wready_i_1_n_0
    );
\cr00_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr00\(22),
      R => s_wready_i_1_n_0
    );
\cr00_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr00\(23),
      R => s_wready_i_1_n_0
    );
\cr00_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr00\(24),
      R => s_wready_i_1_n_0
    );
\cr00_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr00\(25),
      R => s_wready_i_1_n_0
    );
\cr00_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr00\(26),
      R => s_wready_i_1_n_0
    );
\cr00_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr00\(27),
      R => s_wready_i_1_n_0
    );
\cr00_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr00\(28),
      R => s_wready_i_1_n_0
    );
\cr00_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr00\(29),
      R => s_wready_i_1_n_0
    );
\cr00_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr00\(2),
      R => s_wready_i_1_n_0
    );
\cr00_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr00\(30),
      R => s_wready_i_1_n_0
    );
\cr00_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr00\(31),
      R => s_wready_i_1_n_0
    );
\cr00_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr00\(3),
      R => s_wready_i_1_n_0
    );
\cr00_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr00\(4),
      R => s_wready_i_1_n_0
    );
\cr00_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr00\(5),
      R => s_wready_i_1_n_0
    );
\cr00_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr00\(6),
      R => s_wready_i_1_n_0
    );
\cr00_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr00\(7),
      R => s_wready_i_1_n_0
    );
\cr00_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr00\(8),
      R => s_wready_i_1_n_0
    );
\cr00_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr00[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr00\(9),
      R => s_wready_i_1_n_0
    );
\cr01[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(2),
      I4 => p_1_in_0(1),
      O => \cr01[31]_i_1_n_0\
    );
\cr01_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr01\(0),
      R => s_wready_i_1_n_0
    );
\cr01_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr01\(10),
      R => s_wready_i_1_n_0
    );
\cr01_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr01\(11),
      R => s_wready_i_1_n_0
    );
\cr01_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr01\(12),
      R => s_wready_i_1_n_0
    );
\cr01_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr01\(13),
      R => s_wready_i_1_n_0
    );
\cr01_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr01\(14),
      R => s_wready_i_1_n_0
    );
\cr01_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr01\(15),
      R => s_wready_i_1_n_0
    );
\cr01_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr01\(16),
      R => s_wready_i_1_n_0
    );
\cr01_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr01\(17),
      R => s_wready_i_1_n_0
    );
\cr01_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr01\(18),
      R => s_wready_i_1_n_0
    );
\cr01_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr01\(19),
      R => s_wready_i_1_n_0
    );
\cr01_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr01\(1),
      R => s_wready_i_1_n_0
    );
\cr01_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr01\(20),
      R => s_wready_i_1_n_0
    );
\cr01_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr01\(21),
      R => s_wready_i_1_n_0
    );
\cr01_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr01\(22),
      R => s_wready_i_1_n_0
    );
\cr01_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr01\(23),
      R => s_wready_i_1_n_0
    );
\cr01_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr01\(24),
      R => s_wready_i_1_n_0
    );
\cr01_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr01\(25),
      R => s_wready_i_1_n_0
    );
\cr01_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr01\(26),
      R => s_wready_i_1_n_0
    );
\cr01_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr01\(27),
      R => s_wready_i_1_n_0
    );
\cr01_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr01\(28),
      R => s_wready_i_1_n_0
    );
\cr01_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr01\(29),
      R => s_wready_i_1_n_0
    );
\cr01_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr01\(2),
      R => s_wready_i_1_n_0
    );
\cr01_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr01\(30),
      R => s_wready_i_1_n_0
    );
\cr01_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr01\(31),
      R => s_wready_i_1_n_0
    );
\cr01_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr01\(3),
      R => s_wready_i_1_n_0
    );
\cr01_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr01\(4),
      R => s_wready_i_1_n_0
    );
\cr01_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr01\(5),
      R => s_wready_i_1_n_0
    );
\cr01_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr01\(6),
      R => s_wready_i_1_n_0
    );
\cr01_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr01\(7),
      R => s_wready_i_1_n_0
    );
\cr01_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr01\(8),
      R => s_wready_i_1_n_0
    );
\cr01_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr01[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr01\(9),
      R => s_wready_i_1_n_0
    );
\cr02[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(2),
      O => \cr02[31]_i_1_n_0\
    );
\cr02_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr02\(0),
      R => s_wready_i_1_n_0
    );
\cr02_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr02\(10),
      R => s_wready_i_1_n_0
    );
\cr02_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr02\(11),
      R => s_wready_i_1_n_0
    );
\cr02_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr02\(12),
      R => s_wready_i_1_n_0
    );
\cr02_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr02\(13),
      R => s_wready_i_1_n_0
    );
\cr02_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr02\(14),
      R => s_wready_i_1_n_0
    );
\cr02_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr02\(15),
      R => s_wready_i_1_n_0
    );
\cr02_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr02\(16),
      R => s_wready_i_1_n_0
    );
\cr02_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr02\(17),
      R => s_wready_i_1_n_0
    );
\cr02_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr02\(18),
      R => s_wready_i_1_n_0
    );
\cr02_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr02\(19),
      R => s_wready_i_1_n_0
    );
\cr02_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr02\(1),
      R => s_wready_i_1_n_0
    );
\cr02_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr02\(20),
      R => s_wready_i_1_n_0
    );
\cr02_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr02\(21),
      R => s_wready_i_1_n_0
    );
\cr02_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr02\(22),
      R => s_wready_i_1_n_0
    );
\cr02_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr02\(23),
      R => s_wready_i_1_n_0
    );
\cr02_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr02\(24),
      R => s_wready_i_1_n_0
    );
\cr02_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr02\(25),
      R => s_wready_i_1_n_0
    );
\cr02_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr02\(26),
      R => s_wready_i_1_n_0
    );
\cr02_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr02\(27),
      R => s_wready_i_1_n_0
    );
\cr02_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr02\(28),
      R => s_wready_i_1_n_0
    );
\cr02_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr02\(29),
      R => s_wready_i_1_n_0
    );
\cr02_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr02\(2),
      R => s_wready_i_1_n_0
    );
\cr02_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr02\(30),
      R => s_wready_i_1_n_0
    );
\cr02_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr02\(31),
      R => s_wready_i_1_n_0
    );
\cr02_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr02\(3),
      R => s_wready_i_1_n_0
    );
\cr02_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr02\(4),
      R => s_wready_i_1_n_0
    );
\cr02_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr02\(5),
      R => s_wready_i_1_n_0
    );
\cr02_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr02\(6),
      R => s_wready_i_1_n_0
    );
\cr02_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr02\(7),
      R => s_wready_i_1_n_0
    );
\cr02_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr02\(8),
      R => s_wready_i_1_n_0
    );
\cr02_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr02[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr02\(9),
      R => s_wready_i_1_n_0
    );
\cr03[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(2),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(1),
      O => \cr03[31]_i_1_n_0\
    );
\cr03_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr03\(0),
      R => s_wready_i_1_n_0
    );
\cr03_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr03\(10),
      R => s_wready_i_1_n_0
    );
\cr03_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr03\(11),
      R => s_wready_i_1_n_0
    );
\cr03_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr03\(12),
      R => s_wready_i_1_n_0
    );
\cr03_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr03\(13),
      R => s_wready_i_1_n_0
    );
\cr03_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr03\(14),
      R => s_wready_i_1_n_0
    );
\cr03_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr03\(15),
      R => s_wready_i_1_n_0
    );
\cr03_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr03\(16),
      R => s_wready_i_1_n_0
    );
\cr03_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr03\(17),
      R => s_wready_i_1_n_0
    );
\cr03_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr03\(18),
      R => s_wready_i_1_n_0
    );
\cr03_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr03\(19),
      R => s_wready_i_1_n_0
    );
\cr03_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr03\(1),
      R => s_wready_i_1_n_0
    );
\cr03_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr03\(20),
      R => s_wready_i_1_n_0
    );
\cr03_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr03\(21),
      R => s_wready_i_1_n_0
    );
\cr03_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr03\(22),
      R => s_wready_i_1_n_0
    );
\cr03_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr03\(23),
      R => s_wready_i_1_n_0
    );
\cr03_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr03\(24),
      R => s_wready_i_1_n_0
    );
\cr03_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr03\(25),
      R => s_wready_i_1_n_0
    );
\cr03_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr03\(26),
      R => s_wready_i_1_n_0
    );
\cr03_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr03\(27),
      R => s_wready_i_1_n_0
    );
\cr03_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr03\(28),
      R => s_wready_i_1_n_0
    );
\cr03_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr03\(29),
      R => s_wready_i_1_n_0
    );
\cr03_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr03\(2),
      R => s_wready_i_1_n_0
    );
\cr03_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr03\(30),
      R => s_wready_i_1_n_0
    );
\cr03_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr03\(31),
      R => s_wready_i_1_n_0
    );
\cr03_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr03\(3),
      R => s_wready_i_1_n_0
    );
\cr03_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr03\(4),
      R => s_wready_i_1_n_0
    );
\cr03_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr03\(5),
      R => s_wready_i_1_n_0
    );
\cr03_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr03\(6),
      R => s_wready_i_1_n_0
    );
\cr03_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr03\(7),
      R => s_wready_i_1_n_0
    );
\cr03_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr03\(8),
      R => s_wready_i_1_n_0
    );
\cr03_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr03[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr03\(9),
      R => s_wready_i_1_n_0
    );
\cr04[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(2),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(1),
      O => \cr04[31]_i_1_n_0\
    );
\cr04_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr04\(0),
      R => s_wready_i_1_n_0
    );
\cr04_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr04\(10),
      R => s_wready_i_1_n_0
    );
\cr04_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr04\(11),
      R => s_wready_i_1_n_0
    );
\cr04_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr04\(12),
      R => s_wready_i_1_n_0
    );
\cr04_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr04\(13),
      R => s_wready_i_1_n_0
    );
\cr04_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr04\(14),
      R => s_wready_i_1_n_0
    );
\cr04_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr04\(15),
      R => s_wready_i_1_n_0
    );
\cr04_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr04\(16),
      R => s_wready_i_1_n_0
    );
\cr04_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr04\(17),
      R => s_wready_i_1_n_0
    );
\cr04_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr04\(18),
      R => s_wready_i_1_n_0
    );
\cr04_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr04\(19),
      R => s_wready_i_1_n_0
    );
\cr04_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr04\(1),
      R => s_wready_i_1_n_0
    );
\cr04_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr04\(20),
      R => s_wready_i_1_n_0
    );
\cr04_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr04\(21),
      R => s_wready_i_1_n_0
    );
\cr04_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr04\(22),
      R => s_wready_i_1_n_0
    );
\cr04_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr04\(23),
      R => s_wready_i_1_n_0
    );
\cr04_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr04\(24),
      R => s_wready_i_1_n_0
    );
\cr04_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr04\(25),
      R => s_wready_i_1_n_0
    );
\cr04_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr04\(26),
      R => s_wready_i_1_n_0
    );
\cr04_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr04\(27),
      R => s_wready_i_1_n_0
    );
\cr04_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr04\(28),
      R => s_wready_i_1_n_0
    );
\cr04_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr04\(29),
      R => s_wready_i_1_n_0
    );
\cr04_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr04\(2),
      R => s_wready_i_1_n_0
    );
\cr04_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr04\(30),
      R => s_wready_i_1_n_0
    );
\cr04_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr04\(31),
      R => s_wready_i_1_n_0
    );
\cr04_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr04\(3),
      R => s_wready_i_1_n_0
    );
\cr04_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr04\(4),
      R => s_wready_i_1_n_0
    );
\cr04_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr04\(5),
      R => s_wready_i_1_n_0
    );
\cr04_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr04\(6),
      R => s_wready_i_1_n_0
    );
\cr04_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr04\(7),
      R => s_wready_i_1_n_0
    );
\cr04_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr04\(8),
      R => s_wready_i_1_n_0
    );
\cr04_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr04[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr04\(9),
      R => s_wready_i_1_n_0
    );
\cr05[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(2),
      O => \cr05[31]_i_1_n_0\
    );
\cr05_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr05\(0),
      R => s_wready_i_1_n_0
    );
\cr05_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr05\(10),
      R => s_wready_i_1_n_0
    );
\cr05_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr05\(11),
      R => s_wready_i_1_n_0
    );
\cr05_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr05\(12),
      R => s_wready_i_1_n_0
    );
\cr05_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr05\(13),
      R => s_wready_i_1_n_0
    );
\cr05_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr05\(14),
      R => s_wready_i_1_n_0
    );
\cr05_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr05\(15),
      R => s_wready_i_1_n_0
    );
\cr05_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr05\(16),
      R => s_wready_i_1_n_0
    );
\cr05_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr05\(17),
      R => s_wready_i_1_n_0
    );
\cr05_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr05\(18),
      R => s_wready_i_1_n_0
    );
\cr05_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr05\(19),
      R => s_wready_i_1_n_0
    );
\cr05_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr05\(1),
      R => s_wready_i_1_n_0
    );
\cr05_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr05\(20),
      R => s_wready_i_1_n_0
    );
\cr05_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr05\(21),
      R => s_wready_i_1_n_0
    );
\cr05_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr05\(22),
      R => s_wready_i_1_n_0
    );
\cr05_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr05\(23),
      R => s_wready_i_1_n_0
    );
\cr05_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr05\(24),
      R => s_wready_i_1_n_0
    );
\cr05_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr05\(25),
      R => s_wready_i_1_n_0
    );
\cr05_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr05\(26),
      R => s_wready_i_1_n_0
    );
\cr05_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr05\(27),
      R => s_wready_i_1_n_0
    );
\cr05_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr05\(28),
      R => s_wready_i_1_n_0
    );
\cr05_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr05\(29),
      R => s_wready_i_1_n_0
    );
\cr05_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr05\(2),
      R => s_wready_i_1_n_0
    );
\cr05_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr05\(30),
      R => s_wready_i_1_n_0
    );
\cr05_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr05\(31),
      R => s_wready_i_1_n_0
    );
\cr05_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr05\(3),
      R => s_wready_i_1_n_0
    );
\cr05_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr05\(4),
      R => s_wready_i_1_n_0
    );
\cr05_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr05\(5),
      R => s_wready_i_1_n_0
    );
\cr05_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr05\(6),
      R => s_wready_i_1_n_0
    );
\cr05_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr05\(7),
      R => s_wready_i_1_n_0
    );
\cr05_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr05\(8),
      R => s_wready_i_1_n_0
    );
\cr05_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr05[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr05\(9),
      R => s_wready_i_1_n_0
    );
\cr06[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(2),
      I4 => p_1_in_0(1),
      O => \cr06[31]_i_1_n_0\
    );
\cr06_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr06\(0),
      R => s_wready_i_1_n_0
    );
\cr06_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr06\(10),
      R => s_wready_i_1_n_0
    );
\cr06_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr06\(11),
      R => s_wready_i_1_n_0
    );
\cr06_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr06\(12),
      R => s_wready_i_1_n_0
    );
\cr06_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr06\(13),
      R => s_wready_i_1_n_0
    );
\cr06_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr06\(14),
      R => s_wready_i_1_n_0
    );
\cr06_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr06\(15),
      R => s_wready_i_1_n_0
    );
\cr06_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr06\(16),
      R => s_wready_i_1_n_0
    );
\cr06_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr06\(17),
      R => s_wready_i_1_n_0
    );
\cr06_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr06\(18),
      R => s_wready_i_1_n_0
    );
\cr06_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr06\(19),
      R => s_wready_i_1_n_0
    );
\cr06_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr06\(1),
      R => s_wready_i_1_n_0
    );
\cr06_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr06\(20),
      R => s_wready_i_1_n_0
    );
\cr06_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr06\(21),
      R => s_wready_i_1_n_0
    );
\cr06_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr06\(22),
      R => s_wready_i_1_n_0
    );
\cr06_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr06\(23),
      R => s_wready_i_1_n_0
    );
\cr06_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr06\(24),
      R => s_wready_i_1_n_0
    );
\cr06_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr06\(25),
      R => s_wready_i_1_n_0
    );
\cr06_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr06\(26),
      R => s_wready_i_1_n_0
    );
\cr06_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr06\(27),
      R => s_wready_i_1_n_0
    );
\cr06_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr06\(28),
      R => s_wready_i_1_n_0
    );
\cr06_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr06\(29),
      R => s_wready_i_1_n_0
    );
\cr06_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr06\(2),
      R => s_wready_i_1_n_0
    );
\cr06_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr06\(30),
      R => s_wready_i_1_n_0
    );
\cr06_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr06\(31),
      R => s_wready_i_1_n_0
    );
\cr06_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr06\(3),
      R => s_wready_i_1_n_0
    );
\cr06_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr06\(4),
      R => s_wready_i_1_n_0
    );
\cr06_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr06\(5),
      R => s_wready_i_1_n_0
    );
\cr06_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr06\(6),
      R => s_wready_i_1_n_0
    );
\cr06_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr06\(7),
      R => s_wready_i_1_n_0
    );
\cr06_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr06\(8),
      R => s_wready_i_1_n_0
    );
\cr06_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr06[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr06\(9),
      R => s_wready_i_1_n_0
    );
\cr07[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \s_rdata[31]_i_6_n_0\,
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(0),
      I4 => p_1_in_0(2),
      O => \cr07[31]_i_1_n_0\
    );
\cr07_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(0),
      Q => \^cr07\(0),
      R => s_wready_i_1_n_0
    );
\cr07_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(10),
      Q => \^cr07\(10),
      R => s_wready_i_1_n_0
    );
\cr07_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(11),
      Q => \^cr07\(11),
      R => s_wready_i_1_n_0
    );
\cr07_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(12),
      Q => \^cr07\(12),
      R => s_wready_i_1_n_0
    );
\cr07_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(13),
      Q => \^cr07\(13),
      R => s_wready_i_1_n_0
    );
\cr07_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(14),
      Q => \^cr07\(14),
      R => s_wready_i_1_n_0
    );
\cr07_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(15),
      Q => \^cr07\(15),
      R => s_wready_i_1_n_0
    );
\cr07_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(16),
      Q => \^cr07\(16),
      R => s_wready_i_1_n_0
    );
\cr07_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(17),
      Q => \^cr07\(17),
      R => s_wready_i_1_n_0
    );
\cr07_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(18),
      Q => \^cr07\(18),
      R => s_wready_i_1_n_0
    );
\cr07_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(19),
      Q => \^cr07\(19),
      R => s_wready_i_1_n_0
    );
\cr07_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(1),
      Q => \^cr07\(1),
      R => s_wready_i_1_n_0
    );
\cr07_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(20),
      Q => \^cr07\(20),
      R => s_wready_i_1_n_0
    );
\cr07_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(21),
      Q => \^cr07\(21),
      R => s_wready_i_1_n_0
    );
\cr07_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(22),
      Q => \^cr07\(22),
      R => s_wready_i_1_n_0
    );
\cr07_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(23),
      Q => \^cr07\(23),
      R => s_wready_i_1_n_0
    );
\cr07_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(24),
      Q => \^cr07\(24),
      R => s_wready_i_1_n_0
    );
\cr07_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(25),
      Q => \^cr07\(25),
      R => s_wready_i_1_n_0
    );
\cr07_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(26),
      Q => \^cr07\(26),
      R => s_wready_i_1_n_0
    );
\cr07_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(27),
      Q => \^cr07\(27),
      R => s_wready_i_1_n_0
    );
\cr07_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(28),
      Q => \^cr07\(28),
      R => s_wready_i_1_n_0
    );
\cr07_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(29),
      Q => \^cr07\(29),
      R => s_wready_i_1_n_0
    );
\cr07_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(2),
      Q => \^cr07\(2),
      R => s_wready_i_1_n_0
    );
\cr07_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(30),
      Q => \^cr07\(30),
      R => s_wready_i_1_n_0
    );
\cr07_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(31),
      Q => \^cr07\(31),
      R => s_wready_i_1_n_0
    );
\cr07_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(3),
      Q => \^cr07\(3),
      R => s_wready_i_1_n_0
    );
\cr07_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(4),
      Q => \^cr07\(4),
      R => s_wready_i_1_n_0
    );
\cr07_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(5),
      Q => \^cr07\(5),
      R => s_wready_i_1_n_0
    );
\cr07_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(6),
      Q => \^cr07\(6),
      R => s_wready_i_1_n_0
    );
\cr07_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(7),
      Q => \^cr07\(7),
      R => s_wready_i_1_n_0
    );
\cr07_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(8),
      Q => \^cr07\(8),
      R => s_wready_i_1_n_0
    );
\cr07_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cr07[31]_i_1_n_0\,
      D => s_wdata(9),
      Q => \^cr07\(9),
      R => s_wready_i_1_n_0
    );
\key_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => key_flag,
      O => \key_count[0]_i_1_n_0\
    );
\key_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \key_count_reg_n_0_[0]\,
      O => \key_count[0]_i_3_n_0\
    );
\key_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[0]_i_2_n_7\,
      Q => \key_count_reg_n_0_[0]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \key_count_reg[0]_i_2_n_0\,
      CO(2) => \key_count_reg[0]_i_2_n_1\,
      CO(1) => \key_count_reg[0]_i_2_n_2\,
      CO(0) => \key_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \key_count_reg[0]_i_2_n_4\,
      O(2) => \key_count_reg[0]_i_2_n_5\,
      O(1) => \key_count_reg[0]_i_2_n_6\,
      O(0) => \key_count_reg[0]_i_2_n_7\,
      S(3) => \key_count_reg_n_0_[3]\,
      S(2) => \key_count_reg_n_0_[2]\,
      S(1) => \key_count_reg_n_0_[1]\,
      S(0) => \key_count[0]_i_3_n_0\
    );
\key_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[8]_i_1_n_5\,
      Q => \key_count_reg_n_0_[10]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[8]_i_1_n_4\,
      Q => \key_count_reg_n_0_[11]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[12]_i_1_n_7\,
      Q => \key_count_reg_n_0_[12]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \key_count_reg[8]_i_1_n_0\,
      CO(3) => \key_count_reg[12]_i_1_n_0\,
      CO(2) => \key_count_reg[12]_i_1_n_1\,
      CO(1) => \key_count_reg[12]_i_1_n_2\,
      CO(0) => \key_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \key_count_reg[12]_i_1_n_4\,
      O(2) => \key_count_reg[12]_i_1_n_5\,
      O(1) => \key_count_reg[12]_i_1_n_6\,
      O(0) => \key_count_reg[12]_i_1_n_7\,
      S(3) => \key_count_reg_n_0_[15]\,
      S(2) => \key_count_reg_n_0_[14]\,
      S(1) => \key_count_reg_n_0_[13]\,
      S(0) => \key_count_reg_n_0_[12]\
    );
\key_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[12]_i_1_n_6\,
      Q => \key_count_reg_n_0_[13]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[12]_i_1_n_5\,
      Q => \key_count_reg_n_0_[14]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[12]_i_1_n_4\,
      Q => \key_count_reg_n_0_[15]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[16]_i_1_n_7\,
      Q => \key_count_reg_n_0_[16]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \key_count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_key_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \key_count_reg[16]_i_1_n_1\,
      CO(1) => \key_count_reg[16]_i_1_n_2\,
      CO(0) => \key_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \key_count_reg[16]_i_1_n_4\,
      O(2) => \key_count_reg[16]_i_1_n_5\,
      O(1) => \key_count_reg[16]_i_1_n_6\,
      O(0) => \key_count_reg[16]_i_1_n_7\,
      S(3) => key_sample,
      S(2) => \key_count_reg_n_0_[18]\,
      S(1) => \key_count_reg_n_0_[17]\,
      S(0) => \key_count_reg_n_0_[16]\
    );
\key_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[16]_i_1_n_6\,
      Q => \key_count_reg_n_0_[17]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[16]_i_1_n_5\,
      Q => \key_count_reg_n_0_[18]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[16]_i_1_n_4\,
      Q => key_sample,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[0]_i_2_n_6\,
      Q => \key_count_reg_n_0_[1]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[0]_i_2_n_5\,
      Q => \key_count_reg_n_0_[2]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[0]_i_2_n_4\,
      Q => \key_count_reg_n_0_[3]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[4]_i_1_n_7\,
      Q => \key_count_reg_n_0_[4]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \key_count_reg[0]_i_2_n_0\,
      CO(3) => \key_count_reg[4]_i_1_n_0\,
      CO(2) => \key_count_reg[4]_i_1_n_1\,
      CO(1) => \key_count_reg[4]_i_1_n_2\,
      CO(0) => \key_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \key_count_reg[4]_i_1_n_4\,
      O(2) => \key_count_reg[4]_i_1_n_5\,
      O(1) => \key_count_reg[4]_i_1_n_6\,
      O(0) => \key_count_reg[4]_i_1_n_7\,
      S(3) => \key_count_reg_n_0_[7]\,
      S(2) => \key_count_reg_n_0_[6]\,
      S(1) => \key_count_reg_n_0_[5]\,
      S(0) => \key_count_reg_n_0_[4]\
    );
\key_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[4]_i_1_n_6\,
      Q => \key_count_reg_n_0_[5]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[4]_i_1_n_5\,
      Q => \key_count_reg_n_0_[6]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[4]_i_1_n_4\,
      Q => \key_count_reg_n_0_[7]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[8]_i_1_n_7\,
      Q => \key_count_reg_n_0_[8]\,
      R => \key_count[0]_i_1_n_0\
    );
\key_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \key_count_reg[4]_i_1_n_0\,
      CO(3) => \key_count_reg[8]_i_1_n_0\,
      CO(2) => \key_count_reg[8]_i_1_n_1\,
      CO(1) => \key_count_reg[8]_i_1_n_2\,
      CO(0) => \key_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \key_count_reg[8]_i_1_n_4\,
      O(2) => \key_count_reg[8]_i_1_n_5\,
      O(1) => \key_count_reg[8]_i_1_n_6\,
      O(0) => \key_count_reg[8]_i_1_n_7\,
      S(3) => \key_count_reg_n_0_[11]\,
      S(2) => \key_count_reg_n_0_[10]\,
      S(1) => \key_count_reg_n_0_[9]\,
      S(0) => \key_count_reg_n_0_[8]\
    );
\key_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \key_count_reg[8]_i_1_n_6\,
      Q => \key_count_reg_n_0_[9]\,
      R => \key_count[0]_i_1_n_0\
    );
key_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E0E0"
    )
        port map (
      I0 => key_flag,
      I1 => key_flag_i_2_n_0,
      I2 => aresetn,
      I3 => key_sample,
      I4 => p_0_in13_in,
      O => key_flag_i_1_n_0
    );
key_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => btn_key_row(1),
      I2 => btn_key_row(0),
      I3 => btn_key_row(3),
      I4 => btn_key_row(2),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => key_flag_i_2_n_0
    );
key_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => key_flag_i_1_n_0,
      Q => key_flag,
      R => '0'
    );
\led_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \led_data[15]_i_2_n_0\,
      I2 => \led_data[15]_i_3_n_0\,
      I3 => p_1_in_0(12),
      I4 => p_1_in_0(10),
      I5 => \led_data[15]_i_4_n_0\,
      O => write_led
    );
\led_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => p_1_in_0(5),
      I2 => p_1_in_0(2),
      I3 => p_1_in_0(3),
      O => \led_data[15]_i_2_n_0\
    );
\led_data[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_1_in_0(11),
      I1 => p_1_in_0(13),
      O => \led_data[15]_i_3_n_0\
    );
\led_data[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => p_1_in_0(0),
      I2 => p_1_in_0(1),
      I3 => \buf_addr_reg_n_0_[0]\,
      I4 => \led_data[15]_i_5_n_0\,
      O => \led_data[15]_i_4_n_0\
    );
\led_data[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(8),
      I1 => p_1_in_0(9),
      I2 => p_1_in_0(6),
      I3 => p_1_in_0(7),
      O => \led_data[15]_i_5_n_0\
    );
\led_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(0),
      Q => \^led\(0),
      R => s_wready_i_1_n_0
    );
\led_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(10),
      Q => \^led\(10),
      R => s_wready_i_1_n_0
    );
\led_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(11),
      Q => \^led\(11),
      R => s_wready_i_1_n_0
    );
\led_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(12),
      Q => \^led\(12),
      R => s_wready_i_1_n_0
    );
\led_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(13),
      Q => \^led\(13),
      R => s_wready_i_1_n_0
    );
\led_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(14),
      Q => \^led\(14),
      R => s_wready_i_1_n_0
    );
\led_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(15),
      Q => \^led\(15),
      R => s_wready_i_1_n_0
    );
\led_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(16),
      Q => \led_data_reg_n_0_[16]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(17),
      Q => \led_data_reg_n_0_[17]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(18),
      Q => \led_data_reg_n_0_[18]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(19),
      Q => \led_data_reg_n_0_[19]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(1),
      Q => \^led\(1),
      R => s_wready_i_1_n_0
    );
\led_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(20),
      Q => \led_data_reg_n_0_[20]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(21),
      Q => \led_data_reg_n_0_[21]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(22),
      Q => \led_data_reg_n_0_[22]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(23),
      Q => \led_data_reg_n_0_[23]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(24),
      Q => \led_data_reg_n_0_[24]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(25),
      Q => \led_data_reg_n_0_[25]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(26),
      Q => \led_data_reg_n_0_[26]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(27),
      Q => \led_data_reg_n_0_[27]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(28),
      Q => \led_data_reg_n_0_[28]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(29),
      Q => \led_data_reg_n_0_[29]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(2),
      Q => \^led\(2),
      R => s_wready_i_1_n_0
    );
\led_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(30),
      Q => \led_data_reg_n_0_[30]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(31),
      Q => \led_data_reg_n_0_[31]\,
      R => s_wready_i_1_n_0
    );
\led_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(3),
      Q => \^led\(3),
      R => s_wready_i_1_n_0
    );
\led_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(4),
      Q => \^led\(4),
      R => s_wready_i_1_n_0
    );
\led_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(5),
      Q => \^led\(5),
      R => s_wready_i_1_n_0
    );
\led_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(6),
      Q => \^led\(6),
      R => s_wready_i_1_n_0
    );
\led_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(7),
      Q => \^led\(7),
      R => s_wready_i_1_n_0
    );
\led_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(8),
      Q => \^led\(8),
      R => s_wready_i_1_n_0
    );
\led_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led,
      D => s_wdata(9),
      Q => \^led\(9),
      R => s_wready_i_1_n_0
    );
\led_rg0_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \led_rg0_data[1]_i_2_n_0\,
      I2 => \led_data[15]_i_3_n_0\,
      I3 => p_1_in_0(10),
      I4 => p_1_in_0(0),
      I5 => \led_rg0_data[1]_i_3_n_0\,
      O => write_led_rg0
    );
\led_rg0_data[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => p_1_in_0(5),
      I2 => p_1_in_0(12),
      I3 => p_1_in_0(3),
      O => \led_rg0_data[1]_i_2_n_0\
    );
\led_rg0_data[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => p_1_in_0(1),
      I2 => p_1_in_0(2),
      I3 => \buf_addr_reg_n_0_[0]\,
      I4 => \led_data[15]_i_5_n_0\,
      O => \led_rg0_data[1]_i_3_n_0\
    );
\led_rg0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(0),
      Q => \^led_rg0\(0),
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(10),
      Q => \led_rg0_data_reg_n_0_[10]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(11),
      Q => \led_rg0_data_reg_n_0_[11]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(12),
      Q => \led_rg0_data_reg_n_0_[12]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(13),
      Q => \led_rg0_data_reg_n_0_[13]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(14),
      Q => \led_rg0_data_reg_n_0_[14]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(15),
      Q => \led_rg0_data_reg_n_0_[15]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(16),
      Q => \led_rg0_data_reg_n_0_[16]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(17),
      Q => \led_rg0_data_reg_n_0_[17]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(18),
      Q => \led_rg0_data_reg_n_0_[18]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(19),
      Q => \led_rg0_data_reg_n_0_[19]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(1),
      Q => \^led_rg0\(1),
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(20),
      Q => \led_rg0_data_reg_n_0_[20]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(21),
      Q => \led_rg0_data_reg_n_0_[21]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(22),
      Q => \led_rg0_data_reg_n_0_[22]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(23),
      Q => \led_rg0_data_reg_n_0_[23]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(24),
      Q => \led_rg0_data_reg_n_0_[24]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(25),
      Q => \led_rg0_data_reg_n_0_[25]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(26),
      Q => \led_rg0_data_reg_n_0_[26]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(27),
      Q => \led_rg0_data_reg_n_0_[27]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(28),
      Q => \led_rg0_data_reg_n_0_[28]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(29),
      Q => \led_rg0_data_reg_n_0_[29]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(2),
      Q => \led_rg0_data_reg_n_0_[2]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(30),
      Q => \led_rg0_data_reg_n_0_[30]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(31),
      Q => \led_rg0_data_reg_n_0_[31]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(3),
      Q => \led_rg0_data_reg_n_0_[3]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(4),
      Q => \led_rg0_data_reg_n_0_[4]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(5),
      Q => \led_rg0_data_reg_n_0_[5]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(6),
      Q => \led_rg0_data_reg_n_0_[6]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(7),
      Q => \led_rg0_data_reg_n_0_[7]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(8),
      Q => \led_rg0_data_reg_n_0_[8]\,
      R => s_wready_i_1_n_0
    );
\led_rg0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg0,
      D => s_wdata(9),
      Q => \led_rg0_data_reg_n_0_[9]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \led_rg0_data[1]_i_2_n_0\,
      I2 => \led_data[15]_i_3_n_0\,
      I3 => p_1_in_0(1),
      I4 => p_1_in_0(10),
      I5 => \led_rg1_data[1]_i_2_n_0\,
      O => write_led_rg1
    );
\led_rg1_data[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => p_1_in_0(0),
      I2 => p_1_in_0(2),
      I3 => \buf_addr_reg_n_0_[0]\,
      I4 => \led_data[15]_i_5_n_0\,
      O => \led_rg1_data[1]_i_2_n_0\
    );
\led_rg1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(0),
      Q => \^led_rg1\(0),
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(10),
      Q => \led_rg1_data_reg_n_0_[10]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(11),
      Q => \led_rg1_data_reg_n_0_[11]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(12),
      Q => \led_rg1_data_reg_n_0_[12]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(13),
      Q => \led_rg1_data_reg_n_0_[13]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(14),
      Q => \led_rg1_data_reg_n_0_[14]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(15),
      Q => \led_rg1_data_reg_n_0_[15]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(16),
      Q => \led_rg1_data_reg_n_0_[16]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(17),
      Q => \led_rg1_data_reg_n_0_[17]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(18),
      Q => \led_rg1_data_reg_n_0_[18]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(19),
      Q => \led_rg1_data_reg_n_0_[19]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(1),
      Q => \^led_rg1\(1),
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(20),
      Q => \led_rg1_data_reg_n_0_[20]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(21),
      Q => \led_rg1_data_reg_n_0_[21]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(22),
      Q => \led_rg1_data_reg_n_0_[22]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(23),
      Q => \led_rg1_data_reg_n_0_[23]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(24),
      Q => \led_rg1_data_reg_n_0_[24]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(25),
      Q => \led_rg1_data_reg_n_0_[25]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(26),
      Q => \led_rg1_data_reg_n_0_[26]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(27),
      Q => \led_rg1_data_reg_n_0_[27]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(28),
      Q => \led_rg1_data_reg_n_0_[28]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(29),
      Q => \led_rg1_data_reg_n_0_[29]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(2),
      Q => \led_rg1_data_reg_n_0_[2]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(30),
      Q => \led_rg1_data_reg_n_0_[30]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(31),
      Q => \led_rg1_data_reg_n_0_[31]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(3),
      Q => \led_rg1_data_reg_n_0_[3]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(4),
      Q => \led_rg1_data_reg_n_0_[4]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(5),
      Q => \led_rg1_data_reg_n_0_[5]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(6),
      Q => \led_rg1_data_reg_n_0_[6]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(7),
      Q => \led_rg1_data_reg_n_0_[7]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(8),
      Q => \led_rg1_data_reg_n_0_[8]\,
      R => s_wready_i_1_n_0
    );
\led_rg1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_led_rg1,
      D => s_wdata(9),
      Q => \led_rg1_data_reg_n_0_[9]\,
      R => s_wready_i_1_n_0
    );
\num_a_g[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFDA"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(0),
      I2 => scan_data(2),
      I3 => scan_data(1),
      O => num_a_g_1(0)
    );
\num_a_g[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE6F"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(2),
      I2 => scan_data(0),
      I3 => scan_data(1),
      O => num_a_g_1(1)
    );
\num_a_g[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8EF"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(1),
      I2 => scan_data(2),
      I3 => scan_data(0),
      O => num_a_g_1(2)
    );
\num_a_g[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EDB"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(2),
      I2 => scan_data(1),
      I3 => scan_data(0),
      O => num_a_g_1(3)
    );
\num_a_g[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F67"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(2),
      I2 => scan_data(1),
      I3 => scan_data(0),
      O => num_a_g_1(4)
    );
\num_a_g[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"497F"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(0),
      I2 => scan_data(1),
      I3 => scan_data(2),
      O => num_a_g_1(5)
    );
\num_a_g[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D6FB"
    )
        port map (
      I0 => scan_data(3),
      I1 => scan_data(2),
      I2 => scan_data(1),
      I3 => scan_data(0),
      O => num_a_g_1(6)
    );
\num_a_g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(0),
      Q => num_a_g(0),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(1),
      Q => num_a_g(1),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(2),
      Q => num_a_g(2),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(3),
      Q => num_a_g(3),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(4),
      Q => num_a_g(4),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(5),
      Q => num_a_g(5),
      R => s_wready_i_1_n_0
    );
\num_a_g_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => num_a_g_1(6),
      Q => num_a_g(6),
      R => s_wready_i_1_n_0
    );
\num_csn[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \num_csn[0]_i_1_n_0\
    );
\num_csn[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      O => \num_csn[1]_i_1_n_0\
    );
\num_csn[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \num_csn[2]_i_1_n_0\
    );
\num_csn[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \num_csn[3]_i_1_n_0\
    );
\num_csn[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \num_csn[4]_i_1_n_0\
    );
\num_csn[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \num_csn[5]_i_1_n_0\
    );
\num_csn[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      O => \num_csn[6]_i_1_n_0\
    );
\num_csn[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      O => \num_csn[7]_i_1_n_0\
    );
\num_csn_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[0]_i_1_n_0\,
      Q => num_csn(0),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[1]_i_1_n_0\,
      Q => num_csn(1),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[2]_i_1_n_0\,
      Q => num_csn(2),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[3]_i_1_n_0\,
      Q => num_csn(3),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[4]_i_1_n_0\,
      Q => num_csn(4),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[5]_i_1_n_0\,
      Q => num_csn(5),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[6]_i_1_n_0\,
      Q => num_csn(6),
      S => s_wready_i_1_n_0
    );
\num_csn_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \num_csn[7]_i_1_n_0\,
      Q => num_csn(7),
      S => s_wready_i_1_n_0
    );
\num_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => p_17_in,
      I1 => \led_rg0_data[1]_i_2_n_0\,
      I2 => \led_data[15]_i_3_n_0\,
      I3 => p_1_in_0(2),
      I4 => p_1_in_0(10),
      I5 => \led_data[15]_i_4_n_0\,
      O => write_num
    );
\num_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(0),
      Q => \num_data_reg_n_0_[0]\,
      R => s_wready_i_1_n_0
    );
\num_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(10),
      Q => data5(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(11),
      Q => data5(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(12),
      Q => data4(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(13),
      Q => data4(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(14),
      Q => data4(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(15),
      Q => data4(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(16),
      Q => data3(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(17),
      Q => data3(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(18),
      Q => data3(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(19),
      Q => data3(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(1),
      Q => \num_data_reg_n_0_[1]\,
      R => s_wready_i_1_n_0
    );
\num_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(20),
      Q => data2(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(21),
      Q => data2(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(22),
      Q => data2(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(23),
      Q => data2(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(24),
      Q => data1(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(25),
      Q => data1(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(26),
      Q => data1(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(27),
      Q => data1(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(28),
      Q => data0(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(29),
      Q => data0(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(2),
      Q => \num_data_reg_n_0_[2]\,
      R => s_wready_i_1_n_0
    );
\num_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(30),
      Q => data0(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(31),
      Q => data0(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(3),
      Q => \num_data_reg_n_0_[3]\,
      R => s_wready_i_1_n_0
    );
\num_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(4),
      Q => data6(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(5),
      Q => data6(1),
      R => s_wready_i_1_n_0
    );
\num_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(6),
      Q => data6(2),
      R => s_wready_i_1_n_0
    );
\num_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(7),
      Q => data6(3),
      R => s_wready_i_1_n_0
    );
\num_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(8),
      Q => data5(0),
      R => s_wready_i_1_n_0
    );
\num_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_num,
      D => s_wdata(9),
      Q => data5(1),
      R => s_wready_i_1_n_0
    );
\order_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => s_wdata(2),
      I1 => write_order_reg,
      I2 => write_dma_end,
      I3 => \^order_addr_reg\(2),
      O => \order_addr_reg[2]_i_1_n_0\
    );
\order_addr_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => p_17_in,
      I1 => \order_addr_reg[31]_i_3_n_0\,
      I2 => \order_addr_reg[31]_i_4_n_0\,
      I3 => p_1_in_0(7),
      I4 => \buf_addr_reg_n_0_[0]\,
      I5 => \order_addr_reg[31]_i_5_n_0\,
      O => write_order_reg
    );
\order_addr_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_wvalid,
      I1 => \^s_wready_reg_0\,
      I2 => s_wlast,
      O => p_17_in
    );
\order_addr_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_1_in_0(0),
      I1 => p_1_in_0(2),
      I2 => p_1_in_0(5),
      I3 => \buf_addr_reg_n_0_[1]\,
      I4 => \order_addr_reg[31]_i_6_n_0\,
      O => \order_addr_reg[31]_i_3_n_0\
    );
\order_addr_reg[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(13),
      I1 => p_1_in_0(12),
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(11),
      O => \order_addr_reg[31]_i_4_n_0\
    );
\order_addr_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in_0(9),
      I1 => p_1_in_0(8),
      O => \order_addr_reg[31]_i_5_n_0\
    );
\order_addr_reg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => p_1_in_0(10),
      I2 => p_1_in_0(6),
      I3 => p_1_in_0(4),
      O => \order_addr_reg[31]_i_6_n_0\
    );
\order_addr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => s_wdata(3),
      I1 => write_order_reg,
      I2 => finish_read_order,
      I3 => \^order_addr_reg\(3),
      O => \order_addr_reg[3]_i_1_n_0\
    );
\order_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(0),
      Q => \^order_addr_reg\(0),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(10),
      Q => \^order_addr_reg\(10),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(11),
      Q => \^order_addr_reg\(11),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(12),
      Q => \^order_addr_reg\(12),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(13),
      Q => \^order_addr_reg\(13),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(14),
      Q => \^order_addr_reg\(14),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(15),
      Q => \^order_addr_reg\(15),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(16),
      Q => \^order_addr_reg\(16),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(17),
      Q => \^order_addr_reg\(17),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(18),
      Q => \^order_addr_reg\(18),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(19),
      Q => \^order_addr_reg\(19),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(1),
      Q => \^order_addr_reg\(1),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(20),
      Q => \^order_addr_reg\(20),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(21),
      Q => \^order_addr_reg\(21),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(22),
      Q => \^order_addr_reg\(22),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(23),
      Q => \^order_addr_reg\(23),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(24),
      Q => \^order_addr_reg\(24),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(25),
      Q => \^order_addr_reg\(25),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(26),
      Q => \^order_addr_reg\(26),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(27),
      Q => \^order_addr_reg\(27),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(28),
      Q => \^order_addr_reg\(28),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(29),
      Q => \^order_addr_reg\(29),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \order_addr_reg[2]_i_1_n_0\,
      Q => \^order_addr_reg\(2),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(30),
      Q => \^order_addr_reg\(30),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(31),
      Q => \^order_addr_reg\(31),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \order_addr_reg[3]_i_1_n_0\,
      Q => \^order_addr_reg\(3),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(4),
      Q => \^order_addr_reg\(4),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(5),
      Q => \^order_addr_reg\(5),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(6),
      Q => \^order_addr_reg\(6),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(7),
      Q => \^order_addr_reg\(7),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(8),
      Q => \^order_addr_reg\(8),
      R => s_wready_i_1_n_0
    );
\order_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => write_order_reg,
      D => s_wdata(9),
      Q => \^order_addr_reg\(9),
      R => s_wready_i_1_n_0
    );
s_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_awvalid,
      I1 => R_or_W,
      I2 => busy,
      O => s_arready
    );
s_awready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => s_arvalid,
      I1 => R_or_W,
      I2 => busy,
      O => s_awready
    );
s_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => s_wlast,
      I1 => \^s_wready_reg_0\,
      I2 => s_wvalid,
      I3 => s_bready,
      I4 => \^s_bvalid\,
      O => s_bvalid_i_1_n_0
    );
s_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_bvalid_i_1_n_0,
      Q => \^s_bvalid\,
      R => s_wready_i_1_n_0
    );
\s_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[0]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[0]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[0]_i_4_n_0\,
      O => \s_rdata[0]_i_1_n_0\
    );
\s_rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(0),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[0]_i_2_n_0\
    );
\s_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^led_rg1\(0),
      I1 => \^led_rg0\(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(0),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(0),
      O => \s_rdata[0]_i_5_n_0\
    );
\s_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => btn_step1_r,
      I1 => btn_key_r(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => switch(0),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \num_data_reg_n_0_[0]\,
      O => \s_rdata[0]_i_6_n_0\
    );
\s_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(0),
      I1 => \^cr02\(0),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(0),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(0),
      O => \s_rdata[0]_i_7_n_0\
    );
\s_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(0),
      I1 => \^cr06\(0),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(0),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(0),
      O => \s_rdata[0]_i_8_n_0\
    );
\s_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[10]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[10]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[10]_i_4_n_0\,
      O => \s_rdata[10]_i_1_n_0\
    );
\s_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(10),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[10]_i_2_n_0\
    );
\s_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[10]\,
      I1 => \led_rg0_data_reg_n_0_[10]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(10),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(10),
      O => \s_rdata[10]_i_5_n_0\
    );
\s_rdata[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(10),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data5(2),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[10]_i_6_n_0\
    );
\s_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(10),
      I1 => \^cr02\(10),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(10),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(10),
      O => \s_rdata[10]_i_7_n_0\
    );
\s_rdata[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(10),
      I1 => \^cr06\(10),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(10),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(10),
      O => \s_rdata[10]_i_8_n_0\
    );
\s_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[11]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[11]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[11]_i_4_n_0\,
      O => \s_rdata[11]_i_1_n_0\
    );
\s_rdata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(11),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[11]_i_2_n_0\
    );
\s_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[11]\,
      I1 => \led_rg0_data_reg_n_0_[11]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(11),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(11),
      O => \s_rdata[11]_i_5_n_0\
    );
\s_rdata[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(11),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data5(3),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[11]_i_6_n_0\
    );
\s_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(11),
      I1 => \^cr02\(11),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(11),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(11),
      O => \s_rdata[11]_i_7_n_0\
    );
\s_rdata[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(11),
      I1 => \^cr06\(11),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(11),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(11),
      O => \s_rdata[11]_i_8_n_0\
    );
\s_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[12]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[12]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[12]_i_4_n_0\,
      O => \s_rdata[12]_i_1_n_0\
    );
\s_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(12),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[12]_i_2_n_0\
    );
\s_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[12]\,
      I1 => \led_rg0_data_reg_n_0_[12]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(12),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(12),
      O => \s_rdata[12]_i_5_n_0\
    );
\s_rdata[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(12),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data4(0),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[12]_i_6_n_0\
    );
\s_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(12),
      I1 => \^cr02\(12),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(12),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(12),
      O => \s_rdata[12]_i_7_n_0\
    );
\s_rdata[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(12),
      I1 => \^cr06\(12),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(12),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(12),
      O => \s_rdata[12]_i_8_n_0\
    );
\s_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[13]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[13]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[13]_i_4_n_0\,
      O => \s_rdata[13]_i_1_n_0\
    );
\s_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(13),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[13]_i_2_n_0\
    );
\s_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[13]\,
      I1 => \led_rg0_data_reg_n_0_[13]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(13),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(13),
      O => \s_rdata[13]_i_5_n_0\
    );
\s_rdata[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(13),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data4(1),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[13]_i_6_n_0\
    );
\s_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(13),
      I1 => \^cr02\(13),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(13),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(13),
      O => \s_rdata[13]_i_7_n_0\
    );
\s_rdata[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(13),
      I1 => \^cr06\(13),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(13),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(13),
      O => \s_rdata[13]_i_8_n_0\
    );
\s_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[14]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[14]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[14]_i_4_n_0\,
      O => \s_rdata[14]_i_1_n_0\
    );
\s_rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(14),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[14]_i_2_n_0\
    );
\s_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[14]\,
      I1 => \led_rg0_data_reg_n_0_[14]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(14),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(14),
      O => \s_rdata[14]_i_5_n_0\
    );
\s_rdata[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(14),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data4(2),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[14]_i_6_n_0\
    );
\s_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(14),
      I1 => \^cr02\(14),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(14),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(14),
      O => \s_rdata[14]_i_7_n_0\
    );
\s_rdata[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(14),
      I1 => \^cr06\(14),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(14),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(14),
      O => \s_rdata[14]_i_8_n_0\
    );
\s_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[15]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[15]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[15]_i_4_n_0\,
      O => \s_rdata[15]_i_1_n_0\
    );
\s_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(15),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[15]_i_2_n_0\
    );
\s_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[15]\,
      I1 => \led_rg0_data_reg_n_0_[15]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(15),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(15),
      O => \s_rdata[15]_i_5_n_0\
    );
\s_rdata[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(15),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data4(3),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[15]_i_6_n_0\
    );
\s_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(15),
      I1 => \^cr02\(15),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(15),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(15),
      O => \s_rdata[15]_i_7_n_0\
    );
\s_rdata[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(15),
      I1 => \^cr06\(15),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(15),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(15),
      O => \s_rdata[15]_i_8_n_0\
    );
\s_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[16]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[16]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[16]_i_4_n_0\,
      O => \s_rdata[16]_i_1_n_0\
    );
\s_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(16),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[16]_i_2_n_0\
    );
\s_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[16]\,
      I1 => \led_rg0_data_reg_n_0_[16]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[16]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(16),
      O => \s_rdata[16]_i_5_n_0\
    );
\s_rdata[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data3(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[16]_i_6_n_0\
    );
\s_rdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(16),
      I1 => \^cr02\(16),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(16),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(16),
      O => \s_rdata[16]_i_7_n_0\
    );
\s_rdata[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(16),
      I1 => \^cr06\(16),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(16),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(16),
      O => \s_rdata[16]_i_8_n_0\
    );
\s_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[17]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[17]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[17]_i_4_n_0\,
      O => \s_rdata[17]_i_1_n_0\
    );
\s_rdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(17),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[17]_i_2_n_0\
    );
\s_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[17]\,
      I1 => \led_rg0_data_reg_n_0_[17]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[17]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(17),
      O => \s_rdata[17]_i_5_n_0\
    );
\s_rdata[17]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data3(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[17]_i_6_n_0\
    );
\s_rdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(17),
      I1 => \^cr02\(17),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(17),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(17),
      O => \s_rdata[17]_i_7_n_0\
    );
\s_rdata[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(17),
      I1 => \^cr06\(17),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(17),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(17),
      O => \s_rdata[17]_i_8_n_0\
    );
\s_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[18]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[18]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[18]_i_4_n_0\,
      O => \s_rdata[18]_i_1_n_0\
    );
\s_rdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(18),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[18]_i_2_n_0\
    );
\s_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[18]\,
      I1 => \led_rg0_data_reg_n_0_[18]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[18]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(18),
      O => \s_rdata[18]_i_5_n_0\
    );
\s_rdata[18]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data3(2),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[18]_i_6_n_0\
    );
\s_rdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(18),
      I1 => \^cr02\(18),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(18),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(18),
      O => \s_rdata[18]_i_7_n_0\
    );
\s_rdata[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(18),
      I1 => \^cr06\(18),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(18),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(18),
      O => \s_rdata[18]_i_8_n_0\
    );
\s_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[19]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[19]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[19]_i_4_n_0\,
      O => \s_rdata[19]_i_1_n_0\
    );
\s_rdata[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(19),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[19]_i_2_n_0\
    );
\s_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[19]\,
      I1 => \led_rg0_data_reg_n_0_[19]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[19]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(19),
      O => \s_rdata[19]_i_5_n_0\
    );
\s_rdata[19]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data3(3),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[19]_i_6_n_0\
    );
\s_rdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(19),
      I1 => \^cr02\(19),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(19),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(19),
      O => \s_rdata[19]_i_7_n_0\
    );
\s_rdata[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(19),
      I1 => \^cr06\(19),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(19),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(19),
      O => \s_rdata[19]_i_8_n_0\
    );
\s_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[1]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[1]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[1]_i_4_n_0\,
      O => \s_rdata[1]_i_1_n_0\
    );
\s_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(1),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[1]_i_2_n_0\
    );
\s_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^led_rg1\(1),
      I1 => \^led_rg0\(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(1),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(1),
      O => \s_rdata[1]_i_5_n_0\
    );
\s_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => btn_step0_r,
      I1 => btn_key_r(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => switch(1),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \num_data_reg_n_0_[1]\,
      O => \s_rdata[1]_i_6_n_0\
    );
\s_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(1),
      I1 => \^cr02\(1),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(1),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(1),
      O => \s_rdata[1]_i_7_n_0\
    );
\s_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(1),
      I1 => \^cr06\(1),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(1),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(1),
      O => \s_rdata[1]_i_8_n_0\
    );
\s_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[20]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[20]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[20]_i_4_n_0\,
      O => \s_rdata[20]_i_1_n_0\
    );
\s_rdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(20),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[20]_i_2_n_0\
    );
\s_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[20]\,
      I1 => \led_rg0_data_reg_n_0_[20]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[20]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(20),
      O => \s_rdata[20]_i_5_n_0\
    );
\s_rdata[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data2(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[20]_i_6_n_0\
    );
\s_rdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(20),
      I1 => \^cr02\(20),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(20),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(20),
      O => \s_rdata[20]_i_7_n_0\
    );
\s_rdata[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(20),
      I1 => \^cr06\(20),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(20),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(20),
      O => \s_rdata[20]_i_8_n_0\
    );
\s_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[21]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[21]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[21]_i_4_n_0\,
      O => \s_rdata[21]_i_1_n_0\
    );
\s_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(21),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[21]_i_2_n_0\
    );
\s_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[21]\,
      I1 => \led_rg0_data_reg_n_0_[21]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[21]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(21),
      O => \s_rdata[21]_i_5_n_0\
    );
\s_rdata[21]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data2(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[21]_i_6_n_0\
    );
\s_rdata[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(21),
      I1 => \^cr02\(21),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(21),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(21),
      O => \s_rdata[21]_i_7_n_0\
    );
\s_rdata[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(21),
      I1 => \^cr06\(21),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(21),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(21),
      O => \s_rdata[21]_i_8_n_0\
    );
\s_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[22]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[22]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[22]_i_4_n_0\,
      O => \s_rdata[22]_i_1_n_0\
    );
\s_rdata[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(22),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[22]_i_2_n_0\
    );
\s_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[22]\,
      I1 => \led_rg0_data_reg_n_0_[22]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[22]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(22),
      O => \s_rdata[22]_i_5_n_0\
    );
\s_rdata[22]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data2(2),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[22]_i_6_n_0\
    );
\s_rdata[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(22),
      I1 => \^cr02\(22),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(22),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(22),
      O => \s_rdata[22]_i_7_n_0\
    );
\s_rdata[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(22),
      I1 => \^cr06\(22),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(22),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(22),
      O => \s_rdata[22]_i_8_n_0\
    );
\s_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[23]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[23]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[23]_i_4_n_0\,
      O => \s_rdata[23]_i_1_n_0\
    );
\s_rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(23),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[23]_i_2_n_0\
    );
\s_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[23]\,
      I1 => \led_rg0_data_reg_n_0_[23]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[23]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(23),
      O => \s_rdata[23]_i_5_n_0\
    );
\s_rdata[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data2(3),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[23]_i_6_n_0\
    );
\s_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(23),
      I1 => \^cr02\(23),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(23),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(23),
      O => \s_rdata[23]_i_7_n_0\
    );
\s_rdata[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(23),
      I1 => \^cr06\(23),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(23),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(23),
      O => \s_rdata[23]_i_8_n_0\
    );
\s_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[24]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[24]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[24]_i_4_n_0\,
      O => \s_rdata[24]_i_1_n_0\
    );
\s_rdata[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(24),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[24]_i_2_n_0\
    );
\s_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[24]\,
      I1 => \led_rg0_data_reg_n_0_[24]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[24]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(24),
      O => \s_rdata[24]_i_5_n_0\
    );
\s_rdata[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data1(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[24]_i_6_n_0\
    );
\s_rdata[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(24),
      I1 => \^cr02\(24),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(24),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(24),
      O => \s_rdata[24]_i_7_n_0\
    );
\s_rdata[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(24),
      I1 => \^cr06\(24),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(24),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(24),
      O => \s_rdata[24]_i_8_n_0\
    );
\s_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[25]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[25]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[25]_i_4_n_0\,
      O => \s_rdata[25]_i_1_n_0\
    );
\s_rdata[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(25),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[25]_i_2_n_0\
    );
\s_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[25]\,
      I1 => \led_rg0_data_reg_n_0_[25]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[25]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(25),
      O => \s_rdata[25]_i_5_n_0\
    );
\s_rdata[25]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data1(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[25]_i_6_n_0\
    );
\s_rdata[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(25),
      I1 => \^cr02\(25),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(25),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(25),
      O => \s_rdata[25]_i_7_n_0\
    );
\s_rdata[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(25),
      I1 => \^cr06\(25),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(25),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(25),
      O => \s_rdata[25]_i_8_n_0\
    );
\s_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[26]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[26]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[26]_i_4_n_0\,
      O => \s_rdata[26]_i_1_n_0\
    );
\s_rdata[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(26),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[26]_i_2_n_0\
    );
\s_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[26]\,
      I1 => \led_rg0_data_reg_n_0_[26]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[26]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(26),
      O => \s_rdata[26]_i_5_n_0\
    );
\s_rdata[26]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data1(2),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[26]_i_6_n_0\
    );
\s_rdata[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(26),
      I1 => \^cr02\(26),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(26),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(26),
      O => \s_rdata[26]_i_7_n_0\
    );
\s_rdata[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(26),
      I1 => \^cr06\(26),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(26),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(26),
      O => \s_rdata[26]_i_8_n_0\
    );
\s_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[27]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[27]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[27]_i_4_n_0\,
      O => \s_rdata[27]_i_1_n_0\
    );
\s_rdata[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(27),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[27]_i_2_n_0\
    );
\s_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[27]\,
      I1 => \led_rg0_data_reg_n_0_[27]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[27]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(27),
      O => \s_rdata[27]_i_5_n_0\
    );
\s_rdata[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data1(3),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[27]_i_6_n_0\
    );
\s_rdata[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(27),
      I1 => \^cr02\(27),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(27),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(27),
      O => \s_rdata[27]_i_7_n_0\
    );
\s_rdata[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(27),
      I1 => \^cr06\(27),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(27),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(27),
      O => \s_rdata[27]_i_8_n_0\
    );
\s_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[28]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[28]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[28]_i_4_n_0\,
      O => \s_rdata[28]_i_1_n_0\
    );
\s_rdata[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(28),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[28]_i_2_n_0\
    );
\s_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[28]\,
      I1 => \led_rg0_data_reg_n_0_[28]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[28]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(28),
      O => \s_rdata[28]_i_5_n_0\
    );
\s_rdata[28]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data0(0),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[28]_i_6_n_0\
    );
\s_rdata[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(28),
      I1 => \^cr02\(28),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(28),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(28),
      O => \s_rdata[28]_i_7_n_0\
    );
\s_rdata[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(28),
      I1 => \^cr06\(28),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(28),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(28),
      O => \s_rdata[28]_i_8_n_0\
    );
\s_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[29]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[29]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[29]_i_4_n_0\,
      O => \s_rdata[29]_i_1_n_0\
    );
\s_rdata[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(29),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[29]_i_2_n_0\
    );
\s_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[29]\,
      I1 => \led_rg0_data_reg_n_0_[29]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[29]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(29),
      O => \s_rdata[29]_i_5_n_0\
    );
\s_rdata[29]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data0(1),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[29]_i_6_n_0\
    );
\s_rdata[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(29),
      I1 => \^cr02\(29),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(29),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(29),
      O => \s_rdata[29]_i_7_n_0\
    );
\s_rdata[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(29),
      I1 => \^cr06\(29),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(29),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(29),
      O => \s_rdata[29]_i_8_n_0\
    );
\s_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[2]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[2]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[2]_i_4_n_0\,
      O => \s_rdata[2]_i_1_n_0\
    );
\s_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(2),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[2]_i_2_n_0\
    );
\s_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[2]\,
      I1 => \led_rg0_data_reg_n_0_[2]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(2),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(2),
      O => \s_rdata[2]_i_5_n_0\
    );
\s_rdata[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(2),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(2),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => \num_data_reg_n_0_[2]\,
      O => \s_rdata[2]_i_6_n_0\
    );
\s_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(2),
      I1 => \^cr02\(2),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(2),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(2),
      O => \s_rdata[2]_i_7_n_0\
    );
\s_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(2),
      I1 => \^cr06\(2),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(2),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(2),
      O => \s_rdata[2]_i_8_n_0\
    );
\s_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[30]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[30]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[30]_i_4_n_0\,
      O => \s_rdata[30]_i_1_n_0\
    );
\s_rdata[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(30),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[30]_i_2_n_0\
    );
\s_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[30]\,
      I1 => \led_rg0_data_reg_n_0_[30]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[30]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(30),
      O => \s_rdata[30]_i_5_n_0\
    );
\s_rdata[30]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data0(2),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[30]_i_6_n_0\
    );
\s_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(30),
      I1 => \^cr02\(30),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(30),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(30),
      O => \s_rdata[30]_i_7_n_0\
    );
\s_rdata[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(30),
      I1 => \^cr06\(30),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(30),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(30),
      O => \s_rdata[30]_i_8_n_0\
    );
\s_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0000"
    )
        port map (
      I0 => \^s_rlast_reg_0\,
      I1 => s_rready,
      I2 => \^s_rvalid_reg_0\,
      I3 => write,
      I4 => busy,
      O => \s_rdata[31]_i_1_n_0\
    );
\s_rdata[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \s_rdata[31]_i_28_n_0\,
      I1 => \s_rdata[31]_i_29_n_0\,
      I2 => p_1_in_0(6),
      I3 => p_1_in_0(7),
      I4 => p_1_in_0(12),
      I5 => p_1_in_0(5),
      O => \s_rdata[31]_i_10_n_0\
    );
\s_rdata[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000500000007"
    )
        port map (
      I0 => \s_rdata[31]_i_30_n_0\,
      I1 => p_1_in_0(2),
      I2 => \s_rdata[31]_i_31_n_0\,
      I3 => \s_rdata[31]_i_32_n_0\,
      I4 => \s_rdata[31]_i_33_n_0\,
      I5 => p_1_in_0(1),
      O => \s_rdata[31]_i_11_n_0\
    );
\s_rdata[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_rdata[31]_i_34_n_0\,
      I1 => \s_rdata[31]_i_35_n_0\,
      I2 => p_1_in_0(9),
      I3 => p_1_in_0(7),
      I4 => p_1_in_0(11),
      I5 => p_1_in_0(5),
      O => \s_rdata[31]_i_12_n_0\
    );
\s_rdata[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => p_1_in_0(13),
      I1 => p_1_in_0(12),
      I2 => \s_rdata[31]_i_32_n_0\,
      I3 => p_1_in_0(10),
      I4 => p_1_in_0(11),
      I5 => \order_addr_reg[31]_i_5_n_0\,
      O => \s_rdata[31]_i_13_n_0\
    );
\s_rdata[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in_0(2),
      I1 => p_1_in_0(0),
      O => \s_rdata[31]_i_14_n_0\
    );
\s_rdata[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[31]\,
      I1 => \led_rg0_data_reg_n_0_[31]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \led_data_reg_n_0_[31]\,
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(31),
      O => \s_rdata[31]_i_15_n_0\
    );
\s_rdata[31]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => data0(3),
      I2 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[31]_i_16_n_0\
    );
\s_rdata[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(5),
      I1 => p_1_in_0(6),
      I2 => p_1_in_0(3),
      I3 => p_1_in_0(4),
      O => \s_rdata[31]_i_17_n_0\
    );
\s_rdata[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(9),
      I1 => p_1_in_0(10),
      I2 => p_1_in_0(7),
      I3 => p_1_in_0(8),
      O => \s_rdata[31]_i_18_n_0\
    );
\s_rdata[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(31),
      I1 => \^cr02\(31),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(31),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(31),
      O => \s_rdata[31]_i_19_n_0\
    );
\s_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[31]_i_3_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[31]_i_5_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[31]_i_7_n_0\,
      O => \s_rdata[31]_i_2_n_0\
    );
\s_rdata[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(31),
      I1 => \^cr06\(31),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(31),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(31),
      O => \s_rdata[31]_i_20_n_0\
    );
\s_rdata[31]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => p_1_in_0(0),
      I2 => p_1_in_0(10),
      I3 => p_1_in_0(2),
      O => \s_rdata[31]_i_21_n_0\
    );
\s_rdata[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(1),
      I1 => \buf_addr_reg_n_0_[0]\,
      I2 => p_1_in_0(8),
      I3 => p_1_in_0(9),
      O => \s_rdata[31]_i_22_n_0\
    );
\s_rdata[31]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFF7"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => p_1_in_0(6),
      I2 => p_1_in_0(11),
      I3 => p_1_in_0(12),
      I4 => p_1_in_0(13),
      O => \s_rdata[31]_i_23_n_0\
    );
\s_rdata[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => p_1_in_0(7),
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(3),
      I4 => p_1_in_0(10),
      I5 => p_1_in_0(5),
      O => \s_rdata[31]_i_24_n_0\
    );
\s_rdata[31]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => p_1_in_0(0),
      I1 => p_1_in_0(3),
      I2 => p_1_in_0(4),
      O => \s_rdata[31]_i_25_n_0\
    );
\s_rdata[31]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[0]\,
      I1 => p_1_in_0(5),
      I2 => p_1_in_0(4),
      I3 => \buf_addr_reg_n_0_[1]\,
      O => \s_rdata[31]_i_26_n_0\
    );
\s_rdata[31]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0446"
    )
        port map (
      I0 => p_1_in_0(2),
      I1 => p_1_in_0(3),
      I2 => p_1_in_0(1),
      I3 => p_1_in_0(0),
      O => \s_rdata[31]_i_27_n_0\
    );
\s_rdata[31]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[0]\,
      I1 => p_1_in_0(4),
      I2 => p_1_in_0(9),
      I3 => p_1_in_0(8),
      I4 => \buf_addr_reg_n_0_[1]\,
      I5 => p_1_in_0(2),
      O => \s_rdata[31]_i_28_n_0\
    );
\s_rdata[31]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F77FFFFF"
    )
        port map (
      I0 => p_1_in_0(13),
      I1 => p_1_in_0(10),
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(1),
      I4 => p_1_in_0(11),
      O => \s_rdata[31]_i_29_n_0\
    );
\s_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(31),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[31]_i_3_n_0\
    );
\s_rdata[31]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => p_1_in_0(0),
      I2 => p_1_in_0(1),
      O => \s_rdata[31]_i_30_n_0\
    );
\s_rdata[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => p_1_in_0(10),
      I1 => p_1_in_0(11),
      I2 => p_1_in_0(8),
      I3 => p_1_in_0(9),
      O => \s_rdata[31]_i_31_n_0\
    );
\s_rdata[31]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(6),
      I1 => p_1_in_0(7),
      I2 => p_1_in_0(4),
      I3 => p_1_in_0(5),
      O => \s_rdata[31]_i_32_n_0\
    );
\s_rdata[31]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_1_in_0(12),
      I1 => p_1_in_0(13),
      O => \s_rdata[31]_i_33_n_0\
    );
\s_rdata[31]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => p_1_in_0(6),
      I2 => p_1_in_0(12),
      I3 => p_1_in_0(8),
      I4 => p_1_in_0(4),
      I5 => p_1_in_0(10),
      O => \s_rdata[31]_i_34_n_0\
    );
\s_rdata[31]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in_0(2),
      I1 => p_1_in_0(13),
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(1),
      O => \s_rdata[31]_i_35_n_0\
    );
\s_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEEEFEEEEEE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[0]\,
      I1 => \buf_addr_reg_n_0_[1]\,
      I2 => \s_rdata[31]_i_11_n_0\,
      I3 => \s_rdata[31]_i_12_n_0\,
      I4 => \s_rdata[31]_i_13_n_0\,
      I5 => \s_rdata[31]_i_14_n_0\,
      O => \s_rdata[31]_i_4_n_0\
    );
\s_rdata[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_1_in_0(12),
      I1 => p_1_in_0(11),
      I2 => p_1_in_0(13),
      I3 => \s_rdata[31]_i_17_n_0\,
      I4 => \s_rdata[31]_i_18_n_0\,
      O => \s_rdata[31]_i_6_n_0\
    );
\s_rdata[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_rdata[31]_i_21_n_0\,
      I1 => \s_rdata[31]_i_22_n_0\,
      I2 => \s_rdata[31]_i_23_n_0\,
      I3 => \s_rdata[31]_i_24_n_0\,
      I4 => \s_rdata[31]_i_25_n_0\,
      O => \s_rdata[31]_i_8_n_0\
    );
\s_rdata[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \led_data[15]_i_5_n_0\,
      I1 => \led_data[15]_i_3_n_0\,
      I2 => p_1_in_0(12),
      I3 => p_1_in_0(10),
      I4 => \s_rdata[31]_i_26_n_0\,
      I5 => \s_rdata[31]_i_27_n_0\,
      O => \s_rdata[31]_i_9_n_0\
    );
\s_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[3]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[3]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[3]_i_4_n_0\,
      O => \s_rdata[3]_i_1_n_0\
    );
\s_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(3),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[3]_i_2_n_0\
    );
\s_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[3]\,
      I1 => \led_rg0_data_reg_n_0_[3]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(3),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(3),
      O => \s_rdata[3]_i_5_n_0\
    );
\s_rdata[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(3),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(3),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => \num_data_reg_n_0_[3]\,
      O => \s_rdata[3]_i_6_n_0\
    );
\s_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(3),
      I1 => \^cr02\(3),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(3),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(3),
      O => \s_rdata[3]_i_7_n_0\
    );
\s_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(3),
      I1 => \^cr06\(3),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(3),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(3),
      O => \s_rdata[3]_i_8_n_0\
    );
\s_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[4]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[4]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[4]_i_4_n_0\,
      O => \s_rdata[4]_i_1_n_0\
    );
\s_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(4),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[4]_i_2_n_0\
    );
\s_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[4]\,
      I1 => \led_rg0_data_reg_n_0_[4]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(4),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(4),
      O => \s_rdata[4]_i_5_n_0\
    );
\s_rdata[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(4),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(4),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => data6(0),
      O => \s_rdata[4]_i_6_n_0\
    );
\s_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(4),
      I1 => \^cr02\(4),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(4),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(4),
      O => \s_rdata[4]_i_7_n_0\
    );
\s_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(4),
      I1 => \^cr06\(4),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(4),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(4),
      O => \s_rdata[4]_i_8_n_0\
    );
\s_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[5]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[5]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[5]_i_4_n_0\,
      O => \s_rdata[5]_i_1_n_0\
    );
\s_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(5),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[5]_i_2_n_0\
    );
\s_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[5]\,
      I1 => \led_rg0_data_reg_n_0_[5]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(5),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(5),
      O => \s_rdata[5]_i_5_n_0\
    );
\s_rdata[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(5),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(5),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => data6(1),
      O => \s_rdata[5]_i_6_n_0\
    );
\s_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(5),
      I1 => \^cr02\(5),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(5),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(5),
      O => \s_rdata[5]_i_7_n_0\
    );
\s_rdata[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(5),
      I1 => \^cr06\(5),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(5),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(5),
      O => \s_rdata[5]_i_8_n_0\
    );
\s_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[6]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[6]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[6]_i_4_n_0\,
      O => \s_rdata[6]_i_1_n_0\
    );
\s_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(6),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[6]_i_2_n_0\
    );
\s_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[6]\,
      I1 => \led_rg0_data_reg_n_0_[6]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(6),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(6),
      O => \s_rdata[6]_i_5_n_0\
    );
\s_rdata[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(6),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(6),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => data6(2),
      O => \s_rdata[6]_i_6_n_0\
    );
\s_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(6),
      I1 => \^cr02\(6),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(6),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(6),
      O => \s_rdata[6]_i_7_n_0\
    );
\s_rdata[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(6),
      I1 => \^cr06\(6),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(6),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(6),
      O => \s_rdata[6]_i_8_n_0\
    );
\s_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[7]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[7]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[7]_i_4_n_0\,
      O => \s_rdata[7]_i_1_n_0\
    );
\s_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(7),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[7]_i_2_n_0\
    );
\s_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[7]\,
      I1 => \led_rg0_data_reg_n_0_[7]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(7),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(7),
      O => \s_rdata[7]_i_5_n_0\
    );
\s_rdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => btn_key_r(7),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => switch(7),
      I3 => \s_rdata[31]_i_8_n_0\,
      I4 => data6(3),
      O => \s_rdata[7]_i_6_n_0\
    );
\s_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(7),
      I1 => \^cr02\(7),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(7),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(7),
      O => \s_rdata[7]_i_7_n_0\
    );
\s_rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(7),
      I1 => \^cr06\(7),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(7),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(7),
      O => \s_rdata[7]_i_8_n_0\
    );
\s_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[8]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[8]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[8]_i_4_n_0\,
      O => \s_rdata[8]_i_1_n_0\
    );
\s_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(8),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[8]_i_2_n_0\
    );
\s_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[8]\,
      I1 => \led_rg0_data_reg_n_0_[8]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(8),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(8),
      O => \s_rdata[8]_i_5_n_0\
    );
\s_rdata[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(8),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data5(0),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[8]_i_6_n_0\
    );
\s_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(8),
      I1 => \^cr02\(8),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(8),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(8),
      O => \s_rdata[8]_i_7_n_0\
    );
\s_rdata[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(8),
      I1 => \^cr06\(8),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(8),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(8),
      O => \s_rdata[8]_i_8_n_0\
    );
\s_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_rdata[9]_i_2_n_0\,
      I1 => \s_rdata[31]_i_4_n_0\,
      I2 => \s_rdata_reg[9]_i_3_n_0\,
      I3 => \s_rdata[31]_i_6_n_0\,
      I4 => \s_rdata_reg[9]_i_4_n_0\,
      O => \s_rdata[9]_i_1_n_0\
    );
\s_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_rdata[31]_i_8_n_0\,
      I1 => timer_reg(9),
      I2 => \s_rdata[31]_i_9_n_0\,
      I3 => \s_rdata[31]_i_10_n_0\,
      O => \s_rdata[9]_i_2_n_0\
    );
\s_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_rg1_data_reg_n_0_[9]\,
      I1 => \led_rg0_data_reg_n_0_[9]\,
      I2 => \s_rdata[31]_i_10_n_0\,
      I3 => \^led\(9),
      I4 => \s_rdata[31]_i_8_n_0\,
      I5 => \^order_addr_reg\(9),
      O => \s_rdata[9]_i_5_n_0\
    );
\s_rdata[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => btn_key_r(9),
      I1 => \s_rdata[31]_i_10_n_0\,
      I2 => data5(1),
      I3 => \s_rdata[31]_i_8_n_0\,
      O => \s_rdata[9]_i_6_n_0\
    );
\s_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr03\(9),
      I1 => \^cr02\(9),
      I2 => p_1_in_0(1),
      I3 => \^cr01\(9),
      I4 => p_1_in_0(0),
      I5 => \^cr00\(9),
      O => \s_rdata[9]_i_7_n_0\
    );
\s_rdata[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^cr07\(9),
      I1 => \^cr06\(9),
      I2 => p_1_in_0(1),
      I3 => \^cr05\(9),
      I4 => p_1_in_0(0),
      I5 => \^cr04\(9),
      O => \s_rdata[9]_i_8_n_0\
    );
\s_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[0]_i_1_n_0\,
      Q => s_rdata(0),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[0]_i_5_n_0\,
      I1 => \s_rdata[0]_i_6_n_0\,
      O => \s_rdata_reg[0]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[0]_i_7_n_0\,
      I1 => \s_rdata[0]_i_8_n_0\,
      O => \s_rdata_reg[0]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[10]_i_1_n_0\,
      Q => s_rdata(10),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[10]_i_5_n_0\,
      I1 => \s_rdata[10]_i_6_n_0\,
      O => \s_rdata_reg[10]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[10]_i_7_n_0\,
      I1 => \s_rdata[10]_i_8_n_0\,
      O => \s_rdata_reg[10]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[11]_i_1_n_0\,
      Q => s_rdata(11),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[11]_i_5_n_0\,
      I1 => \s_rdata[11]_i_6_n_0\,
      O => \s_rdata_reg[11]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[11]_i_7_n_0\,
      I1 => \s_rdata[11]_i_8_n_0\,
      O => \s_rdata_reg[11]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[12]_i_1_n_0\,
      Q => s_rdata(12),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[12]_i_5_n_0\,
      I1 => \s_rdata[12]_i_6_n_0\,
      O => \s_rdata_reg[12]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[12]_i_7_n_0\,
      I1 => \s_rdata[12]_i_8_n_0\,
      O => \s_rdata_reg[12]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[13]_i_1_n_0\,
      Q => s_rdata(13),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[13]_i_5_n_0\,
      I1 => \s_rdata[13]_i_6_n_0\,
      O => \s_rdata_reg[13]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[13]_i_7_n_0\,
      I1 => \s_rdata[13]_i_8_n_0\,
      O => \s_rdata_reg[13]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[14]_i_1_n_0\,
      Q => s_rdata(14),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[14]_i_5_n_0\,
      I1 => \s_rdata[14]_i_6_n_0\,
      O => \s_rdata_reg[14]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[14]_i_7_n_0\,
      I1 => \s_rdata[14]_i_8_n_0\,
      O => \s_rdata_reg[14]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[15]_i_1_n_0\,
      Q => s_rdata(15),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[15]_i_5_n_0\,
      I1 => \s_rdata[15]_i_6_n_0\,
      O => \s_rdata_reg[15]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[15]_i_7_n_0\,
      I1 => \s_rdata[15]_i_8_n_0\,
      O => \s_rdata_reg[15]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[16]_i_1_n_0\,
      Q => s_rdata(16),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[16]_i_5_n_0\,
      I1 => \s_rdata[16]_i_6_n_0\,
      O => \s_rdata_reg[16]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[16]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[16]_i_7_n_0\,
      I1 => \s_rdata[16]_i_8_n_0\,
      O => \s_rdata_reg[16]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[17]_i_1_n_0\,
      Q => s_rdata(17),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[17]_i_5_n_0\,
      I1 => \s_rdata[17]_i_6_n_0\,
      O => \s_rdata_reg[17]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[17]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[17]_i_7_n_0\,
      I1 => \s_rdata[17]_i_8_n_0\,
      O => \s_rdata_reg[17]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[18]_i_1_n_0\,
      Q => s_rdata(18),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[18]_i_5_n_0\,
      I1 => \s_rdata[18]_i_6_n_0\,
      O => \s_rdata_reg[18]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[18]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[18]_i_7_n_0\,
      I1 => \s_rdata[18]_i_8_n_0\,
      O => \s_rdata_reg[18]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[19]_i_1_n_0\,
      Q => s_rdata(19),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[19]_i_5_n_0\,
      I1 => \s_rdata[19]_i_6_n_0\,
      O => \s_rdata_reg[19]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[19]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[19]_i_7_n_0\,
      I1 => \s_rdata[19]_i_8_n_0\,
      O => \s_rdata_reg[19]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[1]_i_1_n_0\,
      Q => s_rdata(1),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[1]_i_5_n_0\,
      I1 => \s_rdata[1]_i_6_n_0\,
      O => \s_rdata_reg[1]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[1]_i_7_n_0\,
      I1 => \s_rdata[1]_i_8_n_0\,
      O => \s_rdata_reg[1]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[20]_i_1_n_0\,
      Q => s_rdata(20),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[20]_i_5_n_0\,
      I1 => \s_rdata[20]_i_6_n_0\,
      O => \s_rdata_reg[20]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[20]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[20]_i_7_n_0\,
      I1 => \s_rdata[20]_i_8_n_0\,
      O => \s_rdata_reg[20]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[21]_i_1_n_0\,
      Q => s_rdata(21),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[21]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[21]_i_5_n_0\,
      I1 => \s_rdata[21]_i_6_n_0\,
      O => \s_rdata_reg[21]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[21]_i_7_n_0\,
      I1 => \s_rdata[21]_i_8_n_0\,
      O => \s_rdata_reg[21]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[22]_i_1_n_0\,
      Q => s_rdata(22),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[22]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[22]_i_5_n_0\,
      I1 => \s_rdata[22]_i_6_n_0\,
      O => \s_rdata_reg[22]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[22]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[22]_i_7_n_0\,
      I1 => \s_rdata[22]_i_8_n_0\,
      O => \s_rdata_reg[22]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[23]_i_1_n_0\,
      Q => s_rdata(23),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[23]_i_5_n_0\,
      I1 => \s_rdata[23]_i_6_n_0\,
      O => \s_rdata_reg[23]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[23]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[23]_i_7_n_0\,
      I1 => \s_rdata[23]_i_8_n_0\,
      O => \s_rdata_reg[23]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[24]_i_1_n_0\,
      Q => s_rdata(24),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[24]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[24]_i_5_n_0\,
      I1 => \s_rdata[24]_i_6_n_0\,
      O => \s_rdata_reg[24]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[24]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[24]_i_7_n_0\,
      I1 => \s_rdata[24]_i_8_n_0\,
      O => \s_rdata_reg[24]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[25]_i_1_n_0\,
      Q => s_rdata(25),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[25]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[25]_i_5_n_0\,
      I1 => \s_rdata[25]_i_6_n_0\,
      O => \s_rdata_reg[25]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[25]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[25]_i_7_n_0\,
      I1 => \s_rdata[25]_i_8_n_0\,
      O => \s_rdata_reg[25]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[26]_i_1_n_0\,
      Q => s_rdata(26),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[26]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[26]_i_5_n_0\,
      I1 => \s_rdata[26]_i_6_n_0\,
      O => \s_rdata_reg[26]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[26]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[26]_i_7_n_0\,
      I1 => \s_rdata[26]_i_8_n_0\,
      O => \s_rdata_reg[26]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[27]_i_1_n_0\,
      Q => s_rdata(27),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[27]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[27]_i_5_n_0\,
      I1 => \s_rdata[27]_i_6_n_0\,
      O => \s_rdata_reg[27]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[27]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[27]_i_7_n_0\,
      I1 => \s_rdata[27]_i_8_n_0\,
      O => \s_rdata_reg[27]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[28]_i_1_n_0\,
      Q => s_rdata(28),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[28]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[28]_i_5_n_0\,
      I1 => \s_rdata[28]_i_6_n_0\,
      O => \s_rdata_reg[28]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[28]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[28]_i_7_n_0\,
      I1 => \s_rdata[28]_i_8_n_0\,
      O => \s_rdata_reg[28]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[29]_i_1_n_0\,
      Q => s_rdata(29),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[29]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[29]_i_5_n_0\,
      I1 => \s_rdata[29]_i_6_n_0\,
      O => \s_rdata_reg[29]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[29]_i_7_n_0\,
      I1 => \s_rdata[29]_i_8_n_0\,
      O => \s_rdata_reg[29]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[2]_i_1_n_0\,
      Q => s_rdata(2),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[2]_i_5_n_0\,
      I1 => \s_rdata[2]_i_6_n_0\,
      O => \s_rdata_reg[2]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[2]_i_7_n_0\,
      I1 => \s_rdata[2]_i_8_n_0\,
      O => \s_rdata_reg[2]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[30]_i_1_n_0\,
      Q => s_rdata(30),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[30]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[30]_i_5_n_0\,
      I1 => \s_rdata[30]_i_6_n_0\,
      O => \s_rdata_reg[30]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[30]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[30]_i_7_n_0\,
      I1 => \s_rdata[30]_i_8_n_0\,
      O => \s_rdata_reg[30]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[31]_i_2_n_0\,
      Q => s_rdata(31),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[31]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[31]_i_15_n_0\,
      I1 => \s_rdata[31]_i_16_n_0\,
      O => \s_rdata_reg[31]_i_5_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[31]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[31]_i_19_n_0\,
      I1 => \s_rdata[31]_i_20_n_0\,
      O => \s_rdata_reg[31]_i_7_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[3]_i_1_n_0\,
      Q => s_rdata(3),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[3]_i_5_n_0\,
      I1 => \s_rdata[3]_i_6_n_0\,
      O => \s_rdata_reg[3]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[3]_i_7_n_0\,
      I1 => \s_rdata[3]_i_8_n_0\,
      O => \s_rdata_reg[3]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[4]_i_1_n_0\,
      Q => s_rdata(4),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[4]_i_5_n_0\,
      I1 => \s_rdata[4]_i_6_n_0\,
      O => \s_rdata_reg[4]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[4]_i_7_n_0\,
      I1 => \s_rdata[4]_i_8_n_0\,
      O => \s_rdata_reg[4]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[5]_i_1_n_0\,
      Q => s_rdata(5),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[5]_i_5_n_0\,
      I1 => \s_rdata[5]_i_6_n_0\,
      O => \s_rdata_reg[5]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[5]_i_7_n_0\,
      I1 => \s_rdata[5]_i_8_n_0\,
      O => \s_rdata_reg[5]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[6]_i_1_n_0\,
      Q => s_rdata(6),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[6]_i_5_n_0\,
      I1 => \s_rdata[6]_i_6_n_0\,
      O => \s_rdata_reg[6]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[6]_i_7_n_0\,
      I1 => \s_rdata[6]_i_8_n_0\,
      O => \s_rdata_reg[6]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[7]_i_1_n_0\,
      Q => s_rdata(7),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[7]_i_5_n_0\,
      I1 => \s_rdata[7]_i_6_n_0\,
      O => \s_rdata_reg[7]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[7]_i_7_n_0\,
      I1 => \s_rdata[7]_i_8_n_0\,
      O => \s_rdata_reg[7]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[8]_i_1_n_0\,
      Q => s_rdata(8),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[8]_i_5_n_0\,
      I1 => \s_rdata[8]_i_6_n_0\,
      O => \s_rdata_reg[8]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[8]_i_7_n_0\,
      I1 => \s_rdata[8]_i_8_n_0\,
      O => \s_rdata_reg[8]_i_4_n_0\,
      S => p_1_in_0(2)
    );
\s_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_rdata[31]_i_1_n_0\,
      D => \s_rdata[9]_i_1_n_0\,
      Q => s_rdata(9),
      R => s_wready_i_1_n_0
    );
\s_rdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[9]_i_5_n_0\,
      I1 => \s_rdata[9]_i_6_n_0\,
      O => \s_rdata_reg[9]_i_3_n_0\,
      S => \s_rdata[31]_i_9_n_0\
    );
\s_rdata_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_rdata[9]_i_7_n_0\,
      I1 => \s_rdata[9]_i_8_n_0\,
      O => \s_rdata_reg[9]_i_4_n_0\,
      S => p_1_in_0(2)
    );
s_rlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => write,
      I1 => busy,
      I2 => \^s_rlast_reg_0\,
      O => s_rlast_i_1_n_0
    );
s_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_rlast_i_1_n_0,
      Q => \^s_rlast_reg_0\,
      R => s_wready_i_1_n_0
    );
s_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF4444"
    )
        port map (
      I0 => write,
      I1 => busy,
      I2 => \^s_rlast_reg_0\,
      I3 => s_rready,
      I4 => \^s_rvalid_reg_0\,
      O => s_rvalid_i_1_n_0
    );
s_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_rvalid_i_1_n_0,
      Q => \^s_rvalid_reg_0\,
      R => s_wready_i_1_n_0
    );
s_wready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => s_wready_i_1_n_0
    );
s_wready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => aw_enter,
      I1 => s_wlast,
      I2 => s_wvalid,
      I3 => \^s_wready_reg_0\,
      O => s_wready_i_2_n_0
    );
s_wready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => s_awvalid,
      I1 => busy,
      I2 => R_or_W,
      I3 => s_arvalid,
      O => aw_enter
    );
s_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_wready_i_2_n_0,
      Q => \^s_wready_reg_0\,
      R => s_wready_i_1_n_0
    );
\scan_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => sel0(1),
      I3 => data1(0),
      I4 => sel0(0),
      I5 => data0(0),
      O => \scan_data[0]_i_2_n_0\
    );
\scan_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \num_data_reg_n_0_[0]\,
      I1 => data6(0),
      I2 => sel0(1),
      I3 => data5(0),
      I4 => sel0(0),
      I5 => data4(0),
      O => \scan_data[0]_i_3_n_0\
    );
\scan_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => sel0(1),
      I3 => data1(1),
      I4 => sel0(0),
      I5 => data0(1),
      O => \scan_data[1]_i_2_n_0\
    );
\scan_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \num_data_reg_n_0_[1]\,
      I1 => data6(1),
      I2 => sel0(1),
      I3 => data5(1),
      I4 => sel0(0),
      I5 => data4(1),
      O => \scan_data[1]_i_3_n_0\
    );
\scan_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => sel0(1),
      I3 => data1(2),
      I4 => sel0(0),
      I5 => data0(2),
      O => \scan_data[2]_i_2_n_0\
    );
\scan_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \num_data_reg_n_0_[2]\,
      I1 => data6(2),
      I2 => sel0(1),
      I3 => data5(2),
      I4 => sel0(0),
      I5 => data4(2),
      O => \scan_data[2]_i_3_n_0\
    );
\scan_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => sel0(1),
      I3 => data1(3),
      I4 => sel0(0),
      I5 => data0(3),
      O => \scan_data[3]_i_2_n_0\
    );
\scan_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \num_data_reg_n_0_[3]\,
      I1 => data6(3),
      I2 => sel0(1),
      I3 => data5(3),
      I4 => sel0(0),
      I5 => data4(3),
      O => \scan_data[3]_i_3_n_0\
    );
\scan_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => scan_data_2(0),
      Q => scan_data(0),
      R => s_wready_i_1_n_0
    );
\scan_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scan_data[0]_i_2_n_0\,
      I1 => \scan_data[0]_i_3_n_0\,
      O => scan_data_2(0),
      S => sel0(2)
    );
\scan_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => scan_data_2(1),
      Q => scan_data(1),
      R => s_wready_i_1_n_0
    );
\scan_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scan_data[1]_i_2_n_0\,
      I1 => \scan_data[1]_i_3_n_0\,
      O => scan_data_2(1),
      S => sel0(2)
    );
\scan_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => scan_data_2(2),
      Q => scan_data(2),
      R => s_wready_i_1_n_0
    );
\scan_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scan_data[2]_i_2_n_0\,
      I1 => \scan_data[2]_i_3_n_0\,
      O => scan_data_2(2),
      S => sel0(2)
    );
\scan_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => scan_data_2(3),
      Q => scan_data(3),
      R => s_wready_i_1_n_0
    );
\scan_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \scan_data[3]_i_2_n_0\,
      I1 => \scan_data[3]_i_3_n_0\,
      O => scan_data_2(3),
      S => sel0(2)
    );
\state_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_count_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\state_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state_count_reg_n_0_[0]\,
      I1 => \state_count_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\state_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \state_count_reg_n_0_[0]\,
      I1 => \state_count_reg_n_0_[1]\,
      I2 => \state_count_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\state_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in13_in,
      I1 => aresetn,
      O => \state_count[3]_i_1_n_0\
    );
\state_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \state_count_reg_n_0_[1]\,
      I1 => \state_count_reg_n_0_[0]\,
      I2 => \state_count_reg_n_0_[2]\,
      O => p_0_in(3)
    );
\state_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \state_count_reg_n_0_[0]\,
      R => \state_count[3]_i_1_n_0\
    );
\state_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \state_count_reg_n_0_[1]\,
      R => \state_count[3]_i_1_n_0\
    );
\state_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \state_count_reg_n_0_[2]\,
      R => \state_count[3]_i_1_n_0\
    );
\state_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => p_0_in13_in,
      R => \state_count[3]_i_1_n_0\
    );
\step0_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => step0_flag,
      O => \step0_count[0]_i_1_n_0\
    );
\step0_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \step0_count_reg_n_0_[0]\,
      O => \step0_count[0]_i_3_n_0\
    );
\step0_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[0]_i_2_n_7\,
      Q => \step0_count_reg_n_0_[0]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \step0_count_reg[0]_i_2_n_0\,
      CO(2) => \step0_count_reg[0]_i_2_n_1\,
      CO(1) => \step0_count_reg[0]_i_2_n_2\,
      CO(0) => \step0_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \step0_count_reg[0]_i_2_n_4\,
      O(2) => \step0_count_reg[0]_i_2_n_5\,
      O(1) => \step0_count_reg[0]_i_2_n_6\,
      O(0) => \step0_count_reg[0]_i_2_n_7\,
      S(3) => \step0_count_reg_n_0_[3]\,
      S(2) => \step0_count_reg_n_0_[2]\,
      S(1) => \step0_count_reg_n_0_[1]\,
      S(0) => \step0_count[0]_i_3_n_0\
    );
\step0_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[8]_i_1_n_5\,
      Q => \step0_count_reg_n_0_[10]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[8]_i_1_n_4\,
      Q => \step0_count_reg_n_0_[11]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[12]_i_1_n_7\,
      Q => \step0_count_reg_n_0_[12]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step0_count_reg[8]_i_1_n_0\,
      CO(3) => \step0_count_reg[12]_i_1_n_0\,
      CO(2) => \step0_count_reg[12]_i_1_n_1\,
      CO(1) => \step0_count_reg[12]_i_1_n_2\,
      CO(0) => \step0_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step0_count_reg[12]_i_1_n_4\,
      O(2) => \step0_count_reg[12]_i_1_n_5\,
      O(1) => \step0_count_reg[12]_i_1_n_6\,
      O(0) => \step0_count_reg[12]_i_1_n_7\,
      S(3) => \step0_count_reg_n_0_[15]\,
      S(2) => \step0_count_reg_n_0_[14]\,
      S(1) => \step0_count_reg_n_0_[13]\,
      S(0) => \step0_count_reg_n_0_[12]\
    );
\step0_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[12]_i_1_n_6\,
      Q => \step0_count_reg_n_0_[13]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[12]_i_1_n_5\,
      Q => \step0_count_reg_n_0_[14]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[12]_i_1_n_4\,
      Q => \step0_count_reg_n_0_[15]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[16]_i_1_n_7\,
      Q => \step0_count_reg_n_0_[16]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step0_count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \step0_count_reg[16]_i_1_n_1\,
      CO(1) => \step0_count_reg[16]_i_1_n_2\,
      CO(0) => \step0_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step0_count_reg[16]_i_1_n_4\,
      O(2) => \step0_count_reg[16]_i_1_n_5\,
      O(1) => \step0_count_reg[16]_i_1_n_6\,
      O(0) => \step0_count_reg[16]_i_1_n_7\,
      S(3) => step0_sample,
      S(2) => \step0_count_reg_n_0_[18]\,
      S(1) => \step0_count_reg_n_0_[17]\,
      S(0) => \step0_count_reg_n_0_[16]\
    );
\step0_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[16]_i_1_n_6\,
      Q => \step0_count_reg_n_0_[17]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[16]_i_1_n_5\,
      Q => \step0_count_reg_n_0_[18]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[16]_i_1_n_4\,
      Q => step0_sample,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[0]_i_2_n_6\,
      Q => \step0_count_reg_n_0_[1]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[0]_i_2_n_5\,
      Q => \step0_count_reg_n_0_[2]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[0]_i_2_n_4\,
      Q => \step0_count_reg_n_0_[3]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[4]_i_1_n_7\,
      Q => \step0_count_reg_n_0_[4]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step0_count_reg[0]_i_2_n_0\,
      CO(3) => \step0_count_reg[4]_i_1_n_0\,
      CO(2) => \step0_count_reg[4]_i_1_n_1\,
      CO(1) => \step0_count_reg[4]_i_1_n_2\,
      CO(0) => \step0_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step0_count_reg[4]_i_1_n_4\,
      O(2) => \step0_count_reg[4]_i_1_n_5\,
      O(1) => \step0_count_reg[4]_i_1_n_6\,
      O(0) => \step0_count_reg[4]_i_1_n_7\,
      S(3) => \step0_count_reg_n_0_[7]\,
      S(2) => \step0_count_reg_n_0_[6]\,
      S(1) => \step0_count_reg_n_0_[5]\,
      S(0) => \step0_count_reg_n_0_[4]\
    );
\step0_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[4]_i_1_n_6\,
      Q => \step0_count_reg_n_0_[5]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[4]_i_1_n_5\,
      Q => \step0_count_reg_n_0_[6]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[4]_i_1_n_4\,
      Q => \step0_count_reg_n_0_[7]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[8]_i_1_n_7\,
      Q => \step0_count_reg_n_0_[8]\,
      R => \step0_count[0]_i_1_n_0\
    );
\step0_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step0_count_reg[4]_i_1_n_0\,
      CO(3) => \step0_count_reg[8]_i_1_n_0\,
      CO(2) => \step0_count_reg[8]_i_1_n_1\,
      CO(1) => \step0_count_reg[8]_i_1_n_2\,
      CO(0) => \step0_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step0_count_reg[8]_i_1_n_4\,
      O(2) => \step0_count_reg[8]_i_1_n_5\,
      O(1) => \step0_count_reg[8]_i_1_n_6\,
      O(0) => \step0_count_reg[8]_i_1_n_7\,
      S(3) => \step0_count_reg_n_0_[11]\,
      S(2) => \step0_count_reg_n_0_[10]\,
      S(1) => \step0_count_reg_n_0_[9]\,
      S(0) => \step0_count_reg_n_0_[8]\
    );
\step0_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step0_count_reg[8]_i_1_n_6\,
      Q => \step0_count_reg_n_0_[9]\,
      R => \step0_count[0]_i_1_n_0\
    );
step0_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BE00"
    )
        port map (
      I0 => step0_flag,
      I1 => btn_step(0),
      I2 => btn_step0_r,
      I3 => aresetn,
      I4 => step0_sample,
      O => step0_flag_i_1_n_0
    );
step0_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => step0_flag_i_1_n_0,
      Q => step0_flag,
      R => '0'
    );
\step1_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => step1_flag,
      O => \step1_count[0]_i_1_n_0\
    );
\step1_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \step1_count_reg_n_0_[0]\,
      O => \step1_count[0]_i_3_n_0\
    );
\step1_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[0]_i_2_n_7\,
      Q => \step1_count_reg_n_0_[0]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \step1_count_reg[0]_i_2_n_0\,
      CO(2) => \step1_count_reg[0]_i_2_n_1\,
      CO(1) => \step1_count_reg[0]_i_2_n_2\,
      CO(0) => \step1_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \step1_count_reg[0]_i_2_n_4\,
      O(2) => \step1_count_reg[0]_i_2_n_5\,
      O(1) => \step1_count_reg[0]_i_2_n_6\,
      O(0) => \step1_count_reg[0]_i_2_n_7\,
      S(3) => \step1_count_reg_n_0_[3]\,
      S(2) => \step1_count_reg_n_0_[2]\,
      S(1) => \step1_count_reg_n_0_[1]\,
      S(0) => \step1_count[0]_i_3_n_0\
    );
\step1_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[8]_i_1_n_5\,
      Q => \step1_count_reg_n_0_[10]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[8]_i_1_n_4\,
      Q => \step1_count_reg_n_0_[11]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[12]_i_1_n_7\,
      Q => \step1_count_reg_n_0_[12]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step1_count_reg[8]_i_1_n_0\,
      CO(3) => \step1_count_reg[12]_i_1_n_0\,
      CO(2) => \step1_count_reg[12]_i_1_n_1\,
      CO(1) => \step1_count_reg[12]_i_1_n_2\,
      CO(0) => \step1_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step1_count_reg[12]_i_1_n_4\,
      O(2) => \step1_count_reg[12]_i_1_n_5\,
      O(1) => \step1_count_reg[12]_i_1_n_6\,
      O(0) => \step1_count_reg[12]_i_1_n_7\,
      S(3) => \step1_count_reg_n_0_[15]\,
      S(2) => \step1_count_reg_n_0_[14]\,
      S(1) => \step1_count_reg_n_0_[13]\,
      S(0) => \step1_count_reg_n_0_[12]\
    );
\step1_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[12]_i_1_n_6\,
      Q => \step1_count_reg_n_0_[13]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[12]_i_1_n_5\,
      Q => \step1_count_reg_n_0_[14]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[12]_i_1_n_4\,
      Q => \step1_count_reg_n_0_[15]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[16]_i_1_n_7\,
      Q => \step1_count_reg_n_0_[16]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step1_count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \step1_count_reg[16]_i_1_n_1\,
      CO(1) => \step1_count_reg[16]_i_1_n_2\,
      CO(0) => \step1_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step1_count_reg[16]_i_1_n_4\,
      O(2) => \step1_count_reg[16]_i_1_n_5\,
      O(1) => \step1_count_reg[16]_i_1_n_6\,
      O(0) => \step1_count_reg[16]_i_1_n_7\,
      S(3) => step1_sample,
      S(2) => \step1_count_reg_n_0_[18]\,
      S(1) => \step1_count_reg_n_0_[17]\,
      S(0) => \step1_count_reg_n_0_[16]\
    );
\step1_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[16]_i_1_n_6\,
      Q => \step1_count_reg_n_0_[17]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[16]_i_1_n_5\,
      Q => \step1_count_reg_n_0_[18]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[16]_i_1_n_4\,
      Q => step1_sample,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[0]_i_2_n_6\,
      Q => \step1_count_reg_n_0_[1]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[0]_i_2_n_5\,
      Q => \step1_count_reg_n_0_[2]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[0]_i_2_n_4\,
      Q => \step1_count_reg_n_0_[3]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[4]_i_1_n_7\,
      Q => \step1_count_reg_n_0_[4]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step1_count_reg[0]_i_2_n_0\,
      CO(3) => \step1_count_reg[4]_i_1_n_0\,
      CO(2) => \step1_count_reg[4]_i_1_n_1\,
      CO(1) => \step1_count_reg[4]_i_1_n_2\,
      CO(0) => \step1_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step1_count_reg[4]_i_1_n_4\,
      O(2) => \step1_count_reg[4]_i_1_n_5\,
      O(1) => \step1_count_reg[4]_i_1_n_6\,
      O(0) => \step1_count_reg[4]_i_1_n_7\,
      S(3) => \step1_count_reg_n_0_[7]\,
      S(2) => \step1_count_reg_n_0_[6]\,
      S(1) => \step1_count_reg_n_0_[5]\,
      S(0) => \step1_count_reg_n_0_[4]\
    );
\step1_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[4]_i_1_n_6\,
      Q => \step1_count_reg_n_0_[5]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[4]_i_1_n_5\,
      Q => \step1_count_reg_n_0_[6]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[4]_i_1_n_4\,
      Q => \step1_count_reg_n_0_[7]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[8]_i_1_n_7\,
      Q => \step1_count_reg_n_0_[8]\,
      R => \step1_count[0]_i_1_n_0\
    );
\step1_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step1_count_reg[4]_i_1_n_0\,
      CO(3) => \step1_count_reg[8]_i_1_n_0\,
      CO(2) => \step1_count_reg[8]_i_1_n_1\,
      CO(1) => \step1_count_reg[8]_i_1_n_2\,
      CO(0) => \step1_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step1_count_reg[8]_i_1_n_4\,
      O(2) => \step1_count_reg[8]_i_1_n_5\,
      O(1) => \step1_count_reg[8]_i_1_n_6\,
      O(0) => \step1_count_reg[8]_i_1_n_7\,
      S(3) => \step1_count_reg_n_0_[11]\,
      S(2) => \step1_count_reg_n_0_[10]\,
      S(1) => \step1_count_reg_n_0_[9]\,
      S(0) => \step1_count_reg_n_0_[8]\
    );
\step1_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \step1_count_reg[8]_i_1_n_6\,
      Q => \step1_count_reg_n_0_[9]\,
      R => \step1_count[0]_i_1_n_0\
    );
step1_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BE00"
    )
        port map (
      I0 => step1_flag,
      I1 => btn_step(1),
      I2 => btn_step1_r,
      I3 => aresetn,
      I4 => step1_sample,
      O => step1_flag_i_1_n_0
    );
step1_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => step1_flag_i_1_n_0,
      Q => step1_flag,
      R => '0'
    );
\timer[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(0),
      I1 => \write_timer__8\,
      I2 => timer_reg(0),
      O => \timer[0]_i_2_n_0\
    );
\timer[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(3),
      I1 => \write_timer__8\,
      I2 => timer_reg(3),
      O => \timer[0]_i_3_n_0\
    );
\timer[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(2),
      I1 => \write_timer__8\,
      I2 => timer_reg(2),
      O => \timer[0]_i_4_n_0\
    );
\timer[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(1),
      I1 => \write_timer__8\,
      I2 => timer_reg(1),
      O => \timer[0]_i_5_n_0\
    );
\timer[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => timer_reg(0),
      I1 => s_wdata(0),
      I2 => \write_timer__8\,
      O => \timer[0]_i_6_n_0\
    );
\timer[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => p_17_in,
      I1 => \led_data[15]_i_2_n_0\,
      I2 => \led_data[15]_i_3_n_0\,
      I3 => p_1_in_0(1),
      I4 => p_1_in_0(12),
      I5 => \timer[0]_i_8_n_0\,
      O => \write_timer__8\
    );
\timer[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \buf_addr_reg_n_0_[1]\,
      I1 => p_1_in_0(10),
      I2 => p_1_in_0(0),
      I3 => \buf_addr_reg_n_0_[0]\,
      I4 => \led_data[15]_i_5_n_0\,
      O => \timer[0]_i_8_n_0\
    );
\timer[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(15),
      I1 => \write_timer__8\,
      I2 => timer_reg(15),
      O => \timer[12]_i_2_n_0\
    );
\timer[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(14),
      I1 => \write_timer__8\,
      I2 => timer_reg(14),
      O => \timer[12]_i_3_n_0\
    );
\timer[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(13),
      I1 => \write_timer__8\,
      I2 => timer_reg(13),
      O => \timer[12]_i_4_n_0\
    );
\timer[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(12),
      I1 => \write_timer__8\,
      I2 => timer_reg(12),
      O => \timer[12]_i_5_n_0\
    );
\timer[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(19),
      I1 => \write_timer__8\,
      I2 => timer_reg(19),
      O => \timer[16]_i_2_n_0\
    );
\timer[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(18),
      I1 => \write_timer__8\,
      I2 => timer_reg(18),
      O => \timer[16]_i_3_n_0\
    );
\timer[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(17),
      I1 => \write_timer__8\,
      I2 => timer_reg(17),
      O => \timer[16]_i_4_n_0\
    );
\timer[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(16),
      I1 => \write_timer__8\,
      I2 => timer_reg(16),
      O => \timer[16]_i_5_n_0\
    );
\timer[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(23),
      I1 => \write_timer__8\,
      I2 => timer_reg(23),
      O => \timer[20]_i_2_n_0\
    );
\timer[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(22),
      I1 => \write_timer__8\,
      I2 => timer_reg(22),
      O => \timer[20]_i_3_n_0\
    );
\timer[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(21),
      I1 => \write_timer__8\,
      I2 => timer_reg(21),
      O => \timer[20]_i_4_n_0\
    );
\timer[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(20),
      I1 => \write_timer__8\,
      I2 => timer_reg(20),
      O => \timer[20]_i_5_n_0\
    );
\timer[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(27),
      I1 => \write_timer__8\,
      I2 => timer_reg(27),
      O => \timer[24]_i_2_n_0\
    );
\timer[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(26),
      I1 => \write_timer__8\,
      I2 => timer_reg(26),
      O => \timer[24]_i_3_n_0\
    );
\timer[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(25),
      I1 => \write_timer__8\,
      I2 => timer_reg(25),
      O => \timer[24]_i_4_n_0\
    );
\timer[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(24),
      I1 => \write_timer__8\,
      I2 => timer_reg(24),
      O => \timer[24]_i_5_n_0\
    );
\timer[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(31),
      I1 => \write_timer__8\,
      I2 => timer_reg(31),
      O => \timer[28]_i_2_n_0\
    );
\timer[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(30),
      I1 => \write_timer__8\,
      I2 => timer_reg(30),
      O => \timer[28]_i_3_n_0\
    );
\timer[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(29),
      I1 => \write_timer__8\,
      I2 => timer_reg(29),
      O => \timer[28]_i_4_n_0\
    );
\timer[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(28),
      I1 => \write_timer__8\,
      I2 => timer_reg(28),
      O => \timer[28]_i_5_n_0\
    );
\timer[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(7),
      I1 => \write_timer__8\,
      I2 => timer_reg(7),
      O => \timer[4]_i_2_n_0\
    );
\timer[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(6),
      I1 => \write_timer__8\,
      I2 => timer_reg(6),
      O => \timer[4]_i_3_n_0\
    );
\timer[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(5),
      I1 => \write_timer__8\,
      I2 => timer_reg(5),
      O => \timer[4]_i_4_n_0\
    );
\timer[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(4),
      I1 => \write_timer__8\,
      I2 => timer_reg(4),
      O => \timer[4]_i_5_n_0\
    );
\timer[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(11),
      I1 => \write_timer__8\,
      I2 => timer_reg(11),
      O => \timer[8]_i_2_n_0\
    );
\timer[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(10),
      I1 => \write_timer__8\,
      I2 => timer_reg(10),
      O => \timer[8]_i_3_n_0\
    );
\timer[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(9),
      I1 => \write_timer__8\,
      I2 => timer_reg(9),
      O => \timer[8]_i_4_n_0\
    );
\timer[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_wdata(8),
      I1 => \write_timer__8\,
      I2 => timer_reg(8),
      O => \timer[8]_i_5_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_7\,
      Q => timer_reg(0),
      R => s_wready_i_1_n_0
    );
\timer_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[0]_i_1_n_0\,
      CO(2) => \timer_reg[0]_i_1_n_1\,
      CO(1) => \timer_reg[0]_i_1_n_2\,
      CO(0) => \timer_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \timer[0]_i_2_n_0\,
      O(3) => \timer_reg[0]_i_1_n_4\,
      O(2) => \timer_reg[0]_i_1_n_5\,
      O(1) => \timer_reg[0]_i_1_n_6\,
      O(0) => \timer_reg[0]_i_1_n_7\,
      S(3) => \timer[0]_i_3_n_0\,
      S(2) => \timer[0]_i_4_n_0\,
      S(1) => \timer[0]_i_5_n_0\,
      S(0) => \timer[0]_i_6_n_0\
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_5\,
      Q => timer_reg(10),
      R => s_wready_i_1_n_0
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_4\,
      Q => timer_reg(11),
      R => s_wready_i_1_n_0
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_7\,
      Q => timer_reg(12),
      R => s_wready_i_1_n_0
    );
\timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_1_n_0\,
      CO(3) => \timer_reg[12]_i_1_n_0\,
      CO(2) => \timer_reg[12]_i_1_n_1\,
      CO(1) => \timer_reg[12]_i_1_n_2\,
      CO(0) => \timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[12]_i_1_n_4\,
      O(2) => \timer_reg[12]_i_1_n_5\,
      O(1) => \timer_reg[12]_i_1_n_6\,
      O(0) => \timer_reg[12]_i_1_n_7\,
      S(3) => \timer[12]_i_2_n_0\,
      S(2) => \timer[12]_i_3_n_0\,
      S(1) => \timer[12]_i_4_n_0\,
      S(0) => \timer[12]_i_5_n_0\
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_6\,
      Q => timer_reg(13),
      R => s_wready_i_1_n_0
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_5\,
      Q => timer_reg(14),
      R => s_wready_i_1_n_0
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_4\,
      Q => timer_reg(15),
      R => s_wready_i_1_n_0
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_7\,
      Q => timer_reg(16),
      R => s_wready_i_1_n_0
    );
\timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_1_n_0\,
      CO(3) => \timer_reg[16]_i_1_n_0\,
      CO(2) => \timer_reg[16]_i_1_n_1\,
      CO(1) => \timer_reg[16]_i_1_n_2\,
      CO(0) => \timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[16]_i_1_n_4\,
      O(2) => \timer_reg[16]_i_1_n_5\,
      O(1) => \timer_reg[16]_i_1_n_6\,
      O(0) => \timer_reg[16]_i_1_n_7\,
      S(3) => \timer[16]_i_2_n_0\,
      S(2) => \timer[16]_i_3_n_0\,
      S(1) => \timer[16]_i_4_n_0\,
      S(0) => \timer[16]_i_5_n_0\
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_6\,
      Q => timer_reg(17),
      R => s_wready_i_1_n_0
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_5\,
      Q => timer_reg(18),
      R => s_wready_i_1_n_0
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_4\,
      Q => timer_reg(19),
      R => s_wready_i_1_n_0
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_6\,
      Q => timer_reg(1),
      R => s_wready_i_1_n_0
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_7\,
      Q => timer_reg(20),
      R => s_wready_i_1_n_0
    );
\timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_1_n_0\,
      CO(3) => \timer_reg[20]_i_1_n_0\,
      CO(2) => \timer_reg[20]_i_1_n_1\,
      CO(1) => \timer_reg[20]_i_1_n_2\,
      CO(0) => \timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[20]_i_1_n_4\,
      O(2) => \timer_reg[20]_i_1_n_5\,
      O(1) => \timer_reg[20]_i_1_n_6\,
      O(0) => \timer_reg[20]_i_1_n_7\,
      S(3) => \timer[20]_i_2_n_0\,
      S(2) => \timer[20]_i_3_n_0\,
      S(1) => \timer[20]_i_4_n_0\,
      S(0) => \timer[20]_i_5_n_0\
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_6\,
      Q => timer_reg(21),
      R => s_wready_i_1_n_0
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_5\,
      Q => timer_reg(22),
      R => s_wready_i_1_n_0
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_4\,
      Q => timer_reg(23),
      R => s_wready_i_1_n_0
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_7\,
      Q => timer_reg(24),
      R => s_wready_i_1_n_0
    );
\timer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[20]_i_1_n_0\,
      CO(3) => \timer_reg[24]_i_1_n_0\,
      CO(2) => \timer_reg[24]_i_1_n_1\,
      CO(1) => \timer_reg[24]_i_1_n_2\,
      CO(0) => \timer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[24]_i_1_n_4\,
      O(2) => \timer_reg[24]_i_1_n_5\,
      O(1) => \timer_reg[24]_i_1_n_6\,
      O(0) => \timer_reg[24]_i_1_n_7\,
      S(3) => \timer[24]_i_2_n_0\,
      S(2) => \timer[24]_i_3_n_0\,
      S(1) => \timer[24]_i_4_n_0\,
      S(0) => \timer[24]_i_5_n_0\
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_6\,
      Q => timer_reg(25),
      R => s_wready_i_1_n_0
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_5\,
      Q => timer_reg(26),
      R => s_wready_i_1_n_0
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_4\,
      Q => timer_reg(27),
      R => s_wready_i_1_n_0
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_7\,
      Q => timer_reg(28),
      R => s_wready_i_1_n_0
    );
\timer_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[24]_i_1_n_0\,
      CO(3) => \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \timer_reg[28]_i_1_n_1\,
      CO(1) => \timer_reg[28]_i_1_n_2\,
      CO(0) => \timer_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[28]_i_1_n_4\,
      O(2) => \timer_reg[28]_i_1_n_5\,
      O(1) => \timer_reg[28]_i_1_n_6\,
      O(0) => \timer_reg[28]_i_1_n_7\,
      S(3) => \timer[28]_i_2_n_0\,
      S(2) => \timer[28]_i_3_n_0\,
      S(1) => \timer[28]_i_4_n_0\,
      S(0) => \timer[28]_i_5_n_0\
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_6\,
      Q => timer_reg(29),
      R => s_wready_i_1_n_0
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_5\,
      Q => timer_reg(2),
      R => s_wready_i_1_n_0
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_5\,
      Q => timer_reg(30),
      R => s_wready_i_1_n_0
    );
\timer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_4\,
      Q => timer_reg(31),
      R => s_wready_i_1_n_0
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_4\,
      Q => timer_reg(3),
      R => s_wready_i_1_n_0
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_7\,
      Q => timer_reg(4),
      R => s_wready_i_1_n_0
    );
\timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[0]_i_1_n_0\,
      CO(3) => \timer_reg[4]_i_1_n_0\,
      CO(2) => \timer_reg[4]_i_1_n_1\,
      CO(1) => \timer_reg[4]_i_1_n_2\,
      CO(0) => \timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[4]_i_1_n_4\,
      O(2) => \timer_reg[4]_i_1_n_5\,
      O(1) => \timer_reg[4]_i_1_n_6\,
      O(0) => \timer_reg[4]_i_1_n_7\,
      S(3) => \timer[4]_i_2_n_0\,
      S(2) => \timer[4]_i_3_n_0\,
      S(1) => \timer[4]_i_4_n_0\,
      S(0) => \timer[4]_i_5_n_0\
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_6\,
      Q => timer_reg(5),
      R => s_wready_i_1_n_0
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_5\,
      Q => timer_reg(6),
      R => s_wready_i_1_n_0
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_4\,
      Q => timer_reg(7),
      R => s_wready_i_1_n_0
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_7\,
      Q => timer_reg(8),
      R => s_wready_i_1_n_0
    );
\timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_1_n_0\,
      CO(3) => \timer_reg[8]_i_1_n_0\,
      CO(2) => \timer_reg[8]_i_1_n_1\,
      CO(1) => \timer_reg[8]_i_1_n_2\,
      CO(0) => \timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[8]_i_1_n_4\,
      O(2) => \timer_reg[8]_i_1_n_5\,
      O(1) => \timer_reg[8]_i_1_n_6\,
      O(0) => \timer_reg[8]_i_1_n_7\,
      S(3) => \timer[8]_i_2_n_0\,
      S(2) => \timer[8]_i_3_n_0\,
      S(1) => \timer[8]_i_4_n_0\,
      S(0) => \timer[8]_i_5_n_0\
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_6\,
      Q => timer_reg(9),
      R => s_wready_i_1_n_0
    );
write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF080A"
    )
        port map (
      I0 => s_awvalid,
      I1 => R_or_W,
      I2 => busy,
      I3 => s_arvalid,
      I4 => write,
      O => write_i_1_n_0
    );
write_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_i_1_n_0,
      Q => write,
      R => s_wready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_confreg_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_top_confreg_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_confreg_0_1 : entity is "bd_top_confreg_0_1,confreg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_top_confreg_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_top_confreg_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_top_confreg_0_1 : entity is "confreg,Vivado 2019.2";
end bd_top_confreg_0_1;

architecture STRUCTURE of bd_top_confreg_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal n_0_520 : STD_LOGIC;
  signal \^s_rid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_pll_100_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_arlock : signal is "xilinx.com:interface:aximm:1.0 s ARLOCK";
  attribute X_INTERFACE_INFO of s_arready : signal is "xilinx.com:interface:aximm:1.0 s ARREADY";
  attribute X_INTERFACE_INFO of s_arvalid : signal is "xilinx.com:interface:aximm:1.0 s ARVALID";
  attribute X_INTERFACE_INFO of s_awlock : signal is "xilinx.com:interface:aximm:1.0 s AWLOCK";
  attribute X_INTERFACE_INFO of s_awready : signal is "xilinx.com:interface:aximm:1.0 s AWREADY";
  attribute X_INTERFACE_INFO of s_awvalid : signal is "xilinx.com:interface:aximm:1.0 s AWVALID";
  attribute X_INTERFACE_INFO of s_bready : signal is "xilinx.com:interface:aximm:1.0 s BREADY";
  attribute X_INTERFACE_INFO of s_bvalid : signal is "xilinx.com:interface:aximm:1.0 s BVALID";
  attribute X_INTERFACE_INFO of s_rlast : signal is "xilinx.com:interface:aximm:1.0 s RLAST";
  attribute X_INTERFACE_INFO of s_rready : signal is "xilinx.com:interface:aximm:1.0 s RREADY";
  attribute X_INTERFACE_PARAMETER of s_rready : signal is "XIL_INTERFACENAME s, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_pll_100_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_rvalid : signal is "xilinx.com:interface:aximm:1.0 s RVALID";
  attribute X_INTERFACE_INFO of s_wlast : signal is "xilinx.com:interface:aximm:1.0 s WLAST";
  attribute X_INTERFACE_INFO of s_wready : signal is "xilinx.com:interface:aximm:1.0 s WREADY";
  attribute X_INTERFACE_INFO of s_wvalid : signal is "xilinx.com:interface:aximm:1.0 s WVALID";
  attribute X_INTERFACE_INFO of s_araddr : signal is "xilinx.com:interface:aximm:1.0 s ARADDR";
  attribute X_INTERFACE_INFO of s_arburst : signal is "xilinx.com:interface:aximm:1.0 s ARBURST";
  attribute X_INTERFACE_INFO of s_arcache : signal is "xilinx.com:interface:aximm:1.0 s ARCACHE";
  attribute X_INTERFACE_INFO of s_arid : signal is "xilinx.com:interface:aximm:1.0 s ARID";
  attribute X_INTERFACE_INFO of s_arlen : signal is "xilinx.com:interface:aximm:1.0 s ARLEN";
  attribute X_INTERFACE_INFO of s_arprot : signal is "xilinx.com:interface:aximm:1.0 s ARPROT";
  attribute X_INTERFACE_INFO of s_arsize : signal is "xilinx.com:interface:aximm:1.0 s ARSIZE";
  attribute X_INTERFACE_INFO of s_awaddr : signal is "xilinx.com:interface:aximm:1.0 s AWADDR";
  attribute X_INTERFACE_INFO of s_awburst : signal is "xilinx.com:interface:aximm:1.0 s AWBURST";
  attribute X_INTERFACE_INFO of s_awcache : signal is "xilinx.com:interface:aximm:1.0 s AWCACHE";
  attribute X_INTERFACE_INFO of s_awid : signal is "xilinx.com:interface:aximm:1.0 s AWID";
  attribute X_INTERFACE_INFO of s_awlen : signal is "xilinx.com:interface:aximm:1.0 s AWLEN";
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
  s_bid(5 downto 0) <= \^s_rid\(5 downto 0);
  s_bresp(1) <= \<const0>\;
  s_bresp(0) <= \<const0>\;
  s_rid(5 downto 0) <= \^s_rid\(5 downto 0);
  s_rresp(1) <= \<const0>\;
  s_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_520: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => n_0_520
    );
inst: entity work.bd_top_confreg_0_1_confreg
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_key_col(3 downto 0) => btn_key_col(3 downto 0),
      btn_key_row(3 downto 0) => btn_key_row(3 downto 0),
      btn_step(1 downto 0) => btn_step(1 downto 0),
      cr00(31 downto 0) => cr00(31 downto 0),
      cr01(31 downto 0) => cr01(31 downto 0),
      cr02(31 downto 0) => cr02(31 downto 0),
      cr03(31 downto 0) => cr03(31 downto 0),
      cr04(31 downto 0) => cr04(31 downto 0),
      cr05(31 downto 0) => cr05(31 downto 0),
      cr06(31 downto 0) => cr06(31 downto 0),
      cr07(31 downto 0) => cr07(31 downto 0),
      finish_read_order => finish_read_order,
      led(15 downto 0) => led(15 downto 0),
      led_rg0(1 downto 0) => led_rg0(1 downto 0),
      led_rg1(1 downto 0) => led_rg1(1 downto 0),
      num_a_g(6 downto 0) => num_a_g(6 downto 0),
      num_csn(7 downto 0) => num_csn(7 downto 0),
      order_addr_reg(31 downto 0) => order_addr_reg(31 downto 0),
      s_araddr(15 downto 0) => s_araddr(15 downto 0),
      s_arid(5 downto 0) => s_arid(5 downto 0),
      s_arready => s_arready,
      s_arvalid => s_arvalid,
      s_awaddr(15 downto 0) => s_awaddr(15 downto 0),
      s_awid(5 downto 0) => s_awid(5 downto 0),
      s_awready => s_awready,
      s_awvalid => s_awvalid,
      s_bready => s_bready,
      s_bvalid => s_bvalid,
      s_rdata(31 downto 0) => s_rdata(31 downto 0),
      s_rid(5 downto 0) => \^s_rid\(5 downto 0),
      s_rlast_reg_0 => s_rlast,
      s_rready => s_rready,
      s_rvalid_reg_0 => s_rvalid,
      s_wdata(31 downto 0) => s_wdata(31 downto 0),
      s_wlast => s_wlast,
      s_wready_reg_0 => s_wready,
      s_wvalid => s_wvalid,
      switch(7 downto 0) => switch(7 downto 0),
      write_dma_end => write_dma_end
    );
end STRUCTURE;
