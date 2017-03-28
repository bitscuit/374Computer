transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/ram_component.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/reg32_component.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/mux2_word_size_component.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/mdr_component.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/mux2_word_size.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/reg32.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/ram.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/mem_system.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/mdr.vhd}

vcom -93 -work work {C:/Users/Henry/Desktop/Phase4/component_tests/mem_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  mem_tb

add wave *
view structure
view signals
run 200 ns
