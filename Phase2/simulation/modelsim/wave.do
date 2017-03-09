onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /phase1_vhd_tst/alu_in
add wave -noupdate /phase1_vhd_tst/busmuxout
add wave -noupdate /phase1_vhd_tst/c_sign_extended_busmuxin
add wave -noupdate /phase1_vhd_tst/c_in
add wave -noupdate /phase1_vhd_tst/c_out
add wave -noupdate /phase1_vhd_tst/clear
add wave -noupdate /phase1_vhd_tst/clock
add wave -noupdate /phase1_vhd_tst/hi_busmuxin
add wave -noupdate /phase1_vhd_tst/hi_in
add wave -noupdate /phase1_vhd_tst/hi_out
add wave -noupdate /phase1_vhd_tst/inport_busmuxin
add wave -noupdate /phase1_vhd_tst/inport_in
add wave -noupdate /phase1_vhd_tst/inport_out
add wave -noupdate /phase1_vhd_tst/lo_busmuxin
add wave -noupdate /phase1_vhd_tst/lo_in
add wave -noupdate /phase1_vhd_tst/lo_out
add wave -noupdate /phase1_vhd_tst/m_data_in
add wave -noupdate /phase1_vhd_tst/mdr_busmuxin
add wave -noupdate /phase1_vhd_tst/mdr_in
add wave -noupdate /phase1_vhd_tst/mdr_out
add wave -noupdate /phase1_vhd_tst/mdr_data
add wave -noupdate /phase1_vhd_tst/pc_busmuxin
add wave -noupdate /phase1_vhd_tst/pc_in
add wave -noupdate /phase1_vhd_tst/pc_out
add wave -noupdate /phase1_vhd_tst/r0_busmuxin
add wave -noupdate /phase1_vhd_tst/r0_out
add wave -noupdate /phase1_vhd_tst/r0in
add wave -noupdate /phase1_vhd_tst/r1_busmuxin
add wave -noupdate /phase1_vhd_tst/r1_out
add wave -noupdate /phase1_vhd_tst/r1in
add wave -noupdate /phase1_vhd_tst/r2_busmuxin
add wave -noupdate /phase1_vhd_tst/r2_out
add wave -noupdate /phase1_vhd_tst/r2in
add wave -noupdate /phase1_vhd_tst/r3_busmuxin
add wave -noupdate /phase1_vhd_tst/r3_out
add wave -noupdate /phase1_vhd_tst/r3in
add wave -noupdate /phase1_vhd_tst/r4_busmuxin
add wave -noupdate /phase1_vhd_tst/r4_out
add wave -noupdate /phase1_vhd_tst/r4in
add wave -noupdate /phase1_vhd_tst/r5_busmuxin
add wave -noupdate /phase1_vhd_tst/r5_out
add wave -noupdate /phase1_vhd_tst/r5in
add wave -noupdate /phase1_vhd_tst/r6_busmuxin
add wave -noupdate /phase1_vhd_tst/r6_out
add wave -noupdate /phase1_vhd_tst/r6in
add wave -noupdate /phase1_vhd_tst/r7_busmuxin
add wave -noupdate /phase1_vhd_tst/r7_out
add wave -noupdate /phase1_vhd_tst/r7in
add wave -noupdate /phase1_vhd_tst/r8_busmuxin
add wave -noupdate /phase1_vhd_tst/r8_out
add wave -noupdate /phase1_vhd_tst/r8in
add wave -noupdate /phase1_vhd_tst/r9_busmuxin
add wave -noupdate /phase1_vhd_tst/r9_out
add wave -noupdate /phase1_vhd_tst/r9in
add wave -noupdate /phase1_vhd_tst/r10_busmuxin
add wave -noupdate /phase1_vhd_tst/r10_out
add wave -noupdate /phase1_vhd_tst/r10in
add wave -noupdate /phase1_vhd_tst/r11_busmuxin
add wave -noupdate /phase1_vhd_tst/r11_out
add wave -noupdate /phase1_vhd_tst/r11in
add wave -noupdate /phase1_vhd_tst/r12_busmuxin
add wave -noupdate /phase1_vhd_tst/r12_out
add wave -noupdate /phase1_vhd_tst/r12in
add wave -noupdate /phase1_vhd_tst/r13_busmuxin
add wave -noupdate /phase1_vhd_tst/r13_out
add wave -noupdate /phase1_vhd_tst/r13in
add wave -noupdate /phase1_vhd_tst/r14_busmuxin
add wave -noupdate /phase1_vhd_tst/r14_out
add wave -noupdate /phase1_vhd_tst/r14in
add wave -noupdate /phase1_vhd_tst/r15_busmuxin
add wave -noupdate /phase1_vhd_tst/r15_out
add wave -noupdate /phase1_vhd_tst/r15in
add wave -noupdate /phase1_vhd_tst/sel
add wave -noupdate /phase1_vhd_tst/sel_alu
add wave -noupdate /phase1_vhd_tst/select_bus
add wave -noupdate /phase1_vhd_tst/to_A_in
add wave -noupdate /phase1_vhd_tst/Yin
add wave -noupdate /phase1_vhd_tst/zhi_busmuxin
add wave -noupdate /phase1_vhd_tst/zhi_in
add wave -noupdate /phase1_vhd_tst/zhi_out
add wave -noupdate /phase1_vhd_tst/zhi_out_sel
add wave -noupdate /phase1_vhd_tst/zlo_busmuxin
add wave -noupdate /phase1_vhd_tst/zlo_in
add wave -noupdate /phase1_vhd_tst/zlo_out
add wave -noupdate /phase1_vhd_tst/zlo_out_sel
add wave -noupdate /phase1_vhd_tst/Present_State
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {525 ns}