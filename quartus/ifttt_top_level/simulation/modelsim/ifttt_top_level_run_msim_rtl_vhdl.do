transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/I2C/I2C_tx_rx.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/I2C/I2C_input_reg.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/I2C/I2C_handler2.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/toplevel/bidir_bus.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/Register32x8.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/Program_counter.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/InstrucReg.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/DATA_RAM.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/data_bus.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/constants.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/B_imm_multiplexer.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/toplevel/GPIO_register.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/quartus/ifttt_top_level/mega_prog_mem.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/MEMORY_CONTROL.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/instruction_decoder.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/cpu_core.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/control_unit.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/branch_control.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/src/ALU.vhd}
vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/P4/ifttt-cpu/toplevel/ifttt_top_level.vhd}

