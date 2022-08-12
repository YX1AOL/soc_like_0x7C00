// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug 11 18:12:02 2022
// Host        : DESKTOP-V9918HG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_clk_wiz_2_0/bd_top_clk_wiz_2_0_stub.v
// Design      : bd_top_clk_wiz_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_top_clk_wiz_2_0(clk_ref, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_ref,clk_in1" */;
  output clk_ref;
  input clk_in1;
endmodule
