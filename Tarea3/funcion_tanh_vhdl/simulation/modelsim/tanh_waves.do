onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tanh_tb/clk
add wave -noupdate /tanh_tb/count_real
add wave -noupdate -format Analog-Step -height 74 -max 1.0 -min -1.0 /tanh_tb/salida_real
add wave -noupdate -format Analog-Step -height 74 -max 1.0 -min -1.0 /tanh_tb/salida_deseada2
add wave -noupdate -clampanalog 1 -format Analog-Step -height 74 -max 0.0043732900000000002 -min -0.0040000000000000001 -radix float32 /tanh_tb/error
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {70650000 ps} 0}
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
WaveRestoreZoom {0 ps} {525063 ns}
