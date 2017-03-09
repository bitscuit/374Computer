transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/phase1.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/alu.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/reg32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/bus_mux32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/muxMDR.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/encoder32.vhd}
vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/mult32.vhd}

vcom -93 -work work {C:/Users/Michael/Documents/GitHub/374Computer/Phase1/simulation/modelsim/phase1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  phase1_vhd_tst

add wave *
view structure
view signals
run 2000 ns