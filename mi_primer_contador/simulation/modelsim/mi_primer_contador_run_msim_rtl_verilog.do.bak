transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/jororoc/Documents/QDesign/mi_primer_contador {C:/Users/jororoc/Documents/QDesign/mi_primer_contador/contador.v}

vlog -vlog01compat -work work +incdir+C:/Users/jororoc/Documents/QDesign/mi_primer_contador {C:/Users/jororoc/Documents/QDesign/mi_primer_contador/tb_contador.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_contador

add wave *
view structure
view signals
run -all
