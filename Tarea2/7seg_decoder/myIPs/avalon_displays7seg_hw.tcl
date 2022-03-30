# TCL File Generated by Component Editor 17.1
# Mon Mar 21 13:30:44 CET 2022
# DO NOT MODIFY


# 
# avalon_displays7seg "avalon_displays7seg" v1.0
#  2022.03.21.13:30:44
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avalon_displays7seg
# 
set_module_property DESCRIPTION ""
set_module_property NAME avalon_displays7seg
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP myAvalonIPs
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME avalon_displays7seg
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avalon_displays7seg
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_displays7seg.v VERILOG PATH avalon_displays7seg.v TOP_LEVEL_FILE
add_fileset_file avalon_slave_MM_interface.v VERILOG PATH avalon_slave_MM_interface.v
add_fileset_file hex7seg.v VERILOG PATH hex7seg.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL avalon_displays7seg
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_displays7seg.v VERILOG PATH avalon_displays7seg.v
add_fileset_file avalon_slave_MM_interface.v VERILOG PATH avalon_slave_MM_interface.v
add_fileset_file hex7seg.v VERILOG PATH hex7seg.v


# 
# parameters
# 
add_parameter invert INTEGER 0
set_parameter_property invert DEFAULT_VALUE 0
set_parameter_property invert DISPLAY_NAME invert
set_parameter_property invert TYPE INTEGER
set_parameter_property invert UNITS None
set_parameter_property invert ALLOWED_RANGES -2147483648:2147483647
set_parameter_property invert HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges BOTH
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset reset Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock_sink
set_interface_property avalon_slave associatedReset reset_sink
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave chipselect chipselect Input 1
add_interface_port avalon_slave address address Input 3
add_interface_port avalon_slave write write Input 1
add_interface_port avalon_slave writedata writedata Input 32
add_interface_port avalon_slave read read Input 1
add_interface_port avalon_slave readdata readdata Output 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point external_interface
# 
add_interface external_interface conduit end
set_interface_property external_interface associatedClock clock_sink
set_interface_property external_interface associatedReset reset_sink
set_interface_property external_interface ENABLED true
set_interface_property external_interface EXPORT_OF ""
set_interface_property external_interface PORT_NAME_MAP ""
set_interface_property external_interface CMSIS_SVD_VARIABLES ""
set_interface_property external_interface SVD_ADDRESS_GROUP ""

add_interface_port external_interface HEX0 conduit0 Output 7
add_interface_port external_interface HEX1 conduit1 Output 7
add_interface_port external_interface HEX2 conduit2 Output 7
add_interface_port external_interface HEX3 conduit3 Output 7
add_interface_port external_interface HEX4 conduit4 Output 7
add_interface_port external_interface HEX5 conduit5 Output 7
add_interface_port external_interface HEX6 conduit6 Output 7
add_interface_port external_interface HEX7 conduit7 Output 7

