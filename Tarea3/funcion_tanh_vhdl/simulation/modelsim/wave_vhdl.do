onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Analog-Step -height 100 -max 1.0 -min -1.0 /senoide_vhdl_tb/salida_real
add wave -noupdate -format Analog-Step -height 100 -max 1.0 -min -1.0 /senoide_vhdl_tb/salida_esperada
add wave -noupdate /senoide_vhdl_tb/salida2
add wave -noupdate /senoide_vhdl_tb/salida
add wave -noupdate /senoide_vhdl_tb/reset
add wave -noupdate /senoide_vhdl_tb/ready
add wave -noupdate /senoide_vhdl_tb/man_bits
add wave -noupdate /senoide_vhdl_tb/fix_bits
add wave -noupdate /senoide_vhdl_tb/exp_bits
add wave -noupdate /senoide_vhdl_tb/entrada
add wave -noupdate /senoide_vhdl_tb/done
add wave -noupdate /senoide_vhdl_tb/count_unsigned
add wave -noupdate /senoide_vhdl_tb/count_real
add wave -noupdate /senoide_vhdl_tb/count_float
add wave -noupdate /senoide_vhdl_tb/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {220 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 273
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {40530 ns}
