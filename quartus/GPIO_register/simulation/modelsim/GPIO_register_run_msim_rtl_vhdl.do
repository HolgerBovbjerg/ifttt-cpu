transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/toplevel/bidir_bus.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/toplevel/GPIO_register.vhd}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/GPIO_register/../../toplevel/testbenches/GPIO_register_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  GPIO_register_tb

add wave *
view structure
view signals
run 500 ns
