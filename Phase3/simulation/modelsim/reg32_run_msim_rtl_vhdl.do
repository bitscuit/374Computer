transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/phase1.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/alu.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/reg32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/bus_mux32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/muxMDR.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/encoder32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/mult32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/regMAR.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/selEncodeLogic.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/and32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/confflogic.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/ram.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/control_unit.vhd}

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase3/simulation/modelsim/phase1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase1_vhd_tst

add wave *
view structure
view signals
run 2000 ns
