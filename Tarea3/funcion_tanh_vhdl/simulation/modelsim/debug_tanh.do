onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tanh_tb/count_real
add wave -noupdate /tanh_tb/salida_deseada
add wave -noupdate /tanh_tb/salida_deseada1
add wave -noupdate /tanh_tb/salida_deseada2
add wave -noupdate /tanh_tb/clk
add wave -noupdate /tanh_tb/count_real
add wave -noupdate -radix float32 /tanh_tb/UUT/dataa
add wave -noupdate -radix float32 /tanh_tb/UUT/valor
add wave -noupdate -radix ufixed /tanh_tb/UUT/valor1
add wave -noupdate -radix ufixed /tanh_tb/UUT/valor2
add wave -noupdate -radix decimal /tanh_tb/UUT/valor3
add wave -noupdate -radix unsigned /tanh_tb/UUT/result_rom
add wave -noupdate -radix float32 /tanh_tb/UUT/mod_result
add wave -noupdate -radix float32 /tanh_tb/UUT/result
add wave -noupdate /tanh_tb/salida_real
add wave -noupdate /tanh_tb/UUT/overflow_w
add wave -noupdate /tanh_tb/UUT/overflow_r
add wave -noupdate /tanh_tb/UUT/overflow_r1
add wave -noupdate /tanh_tb/UUT/signo
add wave -noupdate /tanh_tb/UUT/signo1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {210215088 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 198
configure wave -valuecolwidth 75
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
WaveRestoreZoom {249623559 ps} {250649075 ps}
