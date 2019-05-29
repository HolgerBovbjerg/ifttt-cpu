transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/Register32x8.vhd}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/register32x8/../../test_benches/Register32x8_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  register32x8_tb

add wave *
view structure
view signals
run 1000 ns
