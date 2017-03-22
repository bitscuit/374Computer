transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/alu.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/reg32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/bus_mux32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/muxMDR.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/encoder32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/mult32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/regMAR.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/selEncodeLogic.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/and32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/confflogic.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/ram.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/phase1.vhd}

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase2/io_op_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  io_op_tb

add wave *
view structure
view signals
run 2000 ns
