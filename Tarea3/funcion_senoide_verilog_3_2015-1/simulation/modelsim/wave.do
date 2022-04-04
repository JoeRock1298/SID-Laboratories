onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /senoide_tb/clk
add wave -noupdate /senoide_tb/count_real
add wave -noupdate -format Analog-Step -height 80 -max 25.000000000002217 -min -25.0 /senoide_tb/entrada
add wave -noupdate /senoide_tb/salida_bits
add wave -noupdate -format Analog-Step -height 80 -max 0.99804700000000002 -min -0.99804700000000002 /senoide_tb/salida
add wave -noupdate -format Analog-Step -height 80 -max 0.99999993796055686 -min -0.99999993796055608 /senoide_tb/salida_deseada_reg3
add wave -noupdate -format Analog-Step -height 85 -max 0.0035000000000000001 -min -0.0035000000000000001 /senoide_tb/error
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3750000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 285
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {473641304 ps}
