transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Henry/Desktop/374Computer/Phase4/decoder4_16_component.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/374Computer/Phase4/decoder4_16.vhd}
vcom -93 -work work {C:/Users/Henry/Desktop/374Computer/Phase4/select_encode.vhd}

vcom -93 -work work {C:/Users/Henry/Desktop/374Computer/Phase4/component_tests/select_encode_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  select_encode_tb

add wave *
view structure
view signals
run 200 ns
