
################################################################
# This is a generated script based on design: bd_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# confreg, gpu_top, mycpu, reset_synchronizer, spi_flash_ctrl

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg676-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_top

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_bd_top_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {ï»?<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>bd_top_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>OFF</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a200t-fbg676/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>1</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41J64M16XX-125G</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>400</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>16</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>13</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>134217728</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="E18" SLEW="" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="F20" SLEW="" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H16" SLEW="" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="G16" SLEW="" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H14" SLEW="" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H15" SLEW="" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="G17" SLEW="" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="F17" SLEW="" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="F18" SLEW="" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="F19" SLEW="" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="G15" SLEW="" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="F15" SLEW="" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="G19" SLEW="" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C17" SLEW="" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B17" SLEW="" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="E16" SLEW="" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A18" SLEW="" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C18" SLEW="" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="D18" SLEW="" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="D16" SLEW="" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="E21" SLEW="" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="D23" SLEW="" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="E20" SLEW="" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C23" SLEW="" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B26" SLEW="" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A25" SLEW="" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C26" SLEW="" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C24" SLEW="" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B25" SLEW="" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C21" SLEW="" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="D19" SLEW="" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A22" SLEW="" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="D20" SLEW="" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B21" SLEW="" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C19" SLEW="" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B22" SLEW="" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="C22" SLEW="" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B24" SLEW="" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A20" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A24" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B20" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A23" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="E17" SLEW="" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A17" SLEW="" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="A19" SLEW="" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="B19" SLEW="" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="110" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">6</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Disable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>27</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>6</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_bd_top_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]

  set IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC ]

  set MDIO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 MDIO ]

  set MII [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mii_rtl:1.0 MII ]


  # Create ports
  set MII_tx_er [ create_bd_port -dir O -from 0 -to 0 MII_tx_er ]
  set SPI_CLK [ create_bd_port -dir O -type clk SPI_CLK ]
  set SPI_CS [ create_bd_port -dir O SPI_CS ]
  set SPI_MISO [ create_bd_port -dir IO SPI_MISO ]
  set SPI_MOSI [ create_bd_port -dir IO SPI_MOSI ]
  set UART_RX [ create_bd_port -dir I UART_RX ]
  set UART_TX [ create_bd_port -dir O UART_TX ]
  set btn_key_col [ create_bd_port -dir O -from 3 -to 0 btn_key_col ]
  set btn_key_row [ create_bd_port -dir I -from 3 -to 0 btn_key_row ]
  set btn_step [ create_bd_port -dir I -from 1 -to 0 btn_step ]
  set clk [ create_bd_port -dir I -type clk -freq_hz 100000000 clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {resetn} \
 ] $clk
  set ct_int [ create_bd_port -dir IO ct_int ]
  set ct_rstn [ create_bd_port -dir O -type rst ct_rstn ]
  set ct_scl [ create_bd_port -dir O ct_scl ]
  set ct_sda [ create_bd_port -dir IO ct_sda ]
  set lcd_bl_ctr [ create_bd_port -dir O lcd_bl_ctr ]
  set lcd_cs [ create_bd_port -dir O lcd_cs ]
  set lcd_data_io [ create_bd_port -dir IO -from 15 -to 0 lcd_data_io ]
  set lcd_rd [ create_bd_port -dir O lcd_rd ]
  set lcd_rs [ create_bd_port -dir O lcd_rs ]
  set lcd_rst [ create_bd_port -dir O -type rst lcd_rst ]
  set lcd_wr [ create_bd_port -dir O lcd_wr ]
  set led [ create_bd_port -dir O -from 15 -to 0 led ]
  set led_rg0 [ create_bd_port -dir O -from 1 -to 0 led_rg0 ]
  set led_rg1 [ create_bd_port -dir O -from 1 -to 0 led_rg1 ]
  set num_a_g [ create_bd_port -dir O -from 6 -to 0 num_a_g ]
  set num_csn [ create_bd_port -dir O -from 7 -to 0 num_csn ]
  set resetn [ create_bd_port -dir I -type rst resetn ]
  set switch [ create_bd_port -dir I -from 7 -to 0 switch ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
   CONFIG.PROTOCOL {AXI3} \
   CONFIG.S01_BASE_ID {0x00000010} \
   CONFIG.S02_BASE_ID {0x00000020} \
   CONFIG.S03_BASE_ID {0x00000030} \
   CONFIG.S04_BASE_ID {0x00000040} \
   CONFIG.S05_BASE_ID {0x00000050} \
   CONFIG.S06_BASE_ID {0x00000060} \
   CONFIG.S07_BASE_ID {0x00000070} \
   CONFIG.S08_BASE_ID {0x00000080} \
   CONFIG.S09_BASE_ID {0x00000090} \
   CONFIG.S10_BASE_ID {0x000000a0} \
   CONFIG.S11_BASE_ID {0x000000b0} \
   CONFIG.S12_BASE_ID {0x000000c0} \
   CONFIG.S13_BASE_ID {0x000000d0} \
   CONFIG.S14_BASE_ID {0x000000e0} \
   CONFIG.S15_BASE_ID {0x000000f0} \
 ] $axi_crossbar_0

  # Create instance: axi_ethernetlite_0, and set properties
  set axi_ethernetlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_0 ]

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: axi_int_concat, and set properties
  set axi_int_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 axi_int_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $axi_int_concat

  # Create instance: axi_int_const0, and set properties
  set axi_int_const0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 axi_int_const0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $axi_int_const0

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]
  set_property -dict [ list \
   CONFIG.C_IRQ_CONNECTION {1} \
 ] $axi_intc_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {9} \
   CONFIG.STRATEGY {1} \
 ] $axi_interconnect_0

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.Coe_File {../../../../coe/eth_ping.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: clk_pll_33, and set properties
  set clk_pll_33 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_33 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {333.104} \
   CONFIG.CLKOUT1_PHASE_ERROR {261.747} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_spi} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {33} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {25} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {4} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_pll_33

  # Create instance: clk_pll_100, and set properties
  set clk_pll_100 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_100 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {137.681} \
   CONFIG.CLKOUT1_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {9} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {9} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_RESET {false} \
 ] $clk_pll_100

  # Create instance: clk_pll_200, and set properties
  set clk_pll_200 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_200 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {114.829} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_ref} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_pll_200

  # Create instance: clk_pll_cpu, and set properties
  set clk_pll_cpu [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_cpu ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {333.104} \
   CONFIG.CLKOUT1_PHASE_ERROR {261.747} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_cpu} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {33} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {25} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {4} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_pll_cpu

  # Create instance: confreg_0, and set properties
  set block_name confreg
  set block_cell_name confreg_0
  if { [catch {set confreg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $confreg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: const_0, and set properties
  set const_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $const_0

  # Create instance: const_1, and set properties
  set const_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_1 ]

  # Create instance: const_spi_addr, and set properties
  set const_spi_addr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_spi_addr ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x1fe8} \
   CONFIG.CONST_WIDTH {16} \
 ] $const_spi_addr

  # Create instance: cpu_int_concat, and set properties
  set cpu_int_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 cpu_int_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {6} \
 ] $cpu_int_concat

  # Create instance: cpu_int_const0, and set properties
  set cpu_int_const0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 cpu_int_const0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $cpu_int_const0

  # Create instance: gpu_top_0, and set properties
  set block_name gpu_top
  set block_cell_name gpu_top_0
  if { [catch {set gpu_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gpu_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_bd_top_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: mycpu_0, and set properties
  set block_name mycpu
  set block_cell_name mycpu_0
  if { [catch {set mycpu_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mycpu_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: reset_not, and set properties
  set reset_not [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 reset_not ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $reset_not

  # Create instance: reset_synchronizer_mem, and set properties
  set block_name reset_synchronizer
  set block_cell_name reset_synchronizer_mem
  if { [catch {set reset_synchronizer_mem [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reset_synchronizer_mem eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: spi_flash_ctrl_0, and set properties
  set block_name spi_flash_ctrl
  set block_cell_name spi_flash_ctrl_0
  if { [catch {set spi_flash_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_flash_ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_crossbar_0/M00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MDIO [get_bd_intf_ports MDIO] [get_bd_intf_pins axi_ethernetlite_0/MDIO]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_ports MII] [get_bd_intf_pins axi_ethernetlite_0/MII]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports IIC] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins spi_flash_ctrl_0/s]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins confreg_0/s]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins gpu_top_0/s]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins axi_uart16550_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_ethernetlite_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_intc_0/s_axi] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_interconnect_0/M08_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net mycpu_0_data_cache [get_bd_intf_pins axi_crossbar_0/S00_AXI] [get_bd_intf_pins mycpu_0/data_cache]
  connect_bd_intf_net -intf_net mycpu_0_data_uncache [get_bd_intf_pins axi_crossbar_0/S01_AXI] [get_bd_intf_pins mycpu_0/data_uncache]
  connect_bd_intf_net -intf_net mycpu_0_inst_cache [get_bd_intf_pins axi_crossbar_0/S02_AXI] [get_bd_intf_pins mycpu_0/inst_cache]
  connect_bd_intf_net -intf_net mycpu_0_inst_uncache [get_bd_intf_pins axi_crossbar_0/S03_AXI] [get_bd_intf_pins mycpu_0/inst_uncache]

  # Create port connections
  connect_bd_net -net M01_ACLK_1 [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins clk_pll_33/clk_spi] [get_bd_pins spi_flash_ctrl_0/aclk]
  connect_bd_net -net M03_ARESETN_1 [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins reset_synchronizer_mem/rst_o]
  connect_bd_net -net Net [get_bd_ports SPI_MISO] [get_bd_pins spi_flash_ctrl_0/SPI_MISO]
  connect_bd_net -net Net1 [get_bd_ports SPI_MOSI] [get_bd_pins spi_flash_ctrl_0/SPI_MOSI]
  connect_bd_net -net Net2 [get_bd_ports lcd_data_io] [get_bd_pins gpu_top_0/lcd_data_io]
  connect_bd_net -net Net3 [get_bd_ports ct_int] [get_bd_pins gpu_top_0/ct_int]
  connect_bd_net -net Net4 [get_bd_ports ct_sda] [get_bd_pins gpu_top_0/ct_sda]
  connect_bd_net -net UART_RX_1 [get_bd_ports UART_RX] [get_bd_pins axi_uart16550_0/sin]
  connect_bd_net -net axi_ethernetlite_0_ip2intc_irpt [get_bd_pins axi_ethernetlite_0/ip2intc_irpt] [get_bd_pins axi_int_concat/In0]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins axi_int_concat/In3]
  connect_bd_net -net axi_int_concat_dout [get_bd_pins axi_int_concat/dout] [get_bd_pins axi_intc_0/intr]
  connect_bd_net -net axi_int_const0_dout [get_bd_pins axi_int_concat/In1] [get_bd_pins axi_int_concat/In2] [get_bd_pins axi_int_const0/dout]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins axi_intc_0/irq] [get_bd_pins cpu_int_concat/In4]
  connect_bd_net -net axi_uart16550_0_ip2intc_irpt [get_bd_pins axi_uart16550_0/ip2intc_irpt] [get_bd_pins cpu_int_concat/In1]
  connect_bd_net -net axi_uart16550_0_sout [get_bd_ports UART_TX] [get_bd_pins axi_uart16550_0/sout]
  connect_bd_net -net btn_key_row_1 [get_bd_ports btn_key_row] [get_bd_pins confreg_0/btn_key_row]
  connect_bd_net -net btn_step_1 [get_bd_ports btn_step] [get_bd_pins confreg_0/btn_step]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins clk_pll_100/clk_in1] [get_bd_pins clk_pll_200/clk_in1] [get_bd_pins clk_pll_33/clk_in1] [get_bd_pins clk_pll_cpu/clk_in1] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_pll_100_clk_out1 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_ethernetlite_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins clk_pll_100/clk_out1] [get_bd_pins confreg_0/aclk] [get_bd_pins gpu_top_0/aclk] [get_bd_pins gpu_top_0/lcd_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_pll_100_locked [get_bd_pins clk_pll_100/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net clk_pll_200_clk_ref [get_bd_pins clk_pll_200/clk_ref] [get_bd_pins mig_7series_0/clk_ref_i]
  connect_bd_net -net clk_pll_cpu_clk_cpu [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins clk_pll_cpu/clk_cpu] [get_bd_pins mycpu_0/aclk]
  connect_bd_net -net confreg_0_btn_key_col [get_bd_ports btn_key_col] [get_bd_pins confreg_0/btn_key_col]
  connect_bd_net -net confreg_0_led [get_bd_ports led] [get_bd_pins confreg_0/led]
  connect_bd_net -net confreg_0_led_rg0 [get_bd_ports led_rg0] [get_bd_pins confreg_0/led_rg0]
  connect_bd_net -net confreg_0_led_rg1 [get_bd_ports led_rg1] [get_bd_pins confreg_0/led_rg1]
  connect_bd_net -net confreg_0_num_a_g [get_bd_ports num_a_g] [get_bd_pins confreg_0/num_a_g]
  connect_bd_net -net confreg_0_num_csn [get_bd_ports num_csn] [get_bd_pins confreg_0/num_csn]
  connect_bd_net -net const_0_dout [get_bd_ports MII_tx_er] [get_bd_pins axi_uart16550_0/ctsn] [get_bd_pins axi_uart16550_0/dcdn] [get_bd_pins axi_uart16550_0/dsrn] [get_bd_pins axi_uart16550_0/freeze] [get_bd_pins confreg_0/finish_read_order] [get_bd_pins confreg_0/write_dma_end] [get_bd_pins const_0/dout] [get_bd_pins proc_sys_reset_0/mb_debug_sys_rst] [get_bd_pins spi_flash_ctrl_0/fast_startup] [get_bd_pins spi_flash_ctrl_0/power_down_req]
  connect_bd_net -net const_1_dout [get_bd_pins axi_uart16550_0/rin] [get_bd_pins const_1/dout]
  connect_bd_net -net const_spi_addr_dout [get_bd_pins const_spi_addr/dout] [get_bd_pins spi_flash_ctrl_0/spi_addr]
  connect_bd_net -net cpu_int_concat_dout [get_bd_pins cpu_int_concat/dout] [get_bd_pins mycpu_0/ext_int]
  connect_bd_net -net cpu_int_const0_dout [get_bd_pins cpu_int_concat/In0] [get_bd_pins cpu_int_concat/In2] [get_bd_pins cpu_int_concat/In3] [get_bd_pins cpu_int_concat/In5] [get_bd_pins cpu_int_const0/dout]
  connect_bd_net -net gpu_top_0_ct_rstn [get_bd_ports ct_rstn] [get_bd_pins gpu_top_0/ct_rstn]
  connect_bd_net -net gpu_top_0_ct_scl [get_bd_ports ct_scl] [get_bd_pins gpu_top_0/ct_scl]
  connect_bd_net -net gpu_top_0_lcd_bl_ctr [get_bd_ports lcd_bl_ctr] [get_bd_pins gpu_top_0/lcd_bl_ctr]
  connect_bd_net -net gpu_top_0_lcd_cs [get_bd_ports lcd_cs] [get_bd_pins gpu_top_0/lcd_cs]
  connect_bd_net -net gpu_top_0_lcd_rd [get_bd_ports lcd_rd] [get_bd_pins gpu_top_0/lcd_rd]
  connect_bd_net -net gpu_top_0_lcd_rs [get_bd_ports lcd_rs] [get_bd_pins gpu_top_0/lcd_rs]
  connect_bd_net -net gpu_top_0_lcd_rst [get_bd_ports lcd_rst] [get_bd_pins gpu_top_0/lcd_rst]
  connect_bd_net -net gpu_top_0_lcd_wr [get_bd_ports lcd_wr] [get_bd_pins gpu_top_0/lcd_wr]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_pins mig_7series_0/init_calib_complete] [get_bd_pins proc_sys_reset_0/aux_reset_in]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins reset_synchronizer_mem/clk]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins proc_sys_reset_0/mb_reset] [get_bd_pins reset_not/Op1]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_ethernetlite_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins confreg_0/aresetn] [get_bd_pins gpu_top_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins reset_synchronizer_mem/rst_i] [get_bd_pins spi_flash_ctrl_0/aresetn]
  connect_bd_net -net reset_not_Res [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins mycpu_0/aresetn] [get_bd_pins reset_not/Res]
  connect_bd_net -net resetn_1 [get_bd_ports resetn] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net spi_flash_ctrl_0_SPI_CLK [get_bd_ports SPI_CLK] [get_bd_pins spi_flash_ctrl_0/SPI_CLK]
  connect_bd_net -net spi_flash_ctrl_0_SPI_CS [get_bd_ports SPI_CS] [get_bd_pins spi_flash_ctrl_0/SPI_CS]
  connect_bd_net -net switch_1 [get_bd_ports switch] [get_bd_pins confreg_0/switch]

  # Create address segments
  assign_bd_address -offset 0x1A000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x1A000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x1A000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x1A000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x1FF00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FF00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FF00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FF00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FB00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FB00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FB00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FB00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1D000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1D000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1D000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1D000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FE40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FE40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FE40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FE40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x1FD00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs confreg_0/s/reg0] -force
  assign_bd_address -offset 0x1FD00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs confreg_0/s/reg0] -force
  assign_bd_address -offset 0x1FD00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs confreg_0/s/reg0] -force
  assign_bd_address -offset 0x1FD00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs confreg_0/s/reg0] -force
  assign_bd_address -offset 0x1FA00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs gpu_top_0/s/reg0] -force
  assign_bd_address -offset 0x1FA00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs gpu_top_0/s/reg0] -force
  assign_bd_address -offset 0x1FA00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs gpu_top_0/s/reg0] -force
  assign_bd_address -offset 0x1FA00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs gpu_top_0/s/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x1FC00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/data_cache] [get_bd_addr_segs spi_flash_ctrl_0/s/reg0] -force
  assign_bd_address -offset 0x1FC00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/data_uncache] [get_bd_addr_segs spi_flash_ctrl_0/s/reg0] -force
  assign_bd_address -offset 0x1FC00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_cache] [get_bd_addr_segs spi_flash_ctrl_0/s/reg0] -force
  assign_bd_address -offset 0x1FC00000 -range 0x00100000 -target_address_space [get_bd_addr_spaces mycpu_0/inst_uncache] [get_bd_addr_segs spi_flash_ctrl_0/s/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


