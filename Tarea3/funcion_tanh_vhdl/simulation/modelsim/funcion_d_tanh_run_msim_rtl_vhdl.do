transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib ieee_proposed
vmap ieee_proposed ieee_proposed
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/math_utility.vhd}
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/fixed_pkg.vhd}
vcom -93 -work ieee_proposed {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/float_pkg.vhd}
vcom -93 -work work {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/ROM_sincrona_d_tanh.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/simulation/modelsim {C:/Users/jose_/Documents/UPV/MUISE_21_22/SID-Laboratories/Tarea3/funcion_tanh_vhdl/simulation/modelsim/tanh_tb.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -L ieee_proposed -voptargs="+acc"  tanh_tb

add wave *
view structure
view signals
run -all