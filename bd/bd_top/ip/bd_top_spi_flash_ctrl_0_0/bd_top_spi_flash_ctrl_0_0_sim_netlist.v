// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:12:06 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_spi_flash_ctrl_0_0/bd_top_spi_flash_ctrl_0_0_sim_netlist.v
// Design      : bd_top_spi_flash_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_top_spi_flash_ctrl_0_0,spi_flash_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_flash_ctrl,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_top_spi_flash_ctrl_0_0
   (aclk,
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
    inta_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s, FREQ_HZ 33000000, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [15:0]spi_addr;
  input power_down_req;
  output power_down_ack;
  input fast_startup;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLEN" *) input [3:0]s_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWCACHE" *) input [3:0]s_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWID" *) input [5:0]s_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWADDR" *) input [31:0]s_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWSIZE" *) input [2:0]s_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWPROT" *) input [2:0]s_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWBURST" *) input [1:0]s_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s AWLOCK" *) input [1:0]s_awlock;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLEN" *) input [3:0]s_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARCACHE" *) input [3:0]s_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARID" *) input [5:0]s_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARADDR" *) input [31:0]s_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARSIZE" *) input [2:0]s_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARPROT" *) input [2:0]s_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARBURST" *) input [1:0]s_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARLOCK" *) input [1:0]s_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARVALID" *) input s_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s ARREADY" *) output s_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RID" *) output [5:0]s_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RDATA" *) output [31:0]s_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RRESP" *) output [1:0]s_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RLAST" *) output s_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RVALID" *) output s_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 33000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_pll_33_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SPI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPI_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_top_spi_flash_ctrl_0_0_SPI_CLK, INSERT_VIP 0" *) output SPI_CLK;
  output SPI_CS;
  inout SPI_MISO;
  inout SPI_MOSI;
  output inta_o;

  wire \<const0> ;
  wire SPI_CLK;
  wire SPI_CS;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SPI_MISO;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SPI_MOSI;
  wire aclk;
  wire aresetn;
  wire fast_startup;
  wire inta_o;
  wire power_down_ack;
  wire power_down_req;
  wire [31:0]s_araddr;
  wire [1:0]s_arburst;
  wire [5:0]s_arid;
  wire [3:0]s_arlen;
  wire s_arready;
  wire [2:0]s_arsize;
  wire s_arvalid;
  wire [31:0]s_awaddr;
  wire [5:0]s_awid;
  wire [3:0]s_awlen;
  wire s_awready;
  wire [2:0]s_awsize;
  wire s_awvalid;
  wire [5:0]s_bid;
  wire s_bready;
  wire s_bvalid;
  wire [31:0]s_rdata;
  wire s_rlast;
  wire s_rready;
  wire s_rvalid;
  wire [31:0]s_wdata;
  wire s_wlast;
  wire s_wready;
  wire s_wvalid;
  wire [15:0]spi_addr;

  assign s_bresp[1] = \<const0> ;
  assign s_bresp[0] = \<const0> ;
  assign s_rid[5:0] = s_bid;
  assign s_rresp[1] = \<const0> ;
  assign s_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl inst
       (.SPI_CLK(SPI_CLK),
        .SPI_CS(SPI_CS),
        .SPI_MISO(SPI_MISO),
        .SPI_MOSI(SPI_MOSI),
        .aclk(aclk),
        .aresetn(aresetn),
        .fast_startup(fast_startup),
        .inta_o(inta_o),
        .power_down_ack(power_down_ack),
        .power_down_req(power_down_req),
        .rvalid_reg_0(s_rvalid),
        .s_araddr(s_araddr),
        .s_arburst(s_arburst),
        .s_arid(s_arid),
        .s_arlen(s_arlen),
        .s_arready(s_arready),
        .s_arsize(s_arsize),
        .s_arvalid(s_arvalid),
        .s_awaddr(s_awaddr),
        .s_awid(s_awid),
        .s_awlen(s_awlen),
        .s_awready(s_awready),
        .s_awsize(s_awsize),
        .s_awvalid(s_awvalid),
        .s_bid(s_bid),
        .s_bready(s_bready),
        .s_bvalid(s_bvalid),
        .s_rdata(s_rdata),
        .s_rlast(s_rlast),
        .s_rready(s_rready),
        .s_wdata(s_wdata),
        .s_wlast(s_wlast),
        .s_wready(s_wready),
        .s_wvalid(s_wvalid),
        .spi_addr(spi_addr));
endmodule

(* ORIG_REF_NAME = "simple_spi_top" *) 
module bd_top_spi_flash_ctrl_0_0_simple_spi_top
   (inta_o,
    busy_reg_0,
    dual_in_r_reg,
    S,
    rvalid_reg,
    D,
    ns_idle,
    second_write_reg,
    \buf_addr_reg[0] ,
    \buf_len_reg[3] ,
    E,
    \nxt_addr_reg[0] ,
    \nxt_addr_reg[1] ,
    \nxt_addr_reg[1]_0 ,
    buf_busy_reg,
    \rd_state_reg[8] ,
    nxt_addr0,
    areset,
    buf_busy_reg_0,
    \param_reg[3]_0 ,
    sck_reg,
    sdi_o,
    sdo_o,
    \cswcnt_reg[0] ,
    SPI_CLK,
    SPI_CS,
    O,
    \rd_state_reg[2] ,
    \rd_state_reg[2]_0 ,
    spi_run_reg,
    cs_reg,
    \param_reg[3]_1 ,
    sr_shift_inst_r_reg,
    aclk,
    second_write,
    wcol_reg_0,
    Q,
    \rd_state_reg[3] ,
    \cs_timer_reg[0] ,
    \rd_state_reg[2]_1 ,
    buf_busy,
    pdreq_r,
    \rd_state_reg[6] ,
    dual_in_r,
    dual_in_r_reg_0,
    sample,
    sdi_i,
    spi_addr,
    aresetn,
    rvalid_reg_0,
    rvalid045_out,
    rvalid_reg_1,
    rvalid_reg_2,
    rvalid_reg_3,
    cs_reg_0,
    cs_reg_1,
    cs_reg_2,
    CO,
    mem_reg_0_3_0_5_i_3,
    SPI_MOSI_iobuf,
    \rdata_reg[3][6] ,
    nxt_addr_reg,
    s_wdata,
    \rdata_reg[0][0] ,
    \rdata_reg[3][0] ,
    \rdata_reg[3][2] ,
    \rd_state_reg[2]_2 ,
    \rd_state_reg[2]_3 ,
    \rd_state_reg[2]_4 ,
    cs,
    \rd_state_reg[5] ,
    \rd_state_reg[5]_0 ,
    buf_busy_reg_1,
    s_wvalid,
    buf_busy_d,
    s_awvalid,
    s_arvalid,
    cs_reg_3,
    \rd_state_reg[3]_0 ,
    sck,
    \rd_state_reg[3]_1 ,
    \shift_reg_reg[27] ,
    \shift_reg_reg[27]_0 ,
    \shift_reg_reg[29] ,
    \shift_reg_reg[31] ,
    sr_shift_two_r,
    sr_shift_inst_r,
    sr_shift_two_r_reg,
    \rd_state_reg[6]_0 ,
    \rd_state_reg[2]_5 ,
    \rd_state_reg[2]_6 ,
    \rd_state_reg[2]_7 ,
    \rd_state_reg[2]_8 ,
    \rd_state_reg[4] ,
    \rd_state_reg[0] ,
    \rd_state_reg[0]_0 ,
    \rd_state_reg[0]_1 ,
    \tot_bytes_reg[0] ,
    bit_cnt,
    \rd_state[2]_i_3_0 ,
    \rd_state[4]_i_4_0 ,
    SPI_MISO_iobuf_i_1_0,
    \rd_state[4]_i_4_1 ,
    sdo_i,
    \clkcnt_reg[3]_0 ,
    \clkcnt_reg[11]_0 ,
    clkcnt_reg,
    spi_run_reg_0,
    sr_shift_two_r_reg_0,
    sr_shift_inst_r_reg_0);
  output inta_o;
  output busy_reg_0;
  output dual_in_r_reg;
  output [1:0]S;
  output rvalid_reg;
  output [7:0]D;
  output [5:0]ns_idle;
  output second_write_reg;
  output \buf_addr_reg[0] ;
  output \buf_len_reg[3] ;
  output [0:0]E;
  output [0:0]\nxt_addr_reg[0] ;
  output [0:0]\nxt_addr_reg[1] ;
  output [0:0]\nxt_addr_reg[1]_0 ;
  output buf_busy_reg;
  output \rd_state_reg[8] ;
  output nxt_addr0;
  output areset;
  output [0:0]buf_busy_reg_0;
  output [31:0]\param_reg[3]_0 ;
  output [1:0]sck_reg;
  output sdi_o;
  output sdo_o;
  output \cswcnt_reg[0] ;
  output SPI_CLK;
  output SPI_CS;
  output [3:0]O;
  output [3:0]\rd_state_reg[2] ;
  output [3:0]\rd_state_reg[2]_0 ;
  output spi_run_reg;
  output cs_reg;
  output \param_reg[3]_1 ;
  output sr_shift_inst_r_reg;
  input aclk;
  input second_write;
  input wcol_reg_0;
  input [7:0]Q;
  input \rd_state_reg[3] ;
  input [8:0]\cs_timer_reg[0] ;
  input \rd_state_reg[2]_1 ;
  input buf_busy;
  input pdreq_r;
  input \rd_state_reg[6] ;
  input dual_in_r;
  input dual_in_r_reg_0;
  input [1:0]sample;
  input sdi_i;
  input [3:0]spi_addr;
  input aresetn;
  input rvalid_reg_0;
  input rvalid045_out;
  input rvalid_reg_1;
  input rvalid_reg_2;
  input rvalid_reg_3;
  input cs_reg_0;
  input cs_reg_1;
  input cs_reg_2;
  input [0:0]CO;
  input [2:0]mem_reg_0_3_0_5_i_3;
  input [31:0]SPI_MOSI_iobuf;
  input \rdata_reg[3][6] ;
  input [23:0]nxt_addr_reg;
  input [31:0]s_wdata;
  input \rdata_reg[0][0] ;
  input \rdata_reg[3][0] ;
  input \rdata_reg[3][2] ;
  input \rd_state_reg[2]_2 ;
  input [0:0]\rd_state_reg[2]_3 ;
  input \rd_state_reg[2]_4 ;
  input cs;
  input \rd_state_reg[5] ;
  input \rd_state_reg[5]_0 ;
  input [3:0]buf_busy_reg_1;
  input s_wvalid;
  input buf_busy_d;
  input s_awvalid;
  input s_arvalid;
  input [2:0]cs_reg_3;
  input \rd_state_reg[3]_0 ;
  input sck;
  input \rd_state_reg[3]_1 ;
  input \shift_reg_reg[27] ;
  input \shift_reg_reg[27]_0 ;
  input \shift_reg_reg[29] ;
  input \shift_reg_reg[31] ;
  input sr_shift_two_r;
  input sr_shift_inst_r;
  input sr_shift_two_r_reg;
  input \rd_state_reg[6]_0 ;
  input \rd_state_reg[2]_5 ;
  input \rd_state_reg[2]_6 ;
  input \rd_state_reg[2]_7 ;
  input \rd_state_reg[2]_8 ;
  input \rd_state_reg[4] ;
  input \rd_state_reg[0] ;
  input \rd_state_reg[0]_0 ;
  input \rd_state_reg[0]_1 ;
  input \tot_bytes_reg[0] ;
  input [2:0]bit_cnt;
  input [3:0]\rd_state[2]_i_3_0 ;
  input \rd_state[4]_i_4_0 ;
  input [4:0]SPI_MISO_iobuf_i_1_0;
  input \rd_state[4]_i_4_1 ;
  input sdo_i;
  input \clkcnt_reg[3]_0 ;
  input [0:0]\clkcnt_reg[11]_0 ;
  input [10:0]clkcnt_reg;
  input spi_run_reg_0;
  input sr_shift_two_r_reg_0;
  input sr_shift_inst_r_reg_0;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire [1:0]S;
  wire SPI_CLK;
  wire SPI_CS;
  wire [4:0]SPI_MISO_iobuf_i_1_0;
  wire [31:0]SPI_MOSI_iobuf;
  wire SPI_MOSI_iobuf_i_3_n_0;
  wire SPI_MOSI_iobuf_i_4_n_0;
  wire aclk;
  wire areset;
  wire aresetn;
  wire [2:0]bcnt;
  wire \bcnt[0]_i_1_n_0 ;
  wire \bcnt[1]_i_1_n_0 ;
  wire \bcnt[2]_i_1_n_0 ;
  wire [2:0]bit_cnt;
  wire \buf_addr_reg[0] ;
  wire buf_busy;
  wire buf_busy_d;
  wire buf_busy_reg;
  wire [0:0]buf_busy_reg_0;
  wire [3:0]buf_busy_reg_1;
  wire \buf_len_reg[3] ;
  wire busy0;
  wire busy_i_2_n_0;
  wire busy_reg_0;
  wire \clkcnt[0]_i_1_n_0 ;
  wire \clkcnt[0]_i_3__0_n_0 ;
  wire \clkcnt[0]_i_4__0_n_0 ;
  wire \clkcnt[0]_i_4_n_0 ;
  wire \clkcnt[0]_i_5__0_n_0 ;
  wire \clkcnt[0]_i_5_n_0 ;
  wire \clkcnt[0]_i_6__0_n_0 ;
  wire \clkcnt[0]_i_6_n_0 ;
  wire \clkcnt[0]_i_7__0_n_0 ;
  wire \clkcnt[0]_i_7_n_0 ;
  wire \clkcnt[4]_i_2__0_n_0 ;
  wire \clkcnt[4]_i_2_n_0 ;
  wire \clkcnt[4]_i_3__0_n_0 ;
  wire \clkcnt[4]_i_3_n_0 ;
  wire \clkcnt[4]_i_4__0_n_0 ;
  wire \clkcnt[4]_i_4_n_0 ;
  wire \clkcnt[4]_i_5__0_n_0 ;
  wire \clkcnt[4]_i_5_n_0 ;
  wire \clkcnt[4]_i_6_n_0 ;
  wire \clkcnt[8]_i_2_n_0 ;
  wire \clkcnt[8]_i_3__0_n_0 ;
  wire \clkcnt[8]_i_3_n_0 ;
  wire \clkcnt[8]_i_4__0_n_0 ;
  wire \clkcnt[8]_i_4_n_0 ;
  wire \clkcnt[8]_i_5__0_n_0 ;
  wire \clkcnt[8]_i_5_n_0 ;
  wire [10:0]clkcnt_reg;
  wire \clkcnt_reg[0]_i_2__0_n_0 ;
  wire \clkcnt_reg[0]_i_2__0_n_1 ;
  wire \clkcnt_reg[0]_i_2__0_n_2 ;
  wire \clkcnt_reg[0]_i_2__0_n_3 ;
  wire \clkcnt_reg[0]_i_2_n_0 ;
  wire \clkcnt_reg[0]_i_2_n_1 ;
  wire \clkcnt_reg[0]_i_2_n_2 ;
  wire \clkcnt_reg[0]_i_2_n_3 ;
  wire \clkcnt_reg[0]_i_2_n_4 ;
  wire \clkcnt_reg[0]_i_2_n_5 ;
  wire \clkcnt_reg[0]_i_2_n_6 ;
  wire \clkcnt_reg[0]_i_2_n_7 ;
  wire [0:0]\clkcnt_reg[11]_0 ;
  wire \clkcnt_reg[3]_0 ;
  wire \clkcnt_reg[4]_i_1__0_n_0 ;
  wire \clkcnt_reg[4]_i_1__0_n_1 ;
  wire \clkcnt_reg[4]_i_1__0_n_2 ;
  wire \clkcnt_reg[4]_i_1__0_n_3 ;
  wire \clkcnt_reg[4]_i_1_n_0 ;
  wire \clkcnt_reg[4]_i_1_n_1 ;
  wire \clkcnt_reg[4]_i_1_n_2 ;
  wire \clkcnt_reg[4]_i_1_n_3 ;
  wire \clkcnt_reg[4]_i_1_n_4 ;
  wire \clkcnt_reg[4]_i_1_n_5 ;
  wire \clkcnt_reg[4]_i_1_n_6 ;
  wire \clkcnt_reg[4]_i_1_n_7 ;
  wire \clkcnt_reg[8]_i_1__0_n_1 ;
  wire \clkcnt_reg[8]_i_1__0_n_2 ;
  wire \clkcnt_reg[8]_i_1__0_n_3 ;
  wire \clkcnt_reg[8]_i_1_n_1 ;
  wire \clkcnt_reg[8]_i_1_n_2 ;
  wire \clkcnt_reg[8]_i_1_n_3 ;
  wire \clkcnt_reg[8]_i_1_n_4 ;
  wire \clkcnt_reg[8]_i_1_n_5 ;
  wire \clkcnt_reg[8]_i_1_n_6 ;
  wire \clkcnt_reg[8]_i_1_n_7 ;
  wire [11:0]clkcnt_reg_0;
  wire cpha;
  wire cpol;
  wire cs;
  wire cs_i_2_n_0;
  wire cs_i_3_n_0;
  wire cs_i_4_n_0;
  wire cs_reg;
  wire cs_reg_0;
  wire cs_reg_1;
  wire cs_reg_2;
  wire [2:0]cs_reg_3;
  wire [8:0]\cs_timer_reg[0] ;
  wire \cswcnt_reg[0] ;
  wire dual_in;
  wire dual_in_r;
  wire dual_in_r_reg;
  wire dual_in_r_reg_0;
  wire [3:0]espr;
  wire [3:0]espr_1;
  wire [1:0]icnt;
  wire inta_o;
  wire inta_o0;
  wire [2:0]mem_reg_0_3_0_5_i_3;
  wire [5:0]ns_idle;
  wire nxt_addr0;
  wire [23:0]nxt_addr_reg;
  wire [0:0]\nxt_addr_reg[0] ;
  wire [0:0]\nxt_addr_reg[1] ;
  wire [0:0]\nxt_addr_reg[1]_0 ;
  wire [7:0]p_2_in;
  wire [2:0]param2;
  wire \param2[7]_i_1_n_0 ;
  wire \param2_reg_n_0_[3] ;
  wire \param2_reg_n_0_[4] ;
  wire \param2_reg_n_0_[5] ;
  wire \param2_reg_n_0_[6] ;
  wire \param2_reg_n_0_[7] ;
  wire \param[7]_i_1_n_0 ;
  wire \param[7]_i_2_n_0 ;
  wire param_burst_en;
  wire param_dual_io;
  wire param_fast_read;
  wire param_memory_en;
  wire [31:0]\param_reg[3]_0 ;
  wire \param_reg[3]_1 ;
  wire pdreq_r;
  wire \rd_state[0]_i_5_n_0 ;
  wire \rd_state[2]_i_2_n_0 ;
  wire [3:0]\rd_state[2]_i_3_0 ;
  wire \rd_state[2]_i_3_n_0 ;
  wire \rd_state[2]_i_5_n_0 ;
  wire \rd_state[2]_i_6_n_0 ;
  wire \rd_state[2]_i_7_n_0 ;
  wire \rd_state[3]_i_2_n_0 ;
  wire \rd_state[4]_i_2_n_0 ;
  wire \rd_state[4]_i_3_n_0 ;
  wire \rd_state[4]_i_4_0 ;
  wire \rd_state[4]_i_4_1 ;
  wire \rd_state[4]_i_4_n_0 ;
  wire \rd_state[4]_i_8_n_0 ;
  wire \rd_state[6]_i_2_n_0 ;
  wire \rd_state_reg[0] ;
  wire \rd_state_reg[0]_0 ;
  wire \rd_state_reg[0]_1 ;
  wire [3:0]\rd_state_reg[2] ;
  wire [3:0]\rd_state_reg[2]_0 ;
  wire \rd_state_reg[2]_1 ;
  wire \rd_state_reg[2]_2 ;
  wire [0:0]\rd_state_reg[2]_3 ;
  wire \rd_state_reg[2]_4 ;
  wire \rd_state_reg[2]_5 ;
  wire \rd_state_reg[2]_6 ;
  wire \rd_state_reg[2]_7 ;
  wire \rd_state_reg[2]_8 ;
  wire \rd_state_reg[3] ;
  wire \rd_state_reg[3]_0 ;
  wire \rd_state_reg[3]_1 ;
  wire \rd_state_reg[4] ;
  wire \rd_state_reg[5] ;
  wire \rd_state_reg[5]_0 ;
  wire \rd_state_reg[6] ;
  wire \rd_state_reg[6]_0 ;
  wire \rd_state_reg[8] ;
  wire \rdata[1][7]_i_2_n_0 ;
  wire \rdata[3][0]_i_2_n_0 ;
  wire \rdata[3][0]_i_4_n_0 ;
  wire \rdata[3][0]_i_5_n_0 ;
  wire \rdata[3][1]_i_2_n_0 ;
  wire \rdata[3][1]_i_4_n_0 ;
  wire \rdata[3][2]_i_4_n_0 ;
  wire \rdata[3][3]_i_4_n_0 ;
  wire \rdata[3][4]_i_3_n_0 ;
  wire \rdata[3][5]_i_4_n_0 ;
  wire \rdata[3][6]_i_4_n_0 ;
  wire \rdata[3][7]_i_10_n_0 ;
  wire \rdata[3][7]_i_4_n_0 ;
  wire \rdata_reg[0][0] ;
  wire \rdata_reg[3][0] ;
  wire \rdata_reg[3][2] ;
  wire \rdata_reg[3][6] ;
  wire [7:0]reg_dat_i;
  wire rfifo_n_10;
  wire rfwe_i_1_n_0;
  wire rfwe_i_2_n_0;
  wire rfwe_i_3_n_0;
  wire rfwe_i_4_n_0;
  wire rfwe_i_5_n_0;
  wire rfwe_reg_n_0;
  wire rp__0;
  wire rvalid045_out;
  wire rvalid_reg;
  wire rvalid_reg_0;
  wire rvalid_reg_1;
  wire rvalid_reg_2;
  wire rvalid_reg_3;
  wire s_arvalid;
  wire s_awvalid;
  wire [31:0]s_wdata;
  wire s_wvalid;
  wire [1:0]sample;
  wire sample0_out;
  wire sample__0;
  wire sample_i_1_n_0;
  wire sck;
  wire sck_o_i_4_n_0;
  wire [1:0]sck_reg;
  wire sdi_i;
  wire sdi_o;
  wire sdo_i;
  wire sdo_o;
  wire second_write;
  wire second_write_reg;
  wire \shift_reg[1]_i_2_n_0 ;
  wire \shift_reg[28]_i_2_n_0 ;
  wire \shift_reg[31]_i_3_n_0 ;
  wire \shift_reg[31]_i_5_n_0 ;
  wire \shift_reg_reg[27] ;
  wire \shift_reg_reg[27]_0 ;
  wire \shift_reg_reg[29] ;
  wire \shift_reg_reg[31] ;
  wire smh_spi;
  wire \softcs[7]_i_1_n_0 ;
  wire \softcs_reg_n_0_[0] ;
  wire \softcs_reg_n_0_[1] ;
  wire \softcs_reg_n_0_[2] ;
  wire \softcs_reg_n_0_[3] ;
  wire \softcs_reg_n_0_[4] ;
  wire \softcs_reg_n_0_[5] ;
  wire \softcs_reg_n_0_[6] ;
  wire \softcs_reg_n_0_[7] ;
  wire spcr;
  wire \spcr[7]_i_4_n_0 ;
  wire \spcr_reg_n_0_[5] ;
  wire spe;
  wire sper;
  wire \sper_reg_n_0_[3] ;
  wire \sper_reg_n_0_[4] ;
  wire \sper_reg_n_0_[5] ;
  wire [3:0]spi_addr;
  wire spi_run_i_2_n_0;
  wire spi_run_i_3_n_0;
  wire spi_run_i_4_n_0;
  wire spi_run_reg;
  wire spi_run_reg_0;
  wire spibus_busy;
  wire spie;
  wire spif;
  wire spif0;
  wire spif_i_2_n_0;
  wire spif_i_3_n_0;
  wire sr_shift_inst_r;
  wire sr_shift_inst_r_reg;
  wire sr_shift_inst_r_reg_0;
  wire sr_shift_two_r;
  wire sr_shift_two_r_i_3_n_0;
  wire sr_shift_two_r_reg;
  wire sr_shift_two_r_reg_0;
  wire ss_mosi;
  wire ss_sck;
  wire [1:0]state;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire [1:0]tcnt;
  wire \tcnt[0]_i_1_n_0 ;
  wire \tcnt[1]_i_1_n_0 ;
  wire \tot_bytes_reg[0] ;
  wire [6:0]treg;
  wire \treg[7]_i_1_n_0 ;
  wire wcol;
  wire wcol0;
  wire wcol_i_2_n_0;
  wire wcol_reg_0;
  wire wfifo_n_10;
  wire wfifo_n_12;
  wire wfifo_n_13;
  wire wfifo_n_15;
  wire wfifo_n_16;
  wire wfifo_n_8;
  wire wfifo_n_9;
  wire wfre;
  wire [3:3]\NLW_clkcnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clkcnt_reg[8]_i_1__0_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    SPI_CLK_INST_0
       (.I0(sck),
        .I1(param_memory_en),
        .I2(spibus_busy),
        .I3(ss_sck),
        .O(SPI_CLK));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    SPI_CS_INST_0
       (.I0(cs),
        .I1(param_memory_en),
        .I2(\softcs_reg_n_0_[0] ),
        .I3(\softcs_reg_n_0_[4] ),
        .O(SPI_CS));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    SPI_MISO_iobuf_i_1
       (.I0(SPI_MOSI_iobuf[31]),
        .I1(param_memory_en),
        .I2(spibus_busy),
        .I3(SPI_MOSI_iobuf_i_3_n_0),
        .O(sdi_o));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    SPI_MISO_iobuf_i_2
       (.I0(SPI_MOSI_iobuf_i_3_n_0),
        .I1(spibus_busy),
        .I2(param_memory_en),
        .O(busy_reg_0));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    SPI_MOSI_iobuf_i_1
       (.I0(\cs_timer_reg[0] [4]),
        .I1(SPI_MOSI_iobuf[30]),
        .I2(SPI_MOSI_iobuf_i_3_n_0),
        .I3(SPI_MOSI_iobuf[31]),
        .I4(SPI_MOSI_iobuf_i_4_n_0),
        .I5(ss_mosi),
        .O(sdo_o));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    SPI_MOSI_iobuf_i_2
       (.I0(dual_in_r),
        .I1(\cs_timer_reg[0] [4]),
        .I2(dual_in_r_reg_0),
        .I3(param_dual_io),
        .I4(spibus_busy),
        .I5(param_memory_en),
        .O(dual_in_r_reg));
  LUT6 #(
    .INIT(64'hFFFFFF0FFFFF8FFF)) 
    SPI_MOSI_iobuf_i_3
       (.I0(SPI_MISO_iobuf_i_1_0[1]),
        .I1(SPI_MISO_iobuf_i_1_0[0]),
        .I2(param_dual_io),
        .I3(SPI_MISO_iobuf_i_1_0[3]),
        .I4(SPI_MISO_iobuf_i_1_0[4]),
        .I5(SPI_MISO_iobuf_i_1_0[2]),
        .O(SPI_MOSI_iobuf_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    SPI_MOSI_iobuf_i_4
       (.I0(param_memory_en),
        .I1(spibus_busy),
        .O(SPI_MOSI_iobuf_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F91)) 
    \bcnt[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rfwe_i_3_n_0),
        .I3(bcnt[0]),
        .O(\bcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF7F1191)) 
    \bcnt[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rfwe_i_3_n_0),
        .I3(bcnt[0]),
        .I4(bcnt[1]),
        .O(\bcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F11111191)) 
    \bcnt[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rfwe_i_3_n_0),
        .I3(bcnt[0]),
        .I4(bcnt[1]),
        .I5(bcnt[2]),
        .O(\bcnt[2]_i_1_n_0 ));
  FDRE \bcnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bcnt[0]_i_1_n_0 ),
        .Q(bcnt[0]),
        .R(rfwe_i_1_n_0));
  FDRE \bcnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bcnt[1]_i_1_n_0 ),
        .Q(bcnt[1]),
        .R(rfwe_i_1_n_0));
  FDRE \bcnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bcnt[2]_i_1_n_0 ),
        .Q(bcnt[2]),
        .R(rfwe_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    busy_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(busy_i_2_n_0));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy0),
        .Q(spibus_busy),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBF)) 
    \clkcnt[0]_i_1 
       (.I0(\clkcnt[0]_i_3__0_n_0 ),
        .I1(espr_1[2]),
        .I2(espr_1[3]),
        .O(\clkcnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \clkcnt[0]_i_3__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rfwe_i_3_n_0),
        .I3(spe),
        .O(\clkcnt[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFEECFEEC)) 
    \clkcnt[0]_i_4 
       (.I0(espr_1[2]),
        .I1(espr_1[3]),
        .I2(espr_1[1]),
        .I3(espr_1[0]),
        .I4(clkcnt_reg_0[3]),
        .I5(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFE8FFE8)) 
    \clkcnt[0]_i_4__0 
       (.I0(espr[0]),
        .I1(espr[1]),
        .I2(espr[2]),
        .I3(espr[3]),
        .I4(clkcnt_reg[3]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFEFCFEFC)) 
    \clkcnt[0]_i_5 
       (.I0(espr_1[0]),
        .I1(espr_1[1]),
        .I2(espr_1[3]),
        .I3(espr_1[2]),
        .I4(clkcnt_reg_0[2]),
        .I5(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFECFFEC)) 
    \clkcnt[0]_i_5__0 
       (.I0(espr[0]),
        .I1(espr[1]),
        .I2(espr[2]),
        .I3(espr[3]),
        .I4(clkcnt_reg[2]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00FFFEFE)) 
    \clkcnt[0]_i_6 
       (.I0(espr_1[3]),
        .I1(espr_1[2]),
        .I2(espr_1[1]),
        .I3(clkcnt_reg_0[1]),
        .I4(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FFFEFE)) 
    \clkcnt[0]_i_6__0 
       (.I0(espr[1]),
        .I1(espr[2]),
        .I2(espr[3]),
        .I3(clkcnt_reg[1]),
        .I4(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFEFFFE)) 
    \clkcnt[0]_i_7 
       (.I0(espr_1[1]),
        .I1(espr_1[2]),
        .I2(espr_1[3]),
        .I3(espr_1[0]),
        .I4(clkcnt_reg_0[0]),
        .I5(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFEFFFE)) 
    \clkcnt[0]_i_7__0 
       (.I0(espr[2]),
        .I1(espr[1]),
        .I2(espr[0]),
        .I3(espr[3]),
        .I4(clkcnt_reg[0]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[0]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \clkcnt[4]_i_2 
       (.I0(espr[3]),
        .I1(clkcnt_reg[7]),
        .I2(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \clkcnt[4]_i_2__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rfwe_i_3_n_0),
        .I3(spe),
        .O(\clkcnt[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \clkcnt[4]_i_3 
       (.I0(espr_1[3]),
        .I1(clkcnt_reg_0[7]),
        .I2(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF80FF80)) 
    \clkcnt[4]_i_3__0 
       (.I0(espr[2]),
        .I1(espr[1]),
        .I2(espr[0]),
        .I3(espr[3]),
        .I4(clkcnt_reg[6]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF80FF80)) 
    \clkcnt[4]_i_4 
       (.I0(espr_1[0]),
        .I1(espr_1[1]),
        .I2(espr_1[2]),
        .I3(espr_1[3]),
        .I4(clkcnt_reg_0[6]),
        .I5(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FFF8F8)) 
    \clkcnt[4]_i_4__0 
       (.I0(espr[1]),
        .I1(espr[2]),
        .I2(espr[3]),
        .I3(clkcnt_reg[5]),
        .I4(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00FFF8F8)) 
    \clkcnt[4]_i_5 
       (.I0(espr_1[2]),
        .I1(espr_1[1]),
        .I2(espr_1[3]),
        .I3(clkcnt_reg_0[5]),
        .I4(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFA8FFA8)) 
    \clkcnt[4]_i_5__0 
       (.I0(espr[2]),
        .I1(espr[1]),
        .I2(espr[0]),
        .I3(espr[3]),
        .I4(clkcnt_reg[4]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFEF0FEF0)) 
    \clkcnt[4]_i_6 
       (.I0(espr_1[0]),
        .I1(espr_1[1]),
        .I2(espr_1[3]),
        .I3(espr_1[2]),
        .I4(clkcnt_reg_0[4]),
        .I5(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clkcnt[8]_i_2 
       (.I0(\clkcnt[0]_i_3__0_n_0 ),
        .I1(clkcnt_reg_0[11]),
        .O(\clkcnt[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FF8080)) 
    \clkcnt[8]_i_3 
       (.I0(espr_1[1]),
        .I1(espr_1[0]),
        .I2(espr_1[3]),
        .I3(clkcnt_reg_0[10]),
        .I4(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFEA00EA00)) 
    \clkcnt[8]_i_3__0 
       (.I0(espr[2]),
        .I1(espr[1]),
        .I2(espr[0]),
        .I3(espr[3]),
        .I4(clkcnt_reg[10]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[8]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0F88)) 
    \clkcnt[8]_i_4 
       (.I0(espr_1[1]),
        .I1(espr_1[3]),
        .I2(clkcnt_reg_0[9]),
        .I3(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE0E0)) 
    \clkcnt[8]_i_4__0 
       (.I0(espr[1]),
        .I1(espr[2]),
        .I2(espr[3]),
        .I3(clkcnt_reg[9]),
        .I4(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[8]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE0E0)) 
    \clkcnt[8]_i_5 
       (.I0(espr_1[1]),
        .I1(espr_1[0]),
        .I2(espr_1[3]),
        .I3(clkcnt_reg_0[8]),
        .I4(\clkcnt[0]_i_3__0_n_0 ),
        .O(\clkcnt[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFE00FE00)) 
    \clkcnt[8]_i_5__0 
       (.I0(espr[2]),
        .I1(espr[1]),
        .I2(espr[0]),
        .I3(espr[3]),
        .I4(clkcnt_reg[8]),
        .I5(\clkcnt_reg[3]_0 ),
        .O(\clkcnt[8]_i_5__0_n_0 ));
  FDRE \clkcnt_reg[0] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[0]_i_2_n_7 ),
        .Q(clkcnt_reg_0[0]),
        .R(1'b0));
  CARRY4 \clkcnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clkcnt_reg[0]_i_2_n_0 ,\clkcnt_reg[0]_i_2_n_1 ,\clkcnt_reg[0]_i_2_n_2 ,\clkcnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 }),
        .O({\clkcnt_reg[0]_i_2_n_4 ,\clkcnt_reg[0]_i_2_n_5 ,\clkcnt_reg[0]_i_2_n_6 ,\clkcnt_reg[0]_i_2_n_7 }),
        .S({\clkcnt[0]_i_4_n_0 ,\clkcnt[0]_i_5_n_0 ,\clkcnt[0]_i_6_n_0 ,\clkcnt[0]_i_7_n_0 }));
  CARRY4 \clkcnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\clkcnt_reg[0]_i_2__0_n_0 ,\clkcnt_reg[0]_i_2__0_n_1 ,\clkcnt_reg[0]_i_2__0_n_2 ,\clkcnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 }),
        .O(O),
        .S({\clkcnt[0]_i_4__0_n_0 ,\clkcnt[0]_i_5__0_n_0 ,\clkcnt[0]_i_6__0_n_0 ,\clkcnt[0]_i_7__0_n_0 }));
  FDRE \clkcnt_reg[10] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[8]_i_1_n_5 ),
        .Q(clkcnt_reg_0[10]),
        .R(1'b0));
  FDRE \clkcnt_reg[11] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[8]_i_1_n_4 ),
        .Q(clkcnt_reg_0[11]),
        .R(1'b0));
  FDRE \clkcnt_reg[1] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[0]_i_2_n_6 ),
        .Q(clkcnt_reg_0[1]),
        .R(1'b0));
  FDRE \clkcnt_reg[2] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[0]_i_2_n_5 ),
        .Q(clkcnt_reg_0[2]),
        .R(1'b0));
  FDRE \clkcnt_reg[3] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[0]_i_2_n_4 ),
        .Q(clkcnt_reg_0[3]),
        .R(1'b0));
  FDRE \clkcnt_reg[4] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[4]_i_1_n_7 ),
        .Q(clkcnt_reg_0[4]),
        .R(1'b0));
  CARRY4 \clkcnt_reg[4]_i_1 
       (.CI(\clkcnt_reg[0]_i_2_n_0 ),
        .CO({\clkcnt_reg[4]_i_1_n_0 ,\clkcnt_reg[4]_i_1_n_1 ,\clkcnt_reg[4]_i_1_n_2 ,\clkcnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\clkcnt[4]_i_2__0_n_0 ,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 }),
        .O({\clkcnt_reg[4]_i_1_n_4 ,\clkcnt_reg[4]_i_1_n_5 ,\clkcnt_reg[4]_i_1_n_6 ,\clkcnt_reg[4]_i_1_n_7 }),
        .S({\clkcnt[4]_i_3_n_0 ,\clkcnt[4]_i_4_n_0 ,\clkcnt[4]_i_5_n_0 ,\clkcnt[4]_i_6_n_0 }));
  CARRY4 \clkcnt_reg[4]_i_1__0 
       (.CI(\clkcnt_reg[0]_i_2__0_n_0 ),
        .CO({\clkcnt_reg[4]_i_1__0_n_0 ,\clkcnt_reg[4]_i_1__0_n_1 ,\clkcnt_reg[4]_i_1__0_n_2 ,\clkcnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 }),
        .O(\rd_state_reg[2] ),
        .S({\clkcnt[4]_i_2_n_0 ,\clkcnt[4]_i_3__0_n_0 ,\clkcnt[4]_i_4__0_n_0 ,\clkcnt[4]_i_5__0_n_0 }));
  FDRE \clkcnt_reg[5] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[4]_i_1_n_6 ),
        .Q(clkcnt_reg_0[5]),
        .R(1'b0));
  FDRE \clkcnt_reg[6] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[4]_i_1_n_5 ),
        .Q(clkcnt_reg_0[6]),
        .R(1'b0));
  FDRE \clkcnt_reg[7] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[4]_i_1_n_4 ),
        .Q(clkcnt_reg_0[7]),
        .R(1'b0));
  FDRE \clkcnt_reg[8] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[8]_i_1_n_7 ),
        .Q(clkcnt_reg_0[8]),
        .R(1'b0));
  CARRY4 \clkcnt_reg[8]_i_1 
       (.CI(\clkcnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_clkcnt_reg[8]_i_1_CO_UNCONNECTED [3],\clkcnt_reg[8]_i_1_n_1 ,\clkcnt_reg[8]_i_1_n_2 ,\clkcnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 ,\clkcnt[0]_i_3__0_n_0 }),
        .O({\clkcnt_reg[8]_i_1_n_4 ,\clkcnt_reg[8]_i_1_n_5 ,\clkcnt_reg[8]_i_1_n_6 ,\clkcnt_reg[8]_i_1_n_7 }),
        .S({\clkcnt[8]_i_2_n_0 ,\clkcnt[8]_i_3_n_0 ,\clkcnt[8]_i_4_n_0 ,\clkcnt[8]_i_5_n_0 }));
  CARRY4 \clkcnt_reg[8]_i_1__0 
       (.CI(\clkcnt_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_clkcnt_reg[8]_i_1__0_CO_UNCONNECTED [3],\clkcnt_reg[8]_i_1__0_n_1 ,\clkcnt_reg[8]_i_1__0_n_2 ,\clkcnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 ,\clkcnt_reg[3]_0 }),
        .O(\rd_state_reg[2]_0 ),
        .S({\clkcnt_reg[11]_0 ,\clkcnt[8]_i_3__0_n_0 ,\clkcnt[8]_i_4__0_n_0 ,\clkcnt[8]_i_5__0_n_0 }));
  FDRE \clkcnt_reg[9] 
       (.C(aclk),
        .CE(\clkcnt[0]_i_1_n_0 ),
        .D(\clkcnt_reg[8]_i_1_n_6 ),
        .Q(clkcnt_reg_0[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEFF0200)) 
    cs_i_1
       (.I0(cs),
        .I1(spi_run_i_3_n_0),
        .I2(cs_i_2_n_0),
        .I3(cs_i_3_n_0),
        .I4(cs_i_4_n_0),
        .I5(nxt_addr0),
        .O(cs_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cs_i_2
       (.I0(ns_idle[0]),
        .I1(param_burst_en),
        .O(cs_i_2_n_0));
  LUT5 #(
    .INIT(32'h00545454)) 
    cs_i_3
       (.I0(ns_idle[1]),
        .I1(buf_busy),
        .I2(cs_reg_1),
        .I3(second_write_reg),
        .I4(cs_reg_2),
        .O(cs_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    cs_i_4
       (.I0(ns_idle[2]),
        .I1(spi_run_i_2_n_0),
        .I2(cs_i_2_n_0),
        .I3(ns_idle[1]),
        .I4(cs_reg_0),
        .O(cs_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \cs_timer[0]_i_1 
       (.I0(\cs_timer_reg[0] [8]),
        .I1(cs),
        .I2(buf_busy),
        .I3(\cs_timer_reg[0] [7]),
        .I4(param_memory_en),
        .I5(aresetn),
        .O(\rd_state_reg[8] ));
  LUT6 #(
    .INIT(64'h7000700070000000)) 
    dual_in_r_i_1
       (.I0(\rd_state[2]_i_3_0 [0]),
        .I1(\cs_timer_reg[0] [2]),
        .I2(cs),
        .I3(aresetn),
        .I4(dual_in_r),
        .I5(dual_in),
        .O(\cswcnt_reg[0] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    dual_in_r_i_2
       (.I0(param_dual_io),
        .I1(dual_in_r_reg_0),
        .I2(\cs_timer_reg[0] [4]),
        .I3(dual_in_r),
        .O(dual_in));
  LUT2 #(
    .INIT(4'h8)) 
    inta_o_i_1
       (.I0(spie),
        .I1(spif),
        .O(inta_o0));
  FDRE inta_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(inta_o0),
        .Q(inta_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \nxt_addr[0]_i_1 
       (.I0(param_memory_en),
        .I1(aresetn),
        .O(nxt_addr0));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \nxt_addr[0]_i_2 
       (.I0(\rdata[3][7]_i_4_n_0 ),
        .I1(buf_busy),
        .I2(\cs_timer_reg[0] [0]),
        .I3(buf_busy_d),
        .O(buf_busy_reg));
  LUT5 #(
    .INIT(32'h00000200)) 
    \param2[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\param[7]_i_2_n_0 ),
        .O(\param2[7]_i_1_n_0 ));
  FDSE \param2_reg[0] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[0]),
        .Q(param2[0]),
        .S(areset));
  FDSE \param2_reg[1] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[1]),
        .Q(param2[1]),
        .S(areset));
  FDRE \param2_reg[2] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[2]),
        .Q(param2[2]),
        .R(areset));
  FDRE \param2_reg[3] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[3]),
        .Q(\param2_reg_n_0_[3] ),
        .R(areset));
  FDRE \param2_reg[4] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[4]),
        .Q(\param2_reg_n_0_[4] ),
        .R(areset));
  FDRE \param2_reg[5] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[5]),
        .Q(\param2_reg_n_0_[5] ),
        .R(areset));
  FDRE \param2_reg[6] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[6]),
        .Q(\param2_reg_n_0_[6] ),
        .R(areset));
  FDRE \param2_reg[7] 
       (.C(aclk),
        .CE(\param2[7]_i_1_n_0 ),
        .D(reg_dat_i[7]),
        .Q(\param2_reg_n_0_[7] ),
        .R(areset));
  LUT5 #(
    .INIT(32'h00000100)) 
    \param[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\param[7]_i_2_n_0 ),
        .O(\param[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \param[7]_i_2 
       (.I0(second_write),
        .I1(wcol_reg_0),
        .I2(rfifo_n_10),
        .O(\param[7]_i_2_n_0 ));
  FDSE \param_reg[0] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[0]),
        .Q(param_memory_en),
        .S(areset));
  FDRE \param_reg[1] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[1]),
        .Q(param_burst_en),
        .R(areset));
  FDRE \param_reg[2] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[2]),
        .Q(param_fast_read),
        .R(areset));
  FDRE \param_reg[3] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[3]),
        .Q(param_dual_io),
        .R(areset));
  FDRE \param_reg[4] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[4]),
        .Q(espr[0]),
        .R(areset));
  FDRE \param_reg[5] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[5]),
        .Q(espr[1]),
        .R(areset));
  FDRE \param_reg[6] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[6]),
        .Q(espr[2]),
        .R(areset));
  FDRE \param_reg[7] 
       (.C(aclk),
        .CE(\param[7]_i_1_n_0 ),
        .D(reg_dat_i[7]),
        .Q(espr[3]),
        .R(areset));
  LUT6 #(
    .INIT(64'hA8A8A8AAA8A8A8A8)) 
    \rd_state[0]_i_1 
       (.I0(\rd_state_reg[0] ),
        .I1(\rd_state_reg[0]_0 ),
        .I2(\rd_state_reg[0]_1 ),
        .I3(rvalid_reg_2),
        .I4(\rd_state[0]_i_5_n_0 ),
        .I5(sr_shift_two_r_reg),
        .O(ns_idle[0]));
  LUT6 #(
    .INIT(64'hF1FFFFFFFFFFFFFF)) 
    \rd_state[0]_i_5 
       (.I0(param_dual_io),
        .I1(bit_cnt[2]),
        .I2(rvalid_reg_0),
        .I3(\cs_timer_reg[0] [4]),
        .I4(bit_cnt[0]),
        .I5(bit_cnt[1]),
        .O(\rd_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAC8F8)) 
    \rd_state[2]_i_1 
       (.I0(\rd_state_reg[2]_1 ),
        .I1(\rd_state[2]_i_2_n_0 ),
        .I2(\cs_timer_reg[0] [2]),
        .I3(\rd_state[2]_i_3_n_0 ),
        .I4(\rd_state_reg[2]_2 ),
        .I5(\rd_state[2]_i_5_n_0 ),
        .O(ns_idle[1]));
  LUT5 #(
    .INIT(32'h08080008)) 
    \rd_state[2]_i_2 
       (.I0(rvalid_reg_2),
        .I1(sr_shift_two_r_reg),
        .I2(\rd_state[0]_i_5_n_0 ),
        .I3(param_burst_en),
        .I4(\rd_state_reg[2]_8 ),
        .O(\rd_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_state[2]_i_3 
       (.I0(\rd_state_reg[2]_5 ),
        .I1(\rd_state_reg[2]_6 ),
        .I2(\rd_state_reg[2]_7 ),
        .I3(rvalid_reg_0),
        .I4(\rd_state[2]_i_6_n_0 ),
        .O(\rd_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000D000D0000000D)) 
    \rd_state[2]_i_5 
       (.I0(\rd_state_reg[2]_3 ),
        .I1(\rd_state[2]_i_7_n_0 ),
        .I2(spibus_busy),
        .I3(\rd_state_reg[2]_4 ),
        .I4(CO),
        .I5(\buf_len_reg[3] ),
        .O(\rd_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F0FFF0FFFCFFFCF)) 
    \rd_state[2]_i_6 
       (.I0(\rd_state[2]_i_3_0 [3]),
        .I1(param2[0]),
        .I2(\rd_state[2]_i_3_0 [0]),
        .I3(param2[1]),
        .I4(\rd_state[2]_i_3_0 [2]),
        .I5(\rd_state[2]_i_3_0 [1]),
        .O(\rd_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_state[2]_i_7 
       (.I0(param_burst_en),
        .I1(cs),
        .O(\rd_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \rd_state[3]_i_1 
       (.I0(\rd_state_reg[5]_0 ),
        .I1(\rd_state[4]_i_4_n_0 ),
        .I2(\cs_timer_reg[0] [3]),
        .I3(\rd_state[3]_i_2_n_0 ),
        .O(ns_idle[2]));
  LUT6 #(
    .INIT(64'h7F007F7FFFFFFFFF)) 
    \rd_state[3]_i_2 
       (.I0(\rd_state[2]_i_3_n_0 ),
        .I1(\rd_state_reg[3] ),
        .I2(\cs_timer_reg[0] [2]),
        .I3(spibus_busy),
        .I4(\cs_timer_reg[0] [5]),
        .I5(\rd_state_reg[2]_1 ),
        .O(\rd_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F773F337F770000)) 
    \rd_state[4]_i_1 
       (.I0(\rd_state[4]_i_2_n_0 ),
        .I1(\rd_state[4]_i_3_n_0 ),
        .I2(\rd_state[4]_i_4_n_0 ),
        .I3(\cs_timer_reg[0] [3]),
        .I4(\cs_timer_reg[0] [4]),
        .I5(\rd_state_reg[2]_1 ),
        .O(ns_idle[3]));
  LUT6 #(
    .INIT(64'hB0BB0000BBBB0000)) 
    \rd_state[4]_i_2 
       (.I0(\rd_state_reg[4] ),
        .I1(\rd_state_reg[3] ),
        .I2(\rd_state_reg[2]_8 ),
        .I3(param_burst_en),
        .I4(\rdata[3][7]_i_4_n_0 ),
        .I5(rvalid_reg_2),
        .O(\rd_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000000)) 
    \rd_state[4]_i_3 
       (.I0(spibus_busy),
        .I1(param_burst_en),
        .I2(cs),
        .I3(\rd_state_reg[2]_3 ),
        .I4(\rd_state_reg[5] ),
        .I5(\rd_state_reg[2]_1 ),
        .O(\rd_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE2FF)) 
    \rd_state[4]_i_4 
       (.I0(\rd_state[4]_i_8_n_0 ),
        .I1(param_dual_io),
        .I2(\rd_state_reg[3]_0 ),
        .I3(sck),
        .I4(\rd_state_reg[3]_1 ),
        .O(\rd_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BBBBBBBBBB)) 
    \rd_state[4]_i_8 
       (.I0(\rd_state[4]_i_4_0 ),
        .I1(param_fast_read),
        .I2(SPI_MISO_iobuf_i_1_0[4]),
        .I3(SPI_MISO_iobuf_i_1_0[3]),
        .I4(\rd_state[4]_i_4_1 ),
        .I5(SPI_MISO_iobuf_i_1_0[2]),
        .O(\rd_state[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CC44)) 
    \rd_state[5]_i_1 
       (.I0(\rd_state_reg[5]_0 ),
        .I1(\cs_timer_reg[0] [5]),
        .I2(\rd_state_reg[5] ),
        .I3(spibus_busy),
        .I4(\rd_state_reg[2]_1 ),
        .O(ns_idle[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \rd_state[6]_i_1 
       (.I0(\cs_timer_reg[0] [6]),
        .I1(\rd_state_reg[6]_0 ),
        .I2(\rd_state[6]_i_2_n_0 ),
        .O(ns_idle[5]));
  LUT6 #(
    .INIT(64'hF7FF0000FFFFFFFF)) 
    \rd_state[6]_i_2 
       (.I0(\rd_state[2]_i_3_n_0 ),
        .I1(\cs_timer_reg[0] [2]),
        .I2(buf_busy),
        .I3(pdreq_r),
        .I4(\rd_state_reg[6] ),
        .I5(\rd_state_reg[2]_1 ),
        .O(\rd_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A2A000000200)) 
    \rdata[0][7]_i_1 
       (.I0(rvalid_reg_3),
        .I1(nxt_addr_reg[0]),
        .I2(rvalid045_out),
        .I3(\rdata[3][7]_i_4_n_0 ),
        .I4(nxt_addr_reg[1]),
        .I5(\rdata_reg[0][0] ),
        .O(\nxt_addr_reg[0] ));
  LUT6 #(
    .INIT(64'h8080A28080808080)) 
    \rdata[1][7]_i_1 
       (.I0(rvalid_reg_3),
        .I1(rvalid045_out),
        .I2(\rdata[1][7]_i_2_n_0 ),
        .I3(\rdata[3][7]_i_4_n_0 ),
        .I4(nxt_addr_reg[1]),
        .I5(nxt_addr_reg[0]),
        .O(\nxt_addr_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[1][7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\rdata[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00002000AAAA2000)) 
    \rdata[2][7]_i_1 
       (.I0(rvalid_reg_3),
        .I1(nxt_addr_reg[0]),
        .I2(nxt_addr_reg[1]),
        .I3(\rdata[3][7]_i_4_n_0 ),
        .I4(rvalid045_out),
        .I5(\buf_addr_reg[0] ),
        .O(E));
  LUT4 #(
    .INIT(16'h4454)) 
    \rdata[3][0]_i_2 
       (.I0(sr_shift_inst_r),
        .I1(\rdata[3][0]_i_5_n_0 ),
        .I2(\shift_reg[1]_i_2_n_0 ),
        .I3(sr_shift_two_r),
        .O(\rdata[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \rdata[3][0]_i_4 
       (.I0(param_memory_en),
        .I1(Q[0]),
        .I2(\softcs_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(param2[0]),
        .I5(Q[2]),
        .O(\rdata[3][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \rdata[3][0]_i_5 
       (.I0(sr_shift_two_r),
        .I1(sdo_i),
        .I2(param2[2]),
        .I3(sample[0]),
        .I4(\cs_timer_reg[0] [4]),
        .O(\rdata[3][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \rdata[3][1]_i_2 
       (.I0(sample[1]),
        .I1(param2[2]),
        .I2(sdi_i),
        .I3(\cs_timer_reg[0] [4]),
        .I4(\rdata_reg[3][6] ),
        .I5(SPI_MOSI_iobuf[0]),
        .O(\rdata[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \rdata[3][1]_i_4 
       (.I0(param_burst_en),
        .I1(Q[0]),
        .I2(\softcs_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(param2[1]),
        .I5(Q[2]),
        .O(\rdata[3][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \rdata[3][2]_i_4 
       (.I0(param_fast_read),
        .I1(Q[0]),
        .I2(\softcs_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(param2[2]),
        .I5(Q[2]),
        .O(\rdata[3][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0505000F03030)) 
    \rdata[3][3]_i_4 
       (.I0(\softcs_reg_n_0_[3] ),
        .I1(param_dual_io),
        .I2(Q[2]),
        .I3(\param2_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\rdata[3][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \rdata[3][4]_i_3 
       (.I0(\softcs_reg_n_0_[4] ),
        .I1(espr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\param2_reg_n_0_[4] ),
        .O(\rdata[3][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \rdata[3][5]_i_4 
       (.I0(\softcs_reg_n_0_[5] ),
        .I1(espr[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\param2_reg_n_0_[5] ),
        .O(\rdata[3][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3][6]_i_4 
       (.I0(\param2_reg_n_0_[6] ),
        .I1(Q[1]),
        .I2(\softcs_reg_n_0_[6] ),
        .I3(Q[0]),
        .I4(espr[2]),
        .O(\rdata[3][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00008000AAAA8000)) 
    \rdata[3][7]_i_1 
       (.I0(rvalid_reg_3),
        .I1(nxt_addr_reg[1]),
        .I2(nxt_addr_reg[0]),
        .I3(\rdata[3][7]_i_4_n_0 ),
        .I4(rvalid045_out),
        .I5(\rdata_reg[3][0] ),
        .O(\nxt_addr_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3][7]_i_10 
       (.I0(\param2_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(\softcs_reg_n_0_[7] ),
        .I3(Q[0]),
        .I4(espr[3]),
        .O(\rdata[3][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \rdata[3][7]_i_4 
       (.I0(sr_shift_two_r_reg),
        .I1(\tot_bytes_reg[0] ),
        .I2(\cs_timer_reg[0] [4]),
        .I3(rvalid_reg_0),
        .I4(bit_cnt[2]),
        .I5(param_dual_io),
        .O(\rdata[3][7]_i_4_n_0 ));
  bd_top_spi_flash_ctrl_0_0_spi_fifo4 rfifo
       (.CO(CO),
        .D(D),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .aresetn(aresetn),
        .\buf_addr_reg[0] (\buf_addr_reg[0] ),
        .buf_busy(buf_busy),
        .buf_busy_reg(rfifo_n_10),
        .buf_busy_reg_0(buf_busy_reg_1),
        .\buf_len_reg[3] (\buf_len_reg[3] ),
        .gb_reg_0(wcol_reg_0),
        .mem_reg_0_3_0_5_i_3_0(mem_reg_0_3_0_5_i_3),
        .\rdata[3][6]_i_3_0 ({ss_mosi,treg}),
        .\rdata_reg[3][0] (\rdata[3][0]_i_2_n_0 ),
        .\rdata_reg[3][0]_0 (\rdata[3][0]_i_4_n_0 ),
        .\rdata_reg[3][1] (\rdata[3][1]_i_2_n_0 ),
        .\rdata_reg[3][1]_0 (\rdata[3][1]_i_4_n_0 ),
        .\rdata_reg[3][2] (\rdata_reg[3][2] ),
        .\rdata_reg[3][2]_0 (\rdata[3][2]_i_4_n_0 ),
        .\rdata_reg[3][2]_1 (wfifo_n_8),
        .\rdata_reg[3][3] (wfifo_n_9),
        .\rdata_reg[3][3]_0 (\rdata[3][3]_i_4_n_0 ),
        .\rdata_reg[3][4] (\rdata[3][4]_i_3_n_0 ),
        .\rdata_reg[3][5] (\rdata[3][5]_i_4_n_0 ),
        .\rdata_reg[3][6] (\rdata_reg[3][6] ),
        .\rdata_reg[3][6]_0 (\rdata[3][6]_i_4_n_0 ),
        .\rdata_reg[3][7] (SPI_MOSI_iobuf[6:1]),
        .\rdata_reg[3][7]_0 (\rdata[3][7]_i_10_n_0 ),
        .\rdata_reg[3][7]_i_7_0 ({spie,spe,\spcr_reg_n_0_[5] ,cpol,cpha,espr_1[1:0]}),
        .\rdata_reg[3][7]_i_7_1 ({icnt,\sper_reg_n_0_[5] ,\sper_reg_n_0_[4] ,\sper_reg_n_0_[3] ,smh_spi,espr_1[3:2]}),
        .rp__0(rp__0),
        .rvalid045_out(rvalid045_out),
        .s_wvalid(s_wvalid),
        .second_write(second_write),
        .second_write_reg(second_write_reg),
        .spi_addr(spi_addr),
        .spif(spif),
        .spif_i_2(\cs_timer_reg[0] [1:0]),
        .wcol(wcol),
        .\wp_reg[1]_0 (rfwe_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rfwe_i_1
       (.I0(spe),
        .O(rfwe_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    rfwe_i_2
       (.I0(rfwe_i_3_n_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(bcnt[1]),
        .I4(bcnt[0]),
        .I5(bcnt[2]),
        .O(rfwe_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    rfwe_i_3
       (.I0(clkcnt_reg_0[5]),
        .I1(clkcnt_reg_0[8]),
        .I2(clkcnt_reg_0[0]),
        .I3(clkcnt_reg_0[3]),
        .I4(rfwe_i_4_n_0),
        .I5(rfwe_i_5_n_0),
        .O(rfwe_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rfwe_i_4
       (.I0(clkcnt_reg_0[11]),
        .I1(clkcnt_reg_0[1]),
        .I2(clkcnt_reg_0[4]),
        .I3(clkcnt_reg_0[2]),
        .O(rfwe_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rfwe_i_5
       (.I0(clkcnt_reg_0[9]),
        .I1(clkcnt_reg_0[7]),
        .I2(clkcnt_reg_0[10]),
        .I3(clkcnt_reg_0[6]),
        .O(rfwe_i_5_n_0));
  FDRE rfwe_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rfwe_i_2_n_0),
        .Q(rfwe_reg_n_0),
        .R(rfwe_i_1_n_0));
  LUT6 #(
    .INIT(64'hFECEFEFE00000000)) 
    rvalid_i_1
       (.I0(rvalid_reg_0),
        .I1(rvalid045_out),
        .I2(\rdata[3][7]_i_4_n_0 ),
        .I3(rvalid_reg_1),
        .I4(rvalid_reg_2),
        .I5(rvalid_reg_3),
        .O(rvalid_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    sample_i_1
       (.I0(sdi_i),
        .I1(sample0_out),
        .I2(sample__0),
        .O(sample_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080C00000000000)) 
    sample_i_2
       (.I0(state[1]),
        .I1(smh_spi),
        .I2(spe),
        .I3(state[0]),
        .I4(cpha),
        .I5(rfwe_i_3_n_0),
        .O(sample0_out));
  FDRE sample_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sample_i_1_n_0),
        .Q(sample__0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82BE02FE)) 
    sck_o_i_4
       (.I0(cpol),
        .I1(state[0]),
        .I2(state[1]),
        .I3(ss_sck),
        .I4(\state[1]_i_2_n_0 ),
        .O(sck_o_i_4_n_0));
  FDRE sck_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wfifo_n_10),
        .Q(ss_sck),
        .R(rfwe_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[0]_i_1 
       (.I0(nxt_addr_reg[0]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(\rdata[3][0]_i_2_n_0 ),
        .O(\param_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[10]_i_1 
       (.I0(nxt_addr_reg[10]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[8]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[9]),
        .O(\param_reg[3]_0 [10]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[11]_i_1 
       (.I0(nxt_addr_reg[11]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[9]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[10]),
        .O(\param_reg[3]_0 [11]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[12]_i_1 
       (.I0(nxt_addr_reg[12]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[10]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[11]),
        .O(\param_reg[3]_0 [12]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[13]_i_1 
       (.I0(nxt_addr_reg[13]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[11]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[12]),
        .O(\param_reg[3]_0 [13]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[14]_i_1 
       (.I0(nxt_addr_reg[14]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[12]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[13]),
        .O(\param_reg[3]_0 [14]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[15]_i_1 
       (.I0(nxt_addr_reg[15]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[13]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[14]),
        .O(\param_reg[3]_0 [15]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[16]_i_1 
       (.I0(nxt_addr_reg[16]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[14]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[15]),
        .O(\param_reg[3]_0 [16]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[17]_i_1 
       (.I0(nxt_addr_reg[17]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[15]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[16]),
        .O(\param_reg[3]_0 [17]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[18]_i_1 
       (.I0(nxt_addr_reg[18]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[16]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[17]),
        .O(\param_reg[3]_0 [18]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[19]_i_1 
       (.I0(nxt_addr_reg[19]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[17]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[18]),
        .O(\param_reg[3]_0 [19]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[1]_i_1 
       (.I0(nxt_addr_reg[1]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(\shift_reg[1]_i_2_n_0 ),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[0]),
        .O(\param_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \shift_reg[1]_i_2 
       (.I0(sample[1]),
        .I1(param2[2]),
        .I2(sdi_i),
        .I3(\cs_timer_reg[0] [4]),
        .O(\shift_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[20]_i_1 
       (.I0(nxt_addr_reg[20]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[18]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[19]),
        .O(\param_reg[3]_0 [20]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[21]_i_1 
       (.I0(nxt_addr_reg[21]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[19]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[20]),
        .O(\param_reg[3]_0 [21]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[22]_i_1 
       (.I0(nxt_addr_reg[22]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[20]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[21]),
        .O(\param_reg[3]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \shift_reg[23]_i_1 
       (.I0(\shift_reg[31]_i_5_n_0 ),
        .I1(sr_shift_two_r_reg),
        .I2(\shift_reg_reg[27] ),
        .I3(\shift_reg[31]_i_3_n_0 ),
        .O(sck_reg[0]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[23]_i_2 
       (.I0(nxt_addr_reg[23]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[21]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[22]),
        .O(\param_reg[3]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \shift_reg[24]_i_1 
       (.I0(\shift_reg[31]_i_3_n_0 ),
        .I1(\shift_reg_reg[27] ),
        .I2(\shift_reg[31]_i_5_n_0 ),
        .I3(SPI_MOSI_iobuf[23]),
        .I4(\rdata_reg[3][6] ),
        .I5(SPI_MOSI_iobuf[22]),
        .O(\param_reg[3]_0 [24]));
  LUT6 #(
    .INIT(64'hBBBBBBBABABABBBA)) 
    \shift_reg[25]_i_1 
       (.I0(\shift_reg_reg[27] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(\shift_reg[31]_i_5_n_0 ),
        .I3(SPI_MOSI_iobuf[24]),
        .I4(\rdata_reg[3][6] ),
        .I5(SPI_MOSI_iobuf[23]),
        .O(\param_reg[3]_0 [25]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \shift_reg[26]_i_1 
       (.I0(\shift_reg[31]_i_5_n_0 ),
        .I1(\shift_reg_reg[27] ),
        .I2(\shift_reg[31]_i_3_n_0 ),
        .I3(SPI_MOSI_iobuf[25]),
        .I4(\rdata_reg[3][6] ),
        .I5(SPI_MOSI_iobuf[24]),
        .O(\param_reg[3]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFEFEFFFC)) 
    \shift_reg[27]_i_1 
       (.I0(param_dual_io),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(\shift_reg_reg[27] ),
        .I3(\shift_reg_reg[27]_0 ),
        .I4(\shift_reg[31]_i_5_n_0 ),
        .I5(param_fast_read),
        .O(\param_reg[3]_0 [27]));
  LUT3 #(
    .INIT(8'h54)) 
    \shift_reg[28]_i_1 
       (.I0(\shift_reg_reg[27] ),
        .I1(\shift_reg[28]_i_2_n_0 ),
        .I2(\shift_reg[31]_i_3_n_0 ),
        .O(\param_reg[3]_0 [28]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[28]_i_2 
       (.I0(param_dual_io),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[26]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[27]),
        .O(\shift_reg[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFC)) 
    \shift_reg[29]_i_1 
       (.I0(param_dual_io),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(\shift_reg_reg[27] ),
        .I3(\shift_reg[31]_i_5_n_0 ),
        .I4(\shift_reg_reg[29] ),
        .O(\param_reg[3]_0 [29]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[2]_i_1 
       (.I0(nxt_addr_reg[2]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[0]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[1]),
        .O(\param_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \shift_reg[30]_i_1 
       (.I0(\shift_reg[31]_i_5_n_0 ),
        .I1(\shift_reg_reg[27] ),
        .I2(\shift_reg[31]_i_3_n_0 ),
        .I3(SPI_MOSI_iobuf[29]),
        .I4(\rdata_reg[3][6] ),
        .I5(SPI_MOSI_iobuf[28]),
        .O(\param_reg[3]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \shift_reg[31]_i_1 
       (.I0(sr_shift_two_r_reg),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(\shift_reg_reg[27] ),
        .I3(\shift_reg[31]_i_5_n_0 ),
        .O(sck_reg[1]));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \shift_reg[31]_i_2 
       (.I0(\shift_reg_reg[31] ),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(param_dual_io),
        .I3(\shift_reg[31]_i_3_n_0 ),
        .I4(\shift_reg_reg[27] ),
        .O(\param_reg[3]_0 [31]));
  LUT2 #(
    .INIT(4'h1)) 
    \shift_reg[31]_i_3 
       (.I0(\cs_timer_reg[0] [6]),
        .I1(\rd_state[6]_i_2_n_0 ),
        .O(\shift_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \shift_reg[31]_i_5 
       (.I0(\cs_timer_reg[0] [3]),
        .I1(\rd_state[3]_i_2_n_0 ),
        .O(\shift_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[3]_i_1 
       (.I0(nxt_addr_reg[3]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[1]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[2]),
        .O(\param_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[4]_i_1 
       (.I0(nxt_addr_reg[4]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[2]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[3]),
        .O(\param_reg[3]_0 [4]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[5]_i_1 
       (.I0(nxt_addr_reg[5]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[3]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[4]),
        .O(\param_reg[3]_0 [5]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[6]_i_1 
       (.I0(nxt_addr_reg[6]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[4]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[5]),
        .O(\param_reg[3]_0 [6]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[7]_i_1 
       (.I0(nxt_addr_reg[7]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[5]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[6]),
        .O(\param_reg[3]_0 [7]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[8]_i_1 
       (.I0(nxt_addr_reg[8]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[6]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[7]),
        .O(\param_reg[3]_0 [8]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \shift_reg[9]_i_1 
       (.I0(nxt_addr_reg[9]),
        .I1(\shift_reg[31]_i_5_n_0 ),
        .I2(SPI_MOSI_iobuf[7]),
        .I3(sr_shift_two_r),
        .I4(sr_shift_inst_r),
        .I5(SPI_MOSI_iobuf[8]),
        .O(\param_reg[3]_0 [9]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \softcs[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\param[7]_i_2_n_0 ),
        .O(\softcs[7]_i_1_n_0 ));
  FDRE \softcs_reg[0] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[0]),
        .Q(\softcs_reg_n_0_[0] ),
        .R(areset));
  FDRE \softcs_reg[1] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[1]),
        .Q(\softcs_reg_n_0_[1] ),
        .R(areset));
  FDRE \softcs_reg[2] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[2]),
        .Q(\softcs_reg_n_0_[2] ),
        .R(areset));
  FDRE \softcs_reg[3] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[3]),
        .Q(\softcs_reg_n_0_[3] ),
        .R(areset));
  FDSE \softcs_reg[4] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[4]),
        .Q(\softcs_reg_n_0_[4] ),
        .S(areset));
  FDSE \softcs_reg[5] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[5]),
        .Q(\softcs_reg_n_0_[5] ),
        .S(areset));
  FDSE \softcs_reg[6] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[6]),
        .Q(\softcs_reg_n_0_[6] ),
        .S(areset));
  FDSE \softcs_reg[7] 
       (.C(aclk),
        .CE(\softcs[7]_i_1_n_0 ),
        .D(reg_dat_i[7]),
        .Q(\softcs_reg_n_0_[7] ),
        .S(areset));
  LUT1 #(
    .INIT(2'h1)) 
    \spcr[7]_i_1 
       (.I0(aresetn),
        .O(areset));
  LUT3 #(
    .INIT(8'h01)) 
    \spcr[7]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\spcr[7]_i_4_n_0 ),
        .O(spcr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEFEFEFFF)) 
    \spcr[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(rfifo_n_10),
        .I3(wcol_reg_0),
        .I4(second_write),
        .O(\spcr[7]_i_4_n_0 ));
  FDRE \spcr_reg[0] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[0]),
        .Q(espr_1[0]),
        .R(areset));
  FDSE \spcr_reg[1] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[1]),
        .Q(espr_1[1]),
        .S(areset));
  FDRE \spcr_reg[2] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[2]),
        .Q(cpha),
        .R(areset));
  FDRE \spcr_reg[3] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[3]),
        .Q(cpol),
        .R(areset));
  FDRE \spcr_reg[5] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[5]),
        .Q(\spcr_reg_n_0_[5] ),
        .R(areset));
  FDRE \spcr_reg[6] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[6]),
        .Q(spe),
        .R(areset));
  FDRE \spcr_reg[7] 
       (.C(aclk),
        .CE(spcr),
        .D(reg_dat_i[7]),
        .Q(spie),
        .R(areset));
  LUT3 #(
    .INIT(8'h40)) 
    \sper[7]_i_1 
       (.I0(\spcr[7]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(sper));
  FDRE \sper_reg[0] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[0]),
        .Q(espr_1[2]),
        .R(areset));
  FDRE \sper_reg[1] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[1]),
        .Q(espr_1[3]),
        .R(areset));
  FDRE \sper_reg[2] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[2]),
        .Q(smh_spi),
        .R(areset));
  FDRE \sper_reg[3] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[3]),
        .Q(\sper_reg_n_0_[3] ),
        .R(areset));
  FDRE \sper_reg[4] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[4]),
        .Q(\sper_reg_n_0_[4] ),
        .R(areset));
  FDRE \sper_reg[5] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[5]),
        .Q(\sper_reg_n_0_[5] ),
        .R(areset));
  FDRE \sper_reg[6] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[6]),
        .Q(icnt[0]),
        .R(areset));
  FDRE \sper_reg[7] 
       (.C(aclk),
        .CE(sper),
        .D(reg_dat_i[7]),
        .Q(icnt[1]),
        .R(areset));
  LUT6 #(
    .INIT(64'hFFFFCCDFFFFFCCD0)) 
    spi_run_i_1
       (.I0(spi_run_i_2_n_0),
        .I1(ns_idle[2]),
        .I2(spi_run_i_3_n_0),
        .I3(spi_run_i_4_n_0),
        .I4(ns_idle[3]),
        .I5(spi_run_reg_0),
        .O(spi_run_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    spi_run_i_2
       (.I0(cs_reg_3[0]),
        .I1(\rd_state[6]_i_2_n_0 ),
        .I2(\rd_state_reg[6]_0 ),
        .I3(\cs_timer_reg[0] [6]),
        .O(spi_run_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    spi_run_i_3
       (.I0(ns_idle[2]),
        .I1(spi_run_i_2_n_0),
        .I2(cs_reg_3[2]),
        .I3(cs_reg_3[1]),
        .O(spi_run_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spi_run_i_4
       (.I0(ns_idle[1]),
        .I1(ns_idle[0]),
        .O(spi_run_i_4_n_0));
  LUT6 #(
    .INIT(64'hE0E0E0EEE0E0E0E0)) 
    spif_i_1
       (.I0(spif_i_2_n_0),
        .I1(spif_i_3_n_0),
        .I2(spif),
        .I3(tcnt[0]),
        .I4(tcnt[1]),
        .I5(rfwe_reg_n_0),
        .O(spif0));
  LUT6 #(
    .INIT(64'hFFFFFF1FFFFFFFFF)) 
    spif_i_2
       (.I0(second_write),
        .I1(wcol_reg_0),
        .I2(rfifo_n_10),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\rdata[1][7]_i_2_n_0 ),
        .O(spif_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    spif_i_3
       (.I0(wfifo_n_13),
        .I1(s_wdata[31]),
        .I2(second_write),
        .O(spif_i_3_n_0));
  FDRE spif_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spif0),
        .Q(spif),
        .R(rfwe_i_1_n_0));
  LUT5 #(
    .INIT(32'h888F8880)) 
    sr_shift_inst_r_i_1
       (.I0(ns_idle[2]),
        .I1(sr_shift_inst_r_reg_0),
        .I2(sr_shift_two_r_reg),
        .I3(\shift_reg[31]_i_5_n_0 ),
        .I4(sr_shift_inst_r),
        .O(sr_shift_inst_r_reg));
  LUT6 #(
    .INIT(64'hA8A8A8FFA8A8A800)) 
    sr_shift_two_r_i_1
       (.I0(param_dual_io),
        .I1(sr_shift_two_r_reg_0),
        .I2(ns_idle[3]),
        .I3(sr_shift_two_r_reg),
        .I4(sr_shift_two_r_i_3_n_0),
        .I5(sr_shift_two_r),
        .O(\param_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h00007500)) 
    sr_shift_two_r_i_3
       (.I0(\rd_state[4]_i_3_n_0 ),
        .I1(\rd_state[4]_i_4_n_0 ),
        .I2(\cs_timer_reg[0] [3]),
        .I3(\rd_state_reg[2]_1 ),
        .I4(\cs_timer_reg[0] [4]),
        .O(sr_shift_two_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FC030C0)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(rfwe_i_3_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(smh_spi),
        .O(\state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[1]_i_2 
       (.I0(bcnt[1]),
        .I1(bcnt[0]),
        .I2(bcnt[2]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wfifo_n_16),
        .Q(state[0]),
        .R(rfwe_i_1_n_0));
  FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rfwe_i_1_n_0));
  LUT5 #(
    .INIT(32'h0FCCE0CC)) 
    \tcnt[0]_i_1 
       (.I0(tcnt[1]),
        .I1(icnt[0]),
        .I2(rfwe_reg_n_0),
        .I3(spe),
        .I4(tcnt[0]),
        .O(\tcnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFAA20AA)) 
    \tcnt[1]_i_1 
       (.I0(icnt[1]),
        .I1(tcnt[0]),
        .I2(rfwe_reg_n_0),
        .I3(spe),
        .I4(tcnt[1]),
        .O(\tcnt[1]_i_1_n_0 ));
  FDRE \tcnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tcnt[0]_i_1_n_0 ),
        .Q(tcnt[0]),
        .R(1'b0));
  FDRE \tcnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tcnt[1]_i_1_n_0 ),
        .Q(tcnt[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAABAAABAAABAAAAA)) 
    \tot_bytes[7]_i_1 
       (.I0(\rdata[3][7]_i_4_n_0 ),
        .I1(buf_busy),
        .I2(\cs_timer_reg[0] [0]),
        .I3(pdreq_r),
        .I4(s_awvalid),
        .I5(s_arvalid),
        .O(buf_busy_reg_0));
  LUT5 #(
    .INIT(32'hB00040FF)) 
    \treg[7]_i_1 
       (.I0(cpha),
        .I1(smh_spi),
        .I2(rfwe_i_3_n_0),
        .I3(state[1]),
        .I4(state[0]),
        .O(\treg[7]_i_1_n_0 ));
  FDRE \treg_reg[0] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(treg[0]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[1] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(treg[1]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[2] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(treg[2]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[3] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(treg[3]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[4] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(treg[4]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[5] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(treg[5]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[6] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(treg[6]),
        .R(rfwe_i_1_n_0));
  FDRE \treg_reg[7] 
       (.C(aclk),
        .CE(\treg[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(ss_mosi),
        .R(rfwe_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    wcol_i_2
       (.I0(wfifo_n_12),
        .I1(s_wdata[30]),
        .I2(second_write),
        .O(wcol_i_2_n_0));
  FDRE wcol_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wcol0),
        .Q(wcol),
        .R(rfwe_i_1_n_0));
  bd_top_spi_flash_ctrl_0_0_spi_fifo4_0 wfifo
       (.D(reg_dat_i),
        .Q(smh_spi),
        .aclk(aclk),
        .aresetn(aresetn),
        .busy0(busy0),
        .busy_reg(busy_i_2_n_0),
        .gb_reg_0(wfifo_n_8),
        .gb_reg_1({spe,cpol,cpha}),
        .rp__0(rp__0),
        .\rp_reg[0]_0 (wfifo_n_15),
        .s_wdata(s_wdata),
        .s_wdata_15_sp_1(wfifo_n_13),
        .s_wdata_30_sp_1(wfifo_n_12),
        .sample__0(sample__0),
        .sck_o_reg(sck_o_i_4_n_0),
        .sdi_i(sdi_i),
        .second_write(second_write),
        .ss_sck(ss_sck),
        .state(state),
        .\state_reg[0] (wfifo_n_10),
        .\state_reg[0]_0 (wfifo_n_16),
        .\state_reg[0]_1 (rfwe_i_3_n_0),
        .\state_reg[0]_2 (\state[1]_i_2_n_0 ),
        .\treg_reg[6] (p_2_in),
        .\treg_reg[7] (treg),
        .wcol(wcol),
        .wcol0(wcol0),
        .wcol_reg(\spcr[7]_i_4_n_0 ),
        .wcol_reg_0(\rdata[1][7]_i_2_n_0 ),
        .wcol_reg_1(wcol_i_2_n_0),
        .wcol_reg_2(Q[3:0]),
        .wcol_reg_3(\buf_addr_reg[0] ),
        .wcol_reg_4(rfifo_n_10),
        .wcol_reg_5(wcol_reg_0),
        .wfre(wfre),
        .\wp_reg[1]_0 (wfifo_n_9));
  FDRE wfre_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wfifo_n_15),
        .Q(wfre),
        .R(rfwe_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "spi_fifo4" *) 
module bd_top_spi_flash_ctrl_0_0_spi_fifo4
   (S,
    D,
    buf_busy_reg,
    \buf_addr_reg[0] ,
    second_write_reg,
    \buf_len_reg[3] ,
    rp__0,
    aclk,
    Q,
    spi_addr,
    aresetn,
    \rdata_reg[3][7]_i_7_0 ,
    \wp_reg[1]_0 ,
    \rdata_reg[3][0] ,
    \rdata_reg[3][0]_0 ,
    rvalid045_out,
    \rdata_reg[3][7]_i_7_1 ,
    \rdata_reg[3][1] ,
    \rdata_reg[3][1]_0 ,
    gb_reg_0,
    second_write,
    buf_busy,
    spif_i_2,
    CO,
    mem_reg_0_3_0_5_i_3_0,
    \rdata_reg[3][7] ,
    \rdata_reg[3][6] ,
    \rdata_reg[3][3] ,
    \rdata_reg[3][3]_0 ,
    \rdata_reg[3][4] ,
    \rdata_reg[3][5] ,
    \rdata_reg[3][2] ,
    \rdata_reg[3][2]_0 ,
    buf_busy_reg_0,
    s_wvalid,
    \rdata_reg[3][2]_1 ,
    \rdata_reg[3][7]_0 ,
    spif,
    \rdata_reg[3][6]_0 ,
    wcol,
    \rdata[3][6]_i_3_0 );
  output [1:0]S;
  output [7:0]D;
  output buf_busy_reg;
  output \buf_addr_reg[0] ;
  output second_write_reg;
  output \buf_len_reg[3] ;
  output rp__0;
  input aclk;
  input [7:0]Q;
  input [3:0]spi_addr;
  input aresetn;
  input [6:0]\rdata_reg[3][7]_i_7_0 ;
  input \wp_reg[1]_0 ;
  input \rdata_reg[3][0] ;
  input \rdata_reg[3][0]_0 ;
  input rvalid045_out;
  input [7:0]\rdata_reg[3][7]_i_7_1 ;
  input \rdata_reg[3][1] ;
  input \rdata_reg[3][1]_0 ;
  input gb_reg_0;
  input second_write;
  input buf_busy;
  input [1:0]spif_i_2;
  input [0:0]CO;
  input [2:0]mem_reg_0_3_0_5_i_3_0;
  input [5:0]\rdata_reg[3][7] ;
  input \rdata_reg[3][6] ;
  input \rdata_reg[3][3] ;
  input \rdata_reg[3][3]_0 ;
  input \rdata_reg[3][4] ;
  input \rdata_reg[3][5] ;
  input \rdata_reg[3][2] ;
  input \rdata_reg[3][2]_0 ;
  input [3:0]buf_busy_reg_0;
  input s_wvalid;
  input \rdata_reg[3][2]_1 ;
  input \rdata_reg[3][7]_0 ;
  input spif;
  input \rdata_reg[3][6]_0 ;
  input wcol;
  input [7:0]\rdata[3][6]_i_3_0 ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [7:0]Q;
  wire [1:0]S;
  wire aclk;
  wire aresetn;
  wire \buf_addr_reg[0] ;
  wire buf_busy;
  wire buf_busy_reg;
  wire [3:0]buf_busy_reg_0;
  wire \buf_len_reg[3] ;
  wire [8:1]dout_2;
  wire gb;
  wire gb0;
  wire gb_i_1_n_0;
  wire gb_reg_0;
  wire [2:0]mem_reg_0_3_0_5_i_3_0;
  wire mem_reg_0_3_0_5_i_4_n_0;
  wire mem_reg_0_3_0_5_i_5_n_0;
  wire \rdata[3][0]_i_3_n_0 ;
  wire \rdata[3][0]_i_6_n_0 ;
  wire \rdata[3][1]_i_3_n_0 ;
  wire \rdata[3][1]_i_5_n_0 ;
  wire \rdata[3][2]_i_3_n_0 ;
  wire \rdata[3][3]_i_2_n_0 ;
  wire \rdata[3][3]_i_3_n_0 ;
  wire \rdata[3][4]_i_2_n_0 ;
  wire \rdata[3][5]_i_3_n_0 ;
  wire [7:0]\rdata[3][6]_i_3_0 ;
  wire \rdata[3][6]_i_3_n_0 ;
  wire \rdata[3][7]_i_9_n_0 ;
  wire \rdata_reg[3][0] ;
  wire \rdata_reg[3][0]_0 ;
  wire \rdata_reg[3][1] ;
  wire \rdata_reg[3][1]_0 ;
  wire \rdata_reg[3][2] ;
  wire \rdata_reg[3][2]_0 ;
  wire \rdata_reg[3][2]_1 ;
  wire \rdata_reg[3][3] ;
  wire \rdata_reg[3][3]_0 ;
  wire \rdata_reg[3][4] ;
  wire \rdata_reg[3][5] ;
  wire \rdata_reg[3][5]_i_2_n_0 ;
  wire \rdata_reg[3][6] ;
  wire \rdata_reg[3][6]_0 ;
  wire \rdata_reg[3][6]_i_2_n_0 ;
  wire [5:0]\rdata_reg[3][7] ;
  wire \rdata_reg[3][7]_0 ;
  wire [6:0]\rdata_reg[3][7]_i_7_0 ;
  wire [7:0]\rdata_reg[3][7]_i_7_1 ;
  wire \rdata_reg[3][7]_i_7_n_0 ;
  wire rfre;
  wire [1:0]rp;
  wire \rp[0]_i_1_n_0 ;
  wire \rp[1]_i_2_n_0 ;
  wire rp__0;
  wire rvalid045_out;
  wire s_wvalid;
  wire second_write;
  wire second_write_reg;
  wire [3:0]spi_addr;
  wire spif;
  wire [1:0]spif_i_2;
  wire wcol;
  wire [1:0]wp;
  wire \wp[0]_i_1_n_0 ;
  wire \wp[1]_i_1_n_0 ;
  wire \wp_reg[1]_0 ;
  wire [1:0]NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFFE)) 
    buf_busy_i_3
       (.I0(buf_busy_reg_0[3]),
        .I1(buf_busy_reg_0[0]),
        .I2(buf_busy_reg_0[1]),
        .I3(buf_busy_reg_0[2]),
        .O(\buf_len_reg[3] ));
  LUT5 #(
    .INIT(32'hF2000000)) 
    gb_i_1
       (.I0(gb),
        .I1(rfre),
        .I2(gb0),
        .I3(aresetn),
        .I4(\rdata_reg[3][7]_i_7_0 [5]),
        .O(gb_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08404008)) 
    gb_i_2
       (.I0(rp[0]),
        .I1(\wp_reg[1]_0 ),
        .I2(wp[0]),
        .I3(wp[1]),
        .I4(rp[1]),
        .O(gb0));
  FDRE gb_reg
       (.C(aclk),
        .CE(1'b1),
        .D(gb_i_1_n_0),
        .Q(gb),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    io_hit0_carry__1_i_1
       (.I0(spi_addr[3]),
        .I1(Q[7]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    io_hit0_carry__1_i_2
       (.I0(Q[4]),
        .I1(spi_addr[0]),
        .I2(Q[5]),
        .I3(spi_addr[1]),
        .I4(spi_addr[2]),
        .I5(Q[6]),
        .O(S[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "inst/simple_spi/rfifo/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,rp}),
        .ADDRB({1'b0,1'b0,1'b0,rp}),
        .ADDRC({1'b0,1'b0,1'b0,rp}),
        .ADDRD({1'b0,1'b0,1'b0,wp}),
        .DIA(\rdata[3][6]_i_3_0 [1:0]),
        .DIB(\rdata[3][6]_i_3_0 [3:2]),
        .DIC(\rdata[3][6]_i_3_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout_2[2:1]),
        .DOB(dout_2[4:3]),
        .DOC(dout_2[6:5]),
        .DOD(NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(\wp_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    mem_reg_0_3_0_5_i_2
       (.I0(buf_busy),
        .I1(second_write_reg),
        .I2(spif_i_2[1]),
        .O(buf_busy_reg));
  LUT6 #(
    .INIT(64'hABAAAAAAABAAABAA)) 
    mem_reg_0_3_0_5_i_3
       (.I0(second_write),
        .I1(mem_reg_0_3_0_5_i_4_n_0),
        .I2(\buf_len_reg[3] ),
        .I3(CO),
        .I4(mem_reg_0_3_0_5_i_5_n_0),
        .I5(mem_reg_0_3_0_5_i_3_0[0]),
        .O(second_write_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    mem_reg_0_3_0_5_i_4
       (.I0(s_wvalid),
        .I1(spif_i_2[0]),
        .I2(buf_busy),
        .I3(gb_reg_0),
        .I4(mem_reg_0_3_0_5_i_3_0[1]),
        .I5(mem_reg_0_3_0_5_i_3_0[2]),
        .O(mem_reg_0_3_0_5_i_4_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    mem_reg_0_3_0_5_i_5
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(mem_reg_0_3_0_5_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "inst/simple_spi/rfifo/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M mem_reg_0_3_6_7
       (.ADDRA({1'b0,1'b0,1'b0,rp}),
        .ADDRB({1'b0,1'b0,1'b0,rp}),
        .ADDRC({1'b0,1'b0,1'b0,rp}),
        .ADDRD({1'b0,1'b0,1'b0,wp}),
        .DIA(\rdata[3][6]_i_3_0 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout_2[8:7]),
        .DOB(NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(\wp_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rdata[2][7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\buf_addr_reg[0] ));
  LUT6 #(
    .INIT(64'h0000AAAAFF0CAAAA)) 
    \rdata[3][0]_i_1 
       (.I0(\rdata_reg[3][0] ),
        .I1(\rdata[3][0]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\rdata_reg[3][0]_0 ),
        .I4(rvalid045_out),
        .I5(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3][0]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [0]),
        .I1(dout_2[1]),
        .I2(Q[1]),
        .I3(\rdata[3][0]_i_6_n_0 ),
        .I4(Q[0]),
        .I5(\rdata_reg[3][7]_i_7_0 [0]),
        .O(\rdata[3][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h41000041)) 
    \rdata[3][0]_i_6 
       (.I0(gb),
        .I1(wp[1]),
        .I2(rp[1]),
        .I3(wp[0]),
        .I4(rp[0]),
        .O(\rdata[3][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAAFF0CAAAA)) 
    \rdata[3][1]_i_1 
       (.I0(\rdata_reg[3][1] ),
        .I1(\rdata[3][1]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\rdata_reg[3][1]_0 ),
        .I4(rvalid045_out),
        .I5(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3][1]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [1]),
        .I1(dout_2[2]),
        .I2(Q[1]),
        .I3(\rdata[3][1]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(\rdata_reg[3][7]_i_7_0 [1]),
        .O(\rdata[3][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    \rdata[3][1]_i_5 
       (.I0(gb),
        .I1(wp[1]),
        .I2(rp[1]),
        .I3(wp[0]),
        .I4(rp[0]),
        .O(\rdata[3][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAAFF0CAAAA)) 
    \rdata[3][2]_i_1 
       (.I0(\rdata_reg[3][2] ),
        .I1(\rdata[3][2]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\rdata_reg[3][2]_0 ),
        .I4(rvalid045_out),
        .I5(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3][2]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [2]),
        .I1(dout_2[3]),
        .I2(Q[1]),
        .I3(\rdata_reg[3][2]_1 ),
        .I4(Q[0]),
        .I5(\rdata_reg[3][7]_i_7_0 [2]),
        .O(\rdata[3][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B800FFB8B8)) 
    \rdata[3][3]_i_1 
       (.I0(\rdata_reg[3][7] [0]),
        .I1(\rdata_reg[3][6] ),
        .I2(\rdata_reg[3][7] [1]),
        .I3(\rdata[3][3]_i_2_n_0 ),
        .I4(rvalid045_out),
        .I5(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF5455)) 
    \rdata[3][3]_i_2 
       (.I0(\rdata[3][3]_i_3_n_0 ),
        .I1(\rdata_reg[3][3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\rdata_reg[3][3]_0 ),
        .O(\rdata[3][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00F0CC)) 
    \rdata[3][3]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [3]),
        .I1(\rdata_reg[3][7]_i_7_0 [3]),
        .I2(dout_2[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\rdata[3][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1F101F1F1F101010)) 
    \rdata[3][4]_i_1 
       (.I0(Q[3]),
        .I1(\rdata[3][4]_i_2_n_0 ),
        .I2(rvalid045_out),
        .I3(\rdata_reg[3][7] [1]),
        .I4(\rdata_reg[3][6] ),
        .I5(\rdata_reg[3][7] [2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h88BBBBBB8B888B88)) 
    \rdata[3][4]_i_2 
       (.I0(\rdata_reg[3][4] ),
        .I1(Q[2]),
        .I2(dout_2[5]),
        .I3(Q[1]),
        .I4(\rdata_reg[3][7]_i_7_1 [4]),
        .I5(Q[0]),
        .O(\rdata[3][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1F101F1F1F101010)) 
    \rdata[3][5]_i_1 
       (.I0(Q[3]),
        .I1(\rdata_reg[3][5]_i_2_n_0 ),
        .I2(rvalid045_out),
        .I3(\rdata_reg[3][7] [2]),
        .I4(\rdata_reg[3][6] ),
        .I5(\rdata_reg[3][7] [3]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h53F053FF)) 
    \rdata[3][5]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [5]),
        .I1(dout_2[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\rdata_reg[3][7]_i_7_0 [4]),
        .O(\rdata[3][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[3][6]_i_1 
       (.I0(\rdata_reg[3][6]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(rvalid045_out),
        .I3(\rdata_reg[3][7] [3]),
        .I4(\rdata_reg[3][6] ),
        .I5(\rdata_reg[3][7] [4]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3][6]_i_3 
       (.I0(\rdata_reg[3][7]_i_7_1 [6]),
        .I1(dout_2[7]),
        .I2(Q[1]),
        .I3(wcol),
        .I4(Q[0]),
        .I5(\rdata_reg[3][7]_i_7_0 [5]),
        .O(\rdata[3][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[3][7]_i_2 
       (.I0(\rdata_reg[3][7]_i_7_n_0 ),
        .I1(Q[3]),
        .I2(rvalid045_out),
        .I3(\rdata_reg[3][7] [4]),
        .I4(\rdata_reg[3][6] ),
        .I5(\rdata_reg[3][7] [5]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3][7]_i_9 
       (.I0(\rdata_reg[3][7]_i_7_1 [7]),
        .I1(dout_2[8]),
        .I2(Q[1]),
        .I3(spif),
        .I4(Q[0]),
        .I5(\rdata_reg[3][7]_i_7_0 [6]),
        .O(\rdata[3][7]_i_9_n_0 ));
  MUXF7 \rdata_reg[3][5]_i_2 
       (.I0(\rdata[3][5]_i_3_n_0 ),
        .I1(\rdata_reg[3][5] ),
        .O(\rdata_reg[3][5]_i_2_n_0 ),
        .S(Q[2]));
  MUXF7 \rdata_reg[3][6]_i_2 
       (.I0(\rdata[3][6]_i_3_n_0 ),
        .I1(\rdata_reg[3][6]_0 ),
        .O(\rdata_reg[3][6]_i_2_n_0 ),
        .S(Q[2]));
  MUXF7 \rdata_reg[3][7]_i_7 
       (.I0(\rdata[3][7]_i_9_n_0 ),
        .I1(\rdata_reg[3][7]_0 ),
        .O(\rdata_reg[3][7]_i_7_n_0 ),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rp[0]_i_1 
       (.I0(rfre),
        .I1(rp[0]),
        .O(\rp[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rp[1]_i_1__0 
       (.I0(\rdata_reg[3][7]_i_7_0 [5]),
        .I1(aresetn),
        .O(rp__0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rp[1]_i_2 
       (.I0(rp[0]),
        .I1(rfre),
        .I2(rp[1]),
        .O(\rp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rp[1]_i_3 
       (.I0(buf_busy_reg),
        .I1(\buf_addr_reg[0] ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(gb_reg_0),
        .I5(second_write),
        .O(rfre));
  FDRE \rp_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rp[0]_i_1_n_0 ),
        .Q(rp[0]),
        .R(rp__0));
  FDRE \rp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rp[1]_i_2_n_0 ),
        .Q(rp[1]),
        .R(rp__0));
  LUT2 #(
    .INIT(4'h6)) 
    \wp[0]_i_1 
       (.I0(\wp_reg[1]_0 ),
        .I1(wp[0]),
        .O(\wp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wp[1]_i_1 
       (.I0(wp[0]),
        .I1(\wp_reg[1]_0 ),
        .I2(wp[1]),
        .O(\wp[1]_i_1_n_0 ));
  FDRE \wp_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wp[0]_i_1_n_0 ),
        .Q(wp[0]),
        .R(rp__0));
  FDRE \wp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wp[1]_i_1_n_0 ),
        .Q(wp[1]),
        .R(rp__0));
endmodule

(* ORIG_REF_NAME = "spi_fifo4" *) 
module bd_top_spi_flash_ctrl_0_0_spi_fifo4_0
   (D,
    gb_reg_0,
    \wp_reg[1]_0 ,
    \state_reg[0] ,
    wcol0,
    s_wdata_30_sp_1,
    s_wdata_15_sp_1,
    busy0,
    \rp_reg[0]_0 ,
    \state_reg[0]_0 ,
    \treg_reg[6] ,
    aclk,
    state,
    \state_reg[0]_1 ,
    Q,
    ss_sck,
    wfre,
    aresetn,
    gb_reg_1,
    wcol_reg,
    wcol_reg_0,
    wcol_reg_1,
    wcol,
    wcol_reg_2,
    wcol_reg_3,
    wcol_reg_4,
    wcol_reg_5,
    second_write,
    s_wdata,
    sck_o_reg,
    \state_reg[0]_2 ,
    busy_reg,
    sample__0,
    sdi_i,
    \treg_reg[7] ,
    rp__0);
  output [7:0]D;
  output gb_reg_0;
  output \wp_reg[1]_0 ;
  output \state_reg[0] ;
  output wcol0;
  output s_wdata_30_sp_1;
  output s_wdata_15_sp_1;
  output busy0;
  output \rp_reg[0]_0 ;
  output \state_reg[0]_0 ;
  output [7:0]\treg_reg[6] ;
  input aclk;
  input [1:0]state;
  input \state_reg[0]_1 ;
  input [0:0]Q;
  input ss_sck;
  input wfre;
  input aresetn;
  input [2:0]gb_reg_1;
  input wcol_reg;
  input wcol_reg_0;
  input wcol_reg_1;
  input wcol;
  input [3:0]wcol_reg_2;
  input wcol_reg_3;
  input wcol_reg_4;
  input wcol_reg_5;
  input second_write;
  input [31:0]s_wdata;
  input sck_o_reg;
  input \state_reg[0]_2 ;
  input busy_reg;
  input sample__0;
  input sdi_i;
  input [6:0]\treg_reg[7] ;
  input rp__0;

  wire [7:0]D;
  wire [0:0]Q;
  wire aclk;
  wire aresetn;
  wire busy0;
  wire busy_reg;
  wire [8:1]dout;
  wire gb;
  wire gb_i_1__0_n_0;
  wire gb_i_2__0_n_0;
  wire gb_reg_0;
  wire [2:0]gb_reg_1;
  wire [1:0]rp;
  wire \rp[0]_i_1__0_n_0 ;
  wire \rp[1]_i_1_n_0 ;
  wire rp__0;
  wire \rp_reg[0]_0 ;
  wire [31:0]s_wdata;
  wire s_wdata_15_sn_1;
  wire s_wdata_30_sn_1;
  wire sample__0;
  wire sck_o_i_3_n_0;
  wire sck_o_i_5_n_0;
  wire sck_o_reg;
  wire sck_o_reg_i_2_n_0;
  wire sdi_i;
  wire second_write;
  wire \spcr[0]_i_2_n_0 ;
  wire \spcr[1]_i_2_n_0 ;
  wire \spcr[2]_i_2_n_0 ;
  wire \spcr[3]_i_2_n_0 ;
  wire \spcr[5]_i_2_n_0 ;
  wire \sper[4]_i_2_n_0 ;
  wire ss_sck;
  wire [1:0]state;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [7:0]\treg_reg[6] ;
  wire [6:0]\treg_reg[7] ;
  wire wcol;
  wire wcol0;
  wire wcol_reg;
  wire wcol_reg_0;
  wire wcol_reg_1;
  wire [3:0]wcol_reg_2;
  wire wcol_reg_3;
  wire wcol_reg_4;
  wire wcol_reg_5;
  wire wfre;
  wire wfwe;
  wire [1:0]wp;
  wire \wp[0]_i_1__0_n_0 ;
  wire \wp[1]_i_1__0_n_0 ;
  wire \wp_reg[1]_0 ;
  wire [1:0]NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED;

  assign s_wdata_15_sp_1 = s_wdata_15_sn_1;
  assign s_wdata_30_sp_1 = s_wdata_30_sn_1;
  LUT6 #(
    .INIT(64'hFFFF6FF6FFFFFFFF)) 
    busy_i_1
       (.I0(rp[0]),
        .I1(wp[0]),
        .I2(rp[1]),
        .I3(wp[1]),
        .I4(gb),
        .I5(busy_reg),
        .O(busy0));
  LUT6 #(
    .INIT(64'h0CAE000000000000)) 
    gb_i_1__0
       (.I0(gb),
        .I1(wfwe),
        .I2(gb_i_2__0_n_0),
        .I3(wfre),
        .I4(aresetn),
        .I5(gb_reg_1[2]),
        .O(gb_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF96F)) 
    gb_i_2__0
       (.I0(wp[1]),
        .I1(rp[1]),
        .I2(rp[0]),
        .I3(wp[0]),
        .O(gb_i_2__0_n_0));
  FDRE gb_reg
       (.C(aclk),
        .CE(1'b1),
        .D(gb_i_1__0_n_0),
        .Q(gb),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "inst/simple_spi/wfifo/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,rp}),
        .ADDRB({1'b0,1'b0,1'b0,rp}),
        .ADDRC({1'b0,1'b0,1'b0,rp}),
        .ADDRD({1'b0,1'b0,1'b0,wp}),
        .DIA(D[1:0]),
        .DIB(D[3:2]),
        .DIC(D[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout[2:1]),
        .DOB(dout[4:3]),
        .DOC(dout[6:5]),
        .DOD(NLW_mem_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(wfwe));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    mem_reg_0_3_0_5_i_1
       (.I0(wcol_reg_2[2]),
        .I1(wcol_reg_2[3]),
        .I2(wcol_reg_3),
        .I3(wcol_reg_4),
        .I4(wcol_reg_5),
        .I5(second_write),
        .O(wfwe));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "inst/simple_spi/wfifo/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M mem_reg_0_3_6_7
       (.ADDRA({1'b0,1'b0,1'b0,rp}),
        .ADDRB({1'b0,1'b0,1'b0,rp}),
        .ADDRC({1'b0,1'b0,1'b0,rp}),
        .ADDRD({1'b0,1'b0,1'b0,wp}),
        .DIA(D[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout[8:7]),
        .DOB(NLW_mem_reg_0_3_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_3_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_3_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(wfwe));
  LUT2 #(
    .INIT(4'h6)) 
    \rp[0]_i_1__0 
       (.I0(wfre),
        .I1(rp[0]),
        .O(\rp[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rp[1]_i_1 
       (.I0(rp[0]),
        .I1(wfre),
        .I2(rp[1]),
        .O(\rp[1]_i_1_n_0 ));
  FDRE \rp_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rp[0]_i_1__0_n_0 ),
        .Q(rp[0]),
        .R(rp__0));
  FDRE \rp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rp[1]_i_1_n_0 ),
        .Q(rp[1]),
        .R(rp__0));
  LUT6 #(
    .INIT(64'hFF0EFF4EF100B100)) 
    sck_o_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\state_reg[0]_1 ),
        .I3(sck_o_reg_i_2_n_0),
        .I4(Q),
        .I5(ss_sck),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h808080B0F7F7F7F4)) 
    sck_o_i_3
       (.I0(\state_reg[0]_2 ),
        .I1(state[1]),
        .I2(gb_reg_1[1]),
        .I3(state[0]),
        .I4(sck_o_i_5_n_0),
        .I5(ss_sck),
        .O(sck_o_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA28AAAA28)) 
    sck_o_i_5
       (.I0(gb_reg_1[0]),
        .I1(rp[0]),
        .I2(wp[0]),
        .I3(rp[1]),
        .I4(wp[1]),
        .I5(gb),
        .O(sck_o_i_5_n_0));
  MUXF7 sck_o_reg_i_2
       (.I0(sck_o_i_3_n_0),
        .I1(sck_o_reg),
        .O(sck_o_reg_i_2_n_0),
        .S(Q));
  LUT3 #(
    .INIT(8'hB8)) 
    \spcr[0]_i_1 
       (.I0(s_wdata[24]),
        .I1(second_write),
        .I2(\spcr[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \spcr[0]_i_2 
       (.I0(s_wdata[24]),
        .I1(s_wdata[16]),
        .I2(s_wdata[0]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[8]),
        .O(\spcr[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spcr[1]_i_1 
       (.I0(s_wdata[25]),
        .I1(second_write),
        .I2(\spcr[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \spcr[1]_i_2 
       (.I0(s_wdata[25]),
        .I1(s_wdata[17]),
        .I2(s_wdata[9]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[1]),
        .O(\spcr[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spcr[2]_i_1 
       (.I0(s_wdata[26]),
        .I1(second_write),
        .I2(\spcr[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \spcr[2]_i_2 
       (.I0(s_wdata[26]),
        .I1(s_wdata[18]),
        .I2(s_wdata[2]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[10]),
        .O(\spcr[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spcr[3]_i_1 
       (.I0(s_wdata[27]),
        .I1(second_write),
        .I2(\spcr[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \spcr[3]_i_2 
       (.I0(s_wdata[11]),
        .I1(s_wdata[3]),
        .I2(s_wdata[27]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[19]),
        .O(\spcr[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \spcr[5]_i_1 
       (.I0(s_wdata[29]),
        .I1(second_write),
        .I2(\spcr[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \spcr[5]_i_2 
       (.I0(s_wdata[29]),
        .I1(s_wdata[21]),
        .I2(s_wdata[5]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[13]),
        .O(\spcr[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8D)) 
    \spcr[6]_i_1 
       (.I0(second_write),
        .I1(s_wdata[30]),
        .I2(s_wdata_30_sn_1),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h550F3300550F33FF)) 
    \spcr[6]_i_2 
       (.I0(s_wdata[30]),
        .I1(s_wdata[22]),
        .I2(s_wdata[14]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[6]),
        .O(s_wdata_30_sn_1));
  LUT3 #(
    .INIT(8'h8D)) 
    \spcr[7]_i_3 
       (.I0(second_write),
        .I1(s_wdata[31]),
        .I2(s_wdata_15_sn_1),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0F5500330F55FF33)) 
    \spcr[7]_i_5 
       (.I0(s_wdata[15]),
        .I1(s_wdata[7]),
        .I2(s_wdata[31]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[23]),
        .O(s_wdata_15_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \sper[4]_i_1 
       (.I0(s_wdata[28]),
        .I1(second_write),
        .I2(\sper[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \sper[4]_i_2 
       (.I0(s_wdata[12]),
        .I1(s_wdata[4]),
        .I2(s_wdata[28]),
        .I3(wcol_reg_2[1]),
        .I4(wcol_reg_2[0]),
        .I5(s_wdata[20]),
        .O(\sper[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33CC330F7700FF0F)) 
    \state[0]_i_1 
       (.I0(\state_reg[0]_2 ),
        .I1(\state_reg[0]_1 ),
        .I2(gb_reg_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(Q),
        .O(\state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h41000041)) 
    \state[0]_i_2 
       (.I0(gb),
        .I1(wp[1]),
        .I2(rp[1]),
        .I3(wp[0]),
        .I4(rp[0]),
        .O(gb_reg_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \treg[0]_i_1 
       (.I0(sample__0),
        .I1(Q),
        .I2(sdi_i),
        .I3(state[1]),
        .I4(dout[1]),
        .O(\treg_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[1]_i_1 
       (.I0(\treg_reg[7] [0]),
        .I1(state[1]),
        .I2(dout[2]),
        .O(\treg_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[2]_i_1 
       (.I0(\treg_reg[7] [1]),
        .I1(state[1]),
        .I2(dout[3]),
        .O(\treg_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[3]_i_1 
       (.I0(\treg_reg[7] [2]),
        .I1(state[1]),
        .I2(dout[4]),
        .O(\treg_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[4]_i_1 
       (.I0(\treg_reg[7] [3]),
        .I1(state[1]),
        .I2(dout[5]),
        .O(\treg_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[5]_i_1 
       (.I0(\treg_reg[7] [4]),
        .I1(state[1]),
        .I2(dout[6]),
        .O(\treg_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[6]_i_1 
       (.I0(\treg_reg[7] [5]),
        .I1(state[1]),
        .I2(dout[7]),
        .O(\treg_reg[6] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \treg[7]_i_2 
       (.I0(\treg_reg[7] [6]),
        .I1(state[1]),
        .I2(dout[8]),
        .O(\treg_reg[6] [7]));
  LUT6 #(
    .INIT(64'hFB00FBFBFB00FB00)) 
    wcol_i_1
       (.I0(wcol_reg),
        .I1(wcol_reg_0),
        .I2(wcol_reg_1),
        .I3(wcol),
        .I4(\wp_reg[1]_0 ),
        .I5(wfwe),
        .O(wcol0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6FF6FFFF)) 
    wcol_i_3
       (.I0(wp[1]),
        .I1(rp[1]),
        .I2(wp[0]),
        .I3(rp[0]),
        .I4(gb),
        .O(\wp_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA28AAAA28)) 
    wfre_i_1
       (.I0(busy_reg),
        .I1(rp[0]),
        .I2(wp[0]),
        .I3(rp[1]),
        .I4(wp[1]),
        .I5(gb),
        .O(\rp_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wp[0]_i_1__0 
       (.I0(wfwe),
        .I1(wp[0]),
        .O(\wp[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wp[1]_i_1__0 
       (.I0(wp[0]),
        .I1(wfwe),
        .I2(wp[1]),
        .O(\wp[1]_i_1__0_n_0 ));
  FDRE \wp_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wp[0]_i_1__0_n_0 ),
        .Q(wp[0]),
        .R(rp__0));
  FDRE \wp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wp[1]_i_1__0_n_0 ),
        .Q(wp[1]),
        .R(rp__0));
endmodule

(* ORIG_REF_NAME = "spi_flash_ctrl" *) 
module bd_top_spi_flash_ctrl_0_0_spi_flash_ctrl
   (s_awready,
    rvalid_reg_0,
    inta_o,
    s_bid,
    s_rdata,
    s_rlast,
    s_bvalid,
    s_wready,
    s_arready,
    SPI_CLK,
    SPI_CS,
    power_down_ack,
    SPI_MOSI,
    SPI_MISO,
    s_arvalid,
    s_awvalid,
    s_arsize,
    s_arlen,
    spi_addr,
    aclk,
    power_down_req,
    aresetn,
    s_wdata,
    s_awlen,
    s_wvalid,
    s_bready,
    s_wlast,
    s_rready,
    fast_startup,
    s_araddr,
    s_arburst,
    s_awid,
    s_arid,
    s_awaddr,
    s_awsize);
  output s_awready;
  output rvalid_reg_0;
  output inta_o;
  output [5:0]s_bid;
  output [31:0]s_rdata;
  output s_rlast;
  output s_bvalid;
  output s_wready;
  output s_arready;
  output SPI_CLK;
  output SPI_CS;
  output power_down_ack;
  inout SPI_MOSI;
  inout SPI_MISO;
  input s_arvalid;
  input s_awvalid;
  input [2:0]s_arsize;
  input [3:0]s_arlen;
  input [15:0]spi_addr;
  input aclk;
  input power_down_req;
  input aresetn;
  input [31:0]s_wdata;
  input [3:0]s_awlen;
  input s_wvalid;
  input s_bready;
  input s_wlast;
  input s_rready;
  input fast_startup;
  input [31:0]s_araddr;
  input [1:0]s_arburst;
  input [5:0]s_awid;
  input [5:0]s_arid;
  input [31:0]s_awaddr;
  input [2:0]s_awsize;

  wire SPI_CLK;
  wire SPI_CS;
  wire SPI_MISO;
  wire SPI_MOSI;
  wire SPI_MOSI_iobuf_i_5_n_0;
  wire aclk;
  wire adbit_cnt0;
  wire \adbit_cnt[4]_i_1_n_0 ;
  wire \adbit_cnt[5]_i_1_n_0 ;
  wire [5:0]adbit_cnt_reg;
  wire areset;
  wire aresetn;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire buf_addr;
  wire \buf_addr[0]_i_1_n_0 ;
  wire \buf_addr[10]_i_1_n_0 ;
  wire \buf_addr[11]_i_1_n_0 ;
  wire \buf_addr[12]_i_1_n_0 ;
  wire \buf_addr[13]_i_1_n_0 ;
  wire \buf_addr[14]_i_1_n_0 ;
  wire \buf_addr[15]_i_1_n_0 ;
  wire \buf_addr[16]_i_1_n_0 ;
  wire \buf_addr[17]_i_1_n_0 ;
  wire \buf_addr[18]_i_1_n_0 ;
  wire \buf_addr[19]_i_1_n_0 ;
  wire \buf_addr[1]_i_1_n_0 ;
  wire \buf_addr[20]_i_1_n_0 ;
  wire \buf_addr[21]_i_1_n_0 ;
  wire \buf_addr[22]_i_1_n_0 ;
  wire \buf_addr[23]_i_1_n_0 ;
  wire \buf_addr[24]_i_1_n_0 ;
  wire \buf_addr[25]_i_1_n_0 ;
  wire \buf_addr[26]_i_1_n_0 ;
  wire \buf_addr[27]_i_1_n_0 ;
  wire \buf_addr[28]_i_1_n_0 ;
  wire \buf_addr[29]_i_1_n_0 ;
  wire \buf_addr[2]_i_1_n_0 ;
  wire \buf_addr[30]_i_1_n_0 ;
  wire \buf_addr[31]_i_1_n_0 ;
  wire \buf_addr[3]_i_1_n_0 ;
  wire \buf_addr[4]_i_1_n_0 ;
  wire \buf_addr[5]_i_1_n_0 ;
  wire \buf_addr[6]_i_1_n_0 ;
  wire \buf_addr[7]_i_1_n_0 ;
  wire \buf_addr[8]_i_1_n_0 ;
  wire \buf_addr[9]_i_1_n_0 ;
  wire \buf_addr_reg_n_0_[0] ;
  wire \buf_addr_reg_n_0_[1] ;
  wire \buf_addr_reg_n_0_[2] ;
  wire \buf_addr_reg_n_0_[3] ;
  wire buf_busy;
  wire buf_busy_d;
  wire buf_busy_i_1_n_0;
  wire buf_busy_i_2_n_0;
  wire \buf_id[0]_i_1_n_0 ;
  wire \buf_id[1]_i_1_n_0 ;
  wire \buf_id[2]_i_1_n_0 ;
  wire \buf_id[3]_i_1_n_0 ;
  wire \buf_id[4]_i_1_n_0 ;
  wire \buf_id[5]_i_2_n_0 ;
  wire buf_len;
  wire \buf_len[2]_i_2_n_0 ;
  wire \buf_len[3]_i_3_n_0 ;
  wire [3:0]buf_len_reg;
  wire [2:0]buf_size;
  wire \buf_size[0]_i_1_n_0 ;
  wire \buf_size[1]_i_1_n_0 ;
  wire \buf_size[2]_i_1_n_0 ;
  wire buf_wrap0;
  wire buf_wrap_i_2_n_0;
  wire buf_wrap_reg_n_0;
  wire buf_write0;
  wire buf_write_i_1_n_0;
  wire buf_write_reg_n_0;
  wire burst_cont0;
  wire burst_cont0_carry__0_i_1_n_0;
  wire burst_cont0_carry__0_i_2_n_0;
  wire burst_cont0_carry__0_i_3_n_0;
  wire burst_cont0_carry__0_i_4_n_0;
  wire burst_cont0_carry__0_i_5_n_0;
  wire burst_cont0_carry__0_i_6_n_0;
  wire burst_cont0_carry__0_i_7_n_0;
  wire burst_cont0_carry__0_i_8_n_0;
  wire burst_cont0_carry__0_n_1;
  wire burst_cont0_carry__0_n_2;
  wire burst_cont0_carry__0_n_3;
  wire burst_cont0_carry_i_1_n_0;
  wire burst_cont0_carry_i_2_n_0;
  wire burst_cont0_carry_i_3_n_0;
  wire burst_cont0_carry_i_4_n_0;
  wire burst_cont0_carry_n_0;
  wire burst_cont0_carry_n_1;
  wire burst_cont0_carry_n_2;
  wire burst_cont0_carry_n_3;
  wire bvalid_i_1_n_0;
  wire \clkcnt[0]_i_3_n_0 ;
  wire \clkcnt[0]_i_8_n_0 ;
  wire \clkcnt[8]_i_2__0_n_0 ;
  wire [11:0]clkcnt_reg;
  wire cs;
  wire cs_i_5_n_0;
  wire cs_i_6_n_0;
  wire \cs_timer[0]_i_2_n_0 ;
  wire \cs_timer[0]_i_4_n_0 ;
  wire \cs_timer[0]_i_5_n_0 ;
  wire \cs_timer[0]_i_6_n_0 ;
  wire [10:0]cs_timer_reg;
  wire \cs_timer_reg[0]_i_3_n_0 ;
  wire \cs_timer_reg[0]_i_3_n_1 ;
  wire \cs_timer_reg[0]_i_3_n_2 ;
  wire \cs_timer_reg[0]_i_3_n_3 ;
  wire \cs_timer_reg[0]_i_3_n_4 ;
  wire \cs_timer_reg[0]_i_3_n_5 ;
  wire \cs_timer_reg[0]_i_3_n_6 ;
  wire \cs_timer_reg[0]_i_3_n_7 ;
  wire \cs_timer_reg[12]_i_1_n_1 ;
  wire \cs_timer_reg[12]_i_1_n_2 ;
  wire \cs_timer_reg[12]_i_1_n_3 ;
  wire \cs_timer_reg[12]_i_1_n_4 ;
  wire \cs_timer_reg[12]_i_1_n_5 ;
  wire \cs_timer_reg[12]_i_1_n_6 ;
  wire \cs_timer_reg[12]_i_1_n_7 ;
  wire \cs_timer_reg[4]_i_1_n_0 ;
  wire \cs_timer_reg[4]_i_1_n_1 ;
  wire \cs_timer_reg[4]_i_1_n_2 ;
  wire \cs_timer_reg[4]_i_1_n_3 ;
  wire \cs_timer_reg[4]_i_1_n_4 ;
  wire \cs_timer_reg[4]_i_1_n_5 ;
  wire \cs_timer_reg[4]_i_1_n_6 ;
  wire \cs_timer_reg[4]_i_1_n_7 ;
  wire \cs_timer_reg[8]_i_1_n_0 ;
  wire \cs_timer_reg[8]_i_1_n_1 ;
  wire \cs_timer_reg[8]_i_1_n_2 ;
  wire \cs_timer_reg[8]_i_1_n_3 ;
  wire \cs_timer_reg[8]_i_1_n_4 ;
  wire \cs_timer_reg[8]_i_1_n_5 ;
  wire \cs_timer_reg[8]_i_1_n_6 ;
  wire \cs_timer_reg[8]_i_1_n_7 ;
  wire [15:11]cs_timer_reg__0;
  wire cswcnt0;
  wire [3:0]cswcnt_reg;
  wire dual_in_r;
  wire fast_startup;
  wire inta_o;
  wire io_hit049_in;
  wire io_hit0_carry__0_i_1_n_0;
  wire io_hit0_carry__0_i_2_n_0;
  wire io_hit0_carry__0_i_3_n_0;
  wire io_hit0_carry__0_i_4_n_0;
  wire io_hit0_carry__0_n_0;
  wire io_hit0_carry__0_n_1;
  wire io_hit0_carry__0_n_2;
  wire io_hit0_carry__0_n_3;
  wire io_hit0_carry__1_n_3;
  wire io_hit0_carry_i_1_n_0;
  wire io_hit0_carry_i_2_n_0;
  wire io_hit0_carry_i_3_n_0;
  wire io_hit0_carry_i_4_n_0;
  wire io_hit0_carry_n_0;
  wire io_hit0_carry_n_1;
  wire io_hit0_carry_n_2;
  wire io_hit0_carry_n_3;
  wire [9:0]ns_idle;
  wire nxt_addr0;
  wire \nxt_addr[0]_i_4_n_0 ;
  wire \nxt_addr[0]_i_5_n_0 ;
  wire \nxt_addr[0]_i_6_n_0 ;
  wire \nxt_addr[0]_i_7_n_0 ;
  wire \nxt_addr[0]_i_8_n_0 ;
  wire \nxt_addr[12]_i_2_n_0 ;
  wire \nxt_addr[12]_i_3_n_0 ;
  wire \nxt_addr[12]_i_4_n_0 ;
  wire \nxt_addr[12]_i_5_n_0 ;
  wire \nxt_addr[16]_i_2_n_0 ;
  wire \nxt_addr[16]_i_3_n_0 ;
  wire \nxt_addr[16]_i_4_n_0 ;
  wire \nxt_addr[16]_i_5_n_0 ;
  wire \nxt_addr[20]_i_2_n_0 ;
  wire \nxt_addr[20]_i_3_n_0 ;
  wire \nxt_addr[20]_i_4_n_0 ;
  wire \nxt_addr[20]_i_5_n_0 ;
  wire \nxt_addr[20]_i_6_n_0 ;
  wire \nxt_addr[20]_i_7_n_0 ;
  wire \nxt_addr[4]_i_2_n_0 ;
  wire \nxt_addr[4]_i_3_n_0 ;
  wire \nxt_addr[4]_i_4_n_0 ;
  wire \nxt_addr[4]_i_5_n_0 ;
  wire \nxt_addr[4]_i_6_n_0 ;
  wire \nxt_addr[8]_i_2_n_0 ;
  wire \nxt_addr[8]_i_3_n_0 ;
  wire \nxt_addr[8]_i_4_n_0 ;
  wire \nxt_addr[8]_i_5_n_0 ;
  wire [23:0]nxt_addr_reg;
  wire \nxt_addr_reg[0]_i_3_n_0 ;
  wire \nxt_addr_reg[0]_i_3_n_1 ;
  wire \nxt_addr_reg[0]_i_3_n_2 ;
  wire \nxt_addr_reg[0]_i_3_n_3 ;
  wire \nxt_addr_reg[0]_i_3_n_4 ;
  wire \nxt_addr_reg[0]_i_3_n_5 ;
  wire \nxt_addr_reg[0]_i_3_n_6 ;
  wire \nxt_addr_reg[0]_i_3_n_7 ;
  wire \nxt_addr_reg[12]_i_1_n_0 ;
  wire \nxt_addr_reg[12]_i_1_n_1 ;
  wire \nxt_addr_reg[12]_i_1_n_2 ;
  wire \nxt_addr_reg[12]_i_1_n_3 ;
  wire \nxt_addr_reg[12]_i_1_n_4 ;
  wire \nxt_addr_reg[12]_i_1_n_5 ;
  wire \nxt_addr_reg[12]_i_1_n_6 ;
  wire \nxt_addr_reg[12]_i_1_n_7 ;
  wire \nxt_addr_reg[16]_i_1_n_0 ;
  wire \nxt_addr_reg[16]_i_1_n_1 ;
  wire \nxt_addr_reg[16]_i_1_n_2 ;
  wire \nxt_addr_reg[16]_i_1_n_3 ;
  wire \nxt_addr_reg[16]_i_1_n_4 ;
  wire \nxt_addr_reg[16]_i_1_n_5 ;
  wire \nxt_addr_reg[16]_i_1_n_6 ;
  wire \nxt_addr_reg[16]_i_1_n_7 ;
  wire \nxt_addr_reg[20]_i_1_n_1 ;
  wire \nxt_addr_reg[20]_i_1_n_2 ;
  wire \nxt_addr_reg[20]_i_1_n_3 ;
  wire \nxt_addr_reg[20]_i_1_n_4 ;
  wire \nxt_addr_reg[20]_i_1_n_5 ;
  wire \nxt_addr_reg[20]_i_1_n_6 ;
  wire \nxt_addr_reg[20]_i_1_n_7 ;
  wire \nxt_addr_reg[4]_i_1_n_0 ;
  wire \nxt_addr_reg[4]_i_1_n_1 ;
  wire \nxt_addr_reg[4]_i_1_n_2 ;
  wire \nxt_addr_reg[4]_i_1_n_3 ;
  wire \nxt_addr_reg[4]_i_1_n_4 ;
  wire \nxt_addr_reg[4]_i_1_n_5 ;
  wire \nxt_addr_reg[4]_i_1_n_6 ;
  wire \nxt_addr_reg[4]_i_1_n_7 ;
  wire \nxt_addr_reg[8]_i_1_n_0 ;
  wire \nxt_addr_reg[8]_i_1_n_1 ;
  wire \nxt_addr_reg[8]_i_1_n_2 ;
  wire \nxt_addr_reg[8]_i_1_n_3 ;
  wire \nxt_addr_reg[8]_i_1_n_4 ;
  wire \nxt_addr_reg[8]_i_1_n_5 ;
  wire \nxt_addr_reg[8]_i_1_n_6 ;
  wire \nxt_addr_reg[8]_i_1_n_7 ;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [5:0]p_0_in__1;
  wire [27:0]p_1_in;
  wire p_62_in;
  wire pdreq_r;
  wire power_down_ack;
  wire power_down_req;
  wire \rd_state[0]_i_2_n_0 ;
  wire \rd_state[0]_i_3_n_0 ;
  wire \rd_state[0]_i_4_n_0 ;
  wire \rd_state[0]_i_6_n_0 ;
  wire \rd_state[2]_i_4_n_0 ;
  wire \rd_state[2]_i_8_n_0 ;
  wire \rd_state[4]_i_10_n_0 ;
  wire \rd_state[4]_i_5_n_0 ;
  wire \rd_state[4]_i_6_n_0 ;
  wire \rd_state[4]_i_7_n_0 ;
  wire \rd_state[4]_i_9_n_0 ;
  wire \rd_state[5]_i_2_n_0 ;
  wire \rd_state[5]_i_3_n_0 ;
  wire \rd_state[5]_i_4_n_0 ;
  wire \rd_state[5]_i_5_n_0 ;
  wire \rd_state[5]_i_6_n_0 ;
  wire \rd_state[5]_i_7_n_0 ;
  wire \rd_state[6]_i_3_n_0 ;
  wire \rd_state[7]_i_2_n_0 ;
  wire \rd_state[7]_i_3_n_0 ;
  wire \rd_state[7]_i_4_n_0 ;
  wire \rd_state[7]_i_5_n_0 ;
  wire \rd_state[7]_i_6_n_0 ;
  wire \rd_state[7]_i_7_n_0 ;
  wire \rd_state[8]_i_2_n_0 ;
  wire \rd_state[8]_i_3_n_0 ;
  wire \rd_state[9]_i_2_n_0 ;
  wire \rd_state[9]_i_3_n_0 ;
  wire \rd_state_reg_n_0_[0] ;
  wire \rd_state_reg_n_0_[5] ;
  wire [7:0]rdata0_in;
  wire \rdata[0][7]_i_2_n_0 ;
  wire \rdata[3][2]_i_2_n_0 ;
  wire \rdata[3][7]_i_3_n_0 ;
  wire \rdata[3][7]_i_6_n_0 ;
  wire \rdata[3][7]_i_8_n_0 ;
  wire rvalid045_out;
  wire rvalid1;
  wire rvalid_i_2_n_0;
  wire rvalid_i_3_n_0;
  wire rvalid_reg_0;
  wire s_addr;
  wire [31:0]s_araddr;
  wire [1:0]s_arburst;
  wire [5:0]s_arid;
  wire [3:0]s_arlen;
  wire s_arready;
  wire [2:0]s_arsize;
  wire s_arvalid;
  wire [31:0]s_awaddr;
  wire [5:0]s_awid;
  wire [3:0]s_awlen;
  wire s_awready;
  wire [2:0]s_awsize;
  wire s_awvalid;
  wire [5:0]s_bid;
  wire s_bready;
  wire s_bvalid;
  wire s_csturn;
  wire s_data;
  wire s_ioread;
  wire s_pdenter;
  wire s_pdexit;
  wire s_pwrdown;
  wire [31:0]s_rdata;
  wire s_rlast;
  wire s_rready;
  wire s_startup;
  wire [31:0]s_wdata;
  wire s_wlast;
  wire s_wready;
  wire s_wvalid;
  wire [1:0]sample;
  wire \sample[0]_i_1_n_0 ;
  wire \sample[1]_i_1_n_0 ;
  wire \sample[1]_i_2_n_0 ;
  wire sck;
  wire sck_i_1_n_0;
  wire sdi_i;
  wire sdi_o;
  wire sdo_i;
  wire sdo_o;
  wire second_write;
  wire second_write0;
  wire second_write_i_2_n_0;
  wire second_write_i_3_n_0;
  wire [31:0]shift_reg;
  wire \shift_reg[27]_i_2_n_0 ;
  wire \shift_reg[29]_i_2_n_0 ;
  wire \shift_reg[31]_i_4_n_0 ;
  wire \shift_reg[31]_i_6_n_0 ;
  wire simple_spi_n_1;
  wire simple_spi_n_2;
  wire simple_spi_n_20;
  wire simple_spi_n_21;
  wire simple_spi_n_22;
  wire simple_spi_n_23;
  wire simple_spi_n_24;
  wire simple_spi_n_25;
  wire simple_spi_n_26;
  wire simple_spi_n_27;
  wire simple_spi_n_28;
  wire simple_spi_n_3;
  wire simple_spi_n_31;
  wire simple_spi_n_32;
  wire simple_spi_n_33;
  wire simple_spi_n_34;
  wire simple_spi_n_35;
  wire simple_spi_n_36;
  wire simple_spi_n_37;
  wire simple_spi_n_38;
  wire simple_spi_n_39;
  wire simple_spi_n_4;
  wire simple_spi_n_40;
  wire simple_spi_n_41;
  wire simple_spi_n_42;
  wire simple_spi_n_43;
  wire simple_spi_n_44;
  wire simple_spi_n_45;
  wire simple_spi_n_46;
  wire simple_spi_n_47;
  wire simple_spi_n_48;
  wire simple_spi_n_49;
  wire simple_spi_n_5;
  wire simple_spi_n_50;
  wire simple_spi_n_51;
  wire simple_spi_n_52;
  wire simple_spi_n_53;
  wire simple_spi_n_54;
  wire simple_spi_n_55;
  wire simple_spi_n_56;
  wire simple_spi_n_57;
  wire simple_spi_n_58;
  wire simple_spi_n_59;
  wire simple_spi_n_60;
  wire simple_spi_n_61;
  wire simple_spi_n_62;
  wire simple_spi_n_63;
  wire simple_spi_n_64;
  wire simple_spi_n_65;
  wire simple_spi_n_68;
  wire simple_spi_n_71;
  wire simple_spi_n_72;
  wire simple_spi_n_73;
  wire simple_spi_n_74;
  wire simple_spi_n_75;
  wire simple_spi_n_76;
  wire simple_spi_n_77;
  wire simple_spi_n_78;
  wire simple_spi_n_79;
  wire simple_spi_n_80;
  wire simple_spi_n_81;
  wire simple_spi_n_82;
  wire simple_spi_n_83;
  wire simple_spi_n_84;
  wire simple_spi_n_85;
  wire simple_spi_n_86;
  wire [15:0]spi_addr;
  wire spi_run_reg_n_0;
  wire sr_shift_inst_r;
  wire sr_shift_inst_r_i_2_n_0;
  wire sr_shift_two_r;
  wire sr_shift_two_r_i_2_n_0;
  wire sr_shift_two_r_i_4_n_0;
  wire [7:0]tot_bytes;
  wire \tot_bytes[0]_i_1_n_0 ;
  wire \tot_bytes[0]_i_2_n_0 ;
  wire \tot_bytes[1]_i_1_n_0 ;
  wire \tot_bytes[2]_i_1_n_0 ;
  wire \tot_bytes[3]_i_1_n_0 ;
  wire \tot_bytes[3]_i_2_n_0 ;
  wire \tot_bytes[3]_i_3_n_0 ;
  wire \tot_bytes[4]_i_1_n_0 ;
  wire \tot_bytes[4]_i_2_n_0 ;
  wire \tot_bytes[4]_i_3_n_0 ;
  wire \tot_bytes[4]_i_4_n_0 ;
  wire \tot_bytes[5]_i_1_n_0 ;
  wire \tot_bytes[5]_i_2_n_0 ;
  wire \tot_bytes[5]_i_3_n_0 ;
  wire \tot_bytes[6]_i_1_n_0 ;
  wire \tot_bytes[6]_i_2_n_0 ;
  wire \tot_bytes[6]_i_3_n_0 ;
  wire \tot_bytes[6]_i_4_n_0 ;
  wire \tot_bytes[7]_i_2_n_0 ;
  wire \tot_bytes[7]_i_3_n_0 ;
  wire \tot_bytes[7]_i_4_n_0 ;
  wire \tot_bytes[7]_i_5_n_0 ;
  wire \tot_bytes[7]_i_6_n_0 ;
  wire [3:0]NLW_burst_cont0_carry_O_UNCONNECTED;
  wire [3:0]NLW_burst_cont0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_cs_timer_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_io_hit0_carry_O_UNCONNECTED;
  wire [3:0]NLW_io_hit0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_io_hit0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_io_hit0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_nxt_addr_reg[20]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    SPI_MISO_iobuf
       (.I(sdi_o),
        .IO(SPI_MISO),
        .O(sdi_i),
        .T(simple_spi_n_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    SPI_MOSI_iobuf
       (.I(sdo_o),
        .IO(SPI_MOSI),
        .O(sdo_i),
        .T(simple_spi_n_2));
  LUT5 #(
    .INIT(32'hFAF8F8F8)) 
    SPI_MOSI_iobuf_i_5
       (.I0(adbit_cnt_reg[4]),
        .I1(adbit_cnt_reg[3]),
        .I2(adbit_cnt_reg[5]),
        .I3(adbit_cnt_reg[1]),
        .I4(adbit_cnt_reg[2]),
        .O(SPI_MOSI_iobuf_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \adbit_cnt[0]_i_1 
       (.I0(adbit_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adbit_cnt[1]_i_1 
       (.I0(adbit_cnt_reg[0]),
        .I1(adbit_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \adbit_cnt[2]_i_1 
       (.I0(adbit_cnt_reg[2]),
        .I1(adbit_cnt_reg[0]),
        .I2(adbit_cnt_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \adbit_cnt[3]_i_1 
       (.I0(adbit_cnt_reg[3]),
        .I1(adbit_cnt_reg[2]),
        .I2(adbit_cnt_reg[1]),
        .I3(adbit_cnt_reg[0]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \adbit_cnt[4]_i_1 
       (.I0(adbit_cnt_reg[4]),
        .I1(adbit_cnt_reg[3]),
        .I2(adbit_cnt_reg[2]),
        .I3(adbit_cnt_reg[1]),
        .I4(adbit_cnt_reg[0]),
        .O(\adbit_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \adbit_cnt[5]_i_1 
       (.I0(\rd_state_reg_n_0_[0] ),
        .I1(s_csturn),
        .O(\adbit_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \adbit_cnt[5]_i_2 
       (.I0(s_addr),
        .I1(sck),
        .I2(\sample[1]_i_2_n_0 ),
        .I3(spi_run_reg_n_0),
        .O(adbit_cnt0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \adbit_cnt[5]_i_3 
       (.I0(adbit_cnt_reg[3]),
        .I1(adbit_cnt_reg[2]),
        .I2(adbit_cnt_reg[1]),
        .I3(adbit_cnt_reg[0]),
        .I4(adbit_cnt_reg[4]),
        .I5(adbit_cnt_reg[5]),
        .O(p_0_in__1[5]));
  FDRE \adbit_cnt_reg[0] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(p_0_in__1[0]),
        .Q(adbit_cnt_reg[0]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  FDRE \adbit_cnt_reg[1] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(p_0_in__1[1]),
        .Q(adbit_cnt_reg[1]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  FDRE \adbit_cnt_reg[2] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(p_0_in__1[2]),
        .Q(adbit_cnt_reg[2]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  FDRE \adbit_cnt_reg[3] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(p_0_in__1[3]),
        .Q(adbit_cnt_reg[3]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  FDRE \adbit_cnt_reg[4] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(\adbit_cnt[4]_i_1_n_0 ),
        .Q(adbit_cnt_reg[4]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  FDRE \adbit_cnt_reg[5] 
       (.C(aclk),
        .CE(adbit_cnt0),
        .D(p_0_in__1[5]),
        .Q(adbit_cnt_reg[5]),
        .R(\adbit_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt[0]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(aresetn),
        .I3(\rd_state_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00006A00)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[1]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(bit_cnt[0]),
        .I3(aresetn),
        .I4(\rd_state_reg_n_0_[0] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[2]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(aresetn),
        .I5(\rd_state_reg_n_0_[0] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \bit_cnt[2]_i_2 
       (.I0(\rd_state[0]_i_6_n_0 ),
        .I1(s_pdenter),
        .I2(s_pdexit),
        .I3(s_data),
        .O(\bit_cnt[2]_i_2_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]),
        .R(1'b0));
  FDRE \bit_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[0]_i_1 
       (.I0(s_awaddr[0]),
        .I1(s_awvalid),
        .I2(s_araddr[0]),
        .O(\buf_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[10]_i_1 
       (.I0(s_awaddr[10]),
        .I1(s_awvalid),
        .I2(s_araddr[10]),
        .O(\buf_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[11]_i_1 
       (.I0(s_awaddr[11]),
        .I1(s_awvalid),
        .I2(s_araddr[11]),
        .O(\buf_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[12]_i_1 
       (.I0(s_awaddr[12]),
        .I1(s_awvalid),
        .I2(s_araddr[12]),
        .O(\buf_addr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[13]_i_1 
       (.I0(s_awaddr[13]),
        .I1(s_awvalid),
        .I2(s_araddr[13]),
        .O(\buf_addr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[14]_i_1 
       (.I0(s_awaddr[14]),
        .I1(s_awvalid),
        .I2(s_araddr[14]),
        .O(\buf_addr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[15]_i_1 
       (.I0(s_awaddr[15]),
        .I1(s_awvalid),
        .I2(s_araddr[15]),
        .O(\buf_addr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[16]_i_1 
       (.I0(s_awaddr[16]),
        .I1(s_awvalid),
        .I2(s_araddr[16]),
        .O(\buf_addr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[17]_i_1 
       (.I0(s_awaddr[17]),
        .I1(s_awvalid),
        .I2(s_araddr[17]),
        .O(\buf_addr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[18]_i_1 
       (.I0(s_awaddr[18]),
        .I1(s_awvalid),
        .I2(s_araddr[18]),
        .O(\buf_addr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[19]_i_1 
       (.I0(s_awaddr[19]),
        .I1(s_awvalid),
        .I2(s_araddr[19]),
        .O(\buf_addr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[1]_i_1 
       (.I0(s_awaddr[1]),
        .I1(s_awvalid),
        .I2(s_araddr[1]),
        .O(\buf_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[20]_i_1 
       (.I0(s_awaddr[20]),
        .I1(s_awvalid),
        .I2(s_araddr[20]),
        .O(\buf_addr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[21]_i_1 
       (.I0(s_awaddr[21]),
        .I1(s_awvalid),
        .I2(s_araddr[21]),
        .O(\buf_addr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[22]_i_1 
       (.I0(s_awaddr[22]),
        .I1(s_awvalid),
        .I2(s_araddr[22]),
        .O(\buf_addr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[23]_i_1 
       (.I0(s_awaddr[23]),
        .I1(s_awvalid),
        .I2(s_araddr[23]),
        .O(\buf_addr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[24]_i_1 
       (.I0(s_awaddr[24]),
        .I1(s_awvalid),
        .I2(s_araddr[24]),
        .O(\buf_addr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[25]_i_1 
       (.I0(s_awaddr[25]),
        .I1(s_awvalid),
        .I2(s_araddr[25]),
        .O(\buf_addr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[26]_i_1 
       (.I0(s_awaddr[26]),
        .I1(s_awvalid),
        .I2(s_araddr[26]),
        .O(\buf_addr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[27]_i_1 
       (.I0(s_awaddr[27]),
        .I1(s_awvalid),
        .I2(s_araddr[27]),
        .O(\buf_addr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[28]_i_1 
       (.I0(s_awaddr[28]),
        .I1(s_awvalid),
        .I2(s_araddr[28]),
        .O(\buf_addr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[29]_i_1 
       (.I0(s_awaddr[29]),
        .I1(s_awvalid),
        .I2(s_araddr[29]),
        .O(\buf_addr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[2]_i_1 
       (.I0(s_awaddr[2]),
        .I1(s_awvalid),
        .I2(s_araddr[2]),
        .O(\buf_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[30]_i_1 
       (.I0(s_awaddr[30]),
        .I1(s_awvalid),
        .I2(s_araddr[30]),
        .O(\buf_addr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[31]_i_1 
       (.I0(s_awaddr[31]),
        .I1(s_awvalid),
        .I2(s_araddr[31]),
        .O(\buf_addr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[3]_i_1 
       (.I0(s_awaddr[3]),
        .I1(s_awvalid),
        .I2(s_araddr[3]),
        .O(\buf_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[4]_i_1 
       (.I0(s_awaddr[4]),
        .I1(s_awvalid),
        .I2(s_araddr[4]),
        .O(\buf_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[5]_i_1 
       (.I0(s_awaddr[5]),
        .I1(s_awvalid),
        .I2(s_araddr[5]),
        .O(\buf_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[6]_i_1 
       (.I0(s_awaddr[6]),
        .I1(s_awvalid),
        .I2(s_araddr[6]),
        .O(\buf_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[7]_i_1 
       (.I0(s_awaddr[7]),
        .I1(s_awvalid),
        .I2(s_araddr[7]),
        .O(\buf_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[8]_i_1 
       (.I0(s_awaddr[8]),
        .I1(s_awvalid),
        .I2(s_araddr[8]),
        .O(\buf_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_addr[9]_i_1 
       (.I0(s_awaddr[9]),
        .I1(s_awvalid),
        .I2(s_araddr[9]),
        .O(\buf_addr[9]_i_1_n_0 ));
  FDRE \buf_addr_reg[0] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[0]_i_1_n_0 ),
        .Q(\buf_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buf_addr_reg[10] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[10]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \buf_addr_reg[11] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[11]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \buf_addr_reg[12] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[12]_i_1_n_0 ),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \buf_addr_reg[13] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[13]_i_1_n_0 ),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \buf_addr_reg[14] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[14]_i_1_n_0 ),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \buf_addr_reg[15] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[15]_i_1_n_0 ),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \buf_addr_reg[16] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[16]_i_1_n_0 ),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \buf_addr_reg[17] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[17]_i_1_n_0 ),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \buf_addr_reg[18] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[18]_i_1_n_0 ),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \buf_addr_reg[19] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[19]_i_1_n_0 ),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE \buf_addr_reg[1] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[1]_i_1_n_0 ),
        .Q(\buf_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \buf_addr_reg[20] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[20]_i_1_n_0 ),
        .Q(p_1_in[16]),
        .R(1'b0));
  FDRE \buf_addr_reg[21] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[21]_i_1_n_0 ),
        .Q(p_1_in[17]),
        .R(1'b0));
  FDRE \buf_addr_reg[22] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[22]_i_1_n_0 ),
        .Q(p_1_in[18]),
        .R(1'b0));
  FDRE \buf_addr_reg[23] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[23]_i_1_n_0 ),
        .Q(p_1_in[19]),
        .R(1'b0));
  FDRE \buf_addr_reg[24] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[24]_i_1_n_0 ),
        .Q(p_1_in[20]),
        .R(1'b0));
  FDRE \buf_addr_reg[25] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[25]_i_1_n_0 ),
        .Q(p_1_in[21]),
        .R(1'b0));
  FDRE \buf_addr_reg[26] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[26]_i_1_n_0 ),
        .Q(p_1_in[22]),
        .R(1'b0));
  FDRE \buf_addr_reg[27] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[27]_i_1_n_0 ),
        .Q(p_1_in[23]),
        .R(1'b0));
  FDRE \buf_addr_reg[28] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[28]_i_1_n_0 ),
        .Q(p_1_in[24]),
        .R(1'b0));
  FDRE \buf_addr_reg[29] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[29]_i_1_n_0 ),
        .Q(p_1_in[25]),
        .R(1'b0));
  FDRE \buf_addr_reg[2] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[2]_i_1_n_0 ),
        .Q(\buf_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \buf_addr_reg[30] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[30]_i_1_n_0 ),
        .Q(p_1_in[26]),
        .R(1'b0));
  FDRE \buf_addr_reg[31] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[31]_i_1_n_0 ),
        .Q(p_1_in[27]),
        .R(1'b0));
  FDRE \buf_addr_reg[3] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[3]_i_1_n_0 ),
        .Q(\buf_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \buf_addr_reg[4] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[4]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \buf_addr_reg[5] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[5]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \buf_addr_reg[6] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[6]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \buf_addr_reg[7] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[7]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \buf_addr_reg[8] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[8]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \buf_addr_reg[9] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_addr[9]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE buf_busy_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(buf_busy),
        .Q(buf_busy_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0DDDFFFF0000FFFF)) 
    buf_busy_i_1
       (.I0(buf_busy_i_2_n_0),
        .I1(simple_spi_n_22),
        .I2(s_bvalid),
        .I3(s_bready),
        .I4(\tot_bytes[7]_i_4_n_0 ),
        .I5(buf_busy),
        .O(buf_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buf_busy_i_2
       (.I0(rvalid_reg_0),
        .I1(s_rready),
        .O(buf_busy_i_2_n_0));
  FDRE buf_busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(buf_busy_i_1_n_0),
        .Q(buf_busy),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[0]_i_1 
       (.I0(s_awid[0]),
        .I1(s_awvalid),
        .I2(s_arid[0]),
        .O(\buf_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[1]_i_1 
       (.I0(s_awid[1]),
        .I1(s_awvalid),
        .I2(s_arid[1]),
        .O(\buf_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[2]_i_1 
       (.I0(s_awid[2]),
        .I1(s_awvalid),
        .I2(s_arid[2]),
        .O(\buf_id[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[3]_i_1 
       (.I0(s_awid[3]),
        .I1(s_awvalid),
        .I2(s_arid[3]),
        .O(\buf_id[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[4]_i_1 
       (.I0(s_awid[4]),
        .I1(s_awvalid),
        .I2(s_arid[4]),
        .O(\buf_id[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \buf_id[5]_i_1 
       (.I0(aresetn),
        .I1(buf_busy),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(pdreq_r),
        .I4(s_awvalid),
        .I5(s_arvalid),
        .O(buf_addr));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_id[5]_i_2 
       (.I0(s_awid[5]),
        .I1(s_awvalid),
        .I2(s_arid[5]),
        .O(\buf_id[5]_i_2_n_0 ));
  FDRE \buf_id_reg[0] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[0]_i_1_n_0 ),
        .Q(s_bid[0]),
        .R(1'b0));
  FDRE \buf_id_reg[1] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[1]_i_1_n_0 ),
        .Q(s_bid[1]),
        .R(1'b0));
  FDRE \buf_id_reg[2] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[2]_i_1_n_0 ),
        .Q(s_bid[2]),
        .R(1'b0));
  FDRE \buf_id_reg[3] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[3]_i_1_n_0 ),
        .Q(s_bid[3]),
        .R(1'b0));
  FDRE \buf_id_reg[4] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[4]_i_1_n_0 ),
        .Q(s_bid[4]),
        .R(1'b0));
  FDRE \buf_id_reg[5] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_id[5]_i_2_n_0 ),
        .Q(s_bid[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h74777444)) 
    \buf_len[0]_i_1 
       (.I0(buf_len_reg[0]),
        .I1(\tot_bytes[7]_i_4_n_0 ),
        .I2(s_awlen[0]),
        .I3(s_awvalid),
        .I4(s_arlen[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \buf_len[1]_i_1 
       (.I0(buf_len_reg[0]),
        .I1(buf_len_reg[1]),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(s_awlen[1]),
        .I4(s_awvalid),
        .I5(s_arlen[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \buf_len[2]_i_1 
       (.I0(\buf_len[2]_i_2_n_0 ),
        .I1(buf_len_reg[2]),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(s_awlen[2]),
        .I4(s_awvalid),
        .I5(s_arlen[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \buf_len[2]_i_2 
       (.I0(buf_len_reg[0]),
        .I1(buf_len_reg[1]),
        .O(\buf_len[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \buf_len[3]_i_1 
       (.I0(aresetn),
        .I1(rvalid_reg_0),
        .I2(s_rready),
        .I3(\tot_bytes[7]_i_4_n_0 ),
        .O(buf_len));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \buf_len[3]_i_2 
       (.I0(\buf_len[3]_i_3_n_0 ),
        .I1(buf_len_reg[3]),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(s_awlen[3]),
        .I4(s_awvalid),
        .I5(s_arlen[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \buf_len[3]_i_3 
       (.I0(buf_len_reg[2]),
        .I1(buf_len_reg[1]),
        .I2(buf_len_reg[0]),
        .O(\buf_len[3]_i_3_n_0 ));
  FDRE \buf_len_reg[0] 
       (.C(aclk),
        .CE(buf_len),
        .D(p_0_in[0]),
        .Q(buf_len_reg[0]),
        .R(1'b0));
  FDRE \buf_len_reg[1] 
       (.C(aclk),
        .CE(buf_len),
        .D(p_0_in[1]),
        .Q(buf_len_reg[1]),
        .R(1'b0));
  FDRE \buf_len_reg[2] 
       (.C(aclk),
        .CE(buf_len),
        .D(p_0_in[2]),
        .Q(buf_len_reg[2]),
        .R(1'b0));
  FDRE \buf_len_reg[3] 
       (.C(aclk),
        .CE(buf_len),
        .D(p_0_in[3]),
        .Q(buf_len_reg[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_size[0]_i_1 
       (.I0(s_awsize[0]),
        .I1(s_awvalid),
        .I2(s_arsize[0]),
        .O(\buf_size[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_size[1]_i_1 
       (.I0(s_awsize[1]),
        .I1(s_awvalid),
        .I2(s_arsize[1]),
        .O(\buf_size[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_size[2]_i_1 
       (.I0(s_awsize[2]),
        .I1(s_awvalid),
        .I2(s_arsize[2]),
        .O(\buf_size[2]_i_1_n_0 ));
  FDRE \buf_size_reg[0] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_size[0]_i_1_n_0 ),
        .Q(buf_size[0]),
        .R(1'b0));
  FDRE \buf_size_reg[1] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_size[1]_i_1_n_0 ),
        .Q(buf_size[1]),
        .R(1'b0));
  FDRE \buf_size_reg[2] 
       (.C(aclk),
        .CE(buf_addr),
        .D(\buf_size[2]_i_1_n_0 ),
        .Q(buf_size[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    buf_wrap_i_1
       (.I0(s_arlen[0]),
        .I1(s_arlen[3]),
        .I2(s_arlen[1]),
        .I3(s_arlen[2]),
        .I4(buf_wrap_i_2_n_0),
        .O(buf_wrap0));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFFFFFF)) 
    buf_wrap_i_2
       (.I0(s_araddr[2]),
        .I1(s_araddr[3]),
        .I2(s_araddr[4]),
        .I3(s_arvalid),
        .I4(s_arburst[0]),
        .I5(s_arburst[1]),
        .O(buf_wrap_i_2_n_0));
  FDRE buf_wrap_reg
       (.C(aclk),
        .CE(buf_addr),
        .D(buf_wrap0),
        .Q(buf_wrap_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD1D5C0C0)) 
    buf_write_i_1
       (.I0(buf_write0),
        .I1(s_awready),
        .I2(s_awvalid),
        .I3(s_arvalid),
        .I4(buf_write_reg_n_0),
        .O(buf_write_i_1_n_0));
  FDRE buf_write_reg
       (.C(aclk),
        .CE(1'b1),
        .D(buf_write_i_1_n_0),
        .Q(buf_write_reg_n_0),
        .R(areset));
  CARRY4 burst_cont0_carry
       (.CI(1'b0),
        .CO({burst_cont0_carry_n_0,burst_cont0_carry_n_1,burst_cont0_carry_n_2,burst_cont0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_burst_cont0_carry_O_UNCONNECTED[3:0]),
        .S({burst_cont0_carry_i_1_n_0,burst_cont0_carry_i_2_n_0,burst_cont0_carry_i_3_n_0,burst_cont0_carry_i_4_n_0}));
  CARRY4 burst_cont0_carry__0
       (.CI(burst_cont0_carry_n_0),
        .CO({burst_cont0,burst_cont0_carry__0_n_1,burst_cont0_carry__0_n_2,burst_cont0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_burst_cont0_carry__0_O_UNCONNECTED[3:0]),
        .S({burst_cont0_carry__0_i_1_n_0,burst_cont0_carry__0_i_2_n_0,burst_cont0_carry__0_i_3_n_0,burst_cont0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0000090005050009)) 
    burst_cont0_carry__0_i_1
       (.I0(nxt_addr_reg[22]),
        .I1(p_1_in[18]),
        .I2(burst_cont0_carry__0_i_5_n_0),
        .I3(p_1_in[19]),
        .I4(burst_cont0_carry__0_i_6_n_0),
        .I5(nxt_addr_reg[23]),
        .O(burst_cont0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry__0_i_2
       (.I0(p_1_in[15]),
        .I1(nxt_addr_reg[19]),
        .I2(p_1_in[14]),
        .I3(nxt_addr_reg[18]),
        .I4(nxt_addr_reg[20]),
        .I5(p_1_in[16]),
        .O(burst_cont0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry__0_i_3
       (.I0(nxt_addr_reg[17]),
        .I1(p_1_in[13]),
        .I2(p_1_in[11]),
        .I3(nxt_addr_reg[15]),
        .I4(p_1_in[12]),
        .I5(nxt_addr_reg[16]),
        .O(burst_cont0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry__0_i_4
       (.I0(p_1_in[8]),
        .I1(nxt_addr_reg[12]),
        .I2(p_1_in[9]),
        .I3(nxt_addr_reg[13]),
        .I4(nxt_addr_reg[14]),
        .I5(p_1_in[10]),
        .O(burst_cont0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    burst_cont0_carry__0_i_5
       (.I0(p_1_in[17]),
        .I1(nxt_addr_reg[21]),
        .O(burst_cont0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    burst_cont0_carry__0_i_6
       (.I0(p_1_in[18]),
        .I1(p_1_in[21]),
        .I2(p_1_in[24]),
        .I3(p_1_in[17]),
        .I4(burst_cont0_carry__0_i_7_n_0),
        .I5(burst_cont0_carry__0_i_8_n_0),
        .O(burst_cont0_carry__0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    burst_cont0_carry__0_i_7
       (.I0(p_1_in[19]),
        .I1(p_1_in[27]),
        .I2(p_1_in[26]),
        .I3(p_1_in[16]),
        .O(burst_cont0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    burst_cont0_carry__0_i_8
       (.I0(p_1_in[23]),
        .I1(p_1_in[22]),
        .I2(p_1_in[20]),
        .I3(p_1_in[25]),
        .O(burst_cont0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry_i_1
       (.I0(p_1_in[5]),
        .I1(nxt_addr_reg[9]),
        .I2(p_1_in[6]),
        .I3(nxt_addr_reg[10]),
        .I4(nxt_addr_reg[11]),
        .I5(p_1_in[7]),
        .O(burst_cont0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry_i_2
       (.I0(p_1_in[3]),
        .I1(nxt_addr_reg[7]),
        .I2(p_1_in[2]),
        .I3(nxt_addr_reg[6]),
        .I4(nxt_addr_reg[8]),
        .I5(p_1_in[4]),
        .O(burst_cont0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry_i_3
       (.I0(p_1_in[0]),
        .I1(nxt_addr_reg[4]),
        .I2(nxt_addr_reg[3]),
        .I3(\buf_addr_reg_n_0_[3] ),
        .I4(nxt_addr_reg[5]),
        .I5(p_1_in[1]),
        .O(burst_cont0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    burst_cont0_carry_i_4
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(nxt_addr_reg[1]),
        .I2(nxt_addr_reg[2]),
        .I3(\buf_addr_reg_n_0_[2] ),
        .I4(nxt_addr_reg[0]),
        .I5(\buf_addr_reg_n_0_[0] ),
        .O(burst_cont0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0C88)) 
    bvalid_i_1
       (.I0(buf_write0),
        .I1(aresetn),
        .I2(s_bready),
        .I3(s_bvalid),
        .O(bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    bvalid_i_2
       (.I0(s_wlast),
        .I1(s_wvalid),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(buf_write_reg_n_0),
        .O(buf_write0));
  FDRE bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(s_bvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clkcnt[0]_i_1__0 
       (.I0(rvalid_reg_0),
        .O(rvalid1));
  LUT3 #(
    .INIT(8'hA8)) 
    \clkcnt[0]_i_3 
       (.I0(\clkcnt[0]_i_8_n_0 ),
        .I1(s_csturn),
        .I2(spi_run_reg_n_0),
        .O(\clkcnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clkcnt[0]_i_8 
       (.I0(clkcnt_reg[4]),
        .I1(clkcnt_reg[10]),
        .I2(clkcnt_reg[0]),
        .I3(clkcnt_reg[3]),
        .I4(\rd_state[7]_i_6_n_0 ),
        .I5(\rd_state[7]_i_5_n_0 ),
        .O(\clkcnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clkcnt[8]_i_2__0 
       (.I0(\clkcnt[0]_i_3_n_0 ),
        .I1(clkcnt_reg[11]),
        .O(\clkcnt[8]_i_2__0_n_0 ));
  FDRE \clkcnt_reg[0] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_74),
        .Q(clkcnt_reg[0]),
        .R(areset));
  FDRE \clkcnt_reg[10] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_80),
        .Q(clkcnt_reg[10]),
        .R(areset));
  FDRE \clkcnt_reg[11] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_79),
        .Q(clkcnt_reg[11]),
        .R(areset));
  FDRE \clkcnt_reg[1] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_73),
        .Q(clkcnt_reg[1]),
        .R(areset));
  FDRE \clkcnt_reg[2] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_72),
        .Q(clkcnt_reg[2]),
        .R(areset));
  FDRE \clkcnt_reg[3] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_71),
        .Q(clkcnt_reg[3]),
        .R(areset));
  FDRE \clkcnt_reg[4] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_78),
        .Q(clkcnt_reg[4]),
        .R(areset));
  FDRE \clkcnt_reg[5] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_77),
        .Q(clkcnt_reg[5]),
        .R(areset));
  FDRE \clkcnt_reg[6] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_76),
        .Q(clkcnt_reg[6]),
        .R(areset));
  FDRE \clkcnt_reg[7] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_75),
        .Q(clkcnt_reg[7]),
        .R(areset));
  FDRE \clkcnt_reg[8] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_82),
        .Q(clkcnt_reg[8]),
        .R(areset));
  FDRE \clkcnt_reg[9] 
       (.C(aclk),
        .CE(rvalid1),
        .D(simple_spi_n_81),
        .Q(clkcnt_reg[9]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    cs_i_5
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(\buf_addr_reg_n_0_[0] ),
        .I2(\buf_addr_reg_n_0_[3] ),
        .I3(\buf_addr_reg_n_0_[2] ),
        .O(cs_i_5_n_0));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    cs_i_6
       (.I0(simple_spi_n_21),
        .I1(\buf_addr_reg_n_0_[3] ),
        .I2(\buf_addr_reg_n_0_[2] ),
        .I3(simple_spi_n_20),
        .I4(\cs_timer[0]_i_2_n_0 ),
        .I5(buf_busy),
        .O(cs_i_6_n_0));
  FDRE cs_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_84),
        .Q(cs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \cs_timer[0]_i_2 
       (.I0(cs_timer_reg[9]),
        .I1(cs_timer_reg[10]),
        .I2(cs_timer_reg[6]),
        .I3(cs_timer_reg[8]),
        .I4(\cs_timer[0]_i_4_n_0 ),
        .I5(\cs_timer[0]_i_5_n_0 ),
        .O(\cs_timer[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cs_timer[0]_i_4 
       (.I0(cs_timer_reg[1]),
        .I1(cs_timer_reg[2]),
        .I2(cs_timer_reg[5]),
        .I3(cs_timer_reg[3]),
        .I4(cs_timer_reg[0]),
        .I5(cs_timer_reg[4]),
        .O(\cs_timer[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cs_timer[0]_i_5 
       (.I0(cs_timer_reg__0[12]),
        .I1(cs_timer_reg__0[13]),
        .I2(cs_timer_reg__0[11]),
        .I3(cs_timer_reg[7]),
        .I4(cs_timer_reg__0[15]),
        .I5(cs_timer_reg__0[14]),
        .O(\cs_timer[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cs_timer[0]_i_6 
       (.I0(cs_timer_reg[0]),
        .O(\cs_timer[0]_i_6_n_0 ));
  FDRE \cs_timer_reg[0] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[0]_i_3_n_7 ),
        .Q(cs_timer_reg[0]),
        .R(simple_spi_n_28));
  CARRY4 \cs_timer_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cs_timer_reg[0]_i_3_n_0 ,\cs_timer_reg[0]_i_3_n_1 ,\cs_timer_reg[0]_i_3_n_2 ,\cs_timer_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cs_timer_reg[0]_i_3_n_4 ,\cs_timer_reg[0]_i_3_n_5 ,\cs_timer_reg[0]_i_3_n_6 ,\cs_timer_reg[0]_i_3_n_7 }),
        .S({cs_timer_reg[3:1],\cs_timer[0]_i_6_n_0 }));
  FDRE \cs_timer_reg[10] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[8]_i_1_n_5 ),
        .Q(cs_timer_reg[10]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[11] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[8]_i_1_n_4 ),
        .Q(cs_timer_reg__0[11]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[12] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[12]_i_1_n_7 ),
        .Q(cs_timer_reg__0[12]),
        .R(simple_spi_n_28));
  CARRY4 \cs_timer_reg[12]_i_1 
       (.CI(\cs_timer_reg[8]_i_1_n_0 ),
        .CO({\NLW_cs_timer_reg[12]_i_1_CO_UNCONNECTED [3],\cs_timer_reg[12]_i_1_n_1 ,\cs_timer_reg[12]_i_1_n_2 ,\cs_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cs_timer_reg[12]_i_1_n_4 ,\cs_timer_reg[12]_i_1_n_5 ,\cs_timer_reg[12]_i_1_n_6 ,\cs_timer_reg[12]_i_1_n_7 }),
        .S(cs_timer_reg__0[15:12]));
  FDRE \cs_timer_reg[13] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[12]_i_1_n_6 ),
        .Q(cs_timer_reg__0[13]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[14] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[12]_i_1_n_5 ),
        .Q(cs_timer_reg__0[14]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[15] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[12]_i_1_n_4 ),
        .Q(cs_timer_reg__0[15]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[1] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[0]_i_3_n_6 ),
        .Q(cs_timer_reg[1]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[2] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[0]_i_3_n_5 ),
        .Q(cs_timer_reg[2]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[3] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[0]_i_3_n_4 ),
        .Q(cs_timer_reg[3]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[4] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[4]_i_1_n_7 ),
        .Q(cs_timer_reg[4]),
        .R(simple_spi_n_28));
  CARRY4 \cs_timer_reg[4]_i_1 
       (.CI(\cs_timer_reg[0]_i_3_n_0 ),
        .CO({\cs_timer_reg[4]_i_1_n_0 ,\cs_timer_reg[4]_i_1_n_1 ,\cs_timer_reg[4]_i_1_n_2 ,\cs_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cs_timer_reg[4]_i_1_n_4 ,\cs_timer_reg[4]_i_1_n_5 ,\cs_timer_reg[4]_i_1_n_6 ,\cs_timer_reg[4]_i_1_n_7 }),
        .S(cs_timer_reg[7:4]));
  FDRE \cs_timer_reg[5] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[4]_i_1_n_6 ),
        .Q(cs_timer_reg[5]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[6] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[4]_i_1_n_5 ),
        .Q(cs_timer_reg[6]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[7] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[4]_i_1_n_4 ),
        .Q(cs_timer_reg[7]),
        .R(simple_spi_n_28));
  FDRE \cs_timer_reg[8] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[8]_i_1_n_7 ),
        .Q(cs_timer_reg[8]),
        .R(simple_spi_n_28));
  CARRY4 \cs_timer_reg[8]_i_1 
       (.CI(\cs_timer_reg[4]_i_1_n_0 ),
        .CO({\cs_timer_reg[8]_i_1_n_0 ,\cs_timer_reg[8]_i_1_n_1 ,\cs_timer_reg[8]_i_1_n_2 ,\cs_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cs_timer_reg[8]_i_1_n_4 ,\cs_timer_reg[8]_i_1_n_5 ,\cs_timer_reg[8]_i_1_n_6 ,\cs_timer_reg[8]_i_1_n_7 }),
        .S({cs_timer_reg__0[11],cs_timer_reg[10:8]}));
  FDRE \cs_timer_reg[9] 
       (.C(aclk),
        .CE(\cs_timer[0]_i_2_n_0 ),
        .D(\cs_timer_reg[8]_i_1_n_6 ),
        .Q(cs_timer_reg[9]),
        .R(simple_spi_n_28));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cswcnt[0]_i_1 
       (.I0(cswcnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cswcnt[1]_i_1 
       (.I0(cswcnt_reg[0]),
        .I1(cswcnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cswcnt[2]_i_1 
       (.I0(cswcnt_reg[2]),
        .I1(cswcnt_reg[1]),
        .I2(cswcnt_reg[0]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \cswcnt[3]_i_1 
       (.I0(aresetn),
        .I1(s_csturn),
        .O(cswcnt0));
  LUT1 #(
    .INIT(2'h1)) 
    \cswcnt[3]_i_2 
       (.I0(\sample[1]_i_2_n_0 ),
        .O(p_62_in));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cswcnt[3]_i_3 
       (.I0(cswcnt_reg[3]),
        .I1(cswcnt_reg[0]),
        .I2(cswcnt_reg[1]),
        .I3(cswcnt_reg[2]),
        .O(p_0_in__0[3]));
  FDRE \cswcnt_reg[0] 
       (.C(aclk),
        .CE(p_62_in),
        .D(p_0_in__0[0]),
        .Q(cswcnt_reg[0]),
        .R(cswcnt0));
  FDRE \cswcnt_reg[1] 
       (.C(aclk),
        .CE(p_62_in),
        .D(p_0_in__0[1]),
        .Q(cswcnt_reg[1]),
        .R(cswcnt0));
  FDRE \cswcnt_reg[2] 
       (.C(aclk),
        .CE(p_62_in),
        .D(p_0_in__0[2]),
        .Q(cswcnt_reg[2]),
        .R(cswcnt0));
  FDRE \cswcnt_reg[3] 
       (.C(aclk),
        .CE(p_62_in),
        .D(p_0_in__0[3]),
        .Q(cswcnt_reg[3]),
        .R(cswcnt0));
  FDRE dual_in_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_68),
        .Q(dual_in_r),
        .R(1'b0));
  CARRY4 io_hit0_carry
       (.CI(1'b0),
        .CO({io_hit0_carry_n_0,io_hit0_carry_n_1,io_hit0_carry_n_2,io_hit0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_io_hit0_carry_O_UNCONNECTED[3:0]),
        .S({io_hit0_carry_i_1_n_0,io_hit0_carry_i_2_n_0,io_hit0_carry_i_3_n_0,io_hit0_carry_i_4_n_0}));
  CARRY4 io_hit0_carry__0
       (.CI(io_hit0_carry_n_0),
        .CO({io_hit0_carry__0_n_0,io_hit0_carry__0_n_1,io_hit0_carry__0_n_2,io_hit0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_io_hit0_carry__0_O_UNCONNECTED[3:0]),
        .S({io_hit0_carry__0_i_1_n_0,io_hit0_carry__0_i_2_n_0,io_hit0_carry__0_i_3_n_0,io_hit0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    io_hit0_carry__0_i_1
       (.I0(p_1_in[21]),
        .I1(spi_addr[9]),
        .I2(p_1_in[22]),
        .I3(spi_addr[10]),
        .I4(spi_addr[11]),
        .I5(p_1_in[23]),
        .O(io_hit0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    io_hit0_carry__0_i_2
       (.I0(p_1_in[18]),
        .I1(spi_addr[6]),
        .I2(p_1_in[19]),
        .I3(spi_addr[7]),
        .I4(spi_addr[8]),
        .I5(p_1_in[20]),
        .O(io_hit0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    io_hit0_carry__0_i_3
       (.I0(p_1_in[16]),
        .I1(spi_addr[4]),
        .I2(p_1_in[15]),
        .I3(spi_addr[3]),
        .I4(spi_addr[5]),
        .I5(p_1_in[17]),
        .O(io_hit0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    io_hit0_carry__0_i_4
       (.I0(spi_addr[1]),
        .I1(p_1_in[13]),
        .I2(p_1_in[14]),
        .I3(spi_addr[2]),
        .I4(p_1_in[12]),
        .I5(spi_addr[0]),
        .O(io_hit0_carry__0_i_4_n_0));
  CARRY4 io_hit0_carry__1
       (.CI(io_hit0_carry__0_n_0),
        .CO({NLW_io_hit0_carry__1_CO_UNCONNECTED[3:2],io_hit049_in,io_hit0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_io_hit0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,simple_spi_n_3,simple_spi_n_4}));
  LUT3 #(
    .INIT(8'h01)) 
    io_hit0_carry_i_1
       (.I0(p_1_in[10]),
        .I1(p_1_in[11]),
        .I2(p_1_in[9]),
        .O(io_hit0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    io_hit0_carry_i_2
       (.I0(p_1_in[7]),
        .I1(p_1_in[8]),
        .I2(p_1_in[6]),
        .O(io_hit0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    io_hit0_carry_i_3
       (.I0(p_1_in[4]),
        .I1(p_1_in[5]),
        .I2(p_1_in[3]),
        .O(io_hit0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    io_hit0_carry_i_4
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(p_1_in[0]),
        .O(io_hit0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    \nxt_addr[0]_i_4 
       (.I0(buf_busy),
        .I1(\rd_state_reg_n_0_[0] ),
        .I2(buf_busy_d),
        .O(\nxt_addr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \nxt_addr[0]_i_5 
       (.I0(\buf_addr_reg_n_0_[3] ),
        .I1(buf_busy_d),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(nxt_addr_reg[3]),
        .O(\nxt_addr[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \nxt_addr[0]_i_6 
       (.I0(\buf_addr_reg_n_0_[2] ),
        .I1(buf_busy_d),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(nxt_addr_reg[2]),
        .O(\nxt_addr[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \nxt_addr[0]_i_7 
       (.I0(\buf_addr_reg_n_0_[1] ),
        .I1(buf_busy_d),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(nxt_addr_reg[1]),
        .O(\nxt_addr[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5555C555)) 
    \nxt_addr[0]_i_8 
       (.I0(nxt_addr_reg[0]),
        .I1(\buf_addr_reg_n_0_[0] ),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .O(\nxt_addr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[12]_i_2 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[15]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[11]),
        .O(\nxt_addr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[12]_i_3 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[14]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[10]),
        .O(\nxt_addr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[12]_i_4 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[13]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[9]),
        .O(\nxt_addr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[12]_i_5 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[12]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[8]),
        .O(\nxt_addr[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[16]_i_2 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[19]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[15]),
        .O(\nxt_addr[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[16]_i_3 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[18]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[14]),
        .O(\nxt_addr[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[16]_i_4 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[17]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[13]),
        .O(\nxt_addr[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[16]_i_5 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[16]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[12]),
        .O(\nxt_addr[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[20]_i_2 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[23]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(\nxt_addr[20]_i_6_n_0 ),
        .O(\nxt_addr[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[20]_i_3 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[22]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(\nxt_addr[20]_i_7_n_0 ),
        .O(\nxt_addr[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[20]_i_4 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[21]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[17]),
        .O(\nxt_addr[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[20]_i_5 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[20]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[16]),
        .O(\nxt_addr[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \nxt_addr[20]_i_6 
       (.I0(p_1_in[19]),
        .I1(burst_cont0_carry__0_i_6_n_0),
        .O(\nxt_addr[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \nxt_addr[20]_i_7 
       (.I0(p_1_in[18]),
        .I1(burst_cont0_carry__0_i_6_n_0),
        .O(\nxt_addr[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80888888)) 
    \nxt_addr[4]_i_2 
       (.I0(rvalid_i_3_n_0),
        .I1(\rd_state[4]_i_7_n_0 ),
        .I2(buf_busy_d),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy),
        .O(\nxt_addr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[4]_i_3 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[7]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[3]),
        .O(\nxt_addr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[4]_i_4 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[6]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[2]),
        .O(\nxt_addr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[4]_i_5 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[5]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[1]),
        .O(\nxt_addr[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \nxt_addr[4]_i_6 
       (.I0(p_1_in[0]),
        .I1(buf_busy_d),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(nxt_addr_reg[4]),
        .O(\nxt_addr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[8]_i_2 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[11]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[7]),
        .O(\nxt_addr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[8]_i_3 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[10]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[6]),
        .O(\nxt_addr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[8]_i_4 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[9]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[5]),
        .O(\nxt_addr[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666656666666A666)) 
    \nxt_addr[8]_i_5 
       (.I0(\nxt_addr[4]_i_2_n_0 ),
        .I1(nxt_addr_reg[8]),
        .I2(buf_busy),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy_d),
        .I5(p_1_in[4]),
        .O(\nxt_addr[8]_i_5_n_0 ));
  FDRE \nxt_addr_reg[0] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[0]_i_3_n_7 ),
        .Q(nxt_addr_reg[0]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\nxt_addr_reg[0]_i_3_n_0 ,\nxt_addr_reg[0]_i_3_n_1 ,\nxt_addr_reg[0]_i_3_n_2 ,\nxt_addr_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\nxt_addr[0]_i_4_n_0 }),
        .O({\nxt_addr_reg[0]_i_3_n_4 ,\nxt_addr_reg[0]_i_3_n_5 ,\nxt_addr_reg[0]_i_3_n_6 ,\nxt_addr_reg[0]_i_3_n_7 }),
        .S({\nxt_addr[0]_i_5_n_0 ,\nxt_addr[0]_i_6_n_0 ,\nxt_addr[0]_i_7_n_0 ,\nxt_addr[0]_i_8_n_0 }));
  FDRE \nxt_addr_reg[10] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[8]_i_1_n_5 ),
        .Q(nxt_addr_reg[10]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[11] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[8]_i_1_n_4 ),
        .Q(nxt_addr_reg[11]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[12] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[12]_i_1_n_7 ),
        .Q(nxt_addr_reg[12]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[12]_i_1 
       (.CI(\nxt_addr_reg[8]_i_1_n_0 ),
        .CO({\nxt_addr_reg[12]_i_1_n_0 ,\nxt_addr_reg[12]_i_1_n_1 ,\nxt_addr_reg[12]_i_1_n_2 ,\nxt_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 }),
        .O({\nxt_addr_reg[12]_i_1_n_4 ,\nxt_addr_reg[12]_i_1_n_5 ,\nxt_addr_reg[12]_i_1_n_6 ,\nxt_addr_reg[12]_i_1_n_7 }),
        .S({\nxt_addr[12]_i_2_n_0 ,\nxt_addr[12]_i_3_n_0 ,\nxt_addr[12]_i_4_n_0 ,\nxt_addr[12]_i_5_n_0 }));
  FDRE \nxt_addr_reg[13] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[12]_i_1_n_6 ),
        .Q(nxt_addr_reg[13]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[14] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[12]_i_1_n_5 ),
        .Q(nxt_addr_reg[14]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[15] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[12]_i_1_n_4 ),
        .Q(nxt_addr_reg[15]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[16] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[16]_i_1_n_7 ),
        .Q(nxt_addr_reg[16]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[16]_i_1 
       (.CI(\nxt_addr_reg[12]_i_1_n_0 ),
        .CO({\nxt_addr_reg[16]_i_1_n_0 ,\nxt_addr_reg[16]_i_1_n_1 ,\nxt_addr_reg[16]_i_1_n_2 ,\nxt_addr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 }),
        .O({\nxt_addr_reg[16]_i_1_n_4 ,\nxt_addr_reg[16]_i_1_n_5 ,\nxt_addr_reg[16]_i_1_n_6 ,\nxt_addr_reg[16]_i_1_n_7 }),
        .S({\nxt_addr[16]_i_2_n_0 ,\nxt_addr[16]_i_3_n_0 ,\nxt_addr[16]_i_4_n_0 ,\nxt_addr[16]_i_5_n_0 }));
  FDRE \nxt_addr_reg[17] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[16]_i_1_n_6 ),
        .Q(nxt_addr_reg[17]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[18] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[16]_i_1_n_5 ),
        .Q(nxt_addr_reg[18]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[19] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[16]_i_1_n_4 ),
        .Q(nxt_addr_reg[19]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[1] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[0]_i_3_n_6 ),
        .Q(nxt_addr_reg[1]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[20] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[20]_i_1_n_7 ),
        .Q(nxt_addr_reg[20]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[20]_i_1 
       (.CI(\nxt_addr_reg[16]_i_1_n_0 ),
        .CO({\NLW_nxt_addr_reg[20]_i_1_CO_UNCONNECTED [3],\nxt_addr_reg[20]_i_1_n_1 ,\nxt_addr_reg[20]_i_1_n_2 ,\nxt_addr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 }),
        .O({\nxt_addr_reg[20]_i_1_n_4 ,\nxt_addr_reg[20]_i_1_n_5 ,\nxt_addr_reg[20]_i_1_n_6 ,\nxt_addr_reg[20]_i_1_n_7 }),
        .S({\nxt_addr[20]_i_2_n_0 ,\nxt_addr[20]_i_3_n_0 ,\nxt_addr[20]_i_4_n_0 ,\nxt_addr[20]_i_5_n_0 }));
  FDRE \nxt_addr_reg[21] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[20]_i_1_n_6 ),
        .Q(nxt_addr_reg[21]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[22] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[20]_i_1_n_5 ),
        .Q(nxt_addr_reg[22]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[23] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[20]_i_1_n_4 ),
        .Q(nxt_addr_reg[23]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[2] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[0]_i_3_n_5 ),
        .Q(nxt_addr_reg[2]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[3] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[0]_i_3_n_4 ),
        .Q(nxt_addr_reg[3]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[4] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[4]_i_1_n_7 ),
        .Q(nxt_addr_reg[4]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[4]_i_1 
       (.CI(\nxt_addr_reg[0]_i_3_n_0 ),
        .CO({\nxt_addr_reg[4]_i_1_n_0 ,\nxt_addr_reg[4]_i_1_n_1 ,\nxt_addr_reg[4]_i_1_n_2 ,\nxt_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,1'b0}),
        .O({\nxt_addr_reg[4]_i_1_n_4 ,\nxt_addr_reg[4]_i_1_n_5 ,\nxt_addr_reg[4]_i_1_n_6 ,\nxt_addr_reg[4]_i_1_n_7 }),
        .S({\nxt_addr[4]_i_3_n_0 ,\nxt_addr[4]_i_4_n_0 ,\nxt_addr[4]_i_5_n_0 ,\nxt_addr[4]_i_6_n_0 }));
  FDRE \nxt_addr_reg[5] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[4]_i_1_n_6 ),
        .Q(nxt_addr_reg[5]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[6] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[4]_i_1_n_5 ),
        .Q(nxt_addr_reg[6]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[7] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[4]_i_1_n_4 ),
        .Q(nxt_addr_reg[7]),
        .R(nxt_addr0));
  FDRE \nxt_addr_reg[8] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[8]_i_1_n_7 ),
        .Q(nxt_addr_reg[8]),
        .R(nxt_addr0));
  CARRY4 \nxt_addr_reg[8]_i_1 
       (.CI(\nxt_addr_reg[4]_i_1_n_0 ),
        .CO({\nxt_addr_reg[8]_i_1_n_0 ,\nxt_addr_reg[8]_i_1_n_1 ,\nxt_addr_reg[8]_i_1_n_2 ,\nxt_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 ,\nxt_addr[4]_i_2_n_0 }),
        .O({\nxt_addr_reg[8]_i_1_n_4 ,\nxt_addr_reg[8]_i_1_n_5 ,\nxt_addr_reg[8]_i_1_n_6 ,\nxt_addr_reg[8]_i_1_n_7 }),
        .S({\nxt_addr[8]_i_2_n_0 ,\nxt_addr[8]_i_3_n_0 ,\nxt_addr[8]_i_4_n_0 ,\nxt_addr[8]_i_5_n_0 }));
  FDRE \nxt_addr_reg[9] 
       (.C(aclk),
        .CE(simple_spi_n_27),
        .D(\nxt_addr_reg[8]_i_1_n_6 ),
        .Q(nxt_addr_reg[9]),
        .R(nxt_addr0));
  FDRE pdreq_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(power_down_req),
        .Q(pdreq_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    power_down_ack_INST_0
       (.I0(s_pwrdown),
        .I1(s_startup),
        .I2(s_pdexit),
        .O(power_down_ack));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_state[0]_i_2 
       (.I0(\rd_state_reg_n_0_[0] ),
        .I1(\rd_state[5]_i_3_n_0 ),
        .O(\rd_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00AA0008)) 
    \rd_state[0]_i_3 
       (.I0(s_startup),
        .I1(cs_timer_reg[7]),
        .I2(\rd_state[8]_i_3_n_0 ),
        .I3(\cs_timer[0]_i_4_n_0 ),
        .I4(fast_startup),
        .O(\rd_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_state[0]_i_4 
       (.I0(s_ioread),
        .I1(\rd_state[9]_i_2_n_0 ),
        .O(\rd_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rd_state[0]_i_6 
       (.I0(sck),
        .I1(\rd_state[7]_i_7_n_0 ),
        .I2(\rd_state[7]_i_6_n_0 ),
        .I3(\rd_state[7]_i_5_n_0 ),
        .I4(rvalid_reg_0),
        .I5(spi_run_reg_n_0),
        .O(\rd_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \rd_state[1]_i_1 
       (.I0(\rd_state[9]_i_2_n_0 ),
        .I1(s_ioread),
        .I2(\rd_state[5]_i_3_n_0 ),
        .I3(rvalid045_out),
        .O(ns_idle[1]));
  LUT6 #(
    .INIT(64'h45444044FFFFFFFF)) 
    \rd_state[2]_i_4 
       (.I0(\rd_state[4]_i_5_n_0 ),
        .I1(s_csturn),
        .I2(buf_busy),
        .I3(pdreq_r),
        .I4(cs),
        .I5(\rd_state[5]_i_3_n_0 ),
        .O(\rd_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \rd_state[2]_i_8 
       (.I0(\rd_state_reg_n_0_[0] ),
        .I1(buf_busy_d),
        .I2(buf_busy),
        .I3(buf_write_reg_n_0),
        .O(\rd_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \rd_state[4]_i_10 
       (.I0(adbit_cnt_reg[2]),
        .I1(adbit_cnt_reg[5]),
        .I2(adbit_cnt_reg[0]),
        .I3(adbit_cnt_reg[1]),
        .I4(adbit_cnt_reg[4]),
        .I5(adbit_cnt_reg[3]),
        .O(\rd_state[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \rd_state[4]_i_5 
       (.I0(buf_busy_d),
        .I1(buf_busy),
        .I2(buf_write_reg_n_0),
        .I3(\rd_state_reg_n_0_[0] ),
        .O(\rd_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_state[4]_i_6 
       (.I0(buf_busy),
        .I1(pdreq_r),
        .O(\rd_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rd_state[4]_i_7 
       (.I0(nxt_addr_reg[1]),
        .I1(nxt_addr_reg[0]),
        .I2(buf_wrap_reg_n_0),
        .I3(nxt_addr_reg[2]),
        .I4(nxt_addr_reg[3]),
        .I5(nxt_addr_reg[4]),
        .O(\rd_state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \rd_state[4]_i_9 
       (.I0(adbit_cnt_reg[5]),
        .I1(adbit_cnt_reg[3]),
        .I2(adbit_cnt_reg[2]),
        .I3(adbit_cnt_reg[4]),
        .I4(adbit_cnt_reg[0]),
        .I5(adbit_cnt_reg[1]),
        .O(\rd_state[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FFFFFFFFFF)) 
    \rd_state[5]_i_2 
       (.I0(simple_spi_n_22),
        .I1(io_hit049_in),
        .I2(buf_write_reg_n_0),
        .I3(buf_busy),
        .I4(buf_busy_d),
        .I5(\rd_state_reg_n_0_[0] ),
        .O(\rd_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \rd_state[5]_i_3 
       (.I0(\rd_state[5]_i_4_n_0 ),
        .I1(\rd_state[5]_i_5_n_0 ),
        .I2(\rd_state[5]_i_6_n_0 ),
        .I3(\rd_state[5]_i_7_n_0 ),
        .O(\rd_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \rd_state[5]_i_4 
       (.I0(\rd_state_reg_n_0_[0] ),
        .I1(s_ioread),
        .I2(s_csturn),
        .I3(s_addr),
        .I4(s_data),
        .O(\rd_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \rd_state[5]_i_5 
       (.I0(\rd_state_reg_n_0_[0] ),
        .I1(s_ioread),
        .I2(s_csturn),
        .I3(s_addr),
        .I4(s_data),
        .O(\rd_state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \rd_state[5]_i_6 
       (.I0(\rd_state_reg_n_0_[5] ),
        .I1(s_pdenter),
        .I2(s_pdexit),
        .I3(s_startup),
        .I4(s_pwrdown),
        .O(\rd_state[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \rd_state[5]_i_7 
       (.I0(\rd_state_reg_n_0_[5] ),
        .I1(s_pdenter),
        .I2(s_pdexit),
        .I3(s_startup),
        .I4(s_pwrdown),
        .O(\rd_state[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAEAFFEF)) 
    \rd_state[6]_i_3 
       (.I0(\rd_state[4]_i_5_n_0 ),
        .I1(cs),
        .I2(pdreq_r),
        .I3(buf_busy),
        .I4(s_pdenter),
        .O(\rd_state[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFF0000)) 
    \rd_state[7]_i_1 
       (.I0(\rd_state[9]_i_2_n_0 ),
        .I1(\rd_state[7]_i_2_n_0 ),
        .I2(\rd_state[7]_i_3_n_0 ),
        .I3(bit_cnt[2]),
        .I4(s_pdexit),
        .I5(\rd_state[7]_i_4_n_0 ),
        .O(ns_idle[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \rd_state[7]_i_2 
       (.I0(spi_run_reg_n_0),
        .I1(rvalid_reg_0),
        .I2(\rd_state[7]_i_5_n_0 ),
        .I3(\rd_state[7]_i_6_n_0 ),
        .I4(\rd_state[7]_i_7_n_0 ),
        .I5(sck),
        .O(\rd_state[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_state[7]_i_3 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .O(\rd_state[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \rd_state[7]_i_4 
       (.I0(pdreq_r),
        .I1(buf_busy),
        .I2(\rd_state[5]_i_3_n_0 ),
        .I3(s_pwrdown),
        .O(\rd_state[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_state[7]_i_5 
       (.I0(clkcnt_reg[7]),
        .I1(clkcnt_reg[1]),
        .I2(clkcnt_reg[9]),
        .I3(clkcnt_reg[5]),
        .O(\rd_state[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_state[7]_i_6 
       (.I0(clkcnt_reg[11]),
        .I1(clkcnt_reg[8]),
        .I2(clkcnt_reg[6]),
        .I3(clkcnt_reg[2]),
        .O(\rd_state[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_state[7]_i_7 
       (.I0(clkcnt_reg[3]),
        .I1(clkcnt_reg[0]),
        .I2(clkcnt_reg[10]),
        .I3(clkcnt_reg[4]),
        .O(\rd_state[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \rd_state[8]_i_1 
       (.I0(\rd_state[9]_i_2_n_0 ),
        .I1(\rd_state[8]_i_2_n_0 ),
        .I2(s_startup),
        .I3(\rd_state[9]_i_3_n_0 ),
        .I4(s_pdexit),
        .O(ns_idle[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hDCDD)) 
    \rd_state[8]_i_2 
       (.I0(fast_startup),
        .I1(\cs_timer[0]_i_4_n_0 ),
        .I2(\rd_state[8]_i_3_n_0 ),
        .I3(cs_timer_reg[7]),
        .O(\rd_state[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rd_state[8]_i_3 
       (.I0(cs_timer_reg[9]),
        .I1(cs_timer_reg[10]),
        .I2(cs_timer_reg[6]),
        .I3(cs_timer_reg[8]),
        .O(\rd_state[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F00FFFF2F002F00)) 
    \rd_state[9]_i_1 
       (.I0(pdreq_r),
        .I1(buf_busy),
        .I2(\rd_state[9]_i_2_n_0 ),
        .I3(s_pwrdown),
        .I4(\rd_state[9]_i_3_n_0 ),
        .I5(s_pdenter),
        .O(ns_idle[9]));
  LUT6 #(
    .INIT(64'h0A2AAAAA0020AAAA)) 
    \rd_state[9]_i_2 
       (.I0(\rd_state[5]_i_3_n_0 ),
        .I1(buf_busy_d),
        .I2(buf_busy),
        .I3(buf_write_reg_n_0),
        .I4(\rd_state_reg_n_0_[0] ),
        .I5(pdreq_r),
        .O(\rd_state[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \rd_state[9]_i_3 
       (.I0(\rd_state[7]_i_2_n_0 ),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[2]),
        .I4(\rd_state[5]_i_3_n_0 ),
        .O(\rd_state[9]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[0]),
        .Q(\rd_state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[1]),
        .Q(s_ioread),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[2]),
        .Q(s_csturn),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[3]),
        .Q(s_addr),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[4]),
        .Q(s_data),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[5]),
        .Q(\rd_state_reg_n_0_[5] ),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[6]),
        .Q(s_pdenter),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[7]),
        .Q(s_pdexit),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDRE \rd_state_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[8]),
        .Q(s_startup),
        .R(areset));
  (* FSM_ENCODED_STATES = "S_ADDR:0000001000,S_STARTUP:0100000000,S_CSTURN:0000000100,S_PDEXIT:0010000000,S_PDENTER:0001000000,S_IOREAD:0000000010,S_DATA:0000010000,S_PWRDOWN:1000000000,S_WAITBUS:0000100000,S_IDLE:0000000001" *) 
  FDSE \rd_state_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ns_idle[9]),
        .Q(s_pwrdown),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[0][7]_i_2 
       (.I0(\buf_addr_reg_n_0_[0] ),
        .I1(\buf_addr_reg_n_0_[1] ),
        .O(\rdata[0][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \rdata[3][2]_i_2 
       (.I0(shift_reg[0]),
        .I1(sr_shift_two_r),
        .I2(sr_shift_inst_r),
        .I3(shift_reg[1]),
        .O(\rdata[3][2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \rdata[3][7]_i_3 
       (.I0(aresetn),
        .I1(s_rready),
        .I2(rvalid_reg_0),
        .O(\rdata[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \rdata[3][7]_i_5 
       (.I0(simple_spi_n_22),
        .I1(io_hit049_in),
        .I2(buf_write_reg_n_0),
        .I3(buf_busy),
        .I4(buf_busy_d),
        .I5(\rd_state_reg_n_0_[0] ),
        .O(rvalid045_out));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rdata[3][7]_i_6 
       (.I0(\buf_addr_reg_n_0_[0] ),
        .I1(\buf_addr_reg_n_0_[1] ),
        .O(\rdata[3][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[3][7]_i_8 
       (.I0(sr_shift_two_r),
        .I1(sr_shift_inst_r),
        .O(\rdata[3][7]_i_8_n_0 ));
  FDRE \rdata_reg[0][0] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[0]),
        .Q(s_rdata[0]),
        .R(1'b0));
  FDRE \rdata_reg[0][1] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[1]),
        .Q(s_rdata[1]),
        .R(1'b0));
  FDRE \rdata_reg[0][2] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[2]),
        .Q(s_rdata[2]),
        .R(1'b0));
  FDRE \rdata_reg[0][3] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[3]),
        .Q(s_rdata[3]),
        .R(1'b0));
  FDRE \rdata_reg[0][4] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[4]),
        .Q(s_rdata[4]),
        .R(1'b0));
  FDRE \rdata_reg[0][5] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[5]),
        .Q(s_rdata[5]),
        .R(1'b0));
  FDRE \rdata_reg[0][6] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[6]),
        .Q(s_rdata[6]),
        .R(1'b0));
  FDRE \rdata_reg[0][7] 
       (.C(aclk),
        .CE(simple_spi_n_24),
        .D(rdata0_in[7]),
        .Q(s_rdata[7]),
        .R(1'b0));
  FDRE \rdata_reg[1][0] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[0]),
        .Q(s_rdata[8]),
        .R(1'b0));
  FDRE \rdata_reg[1][1] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[1]),
        .Q(s_rdata[9]),
        .R(1'b0));
  FDRE \rdata_reg[1][2] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[2]),
        .Q(s_rdata[10]),
        .R(1'b0));
  FDRE \rdata_reg[1][3] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[3]),
        .Q(s_rdata[11]),
        .R(1'b0));
  FDRE \rdata_reg[1][4] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[4]),
        .Q(s_rdata[12]),
        .R(1'b0));
  FDRE \rdata_reg[1][5] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[5]),
        .Q(s_rdata[13]),
        .R(1'b0));
  FDRE \rdata_reg[1][6] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[6]),
        .Q(s_rdata[14]),
        .R(1'b0));
  FDRE \rdata_reg[1][7] 
       (.C(aclk),
        .CE(simple_spi_n_25),
        .D(rdata0_in[7]),
        .Q(s_rdata[15]),
        .R(1'b0));
  FDRE \rdata_reg[2][0] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[0]),
        .Q(s_rdata[16]),
        .R(1'b0));
  FDRE \rdata_reg[2][1] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[1]),
        .Q(s_rdata[17]),
        .R(1'b0));
  FDRE \rdata_reg[2][2] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[2]),
        .Q(s_rdata[18]),
        .R(1'b0));
  FDRE \rdata_reg[2][3] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[3]),
        .Q(s_rdata[19]),
        .R(1'b0));
  FDRE \rdata_reg[2][4] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[4]),
        .Q(s_rdata[20]),
        .R(1'b0));
  FDRE \rdata_reg[2][5] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[5]),
        .Q(s_rdata[21]),
        .R(1'b0));
  FDRE \rdata_reg[2][6] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[6]),
        .Q(s_rdata[22]),
        .R(1'b0));
  FDRE \rdata_reg[2][7] 
       (.C(aclk),
        .CE(simple_spi_n_23),
        .D(rdata0_in[7]),
        .Q(s_rdata[23]),
        .R(1'b0));
  FDRE \rdata_reg[3][0] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[0]),
        .Q(s_rdata[24]),
        .R(1'b0));
  FDRE \rdata_reg[3][1] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[1]),
        .Q(s_rdata[25]),
        .R(1'b0));
  FDRE \rdata_reg[3][2] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[2]),
        .Q(s_rdata[26]),
        .R(1'b0));
  FDRE \rdata_reg[3][3] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[3]),
        .Q(s_rdata[27]),
        .R(1'b0));
  FDRE \rdata_reg[3][4] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[4]),
        .Q(s_rdata[28]),
        .R(1'b0));
  FDRE \rdata_reg[3][5] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[5]),
        .Q(s_rdata[29]),
        .R(1'b0));
  FDRE \rdata_reg[3][6] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[6]),
        .Q(s_rdata[30]),
        .R(1'b0));
  FDRE \rdata_reg[3][7] 
       (.C(aclk),
        .CE(simple_spi_n_26),
        .D(rdata0_in[7]),
        .Q(s_rdata[31]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    rvalid_i_2
       (.I0(nxt_addr_reg[0]),
        .I1(nxt_addr_reg[1]),
        .O(rvalid_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rvalid_i_3
       (.I0(tot_bytes[7]),
        .I1(tot_bytes[5]),
        .I2(\tot_bytes[6]_i_2_n_0 ),
        .I3(tot_bytes[6]),
        .O(rvalid_i_3_n_0));
  FDRE rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_5),
        .Q(rvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    s_arready_INST_0
       (.I0(pdreq_r),
        .I1(\rd_state_reg_n_0_[0] ),
        .I2(buf_busy),
        .I3(s_awvalid),
        .O(s_arready));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_awready_INST_0
       (.I0(buf_busy),
        .I1(\rd_state_reg_n_0_[0] ),
        .I2(pdreq_r),
        .O(s_awready));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    s_rlast_INST_0
       (.I0(buf_len_reg[2]),
        .I1(buf_len_reg[1]),
        .I2(buf_len_reg[0]),
        .I3(buf_len_reg[3]),
        .O(s_rlast));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    s_wready_INST_0
       (.I0(buf_write_reg_n_0),
        .I1(buf_busy),
        .I2(\rd_state_reg_n_0_[0] ),
        .O(s_wready));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \sample[0]_i_1 
       (.I0(sdo_i),
        .I1(sck),
        .I2(s_data),
        .I3(spi_run_reg_n_0),
        .I4(\sample[1]_i_2_n_0 ),
        .I5(sample[0]),
        .O(\sample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \sample[1]_i_1 
       (.I0(sdi_i),
        .I1(sck),
        .I2(s_data),
        .I3(spi_run_reg_n_0),
        .I4(\sample[1]_i_2_n_0 ),
        .I5(sample[1]),
        .O(\sample[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample[1]_i_2 
       (.I0(rvalid_reg_0),
        .I1(\rd_state[7]_i_5_n_0 ),
        .I2(\rd_state[7]_i_6_n_0 ),
        .I3(\rd_state[7]_i_7_n_0 ),
        .O(\sample[1]_i_2_n_0 ));
  FDRE \sample_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sample[0]_i_1_n_0 ),
        .Q(sample[0]),
        .R(1'b0));
  FDRE \sample_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sample[1]_i_1_n_0 ),
        .Q(sample[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD2)) 
    sck_i_1
       (.I0(spi_run_reg_n_0),
        .I1(\sample[1]_i_2_n_0 ),
        .I2(sck),
        .O(sck_i_1_n_0));
  FDRE sck_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sck_i_1_n_0),
        .Q(sck),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    second_write_i_1
       (.I0(buf_size[0]),
        .I1(\buf_addr_reg_n_0_[2] ),
        .I2(\buf_addr_reg_n_0_[1] ),
        .I3(\buf_addr_reg_n_0_[0] ),
        .I4(second_write_i_2_n_0),
        .O(second_write0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    second_write_i_2
       (.I0(buf_size[2]),
        .I1(buf_size[1]),
        .I2(second_write_i_3_n_0),
        .I3(simple_spi_n_22),
        .I4(io_hit049_in),
        .O(second_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    second_write_i_3
       (.I0(buf_write_reg_n_0),
        .I1(buf_busy),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(s_wvalid),
        .O(second_write_i_3_n_0));
  FDRE second_write_reg
       (.C(aclk),
        .CE(1'b1),
        .D(second_write0),
        .Q(second_write),
        .R(areset));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[27]_i_2 
       (.I0(shift_reg[25]),
        .I1(sr_shift_two_r),
        .I2(sr_shift_inst_r),
        .I3(shift_reg[26]),
        .O(\shift_reg[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[29]_i_2 
       (.I0(shift_reg[27]),
        .I1(sr_shift_two_r),
        .I2(sr_shift_inst_r),
        .I3(shift_reg[28]),
        .O(\shift_reg[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_reg[31]_i_4 
       (.I0(s_pwrdown),
        .I1(ns_idle[9]),
        .O(\shift_reg[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \shift_reg[31]_i_6 
       (.I0(shift_reg[30]),
        .I1(sr_shift_two_r),
        .I2(sr_shift_inst_r),
        .I3(shift_reg[29]),
        .O(\shift_reg[31]_i_6_n_0 ));
  FDRE \shift_reg_reg[0] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_63),
        .Q(shift_reg[0]),
        .R(1'b0));
  FDRE \shift_reg_reg[10] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_53),
        .Q(shift_reg[10]),
        .R(1'b0));
  FDRE \shift_reg_reg[11] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_52),
        .Q(shift_reg[11]),
        .R(1'b0));
  FDRE \shift_reg_reg[12] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_51),
        .Q(shift_reg[12]),
        .R(1'b0));
  FDRE \shift_reg_reg[13] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_50),
        .Q(shift_reg[13]),
        .R(1'b0));
  FDRE \shift_reg_reg[14] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_49),
        .Q(shift_reg[14]),
        .R(1'b0));
  FDRE \shift_reg_reg[15] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_48),
        .Q(shift_reg[15]),
        .R(1'b0));
  FDRE \shift_reg_reg[16] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_47),
        .Q(shift_reg[16]),
        .R(1'b0));
  FDRE \shift_reg_reg[17] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_46),
        .Q(shift_reg[17]),
        .R(1'b0));
  FDRE \shift_reg_reg[18] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_45),
        .Q(shift_reg[18]),
        .R(1'b0));
  FDRE \shift_reg_reg[19] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_44),
        .Q(shift_reg[19]),
        .R(1'b0));
  FDRE \shift_reg_reg[1] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_62),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE \shift_reg_reg[20] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_43),
        .Q(shift_reg[20]),
        .R(1'b0));
  FDRE \shift_reg_reg[21] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_42),
        .Q(shift_reg[21]),
        .R(1'b0));
  FDRE \shift_reg_reg[22] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_41),
        .Q(shift_reg[22]),
        .R(1'b0));
  FDRE \shift_reg_reg[23] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_40),
        .Q(shift_reg[23]),
        .R(1'b0));
  FDRE \shift_reg_reg[24] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_39),
        .Q(shift_reg[24]),
        .R(1'b0));
  FDRE \shift_reg_reg[25] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_38),
        .Q(shift_reg[25]),
        .R(1'b0));
  FDRE \shift_reg_reg[26] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_37),
        .Q(shift_reg[26]),
        .R(1'b0));
  FDRE \shift_reg_reg[27] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_36),
        .Q(shift_reg[27]),
        .R(1'b0));
  FDRE \shift_reg_reg[28] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_35),
        .Q(shift_reg[28]),
        .R(1'b0));
  FDRE \shift_reg_reg[29] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_34),
        .Q(shift_reg[29]),
        .R(1'b0));
  FDRE \shift_reg_reg[2] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_61),
        .Q(shift_reg[2]),
        .R(1'b0));
  FDRE \shift_reg_reg[30] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_33),
        .Q(shift_reg[30]),
        .R(1'b0));
  FDRE \shift_reg_reg[31] 
       (.C(aclk),
        .CE(simple_spi_n_64),
        .D(simple_spi_n_32),
        .Q(shift_reg[31]),
        .R(1'b0));
  FDRE \shift_reg_reg[3] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_60),
        .Q(shift_reg[3]),
        .R(1'b0));
  FDRE \shift_reg_reg[4] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_59),
        .Q(shift_reg[4]),
        .R(1'b0));
  FDRE \shift_reg_reg[5] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_58),
        .Q(shift_reg[5]),
        .R(1'b0));
  FDRE \shift_reg_reg[6] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_57),
        .Q(shift_reg[6]),
        .R(1'b0));
  FDRE \shift_reg_reg[7] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_56),
        .Q(shift_reg[7]),
        .R(1'b0));
  FDRE \shift_reg_reg[8] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_55),
        .Q(shift_reg[8]),
        .R(1'b0));
  FDRE \shift_reg_reg[9] 
       (.C(aclk),
        .CE(simple_spi_n_65),
        .D(simple_spi_n_54),
        .Q(shift_reg[9]),
        .R(1'b0));
  bd_top_spi_flash_ctrl_0_0_simple_spi_top simple_spi
       (.CO(io_hit049_in),
        .D(rdata0_in),
        .E(simple_spi_n_23),
        .O({simple_spi_n_71,simple_spi_n_72,simple_spi_n_73,simple_spi_n_74}),
        .Q({p_1_in[27:24],\buf_addr_reg_n_0_[3] ,\buf_addr_reg_n_0_[2] ,\buf_addr_reg_n_0_[1] ,\buf_addr_reg_n_0_[0] }),
        .S({simple_spi_n_3,simple_spi_n_4}),
        .SPI_CLK(SPI_CLK),
        .SPI_CS(SPI_CS),
        .SPI_MISO_iobuf_i_1_0(adbit_cnt_reg[5:1]),
        .SPI_MOSI_iobuf(shift_reg),
        .aclk(aclk),
        .areset(areset),
        .aresetn(aresetn),
        .bit_cnt(bit_cnt),
        .\buf_addr_reg[0] (simple_spi_n_21),
        .buf_busy(buf_busy),
        .buf_busy_d(buf_busy_d),
        .buf_busy_reg(simple_spi_n_27),
        .buf_busy_reg_0(simple_spi_n_31),
        .buf_busy_reg_1(buf_len_reg),
        .\buf_len_reg[3] (simple_spi_n_22),
        .busy_reg_0(simple_spi_n_1),
        .clkcnt_reg(clkcnt_reg[10:0]),
        .\clkcnt_reg[11]_0 (\clkcnt[8]_i_2__0_n_0 ),
        .\clkcnt_reg[3]_0 (\clkcnt[0]_i_3_n_0 ),
        .cs(cs),
        .cs_reg(simple_spi_n_84),
        .cs_reg_0(cs_i_6_n_0),
        .cs_reg_1(\cs_timer[0]_i_2_n_0 ),
        .cs_reg_2(cs_i_5_n_0),
        .cs_reg_3(ns_idle[9:7]),
        .\cs_timer_reg[0] ({s_startup,s_pdexit,s_pdenter,\rd_state_reg_n_0_[5] ,s_data,s_addr,s_csturn,s_ioread,\rd_state_reg_n_0_[0] }),
        .\cswcnt_reg[0] (simple_spi_n_68),
        .dual_in_r(dual_in_r),
        .dual_in_r_reg(simple_spi_n_2),
        .dual_in_r_reg_0(SPI_MOSI_iobuf_i_5_n_0),
        .inta_o(inta_o),
        .mem_reg_0_3_0_5_i_3(buf_size),
        .ns_idle({ns_idle[6:2],ns_idle[0]}),
        .nxt_addr0(nxt_addr0),
        .nxt_addr_reg(nxt_addr_reg),
        .\nxt_addr_reg[0] (simple_spi_n_24),
        .\nxt_addr_reg[1] (simple_spi_n_25),
        .\nxt_addr_reg[1]_0 (simple_spi_n_26),
        .\param_reg[3]_0 ({simple_spi_n_32,simple_spi_n_33,simple_spi_n_34,simple_spi_n_35,simple_spi_n_36,simple_spi_n_37,simple_spi_n_38,simple_spi_n_39,simple_spi_n_40,simple_spi_n_41,simple_spi_n_42,simple_spi_n_43,simple_spi_n_44,simple_spi_n_45,simple_spi_n_46,simple_spi_n_47,simple_spi_n_48,simple_spi_n_49,simple_spi_n_50,simple_spi_n_51,simple_spi_n_52,simple_spi_n_53,simple_spi_n_54,simple_spi_n_55,simple_spi_n_56,simple_spi_n_57,simple_spi_n_58,simple_spi_n_59,simple_spi_n_60,simple_spi_n_61,simple_spi_n_62,simple_spi_n_63}),
        .\param_reg[3]_1 (simple_spi_n_85),
        .pdreq_r(pdreq_r),
        .\rd_state[2]_i_3_0 (cswcnt_reg),
        .\rd_state[4]_i_4_0 (\rd_state[4]_i_10_n_0 ),
        .\rd_state[4]_i_4_1 (sr_shift_two_r_i_4_n_0),
        .\rd_state_reg[0] (\rd_state[0]_i_2_n_0 ),
        .\rd_state_reg[0]_0 (\rd_state[0]_i_3_n_0 ),
        .\rd_state_reg[0]_1 (\rd_state[0]_i_4_n_0 ),
        .\rd_state_reg[2] ({simple_spi_n_75,simple_spi_n_76,simple_spi_n_77,simple_spi_n_78}),
        .\rd_state_reg[2]_0 ({simple_spi_n_79,simple_spi_n_80,simple_spi_n_81,simple_spi_n_82}),
        .\rd_state_reg[2]_1 (\rd_state[5]_i_3_n_0 ),
        .\rd_state_reg[2]_2 (\rd_state[2]_i_4_n_0 ),
        .\rd_state_reg[2]_3 (burst_cont0),
        .\rd_state_reg[2]_4 (\rd_state[2]_i_8_n_0 ),
        .\rd_state_reg[2]_5 (\rd_state[7]_i_7_n_0 ),
        .\rd_state_reg[2]_6 (\rd_state[7]_i_6_n_0 ),
        .\rd_state_reg[2]_7 (\rd_state[7]_i_5_n_0 ),
        .\rd_state_reg[2]_8 (\rd_state[4]_i_7_n_0 ),
        .\rd_state_reg[3] (\rd_state[4]_i_6_n_0 ),
        .\rd_state_reg[3]_0 (\rd_state[4]_i_9_n_0 ),
        .\rd_state_reg[3]_1 (\sample[1]_i_2_n_0 ),
        .\rd_state_reg[4] (\rd_state[4]_i_5_n_0 ),
        .\rd_state_reg[5] (\rd_state[5]_i_2_n_0 ),
        .\rd_state_reg[5]_0 (\rd_state[9]_i_2_n_0 ),
        .\rd_state_reg[6] (\rd_state[6]_i_3_n_0 ),
        .\rd_state_reg[6]_0 (\rd_state[9]_i_3_n_0 ),
        .\rd_state_reg[8] (simple_spi_n_28),
        .\rdata_reg[0][0] (\rdata[0][7]_i_2_n_0 ),
        .\rdata_reg[3][0] (\rdata[3][7]_i_6_n_0 ),
        .\rdata_reg[3][2] (\rdata[3][2]_i_2_n_0 ),
        .\rdata_reg[3][6] (\rdata[3][7]_i_8_n_0 ),
        .rvalid045_out(rvalid045_out),
        .rvalid_reg(simple_spi_n_5),
        .rvalid_reg_0(rvalid_reg_0),
        .rvalid_reg_1(rvalid_i_2_n_0),
        .rvalid_reg_2(rvalid_i_3_n_0),
        .rvalid_reg_3(\rdata[3][7]_i_3_n_0 ),
        .s_arvalid(s_arvalid),
        .s_awvalid(s_awvalid),
        .s_wdata(s_wdata),
        .s_wvalid(s_wvalid),
        .sample(sample),
        .sck(sck),
        .sck_reg({simple_spi_n_64,simple_spi_n_65}),
        .sdi_i(sdi_i),
        .sdi_o(sdi_o),
        .sdo_i(sdo_i),
        .sdo_o(sdo_o),
        .second_write(second_write),
        .second_write_reg(simple_spi_n_20),
        .\shift_reg_reg[27] (\shift_reg[31]_i_4_n_0 ),
        .\shift_reg_reg[27]_0 (\shift_reg[27]_i_2_n_0 ),
        .\shift_reg_reg[29] (\shift_reg[29]_i_2_n_0 ),
        .\shift_reg_reg[31] (\shift_reg[31]_i_6_n_0 ),
        .spi_addr(spi_addr[15:12]),
        .spi_run_reg(simple_spi_n_83),
        .spi_run_reg_0(spi_run_reg_n_0),
        .sr_shift_inst_r(sr_shift_inst_r),
        .sr_shift_inst_r_reg(simple_spi_n_86),
        .sr_shift_inst_r_reg_0(sr_shift_inst_r_i_2_n_0),
        .sr_shift_two_r(sr_shift_two_r),
        .sr_shift_two_r_reg(\rd_state[0]_i_6_n_0 ),
        .sr_shift_two_r_reg_0(sr_shift_two_r_i_2_n_0),
        .\tot_bytes_reg[0] (\rd_state[7]_i_3_n_0 ),
        .wcol_reg_0(buf_write_reg_n_0));
  FDRE spi_run_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_83),
        .Q(spi_run_reg_n_0),
        .R(areset));
  LUT6 #(
    .INIT(64'h000000000000007F)) 
    sr_shift_inst_r_i_2
       (.I0(adbit_cnt_reg[0]),
        .I1(adbit_cnt_reg[1]),
        .I2(adbit_cnt_reg[2]),
        .I3(adbit_cnt_reg[3]),
        .I4(adbit_cnt_reg[5]),
        .I5(adbit_cnt_reg[4]),
        .O(sr_shift_inst_r_i_2_n_0));
  FDRE sr_shift_inst_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_86),
        .Q(sr_shift_inst_r),
        .R(areset));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    sr_shift_two_r_i_2
       (.I0(s_addr),
        .I1(adbit_cnt_reg[4]),
        .I2(adbit_cnt_reg[5]),
        .I3(adbit_cnt_reg[3]),
        .I4(sr_shift_two_r_i_4_n_0),
        .O(sr_shift_two_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sr_shift_two_r_i_4
       (.I0(adbit_cnt_reg[2]),
        .I1(adbit_cnt_reg[1]),
        .I2(adbit_cnt_reg[0]),
        .O(sr_shift_two_r_i_4_n_0));
  FDRE sr_shift_two_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(simple_spi_n_85),
        .Q(sr_shift_two_r),
        .R(areset));
  LUT6 #(
    .INIT(64'h05D505D5051505D5)) 
    \tot_bytes[0]_i_1 
       (.I0(tot_bytes[0]),
        .I1(s_arvalid),
        .I2(s_awready),
        .I3(s_awvalid),
        .I4(\tot_bytes[0]_i_2_n_0 ),
        .I5(s_arsize[2]),
        .O(\tot_bytes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \tot_bytes[0]_i_2 
       (.I0(s_arsize[1]),
        .I1(s_arsize[0]),
        .I2(s_arlen[0]),
        .O(\tot_bytes[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF88888F8)) 
    \tot_bytes[1]_i_1 
       (.I0(s_arsize[2]),
        .I1(\tot_bytes[3]_i_3_n_0 ),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(tot_bytes[0]),
        .I4(tot_bytes[1]),
        .I5(\tot_bytes[5]_i_3_n_0 ),
        .O(\tot_bytes[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAE)) 
    \tot_bytes[2]_i_1 
       (.I0(\tot_bytes[6]_i_4_n_0 ),
        .I1(\tot_bytes[7]_i_4_n_0 ),
        .I2(tot_bytes[1]),
        .I3(tot_bytes[0]),
        .I4(tot_bytes[2]),
        .I5(\tot_bytes[7]_i_5_n_0 ),
        .O(\tot_bytes[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9090909090)) 
    \tot_bytes[3]_i_1 
       (.I0(tot_bytes[3]),
        .I1(\tot_bytes[3]_i_2_n_0 ),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(s_arsize[2]),
        .I4(\tot_bytes[7]_i_6_n_0 ),
        .I5(\tot_bytes[3]_i_3_n_0 ),
        .O(\tot_bytes[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \tot_bytes[3]_i_2 
       (.I0(tot_bytes[2]),
        .I1(tot_bytes[0]),
        .I2(tot_bytes[1]),
        .O(\tot_bytes[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \tot_bytes[3]_i_3 
       (.I0(s_awvalid),
        .I1(buf_busy),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(pdreq_r),
        .I4(s_arvalid),
        .O(\tot_bytes[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h909F909090909090)) 
    \tot_bytes[4]_i_1 
       (.I0(\tot_bytes[4]_i_2_n_0 ),
        .I1(tot_bytes[4]),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(s_awvalid),
        .I4(s_arvalid),
        .I5(\tot_bytes[4]_i_3_n_0 ),
        .O(\tot_bytes[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tot_bytes[4]_i_2 
       (.I0(tot_bytes[3]),
        .I1(tot_bytes[1]),
        .I2(tot_bytes[0]),
        .I3(tot_bytes[2]),
        .O(\tot_bytes[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0ACA0ACA0)) 
    \tot_bytes[4]_i_3 
       (.I0(\tot_bytes[4]_i_4_n_0 ),
        .I1(s_arlen[3]),
        .I2(s_arsize[1]),
        .I3(s_arsize[0]),
        .I4(s_arlen[0]),
        .I5(s_arsize[2]),
        .O(\tot_bytes[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tot_bytes[4]_i_4 
       (.I0(s_arlen[1]),
        .I1(s_arsize[0]),
        .I2(s_arlen[2]),
        .O(\tot_bytes[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h90FF9090)) 
    \tot_bytes[5]_i_1 
       (.I0(tot_bytes[5]),
        .I1(\tot_bytes[6]_i_2_n_0 ),
        .I2(\tot_bytes[7]_i_4_n_0 ),
        .I3(\tot_bytes[5]_i_2_n_0 ),
        .I4(\tot_bytes[5]_i_3_n_0 ),
        .O(\tot_bytes[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h15111555)) 
    \tot_bytes[5]_i_2 
       (.I0(s_arsize[2]),
        .I1(s_arsize[1]),
        .I2(s_arlen[2]),
        .I3(s_arsize[0]),
        .I4(s_arlen[3]),
        .O(\tot_bytes[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \tot_bytes[5]_i_3 
       (.I0(\tot_bytes[3]_i_3_n_0 ),
        .I1(s_arlen[0]),
        .I2(s_arsize[0]),
        .I3(s_arlen[1]),
        .I4(s_arsize[1]),
        .O(\tot_bytes[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA900FFFFA900A900)) 
    \tot_bytes[6]_i_1 
       (.I0(tot_bytes[6]),
        .I1(\tot_bytes[6]_i_2_n_0 ),
        .I2(tot_bytes[5]),
        .I3(\tot_bytes[7]_i_4_n_0 ),
        .I4(\tot_bytes[6]_i_3_n_0 ),
        .I5(\tot_bytes[6]_i_4_n_0 ),
        .O(\tot_bytes[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tot_bytes[6]_i_2 
       (.I0(tot_bytes[4]),
        .I1(tot_bytes[2]),
        .I2(tot_bytes[0]),
        .I3(tot_bytes[1]),
        .I4(tot_bytes[3]),
        .O(\tot_bytes[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \tot_bytes[6]_i_3 
       (.I0(s_arsize[2]),
        .I1(s_arsize[1]),
        .I2(s_arlen[3]),
        .I3(s_arsize[0]),
        .O(\tot_bytes[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA808A0A0A808)) 
    \tot_bytes[6]_i_4 
       (.I0(\tot_bytes[3]_i_3_n_0 ),
        .I1(s_arlen[2]),
        .I2(s_arsize[0]),
        .I3(s_arlen[1]),
        .I4(s_arsize[1]),
        .I5(s_arlen[0]),
        .O(\tot_bytes[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \tot_bytes[7]_i_2 
       (.I0(tot_bytes[7]),
        .I1(\tot_bytes[7]_i_3_n_0 ),
        .I2(tot_bytes[6]),
        .I3(\tot_bytes[7]_i_4_n_0 ),
        .I4(\tot_bytes[7]_i_5_n_0 ),
        .I5(\tot_bytes[7]_i_6_n_0 ),
        .O(\tot_bytes[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tot_bytes[7]_i_3 
       (.I0(tot_bytes[5]),
        .I1(tot_bytes[3]),
        .I2(tot_bytes[1]),
        .I3(tot_bytes[0]),
        .I4(tot_bytes[2]),
        .I5(tot_bytes[4]),
        .O(\tot_bytes[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFF1FF)) 
    \tot_bytes[7]_i_4 
       (.I0(s_arvalid),
        .I1(s_awvalid),
        .I2(pdreq_r),
        .I3(\rd_state_reg_n_0_[0] ),
        .I4(buf_busy),
        .O(\tot_bytes[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \tot_bytes[7]_i_5 
       (.I0(s_arvalid),
        .I1(pdreq_r),
        .I2(\rd_state_reg_n_0_[0] ),
        .I3(buf_busy),
        .I4(s_awvalid),
        .I5(s_arsize[2]),
        .O(\tot_bytes[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tot_bytes[7]_i_6 
       (.I0(s_arlen[0]),
        .I1(s_arlen[1]),
        .I2(s_arsize[1]),
        .I3(s_arlen[2]),
        .I4(s_arsize[0]),
        .I5(s_arlen[3]),
        .O(\tot_bytes[7]_i_6_n_0 ));
  FDRE \tot_bytes_reg[0] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[0]_i_1_n_0 ),
        .Q(tot_bytes[0]),
        .R(areset));
  FDRE \tot_bytes_reg[1] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[1]_i_1_n_0 ),
        .Q(tot_bytes[1]),
        .R(areset));
  FDRE \tot_bytes_reg[2] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[2]_i_1_n_0 ),
        .Q(tot_bytes[2]),
        .R(areset));
  FDRE \tot_bytes_reg[3] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[3]_i_1_n_0 ),
        .Q(tot_bytes[3]),
        .R(areset));
  FDRE \tot_bytes_reg[4] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[4]_i_1_n_0 ),
        .Q(tot_bytes[4]),
        .R(areset));
  FDRE \tot_bytes_reg[5] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[5]_i_1_n_0 ),
        .Q(tot_bytes[5]),
        .R(areset));
  FDRE \tot_bytes_reg[6] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[6]_i_1_n_0 ),
        .Q(tot_bytes[6]),
        .R(areset));
  FDRE \tot_bytes_reg[7] 
       (.C(aclk),
        .CE(simple_spi_n_31),
        .D(\tot_bytes[7]_i_2_n_0 ),
        .Q(tot_bytes[7]),
        .R(areset));
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
