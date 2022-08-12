###################################################################################################
## This constraints file contains default clock frequencies to be used during creation of a 
## Synthesis Design Checkpoint (DCP). For best results the frequencies should be modified 
## to match the target frequencies. 
## This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).
###################################################################################################


##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Thu Aug 11 18:11:09 2022

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       bd_top_mig_7series_0_0.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A200T-FBG676
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         400 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41J64M16XX-125G
## Data Width: 16
## Time Period: 2500
## Data Mask: 1
##################################################################################################

create_clock -period 2.5 [get_ports sys_clk_i]
          
create_clock -period 5 [get_ports clk_ref_i]
          