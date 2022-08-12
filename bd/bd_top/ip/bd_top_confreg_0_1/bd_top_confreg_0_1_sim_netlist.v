// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:14:09 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_confreg_0_1/bd_top_confreg_0_1_sim_netlist.v
// Design      : bd_top_confreg_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_top_confreg_0_1,confreg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "confreg,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_top_confreg_0_1
   (aclk,
    aresetn,
    s_awid,
    s_awaddr,
    s_awlen,
    s_awsize,
    s_awburst,
    s_awlock,
    s_awcache,
    s_awprot,
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
    s_arid,
    s_araddr,
    s_arlen,
    s_arsize,
    s_arburst,
    s_arlock,
    s_arcache,
    s_arprot,
    s_arvalid,
    s_arready,
    s_rid,
    s_rdata,
    s_rresp,
    s_rlast,
    s_rvalid,
    s_rready,
    order_addr_reg,
    finish_read_order,
    write_dma_end,
    cr00,
    cr01,
    cr02,
    cr03,
    cr04,
    cr05,
    cr06,
    cr07,
    led,
    led_rg0,
    led_rg1,
    num_csn,
    num_a_g,
    switch,
    btn_key_col,
    btn_key_row,
    btn_step);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_pll_100_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWID" *) input [5:0]s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWADDR" *) input [31:0]s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLEN" *) input [7:0]s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWSIZE" *) input [2:0]s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWBURST" *) input [1:0]s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLOCK" *) input s_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWCACHE" *) input [3:0]s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWPROT" *) input [2:0]s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWVALID" *) input s_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWREADY" *) output s_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WID" *) input [5:0]s_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WDATA" *) input [31:0]s_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WSTRB" *) input [3:0]s_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WLAST" *) input s_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WVALID" *) input s_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s WREADY" *) output s_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BID" *) output [5:0]s_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BRESP" *) output [1:0]s_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BVALID" *) output s_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s BREADY" *) input s_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARID" *) input [5:0]s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARADDR" *) input [31:0]s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLEN" *) input [7:0]s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARSIZE" *) input [2:0]s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARBURST" *) input [1:0]s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLOCK" *) input s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARCACHE" *) input [3:0]s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARPROT" *) input [2:0]s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARVALID" *) input s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARREADY" *) output s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RID" *) output [5:0]s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RDATA" *) output [31:0]s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RRESP" *) output [1:0]s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RLAST" *) output s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RVALID" *) output s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_pll_100_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_rready;
  output [31:0]order_addr_reg;
  input finish_read_order;
  input write_dma_end;
  output [31:0]cr00;
  output [31:0]cr01;
  output [31:0]cr02;
  output [31:0]cr03;
  output [31:0]cr04;
  output [31:0]cr05;
  output [31:0]cr06;
  output [31:0]cr07;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [7:0]num_csn;
  output [6:0]num_a_g;
  input [7:0]switch;
  output [3:0]btn_key_col;
  input [3:0]btn_key_row;
  input [1:0]btn_step;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [3:0]btn_key_col;
  wire [3:0]btn_key_row;
  wire [1:0]btn_step;
  wire [31:0]cr00;
  wire [31:0]cr01;
  wire [31:0]cr02;
  wire [31:0]cr03;
  wire [31:0]cr04;
  wire [31:0]cr05;
  wire [31:0]cr06;
  wire [31:0]cr07;
  wire finish_read_order;
  wire [15:0]led;
  wire [1:0]led_rg0;
  wire [1:0]led_rg1;
  wire n_0_520;
  wire [6:0]num_a_g;
  wire [7:0]num_csn;
  wire [31:0]order_addr_reg;
  wire [31:0]s_araddr;
  wire [5:0]s_arid;
  wire s_arready;
  wire s_arvalid;
  wire [31:0]s_awaddr;
  wire [5:0]s_awid;
  wire s_awready;
  wire s_awvalid;
  wire s_bready;
  wire s_bvalid;
  wire [31:0]s_rdata;
  wire [5:0]s_rid;
  wire s_rlast;
  wire s_rready;
  wire s_rvalid;
  wire [31:0]s_wdata;
  wire s_wlast;
  wire s_wready;
  wire s_wvalid;
  wire [7:0]switch;
  wire write_dma_end;

  assign s_bid[5:0] = s_rid;
  assign s_bresp[1] = \<const0> ;
  assign s_bresp[0] = \<const0> ;
  assign s_rresp[1] = \<const0> ;
  assign s_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_520
       (.I0(aresetn),
        .O(n_0_520));
  bd_top_confreg_0_1_confreg inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_key_col(btn_key_col),
        .btn_key_row(btn_key_row),
        .btn_step(btn_step),
        .cr00(cr00),
        .cr01(cr01),
        .cr02(cr02),
        .cr03(cr03),
        .cr04(cr04),
        .cr05(cr05),
        .cr06(cr06),
        .cr07(cr07),
        .finish_read_order(finish_read_order),
        .led(led),
        .led_rg0(led_rg0),
        .led_rg1(led_rg1),
        .num_a_g(num_a_g),
        .num_csn(num_csn),
        .order_addr_reg(order_addr_reg),
        .s_araddr(s_araddr[15:0]),
        .s_arid(s_arid),
        .s_arready(s_arready),
        .s_arvalid(s_arvalid),
        .s_awaddr(s_awaddr[15:0]),
        .s_awid(s_awid),
        .s_awready(s_awready),
        .s_awvalid(s_awvalid),
        .s_bready(s_bready),
        .s_bvalid(s_bvalid),
        .s_rdata(s_rdata),
        .s_rid(s_rid),
        .s_rlast_reg_0(s_rlast),
        .s_rready(s_rready),
        .s_rvalid_reg_0(s_rvalid),
        .s_wdata(s_wdata),
        .s_wlast(s_wlast),
        .s_wready_reg_0(s_wready),
        .s_wvalid(s_wvalid),
        .switch(switch),
        .write_dma_end(write_dma_end));
endmodule

(* ORIG_REF_NAME = "confreg" *) 
module bd_top_confreg_0_1_confreg
   (s_arready,
    s_awready,
    s_rlast_reg_0,
    s_rvalid_reg_0,
    s_bvalid,
    s_rid,
    order_addr_reg,
    led,
    led_rg0,
    led_rg1,
    cr00,
    cr01,
    cr02,
    cr03,
    cr04,
    cr05,
    cr06,
    cr07,
    s_rdata,
    num_csn,
    num_a_g,
    s_wready_reg_0,
    btn_key_col,
    btn_key_row,
    s_wdata,
    s_awvalid,
    s_arvalid,
    aresetn,
    s_rready,
    s_bready,
    aclk,
    finish_read_order,
    write_dma_end,
    btn_step,
    switch,
    s_wvalid,
    s_wlast,
    s_arid,
    s_awid,
    s_araddr,
    s_awaddr);
  output s_arready;
  output s_awready;
  output s_rlast_reg_0;
  output s_rvalid_reg_0;
  output s_bvalid;
  output [5:0]s_rid;
  output [31:0]order_addr_reg;
  output [15:0]led;
  output [1:0]led_rg0;
  output [1:0]led_rg1;
  output [31:0]cr00;
  output [31:0]cr01;
  output [31:0]cr02;
  output [31:0]cr03;
  output [31:0]cr04;
  output [31:0]cr05;
  output [31:0]cr06;
  output [31:0]cr07;
  output [31:0]s_rdata;
  output [7:0]num_csn;
  output [6:0]num_a_g;
  output s_wready_reg_0;
  output [3:0]btn_key_col;
  input [3:0]btn_key_row;
  input [31:0]s_wdata;
  input s_awvalid;
  input s_arvalid;
  input aresetn;
  input s_rready;
  input s_bready;
  input aclk;
  input finish_read_order;
  input write_dma_end;
  input [1:0]btn_step;
  input [7:0]switch;
  input s_wvalid;
  input s_wlast;
  input [5:0]s_arid;
  input [5:0]s_awid;
  input [15:0]s_araddr;
  input [15:0]s_awaddr;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire R_or_W;
  wire aclk;
  wire ar_enter;
  wire aresetn;
  wire aw_enter;
  wire [3:0]btn_key_col;
  wire [15:0]btn_key_r;
  wire \btn_key_r[0]_i_1_n_0 ;
  wire \btn_key_r[10]_i_1_n_0 ;
  wire \btn_key_r[10]_i_2_n_0 ;
  wire \btn_key_r[10]_i_3_n_0 ;
  wire \btn_key_r[11]_i_1_n_0 ;
  wire \btn_key_r[11]_i_3_n_0 ;
  wire \btn_key_r[11]_i_4_n_0 ;
  wire \btn_key_r[11]_i_5_n_0 ;
  wire \btn_key_r[12]_i_1_n_0 ;
  wire \btn_key_r[12]_i_2_n_0 ;
  wire \btn_key_r[13]_i_1_n_0 ;
  wire \btn_key_r[13]_i_2_n_0 ;
  wire \btn_key_r[14]_i_1_n_0 ;
  wire \btn_key_r[14]_i_2_n_0 ;
  wire \btn_key_r[14]_i_3_n_0 ;
  wire \btn_key_r[15]_i_10_n_0 ;
  wire \btn_key_r[15]_i_11_n_0 ;
  wire \btn_key_r[15]_i_12_n_0 ;
  wire \btn_key_r[15]_i_13_n_0 ;
  wire \btn_key_r[15]_i_1_n_0 ;
  wire \btn_key_r[15]_i_3_n_0 ;
  wire \btn_key_r[15]_i_4_n_0 ;
  wire \btn_key_r[15]_i_5_n_0 ;
  wire \btn_key_r[15]_i_6_n_0 ;
  wire \btn_key_r[15]_i_7_n_0 ;
  wire \btn_key_r[15]_i_8_n_0 ;
  wire \btn_key_r[15]_i_9_n_0 ;
  wire \btn_key_r[1]_i_1_n_0 ;
  wire \btn_key_r[1]_i_2_n_0 ;
  wire \btn_key_r[2]_i_1_n_0 ;
  wire \btn_key_r[2]_i_3_n_0 ;
  wire \btn_key_r[3]_i_1_n_0 ;
  wire \btn_key_r[3]_i_3_n_0 ;
  wire \btn_key_r[3]_i_4_n_0 ;
  wire \btn_key_r[4]_i_1_n_0 ;
  wire \btn_key_r[4]_i_3_n_0 ;
  wire \btn_key_r[5]_i_1_n_0 ;
  wire \btn_key_r[5]_i_2_n_0 ;
  wire \btn_key_r[6]_i_1_n_0 ;
  wire \btn_key_r[6]_i_2_n_0 ;
  wire \btn_key_r[6]_i_3_n_0 ;
  wire \btn_key_r[7]_i_1_n_0 ;
  wire \btn_key_r[7]_i_3_n_0 ;
  wire \btn_key_r[7]_i_4_n_0 ;
  wire \btn_key_r[7]_i_5_n_0 ;
  wire \btn_key_r[8]_i_1_n_0 ;
  wire \btn_key_r[8]_i_2_n_0 ;
  wire \btn_key_r[9]_i_1_n_0 ;
  wire \btn_key_r[9]_i_2_n_0 ;
  wire [3:0]btn_key_row;
  wire btn_key_tmp1;
  wire btn_key_tmp13;
  wire btn_key_tmp2;
  wire btn_key_tmp9;
  wire [1:0]btn_step;
  wire btn_step0_r;
  wire btn_step0_r_i_1_n_0;
  wire btn_step1_r;
  wire btn_step1_r_i_1_n_0;
  wire \buf_addr_reg_n_0_[0] ;
  wire \buf_addr_reg_n_0_[1] ;
  wire \buf_id[0]_i_1_n_0 ;
  wire \buf_id[1]_i_1_n_0 ;
  wire \buf_id[2]_i_1_n_0 ;
  wire \buf_id[3]_i_1_n_0 ;
  wire \buf_id[4]_i_1_n_0 ;
  wire \buf_id[5]_i_2_n_0 ;
  wire busy;
  wire busy01_out;
  wire busy_i_1_n_0;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [31:0]cr00;
  wire \cr00[31]_i_1_n_0 ;
  wire [31:0]cr01;
  wire \cr01[31]_i_1_n_0 ;
  wire [31:0]cr02;
  wire \cr02[31]_i_1_n_0 ;
  wire [31:0]cr03;
  wire \cr03[31]_i_1_n_0 ;
  wire [31:0]cr04;
  wire \cr04[31]_i_1_n_0 ;
  wire [31:0]cr05;
  wire \cr05[31]_i_1_n_0 ;
  wire [31:0]cr06;
  wire \cr06[31]_i_1_n_0 ;
  wire [31:0]cr07;
  wire \cr07[31]_i_1_n_0 ;
  wire [3:0]data0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire finish_read_order;
  wire \key_count[0]_i_1_n_0 ;
  wire \key_count[0]_i_3_n_0 ;
  wire \key_count_reg[0]_i_2_n_0 ;
  wire \key_count_reg[0]_i_2_n_1 ;
  wire \key_count_reg[0]_i_2_n_2 ;
  wire \key_count_reg[0]_i_2_n_3 ;
  wire \key_count_reg[0]_i_2_n_4 ;
  wire \key_count_reg[0]_i_2_n_5 ;
  wire \key_count_reg[0]_i_2_n_6 ;
  wire \key_count_reg[0]_i_2_n_7 ;
  wire \key_count_reg[12]_i_1_n_0 ;
  wire \key_count_reg[12]_i_1_n_1 ;
  wire \key_count_reg[12]_i_1_n_2 ;
  wire \key_count_reg[12]_i_1_n_3 ;
  wire \key_count_reg[12]_i_1_n_4 ;
  wire \key_count_reg[12]_i_1_n_5 ;
  wire \key_count_reg[12]_i_1_n_6 ;
  wire \key_count_reg[12]_i_1_n_7 ;
  wire \key_count_reg[16]_i_1_n_1 ;
  wire \key_count_reg[16]_i_1_n_2 ;
  wire \key_count_reg[16]_i_1_n_3 ;
  wire \key_count_reg[16]_i_1_n_4 ;
  wire \key_count_reg[16]_i_1_n_5 ;
  wire \key_count_reg[16]_i_1_n_6 ;
  wire \key_count_reg[16]_i_1_n_7 ;
  wire \key_count_reg[4]_i_1_n_0 ;
  wire \key_count_reg[4]_i_1_n_1 ;
  wire \key_count_reg[4]_i_1_n_2 ;
  wire \key_count_reg[4]_i_1_n_3 ;
  wire \key_count_reg[4]_i_1_n_4 ;
  wire \key_count_reg[4]_i_1_n_5 ;
  wire \key_count_reg[4]_i_1_n_6 ;
  wire \key_count_reg[4]_i_1_n_7 ;
  wire \key_count_reg[8]_i_1_n_0 ;
  wire \key_count_reg[8]_i_1_n_1 ;
  wire \key_count_reg[8]_i_1_n_2 ;
  wire \key_count_reg[8]_i_1_n_3 ;
  wire \key_count_reg[8]_i_1_n_4 ;
  wire \key_count_reg[8]_i_1_n_5 ;
  wire \key_count_reg[8]_i_1_n_6 ;
  wire \key_count_reg[8]_i_1_n_7 ;
  wire \key_count_reg_n_0_[0] ;
  wire \key_count_reg_n_0_[10] ;
  wire \key_count_reg_n_0_[11] ;
  wire \key_count_reg_n_0_[12] ;
  wire \key_count_reg_n_0_[13] ;
  wire \key_count_reg_n_0_[14] ;
  wire \key_count_reg_n_0_[15] ;
  wire \key_count_reg_n_0_[16] ;
  wire \key_count_reg_n_0_[17] ;
  wire \key_count_reg_n_0_[18] ;
  wire \key_count_reg_n_0_[1] ;
  wire \key_count_reg_n_0_[2] ;
  wire \key_count_reg_n_0_[3] ;
  wire \key_count_reg_n_0_[4] ;
  wire \key_count_reg_n_0_[5] ;
  wire \key_count_reg_n_0_[6] ;
  wire \key_count_reg_n_0_[7] ;
  wire \key_count_reg_n_0_[8] ;
  wire \key_count_reg_n_0_[9] ;
  wire key_flag;
  wire key_flag_i_1_n_0;
  wire key_flag_i_2_n_0;
  wire key_sample;
  wire key_start1__1;
  wire [15:0]led;
  wire \led_data[15]_i_2_n_0 ;
  wire \led_data[15]_i_3_n_0 ;
  wire \led_data[15]_i_4_n_0 ;
  wire \led_data[15]_i_5_n_0 ;
  wire \led_data_reg_n_0_[16] ;
  wire \led_data_reg_n_0_[17] ;
  wire \led_data_reg_n_0_[18] ;
  wire \led_data_reg_n_0_[19] ;
  wire \led_data_reg_n_0_[20] ;
  wire \led_data_reg_n_0_[21] ;
  wire \led_data_reg_n_0_[22] ;
  wire \led_data_reg_n_0_[23] ;
  wire \led_data_reg_n_0_[24] ;
  wire \led_data_reg_n_0_[25] ;
  wire \led_data_reg_n_0_[26] ;
  wire \led_data_reg_n_0_[27] ;
  wire \led_data_reg_n_0_[28] ;
  wire \led_data_reg_n_0_[29] ;
  wire \led_data_reg_n_0_[30] ;
  wire \led_data_reg_n_0_[31] ;
  wire [1:0]led_rg0;
  wire \led_rg0_data[1]_i_2_n_0 ;
  wire \led_rg0_data[1]_i_3_n_0 ;
  wire \led_rg0_data_reg_n_0_[10] ;
  wire \led_rg0_data_reg_n_0_[11] ;
  wire \led_rg0_data_reg_n_0_[12] ;
  wire \led_rg0_data_reg_n_0_[13] ;
  wire \led_rg0_data_reg_n_0_[14] ;
  wire \led_rg0_data_reg_n_0_[15] ;
  wire \led_rg0_data_reg_n_0_[16] ;
  wire \led_rg0_data_reg_n_0_[17] ;
  wire \led_rg0_data_reg_n_0_[18] ;
  wire \led_rg0_data_reg_n_0_[19] ;
  wire \led_rg0_data_reg_n_0_[20] ;
  wire \led_rg0_data_reg_n_0_[21] ;
  wire \led_rg0_data_reg_n_0_[22] ;
  wire \led_rg0_data_reg_n_0_[23] ;
  wire \led_rg0_data_reg_n_0_[24] ;
  wire \led_rg0_data_reg_n_0_[25] ;
  wire \led_rg0_data_reg_n_0_[26] ;
  wire \led_rg0_data_reg_n_0_[27] ;
  wire \led_rg0_data_reg_n_0_[28] ;
  wire \led_rg0_data_reg_n_0_[29] ;
  wire \led_rg0_data_reg_n_0_[2] ;
  wire \led_rg0_data_reg_n_0_[30] ;
  wire \led_rg0_data_reg_n_0_[31] ;
  wire \led_rg0_data_reg_n_0_[3] ;
  wire \led_rg0_data_reg_n_0_[4] ;
  wire \led_rg0_data_reg_n_0_[5] ;
  wire \led_rg0_data_reg_n_0_[6] ;
  wire \led_rg0_data_reg_n_0_[7] ;
  wire \led_rg0_data_reg_n_0_[8] ;
  wire \led_rg0_data_reg_n_0_[9] ;
  wire [1:0]led_rg1;
  wire \led_rg1_data[1]_i_2_n_0 ;
  wire \led_rg1_data_reg_n_0_[10] ;
  wire \led_rg1_data_reg_n_0_[11] ;
  wire \led_rg1_data_reg_n_0_[12] ;
  wire \led_rg1_data_reg_n_0_[13] ;
  wire \led_rg1_data_reg_n_0_[14] ;
  wire \led_rg1_data_reg_n_0_[15] ;
  wire \led_rg1_data_reg_n_0_[16] ;
  wire \led_rg1_data_reg_n_0_[17] ;
  wire \led_rg1_data_reg_n_0_[18] ;
  wire \led_rg1_data_reg_n_0_[19] ;
  wire \led_rg1_data_reg_n_0_[20] ;
  wire \led_rg1_data_reg_n_0_[21] ;
  wire \led_rg1_data_reg_n_0_[22] ;
  wire \led_rg1_data_reg_n_0_[23] ;
  wire \led_rg1_data_reg_n_0_[24] ;
  wire \led_rg1_data_reg_n_0_[25] ;
  wire \led_rg1_data_reg_n_0_[26] ;
  wire \led_rg1_data_reg_n_0_[27] ;
  wire \led_rg1_data_reg_n_0_[28] ;
  wire \led_rg1_data_reg_n_0_[29] ;
  wire \led_rg1_data_reg_n_0_[2] ;
  wire \led_rg1_data_reg_n_0_[30] ;
  wire \led_rg1_data_reg_n_0_[31] ;
  wire \led_rg1_data_reg_n_0_[3] ;
  wire \led_rg1_data_reg_n_0_[4] ;
  wire \led_rg1_data_reg_n_0_[5] ;
  wire \led_rg1_data_reg_n_0_[6] ;
  wire \led_rg1_data_reg_n_0_[7] ;
  wire \led_rg1_data_reg_n_0_[8] ;
  wire \led_rg1_data_reg_n_0_[9] ;
  wire [6:0]num_a_g;
  wire [6:0]num_a_g_1;
  wire [7:0]num_csn;
  wire \num_csn[0]_i_1_n_0 ;
  wire \num_csn[1]_i_1_n_0 ;
  wire \num_csn[2]_i_1_n_0 ;
  wire \num_csn[3]_i_1_n_0 ;
  wire \num_csn[4]_i_1_n_0 ;
  wire \num_csn[5]_i_1_n_0 ;
  wire \num_csn[6]_i_1_n_0 ;
  wire \num_csn[7]_i_1_n_0 ;
  wire \num_data_reg_n_0_[0] ;
  wire \num_data_reg_n_0_[1] ;
  wire \num_data_reg_n_0_[2] ;
  wire \num_data_reg_n_0_[3] ;
  wire [31:0]order_addr_reg;
  wire \order_addr_reg[2]_i_1_n_0 ;
  wire \order_addr_reg[31]_i_3_n_0 ;
  wire \order_addr_reg[31]_i_4_n_0 ;
  wire \order_addr_reg[31]_i_5_n_0 ;
  wire \order_addr_reg[31]_i_6_n_0 ;
  wire \order_addr_reg[3]_i_1_n_0 ;
  wire [3:0]p_0_in;
  wire p_0_in13_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_17_in;
  wire [15:0]p_1_in;
  wire p_1_in10_in;
  wire p_1_in11_in;
  wire p_1_in6_in;
  wire p_1_in9_in;
  wire [13:0]p_1_in_0;
  wire r_retire__1;
  wire [15:0]s_araddr;
  wire [5:0]s_arid;
  wire s_arready;
  wire s_arvalid;
  wire [15:0]s_awaddr;
  wire [5:0]s_awid;
  wire s_awready;
  wire s_awvalid;
  wire s_bready;
  wire s_bvalid;
  wire s_bvalid_i_1_n_0;
  wire [31:0]s_rdata;
  wire \s_rdata[0]_i_1_n_0 ;
  wire \s_rdata[0]_i_2_n_0 ;
  wire \s_rdata[0]_i_5_n_0 ;
  wire \s_rdata[0]_i_6_n_0 ;
  wire \s_rdata[0]_i_7_n_0 ;
  wire \s_rdata[0]_i_8_n_0 ;
  wire \s_rdata[10]_i_1_n_0 ;
  wire \s_rdata[10]_i_2_n_0 ;
  wire \s_rdata[10]_i_5_n_0 ;
  wire \s_rdata[10]_i_6_n_0 ;
  wire \s_rdata[10]_i_7_n_0 ;
  wire \s_rdata[10]_i_8_n_0 ;
  wire \s_rdata[11]_i_1_n_0 ;
  wire \s_rdata[11]_i_2_n_0 ;
  wire \s_rdata[11]_i_5_n_0 ;
  wire \s_rdata[11]_i_6_n_0 ;
  wire \s_rdata[11]_i_7_n_0 ;
  wire \s_rdata[11]_i_8_n_0 ;
  wire \s_rdata[12]_i_1_n_0 ;
  wire \s_rdata[12]_i_2_n_0 ;
  wire \s_rdata[12]_i_5_n_0 ;
  wire \s_rdata[12]_i_6_n_0 ;
  wire \s_rdata[12]_i_7_n_0 ;
  wire \s_rdata[12]_i_8_n_0 ;
  wire \s_rdata[13]_i_1_n_0 ;
  wire \s_rdata[13]_i_2_n_0 ;
  wire \s_rdata[13]_i_5_n_0 ;
  wire \s_rdata[13]_i_6_n_0 ;
  wire \s_rdata[13]_i_7_n_0 ;
  wire \s_rdata[13]_i_8_n_0 ;
  wire \s_rdata[14]_i_1_n_0 ;
  wire \s_rdata[14]_i_2_n_0 ;
  wire \s_rdata[14]_i_5_n_0 ;
  wire \s_rdata[14]_i_6_n_0 ;
  wire \s_rdata[14]_i_7_n_0 ;
  wire \s_rdata[14]_i_8_n_0 ;
  wire \s_rdata[15]_i_1_n_0 ;
  wire \s_rdata[15]_i_2_n_0 ;
  wire \s_rdata[15]_i_5_n_0 ;
  wire \s_rdata[15]_i_6_n_0 ;
  wire \s_rdata[15]_i_7_n_0 ;
  wire \s_rdata[15]_i_8_n_0 ;
  wire \s_rdata[16]_i_1_n_0 ;
  wire \s_rdata[16]_i_2_n_0 ;
  wire \s_rdata[16]_i_5_n_0 ;
  wire \s_rdata[16]_i_6_n_0 ;
  wire \s_rdata[16]_i_7_n_0 ;
  wire \s_rdata[16]_i_8_n_0 ;
  wire \s_rdata[17]_i_1_n_0 ;
  wire \s_rdata[17]_i_2_n_0 ;
  wire \s_rdata[17]_i_5_n_0 ;
  wire \s_rdata[17]_i_6_n_0 ;
  wire \s_rdata[17]_i_7_n_0 ;
  wire \s_rdata[17]_i_8_n_0 ;
  wire \s_rdata[18]_i_1_n_0 ;
  wire \s_rdata[18]_i_2_n_0 ;
  wire \s_rdata[18]_i_5_n_0 ;
  wire \s_rdata[18]_i_6_n_0 ;
  wire \s_rdata[18]_i_7_n_0 ;
  wire \s_rdata[18]_i_8_n_0 ;
  wire \s_rdata[19]_i_1_n_0 ;
  wire \s_rdata[19]_i_2_n_0 ;
  wire \s_rdata[19]_i_5_n_0 ;
  wire \s_rdata[19]_i_6_n_0 ;
  wire \s_rdata[19]_i_7_n_0 ;
  wire \s_rdata[19]_i_8_n_0 ;
  wire \s_rdata[1]_i_1_n_0 ;
  wire \s_rdata[1]_i_2_n_0 ;
  wire \s_rdata[1]_i_5_n_0 ;
  wire \s_rdata[1]_i_6_n_0 ;
  wire \s_rdata[1]_i_7_n_0 ;
  wire \s_rdata[1]_i_8_n_0 ;
  wire \s_rdata[20]_i_1_n_0 ;
  wire \s_rdata[20]_i_2_n_0 ;
  wire \s_rdata[20]_i_5_n_0 ;
  wire \s_rdata[20]_i_6_n_0 ;
  wire \s_rdata[20]_i_7_n_0 ;
  wire \s_rdata[20]_i_8_n_0 ;
  wire \s_rdata[21]_i_1_n_0 ;
  wire \s_rdata[21]_i_2_n_0 ;
  wire \s_rdata[21]_i_5_n_0 ;
  wire \s_rdata[21]_i_6_n_0 ;
  wire \s_rdata[21]_i_7_n_0 ;
  wire \s_rdata[21]_i_8_n_0 ;
  wire \s_rdata[22]_i_1_n_0 ;
  wire \s_rdata[22]_i_2_n_0 ;
  wire \s_rdata[22]_i_5_n_0 ;
  wire \s_rdata[22]_i_6_n_0 ;
  wire \s_rdata[22]_i_7_n_0 ;
  wire \s_rdata[22]_i_8_n_0 ;
  wire \s_rdata[23]_i_1_n_0 ;
  wire \s_rdata[23]_i_2_n_0 ;
  wire \s_rdata[23]_i_5_n_0 ;
  wire \s_rdata[23]_i_6_n_0 ;
  wire \s_rdata[23]_i_7_n_0 ;
  wire \s_rdata[23]_i_8_n_0 ;
  wire \s_rdata[24]_i_1_n_0 ;
  wire \s_rdata[24]_i_2_n_0 ;
  wire \s_rdata[24]_i_5_n_0 ;
  wire \s_rdata[24]_i_6_n_0 ;
  wire \s_rdata[24]_i_7_n_0 ;
  wire \s_rdata[24]_i_8_n_0 ;
  wire \s_rdata[25]_i_1_n_0 ;
  wire \s_rdata[25]_i_2_n_0 ;
  wire \s_rdata[25]_i_5_n_0 ;
  wire \s_rdata[25]_i_6_n_0 ;
  wire \s_rdata[25]_i_7_n_0 ;
  wire \s_rdata[25]_i_8_n_0 ;
  wire \s_rdata[26]_i_1_n_0 ;
  wire \s_rdata[26]_i_2_n_0 ;
  wire \s_rdata[26]_i_5_n_0 ;
  wire \s_rdata[26]_i_6_n_0 ;
  wire \s_rdata[26]_i_7_n_0 ;
  wire \s_rdata[26]_i_8_n_0 ;
  wire \s_rdata[27]_i_1_n_0 ;
  wire \s_rdata[27]_i_2_n_0 ;
  wire \s_rdata[27]_i_5_n_0 ;
  wire \s_rdata[27]_i_6_n_0 ;
  wire \s_rdata[27]_i_7_n_0 ;
  wire \s_rdata[27]_i_8_n_0 ;
  wire \s_rdata[28]_i_1_n_0 ;
  wire \s_rdata[28]_i_2_n_0 ;
  wire \s_rdata[28]_i_5_n_0 ;
  wire \s_rdata[28]_i_6_n_0 ;
  wire \s_rdata[28]_i_7_n_0 ;
  wire \s_rdata[28]_i_8_n_0 ;
  wire \s_rdata[29]_i_1_n_0 ;
  wire \s_rdata[29]_i_2_n_0 ;
  wire \s_rdata[29]_i_5_n_0 ;
  wire \s_rdata[29]_i_6_n_0 ;
  wire \s_rdata[29]_i_7_n_0 ;
  wire \s_rdata[29]_i_8_n_0 ;
  wire \s_rdata[2]_i_1_n_0 ;
  wire \s_rdata[2]_i_2_n_0 ;
  wire \s_rdata[2]_i_5_n_0 ;
  wire \s_rdata[2]_i_6_n_0 ;
  wire \s_rdata[2]_i_7_n_0 ;
  wire \s_rdata[2]_i_8_n_0 ;
  wire \s_rdata[30]_i_1_n_0 ;
  wire \s_rdata[30]_i_2_n_0 ;
  wire \s_rdata[30]_i_5_n_0 ;
  wire \s_rdata[30]_i_6_n_0 ;
  wire \s_rdata[30]_i_7_n_0 ;
  wire \s_rdata[30]_i_8_n_0 ;
  wire \s_rdata[31]_i_10_n_0 ;
  wire \s_rdata[31]_i_11_n_0 ;
  wire \s_rdata[31]_i_12_n_0 ;
  wire \s_rdata[31]_i_13_n_0 ;
  wire \s_rdata[31]_i_14_n_0 ;
  wire \s_rdata[31]_i_15_n_0 ;
  wire \s_rdata[31]_i_16_n_0 ;
  wire \s_rdata[31]_i_17_n_0 ;
  wire \s_rdata[31]_i_18_n_0 ;
  wire \s_rdata[31]_i_19_n_0 ;
  wire \s_rdata[31]_i_1_n_0 ;
  wire \s_rdata[31]_i_20_n_0 ;
  wire \s_rdata[31]_i_21_n_0 ;
  wire \s_rdata[31]_i_22_n_0 ;
  wire \s_rdata[31]_i_23_n_0 ;
  wire \s_rdata[31]_i_24_n_0 ;
  wire \s_rdata[31]_i_25_n_0 ;
  wire \s_rdata[31]_i_26_n_0 ;
  wire \s_rdata[31]_i_27_n_0 ;
  wire \s_rdata[31]_i_28_n_0 ;
  wire \s_rdata[31]_i_29_n_0 ;
  wire \s_rdata[31]_i_2_n_0 ;
  wire \s_rdata[31]_i_30_n_0 ;
  wire \s_rdata[31]_i_31_n_0 ;
  wire \s_rdata[31]_i_32_n_0 ;
  wire \s_rdata[31]_i_33_n_0 ;
  wire \s_rdata[31]_i_34_n_0 ;
  wire \s_rdata[31]_i_35_n_0 ;
  wire \s_rdata[31]_i_3_n_0 ;
  wire \s_rdata[31]_i_4_n_0 ;
  wire \s_rdata[31]_i_6_n_0 ;
  wire \s_rdata[31]_i_8_n_0 ;
  wire \s_rdata[31]_i_9_n_0 ;
  wire \s_rdata[3]_i_1_n_0 ;
  wire \s_rdata[3]_i_2_n_0 ;
  wire \s_rdata[3]_i_5_n_0 ;
  wire \s_rdata[3]_i_6_n_0 ;
  wire \s_rdata[3]_i_7_n_0 ;
  wire \s_rdata[3]_i_8_n_0 ;
  wire \s_rdata[4]_i_1_n_0 ;
  wire \s_rdata[4]_i_2_n_0 ;
  wire \s_rdata[4]_i_5_n_0 ;
  wire \s_rdata[4]_i_6_n_0 ;
  wire \s_rdata[4]_i_7_n_0 ;
  wire \s_rdata[4]_i_8_n_0 ;
  wire \s_rdata[5]_i_1_n_0 ;
  wire \s_rdata[5]_i_2_n_0 ;
  wire \s_rdata[5]_i_5_n_0 ;
  wire \s_rdata[5]_i_6_n_0 ;
  wire \s_rdata[5]_i_7_n_0 ;
  wire \s_rdata[5]_i_8_n_0 ;
  wire \s_rdata[6]_i_1_n_0 ;
  wire \s_rdata[6]_i_2_n_0 ;
  wire \s_rdata[6]_i_5_n_0 ;
  wire \s_rdata[6]_i_6_n_0 ;
  wire \s_rdata[6]_i_7_n_0 ;
  wire \s_rdata[6]_i_8_n_0 ;
  wire \s_rdata[7]_i_1_n_0 ;
  wire \s_rdata[7]_i_2_n_0 ;
  wire \s_rdata[7]_i_5_n_0 ;
  wire \s_rdata[7]_i_6_n_0 ;
  wire \s_rdata[7]_i_7_n_0 ;
  wire \s_rdata[7]_i_8_n_0 ;
  wire \s_rdata[8]_i_1_n_0 ;
  wire \s_rdata[8]_i_2_n_0 ;
  wire \s_rdata[8]_i_5_n_0 ;
  wire \s_rdata[8]_i_6_n_0 ;
  wire \s_rdata[8]_i_7_n_0 ;
  wire \s_rdata[8]_i_8_n_0 ;
  wire \s_rdata[9]_i_1_n_0 ;
  wire \s_rdata[9]_i_2_n_0 ;
  wire \s_rdata[9]_i_5_n_0 ;
  wire \s_rdata[9]_i_6_n_0 ;
  wire \s_rdata[9]_i_7_n_0 ;
  wire \s_rdata[9]_i_8_n_0 ;
  wire \s_rdata_reg[0]_i_3_n_0 ;
  wire \s_rdata_reg[0]_i_4_n_0 ;
  wire \s_rdata_reg[10]_i_3_n_0 ;
  wire \s_rdata_reg[10]_i_4_n_0 ;
  wire \s_rdata_reg[11]_i_3_n_0 ;
  wire \s_rdata_reg[11]_i_4_n_0 ;
  wire \s_rdata_reg[12]_i_3_n_0 ;
  wire \s_rdata_reg[12]_i_4_n_0 ;
  wire \s_rdata_reg[13]_i_3_n_0 ;
  wire \s_rdata_reg[13]_i_4_n_0 ;
  wire \s_rdata_reg[14]_i_3_n_0 ;
  wire \s_rdata_reg[14]_i_4_n_0 ;
  wire \s_rdata_reg[15]_i_3_n_0 ;
  wire \s_rdata_reg[15]_i_4_n_0 ;
  wire \s_rdata_reg[16]_i_3_n_0 ;
  wire \s_rdata_reg[16]_i_4_n_0 ;
  wire \s_rdata_reg[17]_i_3_n_0 ;
  wire \s_rdata_reg[17]_i_4_n_0 ;
  wire \s_rdata_reg[18]_i_3_n_0 ;
  wire \s_rdata_reg[18]_i_4_n_0 ;
  wire \s_rdata_reg[19]_i_3_n_0 ;
  wire \s_rdata_reg[19]_i_4_n_0 ;
  wire \s_rdata_reg[1]_i_3_n_0 ;
  wire \s_rdata_reg[1]_i_4_n_0 ;
  wire \s_rdata_reg[20]_i_3_n_0 ;
  wire \s_rdata_reg[20]_i_4_n_0 ;
  wire \s_rdata_reg[21]_i_3_n_0 ;
  wire \s_rdata_reg[21]_i_4_n_0 ;
  wire \s_rdata_reg[22]_i_3_n_0 ;
  wire \s_rdata_reg[22]_i_4_n_0 ;
  wire \s_rdata_reg[23]_i_3_n_0 ;
  wire \s_rdata_reg[23]_i_4_n_0 ;
  wire \s_rdata_reg[24]_i_3_n_0 ;
  wire \s_rdata_reg[24]_i_4_n_0 ;
  wire \s_rdata_reg[25]_i_3_n_0 ;
  wire \s_rdata_reg[25]_i_4_n_0 ;
  wire \s_rdata_reg[26]_i_3_n_0 ;
  wire \s_rdata_reg[26]_i_4_n_0 ;
  wire \s_rdata_reg[27]_i_3_n_0 ;
  wire \s_rdata_reg[27]_i_4_n_0 ;
  wire \s_rdata_reg[28]_i_3_n_0 ;
  wire \s_rdata_reg[28]_i_4_n_0 ;
  wire \s_rdata_reg[29]_i_3_n_0 ;
  wire \s_rdata_reg[29]_i_4_n_0 ;
  wire \s_rdata_reg[2]_i_3_n_0 ;
  wire \s_rdata_reg[2]_i_4_n_0 ;
  wire \s_rdata_reg[30]_i_3_n_0 ;
  wire \s_rdata_reg[30]_i_4_n_0 ;
  wire \s_rdata_reg[31]_i_5_n_0 ;
  wire \s_rdata_reg[31]_i_7_n_0 ;
  wire \s_rdata_reg[3]_i_3_n_0 ;
  wire \s_rdata_reg[3]_i_4_n_0 ;
  wire \s_rdata_reg[4]_i_3_n_0 ;
  wire \s_rdata_reg[4]_i_4_n_0 ;
  wire \s_rdata_reg[5]_i_3_n_0 ;
  wire \s_rdata_reg[5]_i_4_n_0 ;
  wire \s_rdata_reg[6]_i_3_n_0 ;
  wire \s_rdata_reg[6]_i_4_n_0 ;
  wire \s_rdata_reg[7]_i_3_n_0 ;
  wire \s_rdata_reg[7]_i_4_n_0 ;
  wire \s_rdata_reg[8]_i_3_n_0 ;
  wire \s_rdata_reg[8]_i_4_n_0 ;
  wire \s_rdata_reg[9]_i_3_n_0 ;
  wire \s_rdata_reg[9]_i_4_n_0 ;
  wire [5:0]s_rid;
  wire s_rlast_i_1_n_0;
  wire s_rlast_reg_0;
  wire s_rready;
  wire s_rvalid_i_1_n_0;
  wire s_rvalid_reg_0;
  wire [31:0]s_wdata;
  wire s_wlast;
  wire s_wready_i_1_n_0;
  wire s_wready_i_2_n_0;
  wire s_wready_reg_0;
  wire s_wvalid;
  wire [3:0]scan_data;
  wire \scan_data[0]_i_2_n_0 ;
  wire \scan_data[0]_i_3_n_0 ;
  wire \scan_data[1]_i_2_n_0 ;
  wire \scan_data[1]_i_3_n_0 ;
  wire \scan_data[2]_i_2_n_0 ;
  wire \scan_data[2]_i_3_n_0 ;
  wire \scan_data[3]_i_2_n_0 ;
  wire \scan_data[3]_i_3_n_0 ;
  wire [3:0]scan_data_2;
  wire [2:0]sel0;
  wire \state_count[3]_i_1_n_0 ;
  wire \state_count_reg_n_0_[0] ;
  wire \state_count_reg_n_0_[1] ;
  wire \state_count_reg_n_0_[2] ;
  wire \step0_count[0]_i_1_n_0 ;
  wire \step0_count[0]_i_3_n_0 ;
  wire \step0_count_reg[0]_i_2_n_0 ;
  wire \step0_count_reg[0]_i_2_n_1 ;
  wire \step0_count_reg[0]_i_2_n_2 ;
  wire \step0_count_reg[0]_i_2_n_3 ;
  wire \step0_count_reg[0]_i_2_n_4 ;
  wire \step0_count_reg[0]_i_2_n_5 ;
  wire \step0_count_reg[0]_i_2_n_6 ;
  wire \step0_count_reg[0]_i_2_n_7 ;
  wire \step0_count_reg[12]_i_1_n_0 ;
  wire \step0_count_reg[12]_i_1_n_1 ;
  wire \step0_count_reg[12]_i_1_n_2 ;
  wire \step0_count_reg[12]_i_1_n_3 ;
  wire \step0_count_reg[12]_i_1_n_4 ;
  wire \step0_count_reg[12]_i_1_n_5 ;
  wire \step0_count_reg[12]_i_1_n_6 ;
  wire \step0_count_reg[12]_i_1_n_7 ;
  wire \step0_count_reg[16]_i_1_n_1 ;
  wire \step0_count_reg[16]_i_1_n_2 ;
  wire \step0_count_reg[16]_i_1_n_3 ;
  wire \step0_count_reg[16]_i_1_n_4 ;
  wire \step0_count_reg[16]_i_1_n_5 ;
  wire \step0_count_reg[16]_i_1_n_6 ;
  wire \step0_count_reg[16]_i_1_n_7 ;
  wire \step0_count_reg[4]_i_1_n_0 ;
  wire \step0_count_reg[4]_i_1_n_1 ;
  wire \step0_count_reg[4]_i_1_n_2 ;
  wire \step0_count_reg[4]_i_1_n_3 ;
  wire \step0_count_reg[4]_i_1_n_4 ;
  wire \step0_count_reg[4]_i_1_n_5 ;
  wire \step0_count_reg[4]_i_1_n_6 ;
  wire \step0_count_reg[4]_i_1_n_7 ;
  wire \step0_count_reg[8]_i_1_n_0 ;
  wire \step0_count_reg[8]_i_1_n_1 ;
  wire \step0_count_reg[8]_i_1_n_2 ;
  wire \step0_count_reg[8]_i_1_n_3 ;
  wire \step0_count_reg[8]_i_1_n_4 ;
  wire \step0_count_reg[8]_i_1_n_5 ;
  wire \step0_count_reg[8]_i_1_n_6 ;
  wire \step0_count_reg[8]_i_1_n_7 ;
  wire \step0_count_reg_n_0_[0] ;
  wire \step0_count_reg_n_0_[10] ;
  wire \step0_count_reg_n_0_[11] ;
  wire \step0_count_reg_n_0_[12] ;
  wire \step0_count_reg_n_0_[13] ;
  wire \step0_count_reg_n_0_[14] ;
  wire \step0_count_reg_n_0_[15] ;
  wire \step0_count_reg_n_0_[16] ;
  wire \step0_count_reg_n_0_[17] ;
  wire \step0_count_reg_n_0_[18] ;
  wire \step0_count_reg_n_0_[1] ;
  wire \step0_count_reg_n_0_[2] ;
  wire \step0_count_reg_n_0_[3] ;
  wire \step0_count_reg_n_0_[4] ;
  wire \step0_count_reg_n_0_[5] ;
  wire \step0_count_reg_n_0_[6] ;
  wire \step0_count_reg_n_0_[7] ;
  wire \step0_count_reg_n_0_[8] ;
  wire \step0_count_reg_n_0_[9] ;
  wire step0_flag;
  wire step0_flag_i_1_n_0;
  wire step0_sample;
  wire \step1_count[0]_i_1_n_0 ;
  wire \step1_count[0]_i_3_n_0 ;
  wire \step1_count_reg[0]_i_2_n_0 ;
  wire \step1_count_reg[0]_i_2_n_1 ;
  wire \step1_count_reg[0]_i_2_n_2 ;
  wire \step1_count_reg[0]_i_2_n_3 ;
  wire \step1_count_reg[0]_i_2_n_4 ;
  wire \step1_count_reg[0]_i_2_n_5 ;
  wire \step1_count_reg[0]_i_2_n_6 ;
  wire \step1_count_reg[0]_i_2_n_7 ;
  wire \step1_count_reg[12]_i_1_n_0 ;
  wire \step1_count_reg[12]_i_1_n_1 ;
  wire \step1_count_reg[12]_i_1_n_2 ;
  wire \step1_count_reg[12]_i_1_n_3 ;
  wire \step1_count_reg[12]_i_1_n_4 ;
  wire \step1_count_reg[12]_i_1_n_5 ;
  wire \step1_count_reg[12]_i_1_n_6 ;
  wire \step1_count_reg[12]_i_1_n_7 ;
  wire \step1_count_reg[16]_i_1_n_1 ;
  wire \step1_count_reg[16]_i_1_n_2 ;
  wire \step1_count_reg[16]_i_1_n_3 ;
  wire \step1_count_reg[16]_i_1_n_4 ;
  wire \step1_count_reg[16]_i_1_n_5 ;
  wire \step1_count_reg[16]_i_1_n_6 ;
  wire \step1_count_reg[16]_i_1_n_7 ;
  wire \step1_count_reg[4]_i_1_n_0 ;
  wire \step1_count_reg[4]_i_1_n_1 ;
  wire \step1_count_reg[4]_i_1_n_2 ;
  wire \step1_count_reg[4]_i_1_n_3 ;
  wire \step1_count_reg[4]_i_1_n_4 ;
  wire \step1_count_reg[4]_i_1_n_5 ;
  wire \step1_count_reg[4]_i_1_n_6 ;
  wire \step1_count_reg[4]_i_1_n_7 ;
  wire \step1_count_reg[8]_i_1_n_0 ;
  wire \step1_count_reg[8]_i_1_n_1 ;
  wire \step1_count_reg[8]_i_1_n_2 ;
  wire \step1_count_reg[8]_i_1_n_3 ;
  wire \step1_count_reg[8]_i_1_n_4 ;
  wire \step1_count_reg[8]_i_1_n_5 ;
  wire \step1_count_reg[8]_i_1_n_6 ;
  wire \step1_count_reg[8]_i_1_n_7 ;
  wire \step1_count_reg_n_0_[0] ;
  wire \step1_count_reg_n_0_[10] ;
  wire \step1_count_reg_n_0_[11] ;
  wire \step1_count_reg_n_0_[12] ;
  wire \step1_count_reg_n_0_[13] ;
  wire \step1_count_reg_n_0_[14] ;
  wire \step1_count_reg_n_0_[15] ;
  wire \step1_count_reg_n_0_[16] ;
  wire \step1_count_reg_n_0_[17] ;
  wire \step1_count_reg_n_0_[18] ;
  wire \step1_count_reg_n_0_[1] ;
  wire \step1_count_reg_n_0_[2] ;
  wire \step1_count_reg_n_0_[3] ;
  wire \step1_count_reg_n_0_[4] ;
  wire \step1_count_reg_n_0_[5] ;
  wire \step1_count_reg_n_0_[6] ;
  wire \step1_count_reg_n_0_[7] ;
  wire \step1_count_reg_n_0_[8] ;
  wire \step1_count_reg_n_0_[9] ;
  wire step1_flag;
  wire step1_flag_i_1_n_0;
  wire step1_sample;
  wire [7:0]switch;
  wire \timer[0]_i_2_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[24]_i_2_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[28]_i_2_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_5_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_1_n_0 ;
  wire \timer_reg[0]_i_1_n_1 ;
  wire \timer_reg[0]_i_1_n_2 ;
  wire \timer_reg[0]_i_1_n_3 ;
  wire \timer_reg[0]_i_1_n_4 ;
  wire \timer_reg[0]_i_1_n_5 ;
  wire \timer_reg[0]_i_1_n_6 ;
  wire \timer_reg[0]_i_1_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_1 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_1 ;
  wire \timer_reg[20]_i_1_n_2 ;
  wire \timer_reg[20]_i_1_n_3 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_1 ;
  wire \timer_reg[24]_i_1_n_2 ;
  wire \timer_reg[24]_i_1_n_3 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[28]_i_1_n_1 ;
  wire \timer_reg[28]_i_1_n_2 ;
  wire \timer_reg[28]_i_1_n_3 ;
  wire \timer_reg[28]_i_1_n_4 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire write;
  wire write_dma_end;
  wire write_i_1_n_0;
  wire write_led;
  wire write_led_rg0;
  wire write_led_rg1;
  wire write_num;
  wire write_order_reg;
  wire write_timer__8;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_key_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hF0FCE0CC)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(key_start1__1),
        .I3(key_sample),
        .I4(p_1_in6_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FF33FF33FF32)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_1_in10_in),
        .I1(key_start1__1),
        .I2(p_1_in6_in),
        .I3(\FSM_onehot_state[1]_i_3_n_0 ),
        .I4(p_1_in11_in),
        .I5(p_1_in9_in),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .O(key_start1__1));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .I5(key_sample),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_1_in9_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(p_1_in10_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .I5(key_sample),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(s_wready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(s_wready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(s_wready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in9_in),
        .R(s_wready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_1_in10_in),
        .R(s_wready_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:100000,iSTATE0:010000,iSTATE1:001000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(aclk),
        .CE(p_0_in13_in),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(p_1_in11_in),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    R_or_W_i_1
       (.I0(s_arvalid),
        .I1(R_or_W),
        .I2(s_awvalid),
        .O(ar_enter));
  FDRE R_or_W_reg
       (.C(aclk),
        .CE(busy01_out),
        .D(ar_enter),
        .Q(R_or_W),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_col[0]_INST_0 
       (.I0(p_1_in9_in),
        .I1(p_1_in6_in),
        .I2(p_1_in10_in),
        .O(btn_key_col[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_col[1]_INST_0 
       (.I0(p_1_in9_in),
        .I1(p_1_in6_in),
        .I2(p_1_in11_in),
        .O(btn_key_col[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_col[2]_INST_0 
       (.I0(p_1_in10_in),
        .I1(p_1_in6_in),
        .I2(p_1_in11_in),
        .O(btn_key_col[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_col[3]_INST_0 
       (.I0(p_1_in10_in),
        .I1(p_1_in9_in),
        .I2(p_1_in11_in),
        .O(btn_key_col[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \btn_key_r[0]_i_1 
       (.I0(btn_key_r[0]),
        .I1(\btn_key_r[15]_i_5_n_0 ),
        .I2(btn_key_tmp1),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .O(\btn_key_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[10]_i_1 
       (.I0(btn_key_r[10]),
        .I1(p_0_in7_in),
        .I2(p_1_in9_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[10]_i_2_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[10]_i_2 
       (.I0(\btn_key_r[8]_i_2_n_0 ),
        .I1(\btn_key_r[11]_i_5_n_0 ),
        .I2(\btn_key_r[10]_i_3_n_0 ),
        .O(\btn_key_r[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0AA0C000C0000000)) 
    \btn_key_r[10]_i_3 
       (.I0(p_1_in11_in),
        .I1(p_1_in10_in),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(\btn_key_r[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[11]_i_1 
       (.I0(btn_key_r[11]),
        .I1(p_0_in7_in),
        .I2(p_1_in6_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[11]_i_3_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \btn_key_r[11]_i_2 
       (.I0(btn_key_row[3]),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .O(p_0_in7_in));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[11]_i_3 
       (.I0(\btn_key_r[9]_i_2_n_0 ),
        .I1(\btn_key_r[11]_i_4_n_0 ),
        .I2(\btn_key_r[11]_i_5_n_0 ),
        .O(\btn_key_r[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0AA0C000C0000000)) 
    \btn_key_r[11]_i_4 
       (.I0(p_1_in9_in),
        .I1(p_1_in6_in),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(\btn_key_r[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0AA0C000C0000000)) 
    \btn_key_r[11]_i_5 
       (.I0(p_1_in10_in),
        .I1(p_1_in9_in),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[0]),
        .I5(btn_key_row[1]),
        .O(\btn_key_r[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[12]_i_1 
       (.I0(btn_key_r[12]),
        .I1(p_0_in5_in),
        .I2(p_1_in11_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[12]_i_2_n_0 ),
        .O(\btn_key_r[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h28800000)) 
    \btn_key_r[12]_i_2 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[3]),
        .O(\btn_key_r[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[13]_i_1 
       (.I0(btn_key_r[13]),
        .I1(p_0_in5_in),
        .I2(p_1_in10_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[13]_i_2_n_0 ),
        .O(\btn_key_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6880688028800000)) 
    \btn_key_r[13]_i_2 
       (.I0(btn_key_row[3]),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .I4(p_1_in10_in),
        .I5(p_1_in11_in),
        .O(\btn_key_r[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[14]_i_1 
       (.I0(btn_key_r[14]),
        .I1(p_0_in5_in),
        .I2(p_1_in9_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[14]_i_2_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[14]_i_2 
       (.I0(\btn_key_r[12]_i_2_n_0 ),
        .I1(\btn_key_r[15]_i_10_n_0 ),
        .I2(\btn_key_r[14]_i_3_n_0 ),
        .O(\btn_key_r[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC0C000A0000000)) 
    \btn_key_r[14]_i_3 
       (.I0(p_1_in11_in),
        .I1(p_1_in10_in),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[2]),
        .I5(btn_key_row[3]),
        .O(\btn_key_r[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[15]_i_1 
       (.I0(btn_key_r[15]),
        .I1(p_0_in5_in),
        .I2(p_1_in6_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[15]_i_4_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CC0C000A0000000)) 
    \btn_key_r[15]_i_10 
       (.I0(p_1_in10_in),
        .I1(p_1_in9_in),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[2]),
        .I5(btn_key_row[3]),
        .O(\btn_key_r[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \btn_key_r[15]_i_11 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\btn_key_r[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \btn_key_r[15]_i_12 
       (.I0(p_1_in9_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\btn_key_r[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \btn_key_r[15]_i_13 
       (.I0(p_1_in6_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(\btn_key_r[15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \btn_key_r[15]_i_2 
       (.I0(btn_key_row[2]),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[0]),
        .O(p_0_in5_in));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h5557)) 
    \btn_key_r[15]_i_3 
       (.I0(aresetn),
        .I1(\btn_key_r[15]_i_6_n_0 ),
        .I2(\btn_key_r[15]_i_7_n_0 ),
        .I3(\btn_key_r[15]_i_8_n_0 ),
        .O(\btn_key_r[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[15]_i_4 
       (.I0(\btn_key_r[13]_i_2_n_0 ),
        .I1(\btn_key_r[15]_i_9_n_0 ),
        .I2(\btn_key_r[15]_i_10_n_0 ),
        .O(\btn_key_r[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \btn_key_r[15]_i_5 
       (.I0(\btn_key_r[15]_i_6_n_0 ),
        .I1(\btn_key_r[15]_i_7_n_0 ),
        .I2(\btn_key_r[15]_i_8_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\btn_key_r[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAFAFAE)) 
    \btn_key_r[15]_i_6 
       (.I0(p_1_in9_in),
        .I1(p_1_in6_in),
        .I2(key_start1__1),
        .I3(p_1_in11_in),
        .I4(p_1_in10_in),
        .I5(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(\btn_key_r[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \btn_key_r[15]_i_7 
       (.I0(\FSM_onehot_state[5]_i_1_n_0 ),
        .I1(p_1_in10_in),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\btn_key_r[15]_i_11_n_0 ),
        .I4(\btn_key_r[15]_i_12_n_0 ),
        .I5(\btn_key_r[15]_i_13_n_0 ),
        .O(\btn_key_r[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBBFFFFFFBA)) 
    \btn_key_r[15]_i_8 
       (.I0(p_1_in10_in),
        .I1(key_start1__1),
        .I2(p_1_in9_in),
        .I3(\FSM_onehot_state[1]_i_3_n_0 ),
        .I4(p_1_in11_in),
        .I5(p_1_in6_in),
        .O(\btn_key_r[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0CC0C000A0000000)) 
    \btn_key_r[15]_i_9 
       (.I0(p_1_in9_in),
        .I1(p_1_in6_in),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[2]),
        .I5(btn_key_row[3]),
        .O(\btn_key_r[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[1]_i_1 
       (.I0(btn_key_r[1]),
        .I1(\btn_key_r[1]_i_2_n_0 ),
        .I2(p_1_in10_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[3]_i_4_n_0 ),
        .O(\btn_key_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[1]_i_2 
       (.I0(btn_key_row[0]),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .O(\btn_key_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A000A000A00CA)) 
    \btn_key_r[2]_i_1 
       (.I0(btn_key_r[2]),
        .I1(btn_key_tmp9),
        .I2(\btn_key_r[15]_i_5_n_0 ),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[2]_i_3_n_0 ),
        .I5(\btn_key_r[3]_i_4_n_0 ),
        .O(\btn_key_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[2]_i_2 
       (.I0(p_1_in9_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .O(btn_key_tmp9));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h28808000)) 
    \btn_key_r[2]_i_3 
       (.I0(p_1_in10_in),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .O(\btn_key_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C0A0A0A0A)) 
    \btn_key_r[3]_i_1 
       (.I0(btn_key_r[3]),
        .I1(btn_key_tmp13),
        .I2(\btn_key_r[15]_i_3_n_0 ),
        .I3(\btn_key_r[3]_i_3_n_0 ),
        .I4(\btn_key_r[3]_i_4_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[3]_i_2 
       (.I0(p_1_in6_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .O(btn_key_tmp13));
  LUT6 #(
    .INIT(64'h3CC0C00028808000)) 
    \btn_key_r[3]_i_3 
       (.I0(p_1_in10_in),
        .I1(btn_key_row[2]),
        .I2(btn_key_row[3]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(p_1_in9_in),
        .O(\btn_key_r[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28808000)) 
    \btn_key_r[3]_i_4 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .O(\btn_key_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A0C0A000000000)) 
    \btn_key_r[4]_i_1 
       (.I0(btn_key_r[4]),
        .I1(btn_key_tmp2),
        .I2(\btn_key_r[4]_i_3_n_0 ),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(btn_key_tmp1),
        .I5(aresetn),
        .O(\btn_key_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[4]_i_2 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[0]),
        .I4(btn_key_row[1]),
        .O(btn_key_tmp2));
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[4]_i_3 
       (.I0(\btn_key_r[15]_i_8_n_0 ),
        .I1(\btn_key_r[15]_i_7_n_0 ),
        .I2(\btn_key_r[15]_i_6_n_0 ),
        .O(\btn_key_r[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \btn_key_r[4]_i_4 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .O(btn_key_tmp1));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[5]_i_1 
       (.I0(btn_key_r[5]),
        .I1(p_0_in8_in),
        .I2(p_1_in10_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[5]_i_2_n_0 ),
        .O(\btn_key_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3880800028808000)) 
    \btn_key_r[5]_i_2 
       (.I0(p_1_in11_in),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[1]),
        .I3(btn_key_row[2]),
        .I4(btn_key_row[3]),
        .I5(p_1_in10_in),
        .O(\btn_key_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[6]_i_1 
       (.I0(btn_key_r[6]),
        .I1(p_0_in8_in),
        .I2(p_1_in9_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[6]_i_2_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[6]_i_2 
       (.I0(btn_key_tmp1),
        .I1(\btn_key_r[7]_i_5_n_0 ),
        .I2(\btn_key_r[6]_i_3_n_0 ),
        .O(\btn_key_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CC0800000008000)) 
    \btn_key_r[6]_i_3 
       (.I0(p_1_in10_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(p_1_in11_in),
        .O(\btn_key_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA00AA)) 
    \btn_key_r[7]_i_1 
       (.I0(btn_key_r[7]),
        .I1(p_0_in8_in),
        .I2(p_1_in6_in),
        .I3(\btn_key_r[15]_i_3_n_0 ),
        .I4(\btn_key_r[7]_i_3_n_0 ),
        .I5(\btn_key_r[15]_i_5_n_0 ),
        .O(\btn_key_r[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \btn_key_r[7]_i_2 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .O(p_0_in8_in));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \btn_key_r[7]_i_3 
       (.I0(\btn_key_r[5]_i_2_n_0 ),
        .I1(\btn_key_r[7]_i_4_n_0 ),
        .I2(\btn_key_r[7]_i_5_n_0 ),
        .O(\btn_key_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3CC0800000008000)) 
    \btn_key_r[7]_i_4 
       (.I0(p_1_in6_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(p_1_in9_in),
        .O(\btn_key_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3CC0800000008000)) 
    \btn_key_r[7]_i_5 
       (.I0(p_1_in9_in),
        .I1(btn_key_row[3]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[1]),
        .I4(btn_key_row[0]),
        .I5(p_1_in10_in),
        .O(\btn_key_r[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[8]_i_1 
       (.I0(btn_key_r[8]),
        .I1(p_0_in7_in),
        .I2(p_1_in11_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[8]_i_2_n_0 ),
        .O(\btn_key_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h60000000)) 
    \btn_key_r[8]_i_2 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(p_1_in11_in),
        .O(\btn_key_r[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA0000C0AA)) 
    \btn_key_r[9]_i_1 
       (.I0(btn_key_r[9]),
        .I1(p_0_in7_in),
        .I2(p_1_in10_in),
        .I3(\btn_key_r[15]_i_5_n_0 ),
        .I4(\btn_key_r[15]_i_3_n_0 ),
        .I5(\btn_key_r[9]_i_2_n_0 ),
        .O(\btn_key_r[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6880688060000000)) 
    \btn_key_r[9]_i_2 
       (.I0(btn_key_row[1]),
        .I1(btn_key_row[0]),
        .I2(btn_key_row[2]),
        .I3(btn_key_row[3]),
        .I4(p_1_in10_in),
        .I5(p_1_in11_in),
        .O(\btn_key_r[9]_i_2_n_0 ));
  FDRE \btn_key_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[0]_i_1_n_0 ),
        .Q(btn_key_r[0]),
        .R(1'b0));
  FDRE \btn_key_r_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[10]_i_1_n_0 ),
        .Q(btn_key_r[10]),
        .R(1'b0));
  FDRE \btn_key_r_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[11]_i_1_n_0 ),
        .Q(btn_key_r[11]),
        .R(1'b0));
  FDRE \btn_key_r_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[12]_i_1_n_0 ),
        .Q(btn_key_r[12]),
        .R(1'b0));
  FDRE \btn_key_r_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[13]_i_1_n_0 ),
        .Q(btn_key_r[13]),
        .R(1'b0));
  FDRE \btn_key_r_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[14]_i_1_n_0 ),
        .Q(btn_key_r[14]),
        .R(1'b0));
  FDRE \btn_key_r_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[15]_i_1_n_0 ),
        .Q(btn_key_r[15]),
        .R(1'b0));
  FDRE \btn_key_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[1]_i_1_n_0 ),
        .Q(btn_key_r[1]),
        .R(1'b0));
  FDRE \btn_key_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[2]_i_1_n_0 ),
        .Q(btn_key_r[2]),
        .R(1'b0));
  FDRE \btn_key_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[3]_i_1_n_0 ),
        .Q(btn_key_r[3]),
        .R(1'b0));
  FDRE \btn_key_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[4]_i_1_n_0 ),
        .Q(btn_key_r[4]),
        .R(1'b0));
  FDRE \btn_key_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[5]_i_1_n_0 ),
        .Q(btn_key_r[5]),
        .R(1'b0));
  FDRE \btn_key_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[6]_i_1_n_0 ),
        .Q(btn_key_r[6]),
        .R(1'b0));
  FDRE \btn_key_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[7]_i_1_n_0 ),
        .Q(btn_key_r[7]),
        .R(1'b0));
  FDRE \btn_key_r_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[8]_i_1_n_0 ),
        .Q(btn_key_r[8]),
        .R(1'b0));
  FDRE \btn_key_r_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\btn_key_r[9]_i_1_n_0 ),
        .Q(btn_key_r[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    btn_step0_r_i_1
       (.I0(btn_step[0]),
        .I1(step0_sample),
        .I2(btn_step0_r),
        .O(btn_step0_r_i_1_n_0));
  FDSE btn_step0_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_step0_r_i_1_n_0),
        .Q(btn_step0_r),
        .S(s_wready_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    btn_step1_r_i_1
       (.I0(btn_step[1]),
        .I1(step1_sample),
        .I2(btn_step1_r),
        .O(btn_step1_r_i_1_n_0));
  FDSE btn_step1_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_step1_r_i_1_n_0),
        .Q(btn_step1_r),
        .S(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[0]_i_1 
       (.I0(s_araddr[0]),
        .I1(s_awaddr[0]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[10]_i_1 
       (.I0(s_araddr[10]),
        .I1(s_awaddr[10]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[11]_i_1 
       (.I0(s_araddr[11]),
        .I1(s_awaddr[11]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[12]_i_1 
       (.I0(s_araddr[12]),
        .I1(s_awaddr[12]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[13]_i_1 
       (.I0(s_araddr[13]),
        .I1(s_awaddr[13]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[14]_i_1 
       (.I0(s_araddr[14]),
        .I1(s_awaddr[14]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[15]_i_1 
       (.I0(s_araddr[15]),
        .I1(s_awaddr[15]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[1]_i_1 
       (.I0(s_araddr[1]),
        .I1(s_awaddr[1]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[2]_i_1 
       (.I0(s_araddr[2]),
        .I1(s_awaddr[2]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[3]_i_1 
       (.I0(s_araddr[3]),
        .I1(s_awaddr[3]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[4]_i_1 
       (.I0(s_araddr[4]),
        .I1(s_awaddr[4]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[5]_i_1 
       (.I0(s_araddr[5]),
        .I1(s_awaddr[5]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[6]_i_1 
       (.I0(s_araddr[6]),
        .I1(s_awaddr[6]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[7]_i_1 
       (.I0(s_araddr[7]),
        .I1(s_awaddr[7]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[8]_i_1 
       (.I0(s_araddr[8]),
        .I1(s_awaddr[8]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hCCACACAC)) 
    \buf_addr[9]_i_1 
       (.I0(s_araddr[9]),
        .I1(s_awaddr[9]),
        .I2(s_arvalid),
        .I3(R_or_W),
        .I4(s_awvalid),
        .O(p_1_in[9]));
  FDRE \buf_addr_reg[0] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[0]),
        .Q(\buf_addr_reg_n_0_[0] ),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[10] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[10]),
        .Q(p_1_in_0[8]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[11] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[11]),
        .Q(p_1_in_0[9]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[12] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[12]),
        .Q(p_1_in_0[10]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[13] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[13]),
        .Q(p_1_in_0[11]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[14] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[14]),
        .Q(p_1_in_0[12]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[15] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[15]),
        .Q(p_1_in_0[13]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[1] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[1]),
        .Q(\buf_addr_reg_n_0_[1] ),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[2] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[2]),
        .Q(p_1_in_0[0]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[3] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[3]),
        .Q(p_1_in_0[1]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[4] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[4]),
        .Q(p_1_in_0[2]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[5] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[5]),
        .Q(p_1_in_0[3]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[6] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[6]),
        .Q(p_1_in_0[4]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[7] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[7]),
        .Q(p_1_in_0[5]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[8] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[8]),
        .Q(p_1_in_0[6]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_addr_reg[9] 
       (.C(aclk),
        .CE(busy01_out),
        .D(p_1_in[9]),
        .Q(p_1_in_0[7]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[0]_i_1 
       (.I0(s_arid[0]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[0]),
        .O(\buf_id[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[1]_i_1 
       (.I0(s_arid[1]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[1]),
        .O(\buf_id[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[2]_i_1 
       (.I0(s_arid[2]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[2]),
        .O(\buf_id[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[3]_i_1 
       (.I0(s_arid[3]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[3]),
        .O(\buf_id[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[4]_i_1 
       (.I0(s_arid[4]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[4]),
        .O(\buf_id[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \buf_id[5]_i_1 
       (.I0(s_arvalid),
        .I1(busy),
        .I2(s_awvalid),
        .O(busy01_out));
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    \buf_id[5]_i_2 
       (.I0(s_arid[5]),
        .I1(s_arvalid),
        .I2(R_or_W),
        .I3(s_awvalid),
        .I4(s_awid[5]),
        .O(\buf_id[5]_i_2_n_0 ));
  FDRE \buf_id_reg[0] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[0]_i_1_n_0 ),
        .Q(s_rid[0]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_id_reg[1] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[1]_i_1_n_0 ),
        .Q(s_rid[1]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_id_reg[2] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[2]_i_1_n_0 ),
        .Q(s_rid[2]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_id_reg[3] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[3]_i_1_n_0 ),
        .Q(s_rid[3]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_id_reg[4] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[4]_i_1_n_0 ),
        .Q(s_rid[4]),
        .R(s_wready_i_1_n_0));
  FDRE \buf_id_reg[5] 
       (.C(aclk),
        .CE(busy01_out),
        .D(\buf_id[5]_i_2_n_0 ),
        .Q(s_rid[5]),
        .R(s_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h3232323232FEFEFE)) 
    busy_i_1
       (.I0(s_arvalid),
        .I1(busy),
        .I2(s_awvalid),
        .I3(s_bvalid),
        .I4(s_bready),
        .I5(r_retire__1),
        .O(busy_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    busy_i_2
       (.I0(s_rvalid_reg_0),
        .I1(s_rready),
        .I2(s_rlast_reg_0),
        .O(r_retire__1));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(s_wready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(s_wready_i_1_n_0));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE \count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(s_wready_i_1_n_0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE \count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(s_wready_i_1_n_0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({sel0,\count_reg_n_0_[16] }));
  FDRE \count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(s_wready_i_1_n_0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE \count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(s_wready_i_1_n_0));
  FDRE \count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(s_wready_i_1_n_0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE \count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \cr00[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[2]),
        .O(\cr00[31]_i_1_n_0 ));
  FDRE \cr00_reg[0] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr00[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[10] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr00[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[11] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr00[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[12] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr00[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[13] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr00[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[14] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr00[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[15] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr00[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[16] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr00[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[17] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr00[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[18] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr00[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[19] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr00[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[1] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr00[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[20] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr00[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[21] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr00[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[22] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr00[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[23] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr00[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[24] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr00[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[25] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr00[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[26] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr00[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[27] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr00[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[28] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr00[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[29] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr00[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[2] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr00[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[30] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr00[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[31] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr00[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[3] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr00[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[4] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr00[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[5] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr00[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[6] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr00[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[7] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr00[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[8] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr00[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr00_reg[9] 
       (.C(aclk),
        .CE(\cr00[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr00[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cr01[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[2]),
        .I4(p_1_in_0[1]),
        .O(\cr01[31]_i_1_n_0 ));
  FDRE \cr01_reg[0] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr01[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[10] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr01[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[11] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr01[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[12] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr01[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[13] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr01[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[14] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr01[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[15] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr01[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[16] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr01[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[17] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr01[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[18] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr01[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[19] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr01[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[1] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr01[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[20] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr01[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[21] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr01[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[22] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr01[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[23] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr01[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[24] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr01[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[25] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr01[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[26] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr01[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[27] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr01[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[28] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr01[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[29] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr01[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[2] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr01[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[30] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr01[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[31] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr01[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[3] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr01[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[4] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr01[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[5] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr01[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[6] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr01[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[7] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr01[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[8] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr01[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr01_reg[9] 
       (.C(aclk),
        .CE(\cr01[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr01[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cr02[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[2]),
        .O(\cr02[31]_i_1_n_0 ));
  FDRE \cr02_reg[0] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr02[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[10] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr02[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[11] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr02[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[12] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr02[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[13] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr02[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[14] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr02[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[15] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr02[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[16] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr02[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[17] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr02[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[18] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr02[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[19] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr02[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[1] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr02[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[20] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr02[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[21] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr02[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[22] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr02[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[23] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr02[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[24] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr02[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[25] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr02[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[26] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr02[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[27] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr02[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[28] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr02[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[29] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr02[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[2] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr02[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[30] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr02[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[31] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr02[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[3] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr02[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[4] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr02[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[5] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr02[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[6] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr02[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[7] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr02[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[8] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr02[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr02_reg[9] 
       (.C(aclk),
        .CE(\cr02[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr02[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \cr03[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[2]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[1]),
        .O(\cr03[31]_i_1_n_0 ));
  FDRE \cr03_reg[0] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr03[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[10] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr03[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[11] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr03[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[12] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr03[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[13] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr03[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[14] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr03[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[15] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr03[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[16] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr03[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[17] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr03[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[18] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr03[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[19] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr03[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[1] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr03[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[20] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr03[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[21] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr03[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[22] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr03[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[23] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr03[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[24] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr03[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[25] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr03[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[26] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr03[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[27] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr03[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[28] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr03[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[29] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr03[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[2] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr03[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[30] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr03[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[31] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr03[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[3] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr03[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[4] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr03[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[5] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr03[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[6] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr03[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[7] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr03[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[8] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr03[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr03_reg[9] 
       (.C(aclk),
        .CE(\cr03[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr03[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cr04[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[2]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[1]),
        .O(\cr04[31]_i_1_n_0 ));
  FDRE \cr04_reg[0] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr04[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[10] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr04[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[11] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr04[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[12] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr04[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[13] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr04[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[14] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr04[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[15] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr04[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[16] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr04[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[17] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr04[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[18] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr04[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[19] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr04[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[1] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr04[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[20] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr04[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[21] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr04[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[22] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr04[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[23] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr04[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[24] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr04[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[25] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr04[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[26] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr04[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[27] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr04[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[28] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr04[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[29] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr04[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[2] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr04[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[30] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr04[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[31] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr04[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[3] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr04[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[4] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr04[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[5] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr04[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[6] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr04[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[7] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr04[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[8] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr04[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr04_reg[9] 
       (.C(aclk),
        .CE(\cr04[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr04[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \cr05[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[2]),
        .O(\cr05[31]_i_1_n_0 ));
  FDRE \cr05_reg[0] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr05[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[10] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr05[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[11] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr05[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[12] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr05[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[13] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr05[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[14] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr05[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[15] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr05[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[16] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr05[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[17] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr05[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[18] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr05[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[19] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr05[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[1] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr05[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[20] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr05[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[21] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr05[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[22] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr05[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[23] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr05[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[24] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr05[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[25] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr05[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[26] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr05[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[27] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr05[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[28] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr05[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[29] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr05[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[2] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr05[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[30] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr05[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[31] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr05[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[3] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr05[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[4] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr05[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[5] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr05[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[6] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr05[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[7] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr05[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[8] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr05[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr05_reg[9] 
       (.C(aclk),
        .CE(\cr05[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr05[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \cr06[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[2]),
        .I4(p_1_in_0[1]),
        .O(\cr06[31]_i_1_n_0 ));
  FDRE \cr06_reg[0] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr06[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[10] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr06[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[11] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr06[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[12] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr06[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[13] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr06[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[14] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr06[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[15] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr06[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[16] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr06[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[17] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr06[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[18] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr06[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[19] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr06[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[1] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr06[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[20] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr06[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[21] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr06[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[22] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr06[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[23] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr06[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[24] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr06[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[25] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr06[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[26] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr06[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[27] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr06[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[28] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr06[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[29] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr06[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[2] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr06[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[30] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr06[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[31] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr06[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[3] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr06[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[4] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr06[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[5] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr06[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[6] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr06[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[7] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr06[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[8] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr06[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr06_reg[9] 
       (.C(aclk),
        .CE(\cr06[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr06[9]),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \cr07[31]_i_1 
       (.I0(p_17_in),
        .I1(\s_rdata[31]_i_6_n_0 ),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[0]),
        .I4(p_1_in_0[2]),
        .O(\cr07[31]_i_1_n_0 ));
  FDRE \cr07_reg[0] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[0]),
        .Q(cr07[0]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[10] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[10]),
        .Q(cr07[10]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[11] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[11]),
        .Q(cr07[11]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[12] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[12]),
        .Q(cr07[12]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[13] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[13]),
        .Q(cr07[13]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[14] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[14]),
        .Q(cr07[14]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[15] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[15]),
        .Q(cr07[15]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[16] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[16]),
        .Q(cr07[16]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[17] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[17]),
        .Q(cr07[17]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[18] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[18]),
        .Q(cr07[18]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[19] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[19]),
        .Q(cr07[19]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[1] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[1]),
        .Q(cr07[1]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[20] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[20]),
        .Q(cr07[20]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[21] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[21]),
        .Q(cr07[21]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[22] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[22]),
        .Q(cr07[22]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[23] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[23]),
        .Q(cr07[23]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[24] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[24]),
        .Q(cr07[24]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[25] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[25]),
        .Q(cr07[25]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[26] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[26]),
        .Q(cr07[26]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[27] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[27]),
        .Q(cr07[27]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[28] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[28]),
        .Q(cr07[28]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[29] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[29]),
        .Q(cr07[29]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[2] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[2]),
        .Q(cr07[2]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[30] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[30]),
        .Q(cr07[30]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[31] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[31]),
        .Q(cr07[31]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[3] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[3]),
        .Q(cr07[3]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[4] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[4]),
        .Q(cr07[4]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[5] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[5]),
        .Q(cr07[5]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[6] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[6]),
        .Q(cr07[6]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[7] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[7]),
        .Q(cr07[7]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[8] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[8]),
        .Q(cr07[8]),
        .R(s_wready_i_1_n_0));
  FDRE \cr07_reg[9] 
       (.C(aclk),
        .CE(\cr07[31]_i_1_n_0 ),
        .D(s_wdata[9]),
        .Q(cr07[9]),
        .R(s_wready_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \key_count[0]_i_1 
       (.I0(aresetn),
        .I1(key_flag),
        .O(\key_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \key_count[0]_i_3 
       (.I0(\key_count_reg_n_0_[0] ),
        .O(\key_count[0]_i_3_n_0 ));
  FDRE \key_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_7 ),
        .Q(\key_count_reg_n_0_[0] ),
        .R(\key_count[0]_i_1_n_0 ));
  CARRY4 \key_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\key_count_reg[0]_i_2_n_0 ,\key_count_reg[0]_i_2_n_1 ,\key_count_reg[0]_i_2_n_2 ,\key_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\key_count_reg[0]_i_2_n_4 ,\key_count_reg[0]_i_2_n_5 ,\key_count_reg[0]_i_2_n_6 ,\key_count_reg[0]_i_2_n_7 }),
        .S({\key_count_reg_n_0_[3] ,\key_count_reg_n_0_[2] ,\key_count_reg_n_0_[1] ,\key_count[0]_i_3_n_0 }));
  FDRE \key_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[10] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[11] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[12] ),
        .R(\key_count[0]_i_1_n_0 ));
  CARRY4 \key_count_reg[12]_i_1 
       (.CI(\key_count_reg[8]_i_1_n_0 ),
        .CO({\key_count_reg[12]_i_1_n_0 ,\key_count_reg[12]_i_1_n_1 ,\key_count_reg[12]_i_1_n_2 ,\key_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[12]_i_1_n_4 ,\key_count_reg[12]_i_1_n_5 ,\key_count_reg[12]_i_1_n_6 ,\key_count_reg[12]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[15] ,\key_count_reg_n_0_[14] ,\key_count_reg_n_0_[13] ,\key_count_reg_n_0_[12] }));
  FDRE \key_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[13] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[14] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[12]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[15] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[16] ),
        .R(\key_count[0]_i_1_n_0 ));
  CARRY4 \key_count_reg[16]_i_1 
       (.CI(\key_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_key_count_reg[16]_i_1_CO_UNCONNECTED [3],\key_count_reg[16]_i_1_n_1 ,\key_count_reg[16]_i_1_n_2 ,\key_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[16]_i_1_n_4 ,\key_count_reg[16]_i_1_n_5 ,\key_count_reg[16]_i_1_n_6 ,\key_count_reg[16]_i_1_n_7 }),
        .S({key_sample,\key_count_reg_n_0_[18] ,\key_count_reg_n_0_[17] ,\key_count_reg_n_0_[16] }));
  FDRE \key_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[17] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[18] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[16]_i_1_n_4 ),
        .Q(key_sample),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_6 ),
        .Q(\key_count_reg_n_0_[1] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_5 ),
        .Q(\key_count_reg_n_0_[2] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[0]_i_2_n_4 ),
        .Q(\key_count_reg_n_0_[3] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[4] ),
        .R(\key_count[0]_i_1_n_0 ));
  CARRY4 \key_count_reg[4]_i_1 
       (.CI(\key_count_reg[0]_i_2_n_0 ),
        .CO({\key_count_reg[4]_i_1_n_0 ,\key_count_reg[4]_i_1_n_1 ,\key_count_reg[4]_i_1_n_2 ,\key_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[4]_i_1_n_4 ,\key_count_reg[4]_i_1_n_5 ,\key_count_reg[4]_i_1_n_6 ,\key_count_reg[4]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[7] ,\key_count_reg_n_0_[6] ,\key_count_reg_n_0_[5] ,\key_count_reg_n_0_[4] }));
  FDRE \key_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[5] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_5 ),
        .Q(\key_count_reg_n_0_[6] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[4]_i_1_n_4 ),
        .Q(\key_count_reg_n_0_[7] ),
        .R(\key_count[0]_i_1_n_0 ));
  FDRE \key_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_7 ),
        .Q(\key_count_reg_n_0_[8] ),
        .R(\key_count[0]_i_1_n_0 ));
  CARRY4 \key_count_reg[8]_i_1 
       (.CI(\key_count_reg[4]_i_1_n_0 ),
        .CO({\key_count_reg[8]_i_1_n_0 ,\key_count_reg[8]_i_1_n_1 ,\key_count_reg[8]_i_1_n_2 ,\key_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\key_count_reg[8]_i_1_n_4 ,\key_count_reg[8]_i_1_n_5 ,\key_count_reg[8]_i_1_n_6 ,\key_count_reg[8]_i_1_n_7 }),
        .S({\key_count_reg_n_0_[11] ,\key_count_reg_n_0_[10] ,\key_count_reg_n_0_[9] ,\key_count_reg_n_0_[8] }));
  FDRE \key_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\key_count_reg[8]_i_1_n_6 ),
        .Q(\key_count_reg_n_0_[9] ),
        .R(\key_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E0E0E0)) 
    key_flag_i_1
       (.I0(key_flag),
        .I1(key_flag_i_2_n_0),
        .I2(aresetn),
        .I3(key_sample),
        .I4(p_0_in13_in),
        .O(key_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    key_flag_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(btn_key_row[1]),
        .I2(btn_key_row[0]),
        .I3(btn_key_row[3]),
        .I4(btn_key_row[2]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(key_flag_i_2_n_0));
  FDRE key_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(key_flag_i_1_n_0),
        .Q(key_flag),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \led_data[15]_i_1 
       (.I0(p_17_in),
        .I1(\led_data[15]_i_2_n_0 ),
        .I2(\led_data[15]_i_3_n_0 ),
        .I3(p_1_in_0[12]),
        .I4(p_1_in_0[10]),
        .I5(\led_data[15]_i_4_n_0 ),
        .O(write_led));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_data[15]_i_2 
       (.I0(p_1_in_0[4]),
        .I1(p_1_in_0[5]),
        .I2(p_1_in_0[2]),
        .I3(p_1_in_0[3]),
        .O(\led_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_data[15]_i_3 
       (.I0(p_1_in_0[11]),
        .I1(p_1_in_0[13]),
        .O(\led_data[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_data[15]_i_4 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(p_1_in_0[0]),
        .I2(p_1_in_0[1]),
        .I3(\buf_addr_reg_n_0_[0] ),
        .I4(\led_data[15]_i_5_n_0 ),
        .O(\led_data[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_data[15]_i_5 
       (.I0(p_1_in_0[8]),
        .I1(p_1_in_0[9]),
        .I2(p_1_in_0[6]),
        .I3(p_1_in_0[7]),
        .O(\led_data[15]_i_5_n_0 ));
  FDRE \led_data_reg[0] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[0]),
        .Q(led[0]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[10] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[10]),
        .Q(led[10]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[11] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[11]),
        .Q(led[11]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[12] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[12]),
        .Q(led[12]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[13] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[13]),
        .Q(led[13]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[14] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[14]),
        .Q(led[14]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[15] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[15]),
        .Q(led[15]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[16] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[16]),
        .Q(\led_data_reg_n_0_[16] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[17] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[17]),
        .Q(\led_data_reg_n_0_[17] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[18] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[18]),
        .Q(\led_data_reg_n_0_[18] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[19] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[19]),
        .Q(\led_data_reg_n_0_[19] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[1] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[1]),
        .Q(led[1]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[20] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[20]),
        .Q(\led_data_reg_n_0_[20] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[21] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[21]),
        .Q(\led_data_reg_n_0_[21] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[22] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[22]),
        .Q(\led_data_reg_n_0_[22] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[23] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[23]),
        .Q(\led_data_reg_n_0_[23] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[24] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[24]),
        .Q(\led_data_reg_n_0_[24] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[25] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[25]),
        .Q(\led_data_reg_n_0_[25] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[26] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[26]),
        .Q(\led_data_reg_n_0_[26] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[27] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[27]),
        .Q(\led_data_reg_n_0_[27] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[28] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[28]),
        .Q(\led_data_reg_n_0_[28] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[29] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[29]),
        .Q(\led_data_reg_n_0_[29] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[2] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[2]),
        .Q(led[2]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[30] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[30]),
        .Q(\led_data_reg_n_0_[30] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[31] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[31]),
        .Q(\led_data_reg_n_0_[31] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[3] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[3]),
        .Q(led[3]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[4] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[4]),
        .Q(led[4]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[5] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[5]),
        .Q(led[5]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[6] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[6]),
        .Q(led[6]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[7] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[7]),
        .Q(led[7]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[8] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[8]),
        .Q(led[8]),
        .R(s_wready_i_1_n_0));
  FDRE \led_data_reg[9] 
       (.C(aclk),
        .CE(write_led),
        .D(s_wdata[9]),
        .Q(led[9]),
        .R(s_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \led_rg0_data[1]_i_1 
       (.I0(p_17_in),
        .I1(\led_rg0_data[1]_i_2_n_0 ),
        .I2(\led_data[15]_i_3_n_0 ),
        .I3(p_1_in_0[10]),
        .I4(p_1_in_0[0]),
        .I5(\led_rg0_data[1]_i_3_n_0 ),
        .O(write_led_rg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \led_rg0_data[1]_i_2 
       (.I0(p_1_in_0[4]),
        .I1(p_1_in_0[5]),
        .I2(p_1_in_0[12]),
        .I3(p_1_in_0[3]),
        .O(\led_rg0_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_rg0_data[1]_i_3 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(p_1_in_0[1]),
        .I2(p_1_in_0[2]),
        .I3(\buf_addr_reg_n_0_[0] ),
        .I4(\led_data[15]_i_5_n_0 ),
        .O(\led_rg0_data[1]_i_3_n_0 ));
  FDRE \led_rg0_data_reg[0] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[0]),
        .Q(led_rg0[0]),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[10] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[10]),
        .Q(\led_rg0_data_reg_n_0_[10] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[11] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[11]),
        .Q(\led_rg0_data_reg_n_0_[11] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[12] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[12]),
        .Q(\led_rg0_data_reg_n_0_[12] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[13] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[13]),
        .Q(\led_rg0_data_reg_n_0_[13] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[14] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[14]),
        .Q(\led_rg0_data_reg_n_0_[14] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[15] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[15]),
        .Q(\led_rg0_data_reg_n_0_[15] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[16] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[16]),
        .Q(\led_rg0_data_reg_n_0_[16] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[17] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[17]),
        .Q(\led_rg0_data_reg_n_0_[17] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[18] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[18]),
        .Q(\led_rg0_data_reg_n_0_[18] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[19] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[19]),
        .Q(\led_rg0_data_reg_n_0_[19] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[1] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[1]),
        .Q(led_rg0[1]),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[20] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[20]),
        .Q(\led_rg0_data_reg_n_0_[20] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[21] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[21]),
        .Q(\led_rg0_data_reg_n_0_[21] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[22] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[22]),
        .Q(\led_rg0_data_reg_n_0_[22] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[23] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[23]),
        .Q(\led_rg0_data_reg_n_0_[23] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[24] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[24]),
        .Q(\led_rg0_data_reg_n_0_[24] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[25] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[25]),
        .Q(\led_rg0_data_reg_n_0_[25] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[26] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[26]),
        .Q(\led_rg0_data_reg_n_0_[26] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[27] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[27]),
        .Q(\led_rg0_data_reg_n_0_[27] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[28] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[28]),
        .Q(\led_rg0_data_reg_n_0_[28] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[29] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[29]),
        .Q(\led_rg0_data_reg_n_0_[29] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[2] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[2]),
        .Q(\led_rg0_data_reg_n_0_[2] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[30] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[30]),
        .Q(\led_rg0_data_reg_n_0_[30] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[31] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[31]),
        .Q(\led_rg0_data_reg_n_0_[31] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[3] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[3]),
        .Q(\led_rg0_data_reg_n_0_[3] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[4] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[4]),
        .Q(\led_rg0_data_reg_n_0_[4] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[5] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[5]),
        .Q(\led_rg0_data_reg_n_0_[5] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[6] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[6]),
        .Q(\led_rg0_data_reg_n_0_[6] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[7] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[7]),
        .Q(\led_rg0_data_reg_n_0_[7] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[8] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[8]),
        .Q(\led_rg0_data_reg_n_0_[8] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg0_data_reg[9] 
       (.C(aclk),
        .CE(write_led_rg0),
        .D(s_wdata[9]),
        .Q(\led_rg0_data_reg_n_0_[9] ),
        .R(s_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \led_rg1_data[1]_i_1 
       (.I0(p_17_in),
        .I1(\led_rg0_data[1]_i_2_n_0 ),
        .I2(\led_data[15]_i_3_n_0 ),
        .I3(p_1_in_0[1]),
        .I4(p_1_in_0[10]),
        .I5(\led_rg1_data[1]_i_2_n_0 ),
        .O(write_led_rg1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_rg1_data[1]_i_2 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(p_1_in_0[0]),
        .I2(p_1_in_0[2]),
        .I3(\buf_addr_reg_n_0_[0] ),
        .I4(\led_data[15]_i_5_n_0 ),
        .O(\led_rg1_data[1]_i_2_n_0 ));
  FDRE \led_rg1_data_reg[0] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[0]),
        .Q(led_rg1[0]),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[10] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[10]),
        .Q(\led_rg1_data_reg_n_0_[10] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[11] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[11]),
        .Q(\led_rg1_data_reg_n_0_[11] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[12] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[12]),
        .Q(\led_rg1_data_reg_n_0_[12] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[13] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[13]),
        .Q(\led_rg1_data_reg_n_0_[13] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[14] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[14]),
        .Q(\led_rg1_data_reg_n_0_[14] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[15] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[15]),
        .Q(\led_rg1_data_reg_n_0_[15] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[16] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[16]),
        .Q(\led_rg1_data_reg_n_0_[16] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[17] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[17]),
        .Q(\led_rg1_data_reg_n_0_[17] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[18] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[18]),
        .Q(\led_rg1_data_reg_n_0_[18] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[19] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[19]),
        .Q(\led_rg1_data_reg_n_0_[19] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[1] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[1]),
        .Q(led_rg1[1]),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[20] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[20]),
        .Q(\led_rg1_data_reg_n_0_[20] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[21] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[21]),
        .Q(\led_rg1_data_reg_n_0_[21] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[22] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[22]),
        .Q(\led_rg1_data_reg_n_0_[22] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[23] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[23]),
        .Q(\led_rg1_data_reg_n_0_[23] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[24] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[24]),
        .Q(\led_rg1_data_reg_n_0_[24] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[25] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[25]),
        .Q(\led_rg1_data_reg_n_0_[25] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[26] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[26]),
        .Q(\led_rg1_data_reg_n_0_[26] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[27] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[27]),
        .Q(\led_rg1_data_reg_n_0_[27] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[28] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[28]),
        .Q(\led_rg1_data_reg_n_0_[28] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[29] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[29]),
        .Q(\led_rg1_data_reg_n_0_[29] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[2] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[2]),
        .Q(\led_rg1_data_reg_n_0_[2] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[30] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[30]),
        .Q(\led_rg1_data_reg_n_0_[30] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[31] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[31]),
        .Q(\led_rg1_data_reg_n_0_[31] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[3] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[3]),
        .Q(\led_rg1_data_reg_n_0_[3] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[4] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[4]),
        .Q(\led_rg1_data_reg_n_0_[4] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[5] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[5]),
        .Q(\led_rg1_data_reg_n_0_[5] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[6] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[6]),
        .Q(\led_rg1_data_reg_n_0_[6] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[7] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[7]),
        .Q(\led_rg1_data_reg_n_0_[7] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[8] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[8]),
        .Q(\led_rg1_data_reg_n_0_[8] ),
        .R(s_wready_i_1_n_0));
  FDRE \led_rg1_data_reg[9] 
       (.C(aclk),
        .CE(write_led_rg1),
        .D(s_wdata[9]),
        .Q(\led_rg1_data_reg_n_0_[9] ),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBFDA)) 
    \num_a_g[0]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[0]),
        .I2(scan_data[2]),
        .I3(scan_data[1]),
        .O(num_a_g_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \num_a_g[1]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[0]),
        .I3(scan_data[1]),
        .O(num_a_g_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \num_a_g[2]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[1]),
        .I2(scan_data[2]),
        .I3(scan_data[0]),
        .O(num_a_g_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \num_a_g[3]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \num_a_g[4]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_1[4]));
  LUT4 #(
    .INIT(16'h497F)) 
    \num_a_g[5]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[0]),
        .I2(scan_data[1]),
        .I3(scan_data[2]),
        .O(num_a_g_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD6FB)) 
    \num_a_g[6]_i_1 
       (.I0(scan_data[3]),
        .I1(scan_data[2]),
        .I2(scan_data[1]),
        .I3(scan_data[0]),
        .O(num_a_g_1[6]));
  FDRE \num_a_g_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[0]),
        .Q(num_a_g[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[1]),
        .Q(num_a_g[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[2]),
        .Q(num_a_g[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[3]),
        .Q(num_a_g[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[4]),
        .Q(num_a_g[4]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[5]),
        .Q(num_a_g[5]),
        .R(s_wready_i_1_n_0));
  FDRE \num_a_g_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(num_a_g_1[6]),
        .Q(num_a_g[6]),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \num_csn[0]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\num_csn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \num_csn[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(\num_csn[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \num_csn[2]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\num_csn[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \num_csn[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\num_csn[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \num_csn[4]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\num_csn[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \num_csn[5]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\num_csn[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \num_csn[6]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(\num_csn[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \num_csn[7]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(\num_csn[7]_i_1_n_0 ));
  FDSE \num_csn_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[0]_i_1_n_0 ),
        .Q(num_csn[0]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[1]_i_1_n_0 ),
        .Q(num_csn[1]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[2]_i_1_n_0 ),
        .Q(num_csn[2]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[3]_i_1_n_0 ),
        .Q(num_csn[3]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[4]_i_1_n_0 ),
        .Q(num_csn[4]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[5]_i_1_n_0 ),
        .Q(num_csn[5]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[6]_i_1_n_0 ),
        .Q(num_csn[6]),
        .S(s_wready_i_1_n_0));
  FDSE \num_csn_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\num_csn[7]_i_1_n_0 ),
        .Q(num_csn[7]),
        .S(s_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \num_data[31]_i_1 
       (.I0(p_17_in),
        .I1(\led_rg0_data[1]_i_2_n_0 ),
        .I2(\led_data[15]_i_3_n_0 ),
        .I3(p_1_in_0[2]),
        .I4(p_1_in_0[10]),
        .I5(\led_data[15]_i_4_n_0 ),
        .O(write_num));
  FDRE \num_data_reg[0] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[0]),
        .Q(\num_data_reg_n_0_[0] ),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[10] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[10]),
        .Q(data5[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[11] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[11]),
        .Q(data5[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[12] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[12]),
        .Q(data4[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[13] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[13]),
        .Q(data4[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[14] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[14]),
        .Q(data4[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[15] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[15]),
        .Q(data4[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[16] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[16]),
        .Q(data3[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[17] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[17]),
        .Q(data3[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[18] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[18]),
        .Q(data3[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[19] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[19]),
        .Q(data3[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[1] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[1]),
        .Q(\num_data_reg_n_0_[1] ),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[20] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[20]),
        .Q(data2[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[21] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[21]),
        .Q(data2[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[22] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[22]),
        .Q(data2[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[23] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[23]),
        .Q(data2[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[24] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[24]),
        .Q(data1[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[25] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[25]),
        .Q(data1[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[26] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[26]),
        .Q(data1[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[27] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[27]),
        .Q(data1[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[28] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[28]),
        .Q(data0[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[29] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[29]),
        .Q(data0[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[2] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[2]),
        .Q(\num_data_reg_n_0_[2] ),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[30] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[30]),
        .Q(data0[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[31] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[31]),
        .Q(data0[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[3] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[3]),
        .Q(\num_data_reg_n_0_[3] ),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[4] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[4]),
        .Q(data6[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[5] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[5]),
        .Q(data6[1]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[6] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[6]),
        .Q(data6[2]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[7] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[7]),
        .Q(data6[3]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[8] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[8]),
        .Q(data5[0]),
        .R(s_wready_i_1_n_0));
  FDRE \num_data_reg[9] 
       (.C(aclk),
        .CE(write_num),
        .D(s_wdata[9]),
        .Q(data5[1]),
        .R(s_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8B88)) 
    \order_addr_reg[2]_i_1 
       (.I0(s_wdata[2]),
        .I1(write_order_reg),
        .I2(write_dma_end),
        .I3(order_addr_reg[2]),
        .O(\order_addr_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \order_addr_reg[31]_i_1 
       (.I0(p_17_in),
        .I1(\order_addr_reg[31]_i_3_n_0 ),
        .I2(\order_addr_reg[31]_i_4_n_0 ),
        .I3(p_1_in_0[7]),
        .I4(\buf_addr_reg_n_0_[0] ),
        .I5(\order_addr_reg[31]_i_5_n_0 ),
        .O(write_order_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \order_addr_reg[31]_i_2 
       (.I0(s_wvalid),
        .I1(s_wready_reg_0),
        .I2(s_wlast),
        .O(p_17_in));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \order_addr_reg[31]_i_3 
       (.I0(p_1_in_0[0]),
        .I1(p_1_in_0[2]),
        .I2(p_1_in_0[5]),
        .I3(\buf_addr_reg_n_0_[1] ),
        .I4(\order_addr_reg[31]_i_6_n_0 ),
        .O(\order_addr_reg[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \order_addr_reg[31]_i_4 
       (.I0(p_1_in_0[13]),
        .I1(p_1_in_0[12]),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[11]),
        .O(\order_addr_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \order_addr_reg[31]_i_5 
       (.I0(p_1_in_0[9]),
        .I1(p_1_in_0[8]),
        .O(\order_addr_reg[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \order_addr_reg[31]_i_6 
       (.I0(p_1_in_0[3]),
        .I1(p_1_in_0[10]),
        .I2(p_1_in_0[6]),
        .I3(p_1_in_0[4]),
        .O(\order_addr_reg[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8B88)) 
    \order_addr_reg[3]_i_1 
       (.I0(s_wdata[3]),
        .I1(write_order_reg),
        .I2(finish_read_order),
        .I3(order_addr_reg[3]),
        .O(\order_addr_reg[3]_i_1_n_0 ));
  FDRE \order_addr_reg_reg[0] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[0]),
        .Q(order_addr_reg[0]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[10] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[10]),
        .Q(order_addr_reg[10]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[11] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[11]),
        .Q(order_addr_reg[11]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[12] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[12]),
        .Q(order_addr_reg[12]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[13] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[13]),
        .Q(order_addr_reg[13]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[14] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[14]),
        .Q(order_addr_reg[14]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[15] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[15]),
        .Q(order_addr_reg[15]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[16] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[16]),
        .Q(order_addr_reg[16]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[17] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[17]),
        .Q(order_addr_reg[17]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[18] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[18]),
        .Q(order_addr_reg[18]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[19] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[19]),
        .Q(order_addr_reg[19]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[1] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[1]),
        .Q(order_addr_reg[1]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[20] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[20]),
        .Q(order_addr_reg[20]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[21] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[21]),
        .Q(order_addr_reg[21]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[22] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[22]),
        .Q(order_addr_reg[22]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[23] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[23]),
        .Q(order_addr_reg[23]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[24] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[24]),
        .Q(order_addr_reg[24]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[25] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[25]),
        .Q(order_addr_reg[25]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[26] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[26]),
        .Q(order_addr_reg[26]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[27] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[27]),
        .Q(order_addr_reg[27]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[28] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[28]),
        .Q(order_addr_reg[28]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[29] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[29]),
        .Q(order_addr_reg[29]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\order_addr_reg[2]_i_1_n_0 ),
        .Q(order_addr_reg[2]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[30] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[30]),
        .Q(order_addr_reg[30]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[31] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[31]),
        .Q(order_addr_reg[31]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\order_addr_reg[3]_i_1_n_0 ),
        .Q(order_addr_reg[3]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[4] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[4]),
        .Q(order_addr_reg[4]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[5] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[5]),
        .Q(order_addr_reg[5]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[6] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[6]),
        .Q(order_addr_reg[6]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[7] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[7]),
        .Q(order_addr_reg[7]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[8] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[8]),
        .Q(order_addr_reg[8]),
        .R(s_wready_i_1_n_0));
  FDRE \order_addr_reg_reg[9] 
       (.C(aclk),
        .CE(write_order_reg),
        .D(s_wdata[9]),
        .Q(order_addr_reg[9]),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h07)) 
    s_arready_INST_0
       (.I0(s_awvalid),
        .I1(R_or_W),
        .I2(busy),
        .O(s_arready));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    s_awready_INST_0
       (.I0(s_arvalid),
        .I1(R_or_W),
        .I2(busy),
        .O(s_awready));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    s_bvalid_i_1
       (.I0(s_wlast),
        .I1(s_wready_reg_0),
        .I2(s_wvalid),
        .I3(s_bready),
        .I4(s_bvalid),
        .O(s_bvalid_i_1_n_0));
  FDRE s_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_bvalid_i_1_n_0),
        .Q(s_bvalid),
        .R(s_wready_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[0]_i_1 
       (.I0(\s_rdata[0]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[0]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[0]_i_4_n_0 ),
        .O(\s_rdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[0]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[0]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[0]_i_5 
       (.I0(led_rg1[0]),
        .I1(led_rg0[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[0]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[0]),
        .O(\s_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \s_rdata[0]_i_6 
       (.I0(btn_step1_r),
        .I1(btn_key_r[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(switch[0]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(\num_data_reg_n_0_[0] ),
        .O(\s_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[0]_i_7 
       (.I0(cr03[0]),
        .I1(cr02[0]),
        .I2(p_1_in_0[1]),
        .I3(cr01[0]),
        .I4(p_1_in_0[0]),
        .I5(cr00[0]),
        .O(\s_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[0]_i_8 
       (.I0(cr07[0]),
        .I1(cr06[0]),
        .I2(p_1_in_0[1]),
        .I3(cr05[0]),
        .I4(p_1_in_0[0]),
        .I5(cr04[0]),
        .O(\s_rdata[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[10]_i_1 
       (.I0(\s_rdata[10]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[10]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[10]_i_4_n_0 ),
        .O(\s_rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[10]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[10]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[10]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[10] ),
        .I1(\led_rg0_data_reg_n_0_[10] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[10]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[10]),
        .O(\s_rdata[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[10]_i_6 
       (.I0(btn_key_r[10]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data5[2]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[10]_i_7 
       (.I0(cr03[10]),
        .I1(cr02[10]),
        .I2(p_1_in_0[1]),
        .I3(cr01[10]),
        .I4(p_1_in_0[0]),
        .I5(cr00[10]),
        .O(\s_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[10]_i_8 
       (.I0(cr07[10]),
        .I1(cr06[10]),
        .I2(p_1_in_0[1]),
        .I3(cr05[10]),
        .I4(p_1_in_0[0]),
        .I5(cr04[10]),
        .O(\s_rdata[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[11]_i_1 
       (.I0(\s_rdata[11]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[11]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[11]_i_4_n_0 ),
        .O(\s_rdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[11]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[11]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[11]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[11] ),
        .I1(\led_rg0_data_reg_n_0_[11] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[11]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[11]),
        .O(\s_rdata[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[11]_i_6 
       (.I0(btn_key_r[11]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data5[3]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[11]_i_7 
       (.I0(cr03[11]),
        .I1(cr02[11]),
        .I2(p_1_in_0[1]),
        .I3(cr01[11]),
        .I4(p_1_in_0[0]),
        .I5(cr00[11]),
        .O(\s_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[11]_i_8 
       (.I0(cr07[11]),
        .I1(cr06[11]),
        .I2(p_1_in_0[1]),
        .I3(cr05[11]),
        .I4(p_1_in_0[0]),
        .I5(cr04[11]),
        .O(\s_rdata[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[12]_i_1 
       (.I0(\s_rdata[12]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[12]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[12]_i_4_n_0 ),
        .O(\s_rdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[12]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[12]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[12]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[12] ),
        .I1(\led_rg0_data_reg_n_0_[12] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[12]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[12]),
        .O(\s_rdata[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[12]_i_6 
       (.I0(btn_key_r[12]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data4[0]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[12]_i_7 
       (.I0(cr03[12]),
        .I1(cr02[12]),
        .I2(p_1_in_0[1]),
        .I3(cr01[12]),
        .I4(p_1_in_0[0]),
        .I5(cr00[12]),
        .O(\s_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[12]_i_8 
       (.I0(cr07[12]),
        .I1(cr06[12]),
        .I2(p_1_in_0[1]),
        .I3(cr05[12]),
        .I4(p_1_in_0[0]),
        .I5(cr04[12]),
        .O(\s_rdata[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[13]_i_1 
       (.I0(\s_rdata[13]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[13]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[13]_i_4_n_0 ),
        .O(\s_rdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[13]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[13]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[13]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[13] ),
        .I1(\led_rg0_data_reg_n_0_[13] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[13]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[13]),
        .O(\s_rdata[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[13]_i_6 
       (.I0(btn_key_r[13]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data4[1]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[13]_i_7 
       (.I0(cr03[13]),
        .I1(cr02[13]),
        .I2(p_1_in_0[1]),
        .I3(cr01[13]),
        .I4(p_1_in_0[0]),
        .I5(cr00[13]),
        .O(\s_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[13]_i_8 
       (.I0(cr07[13]),
        .I1(cr06[13]),
        .I2(p_1_in_0[1]),
        .I3(cr05[13]),
        .I4(p_1_in_0[0]),
        .I5(cr04[13]),
        .O(\s_rdata[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[14]_i_1 
       (.I0(\s_rdata[14]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[14]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[14]_i_4_n_0 ),
        .O(\s_rdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[14]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[14]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[14]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[14] ),
        .I1(\led_rg0_data_reg_n_0_[14] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[14]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[14]),
        .O(\s_rdata[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[14]_i_6 
       (.I0(btn_key_r[14]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data4[2]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[14]_i_7 
       (.I0(cr03[14]),
        .I1(cr02[14]),
        .I2(p_1_in_0[1]),
        .I3(cr01[14]),
        .I4(p_1_in_0[0]),
        .I5(cr00[14]),
        .O(\s_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[14]_i_8 
       (.I0(cr07[14]),
        .I1(cr06[14]),
        .I2(p_1_in_0[1]),
        .I3(cr05[14]),
        .I4(p_1_in_0[0]),
        .I5(cr04[14]),
        .O(\s_rdata[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[15]_i_1 
       (.I0(\s_rdata[15]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[15]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[15]_i_4_n_0 ),
        .O(\s_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[15]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[15]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[15]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[15] ),
        .I1(\led_rg0_data_reg_n_0_[15] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[15]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[15]),
        .O(\s_rdata[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[15]_i_6 
       (.I0(btn_key_r[15]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data4[3]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[15]_i_7 
       (.I0(cr03[15]),
        .I1(cr02[15]),
        .I2(p_1_in_0[1]),
        .I3(cr01[15]),
        .I4(p_1_in_0[0]),
        .I5(cr00[15]),
        .O(\s_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[15]_i_8 
       (.I0(cr07[15]),
        .I1(cr06[15]),
        .I2(p_1_in_0[1]),
        .I3(cr05[15]),
        .I4(p_1_in_0[0]),
        .I5(cr04[15]),
        .O(\s_rdata[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[16]_i_1 
       (.I0(\s_rdata[16]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[16]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[16]_i_4_n_0 ),
        .O(\s_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[16]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[16]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[16]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[16] ),
        .I1(\led_rg0_data_reg_n_0_[16] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[16] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[16]),
        .O(\s_rdata[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[16]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data3[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[16]_i_7 
       (.I0(cr03[16]),
        .I1(cr02[16]),
        .I2(p_1_in_0[1]),
        .I3(cr01[16]),
        .I4(p_1_in_0[0]),
        .I5(cr00[16]),
        .O(\s_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[16]_i_8 
       (.I0(cr07[16]),
        .I1(cr06[16]),
        .I2(p_1_in_0[1]),
        .I3(cr05[16]),
        .I4(p_1_in_0[0]),
        .I5(cr04[16]),
        .O(\s_rdata[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[17]_i_1 
       (.I0(\s_rdata[17]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[17]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[17]_i_4_n_0 ),
        .O(\s_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[17]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[17]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[17]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[17] ),
        .I1(\led_rg0_data_reg_n_0_[17] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[17] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[17]),
        .O(\s_rdata[17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[17]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data3[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[17]_i_7 
       (.I0(cr03[17]),
        .I1(cr02[17]),
        .I2(p_1_in_0[1]),
        .I3(cr01[17]),
        .I4(p_1_in_0[0]),
        .I5(cr00[17]),
        .O(\s_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[17]_i_8 
       (.I0(cr07[17]),
        .I1(cr06[17]),
        .I2(p_1_in_0[1]),
        .I3(cr05[17]),
        .I4(p_1_in_0[0]),
        .I5(cr04[17]),
        .O(\s_rdata[17]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[18]_i_1 
       (.I0(\s_rdata[18]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[18]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[18]_i_4_n_0 ),
        .O(\s_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[18]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[18]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[18]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[18] ),
        .I1(\led_rg0_data_reg_n_0_[18] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[18] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[18]),
        .O(\s_rdata[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[18]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data3[2]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[18]_i_7 
       (.I0(cr03[18]),
        .I1(cr02[18]),
        .I2(p_1_in_0[1]),
        .I3(cr01[18]),
        .I4(p_1_in_0[0]),
        .I5(cr00[18]),
        .O(\s_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[18]_i_8 
       (.I0(cr07[18]),
        .I1(cr06[18]),
        .I2(p_1_in_0[1]),
        .I3(cr05[18]),
        .I4(p_1_in_0[0]),
        .I5(cr04[18]),
        .O(\s_rdata[18]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[19]_i_1 
       (.I0(\s_rdata[19]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[19]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[19]_i_4_n_0 ),
        .O(\s_rdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[19]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[19]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[19]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[19] ),
        .I1(\led_rg0_data_reg_n_0_[19] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[19] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[19]),
        .O(\s_rdata[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[19]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data3[3]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[19]_i_7 
       (.I0(cr03[19]),
        .I1(cr02[19]),
        .I2(p_1_in_0[1]),
        .I3(cr01[19]),
        .I4(p_1_in_0[0]),
        .I5(cr00[19]),
        .O(\s_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[19]_i_8 
       (.I0(cr07[19]),
        .I1(cr06[19]),
        .I2(p_1_in_0[1]),
        .I3(cr05[19]),
        .I4(p_1_in_0[0]),
        .I5(cr04[19]),
        .O(\s_rdata[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[1]_i_1 
       (.I0(\s_rdata[1]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[1]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[1]_i_4_n_0 ),
        .O(\s_rdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[1]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[1]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[1]_i_5 
       (.I0(led_rg1[1]),
        .I1(led_rg0[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[1]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[1]),
        .O(\s_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \s_rdata[1]_i_6 
       (.I0(btn_step0_r),
        .I1(btn_key_r[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(switch[1]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(\num_data_reg_n_0_[1] ),
        .O(\s_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[1]_i_7 
       (.I0(cr03[1]),
        .I1(cr02[1]),
        .I2(p_1_in_0[1]),
        .I3(cr01[1]),
        .I4(p_1_in_0[0]),
        .I5(cr00[1]),
        .O(\s_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[1]_i_8 
       (.I0(cr07[1]),
        .I1(cr06[1]),
        .I2(p_1_in_0[1]),
        .I3(cr05[1]),
        .I4(p_1_in_0[0]),
        .I5(cr04[1]),
        .O(\s_rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[20]_i_1 
       (.I0(\s_rdata[20]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[20]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[20]_i_4_n_0 ),
        .O(\s_rdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[20]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[20]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[20]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[20] ),
        .I1(\led_rg0_data_reg_n_0_[20] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[20] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[20]),
        .O(\s_rdata[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[20]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data2[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[20]_i_7 
       (.I0(cr03[20]),
        .I1(cr02[20]),
        .I2(p_1_in_0[1]),
        .I3(cr01[20]),
        .I4(p_1_in_0[0]),
        .I5(cr00[20]),
        .O(\s_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[20]_i_8 
       (.I0(cr07[20]),
        .I1(cr06[20]),
        .I2(p_1_in_0[1]),
        .I3(cr05[20]),
        .I4(p_1_in_0[0]),
        .I5(cr04[20]),
        .O(\s_rdata[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[21]_i_1 
       (.I0(\s_rdata[21]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[21]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[21]_i_4_n_0 ),
        .O(\s_rdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[21]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[21]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[21]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[21] ),
        .I1(\led_rg0_data_reg_n_0_[21] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[21] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[21]),
        .O(\s_rdata[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[21]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data2[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[21]_i_7 
       (.I0(cr03[21]),
        .I1(cr02[21]),
        .I2(p_1_in_0[1]),
        .I3(cr01[21]),
        .I4(p_1_in_0[0]),
        .I5(cr00[21]),
        .O(\s_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[21]_i_8 
       (.I0(cr07[21]),
        .I1(cr06[21]),
        .I2(p_1_in_0[1]),
        .I3(cr05[21]),
        .I4(p_1_in_0[0]),
        .I5(cr04[21]),
        .O(\s_rdata[21]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[22]_i_1 
       (.I0(\s_rdata[22]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[22]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[22]_i_4_n_0 ),
        .O(\s_rdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[22]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[22]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[22]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[22] ),
        .I1(\led_rg0_data_reg_n_0_[22] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[22] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[22]),
        .O(\s_rdata[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[22]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data2[2]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[22]_i_7 
       (.I0(cr03[22]),
        .I1(cr02[22]),
        .I2(p_1_in_0[1]),
        .I3(cr01[22]),
        .I4(p_1_in_0[0]),
        .I5(cr00[22]),
        .O(\s_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[22]_i_8 
       (.I0(cr07[22]),
        .I1(cr06[22]),
        .I2(p_1_in_0[1]),
        .I3(cr05[22]),
        .I4(p_1_in_0[0]),
        .I5(cr04[22]),
        .O(\s_rdata[22]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[23]_i_1 
       (.I0(\s_rdata[23]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[23]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[23]_i_4_n_0 ),
        .O(\s_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[23]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[23]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[23]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[23] ),
        .I1(\led_rg0_data_reg_n_0_[23] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[23] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[23]),
        .O(\s_rdata[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[23]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data2[3]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[23]_i_7 
       (.I0(cr03[23]),
        .I1(cr02[23]),
        .I2(p_1_in_0[1]),
        .I3(cr01[23]),
        .I4(p_1_in_0[0]),
        .I5(cr00[23]),
        .O(\s_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[23]_i_8 
       (.I0(cr07[23]),
        .I1(cr06[23]),
        .I2(p_1_in_0[1]),
        .I3(cr05[23]),
        .I4(p_1_in_0[0]),
        .I5(cr04[23]),
        .O(\s_rdata[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[24]_i_1 
       (.I0(\s_rdata[24]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[24]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[24]_i_4_n_0 ),
        .O(\s_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[24]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[24]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[24]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[24] ),
        .I1(\led_rg0_data_reg_n_0_[24] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[24] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[24]),
        .O(\s_rdata[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[24]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data1[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[24]_i_7 
       (.I0(cr03[24]),
        .I1(cr02[24]),
        .I2(p_1_in_0[1]),
        .I3(cr01[24]),
        .I4(p_1_in_0[0]),
        .I5(cr00[24]),
        .O(\s_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[24]_i_8 
       (.I0(cr07[24]),
        .I1(cr06[24]),
        .I2(p_1_in_0[1]),
        .I3(cr05[24]),
        .I4(p_1_in_0[0]),
        .I5(cr04[24]),
        .O(\s_rdata[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[25]_i_1 
       (.I0(\s_rdata[25]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[25]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[25]_i_4_n_0 ),
        .O(\s_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[25]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[25]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[25]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[25] ),
        .I1(\led_rg0_data_reg_n_0_[25] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[25] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[25]),
        .O(\s_rdata[25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[25]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data1[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[25]_i_7 
       (.I0(cr03[25]),
        .I1(cr02[25]),
        .I2(p_1_in_0[1]),
        .I3(cr01[25]),
        .I4(p_1_in_0[0]),
        .I5(cr00[25]),
        .O(\s_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[25]_i_8 
       (.I0(cr07[25]),
        .I1(cr06[25]),
        .I2(p_1_in_0[1]),
        .I3(cr05[25]),
        .I4(p_1_in_0[0]),
        .I5(cr04[25]),
        .O(\s_rdata[25]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[26]_i_1 
       (.I0(\s_rdata[26]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[26]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[26]_i_4_n_0 ),
        .O(\s_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[26]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[26]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[26]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[26] ),
        .I1(\led_rg0_data_reg_n_0_[26] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[26] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[26]),
        .O(\s_rdata[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[26]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data1[2]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[26]_i_7 
       (.I0(cr03[26]),
        .I1(cr02[26]),
        .I2(p_1_in_0[1]),
        .I3(cr01[26]),
        .I4(p_1_in_0[0]),
        .I5(cr00[26]),
        .O(\s_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[26]_i_8 
       (.I0(cr07[26]),
        .I1(cr06[26]),
        .I2(p_1_in_0[1]),
        .I3(cr05[26]),
        .I4(p_1_in_0[0]),
        .I5(cr04[26]),
        .O(\s_rdata[26]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[27]_i_1 
       (.I0(\s_rdata[27]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[27]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[27]_i_4_n_0 ),
        .O(\s_rdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[27]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[27]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[27]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[27] ),
        .I1(\led_rg0_data_reg_n_0_[27] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[27] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[27]),
        .O(\s_rdata[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[27]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data1[3]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[27]_i_7 
       (.I0(cr03[27]),
        .I1(cr02[27]),
        .I2(p_1_in_0[1]),
        .I3(cr01[27]),
        .I4(p_1_in_0[0]),
        .I5(cr00[27]),
        .O(\s_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[27]_i_8 
       (.I0(cr07[27]),
        .I1(cr06[27]),
        .I2(p_1_in_0[1]),
        .I3(cr05[27]),
        .I4(p_1_in_0[0]),
        .I5(cr04[27]),
        .O(\s_rdata[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[28]_i_1 
       (.I0(\s_rdata[28]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[28]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[28]_i_4_n_0 ),
        .O(\s_rdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[28]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[28]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[28]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[28] ),
        .I1(\led_rg0_data_reg_n_0_[28] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[28] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[28]),
        .O(\s_rdata[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[28]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data0[0]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[28]_i_7 
       (.I0(cr03[28]),
        .I1(cr02[28]),
        .I2(p_1_in_0[1]),
        .I3(cr01[28]),
        .I4(p_1_in_0[0]),
        .I5(cr00[28]),
        .O(\s_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[28]_i_8 
       (.I0(cr07[28]),
        .I1(cr06[28]),
        .I2(p_1_in_0[1]),
        .I3(cr05[28]),
        .I4(p_1_in_0[0]),
        .I5(cr04[28]),
        .O(\s_rdata[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[29]_i_1 
       (.I0(\s_rdata[29]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[29]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[29]_i_4_n_0 ),
        .O(\s_rdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[29]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[29]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[29]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[29] ),
        .I1(\led_rg0_data_reg_n_0_[29] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[29] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[29]),
        .O(\s_rdata[29]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[29]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data0[1]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[29]_i_7 
       (.I0(cr03[29]),
        .I1(cr02[29]),
        .I2(p_1_in_0[1]),
        .I3(cr01[29]),
        .I4(p_1_in_0[0]),
        .I5(cr00[29]),
        .O(\s_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[29]_i_8 
       (.I0(cr07[29]),
        .I1(cr06[29]),
        .I2(p_1_in_0[1]),
        .I3(cr05[29]),
        .I4(p_1_in_0[0]),
        .I5(cr04[29]),
        .O(\s_rdata[29]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[2]_i_1 
       (.I0(\s_rdata[2]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[2]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[2]_i_4_n_0 ),
        .O(\s_rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[2]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[2]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[2]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[2] ),
        .I1(\led_rg0_data_reg_n_0_[2] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[2]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[2]),
        .O(\s_rdata[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[2]_i_6 
       (.I0(btn_key_r[2]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[2]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(\num_data_reg_n_0_[2] ),
        .O(\s_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[2]_i_7 
       (.I0(cr03[2]),
        .I1(cr02[2]),
        .I2(p_1_in_0[1]),
        .I3(cr01[2]),
        .I4(p_1_in_0[0]),
        .I5(cr00[2]),
        .O(\s_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[2]_i_8 
       (.I0(cr07[2]),
        .I1(cr06[2]),
        .I2(p_1_in_0[1]),
        .I3(cr05[2]),
        .I4(p_1_in_0[0]),
        .I5(cr04[2]),
        .O(\s_rdata[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[30]_i_1 
       (.I0(\s_rdata[30]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[30]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[30]_i_4_n_0 ),
        .O(\s_rdata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[30]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[30]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[30]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[30] ),
        .I1(\led_rg0_data_reg_n_0_[30] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[30] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[30]),
        .O(\s_rdata[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[30]_i_6 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data0[2]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[30]_i_7 
       (.I0(cr03[30]),
        .I1(cr02[30]),
        .I2(p_1_in_0[1]),
        .I3(cr01[30]),
        .I4(p_1_in_0[0]),
        .I5(cr00[30]),
        .O(\s_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[30]_i_8 
       (.I0(cr07[30]),
        .I1(cr06[30]),
        .I2(p_1_in_0[1]),
        .I3(cr05[30]),
        .I4(p_1_in_0[0]),
        .I5(cr04[30]),
        .O(\s_rdata[30]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h007F0000)) 
    \s_rdata[31]_i_1 
       (.I0(s_rlast_reg_0),
        .I1(s_rready),
        .I2(s_rvalid_reg_0),
        .I3(write),
        .I4(busy),
        .O(\s_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \s_rdata[31]_i_10 
       (.I0(\s_rdata[31]_i_28_n_0 ),
        .I1(\s_rdata[31]_i_29_n_0 ),
        .I2(p_1_in_0[6]),
        .I3(p_1_in_0[7]),
        .I4(p_1_in_0[12]),
        .I5(p_1_in_0[5]),
        .O(\s_rdata[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000500000007)) 
    \s_rdata[31]_i_11 
       (.I0(\s_rdata[31]_i_30_n_0 ),
        .I1(p_1_in_0[2]),
        .I2(\s_rdata[31]_i_31_n_0 ),
        .I3(\s_rdata[31]_i_32_n_0 ),
        .I4(\s_rdata[31]_i_33_n_0 ),
        .I5(p_1_in_0[1]),
        .O(\s_rdata[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_rdata[31]_i_12 
       (.I0(\s_rdata[31]_i_34_n_0 ),
        .I1(\s_rdata[31]_i_35_n_0 ),
        .I2(p_1_in_0[9]),
        .I3(p_1_in_0[7]),
        .I4(p_1_in_0[11]),
        .I5(p_1_in_0[5]),
        .O(\s_rdata[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \s_rdata[31]_i_13 
       (.I0(p_1_in_0[13]),
        .I1(p_1_in_0[12]),
        .I2(\s_rdata[31]_i_32_n_0 ),
        .I3(p_1_in_0[10]),
        .I4(p_1_in_0[11]),
        .I5(\order_addr_reg[31]_i_5_n_0 ),
        .O(\s_rdata[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_rdata[31]_i_14 
       (.I0(p_1_in_0[2]),
        .I1(p_1_in_0[0]),
        .O(\s_rdata[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[31]_i_15 
       (.I0(\led_rg1_data_reg_n_0_[31] ),
        .I1(\led_rg0_data_reg_n_0_[31] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(\led_data_reg_n_0_[31] ),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[31]),
        .O(\s_rdata[31]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_rdata[31]_i_16 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(data0[3]),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_17 
       (.I0(p_1_in_0[5]),
        .I1(p_1_in_0[6]),
        .I2(p_1_in_0[3]),
        .I3(p_1_in_0[4]),
        .O(\s_rdata[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_18 
       (.I0(p_1_in_0[9]),
        .I1(p_1_in_0[10]),
        .I2(p_1_in_0[7]),
        .I3(p_1_in_0[8]),
        .O(\s_rdata[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[31]_i_19 
       (.I0(cr03[31]),
        .I1(cr02[31]),
        .I2(p_1_in_0[1]),
        .I3(cr01[31]),
        .I4(p_1_in_0[0]),
        .I5(cr00[31]),
        .O(\s_rdata[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[31]_i_2 
       (.I0(\s_rdata[31]_i_3_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[31]_i_5_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[31]_i_7_n_0 ),
        .O(\s_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[31]_i_20 
       (.I0(cr07[31]),
        .I1(cr06[31]),
        .I2(p_1_in_0[1]),
        .I3(cr05[31]),
        .I4(p_1_in_0[0]),
        .I5(cr04[31]),
        .O(\s_rdata[31]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \s_rdata[31]_i_21 
       (.I0(p_1_in_0[3]),
        .I1(p_1_in_0[0]),
        .I2(p_1_in_0[10]),
        .I3(p_1_in_0[2]),
        .O(\s_rdata[31]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_22 
       (.I0(p_1_in_0[1]),
        .I1(\buf_addr_reg_n_0_[0] ),
        .I2(p_1_in_0[8]),
        .I3(p_1_in_0[9]),
        .O(\s_rdata[31]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEFFFFFF7)) 
    \s_rdata[31]_i_23 
       (.I0(p_1_in_0[4]),
        .I1(p_1_in_0[6]),
        .I2(p_1_in_0[11]),
        .I3(p_1_in_0[12]),
        .I4(p_1_in_0[13]),
        .O(\s_rdata[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFFFE)) 
    \s_rdata[31]_i_24 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(p_1_in_0[7]),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[3]),
        .I4(p_1_in_0[10]),
        .I5(p_1_in_0[5]),
        .O(\s_rdata[31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \s_rdata[31]_i_25 
       (.I0(p_1_in_0[0]),
        .I1(p_1_in_0[3]),
        .I2(p_1_in_0[4]),
        .O(\s_rdata[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_26 
       (.I0(\buf_addr_reg_n_0_[0] ),
        .I1(p_1_in_0[5]),
        .I2(p_1_in_0[4]),
        .I3(\buf_addr_reg_n_0_[1] ),
        .O(\s_rdata[31]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0446)) 
    \s_rdata[31]_i_27 
       (.I0(p_1_in_0[2]),
        .I1(p_1_in_0[3]),
        .I2(p_1_in_0[1]),
        .I3(p_1_in_0[0]),
        .O(\s_rdata[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_rdata[31]_i_28 
       (.I0(\buf_addr_reg_n_0_[0] ),
        .I1(p_1_in_0[4]),
        .I2(p_1_in_0[9]),
        .I3(p_1_in_0[8]),
        .I4(\buf_addr_reg_n_0_[1] ),
        .I5(p_1_in_0[2]),
        .O(\s_rdata[31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF77FFFFF)) 
    \s_rdata[31]_i_29 
       (.I0(p_1_in_0[13]),
        .I1(p_1_in_0[10]),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[1]),
        .I4(p_1_in_0[11]),
        .O(\s_rdata[31]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[31]_i_3 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[31]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s_rdata[31]_i_30 
       (.I0(p_1_in_0[3]),
        .I1(p_1_in_0[0]),
        .I2(p_1_in_0[1]),
        .O(\s_rdata[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \s_rdata[31]_i_31 
       (.I0(p_1_in_0[10]),
        .I1(p_1_in_0[11]),
        .I2(p_1_in_0[8]),
        .I3(p_1_in_0[9]),
        .O(\s_rdata[31]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_32 
       (.I0(p_1_in_0[6]),
        .I1(p_1_in_0[7]),
        .I2(p_1_in_0[4]),
        .I3(p_1_in_0[5]),
        .O(\s_rdata[31]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_rdata[31]_i_33 
       (.I0(p_1_in_0[12]),
        .I1(p_1_in_0[13]),
        .O(\s_rdata[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \s_rdata[31]_i_34 
       (.I0(p_1_in_0[3]),
        .I1(p_1_in_0[6]),
        .I2(p_1_in_0[12]),
        .I3(p_1_in_0[8]),
        .I4(p_1_in_0[4]),
        .I5(p_1_in_0[10]),
        .O(\s_rdata[31]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdata[31]_i_35 
       (.I0(p_1_in_0[2]),
        .I1(p_1_in_0[13]),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[1]),
        .O(\s_rdata[31]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEEFEEEEEE)) 
    \s_rdata[31]_i_4 
       (.I0(\buf_addr_reg_n_0_[0] ),
        .I1(\buf_addr_reg_n_0_[1] ),
        .I2(\s_rdata[31]_i_11_n_0 ),
        .I3(\s_rdata[31]_i_12_n_0 ),
        .I4(\s_rdata[31]_i_13_n_0 ),
        .I5(\s_rdata[31]_i_14_n_0 ),
        .O(\s_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_rdata[31]_i_6 
       (.I0(p_1_in_0[12]),
        .I1(p_1_in_0[11]),
        .I2(p_1_in_0[13]),
        .I3(\s_rdata[31]_i_17_n_0 ),
        .I4(\s_rdata[31]_i_18_n_0 ),
        .O(\s_rdata[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_rdata[31]_i_8 
       (.I0(\s_rdata[31]_i_21_n_0 ),
        .I1(\s_rdata[31]_i_22_n_0 ),
        .I2(\s_rdata[31]_i_23_n_0 ),
        .I3(\s_rdata[31]_i_24_n_0 ),
        .I4(\s_rdata[31]_i_25_n_0 ),
        .O(\s_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \s_rdata[31]_i_9 
       (.I0(\led_data[15]_i_5_n_0 ),
        .I1(\led_data[15]_i_3_n_0 ),
        .I2(p_1_in_0[12]),
        .I3(p_1_in_0[10]),
        .I4(\s_rdata[31]_i_26_n_0 ),
        .I5(\s_rdata[31]_i_27_n_0 ),
        .O(\s_rdata[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[3]_i_1 
       (.I0(\s_rdata[3]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[3]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[3]_i_4_n_0 ),
        .O(\s_rdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[3]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[3]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[3]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[3] ),
        .I1(\led_rg0_data_reg_n_0_[3] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[3]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[3]),
        .O(\s_rdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[3]_i_6 
       (.I0(btn_key_r[3]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[3]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(\num_data_reg_n_0_[3] ),
        .O(\s_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[3]_i_7 
       (.I0(cr03[3]),
        .I1(cr02[3]),
        .I2(p_1_in_0[1]),
        .I3(cr01[3]),
        .I4(p_1_in_0[0]),
        .I5(cr00[3]),
        .O(\s_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[3]_i_8 
       (.I0(cr07[3]),
        .I1(cr06[3]),
        .I2(p_1_in_0[1]),
        .I3(cr05[3]),
        .I4(p_1_in_0[0]),
        .I5(cr04[3]),
        .O(\s_rdata[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[4]_i_1 
       (.I0(\s_rdata[4]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[4]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[4]_i_4_n_0 ),
        .O(\s_rdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[4]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[4]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[4]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[4] ),
        .I1(\led_rg0_data_reg_n_0_[4] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[4]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[4]),
        .O(\s_rdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[4]_i_6 
       (.I0(btn_key_r[4]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[4]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(data6[0]),
        .O(\s_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[4]_i_7 
       (.I0(cr03[4]),
        .I1(cr02[4]),
        .I2(p_1_in_0[1]),
        .I3(cr01[4]),
        .I4(p_1_in_0[0]),
        .I5(cr00[4]),
        .O(\s_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[4]_i_8 
       (.I0(cr07[4]),
        .I1(cr06[4]),
        .I2(p_1_in_0[1]),
        .I3(cr05[4]),
        .I4(p_1_in_0[0]),
        .I5(cr04[4]),
        .O(\s_rdata[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[5]_i_1 
       (.I0(\s_rdata[5]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[5]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[5]_i_4_n_0 ),
        .O(\s_rdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[5]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[5]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[5]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[5] ),
        .I1(\led_rg0_data_reg_n_0_[5] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[5]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[5]),
        .O(\s_rdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[5]_i_6 
       (.I0(btn_key_r[5]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[5]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(data6[1]),
        .O(\s_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[5]_i_7 
       (.I0(cr03[5]),
        .I1(cr02[5]),
        .I2(p_1_in_0[1]),
        .I3(cr01[5]),
        .I4(p_1_in_0[0]),
        .I5(cr00[5]),
        .O(\s_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[5]_i_8 
       (.I0(cr07[5]),
        .I1(cr06[5]),
        .I2(p_1_in_0[1]),
        .I3(cr05[5]),
        .I4(p_1_in_0[0]),
        .I5(cr04[5]),
        .O(\s_rdata[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[6]_i_1 
       (.I0(\s_rdata[6]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[6]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[6]_i_4_n_0 ),
        .O(\s_rdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[6]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[6]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[6]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[6] ),
        .I1(\led_rg0_data_reg_n_0_[6] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[6]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[6]),
        .O(\s_rdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[6]_i_6 
       (.I0(btn_key_r[6]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[6]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(data6[2]),
        .O(\s_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[6]_i_7 
       (.I0(cr03[6]),
        .I1(cr02[6]),
        .I2(p_1_in_0[1]),
        .I3(cr01[6]),
        .I4(p_1_in_0[0]),
        .I5(cr00[6]),
        .O(\s_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[6]_i_8 
       (.I0(cr07[6]),
        .I1(cr06[6]),
        .I2(p_1_in_0[1]),
        .I3(cr05[6]),
        .I4(p_1_in_0[0]),
        .I5(cr04[6]),
        .O(\s_rdata[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[7]_i_1 
       (.I0(\s_rdata[7]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[7]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[7]_i_4_n_0 ),
        .O(\s_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[7]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[7]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[7]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[7] ),
        .I1(\led_rg0_data_reg_n_0_[7] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[7]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[7]),
        .O(\s_rdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_rdata[7]_i_6 
       (.I0(btn_key_r[7]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(switch[7]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .I4(data6[3]),
        .O(\s_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[7]_i_7 
       (.I0(cr03[7]),
        .I1(cr02[7]),
        .I2(p_1_in_0[1]),
        .I3(cr01[7]),
        .I4(p_1_in_0[0]),
        .I5(cr00[7]),
        .O(\s_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[7]_i_8 
       (.I0(cr07[7]),
        .I1(cr06[7]),
        .I2(p_1_in_0[1]),
        .I3(cr05[7]),
        .I4(p_1_in_0[0]),
        .I5(cr04[7]),
        .O(\s_rdata[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[8]_i_1 
       (.I0(\s_rdata[8]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[8]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[8]_i_4_n_0 ),
        .O(\s_rdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[8]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[8]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[8]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[8] ),
        .I1(\led_rg0_data_reg_n_0_[8] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[8]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[8]),
        .O(\s_rdata[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[8]_i_6 
       (.I0(btn_key_r[8]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data5[0]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[8]_i_7 
       (.I0(cr03[8]),
        .I1(cr02[8]),
        .I2(p_1_in_0[1]),
        .I3(cr01[8]),
        .I4(p_1_in_0[0]),
        .I5(cr00[8]),
        .O(\s_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[8]_i_8 
       (.I0(cr07[8]),
        .I1(cr06[8]),
        .I2(p_1_in_0[1]),
        .I3(cr05[8]),
        .I4(p_1_in_0[0]),
        .I5(cr04[8]),
        .O(\s_rdata[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_rdata[9]_i_1 
       (.I0(\s_rdata[9]_i_2_n_0 ),
        .I1(\s_rdata[31]_i_4_n_0 ),
        .I2(\s_rdata_reg[9]_i_3_n_0 ),
        .I3(\s_rdata[31]_i_6_n_0 ),
        .I4(\s_rdata_reg[9]_i_4_n_0 ),
        .O(\s_rdata[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_rdata[9]_i_2 
       (.I0(\s_rdata[31]_i_8_n_0 ),
        .I1(timer_reg[9]),
        .I2(\s_rdata[31]_i_9_n_0 ),
        .I3(\s_rdata[31]_i_10_n_0 ),
        .O(\s_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[9]_i_5 
       (.I0(\led_rg1_data_reg_n_0_[9] ),
        .I1(\led_rg0_data_reg_n_0_[9] ),
        .I2(\s_rdata[31]_i_10_n_0 ),
        .I3(led[9]),
        .I4(\s_rdata[31]_i_8_n_0 ),
        .I5(order_addr_reg[9]),
        .O(\s_rdata[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_rdata[9]_i_6 
       (.I0(btn_key_r[9]),
        .I1(\s_rdata[31]_i_10_n_0 ),
        .I2(data5[1]),
        .I3(\s_rdata[31]_i_8_n_0 ),
        .O(\s_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[9]_i_7 
       (.I0(cr03[9]),
        .I1(cr02[9]),
        .I2(p_1_in_0[1]),
        .I3(cr01[9]),
        .I4(p_1_in_0[0]),
        .I5(cr00[9]),
        .O(\s_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_rdata[9]_i_8 
       (.I0(cr07[9]),
        .I1(cr06[9]),
        .I2(p_1_in_0[1]),
        .I3(cr05[9]),
        .I4(p_1_in_0[0]),
        .I5(cr04[9]),
        .O(\s_rdata[9]_i_8_n_0 ));
  FDRE \s_rdata_reg[0] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[0]_i_1_n_0 ),
        .Q(s_rdata[0]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[0]_i_3 
       (.I0(\s_rdata[0]_i_5_n_0 ),
        .I1(\s_rdata[0]_i_6_n_0 ),
        .O(\s_rdata_reg[0]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[0]_i_4 
       (.I0(\s_rdata[0]_i_7_n_0 ),
        .I1(\s_rdata[0]_i_8_n_0 ),
        .O(\s_rdata_reg[0]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[10] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[10]_i_1_n_0 ),
        .Q(s_rdata[10]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[10]_i_3 
       (.I0(\s_rdata[10]_i_5_n_0 ),
        .I1(\s_rdata[10]_i_6_n_0 ),
        .O(\s_rdata_reg[10]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[10]_i_4 
       (.I0(\s_rdata[10]_i_7_n_0 ),
        .I1(\s_rdata[10]_i_8_n_0 ),
        .O(\s_rdata_reg[10]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[11] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[11]_i_1_n_0 ),
        .Q(s_rdata[11]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[11]_i_3 
       (.I0(\s_rdata[11]_i_5_n_0 ),
        .I1(\s_rdata[11]_i_6_n_0 ),
        .O(\s_rdata_reg[11]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[11]_i_4 
       (.I0(\s_rdata[11]_i_7_n_0 ),
        .I1(\s_rdata[11]_i_8_n_0 ),
        .O(\s_rdata_reg[11]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[12] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[12]_i_1_n_0 ),
        .Q(s_rdata[12]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[12]_i_3 
       (.I0(\s_rdata[12]_i_5_n_0 ),
        .I1(\s_rdata[12]_i_6_n_0 ),
        .O(\s_rdata_reg[12]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[12]_i_4 
       (.I0(\s_rdata[12]_i_7_n_0 ),
        .I1(\s_rdata[12]_i_8_n_0 ),
        .O(\s_rdata_reg[12]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[13] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[13]_i_1_n_0 ),
        .Q(s_rdata[13]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[13]_i_3 
       (.I0(\s_rdata[13]_i_5_n_0 ),
        .I1(\s_rdata[13]_i_6_n_0 ),
        .O(\s_rdata_reg[13]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[13]_i_4 
       (.I0(\s_rdata[13]_i_7_n_0 ),
        .I1(\s_rdata[13]_i_8_n_0 ),
        .O(\s_rdata_reg[13]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[14] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[14]_i_1_n_0 ),
        .Q(s_rdata[14]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[14]_i_3 
       (.I0(\s_rdata[14]_i_5_n_0 ),
        .I1(\s_rdata[14]_i_6_n_0 ),
        .O(\s_rdata_reg[14]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[14]_i_4 
       (.I0(\s_rdata[14]_i_7_n_0 ),
        .I1(\s_rdata[14]_i_8_n_0 ),
        .O(\s_rdata_reg[14]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[15] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[15]_i_1_n_0 ),
        .Q(s_rdata[15]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[15]_i_3 
       (.I0(\s_rdata[15]_i_5_n_0 ),
        .I1(\s_rdata[15]_i_6_n_0 ),
        .O(\s_rdata_reg[15]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[15]_i_4 
       (.I0(\s_rdata[15]_i_7_n_0 ),
        .I1(\s_rdata[15]_i_8_n_0 ),
        .O(\s_rdata_reg[15]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[16] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[16]_i_1_n_0 ),
        .Q(s_rdata[16]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[16]_i_3 
       (.I0(\s_rdata[16]_i_5_n_0 ),
        .I1(\s_rdata[16]_i_6_n_0 ),
        .O(\s_rdata_reg[16]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[16]_i_4 
       (.I0(\s_rdata[16]_i_7_n_0 ),
        .I1(\s_rdata[16]_i_8_n_0 ),
        .O(\s_rdata_reg[16]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[17] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[17]_i_1_n_0 ),
        .Q(s_rdata[17]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[17]_i_3 
       (.I0(\s_rdata[17]_i_5_n_0 ),
        .I1(\s_rdata[17]_i_6_n_0 ),
        .O(\s_rdata_reg[17]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[17]_i_4 
       (.I0(\s_rdata[17]_i_7_n_0 ),
        .I1(\s_rdata[17]_i_8_n_0 ),
        .O(\s_rdata_reg[17]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[18] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[18]_i_1_n_0 ),
        .Q(s_rdata[18]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[18]_i_3 
       (.I0(\s_rdata[18]_i_5_n_0 ),
        .I1(\s_rdata[18]_i_6_n_0 ),
        .O(\s_rdata_reg[18]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[18]_i_4 
       (.I0(\s_rdata[18]_i_7_n_0 ),
        .I1(\s_rdata[18]_i_8_n_0 ),
        .O(\s_rdata_reg[18]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[19] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[19]_i_1_n_0 ),
        .Q(s_rdata[19]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[19]_i_3 
       (.I0(\s_rdata[19]_i_5_n_0 ),
        .I1(\s_rdata[19]_i_6_n_0 ),
        .O(\s_rdata_reg[19]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[19]_i_4 
       (.I0(\s_rdata[19]_i_7_n_0 ),
        .I1(\s_rdata[19]_i_8_n_0 ),
        .O(\s_rdata_reg[19]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[1] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[1]_i_1_n_0 ),
        .Q(s_rdata[1]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[1]_i_3 
       (.I0(\s_rdata[1]_i_5_n_0 ),
        .I1(\s_rdata[1]_i_6_n_0 ),
        .O(\s_rdata_reg[1]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[1]_i_4 
       (.I0(\s_rdata[1]_i_7_n_0 ),
        .I1(\s_rdata[1]_i_8_n_0 ),
        .O(\s_rdata_reg[1]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[20] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[20]_i_1_n_0 ),
        .Q(s_rdata[20]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[20]_i_3 
       (.I0(\s_rdata[20]_i_5_n_0 ),
        .I1(\s_rdata[20]_i_6_n_0 ),
        .O(\s_rdata_reg[20]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[20]_i_4 
       (.I0(\s_rdata[20]_i_7_n_0 ),
        .I1(\s_rdata[20]_i_8_n_0 ),
        .O(\s_rdata_reg[20]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[21] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[21]_i_1_n_0 ),
        .Q(s_rdata[21]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[21]_i_3 
       (.I0(\s_rdata[21]_i_5_n_0 ),
        .I1(\s_rdata[21]_i_6_n_0 ),
        .O(\s_rdata_reg[21]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[21]_i_4 
       (.I0(\s_rdata[21]_i_7_n_0 ),
        .I1(\s_rdata[21]_i_8_n_0 ),
        .O(\s_rdata_reg[21]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[22] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[22]_i_1_n_0 ),
        .Q(s_rdata[22]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[22]_i_3 
       (.I0(\s_rdata[22]_i_5_n_0 ),
        .I1(\s_rdata[22]_i_6_n_0 ),
        .O(\s_rdata_reg[22]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[22]_i_4 
       (.I0(\s_rdata[22]_i_7_n_0 ),
        .I1(\s_rdata[22]_i_8_n_0 ),
        .O(\s_rdata_reg[22]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[23] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[23]_i_1_n_0 ),
        .Q(s_rdata[23]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[23]_i_3 
       (.I0(\s_rdata[23]_i_5_n_0 ),
        .I1(\s_rdata[23]_i_6_n_0 ),
        .O(\s_rdata_reg[23]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[23]_i_4 
       (.I0(\s_rdata[23]_i_7_n_0 ),
        .I1(\s_rdata[23]_i_8_n_0 ),
        .O(\s_rdata_reg[23]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[24] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[24]_i_1_n_0 ),
        .Q(s_rdata[24]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[24]_i_3 
       (.I0(\s_rdata[24]_i_5_n_0 ),
        .I1(\s_rdata[24]_i_6_n_0 ),
        .O(\s_rdata_reg[24]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[24]_i_4 
       (.I0(\s_rdata[24]_i_7_n_0 ),
        .I1(\s_rdata[24]_i_8_n_0 ),
        .O(\s_rdata_reg[24]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[25] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[25]_i_1_n_0 ),
        .Q(s_rdata[25]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[25]_i_3 
       (.I0(\s_rdata[25]_i_5_n_0 ),
        .I1(\s_rdata[25]_i_6_n_0 ),
        .O(\s_rdata_reg[25]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[25]_i_4 
       (.I0(\s_rdata[25]_i_7_n_0 ),
        .I1(\s_rdata[25]_i_8_n_0 ),
        .O(\s_rdata_reg[25]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[26] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[26]_i_1_n_0 ),
        .Q(s_rdata[26]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[26]_i_3 
       (.I0(\s_rdata[26]_i_5_n_0 ),
        .I1(\s_rdata[26]_i_6_n_0 ),
        .O(\s_rdata_reg[26]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[26]_i_4 
       (.I0(\s_rdata[26]_i_7_n_0 ),
        .I1(\s_rdata[26]_i_8_n_0 ),
        .O(\s_rdata_reg[26]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[27] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[27]_i_1_n_0 ),
        .Q(s_rdata[27]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[27]_i_3 
       (.I0(\s_rdata[27]_i_5_n_0 ),
        .I1(\s_rdata[27]_i_6_n_0 ),
        .O(\s_rdata_reg[27]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[27]_i_4 
       (.I0(\s_rdata[27]_i_7_n_0 ),
        .I1(\s_rdata[27]_i_8_n_0 ),
        .O(\s_rdata_reg[27]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[28] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[28]_i_1_n_0 ),
        .Q(s_rdata[28]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[28]_i_3 
       (.I0(\s_rdata[28]_i_5_n_0 ),
        .I1(\s_rdata[28]_i_6_n_0 ),
        .O(\s_rdata_reg[28]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[28]_i_4 
       (.I0(\s_rdata[28]_i_7_n_0 ),
        .I1(\s_rdata[28]_i_8_n_0 ),
        .O(\s_rdata_reg[28]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[29] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[29]_i_1_n_0 ),
        .Q(s_rdata[29]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[29]_i_3 
       (.I0(\s_rdata[29]_i_5_n_0 ),
        .I1(\s_rdata[29]_i_6_n_0 ),
        .O(\s_rdata_reg[29]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[29]_i_4 
       (.I0(\s_rdata[29]_i_7_n_0 ),
        .I1(\s_rdata[29]_i_8_n_0 ),
        .O(\s_rdata_reg[29]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[2] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[2]_i_1_n_0 ),
        .Q(s_rdata[2]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[2]_i_3 
       (.I0(\s_rdata[2]_i_5_n_0 ),
        .I1(\s_rdata[2]_i_6_n_0 ),
        .O(\s_rdata_reg[2]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[2]_i_4 
       (.I0(\s_rdata[2]_i_7_n_0 ),
        .I1(\s_rdata[2]_i_8_n_0 ),
        .O(\s_rdata_reg[2]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[30] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[30]_i_1_n_0 ),
        .Q(s_rdata[30]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[30]_i_3 
       (.I0(\s_rdata[30]_i_5_n_0 ),
        .I1(\s_rdata[30]_i_6_n_0 ),
        .O(\s_rdata_reg[30]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[30]_i_4 
       (.I0(\s_rdata[30]_i_7_n_0 ),
        .I1(\s_rdata[30]_i_8_n_0 ),
        .O(\s_rdata_reg[30]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[31] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[31]_i_2_n_0 ),
        .Q(s_rdata[31]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[31]_i_5 
       (.I0(\s_rdata[31]_i_15_n_0 ),
        .I1(\s_rdata[31]_i_16_n_0 ),
        .O(\s_rdata_reg[31]_i_5_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[31]_i_7 
       (.I0(\s_rdata[31]_i_19_n_0 ),
        .I1(\s_rdata[31]_i_20_n_0 ),
        .O(\s_rdata_reg[31]_i_7_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[3] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[3]_i_1_n_0 ),
        .Q(s_rdata[3]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[3]_i_3 
       (.I0(\s_rdata[3]_i_5_n_0 ),
        .I1(\s_rdata[3]_i_6_n_0 ),
        .O(\s_rdata_reg[3]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[3]_i_4 
       (.I0(\s_rdata[3]_i_7_n_0 ),
        .I1(\s_rdata[3]_i_8_n_0 ),
        .O(\s_rdata_reg[3]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[4] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[4]_i_1_n_0 ),
        .Q(s_rdata[4]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[4]_i_3 
       (.I0(\s_rdata[4]_i_5_n_0 ),
        .I1(\s_rdata[4]_i_6_n_0 ),
        .O(\s_rdata_reg[4]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[4]_i_4 
       (.I0(\s_rdata[4]_i_7_n_0 ),
        .I1(\s_rdata[4]_i_8_n_0 ),
        .O(\s_rdata_reg[4]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[5] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[5]_i_1_n_0 ),
        .Q(s_rdata[5]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[5]_i_3 
       (.I0(\s_rdata[5]_i_5_n_0 ),
        .I1(\s_rdata[5]_i_6_n_0 ),
        .O(\s_rdata_reg[5]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[5]_i_4 
       (.I0(\s_rdata[5]_i_7_n_0 ),
        .I1(\s_rdata[5]_i_8_n_0 ),
        .O(\s_rdata_reg[5]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[6] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[6]_i_1_n_0 ),
        .Q(s_rdata[6]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[6]_i_3 
       (.I0(\s_rdata[6]_i_5_n_0 ),
        .I1(\s_rdata[6]_i_6_n_0 ),
        .O(\s_rdata_reg[6]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[6]_i_4 
       (.I0(\s_rdata[6]_i_7_n_0 ),
        .I1(\s_rdata[6]_i_8_n_0 ),
        .O(\s_rdata_reg[6]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[7] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[7]_i_1_n_0 ),
        .Q(s_rdata[7]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[7]_i_3 
       (.I0(\s_rdata[7]_i_5_n_0 ),
        .I1(\s_rdata[7]_i_6_n_0 ),
        .O(\s_rdata_reg[7]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[7]_i_4 
       (.I0(\s_rdata[7]_i_7_n_0 ),
        .I1(\s_rdata[7]_i_8_n_0 ),
        .O(\s_rdata_reg[7]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[8] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[8]_i_1_n_0 ),
        .Q(s_rdata[8]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[8]_i_3 
       (.I0(\s_rdata[8]_i_5_n_0 ),
        .I1(\s_rdata[8]_i_6_n_0 ),
        .O(\s_rdata_reg[8]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[8]_i_4 
       (.I0(\s_rdata[8]_i_7_n_0 ),
        .I1(\s_rdata[8]_i_8_n_0 ),
        .O(\s_rdata_reg[8]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  FDRE \s_rdata_reg[9] 
       (.C(aclk),
        .CE(\s_rdata[31]_i_1_n_0 ),
        .D(\s_rdata[9]_i_1_n_0 ),
        .Q(s_rdata[9]),
        .R(s_wready_i_1_n_0));
  MUXF7 \s_rdata_reg[9]_i_3 
       (.I0(\s_rdata[9]_i_5_n_0 ),
        .I1(\s_rdata[9]_i_6_n_0 ),
        .O(\s_rdata_reg[9]_i_3_n_0 ),
        .S(\s_rdata[31]_i_9_n_0 ));
  MUXF7 \s_rdata_reg[9]_i_4 
       (.I0(\s_rdata[9]_i_7_n_0 ),
        .I1(\s_rdata[9]_i_8_n_0 ),
        .O(\s_rdata_reg[9]_i_4_n_0 ),
        .S(p_1_in_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    s_rlast_i_1
       (.I0(write),
        .I1(busy),
        .I2(s_rlast_reg_0),
        .O(s_rlast_i_1_n_0));
  FDRE s_rlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_rlast_i_1_n_0),
        .Q(s_rlast_reg_0),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0FFF4444)) 
    s_rvalid_i_1
       (.I0(write),
        .I1(busy),
        .I2(s_rlast_reg_0),
        .I3(s_rready),
        .I4(s_rvalid_reg_0),
        .O(s_rvalid_i_1_n_0));
  FDRE s_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_rvalid_i_1_n_0),
        .Q(s_rvalid_reg_0),
        .R(s_wready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_wready_i_1
       (.I0(aresetn),
        .O(s_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'hBFAA)) 
    s_wready_i_2
       (.I0(aw_enter),
        .I1(s_wlast),
        .I2(s_wvalid),
        .I3(s_wready_reg_0),
        .O(s_wready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2022)) 
    s_wready_i_3
       (.I0(s_awvalid),
        .I1(busy),
        .I2(R_or_W),
        .I3(s_arvalid),
        .O(aw_enter));
  FDRE s_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_wready_i_2_n_0),
        .Q(s_wready_reg_0),
        .R(s_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[0]_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(sel0[1]),
        .I3(data1[0]),
        .I4(sel0[0]),
        .I5(data0[0]),
        .O(\scan_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[0]_i_3 
       (.I0(\num_data_reg_n_0_[0] ),
        .I1(data6[0]),
        .I2(sel0[1]),
        .I3(data5[0]),
        .I4(sel0[0]),
        .I5(data4[0]),
        .O(\scan_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[1]_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(sel0[1]),
        .I3(data1[1]),
        .I4(sel0[0]),
        .I5(data0[1]),
        .O(\scan_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[1]_i_3 
       (.I0(\num_data_reg_n_0_[1] ),
        .I1(data6[1]),
        .I2(sel0[1]),
        .I3(data5[1]),
        .I4(sel0[0]),
        .I5(data4[1]),
        .O(\scan_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[2]_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(sel0[1]),
        .I3(data1[2]),
        .I4(sel0[0]),
        .I5(data0[2]),
        .O(\scan_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[2]_i_3 
       (.I0(\num_data_reg_n_0_[2] ),
        .I1(data6[2]),
        .I2(sel0[1]),
        .I3(data5[2]),
        .I4(sel0[0]),
        .I5(data4[2]),
        .O(\scan_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[3]_i_2 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(sel0[1]),
        .I3(data1[3]),
        .I4(sel0[0]),
        .I5(data0[3]),
        .O(\scan_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scan_data[3]_i_3 
       (.I0(\num_data_reg_n_0_[3] ),
        .I1(data6[3]),
        .I2(sel0[1]),
        .I3(data5[3]),
        .I4(sel0[0]),
        .I5(data4[3]),
        .O(\scan_data[3]_i_3_n_0 ));
  FDRE \scan_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_2[0]),
        .Q(scan_data[0]),
        .R(s_wready_i_1_n_0));
  MUXF7 \scan_data_reg[0]_i_1 
       (.I0(\scan_data[0]_i_2_n_0 ),
        .I1(\scan_data[0]_i_3_n_0 ),
        .O(scan_data_2[0]),
        .S(sel0[2]));
  FDRE \scan_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_2[1]),
        .Q(scan_data[1]),
        .R(s_wready_i_1_n_0));
  MUXF7 \scan_data_reg[1]_i_1 
       (.I0(\scan_data[1]_i_2_n_0 ),
        .I1(\scan_data[1]_i_3_n_0 ),
        .O(scan_data_2[1]),
        .S(sel0[2]));
  FDRE \scan_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_2[2]),
        .Q(scan_data[2]),
        .R(s_wready_i_1_n_0));
  MUXF7 \scan_data_reg[2]_i_1 
       (.I0(\scan_data[2]_i_2_n_0 ),
        .I1(\scan_data[2]_i_3_n_0 ),
        .O(scan_data_2[2]),
        .S(sel0[2]));
  FDRE \scan_data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(scan_data_2[3]),
        .Q(scan_data[3]),
        .R(s_wready_i_1_n_0));
  MUXF7 \scan_data_reg[3]_i_1 
       (.I0(\scan_data[3]_i_2_n_0 ),
        .I1(\scan_data[3]_i_3_n_0 ),
        .O(scan_data_2[3]),
        .S(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state_count[0]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_count[1]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .I1(\state_count_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \state_count[2]_i_1 
       (.I0(\state_count_reg_n_0_[0] ),
        .I1(\state_count_reg_n_0_[1] ),
        .I2(\state_count_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \state_count[3]_i_1 
       (.I0(p_0_in13_in),
        .I1(aresetn),
        .O(\state_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state_count[3]_i_2 
       (.I0(\state_count_reg_n_0_[1] ),
        .I1(\state_count_reg_n_0_[0] ),
        .I2(\state_count_reg_n_0_[2] ),
        .O(p_0_in[3]));
  FDRE \state_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\state_count_reg_n_0_[0] ),
        .R(\state_count[3]_i_1_n_0 ));
  FDRE \state_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\state_count_reg_n_0_[1] ),
        .R(\state_count[3]_i_1_n_0 ));
  FDRE \state_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\state_count_reg_n_0_[2] ),
        .R(\state_count[3]_i_1_n_0 ));
  FDRE \state_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in13_in),
        .R(\state_count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \step0_count[0]_i_1 
       (.I0(aresetn),
        .I1(step0_flag),
        .O(\step0_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \step0_count[0]_i_3 
       (.I0(\step0_count_reg_n_0_[0] ),
        .O(\step0_count[0]_i_3_n_0 ));
  FDRE \step0_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_7 ),
        .Q(\step0_count_reg_n_0_[0] ),
        .R(\step0_count[0]_i_1_n_0 ));
  CARRY4 \step0_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\step0_count_reg[0]_i_2_n_0 ,\step0_count_reg[0]_i_2_n_1 ,\step0_count_reg[0]_i_2_n_2 ,\step0_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step0_count_reg[0]_i_2_n_4 ,\step0_count_reg[0]_i_2_n_5 ,\step0_count_reg[0]_i_2_n_6 ,\step0_count_reg[0]_i_2_n_7 }),
        .S({\step0_count_reg_n_0_[3] ,\step0_count_reg_n_0_[2] ,\step0_count_reg_n_0_[1] ,\step0_count[0]_i_3_n_0 }));
  FDRE \step0_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[10] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[11] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[12] ),
        .R(\step0_count[0]_i_1_n_0 ));
  CARRY4 \step0_count_reg[12]_i_1 
       (.CI(\step0_count_reg[8]_i_1_n_0 ),
        .CO({\step0_count_reg[12]_i_1_n_0 ,\step0_count_reg[12]_i_1_n_1 ,\step0_count_reg[12]_i_1_n_2 ,\step0_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[12]_i_1_n_4 ,\step0_count_reg[12]_i_1_n_5 ,\step0_count_reg[12]_i_1_n_6 ,\step0_count_reg[12]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[15] ,\step0_count_reg_n_0_[14] ,\step0_count_reg_n_0_[13] ,\step0_count_reg_n_0_[12] }));
  FDRE \step0_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[13] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[14] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[12]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[15] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[16] ),
        .R(\step0_count[0]_i_1_n_0 ));
  CARRY4 \step0_count_reg[16]_i_1 
       (.CI(\step0_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_step0_count_reg[16]_i_1_CO_UNCONNECTED [3],\step0_count_reg[16]_i_1_n_1 ,\step0_count_reg[16]_i_1_n_2 ,\step0_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[16]_i_1_n_4 ,\step0_count_reg[16]_i_1_n_5 ,\step0_count_reg[16]_i_1_n_6 ,\step0_count_reg[16]_i_1_n_7 }),
        .S({step0_sample,\step0_count_reg_n_0_[18] ,\step0_count_reg_n_0_[17] ,\step0_count_reg_n_0_[16] }));
  FDRE \step0_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[17] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[18] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[16]_i_1_n_4 ),
        .Q(step0_sample),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_6 ),
        .Q(\step0_count_reg_n_0_[1] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_5 ),
        .Q(\step0_count_reg_n_0_[2] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[0]_i_2_n_4 ),
        .Q(\step0_count_reg_n_0_[3] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[4] ),
        .R(\step0_count[0]_i_1_n_0 ));
  CARRY4 \step0_count_reg[4]_i_1 
       (.CI(\step0_count_reg[0]_i_2_n_0 ),
        .CO({\step0_count_reg[4]_i_1_n_0 ,\step0_count_reg[4]_i_1_n_1 ,\step0_count_reg[4]_i_1_n_2 ,\step0_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[4]_i_1_n_4 ,\step0_count_reg[4]_i_1_n_5 ,\step0_count_reg[4]_i_1_n_6 ,\step0_count_reg[4]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[7] ,\step0_count_reg_n_0_[6] ,\step0_count_reg_n_0_[5] ,\step0_count_reg_n_0_[4] }));
  FDRE \step0_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[5] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_5 ),
        .Q(\step0_count_reg_n_0_[6] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[4]_i_1_n_4 ),
        .Q(\step0_count_reg_n_0_[7] ),
        .R(\step0_count[0]_i_1_n_0 ));
  FDRE \step0_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_7 ),
        .Q(\step0_count_reg_n_0_[8] ),
        .R(\step0_count[0]_i_1_n_0 ));
  CARRY4 \step0_count_reg[8]_i_1 
       (.CI(\step0_count_reg[4]_i_1_n_0 ),
        .CO({\step0_count_reg[8]_i_1_n_0 ,\step0_count_reg[8]_i_1_n_1 ,\step0_count_reg[8]_i_1_n_2 ,\step0_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step0_count_reg[8]_i_1_n_4 ,\step0_count_reg[8]_i_1_n_5 ,\step0_count_reg[8]_i_1_n_6 ,\step0_count_reg[8]_i_1_n_7 }),
        .S({\step0_count_reg_n_0_[11] ,\step0_count_reg_n_0_[10] ,\step0_count_reg_n_0_[9] ,\step0_count_reg_n_0_[8] }));
  FDRE \step0_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step0_count_reg[8]_i_1_n_6 ),
        .Q(\step0_count_reg_n_0_[9] ),
        .R(\step0_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BE00)) 
    step0_flag_i_1
       (.I0(step0_flag),
        .I1(btn_step[0]),
        .I2(btn_step0_r),
        .I3(aresetn),
        .I4(step0_sample),
        .O(step0_flag_i_1_n_0));
  FDRE step0_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(step0_flag_i_1_n_0),
        .Q(step0_flag),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \step1_count[0]_i_1 
       (.I0(aresetn),
        .I1(step1_flag),
        .O(\step1_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \step1_count[0]_i_3 
       (.I0(\step1_count_reg_n_0_[0] ),
        .O(\step1_count[0]_i_3_n_0 ));
  FDRE \step1_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_7 ),
        .Q(\step1_count_reg_n_0_[0] ),
        .R(\step1_count[0]_i_1_n_0 ));
  CARRY4 \step1_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\step1_count_reg[0]_i_2_n_0 ,\step1_count_reg[0]_i_2_n_1 ,\step1_count_reg[0]_i_2_n_2 ,\step1_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\step1_count_reg[0]_i_2_n_4 ,\step1_count_reg[0]_i_2_n_5 ,\step1_count_reg[0]_i_2_n_6 ,\step1_count_reg[0]_i_2_n_7 }),
        .S({\step1_count_reg_n_0_[3] ,\step1_count_reg_n_0_[2] ,\step1_count_reg_n_0_[1] ,\step1_count[0]_i_3_n_0 }));
  FDRE \step1_count_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[10] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[11] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[12] ),
        .R(\step1_count[0]_i_1_n_0 ));
  CARRY4 \step1_count_reg[12]_i_1 
       (.CI(\step1_count_reg[8]_i_1_n_0 ),
        .CO({\step1_count_reg[12]_i_1_n_0 ,\step1_count_reg[12]_i_1_n_1 ,\step1_count_reg[12]_i_1_n_2 ,\step1_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[12]_i_1_n_4 ,\step1_count_reg[12]_i_1_n_5 ,\step1_count_reg[12]_i_1_n_6 ,\step1_count_reg[12]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[15] ,\step1_count_reg_n_0_[14] ,\step1_count_reg_n_0_[13] ,\step1_count_reg_n_0_[12] }));
  FDRE \step1_count_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[13] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[14] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[12]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[15] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[16] ),
        .R(\step1_count[0]_i_1_n_0 ));
  CARRY4 \step1_count_reg[16]_i_1 
       (.CI(\step1_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_step1_count_reg[16]_i_1_CO_UNCONNECTED [3],\step1_count_reg[16]_i_1_n_1 ,\step1_count_reg[16]_i_1_n_2 ,\step1_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[16]_i_1_n_4 ,\step1_count_reg[16]_i_1_n_5 ,\step1_count_reg[16]_i_1_n_6 ,\step1_count_reg[16]_i_1_n_7 }),
        .S({step1_sample,\step1_count_reg_n_0_[18] ,\step1_count_reg_n_0_[17] ,\step1_count_reg_n_0_[16] }));
  FDRE \step1_count_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[17] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[18] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[16]_i_1_n_4 ),
        .Q(step1_sample),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_6 ),
        .Q(\step1_count_reg_n_0_[1] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_5 ),
        .Q(\step1_count_reg_n_0_[2] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[0]_i_2_n_4 ),
        .Q(\step1_count_reg_n_0_[3] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[4] ),
        .R(\step1_count[0]_i_1_n_0 ));
  CARRY4 \step1_count_reg[4]_i_1 
       (.CI(\step1_count_reg[0]_i_2_n_0 ),
        .CO({\step1_count_reg[4]_i_1_n_0 ,\step1_count_reg[4]_i_1_n_1 ,\step1_count_reg[4]_i_1_n_2 ,\step1_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[4]_i_1_n_4 ,\step1_count_reg[4]_i_1_n_5 ,\step1_count_reg[4]_i_1_n_6 ,\step1_count_reg[4]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[7] ,\step1_count_reg_n_0_[6] ,\step1_count_reg_n_0_[5] ,\step1_count_reg_n_0_[4] }));
  FDRE \step1_count_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[5] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_5 ),
        .Q(\step1_count_reg_n_0_[6] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[4]_i_1_n_4 ),
        .Q(\step1_count_reg_n_0_[7] ),
        .R(\step1_count[0]_i_1_n_0 ));
  FDRE \step1_count_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_7 ),
        .Q(\step1_count_reg_n_0_[8] ),
        .R(\step1_count[0]_i_1_n_0 ));
  CARRY4 \step1_count_reg[8]_i_1 
       (.CI(\step1_count_reg[4]_i_1_n_0 ),
        .CO({\step1_count_reg[8]_i_1_n_0 ,\step1_count_reg[8]_i_1_n_1 ,\step1_count_reg[8]_i_1_n_2 ,\step1_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\step1_count_reg[8]_i_1_n_4 ,\step1_count_reg[8]_i_1_n_5 ,\step1_count_reg[8]_i_1_n_6 ,\step1_count_reg[8]_i_1_n_7 }),
        .S({\step1_count_reg_n_0_[11] ,\step1_count_reg_n_0_[10] ,\step1_count_reg_n_0_[9] ,\step1_count_reg_n_0_[8] }));
  FDRE \step1_count_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\step1_count_reg[8]_i_1_n_6 ),
        .Q(\step1_count_reg_n_0_[9] ),
        .R(\step1_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BE00)) 
    step1_flag_i_1
       (.I0(step1_flag),
        .I1(btn_step[1]),
        .I2(btn_step1_r),
        .I3(aresetn),
        .I4(step1_sample),
        .O(step1_flag_i_1_n_0));
  FDRE step1_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(step1_flag_i_1_n_0),
        .Q(step1_flag),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[0]_i_2 
       (.I0(s_wdata[0]),
        .I1(write_timer__8),
        .I2(timer_reg[0]),
        .O(\timer[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[0]_i_3 
       (.I0(s_wdata[3]),
        .I1(write_timer__8),
        .I2(timer_reg[3]),
        .O(\timer[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[0]_i_4 
       (.I0(s_wdata[2]),
        .I1(write_timer__8),
        .I2(timer_reg[2]),
        .O(\timer[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[0]_i_5 
       (.I0(s_wdata[1]),
        .I1(write_timer__8),
        .I2(timer_reg[1]),
        .O(\timer[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \timer[0]_i_6 
       (.I0(timer_reg[0]),
        .I1(s_wdata[0]),
        .I2(write_timer__8),
        .O(\timer[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \timer[0]_i_7 
       (.I0(p_17_in),
        .I1(\led_data[15]_i_2_n_0 ),
        .I2(\led_data[15]_i_3_n_0 ),
        .I3(p_1_in_0[1]),
        .I4(p_1_in_0[12]),
        .I5(\timer[0]_i_8_n_0 ),
        .O(write_timer__8));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[0]_i_8 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(p_1_in_0[10]),
        .I2(p_1_in_0[0]),
        .I3(\buf_addr_reg_n_0_[0] ),
        .I4(\led_data[15]_i_5_n_0 ),
        .O(\timer[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[12]_i_2 
       (.I0(s_wdata[15]),
        .I1(write_timer__8),
        .I2(timer_reg[15]),
        .O(\timer[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[12]_i_3 
       (.I0(s_wdata[14]),
        .I1(write_timer__8),
        .I2(timer_reg[14]),
        .O(\timer[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[12]_i_4 
       (.I0(s_wdata[13]),
        .I1(write_timer__8),
        .I2(timer_reg[13]),
        .O(\timer[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[12]_i_5 
       (.I0(s_wdata[12]),
        .I1(write_timer__8),
        .I2(timer_reg[12]),
        .O(\timer[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[16]_i_2 
       (.I0(s_wdata[19]),
        .I1(write_timer__8),
        .I2(timer_reg[19]),
        .O(\timer[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[16]_i_3 
       (.I0(s_wdata[18]),
        .I1(write_timer__8),
        .I2(timer_reg[18]),
        .O(\timer[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[16]_i_4 
       (.I0(s_wdata[17]),
        .I1(write_timer__8),
        .I2(timer_reg[17]),
        .O(\timer[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[16]_i_5 
       (.I0(s_wdata[16]),
        .I1(write_timer__8),
        .I2(timer_reg[16]),
        .O(\timer[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[20]_i_2 
       (.I0(s_wdata[23]),
        .I1(write_timer__8),
        .I2(timer_reg[23]),
        .O(\timer[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[20]_i_3 
       (.I0(s_wdata[22]),
        .I1(write_timer__8),
        .I2(timer_reg[22]),
        .O(\timer[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[20]_i_4 
       (.I0(s_wdata[21]),
        .I1(write_timer__8),
        .I2(timer_reg[21]),
        .O(\timer[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[20]_i_5 
       (.I0(s_wdata[20]),
        .I1(write_timer__8),
        .I2(timer_reg[20]),
        .O(\timer[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[24]_i_2 
       (.I0(s_wdata[27]),
        .I1(write_timer__8),
        .I2(timer_reg[27]),
        .O(\timer[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[24]_i_3 
       (.I0(s_wdata[26]),
        .I1(write_timer__8),
        .I2(timer_reg[26]),
        .O(\timer[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[24]_i_4 
       (.I0(s_wdata[25]),
        .I1(write_timer__8),
        .I2(timer_reg[25]),
        .O(\timer[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[24]_i_5 
       (.I0(s_wdata[24]),
        .I1(write_timer__8),
        .I2(timer_reg[24]),
        .O(\timer[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[28]_i_2 
       (.I0(s_wdata[31]),
        .I1(write_timer__8),
        .I2(timer_reg[31]),
        .O(\timer[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[28]_i_3 
       (.I0(s_wdata[30]),
        .I1(write_timer__8),
        .I2(timer_reg[30]),
        .O(\timer[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[28]_i_4 
       (.I0(s_wdata[29]),
        .I1(write_timer__8),
        .I2(timer_reg[29]),
        .O(\timer[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[28]_i_5 
       (.I0(s_wdata[28]),
        .I1(write_timer__8),
        .I2(timer_reg[28]),
        .O(\timer[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[4]_i_2 
       (.I0(s_wdata[7]),
        .I1(write_timer__8),
        .I2(timer_reg[7]),
        .O(\timer[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[4]_i_3 
       (.I0(s_wdata[6]),
        .I1(write_timer__8),
        .I2(timer_reg[6]),
        .O(\timer[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[4]_i_4 
       (.I0(s_wdata[5]),
        .I1(write_timer__8),
        .I2(timer_reg[5]),
        .O(\timer[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[4]_i_5 
       (.I0(s_wdata[4]),
        .I1(write_timer__8),
        .I2(timer_reg[4]),
        .O(\timer[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[8]_i_2 
       (.I0(s_wdata[11]),
        .I1(write_timer__8),
        .I2(timer_reg[11]),
        .O(\timer[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[8]_i_3 
       (.I0(s_wdata[10]),
        .I1(write_timer__8),
        .I2(timer_reg[10]),
        .O(\timer[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[8]_i_4 
       (.I0(s_wdata[9]),
        .I1(write_timer__8),
        .I2(timer_reg[9]),
        .O(\timer[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \timer[8]_i_5 
       (.I0(s_wdata[8]),
        .I1(write_timer__8),
        .I2(timer_reg[8]),
        .O(\timer[8]_i_5_n_0 ));
  FDRE \timer_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_7 ),
        .Q(timer_reg[0]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_1_n_0 ,\timer_reg[0]_i_1_n_1 ,\timer_reg[0]_i_1_n_2 ,\timer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\timer[0]_i_2_n_0 }),
        .O({\timer_reg[0]_i_1_n_4 ,\timer_reg[0]_i_1_n_5 ,\timer_reg[0]_i_1_n_6 ,\timer_reg[0]_i_1_n_7 }),
        .S({\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 ,\timer[0]_i_6_n_0 }));
  FDRE \timer_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }));
  FDRE \timer_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\timer_reg[16]_i_1_n_1 ,\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }));
  FDRE \timer_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_6 ),
        .Q(timer_reg[1]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\timer_reg[20]_i_1_n_1 ,\timer_reg[20]_i_1_n_2 ,\timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 }));
  FDRE \timer_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\timer_reg[24]_i_1_n_1 ,\timer_reg[24]_i_1_n_2 ,\timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S({\timer[24]_i_2_n_0 ,\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 }));
  FDRE \timer_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO({\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3],\timer_reg[28]_i_1_n_1 ,\timer_reg[28]_i_1_n_2 ,\timer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[28]_i_1_n_4 ,\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S({\timer[28]_i_2_n_0 ,\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 ,\timer[28]_i_5_n_0 }));
  FDRE \timer_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_5 ),
        .Q(timer_reg[2]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_4 ),
        .Q(timer_reg[3]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_1_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  FDRE \timer_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(s_wready_i_1_n_0));
  FDRE \timer_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(s_wready_i_1_n_0));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }));
  FDRE \timer_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(s_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF8FF080A)) 
    write_i_1
       (.I0(s_awvalid),
        .I1(R_or_W),
        .I2(busy),
        .I3(s_arvalid),
        .I4(write),
        .O(write_i_1_n_0));
  FDRE write_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_i_1_n_0),
        .Q(write),
        .R(s_wready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
