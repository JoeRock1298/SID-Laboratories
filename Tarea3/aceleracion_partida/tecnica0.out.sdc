## Generated SDC file "tecnica0.out.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 17.1.1 Internal Build 593 12/11/2017 SJ Standard Edition"

## DATE    "Mon Apr 04 12:51:55 2022"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 1.000 -waveform { 0.000 0.500 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 12 -divide_by 2 -master_clock {CLOCK_50} [get_pins {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 2 -master_clock {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins { u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk }] 
create_generated_clock -name {u0|pll|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|pll|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 3 -phase 270/1 -master_clock {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|pll|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 6 -master_clock {u0|pll|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|pll|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_oci_break:the_nios_system_tec0_cpu_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_oci_debug:the_nios_system_tec0_cpu_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_oci_debug:the_nios_system_tec0_cpu_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_oci_debug:the_nios_system_tec0_cpu_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_ocimem:the_nios_system_tec0_cpu_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_tck:the_nios_system_tec0_cpu_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_sysclk:the_nios_system_tec0_cpu_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_debug_slave_wrapper:the_nios_system_tec0_cpu_cpu_debug_slave_wrapper|nios_system_tec0_cpu_cpu_debug_slave_sysclk:the_nios_system_tec0_cpu_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*nios_system_tec0_cpu_cpu:*|nios_system_tec0_cpu_cpu_nios2_oci:the_nios_system_tec0_cpu_cpu_nios2_oci|nios_system_tec0_cpu_cpu_nios2_oci_debug:the_nios_system_tec0_cpu_cpu_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000
set_max_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000
set_min_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|in_wr_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|out_rd_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
