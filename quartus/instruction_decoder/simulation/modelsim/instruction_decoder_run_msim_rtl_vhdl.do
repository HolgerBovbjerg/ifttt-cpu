transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/constants.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/instruction_decoder.vhd}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/instruction_decoder/../../test_benches/instruction_decoder_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  instruction_decoder_tb

add wave *
view structure
view signals
run 2 us
