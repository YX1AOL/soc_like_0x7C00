set_property SRC_FILE_INFO {cfile:d:/Xilinx_Project/soc_like_0x7C00/bd/bd_top/ip/bd_top_clk_wiz_2_0/bd_top_clk_wiz_2_0.xdc rfile:../../../../bd/bd_top/ip/bd_top_clk_wiz_2_0/bd_top_clk_wiz_2_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
