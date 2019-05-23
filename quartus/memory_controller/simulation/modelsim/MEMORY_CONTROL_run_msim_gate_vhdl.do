transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MEMORY_CONTROL_min_1200mv_0c_fast.vho}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/memory_controller/../../test_benches/tb_MEMORY_CONTROL.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=MEMORY_CONTROL_min_1200mv_0c_vhd_fast.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_MEMORY_CONTROL

add wave *
view structure
view signals
run 1000 ns
