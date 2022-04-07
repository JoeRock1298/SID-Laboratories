onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider <NULL>
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/clk_clk
add wave -noupdate -divider <NULL>
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/read
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/write
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/chipselect
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/address
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/readdata
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b/count_read
add wave -noupdate -divider <NULL>
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_read
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0/avm_write
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0/avm_address
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_readdata
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3878758 ps} 0}
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
WaveRestoreZoom {3790353 ps} {3927183 ps}
