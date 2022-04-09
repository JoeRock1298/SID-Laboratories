onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider System
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/reset
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/clock
add wave -noupdate -divider {Avalon MM signals}
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/chipselect
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/address
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/write
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/writedata
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/read
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/readdata
add wave -noupdate -divider {IRQ & Conduit}
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/o_THR
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/o_IRQ
add wave -noupdate -divider {Timer registers}
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/reg0
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/reg1
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/reg2
add wave -noupdate -radix decimal /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/count_read
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/we
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3833807 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 469
configure wave -valuecolwidth 55
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
WaveRestoreZoom {0 ps} {4378500 ps}
