onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dtanh_tb/count_real
add wave -noupdate -format Analog-Step -height 74 -max 1.0 /dtanh_tb/salida_real
add wave -noupdate -format Analog-Step -height 74 -max 1.0 /dtanh_tb/salida_deseada
add wave -noupdate -format Analog-Step -height 74 -max 0.0028600897039532387 -min -0.0032936385323376616 /dtanh_tb/error
add wave -noupdate /dtanh_tb/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {246350000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 193
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
WaveRestoreZoom {0 ps} {525052500 ps}
