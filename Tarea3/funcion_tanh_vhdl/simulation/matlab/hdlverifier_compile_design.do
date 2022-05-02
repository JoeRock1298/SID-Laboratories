# Create design library
transcript on
if {[file exists work]} {
	vdel -lib work -all
}
vlib work
vmap work work

if {[file exists ieee_proposed]} {
	vdel -lib ieee_proposed -all
}
vlib ieee_proposed
vmap ieee_proposed ieee_proposed

# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
set SRC1 "C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl"
project addfile "$SRC1/math_utility.vhd"
project addfile "$SRC1/fixed_pkg.vhd"
project addfile "$SRC1/float_pkg.vhd"
project addfile "$SRC1/ROM_sincrona_d_tanh.vhd"
project addfile "$SRC1/d_tanh_top.v"

# Close project
project close

# Compile all files
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/math_utility.vhd}
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/fixed_pkg.vhd}
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/float_pkg.vhd}
vcom -93 -work work {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/ROM_sincrona_d_tanh.vhd}
# vlog -work work {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/d_tanh_top.v}
vlog -vlog01compat -work work {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/d_tanh_top.v}