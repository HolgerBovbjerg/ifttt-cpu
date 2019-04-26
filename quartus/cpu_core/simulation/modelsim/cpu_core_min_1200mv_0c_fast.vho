-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "04/25/2019 11:03:33"

-- 
-- Device: Altera EP3C16F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu_core IS
    PORT (
	i_CORE_CLK : IN std_logic;
	i_CORE_RESET : IN std_logic;
	i_CORE_HALT : IN std_logic;
	o_DATA : OUT std_logic_vector(7 DOWNTO 0);
	o_STATE : OUT std_logic_vector(6 DOWNTO 0);
	i_MC_GPIO_data : IN std_logic_vector(7 DOWNTO 0);
	o_MC_GPIO_address : OUT std_logic_vector(3 DOWNTO 0);
	o_MC_GPIO_write_enable : OUT std_logic;
	o_MC_GPIO_data : OUT std_logic_vector(7 DOWNTO 0);
	i_MC_I2C_data : IN std_logic_vector(7 DOWNTO 0);
	o_MC_I2C_address : OUT std_logic_vector(3 DOWNTO 0);
	o_MC_I2C_write_enable : OUT std_logic;
	o_MC_I2C_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END cpu_core;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_write_enable	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_write_enable	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_RESET	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_HALT	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[7]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu_core IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CORE_CLK : std_logic;
SIGNAL ww_i_CORE_RESET : std_logic;
SIGNAL ww_i_CORE_HALT : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_STATE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_i_MC_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_GPIO_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_MC_GPIO_write_enable : std_logic;
SIGNAL ww_o_MC_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_MC_I2C_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_I2C_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_MC_I2C_write_enable : std_logic;
SIGNAL ww_o_MC_I2C_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_CORE_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_BUS_select[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_control_unit|r_state[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \o_STATE[0]~output_o\ : std_logic;
SIGNAL \o_STATE[1]~output_o\ : std_logic;
SIGNAL \o_STATE[2]~output_o\ : std_logic;
SIGNAL \o_STATE[3]~output_o\ : std_logic;
SIGNAL \o_STATE[4]~output_o\ : std_logic;
SIGNAL \o_STATE[5]~output_o\ : std_logic;
SIGNAL \o_STATE[6]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[1]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[2]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[3]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_write_enable~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[7]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[0]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[1]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[2]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[3]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_write_enable~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[7]~output_o\ : std_logic;
SIGNAL \i_CORE_CLK~input_o\ : std_logic;
SIGNAL \i_CORE_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_CORE_HALT~input_o\ : std_logic;
SIGNAL \INST_control_unit|r_state[0]~0_combout\ : std_logic;
SIGNAL \INST_control_unit|r_state[0]~1_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux58~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux57~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux2~0_combout\ : std_logic;
SIGNAL \r_register_enable~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux2~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux2~2_combout\ : std_logic;
SIGNAL \i_CORE_RESET~input_o\ : std_logic;
SIGNAL \INST_control_unit|r_state[0]~2_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT[4]~0_combout\ : std_logic;
SIGNAL \INST_control_unit|r_state[0]~3_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~1\ : std_logic;
SIGNAL \INST_Program_counter|Add0~2_combout\ : std_logic;
SIGNAL \INST_control_unit|r_state[3]~clkctrl_outclk\ : std_logic;
SIGNAL \INST_Program_counter|Add0~3\ : std_logic;
SIGNAL \INST_Program_counter|Add0~5\ : std_logic;
SIGNAL \INST_Program_counter|Add0~7\ : std_logic;
SIGNAL \INST_Program_counter|Add0~9\ : std_logic;
SIGNAL \INST_Program_counter|Add0~11\ : std_logic;
SIGNAL \INST_Program_counter|Add0~12_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~13\ : std_logic;
SIGNAL \INST_Program_counter|Add0~14_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~15\ : std_logic;
SIGNAL \INST_Program_counter|Add0~16_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~17\ : std_logic;
SIGNAL \INST_Program_counter|Add0~18_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux0~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux3~1_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux3~2_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[6]~1_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~10_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux1~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~9_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux2~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~8_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux3~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~7_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~10_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux4~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~6_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~8_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux5~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~17_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_IMM_enable~q\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \i_MC_GPIO_data[7]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[7]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[7]~7_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux72~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux60~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[13]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux73~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[0]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux72~1_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[1]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux71~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux70~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[3]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux69~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux68~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux67~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux66~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux65~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux64~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux63~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux62~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[11]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|Mux61~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address[12]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~47_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~27_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~24_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~25_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~26_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~28_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~29_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~30_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~31_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~32_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~33_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~48_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\ : std_logic;
SIGNAL \r_MEM_write_enable~combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux7~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~38_combout\ : std_logic;
SIGNAL \i_MC_GPIO_data[0]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[0]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~23_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~34_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux0~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[0]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[3]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_MC_I2C_data[1]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[1]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[1]~1_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~35_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~36_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~19_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~21_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~20_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~22_combout\ : std_logic;
SIGNAL \i_MC_I2C_data[2]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[2]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[2]~2_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~37_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~38_combout\ : std_logic;
SIGNAL \i_MC_I2C_data[3]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[3]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[3]~3_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~39_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~40_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \i_MC_I2C_data[5]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[5]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[5]~5_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~43_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~44_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \i_MC_I2C_data[6]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[6]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[6]~6_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~45_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~46_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~15_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~14_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~16_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~17_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~26_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[6]~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~33_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~18_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~31_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~24_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[1]~1_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~18_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[0]~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~7_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~30_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[3]~7_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[7]~2_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[4]~5_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~6_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~32_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~34_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~35_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~23_combout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~11_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~20_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~14_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~1\ : std_logic;
SIGNAL \INST_ALU|Add1~3\ : std_logic;
SIGNAL \INST_ALU|Add1~5\ : std_logic;
SIGNAL \INST_ALU|Add1~7\ : std_logic;
SIGNAL \INST_ALU|Add1~9\ : std_logic;
SIGNAL \INST_ALU|Add1~11\ : std_logic;
SIGNAL \INST_ALU|Add1~12_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~16_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~19_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[6]~15_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~27_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~28_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~23_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~10_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~24_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~8_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~20_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~19_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~15_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~6_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~16_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~4_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~12_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~11_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~2_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~8_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~7_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~0_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~11_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~1_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~2_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~3_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~13\ : std_logic;
SIGNAL \INST_ALU|Add1~15\ : std_logic;
SIGNAL \INST_ALU|Add1~16_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~4_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux9~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux9~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_carry_flag~q\ : std_logic;
SIGNAL \INST_ALU|Add0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~1_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~4_cout\ : std_logic;
SIGNAL \INST_ALU|Add0~6\ : std_logic;
SIGNAL \INST_ALU|Add0~10\ : std_logic;
SIGNAL \INST_ALU|Add0~14\ : std_logic;
SIGNAL \INST_ALU|Add0~18\ : std_logic;
SIGNAL \INST_ALU|Add0~22\ : std_logic;
SIGNAL \INST_ALU|Add0~26\ : std_logic;
SIGNAL \INST_ALU|Add0~29_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~8_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~17_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux6~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~27_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[5]~4_combout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~1_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~3_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~5_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~7_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~9_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~11_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~13_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~25_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux5~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~28_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~15_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~7_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~21_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~1_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~11_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~14_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[4]~10_combout\ : std_logic;
SIGNAL \i_MC_GPIO_data[4]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[4]~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~4_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~41_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY~42_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux4~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~36_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~20_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~17_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~11_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~15_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~11_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~16_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~18_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[3]~8_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux3~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~29_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[2]~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~8_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~9_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~9_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[2]~7_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux2~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~37_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~5_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~4_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~11_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~13_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[1]~6_combout\ : std_logic;
SIGNAL \INST_data_bus|Mux1~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~25_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~21_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~16_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~17_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~31_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~14_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~32_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~30\ : std_logic;
SIGNAL \INST_ALU|Add0~33_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~18_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~15_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~19_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~20_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[7]~19_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Signed~q\ : std_logic;
SIGNAL \INST_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux11~1_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_negative_flag~q\ : std_logic;
SIGNAL \INST_ALU|Equal3~1_combout\ : std_logic;
SIGNAL \INST_ALU|Equal3~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal3~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_zero_flag~q\ : std_logic;
SIGNAL \INST_branch_control|Mux10~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux10~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux10~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_overflow_flag~q\ : std_logic;
SIGNAL \INST_branch_control|Mux10~0_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux10~2_combout\ : std_logic;
SIGNAL \INST_branch_control|o_PC_LOAD~q\ : std_logic;
SIGNAL \INST_Program_counter|Add0~6_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux6~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~4_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~4_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux7~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~3_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux2~1_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux8~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~2_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux4~2_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux4~3_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[6]~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_SAVE_PC~q\ : std_logic;
SIGNAL \INST_branch_control|r_PC_ADDRESS[0]~0_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux9~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|r_PROG_COUNT~1_combout\ : std_logic;
SIGNAL \INST_control_unit|process_0~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux1~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux1~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux0~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux3~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux4~2_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux3~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~8_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~2_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~3_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~9_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[0]~3_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_address[1]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_address[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_address[3]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[4]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[5]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address[0]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address[1]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~q\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[1]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[2]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[3]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[4]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[5]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[6]~feeder_combout\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data[7]~feeder_combout\ : std_logic;
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_DATA_RAM|MEMORY_rtl_0_bypass\ : std_logic_vector(0 TO 44);
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_InstrucReg|r_register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_data_bus|o_MEMORY\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_Program_counter|r_PROG_COUNT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_BUS_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_branch_control|o_ADDRESS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_I2C_address\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_address\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \INST_GPR|o_GPR_ALU_data_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_ALU|r_ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_Address_MEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|r_MEM_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_control_unit|r_state\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_ALU|tmp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_GPIO_address\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_BRANCH_CONTROL\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST_data_bus|o_REGISTER\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_DATA_RAM|o_RAM_MC_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_branch_control|r_PC_ADDRESS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_REGISTER_C\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_MUX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPR|o_GPR_ALU_data_A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_MEMORY_CONTROL|o_MC_RAM_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CORE_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CORE_HALT~input_o\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\ : std_logic;
SIGNAL \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|ALT_INV_o_Address_MEM\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \ALT_INV_r_register_enable~0_combout\ : std_logic;
SIGNAL \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|ALT_INV_o_OPCODE\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_control_unit|ALT_INV_r_state\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_i_CORE_CLK <= i_CORE_CLK;
ww_i_CORE_RESET <= i_CORE_RESET;
ww_i_CORE_HALT <= i_CORE_HALT;
o_DATA <= ww_o_DATA;
o_STATE <= ww_o_STATE;
ww_i_MC_GPIO_data <= i_MC_GPIO_data;
o_MC_GPIO_address <= ww_o_MC_GPIO_address;
o_MC_GPIO_write_enable <= ww_o_MC_GPIO_write_enable;
o_MC_GPIO_data <= ww_o_MC_GPIO_data;
ww_i_MC_I2C_data <= i_MC_I2C_data;
o_MC_I2C_address <= ww_o_MC_I2C_address;
o_MC_I2C_write_enable <= ww_o_MC_I2C_write_enable;
o_MC_I2C_data <= ww_o_MC_I2C_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\INST_data_bus|o_REGISTER\(7) & \INST_data_bus|o_REGISTER\(6) & \INST_data_bus|o_REGISTER\(5) & \INST_data_bus|o_REGISTER\(4) & \INST_data_bus|o_REGISTER\(3) & \INST_data_bus|o_REGISTER\(2) & \INST_data_bus|o_REGISTER\(1) & 
\INST_data_bus|o_REGISTER\(0));

\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_instruction_decoder|o_REGISTER_C\(4) & \INST_instruction_decoder|o_REGISTER_C\(3) & \INST_instruction_decoder|o_REGISTER_C\(2) & 
\INST_instruction_decoder|o_REGISTER_C\(1) & \INST_instruction_decoder|o_REGISTER_C\(0));

\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_InstrucReg|r_register\(17) & \INST_InstrucReg|r_register\(16) & \INST_InstrucReg|r_register\(15) & \INST_InstrucReg|r_register\(14) & \INST_InstrucReg|r_register\(13));

\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\ <= \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\INST_data_bus|o_REGISTER\(7) & \INST_data_bus|o_REGISTER\(6) & \INST_data_bus|o_REGISTER\(5) & \INST_data_bus|o_REGISTER\(4) & \INST_data_bus|o_REGISTER\(3) & \INST_data_bus|o_REGISTER\(2) & \INST_data_bus|o_REGISTER\(1) & 
\INST_data_bus|o_REGISTER\(0));

\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_instruction_decoder|o_REGISTER_C\(4) & \INST_instruction_decoder|o_REGISTER_C\(3) & \INST_instruction_decoder|o_REGISTER_C\(2) & 
\INST_instruction_decoder|o_REGISTER_C\(1) & \INST_instruction_decoder|o_REGISTER_C\(0));

\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_InstrucReg|r_register\(22) & \INST_InstrucReg|r_register\(21) & \INST_InstrucReg|r_register\(20) & \INST_InstrucReg|r_register\(19) & \INST_InstrucReg|r_register\(18));

\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\ <= \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(0) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(5) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(6) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(10) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(11) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(12) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(28) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(30) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(31) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(2) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(3) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(4) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(7) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(8) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(9) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(16) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(17) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(29) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(13) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(14) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(15) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(18) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(19) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(20) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(21) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(22) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(23) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(8);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(1);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(1);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(2);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(2);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(3);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(3);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(4);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(4);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(5);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(5);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(6);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(6);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(7);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \INST_MEMORY_CONTROL|o_MC_RAM_data\(7);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & 
\INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_MEMORY_CONTROL|Mux63~0_combout\ & \INST_MEMORY_CONTROL|Mux64~0_combout\ & 
\INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_MEMORY_CONTROL|Mux67~0_combout\ & \INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_MEMORY_CONTROL|Mux70~0_combout\ & 
\INST_MEMORY_CONTROL|Mux71~0_combout\ & \INST_MEMORY_CONTROL|Mux72~1_combout\ & \INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(1) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(24) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(25) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(26) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(27) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);

\i_CORE_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CORE_CLK~input_o\);

\INST_instruction_decoder|o_BUS_select[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_instruction_decoder|o_BUS_select\(0));

\INST_control_unit|r_state[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_control_unit|r_state\(3));
\INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\ <= NOT \INST_control_unit|r_state[3]~clkctrl_outclk\;
\ALT_INV_i_CORE_CLK~inputclkctrl_outclk\ <= NOT \i_CORE_CLK~inputclkctrl_outclk\;
\ALT_INV_i_CORE_HALT~input_o\ <= NOT \i_CORE_HALT~input_o\;
\INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\ <= NOT \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\;
\INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\ <= NOT \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\;
\INST_instruction_decoder|ALT_INV_o_Address_MEM\(15) <= NOT \INST_instruction_decoder|o_Address_MEM\(15);
\ALT_INV_r_register_enable~0_combout\ <= NOT \r_register_enable~0_combout\;
\INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\ <= NOT \INST_Program_counter|r_PROG_COUNT[4]~0_combout\;
\INST_instruction_decoder|ALT_INV_o_OPCODE\(0) <= NOT \INST_instruction_decoder|o_OPCODE\(0);
\INST_control_unit|ALT_INV_r_state\(0) <= NOT \INST_control_unit|r_state\(0);
\INST_control_unit|ALT_INV_r_state\(1) <= NOT \INST_control_unit|r_state\(1);

-- Location: IOOBUF_X41_Y14_N9
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(0),
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(1),
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(2),
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(3),
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(4),
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(5),
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(6),
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALU|r_ALU_Result\(7),
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_STATE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|ALT_INV_r_state\(0),
	devoe => ww_devoe,
	o => \o_STATE[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_STATE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(1),
	devoe => ww_devoe,
	o => \o_STATE[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\o_STATE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(2),
	devoe => ww_devoe,
	o => \o_STATE[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\o_STATE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(3),
	devoe => ww_devoe,
	o => \o_STATE[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\o_STATE[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(4),
	devoe => ww_devoe,
	o => \o_STATE[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\o_STATE[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(5),
	devoe => ww_devoe,
	o => \o_STATE[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\o_STATE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_control_unit|r_state\(6),
	devoe => ww_devoe,
	o => \o_STATE[6]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\o_MC_GPIO_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\o_MC_GPIO_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\o_MC_GPIO_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\o_MC_GPIO_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(3),
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_MC_GPIO_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_write_enable~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_MC_GPIO_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\o_MC_GPIO_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\o_MC_GPIO_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\o_MC_GPIO_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\o_MC_GPIO_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_MC_GPIO_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\o_MC_GPIO_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[6]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\o_MC_GPIO_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\o_MC_I2C_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_address\(0),
	devoe => ww_devoe,
	o => \o_MC_I2C_address[0]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\o_MC_I2C_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_address\(1),
	devoe => ww_devoe,
	o => \o_MC_I2C_address[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\o_MC_I2C_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_address\(2),
	devoe => ww_devoe,
	o => \o_MC_I2C_address[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\o_MC_I2C_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_address\(3),
	devoe => ww_devoe,
	o => \o_MC_I2C_address[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\o_MC_I2C_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_write_enable~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\o_MC_I2C_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(0),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\o_MC_I2C_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(1),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\o_MC_I2C_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(2),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\o_MC_I2C_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(3),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\o_MC_I2C_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(4),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[4]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\o_MC_I2C_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(5),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[5]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\o_MC_I2C_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(6),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_MC_I2C_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_MEMORY_CONTROL|o_MC_I2C_data\(7),
	devoe => ww_devoe,
	o => \o_MC_I2C_data[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_CORE_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_CLK,
	o => \i_CORE_CLK~input_o\);

-- Location: CLKCTRL_G4
\i_CORE_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CORE_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CORE_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y29_N29
\i_CORE_HALT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_HALT,
	o => \i_CORE_HALT~input_o\);

-- Location: LCCOMB_X20_Y21_N4
\INST_control_unit|r_state[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|r_state[0]~0_combout\ = (\i_CORE_HALT~input_o\) # ((\INST_control_unit|r_state\(2) & ((\INST_control_unit|r_state\(3)) # (!\INST_control_unit|r_state\(0)))) # (!\INST_control_unit|r_state\(2) & (\INST_control_unit|r_state\(3) & 
-- !\INST_control_unit|r_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(3),
	datac => \i_CORE_HALT~input_o\,
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|r_state[0]~0_combout\);

-- Location: LCCOMB_X20_Y21_N10
\INST_control_unit|r_state[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|r_state[0]~1_combout\ = (\INST_control_unit|r_state\(0) & ((\i_CORE_HALT~input_o\) # ((!\INST_control_unit|r_state\(2) & !\INST_control_unit|r_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(3),
	datac => \i_CORE_HALT~input_o\,
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|r_state[0]~1_combout\);

-- Location: LCCOMB_X24_Y17_N0
\INST_MEMORY_CONTROL|Mux58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux58~0_combout\ = (\INST_control_unit|r_state\(4) & (!\INST_MEMORY_CONTROL|r_MEM_state\(0) & !\INST_MEMORY_CONTROL|r_MEM_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datad => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_MEMORY_CONTROL|Mux58~0_combout\);

-- Location: FF_X24_Y17_N1
\INST_MEMORY_CONTROL|r_MEM_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|r_MEM_state\(0));

-- Location: LCCOMB_X24_Y17_N28
\INST_MEMORY_CONTROL|Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux57~0_combout\ = (\INST_MEMORY_CONTROL|r_MEM_state\(0) & ((!\INST_MEMORY_CONTROL|r_MEM_state\(1)))) # (!\INST_MEMORY_CONTROL|r_MEM_state\(0) & (\INST_control_unit|r_state\(4) & \INST_MEMORY_CONTROL|r_MEM_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_MEMORY_CONTROL|Mux57~0_combout\);

-- Location: FF_X24_Y17_N29
\INST_MEMORY_CONTROL|r_MEM_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|r_MEM_state\(1));

-- Location: LCCOMB_X20_Y21_N22
\INST_control_unit|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux2~0_combout\ = (\INST_control_unit|r_state\(3) & (\INST_control_unit|process_0~0_combout\ & (!\INST_control_unit|r_state\(4)))) # (!\INST_control_unit|r_state\(3) & (((\INST_control_unit|r_state\(4) & 
-- !\INST_MEMORY_CONTROL|r_MEM_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|process_0~0_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_control_unit|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y21_N28
\r_register_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register_enable~0_combout\ = (!\INST_control_unit|r_state\(2) & !\INST_control_unit|r_state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_control_unit|r_state\(2),
	datad => \INST_control_unit|r_state\(5),
	combout => \r_register_enable~0_combout\);

-- Location: LCCOMB_X20_Y21_N0
\INST_control_unit|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux2~1_combout\ = (\r_register_enable~0_combout\ & (!\INST_control_unit|r_state\(1) & (!\INST_control_unit|r_state\(6) & \INST_control_unit|r_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_register_enable~0_combout\,
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(6),
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y21_N20
\INST_control_unit|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux2~2_combout\ = (\INST_control_unit|Mux2~0_combout\ & \INST_control_unit|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Mux2~0_combout\,
	datad => \INST_control_unit|Mux2~1_combout\,
	combout => \INST_control_unit|Mux2~2_combout\);

-- Location: IOIBUF_X14_Y29_N22
\i_CORE_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_RESET,
	o => \i_CORE_RESET~input_o\);

-- Location: FF_X20_Y21_N21
\INST_control_unit|r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux2~2_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(4));

-- Location: LCCOMB_X20_Y21_N14
\INST_control_unit|r_state[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|r_state[0]~2_combout\ = (\INST_control_unit|r_state\(1) & (((!\INST_control_unit|r_state\(4) & !\INST_control_unit|r_state\(5))) # (!\INST_control_unit|r_state[0]~1_combout\))) # (!\INST_control_unit|r_state\(1) & 
-- ((\INST_control_unit|r_state\(4) & ((!\INST_control_unit|r_state\(5)) # (!\INST_control_unit|r_state[0]~1_combout\))) # (!\INST_control_unit|r_state\(4) & ((\INST_control_unit|r_state\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state[0]~1_combout\,
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|r_state[0]~2_combout\);

-- Location: LCCOMB_X21_Y20_N0
\INST_Program_counter|r_PROG_COUNT[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT[4]~0_combout\ = (!\INST_control_unit|r_state\(6) & !\i_CORE_RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_control_unit|r_state\(6),
	datad => \i_CORE_RESET~input_o\,
	combout => \INST_Program_counter|r_PROG_COUNT[4]~0_combout\);

-- Location: LCCOMB_X20_Y21_N16
\INST_control_unit|r_state[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|r_state[0]~3_combout\ = (\INST_control_unit|r_state[0]~0_combout\ & (((\INST_control_unit|r_state[0]~1_combout\)))) # (!\INST_control_unit|r_state[0]~0_combout\ & (\INST_Program_counter|r_PROG_COUNT[4]~0_combout\ & 
-- (\INST_control_unit|r_state[0]~2_combout\ $ (!\INST_control_unit|r_state[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state[0]~0_combout\,
	datab => \INST_control_unit|r_state[0]~2_combout\,
	datac => \INST_Program_counter|r_PROG_COUNT[4]~0_combout\,
	datad => \INST_control_unit|r_state[0]~1_combout\,
	combout => \INST_control_unit|r_state[0]~3_combout\);

-- Location: FF_X20_Y21_N17
\INST_control_unit|r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|r_state[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(0));

-- Location: LCCOMB_X20_Y20_N10
\INST_Program_counter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~0_combout\ = \INST_Program_counter|r_PROG_COUNT\(0) $ (VCC)
-- \INST_Program_counter|Add0~1\ = CARRY(\INST_Program_counter|r_PROG_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(0),
	datad => VCC,
	combout => \INST_Program_counter|Add0~0_combout\,
	cout => \INST_Program_counter|Add0~1\);

-- Location: LCCOMB_X20_Y20_N12
\INST_Program_counter|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~2_combout\ = (\INST_Program_counter|r_PROG_COUNT\(1) & (!\INST_Program_counter|Add0~1\)) # (!\INST_Program_counter|r_PROG_COUNT\(1) & ((\INST_Program_counter|Add0~1\) # (GND)))
-- \INST_Program_counter|Add0~3\ = CARRY((!\INST_Program_counter|Add0~1\) # (!\INST_Program_counter|r_PROG_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(1),
	datad => VCC,
	cin => \INST_Program_counter|Add0~1\,
	combout => \INST_Program_counter|Add0~2_combout\,
	cout => \INST_Program_counter|Add0~3\);

-- Location: FF_X20_Y20_N13
\INST_branch_control|r_PC_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~2_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(1));

-- Location: CLKCTRL_G11
\INST_control_unit|r_state[3]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_control_unit|r_state[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_control_unit|r_state[3]~clkctrl_outclk\);

-- Location: FF_X22_Y19_N29
\INST_instruction_decoder|o_OPCODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(29),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(1));

-- Location: LCCOMB_X20_Y20_N14
\INST_Program_counter|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~4_combout\ = (\INST_Program_counter|r_PROG_COUNT\(2) & (\INST_Program_counter|Add0~3\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(2) & (!\INST_Program_counter|Add0~3\ & VCC))
-- \INST_Program_counter|Add0~5\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(2) & !\INST_Program_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(2),
	datad => VCC,
	cin => \INST_Program_counter|Add0~3\,
	combout => \INST_Program_counter|Add0~4_combout\,
	cout => \INST_Program_counter|Add0~5\);

-- Location: LCCOMB_X20_Y20_N16
\INST_Program_counter|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~6_combout\ = (\INST_Program_counter|r_PROG_COUNT\(3) & (!\INST_Program_counter|Add0~5\)) # (!\INST_Program_counter|r_PROG_COUNT\(3) & ((\INST_Program_counter|Add0~5\) # (GND)))
-- \INST_Program_counter|Add0~7\ = CARRY((!\INST_Program_counter|Add0~5\) # (!\INST_Program_counter|r_PROG_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(3),
	datad => VCC,
	cin => \INST_Program_counter|Add0~5\,
	combout => \INST_Program_counter|Add0~6_combout\,
	cout => \INST_Program_counter|Add0~7\);

-- Location: LCCOMB_X20_Y20_N18
\INST_Program_counter|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~8_combout\ = (\INST_Program_counter|r_PROG_COUNT\(4) & (\INST_Program_counter|Add0~7\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(4) & (!\INST_Program_counter|Add0~7\ & VCC))
-- \INST_Program_counter|Add0~9\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(4) & !\INST_Program_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(4),
	datad => VCC,
	cin => \INST_Program_counter|Add0~7\,
	combout => \INST_Program_counter|Add0~8_combout\,
	cout => \INST_Program_counter|Add0~9\);

-- Location: LCCOMB_X20_Y20_N20
\INST_Program_counter|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~10_combout\ = (\INST_Program_counter|r_PROG_COUNT\(5) & (!\INST_Program_counter|Add0~9\)) # (!\INST_Program_counter|r_PROG_COUNT\(5) & ((\INST_Program_counter|Add0~9\) # (GND)))
-- \INST_Program_counter|Add0~11\ = CARRY((!\INST_Program_counter|Add0~9\) # (!\INST_Program_counter|r_PROG_COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(5),
	datad => VCC,
	cin => \INST_Program_counter|Add0~9\,
	combout => \INST_Program_counter|Add0~10_combout\,
	cout => \INST_Program_counter|Add0~11\);

-- Location: LCCOMB_X20_Y20_N22
\INST_Program_counter|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~12_combout\ = (\INST_Program_counter|r_PROG_COUNT\(6) & (\INST_Program_counter|Add0~11\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(6) & (!\INST_Program_counter|Add0~11\ & VCC))
-- \INST_Program_counter|Add0~13\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(6) & !\INST_Program_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(6),
	datad => VCC,
	cin => \INST_Program_counter|Add0~11\,
	combout => \INST_Program_counter|Add0~12_combout\,
	cout => \INST_Program_counter|Add0~13\);

-- Location: FF_X20_Y20_N23
\INST_branch_control|r_PC_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~12_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(6));

-- Location: LCCOMB_X20_Y20_N24
\INST_Program_counter|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~14_combout\ = (\INST_Program_counter|r_PROG_COUNT\(7) & (!\INST_Program_counter|Add0~13\)) # (!\INST_Program_counter|r_PROG_COUNT\(7) & ((\INST_Program_counter|Add0~13\) # (GND)))
-- \INST_Program_counter|Add0~15\ = CARRY((!\INST_Program_counter|Add0~13\) # (!\INST_Program_counter|r_PROG_COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(7),
	datad => VCC,
	cin => \INST_Program_counter|Add0~13\,
	combout => \INST_Program_counter|Add0~14_combout\,
	cout => \INST_Program_counter|Add0~15\);

-- Location: FF_X20_Y20_N25
\INST_branch_control|r_PC_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~14_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(7));

-- Location: LCCOMB_X20_Y20_N26
\INST_Program_counter|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~16_combout\ = (\INST_Program_counter|r_PROG_COUNT\(8) & (\INST_Program_counter|Add0~15\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(8) & (!\INST_Program_counter|Add0~15\ & VCC))
-- \INST_Program_counter|Add0~17\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(8) & !\INST_Program_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(8),
	datad => VCC,
	cin => \INST_Program_counter|Add0~15\,
	combout => \INST_Program_counter|Add0~16_combout\,
	cout => \INST_Program_counter|Add0~17\);

-- Location: FF_X20_Y20_N27
\INST_branch_control|r_PC_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~16_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(8));

-- Location: M9K_X25_Y22_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0201008145A18000000000000000C0F1E8140A06030180201008145A3D028140C06030040201028B43",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_sp71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_i_CORE_CLK~inputclkctrl_outclk\,
	clk1 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena1 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X20_Y19_N23
\INST_instruction_decoder|o_Address_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(12),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(10));

-- Location: LCCOMB_X20_Y20_N28
\INST_Program_counter|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~18_combout\ = \INST_Program_counter|r_PROG_COUNT\(9) $ (\INST_Program_counter|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(9),
	cin => \INST_Program_counter|Add0~17\,
	combout => \INST_Program_counter|Add0~18_combout\);

-- Location: FF_X20_Y20_N29
\INST_branch_control|r_PC_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~18_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(9));

-- Location: LCCOMB_X21_Y20_N22
\INST_branch_control|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux0~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_instruction_decoder|o_Address_MEM\(10))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_branch_control|o_ADDRESS[6]~0_combout\ & 
-- ((\INST_branch_control|r_PC_ADDRESS\(9)))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(10),
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_branch_control|r_PC_ADDRESS\(9),
	combout => \INST_branch_control|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\INST_instruction_decoder|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux3~0_combout\ = (\INST_InstrucReg|r_register\(31) & (\INST_InstrucReg|r_register\(28) & \INST_InstrucReg|r_register\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|Mux3~0_combout\);

-- Location: M9K_X25_Y21_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000101400000000000000008203A8942A091084400000000000450E8541219088200000002028",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_sp71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_i_CORE_CLK~inputclkctrl_outclk\,
	clk1 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena1 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y24_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008020080400000000000000000000000000000000000000020080400000000000000000004010080000",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_sp71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_i_CORE_CLK~inputclkctrl_outclk\,
	clk1 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena1 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y20_N16
\INST_instruction_decoder|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux3~1_combout\ = (!\INST_InstrucReg|r_register\(27) & (!\INST_InstrucReg|r_register\(25) & \INST_InstrucReg|r_register\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(27),
	datab => \INST_InstrucReg|r_register\(25),
	datad => \INST_InstrucReg|r_register\(26),
	combout => \INST_instruction_decoder|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y20_N16
\INST_instruction_decoder|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux3~2_combout\ = (\INST_instruction_decoder|Mux3~0_combout\ & ((\INST_InstrucReg|r_register\(29) & ((\INST_instruction_decoder|Mux3~1_combout\))) # (!\INST_InstrucReg|r_register\(29) & (\INST_InstrucReg|r_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|Mux3~0_combout\,
	datab => \INST_InstrucReg|r_register\(29),
	datac => \INST_InstrucReg|r_register\(2),
	datad => \INST_instruction_decoder|Mux3~1_combout\,
	combout => \INST_instruction_decoder|Mux3~2_combout\);

-- Location: FF_X23_Y20_N17
\INST_instruction_decoder|o_BRANCH_CONTROL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux3~2_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(2));

-- Location: LCCOMB_X22_Y20_N6
\INST_branch_control|o_ADDRESS[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[6]~1_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & ((!\INST_instruction_decoder|o_BRANCH_CONTROL\(0)) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(1)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & 
-- ((\INST_instruction_decoder|o_BRANCH_CONTROL\(1)) # (\INST_instruction_decoder|o_BRANCH_CONTROL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|o_ADDRESS[6]~1_combout\);

-- Location: FF_X21_Y20_N23
\INST_branch_control|o_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux0~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(9));

-- Location: LCCOMB_X21_Y20_N10
\INST_Program_counter|r_PROG_COUNT~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~10_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(9))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(9),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~18_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~10_combout\);

-- Location: FF_X21_Y20_N11
\INST_Program_counter|r_PROG_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~10_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(9));

-- Location: FF_X21_Y16_N9
\INST_instruction_decoder|o_Address_MEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(11),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(9));

-- Location: LCCOMB_X21_Y20_N12
\INST_branch_control|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux1~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_instruction_decoder|o_Address_MEM\(9)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- (\INST_branch_control|r_PC_ADDRESS\(8))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (((\INST_instruction_decoder|o_Address_MEM\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|r_PC_ADDRESS\(8),
	datab => \INST_instruction_decoder|o_Address_MEM\(9),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux1~0_combout\);

-- Location: FF_X21_Y20_N13
\INST_branch_control|o_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux1~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(8));

-- Location: LCCOMB_X21_Y20_N28
\INST_Program_counter|r_PROG_COUNT~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~9_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & ((\INST_branch_control|o_ADDRESS\(8)))) # (!\INST_branch_control|o_PC_LOAD~q\ & (\INST_Program_counter|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_Program_counter|Add0~16_combout\,
	datad => \INST_branch_control|o_ADDRESS\(8),
	combout => \INST_Program_counter|r_PROG_COUNT~9_combout\);

-- Location: FF_X21_Y20_N29
\INST_Program_counter|r_PROG_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~9_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(8));

-- Location: FF_X20_Y19_N19
\INST_instruction_decoder|o_Address_MEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(10),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(8));

-- Location: LCCOMB_X21_Y20_N30
\INST_branch_control|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux2~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- (\INST_branch_control|r_PC_ADDRESS\(7))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (((\INST_instruction_decoder|o_Address_MEM\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|r_PC_ADDRESS\(7),
	datab => \INST_instruction_decoder|o_Address_MEM\(8),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux2~0_combout\);

-- Location: FF_X21_Y20_N31
\INST_branch_control|o_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux2~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(7));

-- Location: LCCOMB_X21_Y20_N14
\INST_Program_counter|r_PROG_COUNT~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~8_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(7))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(7),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~14_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~8_combout\);

-- Location: FF_X21_Y20_N15
\INST_Program_counter|r_PROG_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~8_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(7));

-- Location: FF_X20_Y19_N27
\INST_instruction_decoder|o_Address_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(9),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(7));

-- Location: LCCOMB_X20_Y20_N4
\INST_branch_control|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux3~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (((\INST_instruction_decoder|o_Address_MEM\(7))))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_branch_control|o_ADDRESS[6]~0_combout\ & 
-- (\INST_branch_control|r_PC_ADDRESS\(6))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|r_PC_ADDRESS\(6),
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_Address_MEM\(7),
	combout => \INST_branch_control|Mux3~0_combout\);

-- Location: FF_X20_Y20_N5
\INST_branch_control|o_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux3~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(6));

-- Location: LCCOMB_X21_Y20_N4
\INST_Program_counter|r_PROG_COUNT~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~7_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(6))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(6),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~12_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~7_combout\);

-- Location: FF_X21_Y20_N5
\INST_Program_counter|r_PROG_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~7_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(6));

-- Location: FF_X20_Y19_N9
\INST_instruction_decoder|o_Address_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(8),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(6));

-- Location: FF_X20_Y20_N21
\INST_branch_control|r_PC_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~10_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(5));

-- Location: LCCOMB_X21_Y20_N20
\INST_branch_control|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux4~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_instruction_decoder|o_Address_MEM\(6))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- ((\INST_branch_control|r_PC_ADDRESS\(5)))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datab => \INST_instruction_decoder|o_Address_MEM\(6),
	datac => \INST_branch_control|r_PC_ADDRESS\(5),
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux4~0_combout\);

-- Location: FF_X21_Y20_N21
\INST_branch_control|o_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux4~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(5));

-- Location: LCCOMB_X21_Y20_N26
\INST_Program_counter|r_PROG_COUNT~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~6_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(5))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(5),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~10_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~6_combout\);

-- Location: FF_X21_Y20_N27
\INST_Program_counter|r_PROG_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~6_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(5));

-- Location: FF_X23_Y19_N5
\INST_instruction_decoder|o_Address_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(7),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(5));

-- Location: FF_X20_Y20_N19
\INST_branch_control|r_PC_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~8_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(4));

-- Location: LCCOMB_X20_Y20_N6
\INST_branch_control|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux5~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_instruction_decoder|o_Address_MEM\(5))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- ((\INST_branch_control|r_PC_ADDRESS\(4)))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(5),
	datab => \INST_branch_control|r_PC_ADDRESS\(4),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux5~0_combout\);

-- Location: FF_X20_Y20_N7
\INST_branch_control|o_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux5~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(4));

-- Location: LCCOMB_X21_Y20_N8
\INST_Program_counter|r_PROG_COUNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~5_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(4))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(4),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~8_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~5_combout\);

-- Location: FF_X21_Y20_N9
\INST_Program_counter|r_PROG_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~5_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(4));

-- Location: FF_X23_Y20_N9
\INST_instruction_decoder|o_OPCODE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(30),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(2));

-- Location: FF_X23_Y20_N3
\INST_instruction_decoder|o_OPCODE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(31),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(3));

-- Location: LCCOMB_X21_Y17_N28
\INST_ALU|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux10~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(2) $ (!\INST_instruction_decoder|o_OPCODE\(3))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(2) $ (!\INST_instruction_decoder|o_OPCODE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y16_N22
\INST_ALU|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~10_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1)) # (\INST_instruction_decoder|o_OPCODE\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(2) & !\INST_instruction_decoder|o_OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~10_combout\);

-- Location: LCCOMB_X22_Y20_N4
\INST_ALU|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~17_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & !\INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|Mux4~17_combout\);

-- Location: FF_X20_Y19_N13
\INST_instruction_decoder|o_IMM_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(0),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_IMM_enable~q\);

-- Location: LCCOMB_X19_Y19_N12
\INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X19_Y19_N13
\INST_GPR|r_REGISTER_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(26));

-- Location: IOIBUF_X0_Y22_N8
\i_MC_GPIO_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(7),
	o => \i_MC_GPIO_data[7]~input_o\);

-- Location: FF_X24_Y17_N9
\INST_instruction_decoder|o_Address_MEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(16),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(14));

-- Location: IOIBUF_X26_Y0_N8
\i_MC_I2C_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(7),
	o => \i_MC_I2C_data[7]~input_o\);

-- Location: LCCOMB_X24_Y18_N30
\INST_MEMORY_CONTROL|o_MC_MUX_data[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[7]~7_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_I2C_data[7]~input_o\))) # (!\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_GPIO_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_GPIO_data[7]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_I2C_data[7]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[7]~7_combout\);

-- Location: LCCOMB_X26_Y18_N8
\INST_instruction_decoder|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux2~0_combout\ = (\INST_InstrucReg|r_register\(31) & (!\INST_InstrucReg|r_register\(28) & (!\INST_InstrucReg|r_register\(29) & \INST_InstrucReg|r_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(29),
	datad => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|Mux2~0_combout\);

-- Location: FF_X26_Y18_N9
\INST_instruction_decoder|o_BUS_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux2~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BUS_select\(0));

-- Location: CLKCTRL_G12
\INST_instruction_decoder|o_BUS_select[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y18_N2
\INST_data_bus|o_MEMORY[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(7) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux7~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_MEMORY\(7),
	datac => \INST_data_bus|Mux7~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(7));

-- Location: FF_X24_Y17_N13
\INST_instruction_decoder|o_Address_MEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(17),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(15));

-- Location: LCCOMB_X24_Y17_N8
\INST_MEMORY_CONTROL|Mux72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux72~0_combout\ = ((\INST_MEMORY_CONTROL|r_MEM_state\(1)) # ((\INST_instruction_decoder|o_Address_MEM\(15)) # (!\INST_instruction_decoder|o_Address_MEM\(14)))) # (!\INST_MEMORY_CONTROL|r_MEM_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datab => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	datac => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \INST_instruction_decoder|o_Address_MEM\(15),
	combout => \INST_MEMORY_CONTROL|Mux72~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\ = (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_BUS_select\(0) & \INST_control_unit|r_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	datac => \INST_instruction_decoder|o_BUS_select\(0),
	datad => \INST_control_unit|r_state\(4),
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\);

-- Location: FF_X23_Y18_N3
\INST_MEMORY_CONTROL|o_MC_RAM_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(7),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(7));

-- Location: FF_X14_Y15_N27
\INST_DATA_RAM|MEMORY_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_data\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(43));

-- Location: LCCOMB_X14_Y15_N24
\INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X14_Y15_N25
\INST_DATA_RAM|MEMORY_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(44));

-- Location: M9K_X25_Y23_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C28030000000000000000000000000200000040100009C280300000400000080200013850060000",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_sp71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_i_CORE_CLK~inputclkctrl_outclk\,
	clk1 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena1 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: FF_X24_Y17_N5
\INST_instruction_decoder|o_Address_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(15),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(13));

-- Location: LCCOMB_X24_Y17_N4
\INST_MEMORY_CONTROL|Mux60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux60~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_MEMORY_CONTROL|o_MC_RAM_address\(13))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datac => \INST_instruction_decoder|o_Address_MEM\(13),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux60~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\INST_MEMORY_CONTROL|o_MC_RAM_address[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[13]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux60~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux60~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[13]~feeder_combout\);

-- Location: FF_X24_Y17_N15
\INST_MEMORY_CONTROL|o_MC_RAM_address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(13));

-- Location: LCCOMB_X24_Y17_N18
\INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & (((\INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_BUS_select\(0) & 
-- (\INST_control_unit|r_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BUS_select\(0),
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\);

-- Location: FF_X24_Y17_N19
\INST_MEMORY_CONTROL|o_MC_RAM_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\);

-- Location: LCCOMB_X24_Y17_N30
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1) = (\INST_MEMORY_CONTROL|o_MC_RAM_address\(13) & \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1));

-- Location: FF_X23_Y20_N25
\INST_instruction_decoder|o_Address_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(2),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(0));

-- Location: LCCOMB_X19_Y18_N0
\INST_MEMORY_CONTROL|Mux73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux73~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(0)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_MEMORY_CONTROL|o_MC_RAM_address\(0),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux73~0_combout\);

-- Location: LCCOMB_X19_Y18_N10
\INST_MEMORY_CONTROL|o_MC_RAM_address[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[0]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux73~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux73~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[0]~feeder_combout\);

-- Location: FF_X19_Y18_N11
\INST_MEMORY_CONTROL|o_MC_RAM_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

-- Location: LCCOMB_X19_Y18_N8
\INST_instruction_decoder|o_Address_MEM[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\ = \INST_InstrucReg|r_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(3),
	combout => \INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\);

-- Location: FF_X19_Y18_N9
\INST_instruction_decoder|o_Address_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(1));

-- Location: LCCOMB_X19_Y18_N22
\INST_MEMORY_CONTROL|Mux72~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux72~1_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_MEMORY_CONTROL|o_MC_RAM_address\(1))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|o_MC_RAM_address\(1),
	datac => \INST_instruction_decoder|o_Address_MEM\(1),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux72~1_combout\);

-- Location: LCCOMB_X19_Y18_N12
\INST_MEMORY_CONTROL|o_MC_RAM_address[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[1]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux72~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux72~1_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[1]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\INST_MEMORY_CONTROL|o_MC_RAM_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(1));

-- Location: LCCOMB_X19_Y18_N26
\INST_instruction_decoder|o_Address_MEM[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\ = \INST_InstrucReg|r_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(4),
	combout => \INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\);

-- Location: FF_X19_Y18_N27
\INST_instruction_decoder|o_Address_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(2));

-- Location: LCCOMB_X19_Y18_N4
\INST_MEMORY_CONTROL|Mux71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux71~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(2)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(2),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(2),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux71~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\INST_MEMORY_CONTROL|o_MC_RAM_address[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[2]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux71~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux71~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[2]~feeder_combout\);

-- Location: FF_X19_Y18_N31
\INST_MEMORY_CONTROL|o_MC_RAM_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(2));

-- Location: LCCOMB_X20_Y18_N24
\INST_MEMORY_CONTROL|Mux70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux70~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(3)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(3),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(3),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux70~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\INST_MEMORY_CONTROL|o_MC_RAM_address[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[3]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux70~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux70~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[3]~feeder_combout\);

-- Location: FF_X20_Y18_N23
\INST_MEMORY_CONTROL|o_MC_RAM_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(3));

-- Location: FF_X20_Y19_N15
\INST_instruction_decoder|o_Address_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(6),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(4));

-- Location: LCCOMB_X19_Y18_N24
\INST_MEMORY_CONTROL|Mux69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux69~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(4)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(4),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(4),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux69~0_combout\);

-- Location: FF_X19_Y18_N25
\INST_MEMORY_CONTROL|o_MC_RAM_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(4));

-- Location: LCCOMB_X19_Y18_N14
\INST_MEMORY_CONTROL|Mux68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux68~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(5)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(5),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(5),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux68~0_combout\);

-- Location: FF_X19_Y18_N15
\INST_MEMORY_CONTROL|o_MC_RAM_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(5));

-- Location: LCCOMB_X19_Y18_N16
\INST_MEMORY_CONTROL|Mux67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux67~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(6)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(6),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(6),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux67~0_combout\);

-- Location: FF_X19_Y18_N17
\INST_MEMORY_CONTROL|o_MC_RAM_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(6));

-- Location: LCCOMB_X19_Y18_N6
\INST_MEMORY_CONTROL|Mux66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux66~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(7)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(7),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(7),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux66~0_combout\);

-- Location: FF_X19_Y18_N7
\INST_MEMORY_CONTROL|o_MC_RAM_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(7));

-- Location: LCCOMB_X19_Y18_N20
\INST_MEMORY_CONTROL|Mux65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux65~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(8)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(8),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(8),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux65~0_combout\);

-- Location: FF_X19_Y18_N21
\INST_MEMORY_CONTROL|o_MC_RAM_address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(8));

-- Location: LCCOMB_X19_Y18_N18
\INST_MEMORY_CONTROL|Mux64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux64~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(9)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(9),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(9),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux64~0_combout\);

-- Location: FF_X19_Y18_N19
\INST_MEMORY_CONTROL|o_MC_RAM_address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(9));

-- Location: LCCOMB_X19_Y18_N28
\INST_MEMORY_CONTROL|Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux63~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(10)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(10),
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(10),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux63~0_combout\);

-- Location: FF_X19_Y18_N29
\INST_MEMORY_CONTROL|o_MC_RAM_address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|Mux63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(10));

-- Location: FF_X24_Y20_N31
\INST_instruction_decoder|o_Address_MEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(13),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(11));

-- Location: LCCOMB_X24_Y20_N30
\INST_MEMORY_CONTROL|Mux62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux62~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_MEMORY_CONTROL|o_MC_RAM_address\(11)))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	datac => \INST_instruction_decoder|o_Address_MEM\(11),
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(11),
	combout => \INST_MEMORY_CONTROL|Mux62~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\INST_MEMORY_CONTROL|o_MC_RAM_address[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[11]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux62~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[11]~feeder_combout\);

-- Location: FF_X24_Y20_N25
\INST_MEMORY_CONTROL|o_MC_RAM_address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(11));

-- Location: FF_X24_Y17_N27
\INST_instruction_decoder|o_Address_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(14),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(12));

-- Location: LCCOMB_X24_Y17_N26
\INST_MEMORY_CONTROL|Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|Mux61~0_combout\ = (\INST_MEMORY_CONTROL|Mux72~0_combout\ & (\INST_MEMORY_CONTROL|o_MC_RAM_address\(12))) # (!\INST_MEMORY_CONTROL|Mux72~0_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|o_MC_RAM_address\(12),
	datac => \INST_instruction_decoder|o_Address_MEM\(12),
	datad => \INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_MEMORY_CONTROL|Mux61~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\INST_MEMORY_CONTROL|o_MC_RAM_address[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_RAM_address[12]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux61~0_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_RAM_address[12]~feeder_combout\);

-- Location: FF_X24_Y17_N23
\INST_MEMORY_CONTROL|o_MC_RAM_address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_RAM_address[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_address\(12));

-- Location: M9K_X13_Y12_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N10
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux60~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux60~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\);

-- Location: FF_X24_Y15_N11
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X24_Y17_N2
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0) = (!\INST_MEMORY_CONTROL|o_MC_RAM_address\(13) & \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0));

-- Location: M9K_X13_Y11_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N26
\INST_DATA_RAM|MEMORY~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~47_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\)) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~47_combout\);

-- Location: LCCOMB_X21_Y15_N12
\INST_DATA_RAM|MEMORY_rtl_0_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[16]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux66~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux66~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X21_Y15_N13
\INST_DATA_RAM|MEMORY_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(16));

-- Location: LCCOMB_X21_Y15_N18
\INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(7),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X21_Y15_N19
\INST_DATA_RAM|MEMORY_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(15));

-- Location: FF_X21_Y15_N23
\INST_DATA_RAM|MEMORY_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux67~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(14));

-- Location: LCCOMB_X21_Y15_N20
\INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(6),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X21_Y15_N21
\INST_DATA_RAM|MEMORY_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(13));

-- Location: LCCOMB_X21_Y15_N22
\INST_DATA_RAM|MEMORY~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~27_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(16) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(15) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(14) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(13))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(16) 
-- & (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(15) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(14) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(16),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(15),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(14),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(13),
	combout => \INST_DATA_RAM|MEMORY~27_combout\);

-- Location: LCCOMB_X21_Y15_N10
\INST_DATA_RAM|MEMORY_rtl_0_bypass[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[2]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux73~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux73~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X21_Y15_N11
\INST_DATA_RAM|MEMORY_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(2));

-- Location: LCCOMB_X21_Y15_N28
\INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(0),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X21_Y15_N29
\INST_DATA_RAM|MEMORY_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(1));

-- Location: FF_X21_Y15_N17
\INST_DATA_RAM|MEMORY_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux72~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(4));

-- Location: LCCOMB_X21_Y15_N6
\INST_DATA_RAM|MEMORY_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[3]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(1),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X21_Y15_N7
\INST_DATA_RAM|MEMORY_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(3));

-- Location: LCCOMB_X21_Y15_N16
\INST_DATA_RAM|MEMORY~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~24_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(2) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(1) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(4) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(3))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(2) & 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(1) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(4) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(2),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(1),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(4),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(3),
	combout => \INST_DATA_RAM|MEMORY~24_combout\);

-- Location: LCCOMB_X21_Y15_N30
\INST_DATA_RAM|MEMORY_rtl_0_bypass[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[7]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(3),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X21_Y15_N31
\INST_DATA_RAM|MEMORY_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(7));

-- Location: LCCOMB_X21_Y15_N14
\INST_DATA_RAM|MEMORY_rtl_0_bypass[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[6]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux71~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux71~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X21_Y15_N15
\INST_DATA_RAM|MEMORY_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(6));

-- Location: FF_X21_Y15_N9
\INST_DATA_RAM|MEMORY_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux70~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(8));

-- Location: LCCOMB_X21_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[5]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(2),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X21_Y15_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(5));

-- Location: LCCOMB_X21_Y15_N8
\INST_DATA_RAM|MEMORY~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~25_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(7) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(8) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(6) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(5))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(7) & 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(8) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(6) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(7),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(6),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(8),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(5),
	combout => \INST_DATA_RAM|MEMORY~25_combout\);

-- Location: LCCOMB_X22_Y15_N6
\INST_DATA_RAM|MEMORY_rtl_0_bypass[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[10]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux69~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux69~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X22_Y15_N7
\INST_DATA_RAM|MEMORY_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(10));

-- Location: LCCOMB_X22_Y15_N2
\INST_DATA_RAM|MEMORY_rtl_0_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[11]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(5),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X22_Y15_N3
\INST_DATA_RAM|MEMORY_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(11));

-- Location: FF_X22_Y15_N5
\INST_DATA_RAM|MEMORY_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux68~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(12));

-- Location: LCCOMB_X22_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[9]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(4),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X22_Y15_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(9));

-- Location: LCCOMB_X22_Y15_N4
\INST_DATA_RAM|MEMORY~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~26_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(10) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(9) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(11) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(12))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(10) & 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(9) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(11) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(10),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(11),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(12),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(9),
	combout => \INST_DATA_RAM|MEMORY~26_combout\);

-- Location: LCCOMB_X21_Y15_N24
\INST_DATA_RAM|MEMORY~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~28_combout\ = (\INST_DATA_RAM|MEMORY~27_combout\ & (\INST_DATA_RAM|MEMORY~24_combout\ & (\INST_DATA_RAM|MEMORY~25_combout\ & \INST_DATA_RAM|MEMORY~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~27_combout\,
	datab => \INST_DATA_RAM|MEMORY~24_combout\,
	datac => \INST_DATA_RAM|MEMORY~25_combout\,
	datad => \INST_DATA_RAM|MEMORY~26_combout\,
	combout => \INST_DATA_RAM|MEMORY~28_combout\);

-- Location: LCCOMB_X23_Y17_N6
\INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(9),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X23_Y17_N7
\INST_DATA_RAM|MEMORY_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(19));

-- Location: LCCOMB_X23_Y17_N2
\INST_DATA_RAM|MEMORY_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[18]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux65~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux65~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X23_Y17_N3
\INST_DATA_RAM|MEMORY_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(18));

-- Location: FF_X23_Y17_N13
\INST_DATA_RAM|MEMORY_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux64~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(20));

-- Location: LCCOMB_X23_Y17_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[17]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(8),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X23_Y17_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(17));

-- Location: LCCOMB_X23_Y17_N12
\INST_DATA_RAM|MEMORY~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~29_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(19) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(20) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(18) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(17))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(19) 
-- & (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(20) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(18) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(19),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(18),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(20),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(17),
	combout => \INST_DATA_RAM|MEMORY~29_combout\);

-- Location: LCCOMB_X24_Y16_N12
\INST_DATA_RAM|MEMORY_rtl_0_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[24]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|Mux62~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X24_Y16_N13
\INST_DATA_RAM|MEMORY_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(24));

-- Location: LCCOMB_X24_Y16_N2
\INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_address\(11),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X24_Y16_N3
\INST_DATA_RAM|MEMORY_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(23));

-- Location: FF_X24_Y16_N31
\INST_DATA_RAM|MEMORY_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(22));

-- Location: LCCOMB_X24_Y16_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[21]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_address\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|o_MC_RAM_address\(10),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X24_Y16_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(21));

-- Location: LCCOMB_X24_Y16_N30
\INST_DATA_RAM|MEMORY~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~30_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(24) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(23) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(22) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(21))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(24) 
-- & (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(23) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(22) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(24),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(23),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(22),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(21),
	combout => \INST_DATA_RAM|MEMORY~30_combout\);

-- Location: FF_X24_Y17_N11
\INST_DATA_RAM|MEMORY_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(0));

-- Location: LCCOMB_X24_Y17_N6
\INST_DATA_RAM|MEMORY_rtl_0_bypass[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[28]~feeder_combout\ = \INST_MEMORY_CONTROL|Mux60~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_MEMORY_CONTROL|Mux60~0_combout\,
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X24_Y17_N7
\INST_DATA_RAM|MEMORY_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(28));

-- Location: FF_X24_Y17_N21
\INST_DATA_RAM|MEMORY_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(27));

-- Location: FF_X24_Y17_N17
\INST_DATA_RAM|MEMORY_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|Mux61~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(26));

-- Location: FF_X24_Y17_N25
\INST_DATA_RAM|MEMORY_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_address\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(25));

-- Location: LCCOMB_X24_Y17_N16
\INST_DATA_RAM|MEMORY~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~31_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(28) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(27) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(26) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(25))))) # (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(28) 
-- & (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(27) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(26) $ (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(28),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(27),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(26),
	datad => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(25),
	combout => \INST_DATA_RAM|MEMORY~31_combout\);

-- Location: LCCOMB_X24_Y17_N10
\INST_DATA_RAM|MEMORY~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~32_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(0) & \INST_DATA_RAM|MEMORY~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(0),
	datad => \INST_DATA_RAM|MEMORY~31_combout\,
	combout => \INST_DATA_RAM|MEMORY~32_combout\);

-- Location: LCCOMB_X24_Y15_N26
\INST_DATA_RAM|MEMORY~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~33_combout\ = (\INST_DATA_RAM|MEMORY~28_combout\ & (\INST_DATA_RAM|MEMORY~29_combout\ & (\INST_DATA_RAM|MEMORY~30_combout\ & \INST_DATA_RAM|MEMORY~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~28_combout\,
	datab => \INST_DATA_RAM|MEMORY~29_combout\,
	datac => \INST_DATA_RAM|MEMORY~30_combout\,
	datad => \INST_DATA_RAM|MEMORY~32_combout\,
	combout => \INST_DATA_RAM|MEMORY~33_combout\);

-- Location: LCCOMB_X14_Y15_N18
\INST_DATA_RAM|MEMORY~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~48_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(44) & ((\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(43))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY~47_combout\))))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(44) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(43),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(44),
	datac => \INST_DATA_RAM|MEMORY~47_combout\,
	datad => \INST_DATA_RAM|MEMORY~33_combout\,
	combout => \INST_DATA_RAM|MEMORY~48_combout\);

-- Location: FF_X14_Y15_N19
\INST_DATA_RAM|o_RAM_MC_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~48_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(7));

-- Location: LCCOMB_X26_Y18_N2
\INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14)) # (\INST_instruction_decoder|o_Address_MEM\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datac => \INST_instruction_decoder|o_Address_MEM\(15),
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\);

-- Location: LCCOMB_X22_Y18_N14
r_MEM_write_enable : cycloneiii_lcell_comb
-- Equation(s):
-- \r_MEM_write_enable~combout\ = (\INST_control_unit|r_state\(4) & \INST_instruction_decoder|o_BUS_select\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(4),
	datab => \INST_instruction_decoder|o_BUS_select\(0),
	combout => \r_MEM_write_enable~combout\);

-- Location: LCCOMB_X26_Y18_N10
\INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\ = (\INST_MEMORY_CONTROL|r_MEM_state\(0) & (!\INST_MEMORY_CONTROL|r_MEM_state\(1) & ((!\INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\) # (!\r_MEM_write_enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_MEM_write_enable~combout\,
	datab => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datac => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	datad => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~8_combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\);

-- Location: FF_X24_Y18_N31
\INST_MEMORY_CONTROL|o_MC_MUX_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[7]~7_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(7),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(7));

-- Location: LCCOMB_X26_Y18_N16
\INST_instruction_decoder|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux1~0_combout\ = (\INST_InstrucReg|r_register\(31) & (\INST_InstrucReg|r_register\(28) & (\INST_InstrucReg|r_register\(29) & !\INST_InstrucReg|r_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(29),
	datad => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|Mux1~0_combout\);

-- Location: FF_X26_Y18_N17
\INST_instruction_decoder|o_BUS_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux1~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BUS_select\(1));

-- Location: LCCOMB_X24_Y18_N8
\INST_data_bus|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux7~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(7))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|o_MC_MUX_data\(7),
	datac => \INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_ALU|r_ALU_Result\(7),
	combout => \INST_data_bus|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\INST_data_bus|o_REGISTER[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(7) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(7))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_REGISTER\(7),
	datac => \INST_data_bus|Mux7~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(7));

-- Location: LCCOMB_X24_Y18_N4
\INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\ = \INST_data_bus|o_REGISTER\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(7),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X24_Y18_N5
\INST_GPR|r_REGISTER_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(25));

-- Location: LCCOMB_X26_Y18_N12
\INST_instruction_decoder|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux0~0_combout\ = (\INST_InstrucReg|r_register\(31) & (((\INST_InstrucReg|r_register\(28) & \INST_InstrucReg|r_register\(29))) # (!\INST_InstrucReg|r_register\(30)))) # (!\INST_InstrucReg|r_register\(31) & 
-- ((\INST_InstrucReg|r_register\(28)) # ((\INST_InstrucReg|r_register\(29)) # (\INST_InstrucReg|r_register\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(29),
	datad => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|Mux0~0_combout\);

-- Location: FF_X26_Y18_N13
\INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux0~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\);

-- Location: LCCOMB_X26_Y20_N6
\INST_GPR|r_REGISTER~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~38_combout\ = (\INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\ & \INST_control_unit|r_state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\,
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_GPR|r_REGISTER~38_combout\);

-- Location: IOIBUF_X28_Y0_N15
\i_MC_GPIO_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(0),
	o => \i_MC_GPIO_data[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\i_MC_I2C_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(0),
	o => \i_MC_I2C_data[0]~input_o\);

-- Location: LCCOMB_X24_Y18_N28
\INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_I2C_data[0]~input_o\))) # (!\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_GPIO_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_GPIO_data[0]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_I2C_data[0]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X24_Y15_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(30));

-- Location: LCCOMB_X23_Y18_N22
\INST_data_bus|o_MEMORY[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(0) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|Mux0~0_combout\)) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|o_MEMORY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|Mux0~0_combout\,
	datac => \INST_data_bus|o_MEMORY\(0),
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(0));

-- Location: FF_X23_Y18_N23
\INST_MEMORY_CONTROL|o_MC_RAM_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(0),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(0));

-- Location: FF_X24_Y15_N21
\INST_DATA_RAM|MEMORY_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(29));

-- Location: M9K_X25_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y16_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N20
\INST_DATA_RAM|MEMORY~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~23_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datab => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~23_combout\);

-- Location: LCCOMB_X24_Y15_N8
\INST_DATA_RAM|MEMORY~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~34_combout\ = (\INST_DATA_RAM|MEMORY~33_combout\ & (((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(29))))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(30) & ((\INST_DATA_RAM|MEMORY~23_combout\))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(30) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~33_combout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(30),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(29),
	datad => \INST_DATA_RAM|MEMORY~23_combout\,
	combout => \INST_DATA_RAM|MEMORY~34_combout\);

-- Location: FF_X24_Y15_N9
\INST_DATA_RAM|o_RAM_MC_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~34_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(0));

-- Location: FF_X24_Y18_N29
\INST_MEMORY_CONTROL|o_MC_MUX_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(0),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(0));

-- Location: LCCOMB_X23_Y18_N24
\INST_data_bus|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux0~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(0))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BUS_select\(1),
	datab => \INST_MEMORY_CONTROL|o_MC_MUX_data\(0),
	datad => \INST_ALU|r_ALU_Result\(0),
	combout => \INST_data_bus|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y18_N14
\INST_data_bus|o_REGISTER[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(0) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(0))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_REGISTER\(0),
	datac => \INST_data_bus|Mux0~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(0));

-- Location: LCCOMB_X24_Y20_N8
\INST_instruction_decoder|o_REGISTER_C[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[0]~feeder_combout\ = \INST_InstrucReg|r_register\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(23),
	combout => \INST_instruction_decoder|o_REGISTER_C[0]~feeder_combout\);

-- Location: FF_X24_Y20_N9
\INST_instruction_decoder|o_REGISTER_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_REGISTER_C[0]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C\(0));

-- Location: LCCOMB_X24_Y20_N18
\INST_instruction_decoder|o_REGISTER_C[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ = \INST_InstrucReg|r_register\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(24),
	combout => \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\);

-- Location: FF_X24_Y20_N19
\INST_instruction_decoder|o_REGISTER_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C\(1));

-- Location: LCCOMB_X26_Y20_N14
\INST_instruction_decoder|o_REGISTER_C[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\ = \INST_InstrucReg|r_register\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(25),
	combout => \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\);

-- Location: FF_X26_Y20_N15
\INST_instruction_decoder|o_REGISTER_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C\(2));

-- Location: LCCOMB_X26_Y20_N22
\INST_instruction_decoder|o_REGISTER_C[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[3]~feeder_combout\ = \INST_InstrucReg|r_register\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(26),
	combout => \INST_instruction_decoder|o_REGISTER_C[3]~feeder_combout\);

-- Location: FF_X26_Y20_N23
\INST_instruction_decoder|o_REGISTER_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_REGISTER_C[3]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C\(3));

-- Location: LCCOMB_X26_Y20_N28
\INST_instruction_decoder|o_REGISTER_C[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\ = \INST_InstrucReg|r_register\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(27),
	combout => \INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\);

-- Location: FF_X26_Y20_N29
\INST_instruction_decoder|o_REGISTER_C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_REGISTER_C\(4));

-- Location: LCCOMB_X26_Y20_N20
\~QUARTUS_CREATED_GND~I\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOIBUF_X26_Y29_N15
\i_MC_I2C_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(1),
	o => \i_MC_I2C_data[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_MC_GPIO_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(1),
	o => \i_MC_GPIO_data[1]~input_o\);

-- Location: LCCOMB_X24_Y18_N6
\INST_MEMORY_CONTROL|o_MC_MUX_data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[1]~1_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_I2C_data[1]~input_o\)) # (!\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_GPIO_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[1]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_GPIO_data[1]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[1]~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\INST_data_bus|o_MEMORY[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(1) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|Mux1~0_combout\)) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|o_MEMORY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|Mux1~0_combout\,
	datac => \INST_data_bus|o_MEMORY\(1),
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(1));

-- Location: FF_X23_Y18_N17
\INST_MEMORY_CONTROL|o_MC_RAM_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(1),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(1));

-- Location: LCCOMB_X23_Y15_N24
\INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_data\(1),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X23_Y15_N25
\INST_DATA_RAM|MEMORY_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(31));

-- Location: LCCOMB_X24_Y15_N22
\INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X24_Y15_N23
\INST_DATA_RAM|MEMORY_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(32));

-- Location: M9K_X25_Y11_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y12_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N16
\INST_DATA_RAM|MEMORY~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~35_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\))) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~35_combout\);

-- Location: LCCOMB_X24_Y15_N14
\INST_DATA_RAM|MEMORY~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~36_combout\ = (\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(31))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(32) & ((\INST_DATA_RAM|MEMORY~35_combout\))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(32) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~33_combout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(31),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(32),
	datad => \INST_DATA_RAM|MEMORY~35_combout\,
	combout => \INST_DATA_RAM|MEMORY~36_combout\);

-- Location: FF_X24_Y15_N15
\INST_DATA_RAM|o_RAM_MC_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~36_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(1));

-- Location: FF_X24_Y18_N7
\INST_MEMORY_CONTROL|o_MC_MUX_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[1]~1_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(1),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(1));

-- Location: LCCOMB_X24_Y20_N12
\INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder_combout\ = \INST_InstrucReg|r_register\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(18),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X24_Y20_N13
\INST_GPR|r_REGISTER_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(2));

-- Location: LCCOMB_X24_Y20_N20
\INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(1),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X24_Y20_N21
\INST_GPR|r_REGISTER_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(3));

-- Location: FF_X24_Y20_N11
\INST_GPR|r_REGISTER_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(19),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(4));

-- Location: FF_X24_Y20_N3
\INST_GPR|r_REGISTER_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(1));

-- Location: LCCOMB_X24_Y20_N10
\INST_GPR|r_REGISTER~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~19_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(2) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(3) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(4))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(2) & 
-- (!\INST_GPR|r_REGISTER_rtl_0_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(3) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(2),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(3),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(4),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(1),
	combout => \INST_GPR|r_REGISTER~19_combout\);

-- Location: FF_X26_Y20_N5
\INST_GPR|r_REGISTER_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_GPR|r_REGISTER~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(0));

-- Location: FF_X26_Y20_N19
\INST_GPR|r_REGISTER_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(22),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(10));

-- Location: LCCOMB_X26_Y20_N2
\INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(4),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X26_Y20_N3
\INST_GPR|r_REGISTER_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(9));

-- Location: LCCOMB_X26_Y20_N18
\INST_GPR|r_REGISTER~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~21_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(0) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(10) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(0),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(10),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(9),
	combout => \INST_GPR|r_REGISTER~21_combout\);

-- Location: FF_X26_Y20_N31
\INST_GPR|r_REGISTER_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(7));

-- Location: FF_X26_Y20_N21
\INST_GPR|r_REGISTER_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(20),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(6));

-- Location: FF_X26_Y20_N9
\INST_GPR|r_REGISTER_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(21),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(8));

-- Location: FF_X26_Y20_N1
\INST_GPR|r_REGISTER_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(5));

-- Location: LCCOMB_X26_Y20_N8
\INST_GPR|r_REGISTER~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~20_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(7) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(8) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(6) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(5))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(7) & 
-- (!\INST_GPR|r_REGISTER_rtl_0_bypass\(8) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(6) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(7),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(6),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(8),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(5),
	combout => \INST_GPR|r_REGISTER~20_combout\);

-- Location: LCCOMB_X26_Y20_N4
\INST_GPR|r_REGISTER~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~22_combout\ = (\INST_GPR|r_REGISTER~19_combout\ & (\INST_GPR|r_REGISTER~21_combout\ & \INST_GPR|r_REGISTER~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~19_combout\,
	datab => \INST_GPR|r_REGISTER~21_combout\,
	datad => \INST_GPR|r_REGISTER~20_combout\,
	combout => \INST_GPR|r_REGISTER~22_combout\);

-- Location: IOIBUF_X41_Y17_N1
\i_MC_I2C_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(2),
	o => \i_MC_I2C_data[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\i_MC_GPIO_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(2),
	o => \i_MC_GPIO_data[2]~input_o\);

-- Location: LCCOMB_X26_Y18_N22
\INST_MEMORY_CONTROL|o_MC_MUX_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[2]~2_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_I2C_data[2]~input_o\)) # (!\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_GPIO_data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[2]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_GPIO_data[2]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[2]~2_combout\);

-- Location: LCCOMB_X14_Y15_N28
\INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X14_Y15_N29
\INST_DATA_RAM|MEMORY_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(34));

-- Location: LCCOMB_X23_Y18_N26
\INST_data_bus|o_MEMORY[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(2) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux2~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|o_MEMORY\(2),
	datac => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	datad => \INST_data_bus|Mux2~0_combout\,
	combout => \INST_data_bus|o_MEMORY\(2));

-- Location: FF_X23_Y18_N27
\INST_MEMORY_CONTROL|o_MC_RAM_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(2),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(2));

-- Location: LCCOMB_X14_Y15_N4
\INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_data\(2),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X14_Y15_N5
\INST_DATA_RAM|MEMORY_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(33));

-- Location: M9K_X13_Y17_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y16_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N6
\INST_DATA_RAM|MEMORY~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~37_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~37_combout\);

-- Location: LCCOMB_X14_Y15_N20
\INST_DATA_RAM|MEMORY~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~38_combout\ = (\INST_DATA_RAM|MEMORY~33_combout\ & (((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(33))))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(34) & ((\INST_DATA_RAM|MEMORY~37_combout\))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(34) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~33_combout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(34),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(33),
	datad => \INST_DATA_RAM|MEMORY~37_combout\,
	combout => \INST_DATA_RAM|MEMORY~38_combout\);

-- Location: FF_X14_Y15_N21
\INST_DATA_RAM|o_RAM_MC_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~38_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(2));

-- Location: FF_X26_Y18_N23
\INST_MEMORY_CONTROL|o_MC_MUX_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[2]~2_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(2),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(2));

-- Location: IOIBUF_X0_Y13_N15
\i_MC_I2C_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(3),
	o => \i_MC_I2C_data[3]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\i_MC_GPIO_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(3),
	o => \i_MC_GPIO_data[3]~input_o\);

-- Location: LCCOMB_X26_Y18_N24
\INST_MEMORY_CONTROL|o_MC_MUX_data[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[3]~3_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_I2C_data[3]~input_o\)) # (!\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_GPIO_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[3]~input_o\,
	datab => \i_MC_GPIO_data[3]~input_o\,
	datad => \INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[3]~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\INST_data_bus|o_MEMORY[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(3) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux3~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_MEMORY\(3),
	datac => \INST_data_bus|Mux3~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(3));

-- Location: FF_X23_Y18_N29
\INST_MEMORY_CONTROL|o_MC_RAM_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(3),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(3));

-- Location: LCCOMB_X14_Y15_N10
\INST_DATA_RAM|MEMORY_rtl_0_bypass[35]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[35]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_data\(3),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X14_Y15_N11
\INST_DATA_RAM|MEMORY_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(35));

-- Location: M9K_X13_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y18_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N8
\INST_DATA_RAM|MEMORY~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~39_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~39_combout\);

-- Location: LCCOMB_X14_Y15_N30
\INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X14_Y15_N31
\INST_DATA_RAM|MEMORY_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(36));

-- Location: LCCOMB_X14_Y15_N22
\INST_DATA_RAM|MEMORY~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~40_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(36) & ((\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(35))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY~39_combout\))))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(36) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(35),
	datab => \INST_DATA_RAM|MEMORY~39_combout\,
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(36),
	datad => \INST_DATA_RAM|MEMORY~33_combout\,
	combout => \INST_DATA_RAM|MEMORY~40_combout\);

-- Location: FF_X14_Y15_N23
\INST_DATA_RAM|o_RAM_MC_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~40_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(3));

-- Location: FF_X26_Y18_N25
\INST_MEMORY_CONTROL|o_MC_MUX_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[3]~3_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(3),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(3));

-- Location: LCCOMB_X20_Y18_N20
\INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X20_Y18_N21
\INST_GPR|r_REGISTER_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(18));

-- Location: FF_X19_Y18_N1
\INST_GPR|r_REGISTER_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_REGISTER\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(17));

-- Location: LCCOMB_X20_Y18_N6
\INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X20_Y18_N7
\INST_GPR|r_REGISTER_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(20));

-- Location: IOIBUF_X0_Y13_N22
\i_MC_I2C_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(5),
	o => \i_MC_I2C_data[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\i_MC_GPIO_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(5),
	o => \i_MC_GPIO_data[5]~input_o\);

-- Location: LCCOMB_X26_Y18_N18
\INST_MEMORY_CONTROL|o_MC_MUX_data[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[5]~5_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_I2C_data[5]~input_o\)) # (!\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_GPIO_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[5]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_GPIO_data[5]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[5]~5_combout\);

-- Location: LCCOMB_X23_Y18_N6
\INST_data_bus|o_MEMORY[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(5) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux5~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|o_MEMORY\(5),
	datac => \INST_data_bus|Mux5~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(5));

-- Location: FF_X23_Y18_N7
\INST_MEMORY_CONTROL|o_MC_RAM_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(5),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(5));

-- Location: FF_X24_Y17_N31
\INST_DATA_RAM|MEMORY_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(39));

-- Location: LCCOMB_X24_Y15_N30
\INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X24_Y15_N31
\INST_DATA_RAM|MEMORY_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(40));

-- Location: M9K_X25_Y18_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N28
\INST_DATA_RAM|MEMORY~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~43_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\)) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~43_combout\);

-- Location: LCCOMB_X24_Y15_N12
\INST_DATA_RAM|MEMORY~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~44_combout\ = (\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(39))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(40) & ((\INST_DATA_RAM|MEMORY~43_combout\))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(40) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~33_combout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(39),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(40),
	datad => \INST_DATA_RAM|MEMORY~43_combout\,
	combout => \INST_DATA_RAM|MEMORY~44_combout\);

-- Location: FF_X24_Y15_N13
\INST_DATA_RAM|o_RAM_MC_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~44_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(5));

-- Location: FF_X26_Y18_N19
\INST_MEMORY_CONTROL|o_MC_MUX_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[5]~5_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(5),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(5));

-- Location: LCCOMB_X24_Y18_N0
\INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ = \INST_data_bus|o_REGISTER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(5),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\INST_GPR|r_REGISTER_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(21));

-- Location: LCCOMB_X20_Y18_N0
\INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X20_Y18_N1
\INST_GPR|r_REGISTER_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(22));

-- Location: IOIBUF_X23_Y0_N22
\i_MC_I2C_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(6),
	o => \i_MC_I2C_data[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_MC_GPIO_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(6),
	o => \i_MC_GPIO_data[6]~input_o\);

-- Location: LCCOMB_X24_Y18_N20
\INST_MEMORY_CONTROL|o_MC_MUX_data[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[6]~6_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_I2C_data[6]~input_o\)) # (!\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_GPIO_data[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[6]~input_o\,
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datad => \i_MC_GPIO_data[6]~input_o\,
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[6]~6_combout\);

-- Location: LCCOMB_X23_Y18_N4
\INST_data_bus|o_MEMORY[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(6) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux6~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_MEMORY\(6),
	datac => \INST_data_bus|Mux6~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(6));

-- Location: FF_X23_Y18_N5
\INST_MEMORY_CONTROL|o_MC_RAM_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(6),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(6));

-- Location: FF_X24_Y15_N25
\INST_DATA_RAM|MEMORY_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_MEMORY_CONTROL|o_MC_RAM_data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(41));

-- Location: LCCOMB_X24_Y15_N4
\INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X24_Y15_N5
\INST_DATA_RAM|MEMORY_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(42));

-- Location: M9K_X25_Y13_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y14_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N6
\INST_DATA_RAM|MEMORY~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~45_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~45_combout\);

-- Location: LCCOMB_X24_Y15_N18
\INST_DATA_RAM|MEMORY~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~46_combout\ = (\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(41))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY_rtl_0_bypass\(42) & ((\INST_DATA_RAM|MEMORY~45_combout\))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(42) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY~33_combout\,
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(41),
	datac => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(42),
	datad => \INST_DATA_RAM|MEMORY~45_combout\,
	combout => \INST_DATA_RAM|MEMORY~46_combout\);

-- Location: FF_X24_Y15_N19
\INST_DATA_RAM|o_RAM_MC_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~46_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(6));

-- Location: FF_X24_Y18_N21
\INST_MEMORY_CONTROL|o_MC_MUX_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[6]~6_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(6),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(6));

-- Location: LCCOMB_X20_Y16_N8
\INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X20_Y16_N9
\INST_GPR|r_REGISTER_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(24));

-- Location: LCCOMB_X24_Y18_N10
\INST_GPR|r_REGISTER_rtl_1_bypass[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[23]~feeder_combout\ = \INST_data_bus|o_REGISTER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(6),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[23]~feeder_combout\);

-- Location: FF_X24_Y18_N11
\INST_GPR|r_REGISTER_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(23));

-- Location: LCCOMB_X24_Y20_N28
\INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder_combout\ = \INST_InstrucReg|r_register\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(15),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder_combout\);

-- Location: FF_X24_Y20_N29
\INST_GPR|r_REGISTER_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(6));

-- Location: FF_X26_Y20_N17
\INST_GPR|r_REGISTER_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(5));

-- Location: FF_X26_Y20_N11
\INST_GPR|r_REGISTER_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(16),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(8));

-- Location: FF_X26_Y20_N7
\INST_GPR|r_REGISTER_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(7));

-- Location: LCCOMB_X26_Y20_N10
\INST_GPR|r_REGISTER~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~15_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(6) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(5) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(8) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(7))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(6) & 
-- (!\INST_GPR|r_REGISTER_rtl_1_bypass\(5) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(8) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(6),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(5),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(8),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(7),
	combout => \INST_GPR|r_REGISTER~15_combout\);

-- Location: LCCOMB_X24_Y20_N22
\INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\ = \INST_InstrucReg|r_register\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(13),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\);

-- Location: FF_X24_Y20_N23
\INST_GPR|r_REGISTER_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(2));

-- Location: LCCOMB_X24_Y20_N14
\INST_GPR|r_REGISTER_rtl_1_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[3]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(1),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X24_Y20_N15
\INST_GPR|r_REGISTER_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(3));

-- Location: FF_X24_Y20_N17
\INST_GPR|r_REGISTER_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(14),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(4));

-- Location: FF_X24_Y20_N1
\INST_GPR|r_REGISTER_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(1));

-- Location: LCCOMB_X24_Y20_N16
\INST_GPR|r_REGISTER~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~14_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(2) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(3) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(4))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(2) & 
-- (!\INST_GPR|r_REGISTER_rtl_1_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(3) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(2),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(3),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(4),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(1),
	combout => \INST_GPR|r_REGISTER~14_combout\);

-- Location: FF_X26_Y20_N27
\INST_GPR|r_REGISTER_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_GPR|r_REGISTER~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(0));

-- Location: FF_X26_Y20_N13
\INST_GPR|r_REGISTER_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(17),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(10));

-- Location: LCCOMB_X26_Y20_N24
\INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(4),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder_combout\);

-- Location: FF_X26_Y20_N25
\INST_GPR|r_REGISTER_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(9));

-- Location: LCCOMB_X26_Y20_N12
\INST_GPR|r_REGISTER~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~16_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(0) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(10) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(0),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(10),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(9),
	combout => \INST_GPR|r_REGISTER~16_combout\);

-- Location: LCCOMB_X26_Y20_N26
\INST_GPR|r_REGISTER~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~17_combout\ = (\INST_GPR|r_REGISTER~15_combout\ & (\INST_GPR|r_REGISTER~14_combout\ & \INST_GPR|r_REGISTER~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~15_combout\,
	datab => \INST_GPR|r_REGISTER~14_combout\,
	datad => \INST_GPR|r_REGISTER~16_combout\,
	combout => \INST_GPR|r_REGISTER~17_combout\);

-- Location: M9K_X25_Y19_N0
\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register32x8:INST_GPR|altsyncram:r_REGISTER_rtl_1|altsyncram_6bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_GPR|r_REGISTER~38_combout\,
	portbre => VCC,
	portbaddrstall => \INST_control_unit|ALT_INV_r_state\(1),
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y16_N30
\INST_GPR|r_REGISTER~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~26_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(24) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(23))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(24) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(24),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(23),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\,
	combout => \INST_GPR|r_REGISTER~26_combout\);

-- Location: FF_X21_Y16_N31
\INST_GPR|o_GPR_ALU_data_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~26_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(6));

-- Location: LCCOMB_X21_Y16_N24
\INST_B_imm_multiplexer|o_DATA[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[6]~3_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(9)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(6),
	datac => \INST_instruction_decoder|o_Address_MEM\(9),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\);

-- Location: LCCOMB_X23_Y20_N24
\INST_ALU|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux9~0_combout\ = (!\INST_instruction_decoder|o_OPCODE\(3) & !\INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\ = \INST_data_bus|o_REGISTER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(6),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X24_Y18_N27
\INST_GPR|r_REGISTER_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(23));

-- Location: LCCOMB_X24_Y19_N24
\INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X24_Y19_N25
\INST_GPR|r_REGISTER_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(24));

-- Location: M9K_X25_Y20_N0
\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register32x8:INST_GPR|altsyncram:r_REGISTER_rtl_0|altsyncram_6bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_GPR|r_REGISTER~38_combout\,
	portbre => VCC,
	portbaddrstall => \INST_control_unit|ALT_INV_r_state\(1),
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y19_N30
\INST_GPR|r_REGISTER~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~33_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(23))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(24) & ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\))) 
-- # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(24) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(23),
	datab => \INST_GPR|r_REGISTER~22_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(24),
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\,
	combout => \INST_GPR|r_REGISTER~33_combout\);

-- Location: FF_X23_Y19_N31
\INST_GPR|o_GPR_ALU_data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~33_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(6));

-- Location: LCCOMB_X21_Y16_N8
\INST_ALU|r_ALU_Result~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~18_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(6)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(9)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(6),
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_instruction_decoder|o_Address_MEM\(9),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|r_ALU_Result~18_combout\);

-- Location: LCCOMB_X24_Y20_N26
\INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X24_Y20_N27
\INST_GPR|r_REGISTER_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(26));

-- Location: LCCOMB_X24_Y18_N22
\INST_GPR|r_REGISTER_rtl_0_bypass[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[25]~feeder_combout\ = \INST_data_bus|o_REGISTER\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(7),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X24_Y18_N23
\INST_GPR|r_REGISTER_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(25));

-- Location: LCCOMB_X22_Y20_N30
\INST_GPR|r_REGISTER~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~31_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(25))))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(26) & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(26) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~22_combout\,
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(26),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(25),
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\,
	combout => \INST_GPR|r_REGISTER~31_combout\);

-- Location: FF_X22_Y20_N31
\INST_GPR|o_GPR_ALU_data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~31_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(7));

-- Location: LCCOMB_X20_Y18_N10
\INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X20_Y18_N11
\INST_GPR|r_REGISTER_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(14));

-- Location: LCCOMB_X22_Y20_N26
\INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\ = \INST_data_bus|o_REGISTER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(1),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X22_Y20_N27
\INST_GPR|r_REGISTER_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(13));

-- Location: LCCOMB_X20_Y19_N0
\INST_GPR|r_REGISTER~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~24_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(14) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(13))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(14) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(14),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(13),
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\,
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~24_combout\);

-- Location: FF_X20_Y19_N1
\INST_GPR|o_GPR_ALU_data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~24_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(1));

-- Location: LCCOMB_X20_Y19_N14
\INST_B_imm_multiplexer|o_DATA[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[1]~1_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(1),
	datac => \INST_instruction_decoder|o_Address_MEM\(4),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\);

-- Location: LCCOMB_X27_Y18_N0
\INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ = \INST_data_bus|o_REGISTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(0),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X27_Y18_N1
\INST_GPR|r_REGISTER_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(11));

-- Location: LCCOMB_X21_Y18_N16
\INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X21_Y18_N17
\INST_GPR|r_REGISTER_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(12));

-- Location: LCCOMB_X20_Y19_N2
\INST_GPR|r_REGISTER~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~18_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(12) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(11))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(12) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(11),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(12),
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~18_combout\);

-- Location: FF_X20_Y19_N3
\INST_GPR|o_GPR_ALU_data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~18_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(0));

-- Location: LCCOMB_X20_Y19_N20
\INST_B_imm_multiplexer|o_DATA[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[0]~0_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(3)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(0),
	datac => \INST_instruction_decoder|o_Address_MEM\(3),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\);

-- Location: LCCOMB_X19_Y16_N22
\INST_ALU|ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~7_combout\ = (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(7),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftRight0~7_combout\);

-- Location: LCCOMB_X24_Y19_N10
\INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ = \INST_data_bus|o_REGISTER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(3),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X24_Y19_N11
\INST_GPR|r_REGISTER_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(17));

-- Location: LCCOMB_X21_Y18_N2
\INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X21_Y18_N3
\INST_GPR|r_REGISTER_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(18));

-- Location: LCCOMB_X20_Y19_N30
\INST_GPR|r_REGISTER~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~30_combout\ = (\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(17))) # (!\INST_GPR|r_REGISTER~17_combout\ & ((\INST_GPR|r_REGISTER_rtl_1_bypass\(18) & ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\))) 
-- # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(18) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(17),
	datab => \INST_GPR|r_REGISTER~17_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(18),
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\,
	combout => \INST_GPR|r_REGISTER~30_combout\);

-- Location: FF_X20_Y19_N31
\INST_GPR|o_GPR_ALU_data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~30_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(3));

-- Location: LCCOMB_X20_Y19_N16
\INST_B_imm_multiplexer|o_DATA[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[3]~7_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(3),
	datac => \INST_instruction_decoder|o_Address_MEM\(6),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\);

-- Location: LCCOMB_X20_Y19_N22
\INST_B_imm_multiplexer|o_DATA[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[7]~2_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(10)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(7),
	datac => \INST_instruction_decoder|o_Address_MEM\(10),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\);

-- Location: LCCOMB_X20_Y19_N26
\INST_B_imm_multiplexer|o_DATA[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[4]~5_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(7)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(4),
	datac => \INST_instruction_decoder|o_Address_MEM\(7),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\);

-- Location: LCCOMB_X20_Y19_N10
\INST_ALU|tmp[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~0_combout\ = (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (!\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & !\INST_B_imm_multiplexer|o_DATA[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	combout => \INST_ALU|tmp[8]~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\INST_ALU|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~6_combout\ = (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & \INST_ALU|tmp[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y16_N10
\INST_ALU|r_ALU_Result[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~13_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(0)) # (\INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|Mux4~6_combout\,
	combout => \INST_ALU|r_ALU_Result[6]~13_combout\);

-- Location: LCCOMB_X21_Y16_N0
\INST_ALU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|r_ALU_Result~18_combout\) # ((!\INST_ALU|r_ALU_Result[6]~13_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_ALU|ShiftRight0~7_combout\ & 
-- \INST_ALU|r_ALU_Result[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result~18_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|ShiftRight0~7_combout\,
	datad => \INST_ALU|r_ALU_Result[6]~13_combout\,
	combout => \INST_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\INST_ALU|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ $ (!\INST_ALU|Mux1~0_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & !\INST_ALU|Mux1~0_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => \INST_ALU|Mux1~0_combout\,
	combout => \INST_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y20_N16
\INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X22_Y20_N17
\INST_GPR|r_REGISTER_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(22));

-- Location: LCCOMB_X24_Y18_N16
\INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\ = \INST_data_bus|o_REGISTER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(5),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X24_Y18_N17
\INST_GPR|r_REGISTER_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(21));

-- Location: LCCOMB_X22_Y20_N24
\INST_GPR|r_REGISTER~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~32_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(21))))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(22) & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(22) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~22_combout\,
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(22),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(21),
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\,
	combout => \INST_GPR|r_REGISTER~32_combout\);

-- Location: FF_X22_Y20_N25
\INST_GPR|o_GPR_ALU_data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~32_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(5));

-- Location: LCCOMB_X22_Y20_N10
\INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X22_Y20_N11
\INST_GPR|r_REGISTER_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(20));

-- Location: FF_X21_Y18_N5
\INST_GPR|r_REGISTER_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_REGISTER\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(19));

-- Location: LCCOMB_X22_Y20_N18
\INST_GPR|r_REGISTER~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~34_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(20) & ((\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(19)))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- (\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\)))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(20) & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(20),
	datab => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\,
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(19),
	datad => \INST_GPR|r_REGISTER~22_combout\,
	combout => \INST_GPR|r_REGISTER~34_combout\);

-- Location: FF_X22_Y20_N19
\INST_GPR|o_GPR_ALU_data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~34_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(4));

-- Location: LCCOMB_X26_Y19_N4
\INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\ = \INST_data_bus|o_REGISTER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_data_bus|o_REGISTER\(2),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X26_Y19_N5
\INST_GPR|r_REGISTER_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(15));

-- Location: LCCOMB_X24_Y19_N14
\INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\INST_GPR|r_REGISTER_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(16));

-- Location: LCCOMB_X23_Y19_N8
\INST_GPR|r_REGISTER~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~35_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(16) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(15))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(16) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(15),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(16),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\,
	combout => \INST_GPR|r_REGISTER~35_combout\);

-- Location: FF_X23_Y19_N9
\INST_GPR|o_GPR_ALU_data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~35_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(2));

-- Location: LCCOMB_X27_Y18_N2
\INST_GPR|r_REGISTER_rtl_0_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[11]~feeder_combout\ = \INST_data_bus|o_REGISTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(0),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X27_Y18_N3
\INST_GPR|r_REGISTER_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(11));

-- Location: LCCOMB_X21_Y18_N14
\INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X21_Y18_N15
\INST_GPR|r_REGISTER_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(12));

-- Location: LCCOMB_X22_Y20_N28
\INST_GPR|r_REGISTER~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~23_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(11))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(12) & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(12) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~22_combout\,
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(11),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(12),
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \INST_GPR|r_REGISTER~23_combout\);

-- Location: FF_X22_Y20_N29
\INST_GPR|o_GPR_ALU_data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~23_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(0));

-- Location: LCCOMB_X20_Y17_N8
\INST_ALU|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~1_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(0) & !\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	cout => \INST_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y17_N10
\INST_ALU|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~3_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_ALU|LessThan0~1_cout\)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\) # 
-- (!\INST_ALU|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan0~1_cout\,
	cout => \INST_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y17_N12
\INST_ALU|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~5_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_ALU|LessThan0~3_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2)) # 
-- (!\INST_ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_ALU|LessThan0~3_cout\,
	cout => \INST_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y17_N14
\INST_ALU|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~7_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & !\INST_ALU|LessThan0~5_cout\)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # 
-- (!\INST_ALU|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan0~5_cout\,
	cout => \INST_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y17_N16
\INST_ALU|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~9_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4) & !\INST_ALU|LessThan0~7_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)) # 
-- (!\INST_ALU|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => VCC,
	cin => \INST_ALU|LessThan0~7_cout\,
	cout => \INST_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y17_N18
\INST_ALU|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~11_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & !\INST_ALU|LessThan0~9_cout\)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & ((\INST_B_imm_multiplexer|o_DATA[5]~4_combout\) # 
-- (!\INST_ALU|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan0~9_cout\,
	cout => \INST_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y17_N20
\INST_ALU|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~13_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_ALU|LessThan0~11_cout\) # (!\INST_B_imm_multiplexer|o_DATA[6]~3_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & 
-- !\INST_ALU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan0~11_cout\,
	cout => \INST_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y17_N22
\INST_ALU|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (\INST_ALU|LessThan0~13_cout\ & \INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_ALU|LessThan0~13_cout\) # 
-- (\INST_GPR|o_GPR_ALU_data_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	cin => \INST_ALU|LessThan0~13_cout\,
	combout => \INST_ALU|LessThan0~14_combout\);

-- Location: LCCOMB_X20_Y17_N24
\INST_ALU|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (!\INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datac => \INST_ALU|LessThan0~14_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X20_Y17_N6
\INST_ALU|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux1~5_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(2) $ ((!\INST_GPR|o_GPR_ALU_data_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_ALU|Mux1~5_combout\,
	combout => \INST_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y20_N8
\INST_ALU|r_ALU_Result[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_Address_MEM\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_instruction_decoder|o_Address_MEM\(0),
	combout => \INST_ALU|r_ALU_Result[6]~11_combout\);

-- Location: LCCOMB_X23_Y20_N2
\INST_ALU|r_ALU_Result[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~20_combout\ = (\INST_instruction_decoder|o_OPCODE\(3)) # ((!\INST_instruction_decoder|o_OPCODE\(2) & \INST_ALU|r_ALU_Result[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_ALU|r_ALU_Result[6]~11_combout\,
	combout => \INST_ALU|r_ALU_Result[6]~20_combout\);

-- Location: LCCOMB_X19_Y19_N2
\INST_ALU|ShiftLeft1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft1~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_ALU|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X20_Y16_N30
\INST_ALU|r_ALU_Result[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # (((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\) # (!\INST_ALU|tmp[8]~0_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|r_ALU_Result[6]~14_combout\);

-- Location: LCCOMB_X19_Y19_N22
\INST_ALU|ShiftLeft1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft1~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => \INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_ALU|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X20_Y16_N12
\INST_ALU|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~10_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X20_Y16_N26
\INST_ALU|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~11_combout\ = (\INST_ALU|ShiftLeft0~10_combout\) # ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~10_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X21_Y19_N12
\INST_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0) $ (VCC))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0) & VCC))
-- \INST_ALU|Add1~1\ = CARRY((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_GPR|o_GPR_ALU_data_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => VCC,
	combout => \INST_ALU|Add1~0_combout\,
	cout => \INST_ALU|Add1~1\);

-- Location: LCCOMB_X21_Y19_N14
\INST_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_ALU|Add1~1\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_ALU|Add1~1\)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_ALU|Add1~1\)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_ALU|Add1~1\) # (GND)))))
-- \INST_ALU|Add1~3\ = CARRY((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_ALU|Add1~1\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((!\INST_ALU|Add1~1\) # (!\INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => VCC,
	cin => \INST_ALU|Add1~1\,
	combout => \INST_ALU|Add1~2_combout\,
	cout => \INST_ALU|Add1~3\);

-- Location: LCCOMB_X21_Y19_N16
\INST_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~4_combout\ = ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(2) $ (!\INST_ALU|Add1~3\)))) # (GND)
-- \INST_ALU|Add1~5\ = CARRY((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2)) # (!\INST_ALU|Add1~3\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_ALU|Add1~3\,
	combout => \INST_ALU|Add1~4_combout\,
	cout => \INST_ALU|Add1~5\);

-- Location: LCCOMB_X21_Y19_N18
\INST_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~6_combout\ = (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_ALU|Add1~5\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_ALU|Add1~5\)))) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_ALU|Add1~5\)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_ALU|Add1~5\) # (GND)))))
-- \INST_ALU|Add1~7\ = CARRY((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_ALU|Add1~5\)) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((!\INST_ALU|Add1~5\) # (!\INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => VCC,
	cin => \INST_ALU|Add1~5\,
	combout => \INST_ALU|Add1~6_combout\,
	cout => \INST_ALU|Add1~7\);

-- Location: LCCOMB_X21_Y19_N20
\INST_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~8_combout\ = ((\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(4) $ (!\INST_ALU|Add1~7\)))) # (GND)
-- \INST_ALU|Add1~9\ = CARRY((\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)) # (!\INST_ALU|Add1~7\))) # (!\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4) & !\INST_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => VCC,
	cin => \INST_ALU|Add1~7\,
	combout => \INST_ALU|Add1~8_combout\,
	cout => \INST_ALU|Add1~9\);

-- Location: LCCOMB_X21_Y19_N22
\INST_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_ALU|Add1~9\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add1~9\)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add1~9\)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & ((\INST_ALU|Add1~9\) # (GND)))))
-- \INST_ALU|Add1~11\ = CARRY((\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(5) & !\INST_ALU|Add1~9\)) # (!\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & ((!\INST_ALU|Add1~9\) # (!\INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_ALU|Add1~9\,
	combout => \INST_ALU|Add1~10_combout\,
	cout => \INST_ALU|Add1~11\);

-- Location: LCCOMB_X21_Y19_N24
\INST_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~12_combout\ = ((\INST_GPR|o_GPR_ALU_data_A\(6) $ (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ $ (!\INST_ALU|Add1~11\)))) # (GND)
-- \INST_ALU|Add1~13\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(6) & ((\INST_B_imm_multiplexer|o_DATA[6]~3_combout\) # (!\INST_ALU|Add1~11\))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & !\INST_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~11\,
	combout => \INST_ALU|Add1~12_combout\,
	cout => \INST_ALU|Add1~13\);

-- Location: LCCOMB_X20_Y16_N14
\INST_ALU|r_ALU_Result[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~16_combout\ = (\INST_ALU|r_ALU_Result[6]~14_combout\ & ((\INST_instruction_decoder|o_OPCODE\(1)))) # (!\INST_ALU|r_ALU_Result[6]~14_combout\ & (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|r_ALU_Result[6]~14_combout\,
	combout => \INST_ALU|r_ALU_Result[6]~16_combout\);

-- Location: LCCOMB_X20_Y19_N8
\INST_ALU|Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~19_combout\ = (\INST_ALU|tmp[8]~0_combout\ & ((\INST_instruction_decoder|o_IMM_enable~q\ & ((!\INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (!\INST_GPR|o_GPR_ALU_data_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(3),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_instruction_decoder|o_Address_MEM\(6),
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|Mux4~19_combout\);

-- Location: LCCOMB_X20_Y16_N16
\INST_ALU|r_ALU_Result[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[6]~15_combout\ = (\INST_ALU|r_ALU_Result[6]~14_combout\ & ((\INST_ALU|Mux4~19_combout\) # (!\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|r_ALU_Result[6]~14_combout\,
	datad => \INST_ALU|Mux4~19_combout\,
	combout => \INST_ALU|r_ALU_Result[6]~15_combout\);

-- Location: LCCOMB_X20_Y16_N24
\INST_ALU|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~2_combout\ = (\INST_ALU|r_ALU_Result[6]~16_combout\ & (\INST_ALU|ShiftLeft0~11_combout\ & ((\INST_ALU|r_ALU_Result[6]~15_combout\)))) # (!\INST_ALU|r_ALU_Result[6]~16_combout\ & (((\INST_ALU|Add1~12_combout\) # 
-- (!\INST_ALU|r_ALU_Result[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~11_combout\,
	datab => \INST_ALU|Add1~12_combout\,
	datac => \INST_ALU|r_ALU_Result[6]~16_combout\,
	datad => \INST_ALU|r_ALU_Result[6]~15_combout\,
	combout => \INST_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y16_N22
\INST_ALU|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~3_combout\ = (\INST_ALU|r_ALU_Result[6]~14_combout\ & (((\INST_ALU|Mux1~2_combout\)))) # (!\INST_ALU|r_ALU_Result[6]~14_combout\ & ((\INST_ALU|Mux1~2_combout\ & (\INST_ALU|ShiftLeft1~1_combout\)) # (!\INST_ALU|Mux1~2_combout\ & 
-- ((\INST_ALU|ShiftLeft1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft1~1_combout\,
	datab => \INST_ALU|r_ALU_Result[6]~14_combout\,
	datac => \INST_ALU|ShiftLeft1~0_combout\,
	datad => \INST_ALU|Mux1~2_combout\,
	combout => \INST_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X21_Y16_N16
\INST_ALU|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~27_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(9))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(6))))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_instruction_decoder|o_Address_MEM\(9),
	datac => \INST_GPR|o_GPR_ALU_data_B\(6),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|Add0~27_combout\);

-- Location: LCCOMB_X21_Y19_N4
\INST_ALU|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~28_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(6))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_ALU|Add1~12_combout\,
	combout => \INST_ALU|Add0~28_combout\);

-- Location: LCCOMB_X21_Y19_N0
\INST_ALU|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~23_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(5)))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(5),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_instruction_decoder|o_Address_MEM\(8),
	combout => \INST_ALU|Add0~23_combout\);

-- Location: LCCOMB_X21_Y19_N6
\INST_ALU|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~24_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(5))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_ALU|Add1~10_combout\,
	combout => \INST_ALU|Add0~24_combout\);

-- Location: LCCOMB_X22_Y19_N26
\INST_ALU|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~20_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(4))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => \INST_ALU|Add1~8_combout\,
	combout => \INST_ALU|Add0~20_combout\);

-- Location: LCCOMB_X19_Y19_N6
\INST_ALU|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~19_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(7))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(4))))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(7),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|Add0~19_combout\);

-- Location: LCCOMB_X20_Y19_N12
\INST_ALU|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~15_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(3)))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(3),
	datab => \INST_instruction_decoder|o_Address_MEM\(6),
	datac => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|Add0~15_combout\);

-- Location: LCCOMB_X22_Y19_N20
\INST_ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~16_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(3))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Add1~6_combout\,
	combout => \INST_ALU|Add0~16_combout\);

-- Location: LCCOMB_X21_Y19_N10
\INST_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~12_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(2))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_ALU|Add1~4_combout\,
	combout => \INST_ALU|Add0~12_combout\);

-- Location: LCCOMB_X23_Y19_N4
\INST_ALU|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~11_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(5)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(2)))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_Address_MEM\(5),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|Add0~11_combout\);

-- Location: LCCOMB_X21_Y19_N8
\INST_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(1))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_ALU|Add1~2_combout\,
	combout => \INST_ALU|Add0~8_combout\);

-- Location: LCCOMB_X22_Y19_N28
\INST_ALU|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~7_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(1)))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(1),
	datab => \INST_instruction_decoder|o_Address_MEM\(4),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|Add0~7_combout\);

-- Location: LCCOMB_X22_Y19_N30
\INST_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(0))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Add1~0_combout\,
	combout => \INST_ALU|Add0~2_combout\);

-- Location: LCCOMB_X23_Y19_N22
\INST_ALU|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~11_combout\ = (!\INST_instruction_decoder|o_OPCODE\(2) & \INST_instruction_decoder|o_OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~11_combout\);

-- Location: LCCOMB_X19_Y19_N28
\INST_ALU|ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~15_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X19_Y19_N8
\INST_ALU|ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~16_combout\ = (\INST_ALU|ShiftLeft0~15_combout\) # ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|ShiftLeft1~0_combout\,
	datad => \INST_ALU|ShiftLeft0~15_combout\,
	combout => \INST_ALU|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X19_Y19_N14
\INST_ALU|tmp[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & \INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(7),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_ALU|tmp[8]~1_combout\);

-- Location: LCCOMB_X19_Y19_N0
\INST_ALU|tmp[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_ALU|ShiftLeft1~1_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_ALU|tmp[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|tmp[8]~1_combout\,
	datad => \INST_ALU|ShiftLeft1~1_combout\,
	combout => \INST_ALU|tmp[8]~2_combout\);

-- Location: LCCOMB_X19_Y19_N18
\INST_ALU|tmp[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~3_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|ShiftLeft0~16_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (((\INST_ALU|tmp[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_ALU|ShiftLeft0~16_combout\,
	datad => \INST_ALU|tmp[8]~2_combout\,
	combout => \INST_ALU|tmp[8]~3_combout\);

-- Location: LCCOMB_X21_Y19_N26
\INST_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~14_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(7) & ((\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (\INST_ALU|Add1~13\ & VCC)) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_ALU|Add1~13\)))) # (!\INST_GPR|o_GPR_ALU_data_A\(7) & 
-- ((\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_ALU|Add1~13\)) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_ALU|Add1~13\) # (GND)))))
-- \INST_ALU|Add1~15\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & !\INST_ALU|Add1~13\)) # (!\INST_GPR|o_GPR_ALU_data_A\(7) & ((!\INST_ALU|Add1~13\) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(7),
	datab => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~13\,
	combout => \INST_ALU|Add1~14_combout\,
	cout => \INST_ALU|Add1~15\);

-- Location: LCCOMB_X21_Y19_N28
\INST_ALU|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~16_combout\ = !\INST_ALU|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \INST_ALU|Add1~15\,
	combout => \INST_ALU|Add1~16_combout\);

-- Location: LCCOMB_X21_Y19_N2
\INST_ALU|tmp[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~4_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|tmp[8]~0_combout\ & (\INST_ALU|tmp[8]~3_combout\))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|tmp[8]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|tmp[8]~3_combout\,
	datad => \INST_ALU|Add1~16_combout\,
	combout => \INST_ALU|tmp[8]~4_combout\);

-- Location: LCCOMB_X21_Y19_N30
\INST_ALU|tmp[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~5_combout\ = (\INST_ALU|Mux7~11_combout\ & ((\INST_instruction_decoder|o_OPCODE\(3) & (\INST_ALU|tmp\(8))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|tmp[8]~4_combout\))))) # (!\INST_ALU|Mux7~11_combout\ & 
-- (((\INST_ALU|tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~11_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|tmp\(8),
	datad => \INST_ALU|tmp[8]~4_combout\,
	combout => \INST_ALU|tmp[8]~5_combout\);

-- Location: FF_X21_Y19_N31
\INST_ALU|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_ALU|tmp[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|tmp\(8));

-- Location: LCCOMB_X22_Y16_N24
\INST_ALU|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux9~1_combout\ = (!\INST_instruction_decoder|o_OPCODE\(3) & (!\INST_instruction_decoder|o_OPCODE\(2) & \INST_ALU|tmp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|tmp\(8),
	combout => \INST_ALU|Mux9~1_combout\);

-- Location: LCCOMB_X22_Y16_N8
\INST_ALU|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux9~2_combout\ = (((\INST_instruction_decoder|o_OPCODE\(1)) # (!\INST_instruction_decoder|o_OPCODE\(3))) # (!\INST_instruction_decoder|o_OPCODE\(2))) # (!\INST_instruction_decoder|o_OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|Mux9~2_combout\);

-- Location: FF_X22_Y16_N25
\INST_ALU|r_ALU_carry_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_ALU|Mux9~1_combout\,
	sclr => \INST_instruction_decoder|ALT_INV_o_OPCODE\(0),
	ena => \INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_carry_flag~q\);

-- Location: LCCOMB_X22_Y19_N18
\INST_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0) & \INST_ALU|r_ALU_carry_flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|r_ALU_carry_flag~q\,
	combout => \INST_ALU|Add0~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\INST_ALU|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~1_combout\ = (\INST_ALU|Mux9~0_combout\ & (\INST_ALU|Add0~0_combout\ & ((!\INST_instruction_decoder|o_OPCODE\(1)) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Mux9~0_combout\,
	datad => \INST_ALU|Add0~0_combout\,
	combout => \INST_ALU|Add0~1_combout\);

-- Location: LCCOMB_X22_Y19_N0
\INST_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~4_cout\ = CARRY(!\INST_instruction_decoder|o_OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datad => VCC,
	cout => \INST_ALU|Add0~4_cout\);

-- Location: LCCOMB_X22_Y19_N2
\INST_ALU|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~5_combout\ = (\INST_ALU|Add0~2_combout\ & ((\INST_ALU|Add0~1_combout\ & (\INST_ALU|Add0~4_cout\ & VCC)) # (!\INST_ALU|Add0~1_combout\ & (!\INST_ALU|Add0~4_cout\)))) # (!\INST_ALU|Add0~2_combout\ & ((\INST_ALU|Add0~1_combout\ & 
-- (!\INST_ALU|Add0~4_cout\)) # (!\INST_ALU|Add0~1_combout\ & ((\INST_ALU|Add0~4_cout\) # (GND)))))
-- \INST_ALU|Add0~6\ = CARRY((\INST_ALU|Add0~2_combout\ & (!\INST_ALU|Add0~1_combout\ & !\INST_ALU|Add0~4_cout\)) # (!\INST_ALU|Add0~2_combout\ & ((!\INST_ALU|Add0~4_cout\) # (!\INST_ALU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~2_combout\,
	datab => \INST_ALU|Add0~1_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~4_cout\,
	combout => \INST_ALU|Add0~5_combout\,
	cout => \INST_ALU|Add0~6\);

-- Location: LCCOMB_X22_Y19_N4
\INST_ALU|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~9_combout\ = ((\INST_ALU|Add0~8_combout\ $ (\INST_ALU|Add0~7_combout\ $ (\INST_ALU|Add0~6\)))) # (GND)
-- \INST_ALU|Add0~10\ = CARRY((\INST_ALU|Add0~8_combout\ & ((!\INST_ALU|Add0~6\) # (!\INST_ALU|Add0~7_combout\))) # (!\INST_ALU|Add0~8_combout\ & (!\INST_ALU|Add0~7_combout\ & !\INST_ALU|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~8_combout\,
	datab => \INST_ALU|Add0~7_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~6\,
	combout => \INST_ALU|Add0~9_combout\,
	cout => \INST_ALU|Add0~10\);

-- Location: LCCOMB_X22_Y19_N6
\INST_ALU|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~13_combout\ = (\INST_ALU|Add0~12_combout\ & ((\INST_ALU|Add0~11_combout\ & (!\INST_ALU|Add0~10\)) # (!\INST_ALU|Add0~11_combout\ & (\INST_ALU|Add0~10\ & VCC)))) # (!\INST_ALU|Add0~12_combout\ & ((\INST_ALU|Add0~11_combout\ & 
-- ((\INST_ALU|Add0~10\) # (GND))) # (!\INST_ALU|Add0~11_combout\ & (!\INST_ALU|Add0~10\))))
-- \INST_ALU|Add0~14\ = CARRY((\INST_ALU|Add0~12_combout\ & (\INST_ALU|Add0~11_combout\ & !\INST_ALU|Add0~10\)) # (!\INST_ALU|Add0~12_combout\ & ((\INST_ALU|Add0~11_combout\) # (!\INST_ALU|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~12_combout\,
	datab => \INST_ALU|Add0~11_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~10\,
	combout => \INST_ALU|Add0~13_combout\,
	cout => \INST_ALU|Add0~14\);

-- Location: LCCOMB_X22_Y19_N8
\INST_ALU|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~17_combout\ = ((\INST_ALU|Add0~15_combout\ $ (\INST_ALU|Add0~16_combout\ $ (\INST_ALU|Add0~14\)))) # (GND)
-- \INST_ALU|Add0~18\ = CARRY((\INST_ALU|Add0~15_combout\ & (\INST_ALU|Add0~16_combout\ & !\INST_ALU|Add0~14\)) # (!\INST_ALU|Add0~15_combout\ & ((\INST_ALU|Add0~16_combout\) # (!\INST_ALU|Add0~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~15_combout\,
	datab => \INST_ALU|Add0~16_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~14\,
	combout => \INST_ALU|Add0~17_combout\,
	cout => \INST_ALU|Add0~18\);

-- Location: LCCOMB_X22_Y19_N10
\INST_ALU|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~21_combout\ = (\INST_ALU|Add0~20_combout\ & ((\INST_ALU|Add0~19_combout\ & (!\INST_ALU|Add0~18\)) # (!\INST_ALU|Add0~19_combout\ & (\INST_ALU|Add0~18\ & VCC)))) # (!\INST_ALU|Add0~20_combout\ & ((\INST_ALU|Add0~19_combout\ & 
-- ((\INST_ALU|Add0~18\) # (GND))) # (!\INST_ALU|Add0~19_combout\ & (!\INST_ALU|Add0~18\))))
-- \INST_ALU|Add0~22\ = CARRY((\INST_ALU|Add0~20_combout\ & (\INST_ALU|Add0~19_combout\ & !\INST_ALU|Add0~18\)) # (!\INST_ALU|Add0~20_combout\ & ((\INST_ALU|Add0~19_combout\) # (!\INST_ALU|Add0~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~20_combout\,
	datab => \INST_ALU|Add0~19_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~18\,
	combout => \INST_ALU|Add0~21_combout\,
	cout => \INST_ALU|Add0~22\);

-- Location: LCCOMB_X22_Y19_N12
\INST_ALU|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~25_combout\ = ((\INST_ALU|Add0~23_combout\ $ (\INST_ALU|Add0~24_combout\ $ (\INST_ALU|Add0~22\)))) # (GND)
-- \INST_ALU|Add0~26\ = CARRY((\INST_ALU|Add0~23_combout\ & (\INST_ALU|Add0~24_combout\ & !\INST_ALU|Add0~22\)) # (!\INST_ALU|Add0~23_combout\ & ((\INST_ALU|Add0~24_combout\) # (!\INST_ALU|Add0~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~23_combout\,
	datab => \INST_ALU|Add0~24_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~22\,
	combout => \INST_ALU|Add0~25_combout\,
	cout => \INST_ALU|Add0~26\);

-- Location: LCCOMB_X22_Y19_N14
\INST_ALU|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~29_combout\ = (\INST_ALU|Add0~27_combout\ & ((\INST_ALU|Add0~28_combout\ & (!\INST_ALU|Add0~26\)) # (!\INST_ALU|Add0~28_combout\ & ((\INST_ALU|Add0~26\) # (GND))))) # (!\INST_ALU|Add0~27_combout\ & ((\INST_ALU|Add0~28_combout\ & 
-- (\INST_ALU|Add0~26\ & VCC)) # (!\INST_ALU|Add0~28_combout\ & (!\INST_ALU|Add0~26\))))
-- \INST_ALU|Add0~30\ = CARRY((\INST_ALU|Add0~27_combout\ & ((!\INST_ALU|Add0~26\) # (!\INST_ALU|Add0~28_combout\))) # (!\INST_ALU|Add0~27_combout\ & (!\INST_ALU|Add0~28_combout\ & !\INST_ALU|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add0~27_combout\,
	datab => \INST_ALU|Add0~28_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~26\,
	combout => \INST_ALU|Add0~29_combout\,
	cout => \INST_ALU|Add0~30\);

-- Location: LCCOMB_X23_Y20_N28
\INST_ALU|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~4_combout\ = (\INST_ALU|Mux9~0_combout\ & ((\INST_ALU|r_ALU_Result[6]~20_combout\ & ((\INST_ALU|Add0~29_combout\))) # (!\INST_ALU|r_ALU_Result[6]~20_combout\ & (\INST_ALU|Mux1~3_combout\)))) # (!\INST_ALU|Mux9~0_combout\ & 
-- (\INST_ALU|r_ALU_Result[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux9~0_combout\,
	datab => \INST_ALU|r_ALU_Result[6]~20_combout\,
	datac => \INST_ALU|Mux1~3_combout\,
	datad => \INST_ALU|Add0~29_combout\,
	combout => \INST_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y20_N10
\INST_ALU|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~7_combout\ = (\INST_ALU|Mux9~0_combout\ & (((\INST_ALU|Mux1~4_combout\)))) # (!\INST_ALU|Mux9~0_combout\ & ((\INST_ALU|Mux1~4_combout\ & ((\INST_ALU|Mux1~6_combout\))) # (!\INST_ALU|Mux1~4_combout\ & (\INST_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux9~0_combout\,
	datab => \INST_ALU|Mux1~1_combout\,
	datac => \INST_ALU|Mux1~6_combout\,
	datad => \INST_ALU|Mux1~4_combout\,
	combout => \INST_ALU|Mux1~7_combout\);

-- Location: LCCOMB_X23_Y20_N30
\INST_ALU|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux1~7_combout\))))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3) & (((\INST_ALU|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => \INST_ALU|Mux1~7_combout\,
	combout => \INST_ALU|Mux1~8_combout\);

-- Location: LCCOMB_X23_Y20_N22
\INST_ALU|r_ALU_Result[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~17_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux4~17_combout\) # (!\INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_instruction_decoder|o_OPCODE\(0)) # (!\INST_ALU|Mux4~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux4~17_combout\,
	datad => \INST_control_unit|r_state\(3),
	combout => \INST_ALU|r_ALU_Result[5]~17_combout\);

-- Location: FF_X23_Y20_N31
\INST_ALU|r_ALU_Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|Mux1~8_combout\,
	ena => \INST_ALU|r_ALU_Result[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(6));

-- Location: LCCOMB_X24_Y18_N14
\INST_data_bus|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux6~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(6))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_MEMORY_CONTROL|o_MC_MUX_data\(6),
	datac => \INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_ALU|r_ALU_Result\(6),
	combout => \INST_data_bus|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\INST_data_bus|o_REGISTER[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(6) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(6))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_REGISTER\(6),
	datac => \INST_data_bus|Mux6~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(6));

-- Location: LCCOMB_X20_Y19_N24
\INST_GPR|r_REGISTER~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~27_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(22) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(21))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(22) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(21),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(22),
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\,
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~27_combout\);

-- Location: FF_X20_Y19_N25
\INST_GPR|o_GPR_ALU_data_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~27_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(5));

-- Location: LCCOMB_X20_Y19_N18
\INST_B_imm_multiplexer|o_DATA[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[5]~4_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(5),
	datac => \INST_instruction_decoder|o_Address_MEM\(8),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\);

-- Location: LCCOMB_X22_Y17_N4
\INST_ALU|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~1_cout\ = CARRY((!\INST_GPR|o_GPR_ALU_data_A\(0) & \INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	cout => \INST_ALU|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y17_N6
\INST_ALU|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~3_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_ALU|LessThan1~1_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1)) # 
-- (!\INST_ALU|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => VCC,
	cin => \INST_ALU|LessThan1~1_cout\,
	cout => \INST_ALU|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y17_N8
\INST_ALU|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~5_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(2) & (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & !\INST_ALU|LessThan1~3_cout\)) # (!\INST_GPR|o_GPR_ALU_data_A\(2) & ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\) # 
-- (!\INST_ALU|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan1~3_cout\,
	cout => \INST_ALU|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y17_N10
\INST_ALU|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~7_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(3) & ((!\INST_ALU|LessThan1~5_cout\) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & 
-- !\INST_ALU|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan1~5_cout\,
	cout => \INST_ALU|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y17_N12
\INST_ALU|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~9_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & ((!\INST_ALU|LessThan1~7_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(4) & 
-- !\INST_ALU|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => VCC,
	cin => \INST_ALU|LessThan1~7_cout\,
	cout => \INST_ALU|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y17_N14
\INST_ALU|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~11_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5) & !\INST_ALU|LessThan1~9_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5)) # 
-- (!\INST_ALU|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_ALU|LessThan1~9_cout\,
	cout => \INST_ALU|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y17_N16
\INST_ALU|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~13_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & ((!\INST_ALU|LessThan1~11_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(6)))) # (!\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- !\INST_ALU|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => VCC,
	cin => \INST_ALU|LessThan1~11_cout\,
	cout => \INST_ALU|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y17_N18
\INST_ALU|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_ALU|LessThan1~13_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(7)))) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(7) & 
-- \INST_ALU|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	cin => \INST_ALU|LessThan1~13_cout\,
	combout => \INST_ALU|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y20_N12
\INST_ALU|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|LessThan1~14_combout\,
	combout => \INST_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X23_Y20_N26
\INST_ALU|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux2~5_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(5) $ ((!\INST_instruction_decoder|o_OPCODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux2~5_combout\,
	combout => \INST_ALU|Mux2~6_combout\);

-- Location: LCCOMB_X21_Y16_N12
\INST_ALU|r_ALU_Result~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~12_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(5)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(8))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(8),
	datab => \INST_GPR|o_GPR_ALU_data_B\(5),
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|r_ALU_Result~12_combout\);

-- Location: LCCOMB_X19_Y16_N4
\INST_ALU|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~0_combout\);

-- Location: LCCOMB_X19_Y16_N24
\INST_ALU|ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~6_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (((\INST_ALU|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|ShiftRight0~0_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~6_combout\);

-- Location: LCCOMB_X21_Y16_N28
\INST_ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|r_ALU_Result~12_combout\) # ((!\INST_ALU|r_ALU_Result[6]~13_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_ALU|ShiftRight0~6_combout\ & 
-- \INST_ALU|r_ALU_Result[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result~12_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|ShiftRight0~6_combout\,
	datad => \INST_ALU|r_ALU_Result[6]~13_combout\,
	combout => \INST_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\INST_ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ (!\INST_ALU|Mux2~0_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & 
-- (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & !\INST_ALU|Mux2~0_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => \INST_ALU|Mux2~0_combout\,
	combout => \INST_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y16_N0
\INST_ALU|ShiftLeft0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~18_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_ALU|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X19_Y19_N20
\INST_ALU|ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~13_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X20_Y16_N2
\INST_ALU|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~8_combout\ = (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(0)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_ALU|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X20_Y16_N4
\INST_ALU|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~2_combout\ = (\INST_ALU|r_ALU_Result[6]~16_combout\ & (((\INST_ALU|ShiftLeft0~8_combout\ & \INST_ALU|r_ALU_Result[6]~15_combout\)))) # (!\INST_ALU|r_ALU_Result[6]~16_combout\ & ((\INST_ALU|Add1~10_combout\) # 
-- ((!\INST_ALU|r_ALU_Result[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add1~10_combout\,
	datab => \INST_ALU|ShiftLeft0~8_combout\,
	datac => \INST_ALU|r_ALU_Result[6]~16_combout\,
	datad => \INST_ALU|r_ALU_Result[6]~15_combout\,
	combout => \INST_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X20_Y16_N18
\INST_ALU|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~3_combout\ = (\INST_ALU|Mux2~2_combout\ & ((\INST_ALU|ShiftLeft0~18_combout\) # ((\INST_ALU|r_ALU_Result[6]~14_combout\)))) # (!\INST_ALU|Mux2~2_combout\ & (((\INST_ALU|ShiftLeft0~13_combout\ & !\INST_ALU|r_ALU_Result[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~18_combout\,
	datab => \INST_ALU|ShiftLeft0~13_combout\,
	datac => \INST_ALU|Mux2~2_combout\,
	datad => \INST_ALU|r_ALU_Result[6]~14_combout\,
	combout => \INST_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X23_Y20_N18
\INST_ALU|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~4_combout\ = (\INST_ALU|Mux9~0_combout\ & (!\INST_ALU|r_ALU_Result[6]~20_combout\ & ((\INST_ALU|Mux2~3_combout\)))) # (!\INST_ALU|Mux9~0_combout\ & ((\INST_ALU|r_ALU_Result[6]~20_combout\) # ((\INST_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux9~0_combout\,
	datab => \INST_ALU|r_ALU_Result[6]~20_combout\,
	datac => \INST_ALU|Mux2~1_combout\,
	datad => \INST_ALU|Mux2~3_combout\,
	combout => \INST_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X23_Y20_N20
\INST_ALU|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~7_combout\ = (\INST_ALU|r_ALU_Result[6]~20_combout\ & ((\INST_ALU|Mux2~4_combout\ & (\INST_ALU|Mux2~6_combout\)) # (!\INST_ALU|Mux2~4_combout\ & ((\INST_ALU|Add0~25_combout\))))) # (!\INST_ALU|r_ALU_Result[6]~20_combout\ & 
-- (((\INST_ALU|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux2~6_combout\,
	datab => \INST_ALU|r_ALU_Result[6]~20_combout\,
	datac => \INST_ALU|Add0~25_combout\,
	datad => \INST_ALU|Mux2~4_combout\,
	combout => \INST_ALU|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\INST_ALU|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux2~7_combout\))))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3) & (((\INST_ALU|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => \INST_ALU|Mux2~7_combout\,
	combout => \INST_ALU|Mux2~8_combout\);

-- Location: FF_X23_Y20_N1
\INST_ALU|r_ALU_Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|Mux2~8_combout\,
	ena => \INST_ALU|r_ALU_Result[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(5));

-- Location: LCCOMB_X24_Y18_N12
\INST_data_bus|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux5~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(5))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|o_MC_MUX_data\(5),
	datac => \INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_ALU|r_ALU_Result\(5),
	combout => \INST_data_bus|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\INST_data_bus|o_REGISTER[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(5) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|o_REGISTER\(5)))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|Mux5~0_combout\,
	datac => \INST_data_bus|o_REGISTER\(5),
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(5));

-- Location: FF_X21_Y18_N9
\INST_GPR|r_REGISTER_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_REGISTER\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(19));

-- Location: LCCOMB_X20_Y19_N4
\INST_GPR|r_REGISTER~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~28_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(20) & ((\INST_GPR|r_REGISTER~17_combout\ & ((\INST_GPR|r_REGISTER_rtl_1_bypass\(19)))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- (\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\)))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(20) & (((\INST_GPR|r_REGISTER_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(20),
	datab => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\,
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(19),
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~28_combout\);

-- Location: FF_X20_Y19_N5
\INST_GPR|o_GPR_ALU_data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~28_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(4));

-- Location: LCCOMB_X20_Y18_N18
\INST_ALU|Mux3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~15_combout\ = (\INST_ALU|Mux4~17_combout\ & ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(7))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(7),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_ALU|Mux4~17_combout\,
	combout => \INST_ALU|Mux3~15_combout\);

-- Location: LCCOMB_X20_Y16_N28
\INST_ALU|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~4_combout\ = (!\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_GPR|o_GPR_ALU_data_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y18_N18
\INST_ALU|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~5_combout\ = (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_GPR|o_GPR_ALU_data_A\(6) & \INST_ALU|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_ALU|Mux3~4_combout\,
	combout => \INST_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X21_Y18_N4
\INST_ALU|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(2)) # (!\INST_ALU|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux3~5_combout\,
	combout => \INST_ALU|Mux3~6_combout\);

-- Location: LCCOMB_X21_Y18_N22
\INST_ALU|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~7_combout\ = (\INST_ALU|Mux3~6_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_instruction_decoder|o_OPCODE\(2) & \INST_B_imm_multiplexer|o_DATA[4]~5_combout\))) # (!\INST_ALU|Mux3~6_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4) $ 
-- ((!\INST_instruction_decoder|o_OPCODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Mux3~6_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	combout => \INST_ALU|Mux3~7_combout\);

-- Location: LCCOMB_X19_Y16_N2
\INST_ALU|ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_ALU|ShiftRight0~1_combout\);

-- Location: LCCOMB_X19_Y16_N8
\INST_ALU|ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_ALU|ShiftRight0~0_combout\)) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_ALU|ShiftRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|ShiftRight0~0_combout\,
	datad => \INST_ALU|ShiftRight0~1_combout\,
	combout => \INST_ALU|ShiftRight0~2_combout\);

-- Location: LCCOMB_X19_Y19_N16
\INST_ALU|r_ALU_Result~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~9_combout\ = \INST_GPR|o_GPR_ALU_data_A\(4) $ (((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(7))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_instruction_decoder|o_Address_MEM\(7),
	datac => \INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_ALU|r_ALU_Result~9_combout\);

-- Location: LCCOMB_X21_Y16_N2
\INST_ALU|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|r_ALU_Result~9_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|ShiftRight0~2_combout\ & ((\INST_ALU|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftRight0~2_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|r_ALU_Result~9_combout\,
	datad => \INST_ALU|Mux4~6_combout\,
	combout => \INST_ALU|Mux3~11_combout\);

-- Location: LCCOMB_X21_Y18_N30
\INST_ALU|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~12_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux3~11_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Add0~21_combout\,
	datad => \INST_ALU|Mux3~11_combout\,
	combout => \INST_ALU|Mux3~12_combout\);

-- Location: LCCOMB_X20_Y17_N0
\INST_ALU|ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~6_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0) & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X20_Y18_N16
\INST_ALU|ShiftLeft0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~17_combout\ = (\INST_ALU|Mux4~19_combout\ & ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|ShiftLeft0~6_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_ALU|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~16_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_ALU|Mux4~19_combout\,
	datad => \INST_ALU|ShiftLeft0~6_combout\,
	combout => \INST_ALU|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X21_Y18_N20
\INST_ALU|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~8_combout\ = (\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add0~21_combout\)) # (!\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_ALU|Add0~21_combout\,
	datad => \INST_ALU|Add1~8_combout\,
	combout => \INST_ALU|Mux3~8_combout\);

-- Location: LCCOMB_X21_Y18_N10
\INST_ALU|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(2)) # ((\INST_ALU|ShiftLeft0~17_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- ((\INST_ALU|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|ShiftLeft0~17_combout\,
	datad => \INST_ALU|Mux3~8_combout\,
	combout => \INST_ALU|Mux3~9_combout\);

-- Location: LCCOMB_X21_Y18_N0
\INST_ALU|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~10_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_GPR|o_GPR_ALU_data_A\(4) & ((\INST_B_imm_multiplexer|o_DATA[4]~5_combout\) # (!\INST_ALU|Mux3~9_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(4) & 
-- (\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & !\INST_ALU|Mux3~9_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_ALU|Mux3~9_combout\,
	combout => \INST_ALU|Mux3~10_combout\);

-- Location: LCCOMB_X21_Y18_N24
\INST_ALU|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~13_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux3~10_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux3~12_combout\,
	datad => \INST_ALU|Mux3~10_combout\,
	combout => \INST_ALU|Mux3~13_combout\);

-- Location: LCCOMB_X21_Y18_N6
\INST_ALU|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~14_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux3~13_combout\ & (\INST_ALU|Mux3~15_combout\)) # (!\INST_ALU|Mux3~13_combout\ & ((\INST_ALU|Mux3~7_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux3~15_combout\,
	datac => \INST_ALU|Mux3~7_combout\,
	datad => \INST_ALU|Mux3~13_combout\,
	combout => \INST_ALU|Mux3~14_combout\);

-- Location: LCCOMB_X21_Y18_N12
\INST_ALU|r_ALU_Result[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[4]~10_combout\ = (\INST_ALU|Mux7~10_combout\ & (((\INST_ALU|r_ALU_Result\(4))))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux3~14_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~10_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(4),
	datad => \INST_ALU|Mux3~14_combout\,
	combout => \INST_ALU|r_ALU_Result[4]~10_combout\);

-- Location: FF_X21_Y18_N13
\INST_ALU|r_ALU_Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(4));

-- Location: IOIBUF_X41_Y17_N8
\i_MC_GPIO_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(4),
	o => \i_MC_GPIO_data[4]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\i_MC_I2C_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(4),
	o => \i_MC_I2C_data[4]~input_o\);

-- Location: LCCOMB_X26_Y18_N20
\INST_MEMORY_CONTROL|o_MC_MUX_data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~4_combout\ = (\INST_instruction_decoder|o_Address_MEM\(14) & ((\i_MC_I2C_data[4]~input_o\))) # (!\INST_instruction_decoder|o_Address_MEM\(14) & (\i_MC_GPIO_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_GPIO_data[4]~input_o\,
	datab => \i_MC_I2C_data[4]~input_o\,
	datad => \INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~4_combout\);

-- Location: LCCOMB_X14_Y15_N12
\INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X14_Y15_N13
\INST_DATA_RAM|MEMORY_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(38));

-- Location: LCCOMB_X21_Y18_N28
\INST_data_bus|o_MEMORY[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_MEMORY\(4) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux4~0_combout\))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_MEMORY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_MEMORY\(4),
	datac => \INST_data_bus|Mux4~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_MEMORY\(4));

-- Location: FF_X21_Y18_N29
\INST_MEMORY_CONTROL|o_MC_RAM_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_data_bus|o_MEMORY\(4),
	ena => \INST_MEMORY_CONTROL|o_MC_RAM_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_RAM_data\(4));

-- Location: LCCOMB_X14_Y15_N0
\INST_DATA_RAM|MEMORY_rtl_0_bypass[37]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY_rtl_0_bypass[37]~feeder_combout\ = \INST_MEMORY_CONTROL|o_MC_RAM_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_MEMORY_CONTROL|o_MC_RAM_data\(4),
	combout => \INST_DATA_RAM|MEMORY_rtl_0_bypass[37]~feeder_combout\);

-- Location: FF_X14_Y15_N1
\INST_DATA_RAM|MEMORY_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY_rtl_0_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(37));

-- Location: M9K_X13_Y14_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y13_N0
\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_core.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_e1m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	portadatain => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N14
\INST_DATA_RAM|MEMORY~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~41_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\)) # (!\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \INST_DATA_RAM|MEMORY~41_combout\);

-- Location: LCCOMB_X14_Y15_N16
\INST_DATA_RAM|MEMORY~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DATA_RAM|MEMORY~42_combout\ = (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(38) & ((\INST_DATA_RAM|MEMORY~33_combout\ & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(37))) # (!\INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_DATA_RAM|MEMORY~41_combout\))))) # 
-- (!\INST_DATA_RAM|MEMORY_rtl_0_bypass\(38) & (\INST_DATA_RAM|MEMORY_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(38),
	datab => \INST_DATA_RAM|MEMORY_rtl_0_bypass\(37),
	datac => \INST_DATA_RAM|MEMORY~41_combout\,
	datad => \INST_DATA_RAM|MEMORY~33_combout\,
	combout => \INST_DATA_RAM|MEMORY~42_combout\);

-- Location: FF_X14_Y15_N17
\INST_DATA_RAM|o_RAM_MC_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_DATA_RAM|MEMORY~42_combout\,
	ena => \INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DATA_RAM|o_RAM_MC_data\(4));

-- Location: FF_X26_Y18_N21
\INST_MEMORY_CONTROL|o_MC_MUX_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~4_combout\,
	asdata => \INST_DATA_RAM|o_RAM_MC_data\(4),
	sclr => \INST_MEMORY_CONTROL|ALT_INV_o_MC_MUX_data[4]~8_combout\,
	sload => \INST_instruction_decoder|ALT_INV_o_Address_MEM\(15),
	ena => \INST_MEMORY_CONTROL|o_MC_MUX_data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_MUX_data\(4));

-- Location: LCCOMB_X21_Y18_N8
\INST_data_bus|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux4~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_MEMORY_CONTROL|o_MC_MUX_data\(4)))) # (!\INST_instruction_decoder|o_BUS_select\(1) & (\INST_ALU|r_ALU_Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(4),
	datab => \INST_MEMORY_CONTROL|o_MC_MUX_data\(4),
	datad => \INST_instruction_decoder|o_BUS_select\(1),
	combout => \INST_data_bus|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\INST_data_bus|o_REGISTER[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(4) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(4))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|o_REGISTER\(4),
	datac => \INST_data_bus|Mux4~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(4));

-- Location: LCCOMB_X22_Y20_N20
\INST_GPR|r_REGISTER~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~36_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(18) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(17))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(18) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(18),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(17),
	datac => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\,
	datad => \INST_GPR|r_REGISTER~22_combout\,
	combout => \INST_GPR|r_REGISTER~36_combout\);

-- Location: FF_X22_Y20_N21
\INST_GPR|o_GPR_ALU_data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~36_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(3));

-- Location: LCCOMB_X21_Y16_N20
\INST_ALU|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~7_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_instruction_decoder|o_OPCODE\(2) & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_ALU|Mux4~6_combout\,
	combout => \INST_ALU|Mux4~7_combout\);

-- Location: LCCOMB_X22_Y16_N26
\INST_ALU|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~8_combout\ = (\INST_ALU|Mux4~7_combout\) # ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(3) & \INST_instruction_decoder|o_OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux4~7_combout\,
	combout => \INST_ALU|Mux4~8_combout\);

-- Location: LCCOMB_X22_Y16_N4
\INST_ALU|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux4~8_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(3) $ (((!\INST_instruction_decoder|o_OPCODE\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_ALU|Mux4~8_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|Mux4~9_combout\);

-- Location: LCCOMB_X21_Y16_N26
\INST_ALU|Mux4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~20_combout\ = (\INST_ALU|Mux4~17_combout\ & ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux4~17_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_B\(3),
	datac => \INST_instruction_decoder|o_Address_MEM\(6),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|Mux4~20_combout\);

-- Location: LCCOMB_X19_Y16_N28
\INST_ALU|ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~11_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & \INST_GPR|o_GPR_ALU_data_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	combout => \INST_ALU|ShiftRight0~11_combout\);

-- Location: LCCOMB_X19_Y16_N10
\INST_ALU|ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~12_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftRight0~12_combout\);

-- Location: LCCOMB_X19_Y16_N16
\INST_ALU|ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~13_combout\ = (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|ShiftRight0~12_combout\) # ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_ALU|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftRight0~12_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|ShiftRight0~1_combout\,
	combout => \INST_ALU|ShiftRight0~13_combout\);

-- Location: LCCOMB_X19_Y16_N14
\INST_ALU|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~13_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux4~19_combout\ & ((\INST_ALU|ShiftRight0~11_combout\) # (\INST_ALU|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|ShiftRight0~11_combout\,
	datac => \INST_ALU|ShiftRight0~13_combout\,
	datad => \INST_ALU|Mux4~19_combout\,
	combout => \INST_ALU|Mux4~13_combout\);

-- Location: LCCOMB_X22_Y16_N20
\INST_ALU|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~14_combout\ = (\INST_ALU|Mux4~13_combout\) # ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux4~13_combout\,
	combout => \INST_ALU|Mux4~14_combout\);

-- Location: LCCOMB_X22_Y16_N30
\INST_ALU|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~15_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux4~14_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Add0~17_combout\,
	datad => \INST_ALU|Mux4~14_combout\,
	combout => \INST_ALU|Mux4~15_combout\);

-- Location: LCCOMB_X19_Y19_N30
\INST_ALU|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~12_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(0)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X19_Y19_N10
\INST_ALU|ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~14_combout\ = (\INST_ALU|ShiftLeft0~12_combout\) # ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|ShiftLeft0~12_combout\,
	datad => \INST_ALU|ShiftLeft0~13_combout\,
	combout => \INST_ALU|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X21_Y16_N4
\INST_ALU|ShiftLeft0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~20_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_ALU|ShiftLeft0~14_combout\ & \INST_ALU|tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_ALU|ShiftLeft0~14_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X22_Y16_N6
\INST_ALU|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~10_combout\ = (\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add0~17_combout\)) # (!\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_ALU|Add0~17_combout\,
	datad => \INST_ALU|Add1~6_combout\,
	combout => \INST_ALU|Mux4~10_combout\);

-- Location: LCCOMB_X22_Y16_N0
\INST_ALU|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(2)) # ((\INST_ALU|ShiftLeft0~20_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- ((\INST_ALU|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|ShiftLeft0~20_combout\,
	datad => \INST_ALU|Mux4~10_combout\,
	combout => \INST_ALU|Mux4~11_combout\);

-- Location: LCCOMB_X22_Y16_N18
\INST_ALU|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~12_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3)) # (!\INST_ALU|Mux4~11_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & 
-- (\INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_ALU|Mux4~11_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux4~11_combout\,
	combout => \INST_ALU|Mux4~12_combout\);

-- Location: LCCOMB_X22_Y16_N28
\INST_ALU|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~16_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux4~12_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux4~15_combout\,
	datad => \INST_ALU|Mux4~12_combout\,
	combout => \INST_ALU|Mux4~16_combout\);

-- Location: LCCOMB_X22_Y16_N2
\INST_ALU|Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~18_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux4~16_combout\ & ((\INST_ALU|Mux4~20_combout\))) # (!\INST_ALU|Mux4~16_combout\ & (\INST_ALU|Mux4~9_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux4~9_combout\,
	datac => \INST_ALU|Mux4~20_combout\,
	datad => \INST_ALU|Mux4~16_combout\,
	combout => \INST_ALU|Mux4~18_combout\);

-- Location: LCCOMB_X22_Y16_N22
\INST_ALU|r_ALU_Result[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[3]~8_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~10_combout\ & (\INST_ALU|r_ALU_Result\(3))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_ALU|Mux4~18_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~10_combout\,
	datac => \INST_ALU|r_ALU_Result\(3),
	datad => \INST_ALU|Mux4~18_combout\,
	combout => \INST_ALU|r_ALU_Result[3]~8_combout\);

-- Location: FF_X22_Y16_N23
\INST_ALU|r_ALU_Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(3));

-- Location: LCCOMB_X23_Y18_N30
\INST_data_bus|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux3~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(3))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|o_MC_MUX_data\(3),
	datab => \INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_ALU|r_ALU_Result\(3),
	combout => \INST_data_bus|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\INST_data_bus|o_REGISTER[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(3) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(3))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|o_REGISTER\(3),
	datac => \INST_data_bus|Mux3~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(3));

-- Location: LCCOMB_X26_Y19_N2
\INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X26_Y19_N3
\INST_GPR|r_REGISTER_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(16));

-- Location: FF_X26_Y19_N25
\INST_GPR|r_REGISTER_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_REGISTER\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(15));

-- Location: LCCOMB_X26_Y19_N24
\INST_GPR|r_REGISTER~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~29_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(16) & ((\INST_GPR|r_REGISTER~17_combout\ & ((\INST_GPR|r_REGISTER_rtl_1_bypass\(15)))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- (\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\)))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(16) & (((\INST_GPR|r_REGISTER_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\,
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(16),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(15),
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~29_combout\);

-- Location: FF_X23_Y19_N23
\INST_GPR|o_GPR_ALU_data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_GPR|r_REGISTER~29_combout\,
	sload => VCC,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(2));

-- Location: LCCOMB_X23_Y19_N28
\INST_B_imm_multiplexer|o_DATA[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[2]~6_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(5)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(2),
	datac => \INST_instruction_decoder|o_Address_MEM\(5),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\);

-- Location: LCCOMB_X24_Y19_N8
\INST_ALU|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(0)) # (((\INST_GPR|o_GPR_ALU_data_A\(2)) # (!\INST_instruction_decoder|o_OPCODE\(2))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Mux5~8_combout\);

-- Location: LCCOMB_X26_Y19_N10
\INST_ALU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_instruction_decoder|o_OPCODE\(2)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(2) $ 
-- (!\INST_GPR|o_GPR_ALU_data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y16_N10
\INST_ALU|ShiftLeft0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~19_combout\ = (\INST_ALU|ShiftLeft0~11_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & \INST_ALU|tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~11_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X26_Y19_N0
\INST_ALU|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(2)) # ((\INST_ALU|ShiftLeft0~19_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- ((\INST_ALU|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|ShiftLeft0~19_combout\,
	datad => \INST_ALU|Add0~13_combout\,
	combout => \INST_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y19_N14
\INST_ALU|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_GPR|o_GPR_ALU_data_A\(2) & (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ $ (!\INST_ALU|Mux5~1_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(2) & 
-- (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & !\INST_ALU|Mux5~1_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|Mux5~1_combout\,
	combout => \INST_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\INST_ALU|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~4_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\) # (\INST_GPR|o_GPR_ALU_data_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y19_N24
\INST_ALU|ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~8_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~8_combout\);

-- Location: LCCOMB_X19_Y19_N26
\INST_ALU|ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~9_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~9_combout\);

-- Location: LCCOMB_X19_Y19_N4
\INST_ALU|ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (((\INST_ALU|ShiftRight0~7_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|ShiftRight0~8_combout\) # ((\INST_ALU|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_ALU|ShiftRight0~8_combout\,
	datac => \INST_ALU|ShiftRight0~9_combout\,
	datad => \INST_ALU|ShiftRight0~7_combout\,
	combout => \INST_ALU|ShiftRight0~10_combout\);

-- Location: LCCOMB_X26_Y19_N8
\INST_ALU|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~5_combout\ = (\INST_ALU|Mux5~4_combout\) # ((\INST_ALU|Mux4~19_combout\ & (!\INST_instruction_decoder|o_OPCODE\(0) & \INST_ALU|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux5~4_combout\,
	datab => \INST_ALU|Mux4~19_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|ShiftRight0~10_combout\,
	combout => \INST_ALU|Mux5~5_combout\);

-- Location: LCCOMB_X26_Y19_N28
\INST_ALU|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~3_combout\ = (\INST_ALU|Mux7~11_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add0~13_combout\))) # (!\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_ALU|Add1~4_combout\,
	datac => \INST_ALU|Mux7~11_combout\,
	datad => \INST_ALU|Add0~13_combout\,
	combout => \INST_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X26_Y19_N18
\INST_ALU|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~6_combout\ = (\INST_ALU|Mux5~3_combout\) # ((\INST_instruction_decoder|o_OPCODE\(2) & \INST_ALU|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Mux5~5_combout\,
	datad => \INST_ALU|Mux5~3_combout\,
	combout => \INST_ALU|Mux5~6_combout\);

-- Location: LCCOMB_X26_Y19_N12
\INST_ALU|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux5~2_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Mux5~2_combout\,
	datad => \INST_ALU|Mux5~6_combout\,
	combout => \INST_ALU|Mux5~7_combout\);

-- Location: LCCOMB_X26_Y19_N6
\INST_ALU|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux5~7_combout\ & (!\INST_ALU|Mux5~8_combout\)) # (!\INST_ALU|Mux5~7_combout\ & ((\INST_ALU|Mux5~0_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux5~8_combout\,
	datac => \INST_ALU|Mux5~0_combout\,
	datad => \INST_ALU|Mux5~7_combout\,
	combout => \INST_ALU|Mux5~9_combout\);

-- Location: LCCOMB_X26_Y19_N20
\INST_ALU|r_ALU_Result[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[2]~7_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~10_combout\ & (\INST_ALU|r_ALU_Result\(2))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_ALU|Mux5~9_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~10_combout\,
	datac => \INST_ALU|r_ALU_Result\(2),
	datad => \INST_ALU|Mux5~9_combout\,
	combout => \INST_ALU|r_ALU_Result[2]~7_combout\);

-- Location: FF_X26_Y19_N21
\INST_ALU|r_ALU_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(2));

-- Location: LCCOMB_X26_Y18_N26
\INST_data_bus|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux2~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(2))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_BUS_select\(1),
	datac => \INST_MEMORY_CONTROL|o_MC_MUX_data\(2),
	datad => \INST_ALU|r_ALU_Result\(2),
	combout => \INST_data_bus|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y19_N30
\INST_data_bus|o_REGISTER[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(2) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(2))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_data_bus|o_REGISTER\(2),
	datac => \INST_data_bus|Mux2~0_combout\,
	datad => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	combout => \INST_data_bus|o_REGISTER\(2));

-- Location: LCCOMB_X22_Y20_N22
\INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X22_Y20_N23
\INST_GPR|r_REGISTER_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(14));

-- Location: LCCOMB_X22_Y20_N12
\INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\ = \INST_data_bus|o_REGISTER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_REGISTER\(1),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X22_Y20_N13
\INST_GPR|r_REGISTER_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(13));

-- Location: LCCOMB_X22_Y20_N14
\INST_GPR|r_REGISTER~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~37_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(13))))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(14) & 
-- (\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\)) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(14) & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~22_combout\,
	datab => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\,
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(14),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(13),
	combout => \INST_GPR|r_REGISTER~37_combout\);

-- Location: FF_X22_Y20_N15
\INST_GPR|o_GPR_ALU_data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~37_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(1));

-- Location: LCCOMB_X23_Y19_N2
\INST_ALU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_instruction_decoder|o_OPCODE\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_GPR|o_GPR_ALU_data_A\(1) $ 
-- (((!\INST_instruction_decoder|o_OPCODE\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\INST_ALU|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~12_combout\ = (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_instruction_decoder|o_OPCODE\(2) & !\INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|Mux6~12_combout\);

-- Location: LCCOMB_X24_Y19_N30
\INST_ALU|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~9_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|ShiftLeft0~8_combout\ & (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & \INST_ALU|tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_ALU|ShiftLeft0~8_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X21_Y17_N26
\INST_ALU|r_ALU_Result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~5_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(1),
	datab => \INST_instruction_decoder|o_Address_MEM\(4),
	datac => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|r_ALU_Result~5_combout\);

-- Location: LCCOMB_X21_Y17_N4
\INST_ALU|r_ALU_Result~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~4_combout\ = \INST_GPR|o_GPR_ALU_data_A\(1) $ (((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(1),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_instruction_decoder|o_Address_MEM\(4),
	combout => \INST_ALU|r_ALU_Result~4_combout\);

-- Location: LCCOMB_X23_Y19_N0
\INST_ALU|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|r_ALU_Result~4_combout\) # ((\INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Add0~9_combout\ & 
-- !\INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_ALU|r_ALU_Result~4_combout\,
	datac => \INST_ALU|Add0~9_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\INST_ALU|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux6~1_combout\ & ((\INST_ALU|r_ALU_Result~5_combout\))) # (!\INST_ALU|Mux6~1_combout\ & (\INST_ALU|ShiftLeft0~9_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (((\INST_ALU|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~9_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|r_ALU_Result~5_combout\,
	datad => \INST_ALU|Mux6~1_combout\,
	combout => \INST_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y16_N16
\INST_ALU|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_GPR|o_GPR_ALU_data_A\(1)) # (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y19_N18
\INST_ALU|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~5_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y19_N20
\INST_ALU|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~4_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|Mux6~4_combout\);

-- Location: LCCOMB_X23_Y19_N12
\INST_ALU|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~6_combout\ = (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|Mux6~4_combout\) # ((\INST_ALU|Mux6~5_combout\ & \INST_B_imm_multiplexer|o_DATA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux6~5_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_ALU|Mux6~4_combout\,
	combout => \INST_ALU|Mux6~6_combout\);

-- Location: LCCOMB_X23_Y19_N14
\INST_ALU|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~7_combout\ = (\INST_ALU|Mux6~6_combout\) # ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_instruction_decoder|o_OPCODE\(0) & \INST_ALU|ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux6~6_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|ShiftRight0~6_combout\,
	combout => \INST_ALU|Mux6~7_combout\);

-- Location: LCCOMB_X23_Y19_N16
\INST_ALU|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux6~3_combout\) # ((\INST_ALU|Mux6~7_combout\ & \INST_ALU|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_ALU|Mux6~3_combout\,
	datac => \INST_ALU|Mux6~7_combout\,
	datad => \INST_ALU|Mux4~19_combout\,
	combout => \INST_ALU|Mux6~8_combout\);

-- Location: LCCOMB_X23_Y19_N6
\INST_ALU|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~9_combout\ = (\INST_ALU|Mux7~11_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add0~9_combout\))) # (!\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add1~2_combout\,
	datab => \INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_ALU|Add0~9_combout\,
	datad => \INST_ALU|Mux7~11_combout\,
	combout => \INST_ALU|Mux6~9_combout\);

-- Location: LCCOMB_X23_Y19_N24
\INST_ALU|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~10_combout\ = (\INST_ALU|Mux6~8_combout\) # (\INST_ALU|Mux6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_ALU|Mux6~8_combout\,
	datad => \INST_ALU|Mux6~9_combout\,
	combout => \INST_ALU|Mux6~10_combout\);

-- Location: LCCOMB_X23_Y19_N10
\INST_ALU|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux6~2_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux6~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Mux6~2_combout\,
	datad => \INST_ALU|Mux6~10_combout\,
	combout => \INST_ALU|Mux6~11_combout\);

-- Location: LCCOMB_X24_Y19_N6
\INST_ALU|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~13_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux6~11_combout\ & ((\INST_ALU|Mux6~12_combout\))) # (!\INST_ALU|Mux6~11_combout\ & (\INST_ALU|Mux6~0_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux6~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux6~12_combout\,
	datad => \INST_ALU|Mux6~11_combout\,
	combout => \INST_ALU|Mux6~13_combout\);

-- Location: LCCOMB_X24_Y19_N12
\INST_ALU|r_ALU_Result[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[1]~6_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~10_combout\ & (\INST_ALU|r_ALU_Result\(1))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_ALU|Mux6~13_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~10_combout\,
	datac => \INST_ALU|r_ALU_Result\(1),
	datad => \INST_ALU|Mux6~13_combout\,
	combout => \INST_ALU|r_ALU_Result[1]~6_combout\);

-- Location: FF_X24_Y19_N13
\INST_ALU|r_ALU_Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(1));

-- Location: LCCOMB_X23_Y18_N18
\INST_data_bus|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|Mux1~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(1) & (\INST_MEMORY_CONTROL|o_MC_MUX_data\(1))) # (!\INST_instruction_decoder|o_BUS_select\(1) & ((\INST_ALU|r_ALU_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BUS_select\(1),
	datab => \INST_MEMORY_CONTROL|o_MC_MUX_data\(1),
	datad => \INST_ALU|r_ALU_Result\(1),
	combout => \INST_data_bus|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\INST_data_bus|o_REGISTER[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_data_bus|o_REGISTER\(1) = (GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & (\INST_data_bus|o_REGISTER\(1))) # (!GLOBAL(\INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\) & ((\INST_data_bus|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_data_bus|o_REGISTER\(1),
	datac => \INST_instruction_decoder|o_BUS_select[0]~clkctrl_outclk\,
	datad => \INST_data_bus|Mux1~0_combout\,
	combout => \INST_data_bus|o_REGISTER\(1));

-- Location: LCCOMB_X20_Y19_N28
\INST_GPR|r_REGISTER~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~25_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(26) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(25))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(26) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(26),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(25),
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\,
	datad => \INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_GPR|r_REGISTER~25_combout\);

-- Location: FF_X20_Y19_N29
\INST_GPR|o_GPR_ALU_data_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~25_combout\,
	ena => \ALT_INV_r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(7));

-- Location: LCCOMB_X21_Y17_N24
\INST_ALU|Mux0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~21_combout\ = (\INST_ALU|Mux4~17_combout\ & ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(10))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux4~17_combout\,
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_instruction_decoder|o_Address_MEM\(10),
	datad => \INST_GPR|o_GPR_ALU_data_B\(7),
	combout => \INST_ALU|Mux0~21_combout\);

-- Location: LCCOMB_X21_Y17_N8
\INST_ALU|Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~16_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_GPR|o_GPR_ALU_data_A\(7) $ (((\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & \INST_instruction_decoder|o_OPCODE\(1)))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_instruction_decoder|o_OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	combout => \INST_ALU|Mux0~16_combout\);

-- Location: LCCOMB_X21_Y17_N6
\INST_ALU|Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~17_combout\ = (\INST_instruction_decoder|o_OPCODE\(1)) # ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux4~6_combout\,
	combout => \INST_ALU|Mux0~17_combout\);

-- Location: LCCOMB_X21_Y16_N22
\INST_ALU|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~31_combout\ = ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_MEM\(10)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(7)))) # (!\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_B\(7),
	datad => \INST_instruction_decoder|o_Address_MEM\(10),
	combout => \INST_ALU|Add0~31_combout\);

-- Location: LCCOMB_X20_Y19_N6
\INST_ALU|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~32_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_ALU|Add1~14_combout\,
	combout => \INST_ALU|Add0~32_combout\);

-- Location: LCCOMB_X22_Y19_N16
\INST_ALU|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~33_combout\ = \INST_ALU|Add0~31_combout\ $ (\INST_ALU|Add0~30\ $ (\INST_ALU|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_ALU|Add0~31_combout\,
	datad => \INST_ALU|Add0~32_combout\,
	cin => \INST_ALU|Add0~30\,
	combout => \INST_ALU|Add0~33_combout\);

-- Location: LCCOMB_X22_Y17_N20
\INST_ALU|Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~18_combout\ = (\INST_ALU|Mux0~16_combout\ & (\INST_ALU|Mux0~17_combout\ & ((\INST_instruction_decoder|o_OPCODE\(2)) # (\INST_ALU|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux0~16_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Mux0~17_combout\,
	datad => \INST_ALU|Add0~33_combout\,
	combout => \INST_ALU|Mux0~18_combout\);

-- Location: LCCOMB_X19_Y16_N18
\INST_ALU|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X19_Y16_N12
\INST_ALU|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~11_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|ShiftLeft0~18_combout\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_ALU|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_ALU|ShiftLeft0~18_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_ALU|Mux0~10_combout\,
	combout => \INST_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X19_Y16_N6
\INST_ALU|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~12_combout\ = (\INST_ALU|Mux4~19_combout\ & ((\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|ShiftLeft0~14_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_ALU|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_ALU|Mux0~11_combout\,
	datac => \INST_ALU|ShiftLeft0~14_combout\,
	datad => \INST_ALU|Mux4~19_combout\,
	combout => \INST_ALU|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y17_N2
\INST_ALU|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~13_combout\ = (\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add0~33_combout\))) # (!\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_ALU|Add1~14_combout\,
	datad => \INST_ALU|Add0~33_combout\,
	combout => \INST_ALU|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y17_N28
\INST_ALU|Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~14_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_instruction_decoder|o_OPCODE\(1))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux0~12_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux0~12_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux0~13_combout\,
	combout => \INST_ALU|Mux0~14_combout\);

-- Location: LCCOMB_X22_Y17_N30
\INST_ALU|Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~15_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(7)) # (!\INST_ALU|Mux0~14_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & 
-- (\INST_GPR|o_GPR_ALU_data_A\(7) & !\INST_ALU|Mux0~14_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_ALU|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux0~14_combout\,
	combout => \INST_ALU|Mux0~15_combout\);

-- Location: LCCOMB_X22_Y17_N22
\INST_ALU|Mux0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~19_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (((\INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux0~15_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux0~18_combout\,
	datac => \INST_ALU|Mux0~15_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux0~19_combout\);

-- Location: LCCOMB_X20_Y17_N4
\INST_ALU|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~4_combout\ = (\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_GPR|o_GPR_ALU_data_A\(3) $ (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & 
-- (!\INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_GPR|o_GPR_ALU_data_A\(3) $ (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	combout => \INST_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X20_Y17_N26
\INST_ALU|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~5_combout\ = (\INST_ALU|Mux0~4_combout\ & (!\INST_ALU|r_ALU_Result~4_combout\ & (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_ALU|Mux0~4_combout\,
	datad => \INST_ALU|r_ALU_Result~4_combout\,
	combout => \INST_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X20_Y17_N28
\INST_ALU|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~6_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(5))))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- (!\INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (\INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	combout => \INST_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X20_Y17_N2
\INST_ALU|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~7_combout\ = (\INST_ALU|Mux0~5_combout\ & (\INST_ALU|Mux0~6_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0) $ (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|Mux0~5_combout\,
	datad => \INST_ALU|Mux0~6_combout\,
	combout => \INST_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X21_Y17_N16
\INST_ALU|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(7)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (\INST_ALU|Mux0~7_combout\ & 
-- (\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux0~7_combout\,
	combout => \INST_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X21_Y17_N14
\INST_ALU|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux0~8_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(2) $ ((!\INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux0~8_combout\,
	combout => \INST_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X22_Y17_N24
\INST_ALU|Mux0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~20_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux0~19_combout\ & (\INST_ALU|Mux0~21_combout\)) # (!\INST_ALU|Mux0~19_combout\ & ((\INST_ALU|Mux0~9_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux0~21_combout\,
	datac => \INST_ALU|Mux0~19_combout\,
	datad => \INST_ALU|Mux0~9_combout\,
	combout => \INST_ALU|Mux0~20_combout\);

-- Location: LCCOMB_X22_Y17_N0
\INST_ALU|r_ALU_Result[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[7]~19_combout\ = (\INST_ALU|Mux7~10_combout\ & (((\INST_ALU|r_ALU_Result\(7))))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux0~20_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~10_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(7),
	datad => \INST_ALU|Mux0~20_combout\,
	combout => \INST_ALU|r_ALU_Result[7]~19_combout\);

-- Location: FF_X22_Y17_N1
\INST_ALU|r_ALU_Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(7));

-- Location: FF_X22_Y17_N27
\INST_instruction_decoder|o_Signed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(1),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Signed~q\);

-- Location: LCCOMB_X22_Y17_N26
\INST_ALU|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux11~0_combout\ = (\INST_instruction_decoder|o_Signed~q\ & (\INST_ALU|r_ALU_Result\(7))) # (!\INST_instruction_decoder|o_Signed~q\ & (((\INST_instruction_decoder|o_OPCODE\(1) & \INST_ALU|LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(7),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_Signed~q\,
	datad => \INST_ALU|LessThan1~14_combout\,
	combout => \INST_ALU|Mux11~0_combout\);

-- Location: LCCOMB_X21_Y17_N22
\INST_ALU|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux11~1_combout\ = (\INST_ALU|Mux10~0_combout\ & \INST_ALU|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_ALU|Mux10~0_combout\,
	datad => \INST_ALU|Mux11~0_combout\,
	combout => \INST_ALU|Mux11~1_combout\);

-- Location: FF_X21_Y17_N23
\INST_ALU|r_ALU_negative_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_ALU|Mux11~1_combout\,
	sclr => \INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_negative_flag~q\);

-- Location: LCCOMB_X23_Y17_N22
\INST_ALU|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal3~1_combout\ = (!\INST_ALU|r_ALU_Result\(7) & (!\INST_ALU|r_ALU_Result\(6) & (!\INST_ALU|r_ALU_Result\(5) & !\INST_ALU|r_ALU_Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(7),
	datab => \INST_ALU|r_ALU_Result\(6),
	datac => \INST_ALU|r_ALU_Result\(5),
	datad => \INST_ALU|r_ALU_Result\(4),
	combout => \INST_ALU|Equal3~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
\INST_ALU|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal3~0_combout\ = (!\INST_ALU|r_ALU_Result\(1) & (!\INST_ALU|r_ALU_Result\(3) & (!\INST_ALU|r_ALU_Result\(2) & !\INST_ALU|r_ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(1),
	datab => \INST_ALU|r_ALU_Result\(3),
	datac => \INST_ALU|r_ALU_Result\(2),
	datad => \INST_ALU|r_ALU_Result\(0),
	combout => \INST_ALU|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\INST_ALU|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal3~2_combout\ = (\INST_ALU|Equal3~1_combout\ & \INST_ALU|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_ALU|Equal3~1_combout\,
	datad => \INST_ALU|Equal3~0_combout\,
	combout => \INST_ALU|Equal3~2_combout\);

-- Location: FF_X23_Y17_N9
\INST_ALU|r_ALU_zero_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_ALU|Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_zero_flag~q\);

-- Location: LCCOMB_X21_Y17_N30
\INST_branch_control|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux10~1_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & ((\INST_ALU|r_ALU_negative_flag~q\) # ((\INST_instruction_decoder|o_BRANCH_CONTROL\(1))))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & 
-- (((\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & \INST_ALU|r_ALU_zero_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_negative_flag~q\,
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_ALU|r_ALU_zero_flag~q\,
	combout => \INST_branch_control|Mux10~1_combout\);

-- Location: LCCOMB_X21_Y17_N10
\INST_ALU|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux10~1_combout\ = (\INST_ALU|Mux10~0_combout\ & ((\INST_ALU|r_ALU_overflow_flag~q\) # (\INST_ALU|r_ALU_Result\(7) $ (\INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(7),
	datab => \INST_ALU|Mux10~0_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_ALU|r_ALU_overflow_flag~q\,
	combout => \INST_ALU|Mux10~1_combout\);

-- Location: LCCOMB_X21_Y17_N20
\INST_ALU|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux10~2_combout\ = (\INST_ALU|Mux10~1_combout\ & (\INST_B_imm_multiplexer|o_DATA[7]~2_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(7) $ (!\INST_instruction_decoder|o_OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux10~1_combout\,
	combout => \INST_ALU|Mux10~2_combout\);

-- Location: FF_X21_Y17_N21
\INST_ALU|r_ALU_overflow_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_ALU|Mux10~2_combout\,
	sclr => \INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_overflow_flag~q\);

-- Location: LCCOMB_X21_Y17_N12
\INST_branch_control|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux10~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (((!\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & \INST_ALU|r_ALU_carry_flag~q\)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & 
-- ((\INST_ALU|r_ALU_overflow_flag~q\) # ((!\INST_instruction_decoder|o_BRANCH_CONTROL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_overflow_flag~q\,
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_ALU|r_ALU_carry_flag~q\,
	combout => \INST_branch_control|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y17_N18
\INST_branch_control|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux10~2_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_branch_control|Mux10~0_combout\))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_branch_control|Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datac => \INST_branch_control|Mux10~1_combout\,
	datad => \INST_branch_control|Mux10~0_combout\,
	combout => \INST_branch_control|Mux10~2_combout\);

-- Location: FF_X21_Y17_N19
\INST_branch_control|o_PC_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_PC_LOAD~q\);

-- Location: FF_X20_Y20_N17
\INST_branch_control|r_PC_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~6_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(3));

-- Location: LCCOMB_X21_Y20_N18
\INST_branch_control|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux6~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_instruction_decoder|o_Address_MEM\(4))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- ((\INST_branch_control|r_PC_ADDRESS\(3)))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datab => \INST_instruction_decoder|o_Address_MEM\(4),
	datac => \INST_branch_control|r_PC_ADDRESS\(3),
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux6~0_combout\);

-- Location: FF_X21_Y20_N19
\INST_branch_control|o_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux6~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(3));

-- Location: LCCOMB_X21_Y20_N2
\INST_Program_counter|r_PROG_COUNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~4_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & ((\INST_branch_control|o_ADDRESS\(3)))) # (!\INST_branch_control|o_PC_LOAD~q\ & (\INST_Program_counter|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_Program_counter|Add0~6_combout\,
	datad => \INST_branch_control|o_ADDRESS\(3),
	combout => \INST_Program_counter|r_PROG_COUNT~4_combout\);

-- Location: FF_X21_Y20_N3
\INST_Program_counter|r_PROG_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~4_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(3));

-- Location: FF_X20_Y19_N21
\INST_instruction_decoder|o_Address_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(5),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_MEM\(3));

-- Location: FF_X20_Y20_N15
\INST_branch_control|r_PC_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~4_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(2));

-- Location: LCCOMB_X20_Y20_N8
\INST_branch_control|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux7~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_instruction_decoder|o_Address_MEM\(3))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- ((\INST_branch_control|r_PC_ADDRESS\(2)))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_Address_MEM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(3),
	datab => \INST_branch_control|r_PC_ADDRESS\(2),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux7~0_combout\);

-- Location: FF_X20_Y20_N9
\INST_branch_control|o_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux7~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(2));

-- Location: LCCOMB_X21_Y20_N16
\INST_Program_counter|r_PROG_COUNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~3_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(2))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(2),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~4_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~3_combout\);

-- Location: FF_X21_Y20_N17
\INST_Program_counter|r_PROG_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~3_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(2));

-- Location: LCCOMB_X26_Y18_N30
\INST_instruction_decoder|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux2~1_combout\ = (\INST_InstrucReg|r_register\(31) & \INST_InstrucReg|r_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datad => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y18_N6
\INST_instruction_decoder|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux5~0_combout\ = (!\INST_InstrucReg|r_register\(29) & (\INST_InstrucReg|r_register\(28) & (\INST_InstrucReg|r_register\(0) & \INST_instruction_decoder|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(29),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(0),
	datad => \INST_instruction_decoder|Mux2~1_combout\,
	combout => \INST_instruction_decoder|Mux5~0_combout\);

-- Location: FF_X26_Y18_N7
\INST_instruction_decoder|o_BRANCH_CONTROL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux5~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(0));

-- Location: LCCOMB_X20_Y20_N2
\INST_branch_control|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux8~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (((\INST_instruction_decoder|o_Address_MEM\(2))))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_branch_control|o_ADDRESS[6]~0_combout\ & 
-- (\INST_branch_control|r_PC_ADDRESS\(1))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_Address_MEM\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|r_PC_ADDRESS\(1),
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_Address_MEM\(2),
	combout => \INST_branch_control|Mux8~0_combout\);

-- Location: FF_X20_Y20_N3
\INST_branch_control|o_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux8~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(1));

-- Location: LCCOMB_X21_Y20_N6
\INST_Program_counter|r_PROG_COUNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~2_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(1))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(1),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~2_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~2_combout\);

-- Location: FF_X21_Y20_N7
\INST_Program_counter|r_PROG_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~2_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(1));

-- Location: LCCOMB_X23_Y20_N6
\INST_instruction_decoder|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux4~2_combout\ = (\INST_InstrucReg|r_register\(28) & ((\INST_InstrucReg|r_register\(29) & (\INST_instruction_decoder|Mux3~1_combout\)) # (!\INST_InstrucReg|r_register\(29) & ((\INST_InstrucReg|r_register\(1)))))) # 
-- (!\INST_InstrucReg|r_register\(28) & (((\INST_InstrucReg|r_register\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|Mux3~1_combout\,
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(1),
	datad => \INST_InstrucReg|r_register\(29),
	combout => \INST_instruction_decoder|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\INST_instruction_decoder|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux4~3_combout\ = (\INST_InstrucReg|r_register\(31) & (\INST_InstrucReg|r_register\(30) & \INST_instruction_decoder|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(31),
	datac => \INST_InstrucReg|r_register\(30),
	datad => \INST_instruction_decoder|Mux4~2_combout\,
	combout => \INST_instruction_decoder|Mux4~3_combout\);

-- Location: FF_X23_Y20_N15
\INST_instruction_decoder|o_BRANCH_CONTROL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux4~3_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(1));

-- Location: LCCOMB_X22_Y20_N8
\INST_branch_control|o_ADDRESS[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[6]~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & \INST_instruction_decoder|o_BRANCH_CONTROL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	combout => \INST_branch_control|o_ADDRESS[6]~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\INST_instruction_decoder|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux6~0_combout\ = (\INST_instruction_decoder|Mux2~1_combout\ & ((\INST_InstrucReg|r_register\(29) & (!\INST_InstrucReg|r_register\(28))) # (!\INST_InstrucReg|r_register\(29) & ((\INST_InstrucReg|r_register\(28)) # 
-- (\INST_instruction_decoder|o_SAVE_PC~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(29),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_instruction_decoder|o_SAVE_PC~q\,
	datad => \INST_instruction_decoder|Mux2~1_combout\,
	combout => \INST_instruction_decoder|Mux6~0_combout\);

-- Location: FF_X26_Y18_N29
\INST_instruction_decoder|o_SAVE_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux6~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_SAVE_PC~q\);

-- Location: LCCOMB_X20_Y20_N30
\INST_branch_control|r_PC_ADDRESS[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|r_PC_ADDRESS[0]~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0)) # ((\INST_instruction_decoder|o_SAVE_PC~q\ & \INST_control_unit|r_state\(2))))) # 
-- (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (\INST_instruction_decoder|o_SAVE_PC~q\ & (\INST_control_unit|r_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datab => \INST_instruction_decoder|o_SAVE_PC~q\,
	datac => \INST_control_unit|r_state\(2),
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\);

-- Location: FF_X20_Y20_N11
\INST_branch_control|r_PC_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~0_combout\,
	ena => \INST_branch_control|r_PC_ADDRESS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|r_PC_ADDRESS\(0));

-- Location: LCCOMB_X20_Y20_N0
\INST_branch_control|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux9~0_combout\ = (\INST_branch_control|o_ADDRESS[6]~0_combout\ & ((\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_instruction_decoder|o_Address_MEM\(1)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- (\INST_branch_control|r_PC_ADDRESS\(0))))) # (!\INST_branch_control|o_ADDRESS[6]~0_combout\ & (((\INST_instruction_decoder|o_Address_MEM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|r_PC_ADDRESS\(0),
	datab => \INST_instruction_decoder|o_Address_MEM\(1),
	datac => \INST_branch_control|o_ADDRESS[6]~0_combout\,
	datad => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	combout => \INST_branch_control|Mux9~0_combout\);

-- Location: FF_X20_Y20_N1
\INST_branch_control|o_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux9~0_combout\,
	ena => \INST_branch_control|o_ADDRESS[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(0));

-- Location: LCCOMB_X21_Y20_N24
\INST_Program_counter|r_PROG_COUNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|r_PROG_COUNT~1_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(0))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(0),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~0_combout\,
	combout => \INST_Program_counter|r_PROG_COUNT~1_combout\);

-- Location: FF_X21_Y20_N25
\INST_Program_counter|r_PROG_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|r_PROG_COUNT~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_Program_counter|ALT_INV_r_PROG_COUNT[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(0));

-- Location: FF_X22_Y19_N31
\INST_instruction_decoder|o_OPCODE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_InstrucReg|r_register\(28),
	sload => VCC,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(0));

-- Location: LCCOMB_X21_Y17_N0
\INST_control_unit|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|process_0~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(2) & \INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (\INST_instruction_decoder|o_OPCODE\(2) & !\INST_instruction_decoder|o_OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_control_unit|process_0~0_combout\);

-- Location: LCCOMB_X20_Y21_N24
\INST_control_unit|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux1~0_combout\ = (\INST_control_unit|r_state\(3) & (!\INST_control_unit|process_0~0_combout\ & (!\INST_control_unit|r_state\(4)))) # (!\INST_control_unit|r_state\(3) & (((\INST_control_unit|r_state\(4) & 
-- \INST_MEMORY_CONTROL|r_MEM_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|process_0~0_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_control_unit|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y21_N12
\INST_control_unit|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux1~1_combout\ = (\INST_control_unit|Mux1~0_combout\ & \INST_control_unit|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_control_unit|Mux1~0_combout\,
	datad => \INST_control_unit|Mux2~1_combout\,
	combout => \INST_control_unit|Mux1~1_combout\);

-- Location: FF_X20_Y21_N13
\INST_control_unit|r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux1~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(5));

-- Location: LCCOMB_X20_Y21_N6
\INST_control_unit|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~0_combout\ = (!\INST_control_unit|r_state\(6) & (!\INST_control_unit|r_state\(1) & (!\INST_control_unit|r_state\(2) & !\INST_control_unit|r_state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(6),
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(2),
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y21_N2
\INST_control_unit|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~1_combout\ = (\INST_control_unit|Mux5~0_combout\ & (!\INST_control_unit|r_state\(3) & (!\INST_control_unit|r_state\(4) & !\INST_control_unit|r_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Mux5~0_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|Mux5~1_combout\);

-- Location: FF_X20_Y21_N3
\INST_control_unit|r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux5~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(1));

-- Location: LCCOMB_X20_Y21_N30
\INST_control_unit|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux0~0_combout\ = (!\INST_control_unit|r_state\(2) & (!\INST_control_unit|r_state\(1) & (\INST_control_unit|Mux3~0_combout\ & \INST_control_unit|r_state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|Mux3~0_combout\,
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|Mux0~0_combout\);

-- Location: FF_X20_Y21_N31
\INST_control_unit|r_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux0~0_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(6));

-- Location: LCCOMB_X20_Y21_N18
\INST_control_unit|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux3~0_combout\ = (!\INST_control_unit|r_state\(6) & (!\INST_control_unit|r_state\(4) & (!\INST_control_unit|r_state\(3) & \INST_control_unit|r_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(6),
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_control_unit|r_state\(3),
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y21_N26
\INST_control_unit|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux4~2_combout\ = (\INST_control_unit|Mux3~0_combout\ & (\INST_control_unit|r_state\(1) & (!\INST_control_unit|r_state\(2) & !\INST_control_unit|r_state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Mux3~0_combout\,
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(2),
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|Mux4~2_combout\);

-- Location: FF_X20_Y21_N27
\INST_control_unit|r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux4~2_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(2));

-- Location: LCCOMB_X20_Y21_N8
\INST_control_unit|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux3~1_combout\ = (\INST_control_unit|r_state\(2) & (!\INST_control_unit|r_state\(1) & (\INST_control_unit|Mux3~0_combout\ & !\INST_control_unit|r_state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|Mux3~0_combout\,
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|Mux3~1_combout\);

-- Location: FF_X20_Y21_N9
\INST_control_unit|r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux3~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \ALT_INV_i_CORE_HALT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(3));

-- Location: LCCOMB_X23_Y16_N26
\INST_ALU|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_instruction_decoder|o_OPCODE\(2)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(2) $ 
-- (!\INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\INST_ALU|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~8_combout\ = (((\INST_GPR|o_GPR_ALU_data_A\(0)) # (\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_instruction_decoder|o_OPCODE\(2))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~8_combout\);

-- Location: LCCOMB_X20_Y17_N30
\INST_ALU|r_ALU_Result~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~2_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0) & ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_MEM\(3))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_instruction_decoder|o_Address_MEM\(3),
	datac => \INST_GPR|o_GPR_ALU_data_B\(0),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|r_ALU_Result~2_combout\);

-- Location: LCCOMB_X20_Y16_N20
\INST_ALU|ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~7_combout\ = (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|ShiftLeft0~6_combout\ & \INST_ALU|tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_ALU|ShiftLeft0~6_combout\,
	datad => \INST_ALU|tmp[8]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X22_Y19_N22
\INST_ALU|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_instruction_decoder|o_OPCODE\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(2) & (\INST_ALU|Add1~0_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Add0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add1~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Add0~5_combout\,
	combout => \INST_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y16_N8
\INST_ALU|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~2_combout\ = (\INST_ALU|Mux7~1_combout\ & ((\INST_ALU|r_ALU_Result~2_combout\) # ((!\INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_ALU|Mux7~1_combout\ & (((\INST_ALU|ShiftLeft0~7_combout\ & \INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result~2_combout\,
	datab => \INST_ALU|ShiftLeft0~7_combout\,
	datac => \INST_ALU|Mux7~1_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
\INST_ALU|ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~3_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_ALU|ShiftRight0~3_combout\);

-- Location: LCCOMB_X19_Y16_N20
\INST_ALU|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~4_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|ShiftRight0~4_combout\);

-- Location: LCCOMB_X19_Y16_N30
\INST_ALU|ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~5_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (((\INST_ALU|ShiftRight0~2_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_ALU|ShiftRight0~3_combout\) # ((\INST_ALU|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftRight0~3_combout\,
	datab => \INST_ALU|ShiftRight0~2_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_ALU|ShiftRight0~4_combout\,
	combout => \INST_ALU|ShiftRight0~5_combout\);

-- Location: LCCOMB_X22_Y16_N16
\INST_ALU|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~3_combout\ = (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|tmp[8]~0_combout\ & \INST_instruction_decoder|o_OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_ALU|tmp[8]~0_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y16_N18
\INST_ALU|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~4_combout\ = (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_ALU|Add0~5_combout\))) # (!\INST_instruction_decoder|o_Address_MEM\(0) & (\INST_ALU|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Add1~0_combout\,
	datab => \INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Add0~5_combout\,
	combout => \INST_ALU|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y16_N20
\INST_ALU|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~5_combout\ = (\INST_ALU|Mux7~4_combout\) # ((\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\) # (\INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => \INST_ALU|Mux7~4_combout\,
	combout => \INST_ALU|Mux7~5_combout\);

-- Location: LCCOMB_X23_Y16_N10
\INST_ALU|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~6_combout\ = (\INST_ALU|ShiftRight0~5_combout\ & ((\INST_ALU|Mux7~3_combout\) # ((\INST_instruction_decoder|o_OPCODE\(0) & \INST_ALU|Mux7~5_combout\)))) # (!\INST_ALU|ShiftRight0~5_combout\ & (\INST_instruction_decoder|o_OPCODE\(0) & 
-- ((\INST_ALU|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftRight0~5_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux7~3_combout\,
	datad => \INST_ALU|Mux7~5_combout\,
	combout => \INST_ALU|Mux7~6_combout\);

-- Location: LCCOMB_X23_Y16_N28
\INST_ALU|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(3)) # ((\INST_ALU|Mux7~2_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_ALU|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux7~2_combout\,
	datad => \INST_ALU|Mux7~6_combout\,
	combout => \INST_ALU|Mux7~7_combout\);

-- Location: LCCOMB_X23_Y16_N12
\INST_ALU|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux7~7_combout\ & ((!\INST_ALU|Mux7~8_combout\))) # (!\INST_ALU|Mux7~7_combout\ & (\INST_ALU|Mux7~0_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~0_combout\,
	datab => \INST_ALU|Mux7~8_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_ALU|Mux7~7_combout\,
	combout => \INST_ALU|Mux7~9_combout\);

-- Location: LCCOMB_X23_Y16_N24
\INST_ALU|r_ALU_Result[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[0]~3_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~10_combout\ & (\INST_ALU|r_ALU_Result\(0))) # (!\INST_ALU|Mux7~10_combout\ & ((\INST_ALU|Mux7~9_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~10_combout\,
	datac => \INST_ALU|r_ALU_Result\(0),
	datad => \INST_ALU|Mux7~9_combout\,
	combout => \INST_ALU|r_ALU_Result[0]~3_combout\);

-- Location: FF_X23_Y16_N25
\INST_ALU|r_ALU_Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(0));

-- Location: LCCOMB_X16_Y21_N16
\INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(0),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N4
\INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\ = (!\INST_instruction_decoder|o_Address_MEM\(14) & (\INST_MEMORY_CONTROL|r_MEM_state\(0) & (!\INST_MEMORY_CONTROL|r_MEM_state\(1) & \INST_instruction_decoder|o_Address_MEM\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datac => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	datad => \INST_instruction_decoder|o_Address_MEM\(15),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\);

-- Location: FF_X16_Y21_N17
\INST_MEMORY_CONTROL|o_MC_GPIO_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(0));

-- Location: LCCOMB_X16_Y21_N26
\INST_MEMORY_CONTROL|o_MC_GPIO_address[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_address[1]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(1),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_address[1]~feeder_combout\);

-- Location: FF_X16_Y21_N27
\INST_MEMORY_CONTROL|o_MC_GPIO_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_address[1]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(1));

-- Location: LCCOMB_X16_Y21_N20
\INST_MEMORY_CONTROL|o_MC_GPIO_address[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_address[2]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(2),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_address[2]~feeder_combout\);

-- Location: FF_X16_Y21_N21
\INST_MEMORY_CONTROL|o_MC_GPIO_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_address[2]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(2));

-- Location: LCCOMB_X16_Y21_N18
\INST_MEMORY_CONTROL|o_MC_GPIO_address[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_address[3]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(3),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_address[3]~feeder_combout\);

-- Location: FF_X16_Y21_N19
\INST_MEMORY_CONTROL|o_MC_GPIO_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_address[3]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_address\(3));

-- Location: LCCOMB_X16_Y21_N4
\INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~feeder_combout\ = \r_MEM_write_enable~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_MEM_write_enable~combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~feeder_combout\);

-- Location: FF_X16_Y21_N5
\INST_MEMORY_CONTROL|o_MC_GPIO_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\);

-- Location: LCCOMB_X22_Y18_N12
\INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\ = (\INST_instruction_decoder|o_BUS_select\(0) & (\INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\ & \INST_control_unit|r_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BUS_select\(0),
	datac => \INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~0_combout\,
	datad => \INST_control_unit|r_state\(4),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\);

-- Location: FF_X23_Y18_N25
\INST_MEMORY_CONTROL|o_MC_GPIO_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_MEMORY\(0),
	sload => VCC,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(0));

-- Location: FF_X23_Y18_N19
\INST_MEMORY_CONTROL|o_MC_GPIO_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_MEMORY\(1),
	sload => VCC,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(1));

-- Location: LCCOMB_X23_Y18_N12
\INST_MEMORY_CONTROL|o_MC_GPIO_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[2]~feeder_combout\ = \INST_data_bus|o_MEMORY\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_data_bus|o_MEMORY\(2),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[2]~feeder_combout\);

-- Location: FF_X23_Y18_N13
\INST_MEMORY_CONTROL|o_MC_GPIO_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_data[2]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(2));

-- Location: FF_X23_Y18_N31
\INST_MEMORY_CONTROL|o_MC_GPIO_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_data_bus|o_MEMORY\(3),
	sload => VCC,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(3));

-- Location: LCCOMB_X22_Y18_N4
\INST_MEMORY_CONTROL|o_MC_GPIO_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[4]~feeder_combout\ = \INST_data_bus|o_MEMORY\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(4),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[4]~feeder_combout\);

-- Location: FF_X22_Y18_N5
\INST_MEMORY_CONTROL|o_MC_GPIO_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_data[4]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(4));

-- Location: LCCOMB_X23_Y18_N8
\INST_MEMORY_CONTROL|o_MC_GPIO_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[5]~feeder_combout\ = \INST_data_bus|o_MEMORY\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(5),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[5]~feeder_combout\);

-- Location: FF_X23_Y18_N9
\INST_MEMORY_CONTROL|o_MC_GPIO_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_data[5]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(5));

-- Location: LCCOMB_X23_Y18_N14
\INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\ = \INST_data_bus|o_MEMORY\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_data_bus|o_MEMORY\(6),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\);

-- Location: FF_X23_Y18_N15
\INST_MEMORY_CONTROL|o_MC_GPIO_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(6));

-- Location: LCCOMB_X23_Y18_N20
\INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\ = \INST_data_bus|o_MEMORY\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(7),
	combout => \INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\);

-- Location: FF_X23_Y18_N21
\INST_MEMORY_CONTROL|o_MC_GPIO_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_GPIO_data\(7));

-- Location: LCCOMB_X16_Y21_N10
\INST_MEMORY_CONTROL|o_MC_I2C_address[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_address[0]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(0),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_address[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N12
\INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\ = (\INST_MEMORY_CONTROL|r_MEM_state\(0) & (\INST_instruction_decoder|o_Address_MEM\(14) & (\INST_instruction_decoder|o_Address_MEM\(15) & !\INST_MEMORY_CONTROL|r_MEM_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEMORY_CONTROL|r_MEM_state\(0),
	datab => \INST_instruction_decoder|o_Address_MEM\(14),
	datac => \INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\);

-- Location: FF_X16_Y21_N11
\INST_MEMORY_CONTROL|o_MC_I2C_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_address[0]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_address\(0));

-- Location: LCCOMB_X16_Y21_N12
\INST_MEMORY_CONTROL|o_MC_I2C_address[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_address[1]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(1),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_address[1]~feeder_combout\);

-- Location: FF_X16_Y21_N13
\INST_MEMORY_CONTROL|o_MC_I2C_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_address[1]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_address\(1));

-- Location: LCCOMB_X16_Y21_N22
\INST_MEMORY_CONTROL|o_MC_I2C_address[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_address[2]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(2),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_address[2]~feeder_combout\);

-- Location: FF_X16_Y21_N23
\INST_MEMORY_CONTROL|o_MC_I2C_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_address[2]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_address\(2));

-- Location: LCCOMB_X16_Y21_N0
\INST_MEMORY_CONTROL|o_MC_I2C_address[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~feeder_combout\ = \INST_instruction_decoder|o_Address_MEM\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_MEM\(3),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~feeder_combout\);

-- Location: FF_X16_Y21_N1
\INST_MEMORY_CONTROL|o_MC_I2C_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_address\(3));

-- Location: LCCOMB_X16_Y21_N6
\INST_MEMORY_CONTROL|o_MC_I2c_write_enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~feeder_combout\ = \r_MEM_write_enable~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_MEM_write_enable~combout\,
	combout => \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~feeder_combout\);

-- Location: FF_X16_Y21_N7
\INST_MEMORY_CONTROL|o_MC_I2c_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2c_write_enable~q\);

-- Location: LCCOMB_X22_Y18_N2
\INST_MEMORY_CONTROL|o_MC_I2C_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~feeder_combout\ = \INST_data_bus|o_MEMORY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(0),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N22
\INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\ = (\INST_control_unit|r_state\(4) & (\INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\ & \INST_instruction_decoder|o_BUS_select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(4),
	datab => \INST_MEMORY_CONTROL|o_MC_I2C_address[3]~0_combout\,
	datac => \INST_instruction_decoder|o_BUS_select\(0),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\);

-- Location: FF_X22_Y18_N3
\INST_MEMORY_CONTROL|o_MC_I2C_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(0));

-- Location: LCCOMB_X22_Y18_N8
\INST_MEMORY_CONTROL|o_MC_I2C_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[1]~feeder_combout\ = \INST_data_bus|o_MEMORY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(1),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[1]~feeder_combout\);

-- Location: FF_X22_Y18_N9
\INST_MEMORY_CONTROL|o_MC_I2C_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[1]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(1));

-- Location: LCCOMB_X22_Y18_N26
\INST_MEMORY_CONTROL|o_MC_I2C_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[2]~feeder_combout\ = \INST_data_bus|o_MEMORY\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(2),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[2]~feeder_combout\);

-- Location: FF_X22_Y18_N27
\INST_MEMORY_CONTROL|o_MC_I2C_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[2]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(2));

-- Location: LCCOMB_X22_Y18_N28
\INST_MEMORY_CONTROL|o_MC_I2C_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[3]~feeder_combout\ = \INST_data_bus|o_MEMORY\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(3),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[3]~feeder_combout\);

-- Location: FF_X22_Y18_N29
\INST_MEMORY_CONTROL|o_MC_I2C_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[3]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(3));

-- Location: LCCOMB_X22_Y18_N6
\INST_MEMORY_CONTROL|o_MC_I2C_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[4]~feeder_combout\ = \INST_data_bus|o_MEMORY\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(4),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[4]~feeder_combout\);

-- Location: FF_X22_Y18_N7
\INST_MEMORY_CONTROL|o_MC_I2C_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[4]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(4));

-- Location: LCCOMB_X22_Y18_N0
\INST_MEMORY_CONTROL|o_MC_I2C_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[5]~feeder_combout\ = \INST_data_bus|o_MEMORY\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(5),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[5]~feeder_combout\);

-- Location: FF_X22_Y18_N1
\INST_MEMORY_CONTROL|o_MC_I2C_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[5]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(5));

-- Location: LCCOMB_X22_Y18_N10
\INST_MEMORY_CONTROL|o_MC_I2C_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[6]~feeder_combout\ = \INST_data_bus|o_MEMORY\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(6),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[6]~feeder_combout\);

-- Location: FF_X22_Y18_N11
\INST_MEMORY_CONTROL|o_MC_I2C_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[6]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(6));

-- Location: LCCOMB_X22_Y18_N24
\INST_MEMORY_CONTROL|o_MC_I2C_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MEMORY_CONTROL|o_MC_I2C_data[7]~feeder_combout\ = \INST_data_bus|o_MEMORY\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_data_bus|o_MEMORY\(7),
	combout => \INST_MEMORY_CONTROL|o_MC_I2C_data[7]~feeder_combout\);

-- Location: FF_X22_Y18_N25
\INST_MEMORY_CONTROL|o_MC_I2C_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_MEMORY_CONTROL|o_MC_I2C_data[7]~feeder_combout\,
	ena => \INST_MEMORY_CONTROL|o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MEMORY_CONTROL|o_MC_I2C_data\(7));

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;

ww_o_STATE(0) <= \o_STATE[0]~output_o\;

ww_o_STATE(1) <= \o_STATE[1]~output_o\;

ww_o_STATE(2) <= \o_STATE[2]~output_o\;

ww_o_STATE(3) <= \o_STATE[3]~output_o\;

ww_o_STATE(4) <= \o_STATE[4]~output_o\;

ww_o_STATE(5) <= \o_STATE[5]~output_o\;

ww_o_STATE(6) <= \o_STATE[6]~output_o\;

ww_o_MC_GPIO_address(0) <= \o_MC_GPIO_address[0]~output_o\;

ww_o_MC_GPIO_address(1) <= \o_MC_GPIO_address[1]~output_o\;

ww_o_MC_GPIO_address(2) <= \o_MC_GPIO_address[2]~output_o\;

ww_o_MC_GPIO_address(3) <= \o_MC_GPIO_address[3]~output_o\;

ww_o_MC_GPIO_write_enable <= \o_MC_GPIO_write_enable~output_o\;

ww_o_MC_GPIO_data(0) <= \o_MC_GPIO_data[0]~output_o\;

ww_o_MC_GPIO_data(1) <= \o_MC_GPIO_data[1]~output_o\;

ww_o_MC_GPIO_data(2) <= \o_MC_GPIO_data[2]~output_o\;

ww_o_MC_GPIO_data(3) <= \o_MC_GPIO_data[3]~output_o\;

ww_o_MC_GPIO_data(4) <= \o_MC_GPIO_data[4]~output_o\;

ww_o_MC_GPIO_data(5) <= \o_MC_GPIO_data[5]~output_o\;

ww_o_MC_GPIO_data(6) <= \o_MC_GPIO_data[6]~output_o\;

ww_o_MC_GPIO_data(7) <= \o_MC_GPIO_data[7]~output_o\;

ww_o_MC_I2C_address(0) <= \o_MC_I2C_address[0]~output_o\;

ww_o_MC_I2C_address(1) <= \o_MC_I2C_address[1]~output_o\;

ww_o_MC_I2C_address(2) <= \o_MC_I2C_address[2]~output_o\;

ww_o_MC_I2C_address(3) <= \o_MC_I2C_address[3]~output_o\;

ww_o_MC_I2C_write_enable <= \o_MC_I2C_write_enable~output_o\;

ww_o_MC_I2C_data(0) <= \o_MC_I2C_data[0]~output_o\;

ww_o_MC_I2C_data(1) <= \o_MC_I2C_data[1]~output_o\;

ww_o_MC_I2C_data(2) <= \o_MC_I2C_data[2]~output_o\;

ww_o_MC_I2C_data(3) <= \o_MC_I2C_data[3]~output_o\;

ww_o_MC_I2C_data(4) <= \o_MC_I2C_data[4]~output_o\;

ww_o_MC_I2C_data(5) <= \o_MC_I2C_data[5]~output_o\;

ww_o_MC_I2C_data(6) <= \o_MC_I2C_data[6]~output_o\;

ww_o_MC_I2C_data(7) <= \o_MC_I2C_data[7]~output_o\;
END structure;


