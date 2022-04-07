onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/clk_clk
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/chipselect
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/address
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/write
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/writedata
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/read
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/readdata
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/reg0
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/reg1
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/reg2
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/data
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/we
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u1_av_sl_MM/reg3
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u2_timer/o_IRQ
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u2_timer/o_THR
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/avalon_timer_32b_0/u2_timer/o_count
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/reset_reset_n
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_readdata
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_address
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_read
add wave -noupdate -radix unsigned /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_writedata
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/mm_master_bfm_0_m0_write
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/irq_mapper_receiver0_irq
add wave -noupdate /top/tb/avalon_timer_32b_qsys_inst/interrupt_sink_0_irq_irq
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
WaveRestoreZoom {3796583 ps} {3864999 ps}
