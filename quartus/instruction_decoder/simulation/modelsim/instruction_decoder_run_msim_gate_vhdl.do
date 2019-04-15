transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {instruction_decoder_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/instruction_decoder/../../test_benches/instruction_decoder_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=instruction_decoder_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  instruction_decoder_tb

add wave *
view structure
view signals
run 2 us
