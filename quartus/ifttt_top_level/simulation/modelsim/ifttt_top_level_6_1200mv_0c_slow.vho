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

-- DATE "05/01/2019 13:11:31"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	ifttt_top_level IS
    PORT (
	i_CLK : IN std_logic;
	i_RESET : IN std_logic;
	i_HALT : IN std_logic;
	o_DATA : OUT std_logic_vector(7 DOWNTO 0);
	o_STATE : OUT std_logic_vector(6 DOWNTO 0);
	i_INTERRUPT_request : IN std_logic;
	o_INTERRUPT_ack : OUT std_logic;
	io_GPIO_PIN0 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN1 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN2 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN3 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN4 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN5 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN6 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN7 : INOUT std_logic_vector(7 DOWNTO 0)
	);
END ifttt_top_level;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_INTERRUPT_ack	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[7]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[7]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RESET	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_HALT	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INTERRUPT_request	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ifttt_top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_RESET : std_logic;
SIGNAL ww_i_HALT : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_STATE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_i_INTERRUPT_request : std_logic;
SIGNAL ww_o_INTERRUPT_ack : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r_CLK_divided[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io_GPIO_PIN0[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[7]~output_o\ : std_logic;
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
SIGNAL \o_INTERRUPT_ack~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_CLK_divided[0]~69_combout\ : std_logic;
SIGNAL \r_CLK_divided[1]~23_combout\ : std_logic;
SIGNAL \r_CLK_divided[1]~24\ : std_logic;
SIGNAL \r_CLK_divided[2]~25_combout\ : std_logic;
SIGNAL \r_CLK_divided[2]~26\ : std_logic;
SIGNAL \r_CLK_divided[3]~27_combout\ : std_logic;
SIGNAL \r_CLK_divided[3]~28\ : std_logic;
SIGNAL \r_CLK_divided[4]~29_combout\ : std_logic;
SIGNAL \r_CLK_divided[4]~30\ : std_logic;
SIGNAL \r_CLK_divided[5]~31_combout\ : std_logic;
SIGNAL \r_CLK_divided[5]~32\ : std_logic;
SIGNAL \r_CLK_divided[6]~33_combout\ : std_logic;
SIGNAL \r_CLK_divided[6]~34\ : std_logic;
SIGNAL \r_CLK_divided[7]~35_combout\ : std_logic;
SIGNAL \r_CLK_divided[7]~36\ : std_logic;
SIGNAL \r_CLK_divided[8]~37_combout\ : std_logic;
SIGNAL \r_CLK_divided[8]~38\ : std_logic;
SIGNAL \r_CLK_divided[9]~39_combout\ : std_logic;
SIGNAL \r_CLK_divided[9]~40\ : std_logic;
SIGNAL \r_CLK_divided[10]~41_combout\ : std_logic;
SIGNAL \r_CLK_divided[10]~42\ : std_logic;
SIGNAL \r_CLK_divided[11]~43_combout\ : std_logic;
SIGNAL \r_CLK_divided[11]~44\ : std_logic;
SIGNAL \r_CLK_divided[12]~45_combout\ : std_logic;
SIGNAL \r_CLK_divided[12]~46\ : std_logic;
SIGNAL \r_CLK_divided[13]~47_combout\ : std_logic;
SIGNAL \r_CLK_divided[13]~48\ : std_logic;
SIGNAL \r_CLK_divided[14]~49_combout\ : std_logic;
SIGNAL \r_CLK_divided[14]~50\ : std_logic;
SIGNAL \r_CLK_divided[15]~51_combout\ : std_logic;
SIGNAL \r_CLK_divided[15]~52\ : std_logic;
SIGNAL \r_CLK_divided[16]~53_combout\ : std_logic;
SIGNAL \r_CLK_divided[16]~54\ : std_logic;
SIGNAL \r_CLK_divided[17]~55_combout\ : std_logic;
SIGNAL \r_CLK_divided[17]~56\ : std_logic;
SIGNAL \r_CLK_divided[18]~57_combout\ : std_logic;
SIGNAL \r_CLK_divided[18]~58\ : std_logic;
SIGNAL \r_CLK_divided[19]~59_combout\ : std_logic;
SIGNAL \r_CLK_divided[19]~60\ : std_logic;
SIGNAL \r_CLK_divided[20]~61_combout\ : std_logic;
SIGNAL \r_CLK_divided[20]~62\ : std_logic;
SIGNAL \r_CLK_divided[21]~63_combout\ : std_logic;
SIGNAL \r_CLK_divided[21]~64\ : std_logic;
SIGNAL \r_CLK_divided[22]~65_combout\ : std_logic;
SIGNAL \r_CLK_divided[22]~66\ : std_logic;
SIGNAL \r_CLK_divided[23]~67_combout\ : std_logic;
SIGNAL \r_CLK_divided[23]~clkctrl_outclk\ : std_logic;
SIGNAL \i_RESET~input_o\ : std_logic;
SIGNAL \i_HALT~input_o\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~1\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~3\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~5\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux58~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux57~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|Mux7~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|Mux6~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state[3]~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_outclk\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~7\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~9\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~11\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~13\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~15\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~17\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~11_combout\ : std_logic;
SIGNAL \i_INTERRUPT_request~input_o\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux3~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux3~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~30_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~25_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~27_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~24_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~26_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~28_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~31_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~32_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~29_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~47_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~48_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[3]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux5~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[3]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux5~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[3]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[3]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux5~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux5~3_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux5~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|r_MEM_write_enable~combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~39_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~40_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[6]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN0[6]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux2~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[6]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux2~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN6[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[6]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux2~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[6]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux2~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux2~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux83~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~17_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~21_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~20_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~19_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~31_combout\ : std_logic;
SIGNAL \INST_cpu_core|r_register_enable~combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~33_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~32_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~28_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~34_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~36_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~30_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~35_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~37_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~1\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~3\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~5\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~7\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~9\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~11\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~13\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~32_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~31_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~28_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~27_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~24_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~20_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~19_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~4_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~6\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~10\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~14\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~18\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~22\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~26\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~30\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~33_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|tmp[8]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~19_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux0~17_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[7]~19_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~37_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~38_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[7]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux1~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux1~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[7]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[7]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux1~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[7]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux1~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux1~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux82~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux16~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~27_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~23_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~25_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~1_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~3_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~5_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~7_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~9_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~11_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~13_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan1~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[5]~17_combout\ : std_logic;
SIGNAL \io_GPIO_PIN6[5]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[5]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux3~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[5]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux3~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[5]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[5]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux3~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux3~3_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux3~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~41_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~42_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux84~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux14~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~23_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~21_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux3~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[4]~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~43_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~44_combout\ : std_logic;
SIGNAL \io_GPIO_PIN1[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN0[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux4~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[4]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux4~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN6[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux4~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[4]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux4~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux4~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux85~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux13~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~26_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|LessThan0~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~29_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux1~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux15~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_CONFIG_REGISTER[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux0~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_CONFIG_REGISTER[2]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux0~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux0~3_combout\ : std_logic;
SIGNAL \INST_GPIO_register|o_GPIO_data[0]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux86~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~17_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~15_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~20_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux4~18_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[3]~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux12~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~29_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux5~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[2]~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~45_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~46_combout\ : std_logic;
SIGNAL \io_GPIO_PIN0[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[2]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux6~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[2]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux6~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[2]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux6~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[2]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux6~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux6~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux87~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux11~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~24_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux6~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[1]~6_combout\ : std_logic;
SIGNAL \io_GPIO_PIN1[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[1]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux7~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[1]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux7~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[1]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[1]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux7~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[1]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|Mux7~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux7~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~35_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~36_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux88~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux10~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER~25_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~15\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add1~16_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft1~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft1~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft1~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|tmp[8]~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|tmp[8]~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux9~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux9~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux10~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux10~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|Mux10~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Equal3~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Equal3~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Equal3~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_zero_flag~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Signed~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux11~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_negative_flag~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|Mux10~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|Mux10~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~10_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux4~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux4~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|Add0~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|process_0~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~11_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~12_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~13_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~14_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|process_0~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|Mux7~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_control_unit|r_state~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Add0~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|ShiftRight0~5_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~6_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~7_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~8_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|Mux7~9_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result[0]~3_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~23_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY~34_combout\ : std_logic;
SIGNAL \io_GPIO_PIN0[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[0]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux8~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[0]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux8~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[0]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[0]~input_o\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux8~0_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux8~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Mux8~4_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|Mux89~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_data_bus|Mux9~0_combout\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~0_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~1_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~2_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[0][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~3_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[1][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~4_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[2][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~5_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[3][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~6_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[4][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~7_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[5][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~8_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[6][7]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|Decoder0~9_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][0]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][1]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][2]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][3]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][4]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][5]~q\ : std_logic;
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][6]~q\ : std_logic;
SIGNAL \INST_GPIO_register|r_IO_REG_OUT[7][7]~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\ : std_logic_vector(0 TO 44);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_CLK_divided : std_logic_vector(23 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_InstrucReg|r_register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_BUS_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_control_unit|r_state\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_ALU|r_ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_data_bus|o_REGISTER\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_data_bus|o_MEMORY\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPIO_register|r_CONFIG_REGISTER\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_ALU|tmp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_branch_control|o_ADDRESS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_GPIO_register|o_GPIO_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_r_CLK_divided[23]~clkctrl_outclk\ : std_logic;
SIGNAL \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\ : std_logic;
SIGNAL \INST_cpu_core|INST_instruction_decoder|ALT_INV_o_OPCODE\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST_cpu_core|INST_control_unit|ALT_INV_r_state\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RESET <= i_RESET;
ww_i_HALT <= i_HALT;
o_DATA <= ww_o_DATA;
o_STATE <= ww_o_STATE;
ww_i_INTERRUPT_request <= i_INTERRUPT_request;
o_INTERRUPT_ack <= ww_o_INTERRUPT_ack;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& \INST_cpu_core|INST_data_bus|o_REGISTER\(7) & \INST_cpu_core|INST_data_bus|o_REGISTER\(6) & \INST_cpu_core|INST_data_bus|o_REGISTER\(5) & \INST_cpu_core|INST_data_bus|o_REGISTER\(4) & \INST_cpu_core|INST_data_bus|o_REGISTER\(3) & 
\INST_cpu_core|INST_data_bus|o_REGISTER\(2) & \INST_cpu_core|INST_data_bus|o_REGISTER\(1) & \INST_cpu_core|INST_data_bus|o_REGISTER\(0));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(4) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3) & 
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_cpu_core|INST_InstrucReg|r_register\(17) & \INST_cpu_core|INST_InstrucReg|r_register\(16) & \INST_cpu_core|INST_InstrucReg|r_register\(15) & 
\INST_cpu_core|INST_InstrucReg|r_register\(14) & \INST_cpu_core|INST_InstrucReg|r_register\(13));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& \INST_cpu_core|INST_data_bus|o_REGISTER\(7) & \INST_cpu_core|INST_data_bus|o_REGISTER\(6) & \INST_cpu_core|INST_data_bus|o_REGISTER\(5) & \INST_cpu_core|INST_data_bus|o_REGISTER\(4) & \INST_cpu_core|INST_data_bus|o_REGISTER\(3) & 
\INST_cpu_core|INST_data_bus|o_REGISTER\(2) & \INST_cpu_core|INST_data_bus|o_REGISTER\(1) & \INST_cpu_core|INST_data_bus|o_REGISTER\(0));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(4) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3) & 
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_cpu_core|INST_InstrucReg|r_register\(22) & \INST_cpu_core|INST_InstrucReg|r_register\(21) & \INST_cpu_core|INST_InstrucReg|r_register\(20) & 
\INST_cpu_core|INST_InstrucReg|r_register\(19) & \INST_cpu_core|INST_InstrucReg|r_register\(18));

\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\ <= \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0));

\INST_cpu_core|INST_InstrucReg|r_register\(0) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\INST_cpu_core|INST_InstrucReg|r_register\(5) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\INST_cpu_core|INST_InstrucReg|r_register\(6) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\INST_cpu_core|INST_InstrucReg|r_register\(10) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\INST_cpu_core|INST_InstrucReg|r_register\(11) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\INST_cpu_core|INST_InstrucReg|r_register\(12) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\INST_cpu_core|INST_InstrucReg|r_register\(28) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\INST_cpu_core|INST_InstrucReg|r_register\(30) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\INST_cpu_core|INST_InstrucReg|r_register\(31) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0));

\INST_cpu_core|INST_InstrucReg|r_register\(2) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\INST_cpu_core|INST_InstrucReg|r_register\(7) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\INST_cpu_core|INST_InstrucReg|r_register\(8) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\INST_cpu_core|INST_InstrucReg|r_register\(9) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\INST_cpu_core|INST_InstrucReg|r_register\(13) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\INST_cpu_core|INST_InstrucReg|r_register\(14) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\INST_cpu_core|INST_InstrucReg|r_register\(15) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\INST_cpu_core|INST_InstrucReg|r_register\(16) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\INST_cpu_core|INST_InstrucReg|r_register\(29) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);

\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0));

\INST_cpu_core|INST_InstrucReg|r_register\(17) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);
\INST_cpu_core|INST_InstrucReg|r_register\(18) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(1);
\INST_cpu_core|INST_InstrucReg|r_register\(19) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(2);
\INST_cpu_core|INST_InstrucReg|r_register\(20) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(3);
\INST_cpu_core|INST_InstrucReg|r_register\(21) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(4);
\INST_cpu_core|INST_InstrucReg|r_register\(22) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(5);
\INST_cpu_core|INST_InstrucReg|r_register\(23) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(6);
\INST_cpu_core|INST_InstrucReg|r_register\(24) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(7);
\INST_cpu_core|INST_InstrucReg|r_register\(25) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(8);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(1);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(1);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(7);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(7);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(6);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(6);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(5);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(5);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(4);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(4);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(2);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(2);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(3);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(3);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3) & 
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ & 
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & 
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0));

\INST_cpu_core|INST_InstrucReg|r_register\(1) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\INST_cpu_core|INST_InstrucReg|r_register\(3) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\INST_cpu_core|INST_InstrucReg|r_register\(4) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\INST_cpu_core|INST_InstrucReg|r_register\(26) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\INST_cpu_core|INST_InstrucReg|r_register\(27) <= \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);

\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\);

\r_CLK_divided[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & r_CLK_divided(23));

\INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_cpu_core|INST_control_unit|r_state\(3));

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\ <= NOT \INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_outclk\;
\ALT_INV_r_CLK_divided[23]~clkctrl_outclk\ <= NOT \r_CLK_divided[23]~clkctrl_outclk\;
\INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\ <= NOT \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\;
\INST_cpu_core|INST_instruction_decoder|ALT_INV_o_OPCODE\(0) <= NOT \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0);
\INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0) <= NOT \INST_cpu_core|INST_control_unit|r_state\(0);
\INST_cpu_core|INST_control_unit|ALT_INV_r_state\(1) <= NOT \INST_cpu_core|INST_control_unit|r_state\(1);

-- Location: IOOBUF_X23_Y29_N23
\io_GPIO_PIN0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\io_GPIO_PIN0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\io_GPIO_PIN0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\io_GPIO_PIN0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\io_GPIO_PIN0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\io_GPIO_PIN0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\io_GPIO_PIN0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\io_GPIO_PIN0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\io_GPIO_PIN1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\io_GPIO_PIN1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\io_GPIO_PIN1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\io_GPIO_PIN1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\io_GPIO_PIN1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\io_GPIO_PIN1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[5]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\io_GPIO_PIN1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[6]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\io_GPIO_PIN1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\io_GPIO_PIN2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\io_GPIO_PIN2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\io_GPIO_PIN2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\io_GPIO_PIN2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\io_GPIO_PIN2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\io_GPIO_PIN2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\io_GPIO_PIN2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\io_GPIO_PIN2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[7]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\io_GPIO_PIN3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\io_GPIO_PIN3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\io_GPIO_PIN3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\io_GPIO_PIN3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\io_GPIO_PIN3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\io_GPIO_PIN3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\io_GPIO_PIN3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\io_GPIO_PIN3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[7]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\io_GPIO_PIN4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\io_GPIO_PIN4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[1]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\io_GPIO_PIN4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\io_GPIO_PIN4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\io_GPIO_PIN4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\io_GPIO_PIN4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[5]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\io_GPIO_PIN4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\io_GPIO_PIN4[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[7]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\io_GPIO_PIN5[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\io_GPIO_PIN5[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\io_GPIO_PIN5[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\io_GPIO_PIN5[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\io_GPIO_PIN5[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[4]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\io_GPIO_PIN5[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[5]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\io_GPIO_PIN5[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\io_GPIO_PIN5[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[7]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\io_GPIO_PIN6[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\io_GPIO_PIN6[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\io_GPIO_PIN6[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\io_GPIO_PIN6[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\io_GPIO_PIN6[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\io_GPIO_PIN6[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[5]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\io_GPIO_PIN6[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\io_GPIO_PIN6[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\io_GPIO_PIN7[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(0),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\io_GPIO_PIN7[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(1),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\io_GPIO_PIN7[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(2),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\io_GPIO_PIN7[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(3),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\io_GPIO_PIN7[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(4),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\io_GPIO_PIN7[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(5),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\io_GPIO_PIN7[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(6),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\io_GPIO_PIN7[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(7),
	oe => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(0),
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(1),
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(2),
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(3),
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(4),
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(5),
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(6),
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\o_STATE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0),
	devoe => ww_devoe,
	o => \o_STATE[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\o_STATE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_state\(1),
	devoe => ww_devoe,
	o => \o_STATE[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\o_STATE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_state\(2),
	devoe => ww_devoe,
	o => \o_STATE[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_STATE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_state\(3),
	devoe => ww_devoe,
	o => \o_STATE[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_STATE[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_state\(4),
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
	i => \INST_cpu_core|INST_control_unit|r_state\(5),
	devoe => ww_devoe,
	o => \o_STATE[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\o_STATE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_state\(6),
	devoe => ww_devoe,
	o => \o_STATE[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_INTERRUPT_ack~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	devoe => ww_devoe,
	o => \o_INTERRUPT_ack~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G9
\i_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y16_N0
\r_CLK_divided[0]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[0]~69_combout\ = !r_CLK_divided(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_CLK_divided(0),
	combout => \r_CLK_divided[0]~69_combout\);

-- Location: FF_X40_Y16_N1
\r_CLK_divided[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(0));

-- Location: LCCOMB_X40_Y16_N10
\r_CLK_divided[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[1]~23_combout\ = (r_CLK_divided(1) & (r_CLK_divided(0) $ (VCC))) # (!r_CLK_divided(1) & (r_CLK_divided(0) & VCC))
-- \r_CLK_divided[1]~24\ = CARRY((r_CLK_divided(1) & r_CLK_divided(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(1),
	datab => r_CLK_divided(0),
	datad => VCC,
	combout => \r_CLK_divided[1]~23_combout\,
	cout => \r_CLK_divided[1]~24\);

-- Location: FF_X40_Y16_N11
\r_CLK_divided[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(1));

-- Location: LCCOMB_X40_Y16_N12
\r_CLK_divided[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[2]~25_combout\ = (r_CLK_divided(2) & (!\r_CLK_divided[1]~24\)) # (!r_CLK_divided(2) & ((\r_CLK_divided[1]~24\) # (GND)))
-- \r_CLK_divided[2]~26\ = CARRY((!\r_CLK_divided[1]~24\) # (!r_CLK_divided(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(2),
	datad => VCC,
	cin => \r_CLK_divided[1]~24\,
	combout => \r_CLK_divided[2]~25_combout\,
	cout => \r_CLK_divided[2]~26\);

-- Location: FF_X40_Y16_N13
\r_CLK_divided[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(2));

-- Location: LCCOMB_X40_Y16_N14
\r_CLK_divided[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[3]~27_combout\ = (r_CLK_divided(3) & (\r_CLK_divided[2]~26\ $ (GND))) # (!r_CLK_divided(3) & (!\r_CLK_divided[2]~26\ & VCC))
-- \r_CLK_divided[3]~28\ = CARRY((r_CLK_divided(3) & !\r_CLK_divided[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(3),
	datad => VCC,
	cin => \r_CLK_divided[2]~26\,
	combout => \r_CLK_divided[3]~27_combout\,
	cout => \r_CLK_divided[3]~28\);

-- Location: FF_X40_Y16_N15
\r_CLK_divided[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(3));

-- Location: LCCOMB_X40_Y16_N16
\r_CLK_divided[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[4]~29_combout\ = (r_CLK_divided(4) & (!\r_CLK_divided[3]~28\)) # (!r_CLK_divided(4) & ((\r_CLK_divided[3]~28\) # (GND)))
-- \r_CLK_divided[4]~30\ = CARRY((!\r_CLK_divided[3]~28\) # (!r_CLK_divided(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(4),
	datad => VCC,
	cin => \r_CLK_divided[3]~28\,
	combout => \r_CLK_divided[4]~29_combout\,
	cout => \r_CLK_divided[4]~30\);

-- Location: FF_X40_Y16_N17
\r_CLK_divided[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(4));

-- Location: LCCOMB_X40_Y16_N18
\r_CLK_divided[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[5]~31_combout\ = (r_CLK_divided(5) & (\r_CLK_divided[4]~30\ $ (GND))) # (!r_CLK_divided(5) & (!\r_CLK_divided[4]~30\ & VCC))
-- \r_CLK_divided[5]~32\ = CARRY((r_CLK_divided(5) & !\r_CLK_divided[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(5),
	datad => VCC,
	cin => \r_CLK_divided[4]~30\,
	combout => \r_CLK_divided[5]~31_combout\,
	cout => \r_CLK_divided[5]~32\);

-- Location: FF_X40_Y16_N19
\r_CLK_divided[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(5));

-- Location: LCCOMB_X40_Y16_N20
\r_CLK_divided[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[6]~33_combout\ = (r_CLK_divided(6) & (!\r_CLK_divided[5]~32\)) # (!r_CLK_divided(6) & ((\r_CLK_divided[5]~32\) # (GND)))
-- \r_CLK_divided[6]~34\ = CARRY((!\r_CLK_divided[5]~32\) # (!r_CLK_divided(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(6),
	datad => VCC,
	cin => \r_CLK_divided[5]~32\,
	combout => \r_CLK_divided[6]~33_combout\,
	cout => \r_CLK_divided[6]~34\);

-- Location: FF_X40_Y16_N21
\r_CLK_divided[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(6));

-- Location: LCCOMB_X40_Y16_N22
\r_CLK_divided[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[7]~35_combout\ = (r_CLK_divided(7) & (\r_CLK_divided[6]~34\ $ (GND))) # (!r_CLK_divided(7) & (!\r_CLK_divided[6]~34\ & VCC))
-- \r_CLK_divided[7]~36\ = CARRY((r_CLK_divided(7) & !\r_CLK_divided[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(7),
	datad => VCC,
	cin => \r_CLK_divided[6]~34\,
	combout => \r_CLK_divided[7]~35_combout\,
	cout => \r_CLK_divided[7]~36\);

-- Location: FF_X40_Y16_N23
\r_CLK_divided[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(7));

-- Location: LCCOMB_X40_Y16_N24
\r_CLK_divided[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[8]~37_combout\ = (r_CLK_divided(8) & (!\r_CLK_divided[7]~36\)) # (!r_CLK_divided(8) & ((\r_CLK_divided[7]~36\) # (GND)))
-- \r_CLK_divided[8]~38\ = CARRY((!\r_CLK_divided[7]~36\) # (!r_CLK_divided(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(8),
	datad => VCC,
	cin => \r_CLK_divided[7]~36\,
	combout => \r_CLK_divided[8]~37_combout\,
	cout => \r_CLK_divided[8]~38\);

-- Location: FF_X40_Y16_N25
\r_CLK_divided[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(8));

-- Location: LCCOMB_X40_Y16_N26
\r_CLK_divided[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[9]~39_combout\ = (r_CLK_divided(9) & (\r_CLK_divided[8]~38\ $ (GND))) # (!r_CLK_divided(9) & (!\r_CLK_divided[8]~38\ & VCC))
-- \r_CLK_divided[9]~40\ = CARRY((r_CLK_divided(9) & !\r_CLK_divided[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(9),
	datad => VCC,
	cin => \r_CLK_divided[8]~38\,
	combout => \r_CLK_divided[9]~39_combout\,
	cout => \r_CLK_divided[9]~40\);

-- Location: FF_X40_Y16_N27
\r_CLK_divided[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(9));

-- Location: LCCOMB_X40_Y16_N28
\r_CLK_divided[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[10]~41_combout\ = (r_CLK_divided(10) & (!\r_CLK_divided[9]~40\)) # (!r_CLK_divided(10) & ((\r_CLK_divided[9]~40\) # (GND)))
-- \r_CLK_divided[10]~42\ = CARRY((!\r_CLK_divided[9]~40\) # (!r_CLK_divided(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(10),
	datad => VCC,
	cin => \r_CLK_divided[9]~40\,
	combout => \r_CLK_divided[10]~41_combout\,
	cout => \r_CLK_divided[10]~42\);

-- Location: FF_X40_Y16_N29
\r_CLK_divided[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(10));

-- Location: LCCOMB_X40_Y16_N30
\r_CLK_divided[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[11]~43_combout\ = (r_CLK_divided(11) & (\r_CLK_divided[10]~42\ $ (GND))) # (!r_CLK_divided(11) & (!\r_CLK_divided[10]~42\ & VCC))
-- \r_CLK_divided[11]~44\ = CARRY((r_CLK_divided(11) & !\r_CLK_divided[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(11),
	datad => VCC,
	cin => \r_CLK_divided[10]~42\,
	combout => \r_CLK_divided[11]~43_combout\,
	cout => \r_CLK_divided[11]~44\);

-- Location: FF_X40_Y16_N31
\r_CLK_divided[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(11));

-- Location: LCCOMB_X40_Y15_N0
\r_CLK_divided[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[12]~45_combout\ = (r_CLK_divided(12) & (!\r_CLK_divided[11]~44\)) # (!r_CLK_divided(12) & ((\r_CLK_divided[11]~44\) # (GND)))
-- \r_CLK_divided[12]~46\ = CARRY((!\r_CLK_divided[11]~44\) # (!r_CLK_divided(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(12),
	datad => VCC,
	cin => \r_CLK_divided[11]~44\,
	combout => \r_CLK_divided[12]~45_combout\,
	cout => \r_CLK_divided[12]~46\);

-- Location: FF_X40_Y15_N1
\r_CLK_divided[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(12));

-- Location: LCCOMB_X40_Y15_N2
\r_CLK_divided[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[13]~47_combout\ = (r_CLK_divided(13) & (\r_CLK_divided[12]~46\ $ (GND))) # (!r_CLK_divided(13) & (!\r_CLK_divided[12]~46\ & VCC))
-- \r_CLK_divided[13]~48\ = CARRY((r_CLK_divided(13) & !\r_CLK_divided[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(13),
	datad => VCC,
	cin => \r_CLK_divided[12]~46\,
	combout => \r_CLK_divided[13]~47_combout\,
	cout => \r_CLK_divided[13]~48\);

-- Location: FF_X40_Y15_N3
\r_CLK_divided[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(13));

-- Location: LCCOMB_X40_Y15_N4
\r_CLK_divided[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[14]~49_combout\ = (r_CLK_divided(14) & (!\r_CLK_divided[13]~48\)) # (!r_CLK_divided(14) & ((\r_CLK_divided[13]~48\) # (GND)))
-- \r_CLK_divided[14]~50\ = CARRY((!\r_CLK_divided[13]~48\) # (!r_CLK_divided(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(14),
	datad => VCC,
	cin => \r_CLK_divided[13]~48\,
	combout => \r_CLK_divided[14]~49_combout\,
	cout => \r_CLK_divided[14]~50\);

-- Location: FF_X40_Y15_N5
\r_CLK_divided[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(14));

-- Location: LCCOMB_X40_Y15_N6
\r_CLK_divided[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[15]~51_combout\ = (r_CLK_divided(15) & (\r_CLK_divided[14]~50\ $ (GND))) # (!r_CLK_divided(15) & (!\r_CLK_divided[14]~50\ & VCC))
-- \r_CLK_divided[15]~52\ = CARRY((r_CLK_divided(15) & !\r_CLK_divided[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(15),
	datad => VCC,
	cin => \r_CLK_divided[14]~50\,
	combout => \r_CLK_divided[15]~51_combout\,
	cout => \r_CLK_divided[15]~52\);

-- Location: FF_X40_Y15_N7
\r_CLK_divided[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(15));

-- Location: LCCOMB_X40_Y15_N8
\r_CLK_divided[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[16]~53_combout\ = (r_CLK_divided(16) & (!\r_CLK_divided[15]~52\)) # (!r_CLK_divided(16) & ((\r_CLK_divided[15]~52\) # (GND)))
-- \r_CLK_divided[16]~54\ = CARRY((!\r_CLK_divided[15]~52\) # (!r_CLK_divided(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(16),
	datad => VCC,
	cin => \r_CLK_divided[15]~52\,
	combout => \r_CLK_divided[16]~53_combout\,
	cout => \r_CLK_divided[16]~54\);

-- Location: FF_X40_Y15_N9
\r_CLK_divided[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(16));

-- Location: LCCOMB_X40_Y15_N10
\r_CLK_divided[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[17]~55_combout\ = (r_CLK_divided(17) & (\r_CLK_divided[16]~54\ $ (GND))) # (!r_CLK_divided(17) & (!\r_CLK_divided[16]~54\ & VCC))
-- \r_CLK_divided[17]~56\ = CARRY((r_CLK_divided(17) & !\r_CLK_divided[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(17),
	datad => VCC,
	cin => \r_CLK_divided[16]~54\,
	combout => \r_CLK_divided[17]~55_combout\,
	cout => \r_CLK_divided[17]~56\);

-- Location: FF_X40_Y15_N11
\r_CLK_divided[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(17));

-- Location: LCCOMB_X40_Y15_N12
\r_CLK_divided[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[18]~57_combout\ = (r_CLK_divided(18) & (!\r_CLK_divided[17]~56\)) # (!r_CLK_divided(18) & ((\r_CLK_divided[17]~56\) # (GND)))
-- \r_CLK_divided[18]~58\ = CARRY((!\r_CLK_divided[17]~56\) # (!r_CLK_divided(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(18),
	datad => VCC,
	cin => \r_CLK_divided[17]~56\,
	combout => \r_CLK_divided[18]~57_combout\,
	cout => \r_CLK_divided[18]~58\);

-- Location: FF_X40_Y15_N13
\r_CLK_divided[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(18));

-- Location: LCCOMB_X40_Y15_N14
\r_CLK_divided[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[19]~59_combout\ = (r_CLK_divided(19) & (\r_CLK_divided[18]~58\ $ (GND))) # (!r_CLK_divided(19) & (!\r_CLK_divided[18]~58\ & VCC))
-- \r_CLK_divided[19]~60\ = CARRY((r_CLK_divided(19) & !\r_CLK_divided[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(19),
	datad => VCC,
	cin => \r_CLK_divided[18]~58\,
	combout => \r_CLK_divided[19]~59_combout\,
	cout => \r_CLK_divided[19]~60\);

-- Location: FF_X40_Y15_N15
\r_CLK_divided[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(19));

-- Location: LCCOMB_X40_Y15_N16
\r_CLK_divided[20]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[20]~61_combout\ = (r_CLK_divided(20) & (!\r_CLK_divided[19]~60\)) # (!r_CLK_divided(20) & ((\r_CLK_divided[19]~60\) # (GND)))
-- \r_CLK_divided[20]~62\ = CARRY((!\r_CLK_divided[19]~60\) # (!r_CLK_divided(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(20),
	datad => VCC,
	cin => \r_CLK_divided[19]~60\,
	combout => \r_CLK_divided[20]~61_combout\,
	cout => \r_CLK_divided[20]~62\);

-- Location: FF_X40_Y15_N17
\r_CLK_divided[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(20));

-- Location: LCCOMB_X40_Y15_N18
\r_CLK_divided[21]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[21]~63_combout\ = (r_CLK_divided(21) & (\r_CLK_divided[20]~62\ $ (GND))) # (!r_CLK_divided(21) & (!\r_CLK_divided[20]~62\ & VCC))
-- \r_CLK_divided[21]~64\ = CARRY((r_CLK_divided(21) & !\r_CLK_divided[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(21),
	datad => VCC,
	cin => \r_CLK_divided[20]~62\,
	combout => \r_CLK_divided[21]~63_combout\,
	cout => \r_CLK_divided[21]~64\);

-- Location: FF_X40_Y15_N19
\r_CLK_divided[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(21));

-- Location: LCCOMB_X40_Y15_N20
\r_CLK_divided[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[22]~65_combout\ = (r_CLK_divided(22) & (!\r_CLK_divided[21]~64\)) # (!r_CLK_divided(22) & ((\r_CLK_divided[21]~64\) # (GND)))
-- \r_CLK_divided[22]~66\ = CARRY((!\r_CLK_divided[21]~64\) # (!r_CLK_divided(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_divided(22),
	datad => VCC,
	cin => \r_CLK_divided[21]~64\,
	combout => \r_CLK_divided[22]~65_combout\,
	cout => \r_CLK_divided[22]~66\);

-- Location: FF_X40_Y15_N21
\r_CLK_divided[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_divided[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(22));

-- Location: LCCOMB_X40_Y15_N22
\r_CLK_divided[23]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CLK_divided[23]~67_combout\ = r_CLK_divided(23) $ (!\r_CLK_divided[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_divided(23),
	cin => \r_CLK_divided[22]~66\,
	combout => \r_CLK_divided[23]~67_combout\);

-- Location: FF_X40_Y15_N23
\r_CLK_divided[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \r_CLK_divided[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_divided(23));

-- Location: CLKCTRL_G8
\r_CLK_divided[23]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \r_CLK_divided[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \r_CLK_divided[23]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\i_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RESET,
	o => \i_RESET~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\i_HALT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_HALT,
	o => \i_HALT~input_o\);

-- Location: LCCOMB_X16_Y26_N6
\INST_cpu_core|INST_Program_counter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~0_combout\ = \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0) $ (VCC)
-- \INST_cpu_core|INST_Program_counter|Add0~1\ = CARRY(\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0),
	datad => VCC,
	combout => \INST_cpu_core|INST_Program_counter|Add0~0_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~1\);

-- Location: LCCOMB_X16_Y26_N8
\INST_cpu_core|INST_Program_counter|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~2_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & (!\INST_cpu_core|INST_Program_counter|Add0~1\)) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1) & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~1\) # (GND)))
-- \INST_cpu_core|INST_Program_counter|Add0~3\ = CARRY((!\INST_cpu_core|INST_Program_counter|Add0~1\) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~1\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~2_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~3\);

-- Location: LCCOMB_X16_Y26_N10
\INST_cpu_core|INST_Program_counter|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~4_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & (\INST_cpu_core|INST_Program_counter|Add0~3\ $ (GND))) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & 
-- (!\INST_cpu_core|INST_Program_counter|Add0~3\ & VCC))
-- \INST_cpu_core|INST_Program_counter|Add0~5\ = CARRY((\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2) & !\INST_cpu_core|INST_Program_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~3\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~4_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~5\);

-- Location: LCCOMB_X16_Y26_N12
\INST_cpu_core|INST_Program_counter|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~6_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & (!\INST_cpu_core|INST_Program_counter|Add0~5\)) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3) & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~5\) # (GND)))
-- \INST_cpu_core|INST_Program_counter|Add0~7\ = CARRY((!\INST_cpu_core|INST_Program_counter|Add0~5\) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~5\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~6_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~7\);

-- Location: FF_X16_Y26_N13
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~6_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(3));

-- Location: LCCOMB_X11_Y26_N2
\INST_cpu_core|INST_control_unit|r_state~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~9_combout\ = (!\INST_cpu_core|INST_control_unit|r_state\(5) & (\INST_cpu_core|INST_control_unit|r_state\(0) & \INST_cpu_core|INST_control_unit|r_state~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datac => \INST_cpu_core|INST_control_unit|r_state\(0),
	datad => \INST_cpu_core|INST_control_unit|r_state~5_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~9_combout\);

-- Location: LCCOMB_X22_Y21_N18
\INST_cpu_core|INST_MEMORY_CONTROL|Mux58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux58~0_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(4) & (!\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0) & !\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(4),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux58~0_combout\);

-- Location: FF_X22_Y21_N19
\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0));

-- Location: LCCOMB_X22_Y21_N16
\INST_cpu_core|INST_MEMORY_CONTROL|Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux57~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1) & (\INST_cpu_core|INST_control_unit|r_state\(4) & !\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(4),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux57~0_combout\);

-- Location: FF_X22_Y21_N17
\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1));

-- Location: LCCOMB_X14_Y26_N12
\INST_cpu_core|INST_control_unit|r_state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~8_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & (\INST_cpu_core|INST_control_unit|process_0~1_combout\ & (!\INST_cpu_core|INST_control_unit|r_state\(4)))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state\(3) & (((\INST_cpu_core|INST_control_unit|r_state\(4) & !\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|process_0~1_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \INST_cpu_core|INST_control_unit|r_state\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_control_unit|r_state~8_combout\);

-- Location: LCCOMB_X11_Y26_N26
\INST_cpu_core|INST_control_unit|r_state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~10_combout\ = (\i_HALT~input_o\ & ((\INST_cpu_core|INST_control_unit|r_state\(4)) # ((\INST_cpu_core|INST_control_unit|r_state~9_combout\ & \INST_cpu_core|INST_control_unit|r_state~8_combout\)))) # 
-- (!\i_HALT~input_o\ & (\INST_cpu_core|INST_control_unit|r_state~9_combout\ & ((\INST_cpu_core|INST_control_unit|r_state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_HALT~input_o\,
	datab => \INST_cpu_core|INST_control_unit|r_state~9_combout\,
	datac => \INST_cpu_core|INST_control_unit|r_state\(4),
	datad => \INST_cpu_core|INST_control_unit|r_state~8_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~10_combout\);

-- Location: FF_X11_Y26_N27
\INST_cpu_core|INST_control_unit|r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_state~10_combout\,
	sclr => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(4));

-- Location: LCCOMB_X11_Y26_N20
\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\ = (!\INST_cpu_core|INST_control_unit|r_state\(4) & !\INST_cpu_core|INST_control_unit|r_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(4),
	datac => \INST_cpu_core|INST_control_unit|r_state\(3),
	combout => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\);

-- Location: LCCOMB_X11_Y26_N16
\INST_cpu_core|INST_control_unit|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|Mux7~0_combout\ = (!\INST_cpu_core|INST_control_unit|r_state\(6) & (!\INST_cpu_core|INST_control_unit|r_state\(5) & (\INST_cpu_core|INST_control_unit|r_state\(0) & 
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(6),
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datac => \INST_cpu_core|INST_control_unit|r_state\(0),
	datad => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\,
	combout => \INST_cpu_core|INST_control_unit|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y26_N16
\INST_cpu_core|INST_control_unit|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|Mux6~0_combout\ = (!\INST_cpu_core|INST_control_unit|r_state\(1) & (\INST_cpu_core|INST_control_unit|r_state\(2) & \INST_cpu_core|INST_control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_control_unit|r_state\(1),
	datac => \INST_cpu_core|INST_control_unit|r_state\(2),
	datad => \INST_cpu_core|INST_control_unit|Mux7~0_combout\,
	combout => \INST_cpu_core|INST_control_unit|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y26_N22
\INST_cpu_core|INST_control_unit|r_state[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state[3]~7_combout\ = (\i_RESET~input_o\) # (!\i_HALT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_HALT~input_o\,
	datad => \i_RESET~input_o\,
	combout => \INST_cpu_core|INST_control_unit|r_state[3]~7_combout\);

-- Location: FF_X14_Y26_N17
\INST_cpu_core|INST_control_unit|r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => r_CLK_divided(23),
	d => \INST_cpu_core|INST_control_unit|Mux6~0_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_control_unit|r_state[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(3));

-- Location: CLKCTRL_G13
\INST_cpu_core|INST_control_unit|r_state[3]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_cpu_core|INST_control_unit|r_state[3]~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y26_N14
\INST_cpu_core|INST_Program_counter|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~8_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & (\INST_cpu_core|INST_Program_counter|Add0~7\ $ (GND))) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & 
-- (!\INST_cpu_core|INST_Program_counter|Add0~7\ & VCC))
-- \INST_cpu_core|INST_Program_counter|Add0~9\ = CARRY((\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4) & !\INST_cpu_core|INST_Program_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~7\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~8_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~9\);

-- Location: LCCOMB_X16_Y26_N16
\INST_cpu_core|INST_Program_counter|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~10_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & (!\INST_cpu_core|INST_Program_counter|Add0~9\)) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5) & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~9\) # (GND)))
-- \INST_cpu_core|INST_Program_counter|Add0~11\ = CARRY((!\INST_cpu_core|INST_Program_counter|Add0~9\) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~9\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~10_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~11\);

-- Location: LCCOMB_X16_Y26_N18
\INST_cpu_core|INST_Program_counter|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~12_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & (\INST_cpu_core|INST_Program_counter|Add0~11\ $ (GND))) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & 
-- (!\INST_cpu_core|INST_Program_counter|Add0~11\ & VCC))
-- \INST_cpu_core|INST_Program_counter|Add0~13\ = CARRY((\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6) & !\INST_cpu_core|INST_Program_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~11\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~12_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~13\);

-- Location: FF_X16_Y26_N19
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~12_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(6));

-- Location: LCCOMB_X16_Y26_N20
\INST_cpu_core|INST_Program_counter|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~14_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & (!\INST_cpu_core|INST_Program_counter|Add0~13\)) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7) & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~13\) # (GND)))
-- \INST_cpu_core|INST_Program_counter|Add0~15\ = CARRY((!\INST_cpu_core|INST_Program_counter|Add0~13\) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~13\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~14_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~15\);

-- Location: FF_X16_Y26_N21
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~14_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(7));

-- Location: LCCOMB_X16_Y26_N22
\INST_cpu_core|INST_Program_counter|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~16_combout\ = (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & (\INST_cpu_core|INST_Program_counter|Add0~15\ $ (GND))) # (!\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & 
-- (!\INST_cpu_core|INST_Program_counter|Add0~15\ & VCC))
-- \INST_cpu_core|INST_Program_counter|Add0~17\ = CARRY((\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8) & !\INST_cpu_core|INST_Program_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8),
	datad => VCC,
	cin => \INST_cpu_core|INST_Program_counter|Add0~15\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~16_combout\,
	cout => \INST_cpu_core|INST_Program_counter|Add0~17\);

-- Location: FF_X16_Y26_N23
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~16_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(8));

-- Location: LCCOMB_X16_Y26_N24
\INST_cpu_core|INST_Program_counter|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|Add0~18_combout\ = \INST_cpu_core|INST_Program_counter|Add0~17\ $ (\INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9),
	cin => \INST_cpu_core|INST_Program_counter|Add0~17\,
	combout => \INST_cpu_core|INST_Program_counter|Add0~18_combout\);

-- Location: FF_X16_Y26_N25
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~18_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(9));

-- Location: M9K_X25_Y26_N0
\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0201008145A18000000000000000C0F1E8140A06030182201008145A3D028140C06030040201028B43",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_0i81:auto_generated|ALTSYNCRAM",
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
	clk0 => \ALT_INV_r_CLK_divided[23]~clkctrl_outclk\,
	clk1 => \r_CLK_divided[23]~clkctrl_outclk\,
	ena1 => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X22_Y25_N1
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(12),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10));

-- Location: LCCOMB_X19_Y26_N4
\INST_cpu_core|INST_branch_control|o_ADDRESS~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~11_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(9),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~11_combout\);

-- Location: IOIBUF_X7_Y29_N1
\i_INTERRUPT_request~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INTERRUPT_request,
	o => \i_INTERRUPT_request~input_o\);

-- Location: LCCOMB_X11_Y26_N18
\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~2_combout\ = (!\INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\ & ((\i_INTERRUPT_request~input_o\) # (\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INTERRUPT_request~input_o\,
	datac => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	datad => \INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\,
	combout => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~2_combout\);

-- Location: FF_X11_Y26_N19
\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~2_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\);

-- Location: M9K_X25_Y25_N0
\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001808020040500000000000000008000A010180004000018080200001607018140A01023010040080A",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_0i81:auto_generated|ALTSYNCRAM",
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
	clk0 => \ALT_INV_r_CLK_divided[23]~clkctrl_outclk\,
	clk1 => \r_CLK_divided[23]~clkctrl_outclk\,
	ena1 => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y26_N0
\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000020180C04020000000000000000000080400010080000000000000",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_0i81:auto_generated|ALTSYNCRAM",
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
	clk0 => \ALT_INV_r_CLK_divided[23]~clkctrl_outclk\,
	clk1 => \r_CLK_divided[23]~clkctrl_outclk\,
	ena1 => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y24_N0
\INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008230900400000000000000000000000102410080C0201823090040000100000020080104612008000",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_PROGRAM_MEMORY_7409f867.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|PROGRAM_MEMORY:INST_PROGRAM_MEMORY|altsyncram:RAM_rtl_0|altsyncram_0i81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
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
	clk0 => \ALT_INV_r_CLK_divided[23]~clkctrl_outclk\,
	clk1 => \r_CLK_divided[23]~clkctrl_outclk\,
	ena1 => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_cpu_core|INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y24_N14
\INST_cpu_core|INST_instruction_decoder|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\ = (!\INST_cpu_core|INST_InstrucReg|r_register\(27) & (!\INST_cpu_core|INST_InstrucReg|r_register\(25) & \INST_cpu_core|INST_InstrucReg|r_register\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(27),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(25),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(26),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\INST_cpu_core|INST_instruction_decoder|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux3~1_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(31) & (\INST_cpu_core|INST_InstrucReg|r_register\(28) & \INST_cpu_core|INST_InstrucReg|r_register\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y26_N22
\INST_cpu_core|INST_instruction_decoder|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux3~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|Mux3~1_combout\ & ((\INST_cpu_core|INST_InstrucReg|r_register\(29) & ((\INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\))) # 
-- (!\INST_cpu_core|INST_InstrucReg|r_register\(29) & (\INST_cpu_core|INST_InstrucReg|r_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|Mux3~1_combout\,
	combout => \INST_cpu_core|INST_instruction_decoder|Mux3~2_combout\);

-- Location: FF_X20_Y26_N23
\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux3~2_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2));

-- Location: LCCOMB_X19_Y26_N16
\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\ = (\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\) # ((\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2)) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1)) # 
-- (\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datab => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\);

-- Location: FF_X19_Y26_N5
\INST_cpu_core|INST_branch_control|o_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~11_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(9));

-- Location: LCCOMB_X15_Y26_N30
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~10_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & (\INST_cpu_core|INST_branch_control|o_ADDRESS\(9))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_cpu_core|INST_branch_control|o_ADDRESS\(9),
	datad => \INST_cpu_core|INST_Program_counter|Add0~18_combout\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~10_combout\);

-- Location: LCCOMB_X15_Y26_N16
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\ = (\i_RESET~input_o\) # (\INST_cpu_core|INST_control_unit|r_state\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RESET~input_o\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(6),
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\);

-- Location: FF_X15_Y26_N31
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~10_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(9));

-- Location: FF_X22_Y22_N17
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(11),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9));

-- Location: LCCOMB_X19_Y26_N2
\INST_cpu_core|INST_branch_control|o_ADDRESS~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~10_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(8),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~10_combout\);

-- Location: FF_X19_Y26_N3
\INST_cpu_core|INST_branch_control|o_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~10_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(8));

-- Location: LCCOMB_X16_Y26_N30
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~9_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(8)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_cpu_core|INST_Program_counter|Add0~16_combout\,
	datad => \INST_cpu_core|INST_branch_control|o_ADDRESS\(8),
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~9_combout\);

-- Location: FF_X16_Y26_N31
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~9_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(8));

-- Location: FF_X22_Y22_N5
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(10),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8));

-- Location: LCCOMB_X19_Y26_N24
\INST_cpu_core|INST_branch_control|o_ADDRESS~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~9_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(7),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~9_combout\);

-- Location: FF_X19_Y26_N25
\INST_cpu_core|INST_branch_control|o_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~9_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(7));

-- Location: LCCOMB_X16_Y26_N28
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~8_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(7)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|Add0~14_combout\,
	datac => \INST_cpu_core|INST_branch_control|o_ADDRESS\(7),
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~8_combout\);

-- Location: FF_X16_Y26_N29
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~8_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(7));

-- Location: FF_X21_Y21_N19
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(9),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7));

-- Location: LCCOMB_X19_Y26_N6
\INST_cpu_core|INST_branch_control|o_ADDRESS~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~8_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(6),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~8_combout\);

-- Location: FF_X19_Y26_N7
\INST_cpu_core|INST_branch_control|o_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~8_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(6));

-- Location: LCCOMB_X15_Y26_N12
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~7_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(6)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_Program_counter|Add0~12_combout\,
	datac => \INST_cpu_core|INST_branch_control|o_ADDRESS\(6),
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~7_combout\);

-- Location: FF_X15_Y26_N13
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~7_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(6));

-- Location: FF_X21_Y21_N9
\INST_cpu_core|INST_instruction_decoder|o_IMM_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(0),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\);

-- Location: LCCOMB_X20_Y26_N0
\INST_cpu_core|INST_instruction_decoder|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux0~0_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(30) & (((\INST_cpu_core|INST_InstrucReg|r_register\(29) & \INST_cpu_core|INST_InstrucReg|r_register\(28))) # 
-- (!\INST_cpu_core|INST_InstrucReg|r_register\(31)))) # (!\INST_cpu_core|INST_InstrucReg|r_register\(30) & ((\INST_cpu_core|INST_InstrucReg|r_register\(29)) # ((\INST_cpu_core|INST_InstrucReg|r_register\(28)) # 
-- (\INST_cpu_core|INST_InstrucReg|r_register\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux0~0_combout\);

-- Location: FF_X20_Y26_N1
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux0~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\);

-- Location: LCCOMB_X24_Y24_N24
\INST_cpu_core|INST_GPR|r_REGISTER~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(5) & \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(5),
	datad => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\);

-- Location: LCCOMB_X22_Y21_N26
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\ = \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X22_Y21_N27
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(0));

-- Location: LCCOMB_X22_Y21_N14
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(27),
	combout => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\);

-- Location: FF_X22_Y21_N15
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(4));

-- Location: FF_X22_Y21_N5
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(9));

-- Location: FF_X22_Y21_N31
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(17),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(10));

-- Location: LCCOMB_X22_Y21_N30
\INST_cpu_core|INST_GPR|r_REGISTER~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~16_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(0) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(9) $ (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(0),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(9),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(10),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~16_combout\);

-- Location: LCCOMB_X22_Y21_N6
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(16),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]~feeder_combout\);

-- Location: FF_X22_Y21_N7
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[8]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(8));

-- Location: FF_X24_Y24_N11
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(25),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2));

-- Location: FF_X22_Y21_N3
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(5));

-- Location: FF_X22_Y21_N9
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(15),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(6));

-- Location: FF_X24_Y24_N5
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(26),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3));

-- Location: LCCOMB_X22_Y21_N12
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\ = \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\);

-- Location: FF_X22_Y21_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(7));

-- Location: LCCOMB_X22_Y21_N8
\INST_cpu_core|INST_GPR|r_REGISTER~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~15_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(8) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(7) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(5) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(6))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(8) & (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(7) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(5) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(8),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(5),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(6),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(7),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~15_combout\);

-- Location: LCCOMB_X22_Y21_N28
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(24),
	combout => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\);

-- Location: FF_X22_Y21_N29
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1));

-- Location: FF_X23_Y22_N11
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(3));

-- Location: LCCOMB_X23_Y22_N28
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(14),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]~feeder_combout\);

-- Location: FF_X23_Y22_N29
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[4]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(4));

-- Location: FF_X23_Y22_N31
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(13),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(2));

-- Location: FF_X24_Y24_N17
\INST_cpu_core|INST_instruction_decoder|o_REGISTER_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(23),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0));

-- Location: FF_X23_Y22_N1
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(1));

-- Location: LCCOMB_X23_Y22_N30
\INST_cpu_core|INST_GPR|r_REGISTER~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~14_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(3) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(4) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(2) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(1))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(3) & (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(4) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(2) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(3),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(4),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(2),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(1),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~14_combout\);

-- Location: LCCOMB_X22_Y21_N0
\INST_cpu_core|INST_GPR|r_REGISTER~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~16_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER~15_combout\ & \INST_cpu_core|INST_GPR|r_REGISTER~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~16_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER~15_combout\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~14_combout\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\);

-- Location: LCCOMB_X20_Y26_N4
\INST_cpu_core|INST_instruction_decoder|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux2~0_combout\ = (!\INST_cpu_core|INST_InstrucReg|r_register\(29) & (\INST_cpu_core|INST_InstrucReg|r_register\(31) & (!\INST_cpu_core|INST_InstrucReg|r_register\(28) & 
-- \INST_cpu_core|INST_InstrucReg|r_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux2~0_combout\);

-- Location: FF_X20_Y26_N5
\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => r_CLK_divided(23),
	d => \INST_cpu_core|INST_instruction_decoder|Mux2~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\);

-- Location: CLKCTRL_G14
\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y23_N18
\INST_cpu_core|INST_data_bus|o_REGISTER[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(0) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(0)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux9~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_REGISTER\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(0));

-- Location: LCCOMB_X26_Y23_N16
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

-- Location: LCCOMB_X24_Y22_N6
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_REGISTER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(1),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X24_Y22_N7
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(13));

-- Location: LCCOMB_X24_Y22_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(14));

-- Location: LCCOMB_X20_Y26_N26
\INST_cpu_core|INST_instruction_decoder|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux1~0_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(29) & (\INST_cpu_core|INST_InstrucReg|r_register\(31) & (\INST_cpu_core|INST_InstrucReg|r_register\(28) & 
-- !\INST_cpu_core|INST_InstrucReg|r_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux1~0_combout\);

-- Location: FF_X20_Y26_N27
\INST_cpu_core|INST_instruction_decoder|o_BUS_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux1~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1));

-- Location: FF_X22_Y25_N29
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(2),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0));

-- Location: FF_X21_Y21_N15
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(7),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5));

-- Location: LCCOMB_X24_Y20_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_REGISTER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(2),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(15));

-- Location: LCCOMB_X24_Y22_N8
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X24_Y22_N9
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(16));

-- Location: FF_X22_Y21_N25
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(17),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15));

-- Location: LCCOMB_X24_Y20_N14
\INST_cpu_core|INST_data_bus|o_MEMORY[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(3) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux12~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux12~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_MEMORY\(3),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(3));

-- Location: FF_X22_Y21_N11
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(16),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14));

-- Location: LCCOMB_X22_Y21_N10
\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1)) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14)))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0),
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\ = (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\ & \INST_cpu_core|INST_control_unit|r_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(4),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\);

-- Location: FF_X24_Y20_N15
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(3),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(3));

-- Location: FF_X24_Y19_N13
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(35));

-- Location: FF_X23_Y22_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11));

-- Location: FF_X23_Y22_N7
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(13),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(11));

-- Location: LCCOMB_X23_Y22_N26
\INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(11),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\);

-- Location: FF_X21_Y20_N13
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux62~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(24));

-- Location: LCCOMB_X21_Y20_N30
\INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\);

-- Location: FF_X21_Y20_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10));

-- Location: FF_X21_Y20_N25
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(21));

-- Location: FF_X21_Y20_N7
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(22));

-- Location: LCCOMB_X21_Y20_N18
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(11),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X21_Y20_N19
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(23));

-- Location: LCCOMB_X21_Y20_N6
\INST_cpu_core|INST_DATA_RAM|MEMORY~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~30_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(24) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(23) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(21) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(22))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(24) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(23) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(21) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(24),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(21),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(22),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(23),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~30_combout\);

-- Location: FF_X23_Y22_N25
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3));

-- Location: LCCOMB_X23_Y22_N24
\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\);

-- Location: LCCOMB_X23_Y20_N28
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~1_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X23_Y20_N29
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(8));

-- Location: LCCOMB_X17_Y26_N26
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(4),
	combout => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\);

-- Location: FF_X17_Y26_N27
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[2]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2));

-- Location: LCCOMB_X23_Y20_N30
\INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\);

-- Location: FF_X23_Y20_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2));

-- Location: FF_X23_Y20_N17
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(5));

-- Location: FF_X23_Y20_N7
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux71~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(6));

-- Location: FF_X23_Y20_N19
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(7));

-- Location: LCCOMB_X23_Y20_N6
\INST_cpu_core|INST_DATA_RAM|MEMORY~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~25_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(8) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(7) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(5) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(6))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(8) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(7) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(5) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(8),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(5),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(6),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(7),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~25_combout\);

-- Location: FF_X19_Y21_N11
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7));

-- Location: LCCOMB_X19_Y21_N10
\INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\);

-- Location: FF_X19_Y21_N13
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux66~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(16));

-- Location: FF_X21_Y21_N27
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(8),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6));

-- Location: LCCOMB_X19_Y21_N24
\INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\);

-- Location: FF_X19_Y21_N25
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6));

-- Location: LCCOMB_X19_Y21_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(6),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X19_Y21_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(13));

-- Location: FF_X19_Y21_N31
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux67~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(14));

-- Location: LCCOMB_X19_Y21_N2
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(7),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X19_Y21_N3
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(15));

-- Location: LCCOMB_X19_Y21_N30
\INST_cpu_core|INST_DATA_RAM|MEMORY~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~27_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(16) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(15) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(13) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(14))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(16) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(15) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(13) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(16),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(13),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(14),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(15),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~27_combout\);

-- Location: LCCOMB_X22_Y20_N20
\INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\);

-- Location: FF_X22_Y20_N21
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1));

-- Location: FF_X22_Y20_N19
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(3));

-- Location: LCCOMB_X22_Y20_N26
\INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\);

-- Location: FF_X22_Y20_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0));

-- Location: LCCOMB_X22_Y20_N24
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(0),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X22_Y20_N25
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(1));

-- Location: FF_X22_Y20_N23
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux73~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(2));

-- Location: LCCOMB_X22_Y20_N12
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux72~0_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X22_Y20_N13
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(4));

-- Location: LCCOMB_X22_Y20_N22
\INST_cpu_core|INST_DATA_RAM|MEMORY~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~24_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(3) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(4) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(1) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(2))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(3) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(4) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(1) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(3),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(1),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(2),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(4),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~24_combout\);

-- Location: LCCOMB_X22_Y20_N16
\INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\);

-- Location: FF_X22_Y20_N17
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5));

-- Location: FF_X22_Y20_N11
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(11));

-- Location: LCCOMB_X22_Y20_N28
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux68~0_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X22_Y20_N29
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(12));

-- Location: FF_X22_Y20_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4));

-- Location: LCCOMB_X22_Y20_N30
\INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\);

-- Location: FF_X22_Y20_N7
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux69~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(10));

-- Location: FF_X22_Y20_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(9));

-- Location: LCCOMB_X22_Y20_N6
\INST_cpu_core|INST_DATA_RAM|MEMORY~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~26_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(11) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(12) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(10) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(9))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(11) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(12) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(10) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(11),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(12),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(10),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(9),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~26_combout\);

-- Location: LCCOMB_X22_Y20_N8
\INST_cpu_core|INST_DATA_RAM|MEMORY~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~28_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY~25_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~27_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~24_combout\ & \INST_cpu_core|INST_DATA_RAM|MEMORY~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~25_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~27_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~24_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~26_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~28_combout\);

-- Location: LCCOMB_X23_Y22_N16
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(14),
	combout => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]~feeder_combout\);

-- Location: FF_X23_Y22_N17
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[12]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(12));

-- Location: LCCOMB_X23_Y22_N20
\INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(12),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\);

-- Location: FF_X23_Y22_N21
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12));

-- Location: FF_X23_Y20_N11
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(25));

-- Location: LCCOMB_X23_Y21_N26
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\ & ((\INST_cpu_core|INST_control_unit|r_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(4),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\);

-- Location: FF_X23_Y21_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\);

-- Location: LCCOMB_X23_Y20_N24
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X23_Y20_N25
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(0));

-- Location: FF_X23_Y20_N13
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux61~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(26));

-- Location: LCCOMB_X23_Y20_N26
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(15),
	combout => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]~feeder_combout\);

-- Location: FF_X23_Y20_N27
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[13]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(13));

-- Location: LCCOMB_X23_Y20_N2
\INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(13),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\);

-- Location: FF_X23_Y20_N3
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13));

-- Location: LCCOMB_X23_Y20_N22
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X23_Y20_N23
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(27));

-- Location: FF_X23_Y20_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(28));

-- Location: LCCOMB_X23_Y20_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~31_combout\ = \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(27) $ (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(27),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(28),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~31_combout\);

-- Location: LCCOMB_X23_Y20_N12
\INST_cpu_core|INST_DATA_RAM|MEMORY~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~32_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(0) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY~31_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(25) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(25),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(0),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(26),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~31_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~32_combout\);

-- Location: LCCOMB_X21_Y20_N28
\INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\);

-- Location: FF_X21_Y20_N29
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9));

-- Location: LCCOMB_X21_Y20_N10
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(9),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X21_Y20_N11
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(19));

-- Location: LCCOMB_X21_Y20_N20
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|Mux64~0_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X21_Y20_N21
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(20));

-- Location: FF_X21_Y20_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8));

-- Location: LCCOMB_X21_Y20_N26
\INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\ & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|Mux70~0_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\);

-- Location: FF_X21_Y20_N23
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux65~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(18));

-- Location: FF_X21_Y20_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(17));

-- Location: LCCOMB_X21_Y20_N22
\INST_cpu_core|INST_DATA_RAM|MEMORY~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~29_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(19) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(20) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(18) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(17))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(19) & (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(20) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(18) $ 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(19),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(20),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(18),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(17),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~29_combout\);

-- Location: LCCOMB_X21_Y20_N16
\INST_cpu_core|INST_DATA_RAM|MEMORY~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY~30_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~28_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~32_combout\ & \INST_cpu_core|INST_DATA_RAM|MEMORY~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~30_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~28_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~32_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~29_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\);

-- Location: LCCOMB_X24_Y19_N30
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X24_Y19_N31
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(36));

-- Location: LCCOMB_X23_Y20_N8
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0) = (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0));

-- Location: M9K_X25_Y19_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: FF_X24_Y19_N19
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|Mux60~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X23_Y20_N20
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1) = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_address\(13),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_write_enable~q\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1));

-- Location: M9K_X25_Y20_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N18
\INST_cpu_core|INST_DATA_RAM|MEMORY~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~47_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~47_combout\);

-- Location: LCCOMB_X24_Y19_N22
\INST_cpu_core|INST_DATA_RAM|MEMORY~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~48_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(35))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & 
-- ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(36) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~47_combout\))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(36) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(35),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(36),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~47_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~48_combout\);

-- Location: FF_X24_Y19_N23
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~48_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(3));

-- Location: LCCOMB_X22_Y21_N20
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0) & 
-- !\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\);

-- Location: FF_X23_Y21_N19
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2));

-- Location: FF_X23_Y21_N25
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1));

-- Location: FF_X23_Y21_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0));

-- Location: IOIBUF_X32_Y29_N1
\io_GPIO_PIN4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(3),
	o => \io_GPIO_PIN4[3]~input_o\);

-- Location: FF_X24_Y25_N21
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(3));

-- Location: IOIBUF_X41_Y25_N8
\io_GPIO_PIN6[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(3),
	o => \io_GPIO_PIN6[3]~input_o\);

-- Location: FF_X24_Y25_N3
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN6[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(3));

-- Location: LCCOMB_X24_Y25_N20
\INST_GPIO_register|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux5~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)) # ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(3))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(3),
	datad => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(3),
	combout => \INST_GPIO_register|Mux5~0_combout\);

-- Location: IOIBUF_X32_Y29_N8
\io_GPIO_PIN5[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(3),
	o => \io_GPIO_PIN5[3]~input_o\);

-- Location: FF_X24_Y25_N1
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN5[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(3));

-- Location: IOIBUF_X28_Y0_N22
\io_GPIO_PIN7[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(3),
	o => \io_GPIO_PIN7[3]~input_o\);

-- Location: FF_X24_Y25_N23
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(3));

-- Location: LCCOMB_X24_Y25_N22
\INST_GPIO_register|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux5~1_combout\ = (\INST_GPIO_register|Mux5~0_combout\ & (((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(3)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # (!\INST_GPIO_register|Mux5~0_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(3) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux5~0_combout\,
	datab => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(3),
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(3),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux5~1_combout\);

-- Location: IOIBUF_X23_Y29_N29
\io_GPIO_PIN2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(3),
	o => \io_GPIO_PIN2[3]~input_o\);

-- Location: LCCOMB_X24_Y25_N24
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]~feeder_combout\ = \io_GPIO_PIN2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN2[3]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]~feeder_combout\);

-- Location: FF_X24_Y25_N25
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(3));

-- Location: IOIBUF_X30_Y29_N15
\io_GPIO_PIN3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(3),
	o => \io_GPIO_PIN3[3]~input_o\);

-- Location: FF_X24_Y25_N7
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(3));

-- Location: IOIBUF_X23_Y29_N1
\io_GPIO_PIN0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(3),
	o => \io_GPIO_PIN0[3]~input_o\);

-- Location: FF_X24_Y25_N13
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(3));

-- Location: IOIBUF_X41_Y25_N15
\io_GPIO_PIN1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(3),
	o => \io_GPIO_PIN1[3]~input_o\);

-- Location: LCCOMB_X24_Y25_N10
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]~feeder_combout\ = \io_GPIO_PIN1[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[3]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]~feeder_combout\);

-- Location: FF_X24_Y25_N11
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(3));

-- Location: LCCOMB_X24_Y25_N12
\INST_GPIO_register|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux5~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(3)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(3),
	datad => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(3),
	combout => \INST_GPIO_register|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y25_N6
\INST_GPIO_register|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux5~3_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|Mux5~2_combout\ & ((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(3)))) # (!\INST_GPIO_register|Mux5~2_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(3))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(3),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(3),
	datad => \INST_GPIO_register|Mux5~2_combout\,
	combout => \INST_GPIO_register|Mux5~3_combout\);

-- Location: LCCOMB_X24_Y21_N14
\INST_GPIO_register|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux5~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux5~1_combout\)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_GPIO_register|Mux5~1_combout\,
	datad => \INST_GPIO_register|Mux5~3_combout\,
	combout => \INST_GPIO_register|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y21_N10
\INST_cpu_core|r_MEM_write_enable\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|r_MEM_write_enable~combout\ = (\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\ & \INST_cpu_core|INST_control_unit|r_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(4),
	combout => \INST_cpu_core|r_MEM_write_enable~combout\);

-- Location: FF_X23_Y21_N11
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|r_MEM_write_enable~combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\);

-- Location: FF_X24_Y20_N17
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(6),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(6));

-- Location: M9K_X13_Y18_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y21_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N6
\INST_cpu_core|INST_DATA_RAM|MEMORY~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~39_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~39_combout\);

-- Location: LCCOMB_X21_Y19_N8
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X21_Y19_N9
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(42));

-- Location: LCCOMB_X21_Y19_N20
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(6),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]~feeder_combout\);

-- Location: FF_X21_Y19_N21
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(41));

-- Location: LCCOMB_X21_Y19_N10
\INST_cpu_core|INST_DATA_RAM|MEMORY~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~40_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(42) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(41)))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~39_combout\)))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(42) & (((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~39_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(42),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(41),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~40_combout\);

-- Location: FF_X21_Y19_N11
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~40_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(6));

-- Location: IOIBUF_X26_Y29_N8
\io_GPIO_PIN2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(6),
	o => \io_GPIO_PIN2[6]~input_o\);

-- Location: FF_X26_Y25_N25
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN2[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(6));

-- Location: IOIBUF_X41_Y22_N1
\io_GPIO_PIN1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(6),
	o => \io_GPIO_PIN1[6]~input_o\);

-- Location: LCCOMB_X26_Y25_N10
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]~feeder_combout\ = \io_GPIO_PIN1[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[6]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]~feeder_combout\);

-- Location: FF_X26_Y25_N11
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(6));

-- Location: IOIBUF_X21_Y29_N8
\io_GPIO_PIN0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(6),
	o => \io_GPIO_PIN0[6]~input_o\);

-- Location: FF_X26_Y25_N21
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(6));

-- Location: LCCOMB_X26_Y25_N20
\INST_GPIO_register|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux2~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(6)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(6) & !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(6),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(6),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux2~2_combout\);

-- Location: IOIBUF_X37_Y29_N29
\io_GPIO_PIN3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(6),
	o => \io_GPIO_PIN3[6]~input_o\);

-- Location: FF_X26_Y25_N23
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(6));

-- Location: LCCOMB_X26_Y25_N22
\INST_GPIO_register|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux2~3_combout\ = (\INST_GPIO_register|Mux2~2_combout\ & (((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(6)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # (!\INST_GPIO_register|Mux2~2_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(6) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(6),
	datab => \INST_GPIO_register|Mux2~2_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(6),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux2~3_combout\);

-- Location: IOIBUF_X35_Y29_N29
\io_GPIO_PIN6[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(6),
	o => \io_GPIO_PIN6[6]~input_o\);

-- Location: FF_X26_Y25_N27
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN6[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(6));

-- Location: IOIBUF_X41_Y25_N22
\io_GPIO_PIN4[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(6),
	o => \io_GPIO_PIN4[6]~input_o\);

-- Location: FF_X26_Y25_N29
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(6));

-- Location: LCCOMB_X26_Y25_N28
\INST_GPIO_register|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux2~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(6))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(6),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(6),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux2~0_combout\);

-- Location: IOIBUF_X23_Y29_N15
\io_GPIO_PIN7[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(6),
	o => \io_GPIO_PIN7[6]~input_o\);

-- Location: FF_X26_Y25_N7
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(6));

-- Location: IOIBUF_X41_Y23_N15
\io_GPIO_PIN5[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(6),
	o => \io_GPIO_PIN5[6]~input_o\);

-- Location: FF_X26_Y25_N17
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN5[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(6));

-- Location: LCCOMB_X26_Y25_N6
\INST_GPIO_register|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux2~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|Mux2~0_combout\ & (\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(6))) # (!\INST_GPIO_register|Mux2~0_combout\ & 
-- ((\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(6)))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_GPIO_register|Mux2~0_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(6),
	datad => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(6),
	combout => \INST_GPIO_register|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y21_N6
\INST_GPIO_register|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux2~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux2~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPIO_register|Mux2~3_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datad => \INST_GPIO_register|Mux2~1_combout\,
	combout => \INST_GPIO_register|Mux2~4_combout\);

-- Location: FF_X24_Y21_N7
\INST_GPIO_register|o_GPIO_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux2~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(6));

-- Location: LCCOMB_X24_Y21_N22
\INST_cpu_core|INST_MEMORY_CONTROL|Mux83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux83~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(6) & (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & \INST_GPIO_register|o_GPIO_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(6),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_GPIO_register|o_GPIO_data\(6),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux83~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)) # (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0) & (!\INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1) & ((!\INST_cpu_core|r_MEM_write_enable~combout\) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~0_combout\,
	datac => \INST_cpu_core|r_MEM_write_enable~combout\,
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\);

-- Location: FF_X24_Y21_N23
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux83~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(6));

-- Location: FF_X20_Y26_N9
\INST_cpu_core|INST_instruction_decoder|o_OPCODE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2));

-- Location: LCCOMB_X22_Y23_N26
\INST_cpu_core|INST_ALU|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux9~0_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_cpu_core|INST_ALU|Mux9~0_combout\);

-- Location: FF_X20_Y26_N15
\INST_cpu_core|INST_instruction_decoder|o_OPCODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1));

-- Location: LCCOMB_X24_Y23_N12
\INST_cpu_core|INST_data_bus|o_REGISTER[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(6) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(6)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux15~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_REGISTER\(6),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(6));

-- Location: FF_X24_Y23_N7
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_REGISTER\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(23));

-- Location: LCCOMB_X20_Y26_N12
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~11_combout\);

-- Location: LCCOMB_X20_Y26_N2
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3)) # ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & \INST_cpu_core|INST_ALU|r_ALU_Result[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~11_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\);

-- Location: LCCOMB_X21_Y21_N24
\INST_cpu_core|INST_ALU|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~17_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux4~17_combout\);

-- Location: LCCOMB_X22_Y25_N0
\INST_cpu_core|INST_ALU|Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~18_combout\ = (\INST_cpu_core|INST_ALU|Mux4~17_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10),
	datad => \INST_cpu_core|INST_ALU|Mux4~17_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~18_combout\);

-- Location: FF_X23_Y23_N9
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(25));

-- Location: M9K_X25_Y23_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|register32x8:INST_GPR|altsyncram:r_REGISTER_rtl_0|altsyncram_a3o1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\,
	portbre => VCC,
	portbaddrstall => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(1),
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X24_Y24_N19
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(9));

-- Location: FF_X24_Y24_N21
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(22),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(10));

-- Location: FF_X24_Y24_N25
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(0));

-- Location: LCCOMB_X24_Y24_N20
\INST_cpu_core|INST_GPR|r_REGISTER~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~21_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(0) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(9) $ (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(9),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(10),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(0),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~21_combout\);

-- Location: FF_X24_Y24_N27
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(7));

-- Location: LCCOMB_X24_Y24_N28
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(21),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X24_Y24_N29
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[8]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(8));

-- Location: FF_X24_Y24_N23
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(20),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(6));

-- Location: LCCOMB_X24_Y24_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\ = \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(2),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X24_Y24_N1
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(5));

-- Location: LCCOMB_X24_Y24_N22
\INST_cpu_core|INST_GPR|r_REGISTER~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~20_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(7) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(8) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(6) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(5))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(7) & (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(8) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(6) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(7),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(8),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(6),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(5),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~20_combout\);

-- Location: FF_X24_Y24_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(19),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(4));

-- Location: LCCOMB_X24_Y24_N8
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]~feeder_combout\ = \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(0),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X24_Y24_N9
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(1));

-- Location: FF_X24_Y24_N7
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(18),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(2));

-- Location: LCCOMB_X24_Y24_N2
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\ = \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_instruction_decoder|o_REGISTER_C\(1),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X24_Y24_N3
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(3));

-- Location: LCCOMB_X24_Y24_N6
\INST_cpu_core|INST_GPR|r_REGISTER~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~19_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(4) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(3) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(1) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(2))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(4) & (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(3) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(1) $ 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(4),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(1),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(2),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(3),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~19_combout\);

-- Location: LCCOMB_X24_Y24_N30
\INST_cpu_core|INST_GPR|r_REGISTER~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~21_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER~20_combout\ & \INST_cpu_core|INST_GPR|r_REGISTER~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|r_REGISTER~21_combout\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~20_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER~19_combout\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\);

-- Location: LCCOMB_X24_Y23_N2
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X24_Y23_N3
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(26));

-- Location: LCCOMB_X24_Y23_N26
\INST_cpu_core|INST_GPR|r_REGISTER~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~31_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(25))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(26) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(26) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(25),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(26),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~31_combout\);

-- Location: LCCOMB_X24_Y23_N28
\INST_cpu_core|r_register_enable\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|r_register_enable~combout\ = (\INST_cpu_core|INST_control_unit|r_state\(5)) # (\INST_cpu_core|INST_control_unit|r_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datad => \INST_cpu_core|INST_control_unit|r_state\(2),
	combout => \INST_cpu_core|r_register_enable~combout\);

-- Location: FF_X24_Y23_N27
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~31_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7));

-- Location: LCCOMB_X24_Y23_N22
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X24_Y23_N23
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(24));

-- Location: FF_X24_Y23_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(23));

-- Location: LCCOMB_X24_Y23_N4
\INST_cpu_core|INST_GPR|r_REGISTER~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~33_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(24) & ((\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(23)))) # 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\)))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(24) & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(24),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(23),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~33_combout\);

-- Location: FF_X24_Y23_N5
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~33_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6));

-- Location: LCCOMB_X22_Y22_N0
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\);

-- Location: FF_X23_Y23_N11
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(21));

-- Location: LCCOMB_X22_Y23_N12
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X22_Y23_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(22));

-- Location: LCCOMB_X22_Y23_N4
\INST_cpu_core|INST_GPR|r_REGISTER~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~32_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(21))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(22) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(22) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(21),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(22),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~32_combout\);

-- Location: FF_X22_Y23_N5
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~32_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5));

-- Location: LCCOMB_X24_Y22_N22
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X24_Y22_N23
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(20));

-- Location: M9K_X25_Y22_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|register32x8:INST_GPR|altsyncram:r_REGISTER_rtl_1|altsyncram_a3o1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_GPR|r_REGISTER~38_combout\,
	portbre => VCC,
	portbaddrstall => \INST_cpu_core|INST_control_unit|ALT_INV_r_state\(1),
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X24_Y22_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_REGISTER\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(19));

-- Location: LCCOMB_X24_Y22_N30
\INST_cpu_core|INST_GPR|r_REGISTER~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~28_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(19))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(20) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(20) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(20),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(19),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~28_combout\);

-- Location: FF_X24_Y22_N31
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~28_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4));

-- Location: LCCOMB_X21_Y21_N4
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\);

-- Location: LCCOMB_X22_Y23_N22
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X22_Y23_N23
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(20));

-- Location: FF_X24_Y20_N11
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(19));

-- Location: LCCOMB_X22_Y23_N6
\INST_cpu_core|INST_GPR|r_REGISTER~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~34_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(20) & ((\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(19))) # 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(20) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(20),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(19),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~34_combout\);

-- Location: FF_X22_Y23_N7
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~34_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4));

-- Location: FF_X24_Y20_N7
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(17));

-- Location: LCCOMB_X24_Y23_N18
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X24_Y23_N19
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(18));

-- Location: LCCOMB_X24_Y23_N16
\INST_cpu_core|INST_GPR|r_REGISTER~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~36_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(17))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(18) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(18) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(17),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(18),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~36_combout\);

-- Location: FF_X24_Y23_N17
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~36_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3));

-- Location: LCCOMB_X24_Y22_N28
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X24_Y22_N29
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(18));

-- Location: LCCOMB_X24_Y22_N2
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_REGISTER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(3),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X24_Y22_N3
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(17));

-- Location: LCCOMB_X24_Y22_N18
\INST_cpu_core|INST_GPR|r_REGISTER~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~30_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(17))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(18) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(18) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(18),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(17),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~30_combout\);

-- Location: FF_X24_Y22_N19
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~30_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3));

-- Location: LCCOMB_X21_Y21_N12
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3),
	datac => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\);

-- Location: FF_X24_Y20_N13
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(15));

-- Location: LCCOMB_X24_Y23_N24
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X24_Y23_N25
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(16));

-- Location: LCCOMB_X24_Y23_N30
\INST_cpu_core|INST_GPR|r_REGISTER~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~35_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(15))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(16) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(16) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(15),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(16),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~35_combout\);

-- Location: FF_X24_Y23_N31
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~35_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2));

-- Location: FF_X24_Y20_N9
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(13));

-- Location: LCCOMB_X24_Y23_N20
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X24_Y23_N21
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(14));

-- Location: LCCOMB_X24_Y23_N10
\INST_cpu_core|INST_GPR|r_REGISTER~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~37_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(13))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(14) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(14) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(13),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(14),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~37_combout\);

-- Location: FF_X24_Y23_N11
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~37_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1));

-- Location: LCCOMB_X24_Y22_N4
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X24_Y22_N5
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(12));

-- Location: LCCOMB_X23_Y23_N16
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_REGISTER\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(0),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X23_Y23_N17
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(11));

-- Location: LCCOMB_X24_Y22_N24
\INST_cpu_core|INST_GPR|r_REGISTER~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~18_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(11))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(12) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(12) & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(12),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(11),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~18_combout\);

-- Location: FF_X24_Y22_N25
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~18_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(0));

-- Location: LCCOMB_X23_Y22_N18
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(0),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\);

-- Location: LCCOMB_X20_Y22_N0
\INST_cpu_core|INST_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~0_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ (VCC))) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & 
-- (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & VCC))
-- \INST_cpu_core|INST_ALU|Add1~1\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	combout => \INST_cpu_core|INST_ALU|Add1~0_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~1\);

-- Location: LCCOMB_X20_Y22_N2
\INST_cpu_core|INST_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~2_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_ALU|Add1~1\ & VCC)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_cpu_core|INST_ALU|Add1~1\)))) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_cpu_core|INST_ALU|Add1~1\)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_ALU|Add1~1\) # (GND)))))
-- \INST_cpu_core|INST_ALU|Add1~3\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_cpu_core|INST_ALU|Add1~1\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & 
-- ((!\INST_cpu_core|INST_ALU|Add1~1\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~1\,
	combout => \INST_cpu_core|INST_ALU|Add1~2_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~3\);

-- Location: LCCOMB_X20_Y22_N4
\INST_cpu_core|INST_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~4_combout\ = ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ $ (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) $ (!\INST_cpu_core|INST_ALU|Add1~3\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add1~5\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)) # (!\INST_cpu_core|INST_ALU|Add1~3\))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_cpu_core|INST_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~3\,
	combout => \INST_cpu_core|INST_ALU|Add1~4_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~5\);

-- Location: LCCOMB_X20_Y22_N6
\INST_cpu_core|INST_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~6_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_ALU|Add1~5\ & VCC)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_cpu_core|INST_ALU|Add1~5\)))) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_cpu_core|INST_ALU|Add1~5\)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_cpu_core|INST_ALU|Add1~5\) # (GND)))))
-- \INST_cpu_core|INST_ALU|Add1~7\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & !\INST_cpu_core|INST_ALU|Add1~5\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & 
-- ((!\INST_cpu_core|INST_ALU|Add1~5\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~5\,
	combout => \INST_cpu_core|INST_ALU|Add1~6_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~7\);

-- Location: LCCOMB_X20_Y22_N8
\INST_cpu_core|INST_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~8_combout\ = ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ $ (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) $ (!\INST_cpu_core|INST_ALU|Add1~7\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add1~9\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)) # (!\INST_cpu_core|INST_ALU|Add1~7\))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) & !\INST_cpu_core|INST_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~7\,
	combout => \INST_cpu_core|INST_ALU|Add1~8_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~9\);

-- Location: LCCOMB_X20_Y22_N10
\INST_cpu_core|INST_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~10_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_cpu_core|INST_ALU|Add1~9\ & VCC)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & 
-- (!\INST_cpu_core|INST_ALU|Add1~9\)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_cpu_core|INST_ALU|Add1~9\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & 
-- ((\INST_cpu_core|INST_ALU|Add1~9\) # (GND)))))
-- \INST_cpu_core|INST_ALU|Add1~11\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & !\INST_cpu_core|INST_ALU|Add1~9\)) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & 
-- ((!\INST_cpu_core|INST_ALU|Add1~9\) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~9\,
	combout => \INST_cpu_core|INST_ALU|Add1~10_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~11\);

-- Location: LCCOMB_X20_Y22_N12
\INST_cpu_core|INST_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~12_combout\ = ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ $ (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) $ (!\INST_cpu_core|INST_ALU|Add1~11\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add1~13\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)) # (!\INST_cpu_core|INST_ALU|Add1~11\))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & !\INST_cpu_core|INST_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~11\,
	combout => \INST_cpu_core|INST_ALU|Add1~12_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~13\);

-- Location: LCCOMB_X20_Y22_N14
\INST_cpu_core|INST_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~14_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & (\INST_cpu_core|INST_ALU|Add1~13\ & VCC)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & 
-- (!\INST_cpu_core|INST_ALU|Add1~13\)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_cpu_core|INST_ALU|Add1~13\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & 
-- ((\INST_cpu_core|INST_ALU|Add1~13\) # (GND)))))
-- \INST_cpu_core|INST_ALU|Add1~15\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & !\INST_cpu_core|INST_ALU|Add1~13\)) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ & 
-- ((!\INST_cpu_core|INST_ALU|Add1~13\) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add1~13\,
	combout => \INST_cpu_core|INST_ALU|Add1~14_combout\,
	cout => \INST_cpu_core|INST_ALU|Add1~15\);

-- Location: LCCOMB_X22_Y25_N20
\INST_cpu_core|INST_ALU|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~32_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|Add1~14_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	combout => \INST_cpu_core|INST_ALU|Add0~32_combout\);

-- Location: LCCOMB_X22_Y25_N26
\INST_cpu_core|INST_ALU|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~31_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10),
	combout => \INST_cpu_core|INST_ALU|Add0~31_combout\);

-- Location: LCCOMB_X19_Y22_N14
\INST_cpu_core|INST_ALU|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~28_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|Add1~12_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_cpu_core|INST_ALU|Add0~28_combout\);

-- Location: LCCOMB_X22_Y22_N16
\INST_cpu_core|INST_ALU|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~27_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9),
	datad => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_cpu_core|INST_ALU|Add0~27_combout\);

-- Location: LCCOMB_X19_Y22_N10
\INST_cpu_core|INST_ALU|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~24_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_ALU|Add1~10_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|Add0~24_combout\);

-- Location: LCCOMB_X21_Y21_N20
\INST_cpu_core|INST_ALU|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~20_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|Add1~8_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|Add0~20_combout\);

-- Location: LCCOMB_X21_Y21_N10
\INST_cpu_core|INST_ALU|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~19_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	combout => \INST_cpu_core|INST_ALU|Add0~19_combout\);

-- Location: LCCOMB_X20_Y21_N16
\INST_cpu_core|INST_ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~16_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_ALU|Add1~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Add0~16_combout\);

-- Location: LCCOMB_X21_Y21_N30
\INST_cpu_core|INST_ALU|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~15_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	datac => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3),
	combout => \INST_cpu_core|INST_ALU|Add0~15_combout\);

-- Location: LCCOMB_X20_Y25_N16
\INST_cpu_core|INST_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~12_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_cpu_core|INST_ALU|Add1~4_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Add0~12_combout\);

-- Location: LCCOMB_X21_Y21_N14
\INST_cpu_core|INST_ALU|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~11_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(2))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(2),
	combout => \INST_cpu_core|INST_ALU|Add0~11_combout\);

-- Location: LCCOMB_X21_Y25_N16
\INST_cpu_core|INST_ALU|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~7_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	combout => \INST_cpu_core|INST_ALU|Add0~7_combout\);

-- Location: LCCOMB_X21_Y25_N26
\INST_cpu_core|INST_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add1~2_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|Add0~8_combout\);

-- Location: LCCOMB_X21_Y22_N26
\INST_cpu_core|INST_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_ALU|Add1~0_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_cpu_core|INST_ALU|Add0~2_combout\);

-- Location: LCCOMB_X20_Y25_N26
\INST_cpu_core|INST_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & \INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\,
	combout => \INST_cpu_core|INST_ALU|Add0~0_combout\);

-- Location: LCCOMB_X21_Y22_N0
\INST_cpu_core|INST_ALU|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~1_combout\ = (\INST_cpu_core|INST_ALU|Mux9~0_combout\ & (\INST_cpu_core|INST_ALU|Add0~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux9~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Add0~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Add0~1_combout\);

-- Location: LCCOMB_X21_Y22_N8
\INST_cpu_core|INST_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~4_cout\ = CARRY(!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => VCC,
	cout => \INST_cpu_core|INST_ALU|Add0~4_cout\);

-- Location: LCCOMB_X21_Y22_N10
\INST_cpu_core|INST_ALU|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~5_combout\ = (\INST_cpu_core|INST_ALU|Add0~2_combout\ & ((\INST_cpu_core|INST_ALU|Add0~1_combout\ & (\INST_cpu_core|INST_ALU|Add0~4_cout\ & VCC)) # (!\INST_cpu_core|INST_ALU|Add0~1_combout\ & 
-- (!\INST_cpu_core|INST_ALU|Add0~4_cout\)))) # (!\INST_cpu_core|INST_ALU|Add0~2_combout\ & ((\INST_cpu_core|INST_ALU|Add0~1_combout\ & (!\INST_cpu_core|INST_ALU|Add0~4_cout\)) # (!\INST_cpu_core|INST_ALU|Add0~1_combout\ & 
-- ((\INST_cpu_core|INST_ALU|Add0~4_cout\) # (GND)))))
-- \INST_cpu_core|INST_ALU|Add0~6\ = CARRY((\INST_cpu_core|INST_ALU|Add0~2_combout\ & (!\INST_cpu_core|INST_ALU|Add0~1_combout\ & !\INST_cpu_core|INST_ALU|Add0~4_cout\)) # (!\INST_cpu_core|INST_ALU|Add0~2_combout\ & ((!\INST_cpu_core|INST_ALU|Add0~4_cout\) # 
-- (!\INST_cpu_core|INST_ALU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~2_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~1_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~4_cout\,
	combout => \INST_cpu_core|INST_ALU|Add0~5_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~6\);

-- Location: LCCOMB_X21_Y22_N12
\INST_cpu_core|INST_ALU|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~9_combout\ = ((\INST_cpu_core|INST_ALU|Add0~7_combout\ $ (\INST_cpu_core|INST_ALU|Add0~8_combout\ $ (\INST_cpu_core|INST_ALU|Add0~6\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add0~10\ = CARRY((\INST_cpu_core|INST_ALU|Add0~7_combout\ & (\INST_cpu_core|INST_ALU|Add0~8_combout\ & !\INST_cpu_core|INST_ALU|Add0~6\)) # (!\INST_cpu_core|INST_ALU|Add0~7_combout\ & ((\INST_cpu_core|INST_ALU|Add0~8_combout\) # 
-- (!\INST_cpu_core|INST_ALU|Add0~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~7_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~8_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~6\,
	combout => \INST_cpu_core|INST_ALU|Add0~9_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~10\);

-- Location: LCCOMB_X21_Y22_N14
\INST_cpu_core|INST_ALU|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~13_combout\ = (\INST_cpu_core|INST_ALU|Add0~12_combout\ & ((\INST_cpu_core|INST_ALU|Add0~11_combout\ & (!\INST_cpu_core|INST_ALU|Add0~10\)) # (!\INST_cpu_core|INST_ALU|Add0~11_combout\ & (\INST_cpu_core|INST_ALU|Add0~10\ & 
-- VCC)))) # (!\INST_cpu_core|INST_ALU|Add0~12_combout\ & ((\INST_cpu_core|INST_ALU|Add0~11_combout\ & ((\INST_cpu_core|INST_ALU|Add0~10\) # (GND))) # (!\INST_cpu_core|INST_ALU|Add0~11_combout\ & (!\INST_cpu_core|INST_ALU|Add0~10\))))
-- \INST_cpu_core|INST_ALU|Add0~14\ = CARRY((\INST_cpu_core|INST_ALU|Add0~12_combout\ & (\INST_cpu_core|INST_ALU|Add0~11_combout\ & !\INST_cpu_core|INST_ALU|Add0~10\)) # (!\INST_cpu_core|INST_ALU|Add0~12_combout\ & ((\INST_cpu_core|INST_ALU|Add0~11_combout\) 
-- # (!\INST_cpu_core|INST_ALU|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~12_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~11_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~10\,
	combout => \INST_cpu_core|INST_ALU|Add0~13_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~14\);

-- Location: LCCOMB_X21_Y22_N16
\INST_cpu_core|INST_ALU|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~17_combout\ = ((\INST_cpu_core|INST_ALU|Add0~16_combout\ $ (\INST_cpu_core|INST_ALU|Add0~15_combout\ $ (\INST_cpu_core|INST_ALU|Add0~14\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add0~18\ = CARRY((\INST_cpu_core|INST_ALU|Add0~16_combout\ & ((!\INST_cpu_core|INST_ALU|Add0~14\) # (!\INST_cpu_core|INST_ALU|Add0~15_combout\))) # (!\INST_cpu_core|INST_ALU|Add0~16_combout\ & 
-- (!\INST_cpu_core|INST_ALU|Add0~15_combout\ & !\INST_cpu_core|INST_ALU|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~16_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~15_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~14\,
	combout => \INST_cpu_core|INST_ALU|Add0~17_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~18\);

-- Location: LCCOMB_X21_Y22_N18
\INST_cpu_core|INST_ALU|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~21_combout\ = (\INST_cpu_core|INST_ALU|Add0~20_combout\ & ((\INST_cpu_core|INST_ALU|Add0~19_combout\ & (!\INST_cpu_core|INST_ALU|Add0~18\)) # (!\INST_cpu_core|INST_ALU|Add0~19_combout\ & (\INST_cpu_core|INST_ALU|Add0~18\ & 
-- VCC)))) # (!\INST_cpu_core|INST_ALU|Add0~20_combout\ & ((\INST_cpu_core|INST_ALU|Add0~19_combout\ & ((\INST_cpu_core|INST_ALU|Add0~18\) # (GND))) # (!\INST_cpu_core|INST_ALU|Add0~19_combout\ & (!\INST_cpu_core|INST_ALU|Add0~18\))))
-- \INST_cpu_core|INST_ALU|Add0~22\ = CARRY((\INST_cpu_core|INST_ALU|Add0~20_combout\ & (\INST_cpu_core|INST_ALU|Add0~19_combout\ & !\INST_cpu_core|INST_ALU|Add0~18\)) # (!\INST_cpu_core|INST_ALU|Add0~20_combout\ & ((\INST_cpu_core|INST_ALU|Add0~19_combout\) 
-- # (!\INST_cpu_core|INST_ALU|Add0~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~20_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~19_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~18\,
	combout => \INST_cpu_core|INST_ALU|Add0~21_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~22\);

-- Location: LCCOMB_X21_Y22_N20
\INST_cpu_core|INST_ALU|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~25_combout\ = ((\INST_cpu_core|INST_ALU|Add0~23_combout\ $ (\INST_cpu_core|INST_ALU|Add0~24_combout\ $ (\INST_cpu_core|INST_ALU|Add0~22\)))) # (GND)
-- \INST_cpu_core|INST_ALU|Add0~26\ = CARRY((\INST_cpu_core|INST_ALU|Add0~23_combout\ & (\INST_cpu_core|INST_ALU|Add0~24_combout\ & !\INST_cpu_core|INST_ALU|Add0~22\)) # (!\INST_cpu_core|INST_ALU|Add0~23_combout\ & ((\INST_cpu_core|INST_ALU|Add0~24_combout\) 
-- # (!\INST_cpu_core|INST_ALU|Add0~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~23_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~24_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~22\,
	combout => \INST_cpu_core|INST_ALU|Add0~25_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~26\);

-- Location: LCCOMB_X21_Y22_N22
\INST_cpu_core|INST_ALU|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~29_combout\ = (\INST_cpu_core|INST_ALU|Add0~28_combout\ & ((\INST_cpu_core|INST_ALU|Add0~27_combout\ & (!\INST_cpu_core|INST_ALU|Add0~26\)) # (!\INST_cpu_core|INST_ALU|Add0~27_combout\ & (\INST_cpu_core|INST_ALU|Add0~26\ & 
-- VCC)))) # (!\INST_cpu_core|INST_ALU|Add0~28_combout\ & ((\INST_cpu_core|INST_ALU|Add0~27_combout\ & ((\INST_cpu_core|INST_ALU|Add0~26\) # (GND))) # (!\INST_cpu_core|INST_ALU|Add0~27_combout\ & (!\INST_cpu_core|INST_ALU|Add0~26\))))
-- \INST_cpu_core|INST_ALU|Add0~30\ = CARRY((\INST_cpu_core|INST_ALU|Add0~28_combout\ & (\INST_cpu_core|INST_ALU|Add0~27_combout\ & !\INST_cpu_core|INST_ALU|Add0~26\)) # (!\INST_cpu_core|INST_ALU|Add0~28_combout\ & ((\INST_cpu_core|INST_ALU|Add0~27_combout\) 
-- # (!\INST_cpu_core|INST_ALU|Add0~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~28_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~27_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|Add0~26\,
	combout => \INST_cpu_core|INST_ALU|Add0~29_combout\,
	cout => \INST_cpu_core|INST_ALU|Add0~30\);

-- Location: LCCOMB_X21_Y22_N24
\INST_cpu_core|INST_ALU|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~33_combout\ = \INST_cpu_core|INST_ALU|Add0~32_combout\ $ (\INST_cpu_core|INST_ALU|Add0~30\ $ (\INST_cpu_core|INST_ALU|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~32_combout\,
	datad => \INST_cpu_core|INST_ALU|Add0~31_combout\,
	cin => \INST_cpu_core|INST_ALU|Add0~30\,
	combout => \INST_cpu_core|INST_ALU|Add0~33_combout\);

-- Location: LCCOMB_X21_Y24_N0
\INST_cpu_core|INST_ALU|tmp[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|tmp[8]~0_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & 
-- !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	combout => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\);

-- Location: LCCOMB_X21_Y24_N26
\INST_cpu_core|INST_ALU|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~6_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & \INST_cpu_core|INST_ALU|tmp[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datad => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~6_combout\);

-- Location: LCCOMB_X20_Y21_N24
\INST_cpu_core|INST_ALU|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~13_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_cpu_core|INST_ALU|Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux4~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y25_N10
\INST_cpu_core|INST_ALU|Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~14_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) $ (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Mux0~13_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|Mux0~13_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~14_combout\);

-- Location: LCCOMB_X22_Y25_N12
\INST_cpu_core|INST_ALU|Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~15_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|Mux0~14_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_ALU|Add0~33_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux0~14_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~15_combout\);

-- Location: LCCOMB_X19_Y23_N0
\INST_cpu_core|INST_ALU|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~12_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X21_Y24_N4
\INST_cpu_core|INST_ALU|ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X19_Y23_N18
\INST_cpu_core|INST_ALU|ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\ = (\INST_cpu_core|INST_ALU|ShiftLeft0~12_combout\) # ((!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~12_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X21_Y21_N8
\INST_cpu_core|INST_ALU|Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~19_combout\ = (\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3),
	datab => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	combout => \INST_cpu_core|INST_ALU|Mux4~19_combout\);

-- Location: LCCOMB_X20_Y24_N30
\INST_cpu_core|INST_ALU|ShiftLeft0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~19_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X22_Y23_N30
\INST_cpu_core|INST_ALU|ShiftLeft0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X19_Y23_N2
\INST_cpu_core|INST_ALU|ShiftLeft0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~20_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_ALU|ShiftLeft0~19_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~19_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X19_Y23_N20
\INST_cpu_core|INST_ALU|ShiftLeft0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~21_combout\ = (\INST_cpu_core|INST_ALU|Mux4~19_combout\ & ((\INST_cpu_core|INST_ALU|ShiftLeft0~20_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~20_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X22_Y25_N28
\INST_cpu_core|INST_ALU|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~10_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & (\INST_cpu_core|INST_ALU|Add0~33_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & 
-- ((\INST_cpu_core|INST_ALU|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~33_combout\,
	datab => \INST_cpu_core|INST_ALU|Add1~14_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	combout => \INST_cpu_core|INST_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X22_Y25_N30
\INST_cpu_core|INST_ALU|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)) # ((\INST_cpu_core|INST_ALU|ShiftLeft0~21_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_ALU|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_ALU|ShiftLeft0~21_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux0~10_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X22_Y25_N24
\INST_cpu_core|INST_ALU|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~12_combout\ = (\INST_cpu_core|INST_ALU|Mux0~11_combout\ & (((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)))) # (!\INST_cpu_core|INST_ALU|Mux0~11_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7)) # 
-- (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~11_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y25_N22
\INST_cpu_core|INST_ALU|Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~16_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux0~12_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~15_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Mux0~12_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~16_combout\);

-- Location: LCCOMB_X21_Y24_N28
\INST_cpu_core|INST_ALU|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~6_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)) # (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_cpu_core|INST_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X21_Y24_N2
\INST_cpu_core|INST_ALU|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~5_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X21_Y25_N30
\INST_cpu_core|INST_ALU|r_ALU_Result~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\ = \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) $ (((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\);

-- Location: LCCOMB_X21_Y24_N24
\INST_cpu_core|INST_ALU|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~4_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ $ 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))))) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ $ 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y24_N30
\INST_cpu_core|INST_ALU|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~7_combout\ = (!\INST_cpu_core|INST_ALU|Mux0~6_combout\ & (\INST_cpu_core|INST_ALU|Mux0~5_combout\ & (!\INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\ & \INST_cpu_core|INST_ALU|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~6_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux0~5_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux0~4_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X22_Y25_N6
\INST_cpu_core|INST_ALU|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_ALU|Mux0~7_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) $ (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~7_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X22_Y25_N16
\INST_cpu_core|INST_ALU|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~9_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|Mux0~8_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ ((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_ALU|Mux0~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X22_Y25_N8
\INST_cpu_core|INST_ALU|Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux0~17_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux0~16_combout\ & (\INST_cpu_core|INST_ALU|Mux0~18_combout\)) # (!\INST_cpu_core|INST_ALU|Mux0~16_combout\ & 
-- ((\INST_cpu_core|INST_ALU|Mux0~9_combout\))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_ALU|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~18_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|Mux0~16_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux0~9_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux0~17_combout\);

-- Location: LCCOMB_X20_Y21_N0
\INST_cpu_core|INST_ALU|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~10_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)) # 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & 
-- !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Mux7~10_combout\);

-- Location: LCCOMB_X21_Y23_N30
\INST_cpu_core|INST_ALU|r_ALU_Result[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[7]~19_combout\ = (\INST_cpu_core|INST_ALU|Mux7~10_combout\ & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(7))))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_control_unit|r_state\(3) & 
-- (\INST_cpu_core|INST_ALU|Mux0~17_combout\)) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux0~17_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	datad => \INST_cpu_core|INST_control_unit|r_state\(3),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[7]~19_combout\);

-- Location: FF_X21_Y23_N31
\INST_cpu_core|INST_ALU|r_ALU_Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(7));

-- Location: LCCOMB_X23_Y23_N4
\INST_cpu_core|INST_data_bus|o_MEMORY[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(7) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux16~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux16~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_MEMORY\(7),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(7));

-- Location: FF_X23_Y23_N5
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(7),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(7));

-- Location: M9K_X13_Y22_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y21_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N26
\INST_cpu_core|INST_DATA_RAM|MEMORY~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~37_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~37_combout\);

-- Location: LCCOMB_X24_Y19_N4
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(44));

-- Location: FF_X24_Y19_N17
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(43));

-- Location: LCCOMB_X24_Y19_N2
\INST_cpu_core|INST_DATA_RAM|MEMORY~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~38_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(43))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & 
-- ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(44) & (\INST_cpu_core|INST_DATA_RAM|MEMORY~37_combout\)) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(44) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~37_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(44),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(43),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~38_combout\);

-- Location: FF_X24_Y19_N3
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~38_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(7));

-- Location: IOIBUF_X26_Y29_N1
\io_GPIO_PIN2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(7),
	o => \io_GPIO_PIN2[7]~input_o\);

-- Location: FF_X29_Y25_N9
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN2[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(7));

-- Location: IOIBUF_X41_Y21_N22
\io_GPIO_PIN3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(7),
	o => \io_GPIO_PIN3[7]~input_o\);

-- Location: FF_X29_Y25_N31
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(7));

-- Location: IOIBUF_X26_Y29_N15
\io_GPIO_PIN0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(7),
	o => \io_GPIO_PIN0[7]~input_o\);

-- Location: FF_X29_Y25_N21
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(7));

-- Location: IOIBUF_X41_Y25_N1
\io_GPIO_PIN1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(7),
	o => \io_GPIO_PIN1[7]~input_o\);

-- Location: FF_X29_Y25_N3
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN1[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(7));

-- Location: LCCOMB_X29_Y25_N20
\INST_GPIO_register|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux1~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(7)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(7),
	datad => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(7),
	combout => \INST_GPIO_register|Mux1~2_combout\);

-- Location: LCCOMB_X29_Y25_N30
\INST_GPIO_register|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux1~3_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|Mux1~2_combout\ & ((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(7)))) # (!\INST_GPIO_register|Mux1~2_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(7))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(7),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(7),
	datad => \INST_GPIO_register|Mux1~2_combout\,
	combout => \INST_GPIO_register|Mux1~3_combout\);

-- Location: IOIBUF_X37_Y29_N22
\io_GPIO_PIN5[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(7),
	o => \io_GPIO_PIN5[7]~input_o\);

-- Location: LCCOMB_X29_Y25_N24
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]~feeder_combout\ = \io_GPIO_PIN5[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN5[7]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]~feeder_combout\);

-- Location: FF_X29_Y25_N25
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(7));

-- Location: IOIBUF_X41_Y21_N8
\io_GPIO_PIN4[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(7),
	o => \io_GPIO_PIN4[7]~input_o\);

-- Location: FF_X29_Y25_N5
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(7));

-- Location: IOIBUF_X37_Y29_N1
\io_GPIO_PIN6[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(7),
	o => \io_GPIO_PIN6[7]~input_o\);

-- Location: FF_X29_Y25_N19
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN6[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(7));

-- Location: LCCOMB_X29_Y25_N4
\INST_GPIO_register|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux1~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)) # ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(7))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(7),
	datad => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(7),
	combout => \INST_GPIO_register|Mux1~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\io_GPIO_PIN7[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(7),
	o => \io_GPIO_PIN7[7]~input_o\);

-- Location: FF_X29_Y25_N23
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(7));

-- Location: LCCOMB_X29_Y25_N22
\INST_GPIO_register|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux1~1_combout\ = (\INST_GPIO_register|Mux1~0_combout\ & (((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(7)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # (!\INST_GPIO_register|Mux1~0_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(7) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(7),
	datab => \INST_GPIO_register|Mux1~0_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(7),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y21_N28
\INST_GPIO_register|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux1~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux1~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPIO_register|Mux1~3_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datad => \INST_GPIO_register|Mux1~1_combout\,
	combout => \INST_GPIO_register|Mux1~4_combout\);

-- Location: FF_X24_Y21_N29
\INST_GPIO_register|o_GPIO_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux1~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(7));

-- Location: LCCOMB_X24_Y21_N20
\INST_cpu_core|INST_MEMORY_CONTROL|Mux82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux82~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(7) & (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & \INST_GPIO_register|o_GPIO_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(7),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_GPIO_register|o_GPIO_data\(7),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux82~0_combout\);

-- Location: FF_X24_Y21_N21
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux82~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(7));

-- Location: LCCOMB_X23_Y23_N6
\INST_cpu_core|INST_data_bus|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux16~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(7)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(7),
	combout => \INST_cpu_core|INST_data_bus|Mux16~0_combout\);

-- Location: LCCOMB_X23_Y23_N8
\INST_cpu_core|INST_data_bus|o_REGISTER[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(7) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(7)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux16~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_REGISTER\(7),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(7));

-- Location: LCCOMB_X23_Y23_N30
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_REGISTER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(5),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X23_Y23_N31
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(21));

-- Location: LCCOMB_X22_Y19_N24
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X22_Y19_N25
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(22));

-- Location: LCCOMB_X22_Y22_N22
\INST_cpu_core|INST_GPR|r_REGISTER~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~27_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(21))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(22) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(22) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(21),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(22),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~27_combout\);

-- Location: FF_X22_Y22_N23
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~27_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5));

-- Location: LCCOMB_X22_Y22_N2
\INST_cpu_core|INST_ALU|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add0~23_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Add0~23_combout\);

-- Location: LCCOMB_X20_Y23_N12
\INST_cpu_core|INST_ALU|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~1_cout\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datad => VCC,
	cout => \INST_cpu_core|INST_ALU|LessThan1~1_cout\);

-- Location: LCCOMB_X20_Y23_N14
\INST_cpu_core|INST_ALU|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~3_cout\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_cpu_core|INST_ALU|LessThan1~1_cout\)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1)) # (!\INST_cpu_core|INST_ALU|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~1_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~3_cout\);

-- Location: LCCOMB_X20_Y23_N16
\INST_cpu_core|INST_ALU|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~5_cout\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((!\INST_cpu_core|INST_ALU|LessThan1~3_cout\) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_cpu_core|INST_ALU|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~3_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~5_cout\);

-- Location: LCCOMB_X20_Y23_N18
\INST_cpu_core|INST_ALU|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~7_cout\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_cpu_core|INST_ALU|LessThan1~5_cout\)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3)) # (!\INST_cpu_core|INST_ALU|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~5_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~7_cout\);

-- Location: LCCOMB_X20_Y23_N20
\INST_cpu_core|INST_ALU|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~9_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & !\INST_cpu_core|INST_ALU|LessThan1~7_cout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) & 
-- ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\) # (!\INST_cpu_core|INST_ALU|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~7_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~9_cout\);

-- Location: LCCOMB_X20_Y23_N22
\INST_cpu_core|INST_ALU|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~11_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & ((!\INST_cpu_core|INST_ALU|LessThan1~9_cout\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & !\INST_cpu_core|INST_ALU|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~9_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~11_cout\);

-- Location: LCCOMB_X20_Y23_N24
\INST_cpu_core|INST_ALU|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~13_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & !\INST_cpu_core|INST_ALU|LessThan1~11_cout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) 
-- & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\) # (!\INST_cpu_core|INST_ALU|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan1~11_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan1~13_cout\);

-- Location: LCCOMB_X20_Y23_N26
\INST_cpu_core|INST_ALU|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan1~14_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & (\INST_cpu_core|INST_ALU|LessThan1~13_cout\ & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & 
-- ((\INST_cpu_core|INST_ALU|LessThan1~13_cout\) # (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	cin => \INST_cpu_core|INST_ALU|LessThan1~13_cout\,
	combout => \INST_cpu_core|INST_ALU|LessThan1~14_combout\);

-- Location: LCCOMB_X22_Y22_N10
\INST_cpu_core|INST_ALU|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~5_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_ALU|LessThan1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_ALU|LessThan1~14_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y23_N0
\INST_cpu_core|INST_ALU|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~6_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|Mux2~5_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ (((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_ALU|Mux2~5_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Mux2~6_combout\);

-- Location: LCCOMB_X19_Y22_N12
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\) # ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1)) # 
-- (!\INST_cpu_core|INST_ALU|tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\);

-- Location: LCCOMB_X19_Y22_N6
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ & ((\INST_cpu_core|INST_ALU|Mux4~19_combout\) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\);

-- Location: LCCOMB_X19_Y22_N16
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1)))) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ & 
-- (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\);

-- Location: LCCOMB_X19_Y23_N12
\INST_cpu_core|INST_ALU|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X19_Y22_N26
\INST_cpu_core|INST_ALU|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~2_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ & ((\INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\))) # 
-- (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ & (\INST_cpu_core|INST_ALU|Add1~10_combout\)))) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\ & (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\,
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\,
	datac => \INST_cpu_core|INST_ALU|Add1~10_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y22_N4
\INST_cpu_core|INST_ALU|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~3_combout\ = (\INST_cpu_core|INST_ALU|Mux2~2_combout\ & (((\INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\) # (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\)))) # (!\INST_cpu_core|INST_ALU|Mux2~2_combout\ & 
-- (\INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\ & ((!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux2~2_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~13_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft0~18_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y22_N28
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)) # (\INST_cpu_core|INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_ALU|Mux4~6_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\);

-- Location: LCCOMB_X22_Y22_N4
\INST_cpu_core|INST_ALU|r_ALU_Result~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~12_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)) # ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(5),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(8),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~12_combout\);

-- Location: LCCOMB_X20_Y24_N24
\INST_cpu_core|INST_ALU|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~0_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~0_combout\);

-- Location: LCCOMB_X20_Y24_N26
\INST_cpu_core|INST_ALU|ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~6_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (((\INST_cpu_core|INST_ALU|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~0_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~6_combout\);

-- Location: LCCOMB_X22_Y22_N6
\INST_cpu_core|INST_ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (((\INST_cpu_core|INST_ALU|r_ALU_Result~12_combout\)) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\ & ((\INST_cpu_core|INST_ALU|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result~12_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftRight0~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\INST_cpu_core|INST_ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~1_combout\ = (\INST_cpu_core|INST_ALU|Mux2~0_combout\ & (((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1)))) 
-- # (!\INST_cpu_core|INST_ALU|Mux2~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ $ (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux2~0_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y22_N2
\INST_cpu_core|INST_ALU|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~4_combout\ = (\INST_cpu_core|INST_ALU|Mux9~0_combout\ & (\INST_cpu_core|INST_ALU|Mux2~3_combout\ & ((!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\)))) # (!\INST_cpu_core|INST_ALU|Mux9~0_combout\ & 
-- (((\INST_cpu_core|INST_ALU|Mux2~1_combout\) # (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux2~3_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux2~1_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux9~0_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X21_Y22_N4
\INST_cpu_core|INST_ALU|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~7_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ & ((\INST_cpu_core|INST_ALU|Mux2~4_combout\ & ((\INST_cpu_core|INST_ALU|Mux2~6_combout\))) # (!\INST_cpu_core|INST_ALU|Mux2~4_combout\ & 
-- (\INST_cpu_core|INST_ALU|Add0~25_combout\)))) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ & (((\INST_cpu_core|INST_ALU|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\,
	datab => \INST_cpu_core|INST_ALU|Add0~25_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux2~6_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux2~4_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~7_combout\);

-- Location: LCCOMB_X21_Y23_N26
\INST_cpu_core|INST_ALU|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux2~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux2~7_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_ALU|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_ALU|Mux2~7_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux2~8_combout\);

-- Location: LCCOMB_X21_Y23_N2
\INST_cpu_core|INST_ALU|r_ALU_Result[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[5]~17_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux4~17_combout\) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)) # (!\INST_cpu_core|INST_ALU|Mux4~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_ALU|Mux4~17_combout\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(3),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~17_combout\);

-- Location: FF_X21_Y23_N27
\INST_cpu_core|INST_ALU|r_ALU_Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Mux2~8_combout\,
	ena => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(5));

-- Location: IOIBUF_X37_Y29_N8
\io_GPIO_PIN6[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(5),
	o => \io_GPIO_PIN6[5]~input_o\);

-- Location: LCCOMB_X29_Y25_N26
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN6[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[5]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X29_Y25_N27
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(5));

-- Location: IOIBUF_X30_Y29_N29
\io_GPIO_PIN4[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(5),
	o => \io_GPIO_PIN4[5]~input_o\);

-- Location: FF_X29_Y25_N13
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(5));

-- Location: LCCOMB_X29_Y25_N12
\INST_GPIO_register|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux3~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(5))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(5),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(5),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux3~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\io_GPIO_PIN7[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(5),
	o => \io_GPIO_PIN7[5]~input_o\);

-- Location: FF_X29_Y25_N7
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(5));

-- Location: IOIBUF_X41_Y20_N8
\io_GPIO_PIN5[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(5),
	o => \io_GPIO_PIN5[5]~input_o\);

-- Location: LCCOMB_X29_Y25_N0
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN5[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN5[5]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X29_Y25_N1
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(5));

-- Location: LCCOMB_X29_Y25_N6
\INST_GPIO_register|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux3~1_combout\ = (\INST_GPIO_register|Mux3~0_combout\ & (((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(5))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))) # (!\INST_GPIO_register|Mux3~0_combout\ & 
-- (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux3~0_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(5),
	datad => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(5),
	combout => \INST_GPIO_register|Mux3~1_combout\);

-- Location: IOIBUF_X32_Y29_N29
\io_GPIO_PIN2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(5),
	o => \io_GPIO_PIN2[5]~input_o\);

-- Location: LCCOMB_X29_Y25_N16
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN2[5]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X29_Y25_N17
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(5));

-- Location: IOIBUF_X32_Y29_N22
\io_GPIO_PIN3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(5),
	o => \io_GPIO_PIN3[5]~input_o\);

-- Location: FF_X29_Y25_N15
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(5));

-- Location: IOIBUF_X21_Y29_N1
\io_GPIO_PIN0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(5),
	o => \io_GPIO_PIN0[5]~input_o\);

-- Location: FF_X29_Y25_N29
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(5));

-- Location: IOIBUF_X30_Y29_N22
\io_GPIO_PIN1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(5),
	o => \io_GPIO_PIN1[5]~input_o\);

-- Location: LCCOMB_X29_Y25_N10
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[5]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X29_Y25_N11
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(5));

-- Location: LCCOMB_X29_Y25_N28
\INST_GPIO_register|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux3~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(5)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(5),
	datad => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(5),
	combout => \INST_GPIO_register|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y25_N14
\INST_GPIO_register|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux3~3_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|Mux3~2_combout\ & ((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(5)))) # (!\INST_GPIO_register|Mux3~2_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(5))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datab => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(5),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(5),
	datad => \INST_GPIO_register|Mux3~2_combout\,
	combout => \INST_GPIO_register|Mux3~3_combout\);

-- Location: LCCOMB_X24_Y21_N24
\INST_GPIO_register|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux3~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux3~1_combout\)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datab => \INST_GPIO_register|Mux3~1_combout\,
	datac => \INST_GPIO_register|Mux3~3_combout\,
	combout => \INST_GPIO_register|Mux3~4_combout\);

-- Location: FF_X24_Y21_N25
\INST_GPIO_register|o_GPIO_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux3~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(5));

-- Location: LCCOMB_X23_Y23_N22
\INST_cpu_core|INST_data_bus|o_MEMORY[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(5) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux14~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux14~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_MEMORY\(5),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(5));

-- Location: FF_X23_Y23_N23
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(5),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(5));

-- Location: M9K_X13_Y17_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y23_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N12
\INST_cpu_core|INST_DATA_RAM|MEMORY~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~41_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\)) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~41_combout\);

-- Location: LCCOMB_X21_Y19_N14
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X21_Y19_N15
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(40));

-- Location: FF_X21_Y19_N3
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(39));

-- Location: LCCOMB_X21_Y19_N4
\INST_cpu_core|INST_DATA_RAM|MEMORY~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~42_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(40) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(39)))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~41_combout\)))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(40) & (((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~41_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(40),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(39),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~42_combout\);

-- Location: FF_X21_Y19_N5
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~42_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(5));

-- Location: LCCOMB_X24_Y21_N8
\INST_cpu_core|INST_MEMORY_CONTROL|Mux84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux84~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (\INST_GPIO_register|o_GPIO_data\(5) & ((!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (((\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(5) & \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datab => \INST_GPIO_register|o_GPIO_data\(5),
	datac => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(5),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux84~0_combout\);

-- Location: FF_X24_Y21_N9
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux84~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(5));

-- Location: LCCOMB_X23_Y23_N24
\INST_cpu_core|INST_data_bus|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux14~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(5)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result\(5),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(5),
	combout => \INST_cpu_core|INST_data_bus|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y23_N10
\INST_cpu_core|INST_data_bus|o_REGISTER[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(5) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(5)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux14~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(5),
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(5));

-- Location: FF_X23_Y23_N19
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_REGISTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(11));

-- Location: LCCOMB_X22_Y23_N2
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X22_Y23_N3
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(12));

-- Location: LCCOMB_X22_Y23_N8
\INST_cpu_core|INST_GPR|r_REGISTER~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~23_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(11))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(12) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(12) & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(11),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_0_bypass\(12),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~23_combout\);

-- Location: FF_X22_Y23_N9
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~23_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0));

-- Location: LCCOMB_X20_Y22_N26
\INST_cpu_core|INST_ALU|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~4_combout\ = (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_cpu_core|INST_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X20_Y22_N20
\INST_cpu_core|INST_ALU|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~5_combout\ = (\INST_cpu_core|INST_ALU|Mux3~4_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux3~4_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X22_Y23_N18
\INST_cpu_core|INST_ALU|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~6_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)) # (!\INST_cpu_core|INST_ALU|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux3~5_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux3~6_combout\);

-- Location: LCCOMB_X22_Y23_N28
\INST_cpu_core|INST_ALU|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~7_combout\ = (\INST_cpu_core|INST_ALU|Mux3~6_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))) # 
-- (!\INST_cpu_core|INST_ALU|Mux3~6_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ (((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_ALU|Mux3~6_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|Mux3~7_combout\);

-- Location: LCCOMB_X21_Y21_N18
\INST_cpu_core|INST_ALU|Mux3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~15_combout\ = (\INST_cpu_core|INST_ALU|Mux4~17_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	datad => \INST_cpu_core|INST_ALU|Mux4~17_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~15_combout\);

-- Location: LCCOMB_X20_Y24_N2
\INST_cpu_core|INST_ALU|ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\);

-- Location: LCCOMB_X20_Y24_N28
\INST_cpu_core|INST_ALU|ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~2_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_ALU|ShiftRight0~0_combout\))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (\INST_cpu_core|INST_ALU|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftRight0~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~2_combout\);

-- Location: LCCOMB_X21_Y21_N0
\INST_cpu_core|INST_ALU|r_ALU_Result~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~9_combout\ = \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) $ (((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(4),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(7),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~9_combout\);

-- Location: LCCOMB_X21_Y21_N2
\INST_cpu_core|INST_ALU|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|r_ALU_Result~9_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_ALU|ShiftRight0~2_combout\ & (\INST_cpu_core|INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~2_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux4~6_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result~9_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~11_combout\);

-- Location: LCCOMB_X21_Y21_N28
\INST_cpu_core|INST_ALU|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~12_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|Mux3~11_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_ALU|Mux3~11_combout\,
	datad => \INST_cpu_core|INST_ALU|Add0~21_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~12_combout\);

-- Location: LCCOMB_X19_Y23_N28
\INST_cpu_core|INST_ALU|ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~15_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X20_Y22_N30
\INST_cpu_core|INST_ALU|ShiftLeft1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X19_Y23_N22
\INST_cpu_core|INST_ALU|ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\ = (\INST_cpu_core|INST_ALU|ShiftLeft0~15_combout\) # ((!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~15_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X19_Y23_N24
\INST_cpu_core|INST_ALU|ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X19_Y23_N16
\INST_cpu_core|INST_ALU|ShiftLeft0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~17_combout\ = (\INST_cpu_core|INST_ALU|Mux4~19_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X21_Y21_N22
\INST_cpu_core|INST_ALU|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & (\INST_cpu_core|INST_ALU|Add0~21_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_cpu_core|INST_ALU|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~21_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datad => \INST_cpu_core|INST_ALU|Add1~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~8_combout\);

-- Location: LCCOMB_X22_Y23_N14
\INST_cpu_core|INST_ALU|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~9_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|ShiftLeft0~17_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Mux3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_ALU|ShiftLeft0~17_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux3~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~9_combout\);

-- Location: LCCOMB_X22_Y23_N16
\INST_cpu_core|INST_ALU|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~10_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_ALU|Mux3~9_combout\ & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))) # 
-- (!\INST_cpu_core|INST_ALU|Mux3~9_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\) # (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4)))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- (\INST_cpu_core|INST_ALU|Mux3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_ALU|Mux3~9_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|Mux3~10_combout\);

-- Location: LCCOMB_X22_Y23_N10
\INST_cpu_core|INST_ALU|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~13_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux3~10_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_ALU|Mux3~12_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Mux3~10_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~13_combout\);

-- Location: LCCOMB_X22_Y23_N20
\INST_cpu_core|INST_ALU|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux3~14_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux3~13_combout\ & ((\INST_cpu_core|INST_ALU|Mux3~15_combout\))) # (!\INST_cpu_core|INST_ALU|Mux3~13_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux3~7_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_ALU|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_ALU|Mux3~7_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux3~15_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux3~13_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux3~14_combout\);

-- Location: LCCOMB_X21_Y23_N24
\INST_cpu_core|INST_ALU|r_ALU_Result[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[4]~10_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(4)))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux3~14_combout\)))) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux3~14_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(4),
	datad => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[4]~10_combout\);

-- Location: FF_X21_Y23_N25
\INST_cpu_core|INST_ALU|r_ALU_Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(4));

-- Location: LCCOMB_X24_Y20_N18
\INST_cpu_core|INST_data_bus|o_MEMORY[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(4) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|Mux13~0_combout\))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|o_MEMORY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|o_MEMORY\(4),
	datac => \INST_cpu_core|INST_data_bus|Mux13~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(4));

-- Location: FF_X24_Y20_N19
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(4),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(4));

-- Location: M9K_X13_Y15_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y19_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N26
\INST_cpu_core|INST_DATA_RAM|MEMORY~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~43_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\)) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~43_combout\);

-- Location: LCCOMB_X21_Y19_N28
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X21_Y19_N29
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(38));

-- Location: FF_X21_Y19_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(37));

-- Location: LCCOMB_X21_Y19_N22
\INST_cpu_core|INST_DATA_RAM|MEMORY~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~44_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(38) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(37)))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~43_combout\)))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(38) & (((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY~43_combout\,
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(38),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(37),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~44_combout\);

-- Location: FF_X21_Y19_N23
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~44_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(4));

-- Location: IOIBUF_X28_Y29_N1
\io_GPIO_PIN1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(4),
	o => \io_GPIO_PIN1[4]~input_o\);

-- Location: LCCOMB_X28_Y25_N26
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN1[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[4]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X28_Y25_N27
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(4));

-- Location: IOIBUF_X28_Y29_N29
\io_GPIO_PIN0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(4),
	o => \io_GPIO_PIN0[4]~input_o\);

-- Location: FF_X28_Y25_N13
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(4));

-- Location: LCCOMB_X28_Y25_N12
\INST_GPIO_register|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux4~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(4)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(4) & !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(4),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux4~2_combout\);

-- Location: IOIBUF_X26_Y29_N29
\io_GPIO_PIN2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(4),
	o => \io_GPIO_PIN2[4]~input_o\);

-- Location: FF_X28_Y25_N9
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN2[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(4));

-- Location: IOIBUF_X35_Y29_N1
\io_GPIO_PIN3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(4),
	o => \io_GPIO_PIN3[4]~input_o\);

-- Location: FF_X28_Y25_N31
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(4));

-- Location: LCCOMB_X28_Y25_N30
\INST_GPIO_register|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux4~3_combout\ = (\INST_GPIO_register|Mux4~2_combout\ & (((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(4)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # (!\INST_GPIO_register|Mux4~2_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(4) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux4~2_combout\,
	datab => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(4),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux4~3_combout\);

-- Location: IOIBUF_X30_Y29_N1
\io_GPIO_PIN5[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(4),
	o => \io_GPIO_PIN5[4]~input_o\);

-- Location: LCCOMB_X28_Y25_N16
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN5[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN5[4]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X28_Y25_N17
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(4));

-- Location: IOIBUF_X35_Y29_N22
\io_GPIO_PIN6[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(4),
	o => \io_GPIO_PIN6[4]~input_o\);

-- Location: LCCOMB_X28_Y25_N18
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN6[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[4]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X28_Y25_N19
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(4));

-- Location: IOIBUF_X32_Y29_N15
\io_GPIO_PIN4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(4),
	o => \io_GPIO_PIN4[4]~input_o\);

-- Location: FF_X28_Y25_N21
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(4));

-- Location: LCCOMB_X28_Y25_N20
\INST_GPIO_register|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux4~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(4)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(4) & !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(4),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux4~0_combout\);

-- Location: IOIBUF_X28_Y0_N29
\io_GPIO_PIN7[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(4),
	o => \io_GPIO_PIN7[4]~input_o\);

-- Location: FF_X28_Y25_N23
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(4));

-- Location: LCCOMB_X28_Y25_N22
\INST_GPIO_register|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux4~1_combout\ = (\INST_GPIO_register|Mux4~0_combout\ & (((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(4)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # (!\INST_GPIO_register|Mux4~0_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(4) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(4),
	datab => \INST_GPIO_register|Mux4~0_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y21_N10
\INST_GPIO_register|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux4~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux4~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_GPIO_register|Mux4~3_combout\,
	datad => \INST_GPIO_register|Mux4~1_combout\,
	combout => \INST_GPIO_register|Mux4~4_combout\);

-- Location: FF_X24_Y21_N11
\INST_GPIO_register|o_GPIO_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux4~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(4));

-- Location: LCCOMB_X24_Y21_N26
\INST_cpu_core|INST_MEMORY_CONTROL|Mux85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux85~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(4) & (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & \INST_GPIO_register|o_GPIO_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(4),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_GPIO_register|o_GPIO_data\(4),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux85~0_combout\);

-- Location: FF_X24_Y21_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux85~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(4));

-- Location: LCCOMB_X24_Y20_N22
\INST_cpu_core|INST_data_bus|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux13~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(4)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(4),
	combout => \INST_cpu_core|INST_data_bus|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\INST_cpu_core|INST_data_bus|o_REGISTER[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(4) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|o_REGISTER\(4))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|o_REGISTER\(4),
	datac => \INST_cpu_core|INST_data_bus|Mux13~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(4));

-- Location: LCCOMB_X24_Y23_N0
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X24_Y23_N1
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(24));

-- Location: LCCOMB_X24_Y23_N8
\INST_cpu_core|INST_GPR|r_REGISTER~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~26_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(23))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(24) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(24) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(23),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(24),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~26_combout\);

-- Location: FF_X24_Y23_N9
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~26_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6));

-- Location: LCCOMB_X22_Y22_N18
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\);

-- Location: LCCOMB_X20_Y22_N18
\INST_cpu_core|INST_ALU|ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~7_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~7_combout\);

-- Location: LCCOMB_X22_Y22_N20
\INST_cpu_core|INST_ALU|r_ALU_Result~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~18_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)) # ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(6),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(9),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~18_combout\);

-- Location: LCCOMB_X22_Y22_N14
\INST_cpu_core|INST_ALU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~0_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|r_ALU_Result~18_combout\))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|ShiftRight0~7_combout\)))) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\ & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftRight0~7_combout\,
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~13_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result~18_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y22_N24
\INST_cpu_core|INST_ALU|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (\INST_cpu_core|INST_ALU|Mux1~0_combout\ $ (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (!\INST_cpu_core|INST_ALU|Mux1~0_combout\ & \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (((\INST_cpu_core|INST_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux1~0_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_cpu_core|INST_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y24_N6
\INST_cpu_core|INST_ALU|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~1_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	cout => \INST_cpu_core|INST_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y24_N8
\INST_cpu_core|INST_ALU|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~3_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_cpu_core|INST_ALU|LessThan0~1_cout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & 
-- ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\) # (!\INST_cpu_core|INST_ALU|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~1_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y24_N10
\INST_cpu_core|INST_ALU|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~5_cout\ = CARRY((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_cpu_core|INST_ALU|LessThan0~3_cout\)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)) # (!\INST_cpu_core|INST_ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~3_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y24_N12
\INST_cpu_core|INST_ALU|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~7_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & !\INST_cpu_core|INST_ALU|LessThan0~5_cout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & 
-- ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # (!\INST_cpu_core|INST_ALU|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~5_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y24_N14
\INST_cpu_core|INST_ALU|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~9_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) & ((!\INST_cpu_core|INST_ALU|LessThan0~7_cout\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\ & !\INST_cpu_core|INST_ALU|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[4]~5_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~7_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y24_N16
\INST_cpu_core|INST_ALU|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~11_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\ & !\INST_cpu_core|INST_ALU|LessThan0~9_cout\)) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5) 
-- & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\) # (!\INST_cpu_core|INST_ALU|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[5]~4_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~9_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y24_N18
\INST_cpu_core|INST_ALU|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~13_cout\ = CARRY((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_cpu_core|INST_ALU|LessThan0~11_cout\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & !\INST_cpu_core|INST_ALU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datad => VCC,
	cin => \INST_cpu_core|INST_ALU|LessThan0~11_cout\,
	cout => \INST_cpu_core|INST_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y24_N20
\INST_cpu_core|INST_ALU|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|LessThan0~14_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & ((\INST_cpu_core|INST_ALU|LessThan0~13_cout\) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & (\INST_cpu_core|INST_ALU|LessThan0~13_cout\ & !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	cin => \INST_cpu_core|INST_ALU|LessThan0~13_cout\,
	combout => \INST_cpu_core|INST_ALU|LessThan0~14_combout\);

-- Location: LCCOMB_X21_Y24_N22
\INST_cpu_core|INST_ALU|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~5_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\ & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_cpu_core|INST_ALU|LessThan0~14_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y22_N26
\INST_cpu_core|INST_ALU|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~6_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|Mux1~5_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ (((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_ALU|Mux1~5_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_cpu_core|INST_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y22_N12
\INST_cpu_core|INST_ALU|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~10_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X23_Y22_N22
\INST_cpu_core|INST_ALU|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\ = (\INST_cpu_core|INST_ALU|ShiftLeft0~10_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & 
-- !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~10_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X19_Y22_N2
\INST_cpu_core|INST_ALU|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~2_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ & (\INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\)))) # 
-- (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\ & (((\INST_cpu_core|INST_ALU|Add1~12_combout\) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\,
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~16_combout\,
	datac => \INST_cpu_core|INST_ALU|Add1~12_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~15_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y22_N0
\INST_cpu_core|INST_ALU|ShiftLeft1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X19_Y22_N20
\INST_cpu_core|INST_ALU|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~3_combout\ = (\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ & (\INST_cpu_core|INST_ALU|Mux1~2_combout\)) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\ & ((\INST_cpu_core|INST_ALU|Mux1~2_combout\ & 
-- (\INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\)) # (!\INST_cpu_core|INST_ALU|Mux1~2_combout\ & ((\INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~14_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux1~2_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft1~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X21_Y22_N30
\INST_cpu_core|INST_ALU|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~4_combout\ = (\INST_cpu_core|INST_ALU|Mux9~0_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ & ((\INST_cpu_core|INST_ALU|Add0~29_combout\))) # (!\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux1~3_combout\)))) # (!\INST_cpu_core|INST_ALU|Mux9~0_combout\ & (((\INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux1~3_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux9~0_combout\,
	datac => \INST_cpu_core|INST_ALU|Add0~29_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~20_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y22_N12
\INST_cpu_core|INST_ALU|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~7_combout\ = (\INST_cpu_core|INST_ALU|Mux9~0_combout\ & (((\INST_cpu_core|INST_ALU|Mux1~4_combout\)))) # (!\INST_cpu_core|INST_ALU|Mux9~0_combout\ & ((\INST_cpu_core|INST_ALU|Mux1~4_combout\ & 
-- ((\INST_cpu_core|INST_ALU|Mux1~6_combout\))) # (!\INST_cpu_core|INST_ALU|Mux1~4_combout\ & (\INST_cpu_core|INST_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux9~0_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux1~1_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux1~6_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux1~4_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~7_combout\);

-- Location: LCCOMB_X21_Y23_N28
\INST_cpu_core|INST_ALU|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux1~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (\INST_cpu_core|INST_ALU|Mux1~7_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux1~7_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[6]~3_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux1~8_combout\);

-- Location: FF_X21_Y23_N29
\INST_cpu_core|INST_ALU|r_ALU_Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Mux1~8_combout\,
	ena => \INST_cpu_core|INST_ALU|r_ALU_Result[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(6));

-- Location: LCCOMB_X24_Y20_N20
\INST_cpu_core|INST_data_bus|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux15~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(6))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- ((\INST_cpu_core|INST_ALU|r_ALU_Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(6),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result\(6),
	combout => \INST_cpu_core|INST_data_bus|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\INST_cpu_core|INST_data_bus|o_MEMORY[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(6) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux15~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux15~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(6),
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(6));

-- Location: LCCOMB_X27_Y21_N24
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_MEMORY\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(6),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N6
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(4) & (\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\ & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_control_unit|r_state\(4),
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~q\,
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\);

-- Location: FF_X27_Y21_N25
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[6]~feeder_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6));

-- Location: FF_X23_Y21_N9
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(3));

-- Location: LCCOMB_X23_Y21_N20
\INST_GPIO_register|r_CONFIG_REGISTER[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(3) & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(3),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\,
	combout => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\);

-- Location: FF_X27_Y21_N13
\INST_GPIO_register|r_CONFIG_REGISTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(6));

-- Location: FF_X27_Y21_N3
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_MEMORY\(4),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4));

-- Location: FF_X27_Y21_N11
\INST_GPIO_register|r_CONFIG_REGISTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(4));

-- Location: LCCOMB_X27_Y21_N12
\INST_GPIO_register|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux0~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|r_CONFIG_REGISTER\(6))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|r_CONFIG_REGISTER\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|r_CONFIG_REGISTER\(6),
	datad => \INST_GPIO_register|r_CONFIG_REGISTER\(4),
	combout => \INST_GPIO_register|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y21_N14
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_MEMORY\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(7),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\);

-- Location: FF_X27_Y21_N15
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[7]~feeder_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7));

-- Location: FF_X27_Y21_N27
\INST_GPIO_register|r_CONFIG_REGISTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(7));

-- Location: FF_X27_Y21_N29
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_MEMORY\(5),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5));

-- Location: LCCOMB_X27_Y21_N0
\INST_GPIO_register|r_CONFIG_REGISTER[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_CONFIG_REGISTER[5]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	combout => \INST_GPIO_register|r_CONFIG_REGISTER[5]~feeder_combout\);

-- Location: FF_X27_Y21_N1
\INST_GPIO_register|r_CONFIG_REGISTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_CONFIG_REGISTER[5]~feeder_combout\,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(5));

-- Location: LCCOMB_X27_Y21_N26
\INST_GPIO_register|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux0~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|Mux0~0_combout\ & (\INST_GPIO_register|r_CONFIG_REGISTER\(7))) # (!\INST_GPIO_register|Mux0~0_combout\ & 
-- ((\INST_GPIO_register|r_CONFIG_REGISTER\(5)))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_GPIO_register|Mux0~0_combout\,
	datac => \INST_GPIO_register|r_CONFIG_REGISTER\(7),
	datad => \INST_GPIO_register|r_CONFIG_REGISTER\(5),
	combout => \INST_GPIO_register|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y20_N28
\INST_cpu_core|INST_data_bus|o_MEMORY[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(2) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux11~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux11~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(2),
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(2));

-- Location: FF_X27_Y21_N21
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_MEMORY\(2),
	sload => VCC,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2));

-- Location: LCCOMB_X27_Y21_N18
\INST_GPIO_register|r_CONFIG_REGISTER[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_CONFIG_REGISTER[2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_CONFIG_REGISTER[2]~feeder_combout\);

-- Location: FF_X27_Y21_N19
\INST_GPIO_register|r_CONFIG_REGISTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_CONFIG_REGISTER[2]~feeder_combout\,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(2));

-- Location: LCCOMB_X27_Y21_N4
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_MEMORY\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(3),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]~feeder_combout\);

-- Location: FF_X27_Y21_N5
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[3]~feeder_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3));

-- Location: FF_X27_Y21_N17
\INST_GPIO_register|r_CONFIG_REGISTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(3));

-- Location: LCCOMB_X24_Y20_N30
\INST_cpu_core|INST_data_bus|o_MEMORY[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(1) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux10~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux10~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_MEMORY\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(1));

-- Location: LCCOMB_X27_Y21_N6
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_MEMORY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(1),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]~feeder_combout\);

-- Location: FF_X27_Y21_N7
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[1]~feeder_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1));

-- Location: FF_X27_Y21_N9
\INST_GPIO_register|r_CONFIG_REGISTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(1));

-- Location: FF_X27_Y21_N23
\INST_GPIO_register|r_CONFIG_REGISTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	sload => VCC,
	ena => \INST_GPIO_register|r_CONFIG_REGISTER[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_CONFIG_REGISTER\(0));

-- Location: LCCOMB_X27_Y21_N8
\INST_GPIO_register|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux0~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)) # ((\INST_GPIO_register|r_CONFIG_REGISTER\(1))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|r_CONFIG_REGISTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|r_CONFIG_REGISTER\(1),
	datad => \INST_GPIO_register|r_CONFIG_REGISTER\(0),
	combout => \INST_GPIO_register|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y21_N16
\INST_GPIO_register|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux0~3_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|Mux0~2_combout\ & ((\INST_GPIO_register|r_CONFIG_REGISTER\(3)))) # (!\INST_GPIO_register|Mux0~2_combout\ & 
-- (\INST_GPIO_register|r_CONFIG_REGISTER\(2))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|r_CONFIG_REGISTER\(2),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|r_CONFIG_REGISTER\(3),
	datad => \INST_GPIO_register|Mux0~2_combout\,
	combout => \INST_GPIO_register|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y21_N18
\INST_GPIO_register|o_GPIO_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|o_GPIO_data[0]~0_combout\ = (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\ & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (!\INST_GPIO_register|Mux0~1_combout\)) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((!\INST_GPIO_register|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\,
	datab => \INST_GPIO_register|Mux0~1_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datad => \INST_GPIO_register|Mux0~3_combout\,
	combout => \INST_GPIO_register|o_GPIO_data[0]~0_combout\);

-- Location: FF_X24_Y21_N15
\INST_GPIO_register|o_GPIO_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux5~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(3));

-- Location: LCCOMB_X24_Y21_N30
\INST_cpu_core|INST_MEMORY_CONTROL|Mux86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux86~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (((\INST_GPIO_register|o_GPIO_data\(3) & !\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(3) & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(3),
	datac => \INST_GPIO_register|o_GPIO_data\(3),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux86~0_combout\);

-- Location: FF_X24_Y21_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux86~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(3));

-- Location: LCCOMB_X20_Y21_N10
\INST_cpu_core|INST_ALU|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~7_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- \INST_cpu_core|INST_ALU|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_ALU|Mux4~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~7_combout\);

-- Location: LCCOMB_X20_Y21_N20
\INST_cpu_core|INST_ALU|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~8_combout\ = (\INST_cpu_core|INST_ALU|Mux4~7_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux4~7_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~8_combout\);

-- Location: LCCOMB_X20_Y21_N30
\INST_cpu_core|INST_ALU|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~9_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|Mux4~8_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ ((!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_cpu_core|INST_ALU|Mux4~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~9_combout\);

-- Location: LCCOMB_X20_Y21_N26
\INST_cpu_core|INST_ALU|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~10_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_cpu_core|INST_ALU|Add0~17_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & 
-- (\INST_cpu_core|INST_ALU|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_ALU|Add1~6_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datad => \INST_cpu_core|INST_ALU|Add0~17_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~10_combout\);

-- Location: LCCOMB_X19_Y23_N30
\INST_cpu_core|INST_ALU|ShiftLeft0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~23_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~14_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X20_Y21_N12
\INST_cpu_core|INST_ALU|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)) # (\INST_cpu_core|INST_ALU|ShiftLeft0~23_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Mux4~10_combout\ & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux4~10_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~23_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~11_combout\);

-- Location: LCCOMB_X20_Y21_N22
\INST_cpu_core|INST_ALU|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~12_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # 
-- (!\INST_cpu_core|INST_ALU|Mux4~11_combout\))) # (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & !\INST_cpu_core|INST_ALU|Mux4~11_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux4~11_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~12_combout\);

-- Location: LCCOMB_X20_Y24_N16
\INST_cpu_core|INST_ALU|ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~12_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~12_combout\);

-- Location: LCCOMB_X20_Y24_N18
\INST_cpu_core|INST_ALU|ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~13_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_ALU|ShiftRight0~12_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~1_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftRight0~12_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~13_combout\);

-- Location: LCCOMB_X20_Y24_N14
\INST_cpu_core|INST_ALU|ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~11_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~11_combout\);

-- Location: LCCOMB_X20_Y24_N20
\INST_cpu_core|INST_ALU|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~13_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Mux4~19_combout\ & ((\INST_cpu_core|INST_ALU|ShiftRight0~13_combout\) # (\INST_cpu_core|INST_ALU|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~13_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftRight0~11_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~13_combout\);

-- Location: LCCOMB_X20_Y21_N8
\INST_cpu_core|INST_ALU|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~14_combout\ = (\INST_cpu_core|INST_ALU|Mux4~13_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3) $ 
-- (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux4~13_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Mux4~14_combout\);

-- Location: LCCOMB_X20_Y21_N2
\INST_cpu_core|INST_ALU|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~15_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|Mux4~14_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_ALU|Add0~17_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add0~17_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_ALU|Mux4~14_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~15_combout\);

-- Location: LCCOMB_X20_Y21_N28
\INST_cpu_core|INST_ALU|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~16_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux4~12_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux4~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_ALU|Mux4~12_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Mux4~15_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~16_combout\);

-- Location: LCCOMB_X21_Y21_N26
\INST_cpu_core|INST_ALU|Mux4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~20_combout\ = (\INST_cpu_core|INST_ALU|Mux4~17_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	datad => \INST_cpu_core|INST_ALU|Mux4~17_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~20_combout\);

-- Location: LCCOMB_X20_Y21_N14
\INST_cpu_core|INST_ALU|Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux4~18_combout\ = (\INST_cpu_core|INST_ALU|Mux4~16_combout\ & (((\INST_cpu_core|INST_ALU|Mux4~20_combout\) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))))) # (!\INST_cpu_core|INST_ALU|Mux4~16_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux4~9_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux4~9_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux4~16_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_cpu_core|INST_ALU|Mux4~20_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux4~18_combout\);

-- Location: LCCOMB_X21_Y23_N22
\INST_cpu_core|INST_ALU|r_ALU_Result[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[3]~8_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(3)))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux4~18_combout\)))) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux4~18_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(3),
	datad => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[3]~8_combout\);

-- Location: FF_X21_Y23_N23
\INST_cpu_core|INST_ALU|r_ALU_Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(3));

-- Location: LCCOMB_X24_Y20_N2
\INST_cpu_core|INST_data_bus|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux12~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(3))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- ((\INST_cpu_core|INST_ALU|r_ALU_Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(3),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result\(3),
	combout => \INST_cpu_core|INST_data_bus|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\INST_cpu_core|INST_data_bus|o_REGISTER[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(3) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(3)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_data_bus|Mux12~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	datad => \INST_cpu_core|INST_data_bus|o_REGISTER\(3),
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(3));

-- Location: LCCOMB_X24_Y22_N16
\INST_cpu_core|INST_GPR|r_REGISTER~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~29_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(15))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(16) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(16) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(15),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(16),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~29_combout\);

-- Location: FF_X24_Y22_N17
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~29_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(2));

-- Location: LCCOMB_X21_Y21_N16
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(2),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\);

-- Location: LCCOMB_X20_Y25_N12
\INST_cpu_core|INST_ALU|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux7~11_combout\);

-- Location: LCCOMB_X20_Y25_N30
\INST_cpu_core|INST_ALU|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~3_combout\ = (\INST_cpu_core|INST_ALU|Mux7~11_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_cpu_core|INST_ALU|Add0~13_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) 
-- & (\INST_cpu_core|INST_ALU|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_cpu_core|INST_ALU|Add1~4_combout\,
	datac => \INST_cpu_core|INST_ALU|Add0~13_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux7~11_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X20_Y25_N24
\INST_cpu_core|INST_ALU|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~4_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)) # (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux5~4_combout\);

-- Location: LCCOMB_X20_Y22_N22
\INST_cpu_core|INST_ALU|ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~9_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~9_combout\);

-- Location: LCCOMB_X20_Y22_N28
\INST_cpu_core|INST_ALU|ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~8_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~8_combout\);

-- Location: LCCOMB_X20_Y22_N24
\INST_cpu_core|INST_ALU|ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~10_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_cpu_core|INST_ALU|ShiftRight0~7_combout\)) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & 
-- (((\INST_cpu_core|INST_ALU|ShiftRight0~9_combout\) # (\INST_cpu_core|INST_ALU|ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~7_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftRight0~9_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftRight0~8_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~10_combout\);

-- Location: LCCOMB_X20_Y25_N10
\INST_cpu_core|INST_ALU|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~5_combout\ = (\INST_cpu_core|INST_ALU|Mux5~4_combout\) # ((\INST_cpu_core|INST_ALU|ShiftRight0~10_combout\ & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & \INST_cpu_core|INST_ALU|Mux4~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux5~4_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~10_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux5~5_combout\);

-- Location: LCCOMB_X20_Y25_N28
\INST_cpu_core|INST_ALU|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~6_combout\ = (\INST_cpu_core|INST_ALU|Mux5~3_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & \INST_cpu_core|INST_ALU|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux5~3_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_ALU|Mux5~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y23_N4
\INST_cpu_core|INST_ALU|ShiftLeft0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~22_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~11_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X20_Y25_N18
\INST_cpu_core|INST_ALU|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|ShiftLeft0~22_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (((\INST_cpu_core|INST_ALU|Add0~13_combout\ & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~22_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_ALU|Add0~13_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y25_N4
\INST_cpu_core|INST_ALU|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & (\INST_cpu_core|INST_ALU|Mux5~1_combout\ $ (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\))) # 
-- (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) & (!\INST_cpu_core|INST_ALU|Mux5~1_combout\ & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_cpu_core|INST_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_ALU|Mux5~1_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y25_N6
\INST_cpu_core|INST_ALU|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~7_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Mux5~2_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux5~6_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|Mux5~2_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Mux5~7_combout\);

-- Location: LCCOMB_X20_Y25_N8
\INST_cpu_core|INST_ALU|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~8_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)) # (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux5~8_combout\);

-- Location: LCCOMB_X20_Y25_N14
\INST_cpu_core|INST_ALU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2) $ (((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y25_N2
\INST_cpu_core|INST_ALU|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux5~9_combout\ = (\INST_cpu_core|INST_ALU|Mux5~7_combout\ & (((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))) # (!\INST_cpu_core|INST_ALU|Mux5~8_combout\))) # (!\INST_cpu_core|INST_ALU|Mux5~7_combout\ & 
-- (((\INST_cpu_core|INST_ALU|Mux5~0_combout\ & \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux5~7_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux5~8_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux5~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_cpu_core|INST_ALU|Mux5~9_combout\);

-- Location: LCCOMB_X21_Y23_N4
\INST_cpu_core|INST_ALU|r_ALU_Result[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[2]~7_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(2)))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux5~9_combout\)))) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux5~9_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(2),
	datad => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[2]~7_combout\);

-- Location: FF_X21_Y23_N5
\INST_cpu_core|INST_ALU|r_ALU_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(2));

-- Location: LCCOMB_X24_Y19_N10
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X24_Y19_N11
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(34));

-- Location: FF_X24_Y20_N29
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(2),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(2));

-- Location: M9K_X25_Y17_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y16_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N8
\INST_cpu_core|INST_DATA_RAM|MEMORY~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~45_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~45_combout\);

-- Location: LCCOMB_X24_Y19_N6
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(2),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X24_Y19_N7
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(33));

-- Location: LCCOMB_X24_Y19_N20
\INST_cpu_core|INST_DATA_RAM|MEMORY~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~46_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(34) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(33)))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY~45_combout\)))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(34) & (((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(34),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~45_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(33),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~46_combout\);

-- Location: FF_X24_Y19_N21
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~46_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(2));

-- Location: IOIBUF_X23_Y29_N8
\io_GPIO_PIN0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(2),
	o => \io_GPIO_PIN0[2]~input_o\);

-- Location: FF_X29_Y20_N13
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(2));

-- Location: IOIBUF_X41_Y22_N15
\io_GPIO_PIN1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(2),
	o => \io_GPIO_PIN1[2]~input_o\);

-- Location: LCCOMB_X29_Y20_N10
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[2]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X29_Y20_N11
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(2));

-- Location: LCCOMB_X29_Y20_N12
\INST_GPIO_register|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux6~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)) # ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(2))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(2),
	datad => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(2),
	combout => \INST_GPIO_register|Mux6~2_combout\);

-- Location: IOIBUF_X41_Y21_N15
\io_GPIO_PIN3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(2),
	o => \io_GPIO_PIN3[2]~input_o\);

-- Location: FF_X29_Y20_N23
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(2));

-- Location: IOIBUF_X41_Y20_N1
\io_GPIO_PIN2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(2),
	o => \io_GPIO_PIN2[2]~input_o\);

-- Location: LCCOMB_X29_Y20_N0
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN2[2]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X29_Y20_N1
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(2));

-- Location: LCCOMB_X29_Y20_N22
\INST_GPIO_register|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux6~3_combout\ = (\INST_GPIO_register|Mux6~2_combout\ & (((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(2))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))) # (!\INST_GPIO_register|Mux6~2_combout\ & 
-- (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux6~2_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(2),
	datad => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(2),
	combout => \INST_GPIO_register|Mux6~3_combout\);

-- Location: IOIBUF_X41_Y24_N15
\io_GPIO_PIN4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(2),
	o => \io_GPIO_PIN4[2]~input_o\);

-- Location: FF_X29_Y20_N21
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(2));

-- Location: IOIBUF_X41_Y23_N22
\io_GPIO_PIN6[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(2),
	o => \io_GPIO_PIN6[2]~input_o\);

-- Location: LCCOMB_X29_Y20_N18
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN6[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[2]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X29_Y20_N19
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(2));

-- Location: LCCOMB_X29_Y20_N20
\INST_GPIO_register|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux6~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(2)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(2),
	datad => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(2),
	combout => \INST_GPIO_register|Mux6~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\io_GPIO_PIN7[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(2),
	o => \io_GPIO_PIN7[2]~input_o\);

-- Location: FF_X29_Y20_N31
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(2));

-- Location: IOIBUF_X41_Y20_N15
\io_GPIO_PIN5[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(2),
	o => \io_GPIO_PIN5[2]~input_o\);

-- Location: LCCOMB_X29_Y20_N24
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN5[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN5[2]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X29_Y20_N25
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(2));

-- Location: LCCOMB_X29_Y20_N30
\INST_GPIO_register|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux6~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|Mux6~0_combout\ & (\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(2))) # (!\INST_GPIO_register|Mux6~0_combout\ & 
-- ((\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(2)))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_GPIO_register|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_GPIO_register|Mux6~0_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(2),
	datad => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(2),
	combout => \INST_GPIO_register|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y21_N12
\INST_GPIO_register|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux6~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux6~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_GPIO_register|Mux6~3_combout\,
	datad => \INST_GPIO_register|Mux6~1_combout\,
	combout => \INST_GPIO_register|Mux6~4_combout\);

-- Location: FF_X24_Y21_N13
\INST_GPIO_register|o_GPIO_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux6~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(2));

-- Location: LCCOMB_X24_Y21_N4
\INST_cpu_core|INST_MEMORY_CONTROL|Mux87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux87~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(2) & (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & \INST_GPIO_register|o_GPIO_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_GPIO_register|o_GPIO_data\(2),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux87~0_combout\);

-- Location: FF_X24_Y21_N5
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux87~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(2));

-- Location: LCCOMB_X24_Y20_N24
\INST_cpu_core|INST_data_bus|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux11~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(2)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(2),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(2),
	combout => \INST_cpu_core|INST_data_bus|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\INST_cpu_core|INST_data_bus|o_REGISTER[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(2) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|o_REGISTER\(2))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|o_REGISTER\(2),
	datab => \INST_cpu_core|INST_data_bus|Mux11~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(2));

-- Location: LCCOMB_X24_Y22_N26
\INST_cpu_core|INST_GPR|r_REGISTER~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~24_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(14) & ((\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(13))) # 
-- (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(14) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(13),
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(14),
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\,
	datad => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~24_combout\);

-- Location: FF_X24_Y22_N27
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~24_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1));

-- Location: LCCOMB_X21_Y25_N10
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\);

-- Location: LCCOMB_X21_Y25_N12
\INST_cpu_core|INST_ALU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) $ (!\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y25_N4
\INST_cpu_core|INST_ALU|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((\INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\) # (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_ALU|Add0~9_combout\ & ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_ALU|Add0~9_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result~4_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_cpu_core|INST_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y23_N14
\INST_cpu_core|INST_ALU|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~9_combout\ = (\INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & 
-- !\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~8_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X21_Y25_N0
\INST_cpu_core|INST_ALU|r_ALU_Result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~5_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~5_combout\);

-- Location: LCCOMB_X21_Y25_N14
\INST_cpu_core|INST_ALU|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux6~1_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_Result~5_combout\))) # (!\INST_cpu_core|INST_ALU|Mux6~1_combout\ & 
-- (\INST_cpu_core|INST_ALU|ShiftLeft0~9_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_ALU|Mux6~1_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft0~9_combout\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y24_N4
\INST_cpu_core|INST_ALU|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~4_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|Mux6~4_combout\);

-- Location: LCCOMB_X20_Y24_N6
\INST_cpu_core|INST_ALU|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~5_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4))))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_cpu_core|INST_ALU|Mux6~5_combout\);

-- Location: LCCOMB_X20_Y24_N0
\INST_cpu_core|INST_ALU|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~6_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & ((\INST_cpu_core|INST_ALU|Mux6~4_combout\) # ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- \INST_cpu_core|INST_ALU|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux6~4_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux6~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~6_combout\);

-- Location: LCCOMB_X20_Y24_N12
\INST_cpu_core|INST_ALU|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~7_combout\ = (\INST_cpu_core|INST_ALU|Mux6~6_combout\) # ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|ShiftRight0~6_combout\ & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_ALU|Mux6~6_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftRight0~6_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~7_combout\);

-- Location: LCCOMB_X21_Y25_N24
\INST_cpu_core|INST_ALU|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~3_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\) # (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X21_Y25_N18
\INST_cpu_core|INST_ALU|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_ALU|Mux6~3_combout\) # ((\INST_cpu_core|INST_ALU|Mux6~7_combout\ & \INST_cpu_core|INST_ALU|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux6~7_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_ALU|Mux6~3_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~8_combout\);

-- Location: LCCOMB_X21_Y25_N28
\INST_cpu_core|INST_ALU|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~9_combout\ = (\INST_cpu_core|INST_ALU|Mux7~11_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_cpu_core|INST_ALU|Add0~9_combout\))) # (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) 
-- & (\INST_cpu_core|INST_ALU|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add1~2_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datac => \INST_cpu_core|INST_ALU|Add0~9_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux7~11_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~9_combout\);

-- Location: LCCOMB_X21_Y25_N6
\INST_cpu_core|INST_ALU|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~10_combout\ = (\INST_cpu_core|INST_ALU|Mux6~8_combout\) # (\INST_cpu_core|INST_ALU|Mux6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_ALU|Mux6~8_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux6~9_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~10_combout\);

-- Location: LCCOMB_X21_Y25_N8
\INST_cpu_core|INST_ALU|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~11_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3)) # ((\INST_cpu_core|INST_ALU|Mux6~2_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|Mux6~2_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux6~10_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~11_combout\);

-- Location: LCCOMB_X21_Y25_N2
\INST_cpu_core|INST_ALU|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~12_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & 
-- !\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|Mux6~12_combout\);

-- Location: LCCOMB_X21_Y25_N20
\INST_cpu_core|INST_ALU|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux6~13_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux6~11_combout\ & ((\INST_cpu_core|INST_ALU|Mux6~12_combout\))) # (!\INST_cpu_core|INST_ALU|Mux6~11_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux6~0_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_ALU|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux6~0_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|Mux6~11_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux6~12_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux6~13_combout\);

-- Location: LCCOMB_X21_Y23_N18
\INST_cpu_core|INST_ALU|r_ALU_Result[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[1]~6_combout\ = (\INST_cpu_core|INST_ALU|Mux7~10_combout\ & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(1))))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_control_unit|r_state\(3) & 
-- (\INST_cpu_core|INST_ALU|Mux6~13_combout\)) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux6~13_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(1),
	datad => \INST_cpu_core|INST_control_unit|r_state\(3),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[1]~6_combout\);

-- Location: FF_X21_Y23_N19
\INST_cpu_core|INST_ALU|r_ALU_Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(1));

-- Location: IOIBUF_X28_Y29_N8
\io_GPIO_PIN1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(1),
	o => \io_GPIO_PIN1[1]~input_o\);

-- Location: FF_X28_Y25_N11
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN1[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(1));

-- Location: IOIBUF_X28_Y29_N22
\io_GPIO_PIN0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(1),
	o => \io_GPIO_PIN0[1]~input_o\);

-- Location: FF_X28_Y25_N29
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(1));

-- Location: LCCOMB_X28_Y25_N28
\INST_GPIO_register|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux7~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(1)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(1) & !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Mux7~2_combout\);

-- Location: IOIBUF_X37_Y29_N15
\io_GPIO_PIN3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(1),
	o => \io_GPIO_PIN3[1]~input_o\);

-- Location: FF_X28_Y25_N7
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(1));

-- Location: IOIBUF_X28_Y29_N15
\io_GPIO_PIN2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(1),
	o => \io_GPIO_PIN2[1]~input_o\);

-- Location: LCCOMB_X28_Y25_N0
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]~feeder_combout\ = \io_GPIO_PIN2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN2[1]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]~feeder_combout\);

-- Location: FF_X28_Y25_N1
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(1));

-- Location: LCCOMB_X28_Y25_N6
\INST_GPIO_register|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux7~3_combout\ = (\INST_GPIO_register|Mux7~2_combout\ & (((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(1))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))) # (!\INST_GPIO_register|Mux7~2_combout\ & 
-- (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux7~2_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(1),
	datad => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(1),
	combout => \INST_GPIO_register|Mux7~3_combout\);

-- Location: IOIBUF_X41_Y24_N1
\io_GPIO_PIN5[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(1),
	o => \io_GPIO_PIN5[1]~input_o\);

-- Location: FF_X28_Y25_N25
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN5[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(1));

-- Location: IOIBUF_X35_Y29_N8
\io_GPIO_PIN6[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(1),
	o => \io_GPIO_PIN6[1]~input_o\);

-- Location: LCCOMB_X28_Y25_N2
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]~feeder_combout\ = \io_GPIO_PIN6[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[1]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]~feeder_combout\);

-- Location: FF_X28_Y25_N3
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(1));

-- Location: IOIBUF_X39_Y29_N1
\io_GPIO_PIN4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(1),
	o => \io_GPIO_PIN4[1]~input_o\);

-- Location: FF_X28_Y25_N5
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(1));

-- Location: LCCOMB_X28_Y25_N4
\INST_GPIO_register|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux7~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(1)) # ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (((\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(1) & !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(1),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux7~0_combout\);

-- Location: IOIBUF_X28_Y0_N8
\io_GPIO_PIN7[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(1),
	o => \io_GPIO_PIN7[1]~input_o\);

-- Location: FF_X28_Y25_N15
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(1));

-- Location: LCCOMB_X28_Y25_N14
\INST_GPIO_register|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux7~1_combout\ = (\INST_GPIO_register|Mux7~0_combout\ & (((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(1)) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))) # (!\INST_GPIO_register|Mux7~0_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(1),
	datab => \INST_GPIO_register|Mux7~0_combout\,
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y21_N2
\INST_GPIO_register|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux7~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux7~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_GPIO_register|Mux7~3_combout\,
	datad => \INST_GPIO_register|Mux7~1_combout\,
	combout => \INST_GPIO_register|Mux7~4_combout\);

-- Location: FF_X24_Y21_N3
\INST_GPIO_register|o_GPIO_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux7~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(1));

-- Location: FF_X24_Y20_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(1),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(1));

-- Location: LCCOMB_X24_Y20_N4
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(1),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X24_Y20_N5
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(31));

-- Location: LCCOMB_X21_Y19_N18
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X21_Y19_N19
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(32));

-- Location: M9K_X13_Y16_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y20_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N24
\INST_cpu_core|INST_DATA_RAM|MEMORY~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~35_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~35_combout\);

-- Location: LCCOMB_X21_Y19_N16
\INST_cpu_core|INST_DATA_RAM|MEMORY~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~36_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(32) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(31))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~35_combout\))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(32) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(31),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(32),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~35_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~36_combout\);

-- Location: FF_X21_Y19_N17
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~36_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(1));

-- Location: LCCOMB_X24_Y21_N18
\INST_cpu_core|INST_MEMORY_CONTROL|Mux88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux88~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (\INST_GPIO_register|o_GPIO_data\(1) & ((!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & (((\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(1) & \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datab => \INST_GPIO_register|o_GPIO_data\(1),
	datac => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux88~0_combout\);

-- Location: FF_X24_Y21_N19
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux88~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(1));

-- Location: LCCOMB_X24_Y20_N26
\INST_cpu_core|INST_data_bus|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux10~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(1)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(1),
	combout => \INST_cpu_core|INST_data_bus|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y20_N8
\INST_cpu_core|INST_data_bus|o_REGISTER[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_REGISTER\(1) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_REGISTER\(1)))) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux10~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_REGISTER\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_REGISTER\(1));

-- Location: FF_X23_Y23_N21
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_data_bus|o_REGISTER\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(25));

-- Location: LCCOMB_X24_Y22_N10
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X24_Y22_N11
\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(26));

-- Location: LCCOMB_X24_Y22_N20
\INST_cpu_core|INST_GPR|r_REGISTER~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_GPR|r_REGISTER~25_combout\ = (\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & (((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(25))))) # (!\INST_cpu_core|INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(26) & (\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\)) # (!\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(26) & ((\INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\,
	datac => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(25),
	datad => \INST_cpu_core|INST_GPR|r_REGISTER_rtl_1_bypass\(26),
	combout => \INST_cpu_core|INST_GPR|r_REGISTER~25_combout\);

-- Location: FF_X24_Y22_N21
\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_GPR|r_REGISTER~25_combout\,
	ena => \INST_cpu_core|r_register_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7));

-- Location: LCCOMB_X22_Y25_N2
\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10)))) # (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & 
-- (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(7),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(10),
	combout => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\);

-- Location: LCCOMB_X20_Y22_N16
\INST_cpu_core|INST_ALU|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Add1~16_combout\ = !\INST_cpu_core|INST_ALU|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \INST_cpu_core|INST_ALU|Add1~15\,
	combout => \INST_cpu_core|INST_ALU|Add1~16_combout\);

-- Location: LCCOMB_X19_Y23_N6
\INST_cpu_core|INST_ALU|ShiftLeft1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft1~2_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (((!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7))))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	combout => \INST_cpu_core|INST_ALU|ShiftLeft1~2_combout\);

-- Location: LCCOMB_X19_Y23_N8
\INST_cpu_core|INST_ALU|ShiftLeft1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft1~3_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_cpu_core|INST_ALU|ShiftLeft1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftLeft1~1_combout\,
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft1~2_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft1~3_combout\);

-- Location: LCCOMB_X19_Y23_N26
\INST_cpu_core|INST_ALU|ShiftLeft1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft1~4_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (\INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (((\INST_cpu_core|INST_ALU|ShiftLeft1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftLeft0~16_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft1~3_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft1~4_combout\);

-- Location: LCCOMB_X20_Y25_N22
\INST_cpu_core|INST_ALU|tmp[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|tmp[8]~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (((\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & \INST_cpu_core|INST_ALU|ShiftLeft1~4_combout\)))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_cpu_core|INST_ALU|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add1~16_combout\,
	datab => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftLeft1~4_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|tmp[8]~1_combout\);

-- Location: LCCOMB_X20_Y25_N20
\INST_cpu_core|INST_ALU|tmp[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|tmp[8]~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_ALU|tmp\(8))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_ALU|Mux7~11_combout\ & 
-- (\INST_cpu_core|INST_ALU|tmp[8]~1_combout\)) # (!\INST_cpu_core|INST_ALU|Mux7~11_combout\ & ((\INST_cpu_core|INST_ALU|tmp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|tmp[8]~1_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|tmp\(8),
	datad => \INST_cpu_core|INST_ALU|Mux7~11_combout\,
	combout => \INST_cpu_core|INST_ALU|tmp[8]~2_combout\);

-- Location: FF_X20_Y25_N21
\INST_cpu_core|INST_ALU|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|tmp[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|tmp\(8));

-- Location: LCCOMB_X20_Y25_N0
\INST_cpu_core|INST_ALU|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux9~1_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (\INST_cpu_core|INST_ALU|tmp\(8) & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_ALU|tmp\(8),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux9~1_combout\);

-- Location: LCCOMB_X20_Y26_N16
\INST_cpu_core|INST_ALU|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux9~2_combout\ = (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1)) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_cpu_core|INST_ALU|Mux9~2_combout\);

-- Location: FF_X20_Y25_N1
\INST_cpu_core|INST_ALU|r_ALU_carry_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Mux9~1_combout\,
	sclr => \INST_cpu_core|INST_instruction_decoder|ALT_INV_o_OPCODE\(0),
	ena => \INST_cpu_core|INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\);

-- Location: LCCOMB_X20_Y26_N14
\INST_cpu_core|INST_ALU|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux10~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) $ 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) $ 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_cpu_core|INST_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X20_Y23_N6
\INST_cpu_core|INST_ALU|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux10~1_combout\ = (\INST_cpu_core|INST_ALU|Mux10~0_combout\ & ((\INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\) # (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) $ (\INST_cpu_core|INST_ALU|r_ALU_Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	datad => \INST_cpu_core|INST_ALU|Mux10~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux10~1_combout\);

-- Location: LCCOMB_X20_Y23_N0
\INST_cpu_core|INST_ALU|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux10~2_combout\ = (\INST_cpu_core|INST_ALU|Mux10~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7) $ (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) $ (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux10~1_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[7]~2_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux10~2_combout\);

-- Location: FF_X20_Y23_N1
\INST_cpu_core|INST_ALU|r_ALU_overflow_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Mux10~2_combout\,
	sclr => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_cpu_core|INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\);

-- Location: LCCOMB_X19_Y26_N18
\INST_cpu_core|INST_branch_control|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|Mux10~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (\INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\ & (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (((\INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\) # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_carry_flag~q\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_cpu_core|INST_ALU|r_ALU_overflow_flag~q\,
	combout => \INST_cpu_core|INST_branch_control|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y23_N14
\INST_cpu_core|INST_ALU|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Equal3~1_combout\ = (!\INST_cpu_core|INST_ALU|r_ALU_Result\(5) & (!\INST_cpu_core|INST_ALU|r_ALU_Result\(6) & (!\INST_cpu_core|INST_ALU|r_ALU_Result\(7) & !\INST_cpu_core|INST_ALU|r_ALU_Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result\(5),
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result\(6),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result\(4),
	combout => \INST_cpu_core|INST_ALU|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y23_N20
\INST_cpu_core|INST_ALU|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Equal3~0_combout\ = (!\INST_cpu_core|INST_ALU|r_ALU_Result\(0) & (!\INST_cpu_core|INST_ALU|r_ALU_Result\(1) & (!\INST_cpu_core|INST_ALU|r_ALU_Result\(3) & !\INST_cpu_core|INST_ALU|r_ALU_Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result\(0),
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result\(1),
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(3),
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result\(2),
	combout => \INST_cpu_core|INST_ALU|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y23_N24
\INST_cpu_core|INST_ALU|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Equal3~2_combout\ = (\INST_cpu_core|INST_ALU|Equal3~1_combout\ & \INST_cpu_core|INST_ALU|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Equal3~1_combout\,
	datac => \INST_cpu_core|INST_ALU|Equal3~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Equal3~2_combout\);

-- Location: FF_X17_Y23_N25
\INST_cpu_core|INST_ALU|r_ALU_zero_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_zero_flag~q\);

-- Location: FF_X20_Y26_N19
\INST_cpu_core|INST_instruction_decoder|o_Signed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(1),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Signed~q\);

-- Location: LCCOMB_X20_Y26_N18
\INST_cpu_core|INST_ALU|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux11~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Signed~q\ & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(7))))) # (!\INST_cpu_core|INST_instruction_decoder|o_Signed~q\ & (\INST_cpu_core|INST_ALU|LessThan1~14_combout\ & 
-- (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|LessThan1~14_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Signed~q\,
	datad => \INST_cpu_core|INST_ALU|r_ALU_Result\(7),
	combout => \INST_cpu_core|INST_ALU|Mux11~0_combout\);

-- Location: LCCOMB_X20_Y23_N10
\INST_cpu_core|INST_ALU|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux11~1_combout\ = (\INST_cpu_core|INST_ALU|Mux10~0_combout\ & \INST_cpu_core|INST_ALU|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux10~0_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux11~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux11~1_combout\);

-- Location: FF_X20_Y23_N11
\INST_cpu_core|INST_ALU|r_ALU_negative_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_cpu_core|INST_control_unit|ALT_INV_r_state[3]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|Mux11~1_combout\,
	sclr => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_cpu_core|INST_ALU|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_negative_flag~q\);

-- Location: LCCOMB_X19_Y26_N12
\INST_cpu_core|INST_branch_control|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|Mux10~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (((\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1)) # (\INST_cpu_core|INST_ALU|r_ALU_negative_flag~q\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (\INST_cpu_core|INST_ALU|r_ALU_zero_flag~q\ & (\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_zero_flag~q\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_cpu_core|INST_ALU|r_ALU_negative_flag~q\,
	combout => \INST_cpu_core|INST_branch_control|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y26_N8
\INST_cpu_core|INST_branch_control|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|Mux10~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_cpu_core|INST_branch_control|Mux10~0_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0) & 
-- ((\INST_cpu_core|INST_branch_control|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datab => \INST_cpu_core|INST_branch_control|Mux10~0_combout\,
	datad => \INST_cpu_core|INST_branch_control|Mux10~1_combout\,
	combout => \INST_cpu_core|INST_branch_control|Mux10~2_combout\);

-- Location: FF_X19_Y26_N9
\INST_cpu_core|INST_branch_control|o_PC_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|Mux10~2_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\);

-- Location: FF_X16_Y26_N17
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~10_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(5));

-- Location: LCCOMB_X19_Y26_N20
\INST_cpu_core|INST_branch_control|o_ADDRESS~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~7_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(5),
	datad => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(6),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~7_combout\);

-- Location: FF_X19_Y26_N21
\INST_cpu_core|INST_branch_control|o_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~7_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(5));

-- Location: LCCOMB_X15_Y26_N10
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~6_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(5)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	datab => \INST_cpu_core|INST_Program_counter|Add0~10_combout\,
	datac => \INST_cpu_core|INST_branch_control|o_ADDRESS\(5),
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~6_combout\);

-- Location: FF_X15_Y26_N11
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~6_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(5));

-- Location: LCCOMB_X20_Y26_N10
\INST_cpu_core|INST_instruction_decoder|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux4~2_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(29) & (((\INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\)) # (!\INST_cpu_core|INST_InstrucReg|r_register\(28)))) # 
-- (!\INST_cpu_core|INST_InstrucReg|r_register\(29) & (\INST_cpu_core|INST_InstrucReg|r_register\(28) & ((\INST_cpu_core|INST_InstrucReg|r_register\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datac => \INST_cpu_core|INST_instruction_decoder|Mux3~0_combout\,
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(1),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux4~2_combout\);

-- Location: LCCOMB_X20_Y26_N28
\INST_cpu_core|INST_instruction_decoder|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux4~3_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(31) & (\INST_cpu_core|INST_InstrucReg|r_register\(30) & \INST_cpu_core|INST_instruction_decoder|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	datad => \INST_cpu_core|INST_instruction_decoder|Mux4~2_combout\,
	combout => \INST_cpu_core|INST_instruction_decoder|Mux4~3_combout\);

-- Location: FF_X20_Y26_N29
\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux4~3_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1));

-- Location: LCCOMB_X19_Y26_N22
\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ = ((\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0)) # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\);

-- Location: FF_X16_Y26_N15
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~8_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(4));

-- Location: LCCOMB_X19_Y26_N26
\INST_cpu_core|INST_branch_control|o_ADDRESS~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~6_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- ((\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(5),
	datad => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(4),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~6_combout\);

-- Location: FF_X19_Y26_N27
\INST_cpu_core|INST_branch_control|o_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~6_combout\,
	asdata => VCC,
	sload => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(4));

-- Location: LCCOMB_X16_Y26_N2
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~5_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & (\INST_cpu_core|INST_branch_control|o_ADDRESS\(4))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS\(4),
	datac => \INST_cpu_core|INST_Program_counter|Add0~8_combout\,
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~5_combout\);

-- Location: FF_X16_Y26_N3
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~5_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(4));

-- Location: FF_X21_Y25_N1
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(6),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4));

-- Location: LCCOMB_X17_Y26_N22
\INST_cpu_core|INST_branch_control|o_ADDRESS~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~5_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(3),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(4),
	datad => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~5_combout\);

-- Location: FF_X17_Y26_N23
\INST_cpu_core|INST_branch_control|o_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~5_combout\,
	sclr => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(3));

-- Location: LCCOMB_X15_Y26_N24
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~4_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & (\INST_cpu_core|INST_branch_control|o_ADDRESS\(3))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_branch_control|o_ADDRESS\(3),
	datac => \INST_cpu_core|INST_Program_counter|Add0~6_combout\,
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~4_combout\);

-- Location: FF_X15_Y26_N25
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~4_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(3));

-- Location: FF_X23_Y22_N9
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(5),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3));

-- Location: FF_X16_Y26_N11
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~4_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(2));

-- Location: LCCOMB_X17_Y26_N28
\INST_cpu_core|INST_branch_control|o_ADDRESS~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~4_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- ((\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3),
	datab => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	datad => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(2),
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~4_combout\);

-- Location: FF_X17_Y26_N29
\INST_cpu_core|INST_branch_control|o_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~4_combout\,
	sclr => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(2));

-- Location: LCCOMB_X16_Y26_N4
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~3_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(2)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|Add0~4_combout\,
	datab => \INST_cpu_core|INST_branch_control|o_ADDRESS\(2),
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~3_combout\);

-- Location: FF_X16_Y26_N5
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~3_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(2));

-- Location: LCCOMB_X20_Y26_N24
\INST_cpu_core|INST_instruction_decoder|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\ = (\INST_cpu_core|INST_InstrucReg|r_register\(31) & \INST_cpu_core|INST_InstrucReg|r_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(30),
	combout => \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y26_N20
\INST_cpu_core|INST_instruction_decoder|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux5~0_combout\ = (!\INST_cpu_core|INST_InstrucReg|r_register\(29) & (\INST_cpu_core|INST_InstrucReg|r_register\(28) & (\INST_cpu_core|INST_InstrucReg|r_register\(0) & 
-- \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datac => \INST_cpu_core|INST_InstrucReg|r_register\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\,
	combout => \INST_cpu_core|INST_instruction_decoder|Mux5~0_combout\);

-- Location: FF_X20_Y26_N21
\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux5~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0));

-- Location: LCCOMB_X19_Y26_N14
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0_combout\ = (!\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\ & (((!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2)) # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1))) 
-- # (!\INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datab => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_cpu_core|INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	combout => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0_combout\);

-- Location: LCCOMB_X20_Y26_N6
\INST_cpu_core|INST_instruction_decoder|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|Mux6~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\ & ((\INST_cpu_core|INST_InstrucReg|r_register\(29) & (!\INST_cpu_core|INST_InstrucReg|r_register\(28))) # 
-- (!\INST_cpu_core|INST_InstrucReg|r_register\(29) & ((\INST_cpu_core|INST_InstrucReg|r_register\(28)) # (\INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_InstrucReg|r_register\(29),
	datab => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	datac => \INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\,
	datad => \INST_cpu_core|INST_instruction_decoder|Mux2~1_combout\,
	combout => \INST_cpu_core|INST_instruction_decoder|Mux6~0_combout\);

-- Location: FF_X20_Y26_N7
\INST_cpu_core|INST_instruction_decoder|o_SAVE_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|Mux6~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\);

-- Location: LCCOMB_X19_Y26_N0
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\ = ((\INST_cpu_core|INST_control_unit|r_state\(2) & \INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\)) # (!\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(2),
	datac => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_SAVE_PC~q\,
	combout => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\);

-- Location: FF_X16_Y26_N9
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~2_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(1));

-- Location: LCCOMB_X17_Y26_N2
\INST_cpu_core|INST_branch_control|o_ADDRESS~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~3_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2)))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- (\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(2),
	datad => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~3_combout\);

-- Location: FF_X17_Y26_N3
\INST_cpu_core|INST_branch_control|o_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~3_combout\,
	sclr => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(1));

-- Location: LCCOMB_X16_Y26_N26
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~2_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & (\INST_cpu_core|INST_branch_control|o_ADDRESS\(1))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- ((\INST_cpu_core|INST_Program_counter|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_branch_control|o_ADDRESS\(1),
	datac => \INST_cpu_core|INST_Program_counter|Add0~2_combout\,
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~2_combout\);

-- Location: FF_X16_Y26_N27
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~2_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(1));

-- Location: LCCOMB_X17_Y26_N8
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\ = \INST_cpu_core|INST_InstrucReg|r_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_InstrucReg|r_register\(3),
	combout => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\);

-- Location: FF_X17_Y26_N9
\INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM[1]~feeder_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1));

-- Location: FF_X16_Y26_N7
\INST_cpu_core|INST_branch_control|r_PC_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|Add0~0_combout\,
	ena => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(0));

-- Location: LCCOMB_X17_Y26_N24
\INST_cpu_core|INST_branch_control|o_ADDRESS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_branch_control|o_ADDRESS~1_combout\ = (\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1))) # (!\INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\ & 
-- ((\INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(1),
	datac => \INST_cpu_core|INST_branch_control|r_PC_ADDRESS\(0),
	datad => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~0_combout\,
	combout => \INST_cpu_core|INST_branch_control|o_ADDRESS~1_combout\);

-- Location: FF_X17_Y26_N25
\INST_cpu_core|INST_branch_control|o_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_branch_control|o_ADDRESS~1_combout\,
	sclr => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~q\,
	ena => \INST_cpu_core|INST_branch_control|o_ADDRESS[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_branch_control|o_ADDRESS\(0));

-- Location: LCCOMB_X16_Y26_N0
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~0_combout\ = (\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & ((\INST_cpu_core|INST_branch_control|o_ADDRESS\(0)))) # (!\INST_cpu_core|INST_branch_control|o_PC_LOAD~q\ & 
-- (\INST_cpu_core|INST_Program_counter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_Program_counter|Add0~0_combout\,
	datab => \INST_cpu_core|INST_branch_control|o_ADDRESS\(0),
	datad => \INST_cpu_core|INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~0_combout\);

-- Location: FF_X16_Y26_N1
\INST_cpu_core|INST_Program_counter|r_PROG_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT~0_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_Program_counter|r_PROG_COUNT\(0));

-- Location: FF_X20_Y26_N3
\INST_cpu_core|INST_instruction_decoder|o_OPCODE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(31),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3));

-- Location: LCCOMB_X20_Y26_N8
\INST_cpu_core|INST_control_unit|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|process_0~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & 
-- \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & !\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_cpu_core|INST_control_unit|process_0~1_combout\);

-- Location: LCCOMB_X14_Y26_N24
\INST_cpu_core|INST_control_unit|r_state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~11_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(3) & (!\INST_cpu_core|INST_control_unit|process_0~1_combout\ & (!\INST_cpu_core|INST_control_unit|r_state\(4)))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state\(3) & (((\INST_cpu_core|INST_control_unit|r_state\(4) & \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|process_0~1_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \INST_cpu_core|INST_control_unit|r_state\(4),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|r_MEM_state\(1),
	combout => \INST_cpu_core|INST_control_unit|r_state~11_combout\);

-- Location: LCCOMB_X11_Y26_N28
\INST_cpu_core|INST_control_unit|r_state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~12_combout\ = (\INST_cpu_core|INST_control_unit|r_state~11_combout\ & ((\INST_cpu_core|INST_control_unit|r_state~9_combout\) # ((\INST_cpu_core|INST_control_unit|r_state\(5) & \i_HALT~input_o\)))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state~11_combout\ & (((\INST_cpu_core|INST_control_unit|r_state\(5) & \i_HALT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state~11_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state~9_combout\,
	datac => \INST_cpu_core|INST_control_unit|r_state\(5),
	datad => \i_HALT~input_o\,
	combout => \INST_cpu_core|INST_control_unit|r_state~12_combout\);

-- Location: FF_X11_Y26_N29
\INST_cpu_core|INST_control_unit|r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_state~12_combout\,
	sclr => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(5));

-- Location: LCCOMB_X11_Y26_N12
\INST_cpu_core|INST_control_unit|r_state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~13_combout\ = (\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\ & ((\INST_cpu_core|INST_control_unit|r_state\(5) & ((\INST_cpu_core|INST_control_unit|r_state\(0)))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state\(5) & (\INST_cpu_core|INST_control_unit|process_0~0_combout\ & !\INST_cpu_core|INST_control_unit|r_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|process_0~0_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datac => \INST_cpu_core|INST_control_unit|r_state\(0),
	datad => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~13_combout\);

-- Location: LCCOMB_X11_Y26_N6
\INST_cpu_core|INST_control_unit|r_state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~14_combout\ = (\INST_cpu_core|INST_control_unit|r_state~5_combout\ & ((\INST_cpu_core|INST_control_unit|r_state~13_combout\) # ((\i_HALT~input_o\ & \INST_cpu_core|INST_control_unit|r_state\(6))))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state~5_combout\ & (\i_HALT~input_o\ & (\INST_cpu_core|INST_control_unit|r_state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state~5_combout\,
	datab => \i_HALT~input_o\,
	datac => \INST_cpu_core|INST_control_unit|r_state\(6),
	datad => \INST_cpu_core|INST_control_unit|r_state~13_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~14_combout\);

-- Location: FF_X11_Y26_N7
\INST_cpu_core|INST_control_unit|r_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_state~14_combout\,
	sclr => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(6));

-- Location: LCCOMB_X11_Y26_N10
\INST_cpu_core|INST_control_unit|r_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~5_combout\ = (!\INST_cpu_core|INST_control_unit|r_state\(2) & (!\INST_cpu_core|INST_control_unit|r_state\(1) & (!\INST_cpu_core|INST_control_unit|r_state\(6) & !\i_HALT~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(2),
	datab => \INST_cpu_core|INST_control_unit|r_state\(1),
	datac => \INST_cpu_core|INST_control_unit|r_state\(6),
	datad => \i_HALT~input_o\,
	combout => \INST_cpu_core|INST_control_unit|r_state~5_combout\);

-- Location: LCCOMB_X11_Y26_N14
\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\ = (\INST_cpu_core|INST_control_unit|r_state~5_combout\ & (!\INST_cpu_core|INST_control_unit|r_state\(5) & (!\INST_cpu_core|INST_control_unit|r_state\(0) & 
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state~5_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datac => \INST_cpu_core|INST_control_unit|r_state\(0),
	datad => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~0_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\);

-- Location: LCCOMB_X11_Y26_N22
\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3_combout\ = (!\i_RESET~input_o\ & \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RESET~input_o\,
	datac => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3_combout\);

-- Location: FF_X11_Y26_N25
\INST_cpu_core|INST_control_unit|r_INTERRUPT_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|process_0~0_combout\,
	ena => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\);

-- Location: LCCOMB_X11_Y26_N24
\INST_cpu_core|INST_control_unit|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|process_0~0_combout\ = (!\INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\ & \i_INTERRUPT_request~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_cpu_core|INST_control_unit|r_INTERRUPT_active~q\,
	datad => \i_INTERRUPT_request~input_o\,
	combout => \INST_cpu_core|INST_control_unit|process_0~0_combout\);

-- Location: LCCOMB_X11_Y26_N8
\INST_cpu_core|INST_control_unit|r_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~6_combout\ = (\INST_cpu_core|INST_control_unit|process_0~0_combout\ & (((\INST_cpu_core|INST_control_unit|r_state\(1) & \i_HALT~input_o\)))) # (!\INST_cpu_core|INST_control_unit|process_0~0_combout\ & 
-- ((\INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\) # ((\INST_cpu_core|INST_control_unit|r_state\(1) & \i_HALT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|process_0~0_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_INTERRUPT_PC_set~1_combout\,
	datac => \INST_cpu_core|INST_control_unit|r_state\(1),
	datad => \i_HALT~input_o\,
	combout => \INST_cpu_core|INST_control_unit|r_state~6_combout\);

-- Location: FF_X11_Y26_N9
\INST_cpu_core|INST_control_unit|r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_state~6_combout\,
	sclr => \i_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(1));

-- Location: LCCOMB_X14_Y26_N14
\INST_cpu_core|INST_control_unit|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|Mux7~1_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(1) & (!\INST_cpu_core|INST_control_unit|r_state\(2) & \INST_cpu_core|INST_control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_control_unit|r_state\(1),
	datac => \INST_cpu_core|INST_control_unit|r_state\(2),
	datad => \INST_cpu_core|INST_control_unit|Mux7~0_combout\,
	combout => \INST_cpu_core|INST_control_unit|Mux7~1_combout\);

-- Location: FF_X14_Y26_N15
\INST_cpu_core|INST_control_unit|r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|Mux7~1_combout\,
	sclr => \i_RESET~input_o\,
	ena => \INST_cpu_core|INST_control_unit|r_state[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(2));

-- Location: LCCOMB_X14_Y26_N10
\INST_cpu_core|INST_control_unit|r_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~2_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(0) & ((\i_HALT~input_o\) # ((!\INST_cpu_core|INST_control_unit|r_state\(3) & !\INST_cpu_core|INST_control_unit|r_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(0),
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \i_HALT~input_o\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(1),
	combout => \INST_cpu_core|INST_control_unit|r_state~2_combout\);

-- Location: LCCOMB_X11_Y26_N30
\INST_cpu_core|INST_control_unit|r_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~3_combout\ = (\INST_cpu_core|INST_control_unit|r_state\(2) & (((!\INST_cpu_core|INST_control_unit|r_state\(5) & !\INST_cpu_core|INST_control_unit|r_state\(4))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state~2_combout\))) # (!\INST_cpu_core|INST_control_unit|r_state\(2) & ((\INST_cpu_core|INST_control_unit|r_state\(5) & ((!\INST_cpu_core|INST_control_unit|r_state~2_combout\) # 
-- (!\INST_cpu_core|INST_control_unit|r_state\(4)))) # (!\INST_cpu_core|INST_control_unit|r_state\(5) & (\INST_cpu_core|INST_control_unit|r_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(2),
	datab => \INST_cpu_core|INST_control_unit|r_state\(5),
	datac => \INST_cpu_core|INST_control_unit|r_state\(4),
	datad => \INST_cpu_core|INST_control_unit|r_state~2_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~3_combout\);

-- Location: LCCOMB_X14_Y26_N0
\INST_cpu_core|INST_control_unit|r_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~1_combout\ = (\i_HALT~input_o\) # ((\INST_cpu_core|INST_control_unit|r_state\(0) & (\INST_cpu_core|INST_control_unit|r_state\(3) & \INST_cpu_core|INST_control_unit|r_state\(1))) # 
-- (!\INST_cpu_core|INST_control_unit|r_state\(0) & ((\INST_cpu_core|INST_control_unit|r_state\(3)) # (\INST_cpu_core|INST_control_unit|r_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state\(0),
	datab => \INST_cpu_core|INST_control_unit|r_state\(3),
	datac => \i_HALT~input_o\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(1),
	combout => \INST_cpu_core|INST_control_unit|r_state~1_combout\);

-- Location: LCCOMB_X11_Y26_N4
\INST_cpu_core|INST_control_unit|r_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~0_combout\ = (\i_RESET~input_o\) # ((!\i_HALT~input_o\ & \INST_cpu_core|INST_control_unit|r_state\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RESET~input_o\,
	datab => \i_HALT~input_o\,
	datad => \INST_cpu_core|INST_control_unit|r_state\(6),
	combout => \INST_cpu_core|INST_control_unit|r_state~0_combout\);

-- Location: LCCOMB_X11_Y26_N0
\INST_cpu_core|INST_control_unit|r_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_control_unit|r_state~4_combout\ = (!\INST_cpu_core|INST_control_unit|r_state~0_combout\ & (\INST_cpu_core|INST_control_unit|r_state~2_combout\ $ (((!\INST_cpu_core|INST_control_unit|r_state~3_combout\ & 
-- !\INST_cpu_core|INST_control_unit|r_state~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_control_unit|r_state~3_combout\,
	datab => \INST_cpu_core|INST_control_unit|r_state~1_combout\,
	datac => \INST_cpu_core|INST_control_unit|r_state~0_combout\,
	datad => \INST_cpu_core|INST_control_unit|r_state~2_combout\,
	combout => \INST_cpu_core|INST_control_unit|r_state~4_combout\);

-- Location: FF_X11_Y26_N1
\INST_cpu_core|INST_control_unit|r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_control_unit|r_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_control_unit|r_state\(0));

-- Location: FF_X20_Y26_N17
\INST_cpu_core|INST_instruction_decoder|o_OPCODE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_InstrucReg|r_register\(28),
	sload => VCC,
	ena => \INST_cpu_core|INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0));

-- Location: LCCOMB_X23_Y22_N8
\INST_cpu_core|INST_ALU|r_ALU_Result~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result~2_combout\ = (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) & ((\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(3),
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_B\(0),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result~2_combout\);

-- Location: LCCOMB_X21_Y22_N28
\INST_cpu_core|INST_ALU|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~1_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_ALU|Add1~0_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0))))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & \INST_cpu_core|INST_ALU|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Add1~0_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_cpu_core|INST_ALU|Add0~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y23_N10
\INST_cpu_core|INST_ALU|ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftLeft0~7_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_cpu_core|INST_ALU|tmp[8]~0_combout\ & 
-- \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	datab => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_cpu_core|INST_ALU|tmp[8]~0_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X20_Y23_N30
\INST_cpu_core|INST_ALU|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~2_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux7~1_combout\ & (\INST_cpu_core|INST_ALU|r_ALU_Result~2_combout\)) # (!\INST_cpu_core|INST_ALU|Mux7~1_combout\ & 
-- ((\INST_cpu_core|INST_ALU|ShiftLeft0~7_combout\))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (((\INST_cpu_core|INST_ALU|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_ALU|r_ALU_Result~2_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux7~1_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftLeft0~7_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y23_N8
\INST_cpu_core|INST_ALU|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~4_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)) # (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y22_N6
\INST_cpu_core|INST_ALU|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~5_combout\ = (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & ((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & ((\INST_cpu_core|INST_ALU|Add0~5_combout\))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0) & (\INST_cpu_core|INST_ALU|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(0),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_cpu_core|INST_ALU|Add1~0_combout\,
	datad => \INST_cpu_core|INST_ALU|Add0~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~5_combout\);

-- Location: LCCOMB_X20_Y24_N8
\INST_cpu_core|INST_ALU|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~4_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~4_combout\);

-- Location: LCCOMB_X20_Y24_N22
\INST_cpu_core|INST_ALU|ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~3_combout\ = (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2)))) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(2),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~3_combout\);

-- Location: LCCOMB_X20_Y24_N10
\INST_cpu_core|INST_ALU|ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|ShiftRight0~5_combout\ = (\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & (((\INST_cpu_core|INST_ALU|ShiftRight0~2_combout\)))) # (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\ & 
-- ((\INST_cpu_core|INST_ALU|ShiftRight0~4_combout\) # ((\INST_cpu_core|INST_ALU|ShiftRight0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|ShiftRight0~4_combout\,
	datab => \INST_cpu_core|INST_ALU|ShiftRight0~2_combout\,
	datac => \INST_cpu_core|INST_ALU|ShiftRight0~3_combout\,
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[2]~6_combout\,
	combout => \INST_cpu_core|INST_ALU|ShiftRight0~5_combout\);

-- Location: LCCOMB_X19_Y22_N24
\INST_cpu_core|INST_ALU|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~3_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_ALU|Mux4~19_combout\ & \INST_cpu_core|INST_ALU|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_cpu_core|INST_ALU|Mux4~19_combout\,
	datad => \INST_cpu_core|INST_ALU|ShiftRight0~5_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X20_Y23_N2
\INST_cpu_core|INST_ALU|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~6_combout\ = (\INST_cpu_core|INST_ALU|Mux7~3_combout\) # ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & ((\INST_cpu_core|INST_ALU|Mux7~4_combout\) # (\INST_cpu_core|INST_ALU|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_ALU|Mux7~4_combout\,
	datac => \INST_cpu_core|INST_ALU|Mux7~5_combout\,
	datad => \INST_cpu_core|INST_ALU|Mux7~3_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~6_combout\);

-- Location: LCCOMB_X20_Y23_N28
\INST_cpu_core|INST_ALU|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~7_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & (((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1))))) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & (\INST_cpu_core|INST_ALU|Mux7~2_combout\)) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1) & ((\INST_cpu_core|INST_ALU|Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux7~2_combout\,
	datab => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_cpu_core|INST_ALU|Mux7~6_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~7_combout\);

-- Location: LCCOMB_X20_Y23_N4
\INST_cpu_core|INST_ALU|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2) & \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0) & (\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0) $ ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y23_N24
\INST_cpu_core|INST_ALU|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~8_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0)) # ((\INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0)) # ((!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2)) # 
-- (!\INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_cpu_core|INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_cpu_core|INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_cpu_core|INST_ALU|Mux7~8_combout\);

-- Location: LCCOMB_X21_Y23_N0
\INST_cpu_core|INST_ALU|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|Mux7~9_combout\ = (\INST_cpu_core|INST_ALU|Mux7~7_combout\ & (((!\INST_cpu_core|INST_ALU|Mux7~8_combout\) # (!\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))))) # (!\INST_cpu_core|INST_ALU|Mux7~7_combout\ & 
-- (\INST_cpu_core|INST_ALU|Mux7~0_combout\ & (\INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux7~7_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux7~0_combout\,
	datac => \INST_cpu_core|INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_cpu_core|INST_ALU|Mux7~8_combout\,
	combout => \INST_cpu_core|INST_ALU|Mux7~9_combout\);

-- Location: LCCOMB_X21_Y23_N16
\INST_cpu_core|INST_ALU|r_ALU_Result[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_ALU|r_ALU_Result[0]~3_combout\ = (\INST_cpu_core|INST_ALU|Mux7~10_combout\ & (((\INST_cpu_core|INST_ALU|r_ALU_Result\(0))))) # (!\INST_cpu_core|INST_ALU|Mux7~10_combout\ & ((\INST_cpu_core|INST_control_unit|r_state\(3) & 
-- (\INST_cpu_core|INST_ALU|Mux7~9_combout\)) # (!\INST_cpu_core|INST_control_unit|r_state\(3) & ((\INST_cpu_core|INST_ALU|r_ALU_Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|Mux7~9_combout\,
	datab => \INST_cpu_core|INST_ALU|Mux7~10_combout\,
	datac => \INST_cpu_core|INST_ALU|r_ALU_Result\(0),
	datad => \INST_cpu_core|INST_control_unit|r_state\(3),
	combout => \INST_cpu_core|INST_ALU|r_ALU_Result[0]~3_combout\);

-- Location: FF_X21_Y23_N17
\INST_cpu_core|INST_ALU|r_ALU_Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_ALU|r_ALU_Result[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_ALU|r_ALU_Result\(0));

-- Location: FF_X23_Y23_N27
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_data_bus|o_MEMORY\(0),
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(0));

-- Location: LCCOMB_X24_Y19_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_RAM_data\(0),
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X24_Y19_N1
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(29));

-- Location: M9K_X25_Y15_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ifttt_top_level.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_core:INST_cpu_core|DATA_RAM:INST_DATA_RAM|altsyncram:MEMORY_rtl_0|altsyncram_ipm1:auto_generated|ALTSYNCRAM",
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
	portawe => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \r_CLK_divided[23]~clkctrl_outclk\,
	portadatain => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N28
\INST_cpu_core|INST_DATA_RAM|MEMORY~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~23_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~23_combout\);

-- Location: LCCOMB_X24_Y19_N14
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(30));

-- Location: LCCOMB_X24_Y19_N24
\INST_cpu_core|INST_DATA_RAM|MEMORY~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_DATA_RAM|MEMORY~34_combout\ = (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(30) & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(29))) # 
-- (!\INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\ & ((\INST_cpu_core|INST_DATA_RAM|MEMORY~23_combout\))))) # (!\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(30) & (\INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(29),
	datab => \INST_cpu_core|INST_DATA_RAM|MEMORY~23_combout\,
	datac => \INST_cpu_core|INST_DATA_RAM|MEMORY_rtl_0_bypass\(30),
	datad => \INST_cpu_core|INST_DATA_RAM|MEMORY~33_combout\,
	combout => \INST_cpu_core|INST_DATA_RAM|MEMORY~34_combout\);

-- Location: FF_X24_Y19_N25
\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_DATA_RAM|MEMORY~34_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|ALT_INV_o_MC_RAM_write_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(0));

-- Location: IOIBUF_X23_Y29_N22
\io_GPIO_PIN0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(0),
	o => \io_GPIO_PIN0[0]~input_o\);

-- Location: FF_X26_Y25_N13
\INST_GPIO_register|INST_bidir_bus1|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN0[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(0));

-- Location: IOIBUF_X30_Y29_N8
\io_GPIO_PIN1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(0),
	o => \io_GPIO_PIN1[0]~input_o\);

-- Location: LCCOMB_X26_Y25_N2
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[0]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X26_Y25_N3
\INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(0));

-- Location: LCCOMB_X26_Y25_N12
\INST_GPIO_register|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux8~2_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)) # ((\INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(0))))) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus1|o_DATA_out\(0),
	datad => \INST_GPIO_register|INST_bidir_bus2|o_DATA_out\(0),
	combout => \INST_GPIO_register|Mux8~2_combout\);

-- Location: IOIBUF_X35_Y29_N15
\io_GPIO_PIN3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(0),
	o => \io_GPIO_PIN3[0]~input_o\);

-- Location: FF_X26_Y25_N15
\INST_GPIO_register|INST_bidir_bus4|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN3[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(0));

-- Location: IOIBUF_X26_Y29_N22
\io_GPIO_PIN2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(0),
	o => \io_GPIO_PIN2[0]~input_o\);

-- Location: LCCOMB_X26_Y25_N0
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN2[0]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X26_Y25_N1
\INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(0));

-- Location: LCCOMB_X26_Y25_N14
\INST_GPIO_register|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux8~3_combout\ = (\INST_GPIO_register|Mux8~2_combout\ & (((\INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(0))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1)))) # (!\INST_GPIO_register|Mux8~2_combout\ & 
-- (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Mux8~2_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus4|o_DATA_out\(0),
	datad => \INST_GPIO_register|INST_bidir_bus3|o_DATA_out\(0),
	combout => \INST_GPIO_register|Mux8~3_combout\);

-- Location: IOIBUF_X41_Y20_N22
\io_GPIO_PIN5[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(0),
	o => \io_GPIO_PIN5[0]~input_o\);

-- Location: LCCOMB_X29_Y20_N16
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN5[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN5[0]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X29_Y20_N17
\INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(0));

-- Location: IOIBUF_X26_Y0_N29
\io_GPIO_PIN7[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(0),
	o => \io_GPIO_PIN7[0]~input_o\);

-- Location: FF_X29_Y20_N7
\INST_GPIO_register|INST_bidir_bus8|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN7[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(0));

-- Location: IOIBUF_X41_Y21_N1
\io_GPIO_PIN4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(0),
	o => \io_GPIO_PIN4[0]~input_o\);

-- Location: FF_X29_Y20_N29
\INST_GPIO_register|INST_bidir_bus5|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \io_GPIO_PIN4[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(0));

-- Location: IOIBUF_X41_Y23_N1
\io_GPIO_PIN6[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(0),
	o => \io_GPIO_PIN6[0]~input_o\);

-- Location: LCCOMB_X29_Y20_N2
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN6[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[0]~input_o\,
	combout => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X29_Y20_N3
\INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(0));

-- Location: LCCOMB_X29_Y20_N28
\INST_GPIO_register|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux8~0_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & ((\INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(0)))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & (\INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datac => \INST_GPIO_register|INST_bidir_bus5|o_DATA_out\(0),
	datad => \INST_GPIO_register|INST_bidir_bus7|o_DATA_out\(0),
	combout => \INST_GPIO_register|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y20_N6
\INST_GPIO_register|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux8~1_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & ((\INST_GPIO_register|Mux8~0_combout\ & ((\INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(0)))) # (!\INST_GPIO_register|Mux8~0_combout\ & 
-- (\INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(0))))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & (((\INST_GPIO_register|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datab => \INST_GPIO_register|INST_bidir_bus6|o_DATA_out\(0),
	datac => \INST_GPIO_register|INST_bidir_bus8|o_DATA_out\(0),
	datad => \INST_GPIO_register|Mux8~0_combout\,
	combout => \INST_GPIO_register|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y21_N0
\INST_GPIO_register|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Mux8~4_combout\ = (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux8~1_combout\))) # (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_GPIO_register|Mux8~3_combout\,
	datad => \INST_GPIO_register|Mux8~1_combout\,
	combout => \INST_GPIO_register|Mux8~4_combout\);

-- Location: FF_X24_Y21_N1
\INST_GPIO_register|o_GPIO_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|Mux8~4_combout\,
	ena => \INST_GPIO_register|o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|o_GPIO_data\(0));

-- Location: LCCOMB_X24_Y21_N16
\INST_cpu_core|INST_MEMORY_CONTROL|Mux89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|Mux89~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (\INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(0) & (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15)))) # 
-- (!\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14) & (((\INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15) & \INST_GPIO_register|o_GPIO_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(14),
	datab => \INST_cpu_core|INST_DATA_RAM|o_RAM_MC_data\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_Address_MEM\(15),
	datad => \INST_GPIO_register|o_GPIO_data\(0),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|Mux89~0_combout\);

-- Location: FF_X24_Y21_N17
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|Mux89~0_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(0));

-- Location: LCCOMB_X23_Y23_N12
\INST_cpu_core|INST_data_bus|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|Mux9~0_combout\ = (\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(0)))) # (!\INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1) & 
-- (\INST_cpu_core|INST_ALU|r_ALU_Result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_ALU|r_ALU_Result\(0),
	datac => \INST_cpu_core|INST_instruction_decoder|o_BUS_select\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_MUX_data\(0),
	combout => \INST_cpu_core|INST_data_bus|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\INST_cpu_core|INST_data_bus|o_MEMORY[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_data_bus|o_MEMORY\(0) = (GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & (\INST_cpu_core|INST_data_bus|Mux9~0_combout\)) # 
-- (!GLOBAL(\INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\) & ((\INST_cpu_core|INST_data_bus|o_MEMORY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_data_bus|Mux9~0_combout\,
	datac => \INST_cpu_core|INST_data_bus|o_MEMORY\(0),
	datad => \INST_cpu_core|INST_instruction_decoder|o_MEM_write_enable~clkctrl_outclk\,
	combout => \INST_cpu_core|INST_data_bus|o_MEMORY\(0));

-- Location: LCCOMB_X27_Y21_N30
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~feeder_combout\ = \INST_cpu_core|INST_data_bus|o_MEMORY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_data_bus|o_MEMORY\(0),
	combout => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~feeder_combout\);

-- Location: FF_X27_Y21_N31
\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~feeder_combout\,
	ena => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0));

-- Location: LCCOMB_X23_Y21_N8
\INST_GPIO_register|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~0_combout\ = (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(3) & ((\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_GPIO_register|Mux0~1_combout\)) # 
-- (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & ((\INST_GPIO_register|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datab => \INST_GPIO_register|Mux0~1_combout\,
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(3),
	datad => \INST_GPIO_register|Mux0~3_combout\,
	combout => \INST_GPIO_register|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\INST_GPIO_register|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~1_combout\ = (\INST_GPIO_register|Decoder0~0_combout\ & \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~0_combout\,
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_write_enable~q\,
	combout => \INST_GPIO_register|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y21_N14
\INST_GPIO_register|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~2_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~2_combout\);

-- Location: FF_X27_Y22_N9
\INST_GPIO_register|r_IO_REG_OUT[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][0]~q\);

-- Location: FF_X27_Y22_N25
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(0));

-- Location: FF_X27_Y22_N27
\INST_GPIO_register|r_IO_REG_OUT[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][1]~q\);

-- Location: FF_X27_Y22_N3
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(1));

-- Location: FF_X27_Y22_N13
\INST_GPIO_register|r_IO_REG_OUT[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][2]~q\);

-- Location: LCCOMB_X27_Y22_N4
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[0][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X27_Y22_N5
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(2));

-- Location: FF_X27_Y22_N7
\INST_GPIO_register|r_IO_REG_OUT[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][3]~q\);

-- Location: LCCOMB_X27_Y22_N22
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[0][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X27_Y22_N23
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(3));

-- Location: FF_X27_Y22_N1
\INST_GPIO_register|r_IO_REG_OUT[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][4]~q\);

-- Location: LCCOMB_X27_Y22_N16
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[0][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X27_Y22_N17
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(4));

-- Location: LCCOMB_X27_Y22_N10
\INST_GPIO_register|r_IO_REG_OUT[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[0][5]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	combout => \INST_GPIO_register|r_IO_REG_OUT[0][5]~feeder_combout\);

-- Location: FF_X27_Y22_N11
\INST_GPIO_register|r_IO_REG_OUT[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[0][5]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][5]~q\);

-- Location: LCCOMB_X27_Y22_N18
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[0][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X27_Y22_N19
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(5));

-- Location: LCCOMB_X27_Y22_N28
\INST_GPIO_register|r_IO_REG_OUT[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[0][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[0][6]~feeder_combout\);

-- Location: FF_X27_Y22_N29
\INST_GPIO_register|r_IO_REG_OUT[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[0][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][6]~q\);

-- Location: LCCOMB_X27_Y22_N20
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[0][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X27_Y22_N21
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(6));

-- Location: LCCOMB_X27_Y22_N30
\INST_GPIO_register|r_IO_REG_OUT[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[0][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[0][7]~feeder_combout\);

-- Location: FF_X27_Y22_N31
\INST_GPIO_register|r_IO_REG_OUT[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[0][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[0][7]~q\);

-- Location: FF_X27_Y22_N15
\INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus1|r_INPUT_reg\(7));

-- Location: LCCOMB_X29_Y22_N24
\INST_GPIO_register|r_IO_REG_OUT[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N0
\INST_GPIO_register|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~3_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~3_combout\);

-- Location: FF_X29_Y22_N25
\INST_GPIO_register|r_IO_REG_OUT[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][0]~q\);

-- Location: LCCOMB_X29_Y22_N8
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X29_Y22_N9
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(0));

-- Location: LCCOMB_X29_Y22_N26
\INST_GPIO_register|r_IO_REG_OUT[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][1]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][1]~feeder_combout\);

-- Location: FF_X29_Y22_N27
\INST_GPIO_register|r_IO_REG_OUT[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][1]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][1]~q\);

-- Location: FF_X29_Y22_N19
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(1));

-- Location: LCCOMB_X29_Y22_N28
\INST_GPIO_register|r_IO_REG_OUT[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][2]~feeder_combout\);

-- Location: FF_X29_Y22_N29
\INST_GPIO_register|r_IO_REG_OUT[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][2]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][2]~q\);

-- Location: LCCOMB_X29_Y22_N4
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X29_Y22_N5
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(2));

-- Location: LCCOMB_X29_Y22_N6
\INST_GPIO_register|r_IO_REG_OUT[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][3]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][3]~feeder_combout\);

-- Location: FF_X29_Y22_N7
\INST_GPIO_register|r_IO_REG_OUT[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][3]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][3]~q\);

-- Location: LCCOMB_X29_Y22_N22
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X29_Y22_N23
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(3));

-- Location: LCCOMB_X29_Y22_N16
\INST_GPIO_register|r_IO_REG_OUT[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][4]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][4]~feeder_combout\);

-- Location: FF_X29_Y22_N17
\INST_GPIO_register|r_IO_REG_OUT[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][4]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][4]~q\);

-- Location: LCCOMB_X29_Y22_N0
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X29_Y22_N1
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(4));

-- Location: FF_X29_Y22_N11
\INST_GPIO_register|r_IO_REG_OUT[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][5]~q\);

-- Location: LCCOMB_X29_Y22_N2
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X29_Y22_N3
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(5));

-- Location: FF_X29_Y22_N21
\INST_GPIO_register|r_IO_REG_OUT[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][6]~q\);

-- Location: LCCOMB_X29_Y22_N12
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[1][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X29_Y22_N13
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(6));

-- Location: LCCOMB_X29_Y22_N30
\INST_GPIO_register|r_IO_REG_OUT[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[1][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[1][7]~feeder_combout\);

-- Location: FF_X29_Y22_N31
\INST_GPIO_register|r_IO_REG_OUT[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[1][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[1][7]~q\);

-- Location: FF_X29_Y22_N15
\INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[1][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus2|r_INPUT_reg\(7));

-- Location: LCCOMB_X26_Y22_N16
\INST_GPIO_register|r_IO_REG_OUT[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[2][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[2][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N2
\INST_GPIO_register|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~4_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~4_combout\);

-- Location: FF_X26_Y22_N17
\INST_GPIO_register|r_IO_REG_OUT[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[2][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][0]~q\);

-- Location: LCCOMB_X26_Y22_N8
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X26_Y22_N9
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(0));

-- Location: FF_X26_Y22_N11
\INST_GPIO_register|r_IO_REG_OUT[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][1]~q\);

-- Location: LCCOMB_X26_Y22_N2
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][1]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X26_Y22_N3
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(1));

-- Location: FF_X26_Y22_N13
\INST_GPIO_register|r_IO_REG_OUT[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][2]~q\);

-- Location: LCCOMB_X26_Y22_N28
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X26_Y22_N29
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(2));

-- Location: LCCOMB_X26_Y22_N30
\INST_GPIO_register|r_IO_REG_OUT[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[2][3]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	combout => \INST_GPIO_register|r_IO_REG_OUT[2][3]~feeder_combout\);

-- Location: FF_X26_Y22_N31
\INST_GPIO_register|r_IO_REG_OUT[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[2][3]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][3]~q\);

-- Location: FF_X26_Y22_N23
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[2][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(3));

-- Location: LCCOMB_X26_Y22_N24
\INST_GPIO_register|r_IO_REG_OUT[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[2][4]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	combout => \INST_GPIO_register|r_IO_REG_OUT[2][4]~feeder_combout\);

-- Location: FF_X26_Y22_N25
\INST_GPIO_register|r_IO_REG_OUT[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[2][4]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][4]~q\);

-- Location: LCCOMB_X26_Y22_N0
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X26_Y22_N1
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(4));

-- Location: FF_X26_Y22_N19
\INST_GPIO_register|r_IO_REG_OUT[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][5]~q\);

-- Location: LCCOMB_X26_Y22_N26
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X26_Y22_N27
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(5));

-- Location: LCCOMB_X26_Y22_N20
\INST_GPIO_register|r_IO_REG_OUT[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[2][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[2][6]~feeder_combout\);

-- Location: FF_X26_Y22_N21
\INST_GPIO_register|r_IO_REG_OUT[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[2][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][6]~q\);

-- Location: LCCOMB_X26_Y22_N4
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X26_Y22_N5
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(6));

-- Location: LCCOMB_X26_Y22_N6
\INST_GPIO_register|r_IO_REG_OUT[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[2][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[2][7]~feeder_combout\);

-- Location: FF_X26_Y22_N7
\INST_GPIO_register|r_IO_REG_OUT[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[2][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[2][7]~q\);

-- Location: LCCOMB_X26_Y22_N14
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[2][7]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X26_Y22_N15
\INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus3|r_INPUT_reg\(7));

-- Location: LCCOMB_X31_Y21_N16
\INST_GPIO_register|r_IO_REG_OUT[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N4
\INST_GPIO_register|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~5_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~5_combout\);

-- Location: FF_X31_Y21_N17
\INST_GPIO_register|r_IO_REG_OUT[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][0]~q\);

-- Location: LCCOMB_X31_Y21_N24
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X31_Y21_N25
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(0));

-- Location: LCCOMB_X31_Y21_N18
\INST_GPIO_register|r_IO_REG_OUT[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][1]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][1]~feeder_combout\);

-- Location: FF_X31_Y21_N19
\INST_GPIO_register|r_IO_REG_OUT[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][1]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][1]~q\);

-- Location: LCCOMB_X31_Y21_N26
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][1]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X31_Y21_N27
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(1));

-- Location: LCCOMB_X31_Y21_N12
\INST_GPIO_register|r_IO_REG_OUT[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][2]~feeder_combout\);

-- Location: FF_X31_Y21_N13
\INST_GPIO_register|r_IO_REG_OUT[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][2]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][2]~q\);

-- Location: LCCOMB_X31_Y21_N20
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X31_Y21_N21
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(2));

-- Location: LCCOMB_X31_Y21_N6
\INST_GPIO_register|r_IO_REG_OUT[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][3]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][3]~feeder_combout\);

-- Location: FF_X31_Y21_N7
\INST_GPIO_register|r_IO_REG_OUT[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][3]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][3]~q\);

-- Location: LCCOMB_X31_Y21_N14
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X31_Y21_N15
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(3));

-- Location: LCCOMB_X31_Y21_N0
\INST_GPIO_register|r_IO_REG_OUT[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][4]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][4]~feeder_combout\);

-- Location: FF_X31_Y21_N1
\INST_GPIO_register|r_IO_REG_OUT[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][4]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][4]~q\);

-- Location: LCCOMB_X31_Y21_N8
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X31_Y21_N9
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(4));

-- Location: LCCOMB_X31_Y21_N10
\INST_GPIO_register|r_IO_REG_OUT[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][5]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][5]~feeder_combout\);

-- Location: FF_X31_Y21_N11
\INST_GPIO_register|r_IO_REG_OUT[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][5]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][5]~q\);

-- Location: LCCOMB_X31_Y21_N2
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X31_Y21_N3
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(5));

-- Location: LCCOMB_X31_Y21_N28
\INST_GPIO_register|r_IO_REG_OUT[3][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][6]~feeder_combout\);

-- Location: FF_X31_Y21_N29
\INST_GPIO_register|r_IO_REG_OUT[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][6]~q\);

-- Location: LCCOMB_X31_Y21_N4
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[3][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X31_Y21_N5
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(6));

-- Location: LCCOMB_X31_Y21_N30
\INST_GPIO_register|r_IO_REG_OUT[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[3][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[3][7]~feeder_combout\);

-- Location: FF_X31_Y21_N31
\INST_GPIO_register|r_IO_REG_OUT[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[3][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[3][7]~q\);

-- Location: FF_X31_Y21_N23
\INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[3][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus4|r_INPUT_reg\(7));

-- Location: LCCOMB_X30_Y21_N0
\INST_GPIO_register|r_IO_REG_OUT[4][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[4][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[4][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N22
\INST_GPIO_register|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~6_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~6_combout\);

-- Location: FF_X30_Y21_N1
\INST_GPIO_register|r_IO_REG_OUT[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[4][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][0]~q\);

-- Location: LCCOMB_X30_Y21_N16
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X30_Y21_N17
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(0));

-- Location: LCCOMB_X30_Y21_N26
\INST_GPIO_register|r_IO_REG_OUT[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[4][1]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	combout => \INST_GPIO_register|r_IO_REG_OUT[4][1]~feeder_combout\);

-- Location: FF_X30_Y21_N27
\INST_GPIO_register|r_IO_REG_OUT[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[4][1]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][1]~q\);

-- Location: FF_X30_Y21_N19
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[4][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(1));

-- Location: LCCOMB_X30_Y21_N12
\INST_GPIO_register|r_IO_REG_OUT[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[4][2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_IO_REG_OUT[4][2]~feeder_combout\);

-- Location: FF_X30_Y21_N13
\INST_GPIO_register|r_IO_REG_OUT[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[4][2]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][2]~q\);

-- Location: LCCOMB_X30_Y21_N28
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X30_Y21_N29
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(2));

-- Location: FF_X30_Y21_N7
\INST_GPIO_register|r_IO_REG_OUT[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][3]~q\);

-- Location: LCCOMB_X30_Y21_N14
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X30_Y21_N15
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(3));

-- Location: FF_X30_Y21_N25
\INST_GPIO_register|r_IO_REG_OUT[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][4]~q\);

-- Location: LCCOMB_X30_Y21_N8
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X30_Y21_N9
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(4));

-- Location: FF_X30_Y21_N11
\INST_GPIO_register|r_IO_REG_OUT[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][5]~q\);

-- Location: LCCOMB_X30_Y21_N2
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X30_Y21_N3
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(5));

-- Location: LCCOMB_X30_Y21_N20
\INST_GPIO_register|r_IO_REG_OUT[4][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[4][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[4][6]~feeder_combout\);

-- Location: FF_X30_Y21_N21
\INST_GPIO_register|r_IO_REG_OUT[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[4][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][6]~q\);

-- Location: LCCOMB_X30_Y21_N4
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[4][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X30_Y21_N5
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(6));

-- Location: FF_X30_Y21_N31
\INST_GPIO_register|r_IO_REG_OUT[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[4][7]~q\);

-- Location: FF_X30_Y21_N23
\INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[4][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus5|r_INPUT_reg\(7));

-- Location: LCCOMB_X31_Y20_N24
\INST_GPIO_register|r_IO_REG_OUT[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N16
\INST_GPIO_register|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~7_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- !\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~7_combout\);

-- Location: FF_X31_Y20_N25
\INST_GPIO_register|r_IO_REG_OUT[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][0]~q\);

-- Location: LCCOMB_X31_Y20_N8
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X31_Y20_N9
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(0));

-- Location: LCCOMB_X31_Y20_N2
\INST_GPIO_register|r_IO_REG_OUT[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][1]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][1]~feeder_combout\);

-- Location: FF_X31_Y20_N3
\INST_GPIO_register|r_IO_REG_OUT[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][1]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][1]~q\);

-- Location: LCCOMB_X31_Y20_N10
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][1]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X31_Y20_N11
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(1));

-- Location: LCCOMB_X31_Y20_N20
\INST_GPIO_register|r_IO_REG_OUT[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][2]~feeder_combout\);

-- Location: FF_X31_Y20_N21
\INST_GPIO_register|r_IO_REG_OUT[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][2]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][2]~q\);

-- Location: LCCOMB_X31_Y20_N12
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X31_Y20_N13
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(2));

-- Location: LCCOMB_X31_Y20_N22
\INST_GPIO_register|r_IO_REG_OUT[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][3]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][3]~feeder_combout\);

-- Location: FF_X31_Y20_N23
\INST_GPIO_register|r_IO_REG_OUT[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][3]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][3]~q\);

-- Location: FF_X31_Y20_N15
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[5][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(3));

-- Location: FF_X31_Y20_N17
\INST_GPIO_register|r_IO_REG_OUT[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][4]~q\);

-- Location: LCCOMB_X31_Y20_N0
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X31_Y20_N1
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(4));

-- Location: LCCOMB_X31_Y20_N18
\INST_GPIO_register|r_IO_REG_OUT[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][5]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][5]~feeder_combout\);

-- Location: FF_X31_Y20_N19
\INST_GPIO_register|r_IO_REG_OUT[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][5]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][5]~q\);

-- Location: LCCOMB_X31_Y20_N26
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X31_Y20_N27
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(5));

-- Location: LCCOMB_X31_Y20_N28
\INST_GPIO_register|r_IO_REG_OUT[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][6]~feeder_combout\);

-- Location: FF_X31_Y20_N29
\INST_GPIO_register|r_IO_REG_OUT[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][6]~q\);

-- Location: LCCOMB_X31_Y20_N4
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[5][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X31_Y20_N5
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(6));

-- Location: LCCOMB_X31_Y20_N30
\INST_GPIO_register|r_IO_REG_OUT[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[5][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[5][7]~feeder_combout\);

-- Location: FF_X31_Y20_N31
\INST_GPIO_register|r_IO_REG_OUT[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[5][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[5][7]~q\);

-- Location: FF_X31_Y20_N7
\INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[5][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus6|r_INPUT_reg\(7));

-- Location: LCCOMB_X31_Y22_N24
\INST_GPIO_register|r_IO_REG_OUT[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[6][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[6][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N30
\INST_GPIO_register|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~8_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (!\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0) & 
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	combout => \INST_GPIO_register|Decoder0~8_combout\);

-- Location: FF_X31_Y22_N25
\INST_GPIO_register|r_IO_REG_OUT[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[6][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][0]~q\);

-- Location: LCCOMB_X31_Y22_N0
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][0]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X31_Y22_N1
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(0));

-- Location: FF_X31_Y22_N3
\INST_GPIO_register|r_IO_REG_OUT[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][1]~q\);

-- Location: LCCOMB_X31_Y22_N18
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][1]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X31_Y22_N19
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(1));

-- Location: FF_X31_Y22_N21
\INST_GPIO_register|r_IO_REG_OUT[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][2]~q\);

-- Location: LCCOMB_X31_Y22_N12
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X31_Y22_N13
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(2));

-- Location: FF_X31_Y22_N7
\INST_GPIO_register|r_IO_REG_OUT[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][3]~q\);

-- Location: LCCOMB_X31_Y22_N14
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X31_Y22_N15
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(3));

-- Location: LCCOMB_X31_Y22_N16
\INST_GPIO_register|r_IO_REG_OUT[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[6][4]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	combout => \INST_GPIO_register|r_IO_REG_OUT[6][4]~feeder_combout\);

-- Location: FF_X31_Y22_N17
\INST_GPIO_register|r_IO_REG_OUT[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[6][4]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][4]~q\);

-- Location: LCCOMB_X31_Y22_N8
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X31_Y22_N9
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(4));

-- Location: LCCOMB_X31_Y22_N10
\INST_GPIO_register|r_IO_REG_OUT[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[6][5]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	combout => \INST_GPIO_register|r_IO_REG_OUT[6][5]~feeder_combout\);

-- Location: FF_X31_Y22_N11
\INST_GPIO_register|r_IO_REG_OUT[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[6][5]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][5]~q\);

-- Location: LCCOMB_X31_Y22_N26
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X31_Y22_N27
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(5));

-- Location: LCCOMB_X31_Y22_N28
\INST_GPIO_register|r_IO_REG_OUT[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[6][6]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	combout => \INST_GPIO_register|r_IO_REG_OUT[6][6]~feeder_combout\);

-- Location: FF_X31_Y22_N29
\INST_GPIO_register|r_IO_REG_OUT[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[6][6]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][6]~q\);

-- Location: LCCOMB_X31_Y22_N4
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[6][6]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X31_Y22_N5
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(6));

-- Location: LCCOMB_X31_Y22_N30
\INST_GPIO_register|r_IO_REG_OUT[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[6][7]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	combout => \INST_GPIO_register|r_IO_REG_OUT[6][7]~feeder_combout\);

-- Location: FF_X31_Y22_N31
\INST_GPIO_register|r_IO_REG_OUT[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[6][7]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[6][7]~q\);

-- Location: FF_X31_Y22_N23
\INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[6][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus7|r_INPUT_reg\(7));

-- Location: LCCOMB_X28_Y20_N8
\INST_GPIO_register|r_IO_REG_OUT[7][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[7][0]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(0),
	combout => \INST_GPIO_register|r_IO_REG_OUT[7][0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N24
\INST_GPIO_register|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|Decoder0~9_combout\ = (\INST_GPIO_register|Decoder0~1_combout\ & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2) & (\INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1) & 
-- \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPIO_register|Decoder0~1_combout\,
	datab => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(2),
	datac => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(1),
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_address\(0),
	combout => \INST_GPIO_register|Decoder0~9_combout\);

-- Location: FF_X28_Y20_N9
\INST_GPIO_register|r_IO_REG_OUT[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[7][0]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][0]~q\);

-- Location: FF_X28_Y20_N17
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[7][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(0));

-- Location: FF_X28_Y20_N3
\INST_GPIO_register|r_IO_REG_OUT[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(1),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][1]~q\);

-- Location: LCCOMB_X28_Y20_N26
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[7][1]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X28_Y20_N27
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(1));

-- Location: LCCOMB_X28_Y20_N12
\INST_GPIO_register|r_IO_REG_OUT[7][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|r_IO_REG_OUT[7][2]~feeder_combout\ = \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(2),
	combout => \INST_GPIO_register|r_IO_REG_OUT[7][2]~feeder_combout\);

-- Location: FF_X28_Y20_N13
\INST_GPIO_register|r_IO_REG_OUT[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|r_IO_REG_OUT[7][2]~feeder_combout\,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][2]~q\);

-- Location: LCCOMB_X28_Y20_N20
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[7][2]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X28_Y20_N21
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(2));

-- Location: FF_X28_Y20_N7
\INST_GPIO_register|r_IO_REG_OUT[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(3),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][3]~q\);

-- Location: LCCOMB_X28_Y20_N30
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[7][3]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X28_Y20_N31
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(3));

-- Location: FF_X28_Y20_N25
\INST_GPIO_register|r_IO_REG_OUT[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(4),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][4]~q\);

-- Location: LCCOMB_X28_Y20_N0
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[7][4]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X28_Y20_N1
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(4));

-- Location: FF_X28_Y20_N11
\INST_GPIO_register|r_IO_REG_OUT[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(5),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][5]~q\);

-- Location: LCCOMB_X28_Y20_N18
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\ = \INST_GPIO_register|r_IO_REG_OUT[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPIO_register|r_IO_REG_OUT[7][5]~q\,
	combout => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X28_Y20_N19
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	d => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(5));

-- Location: FF_X28_Y20_N5
\INST_GPIO_register|r_IO_REG_OUT[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(6),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][6]~q\);

-- Location: FF_X28_Y20_N29
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[7][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(6));

-- Location: FF_X28_Y20_N15
\INST_GPIO_register|r_IO_REG_OUT[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_cpu_core|INST_MEMORY_CONTROL|o_MC_GPIO_data\(7),
	sload => VCC,
	ena => \INST_GPIO_register|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|r_IO_REG_OUT[7][7]~q\);

-- Location: FF_X28_Y20_N23
\INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r_CLK_divided[23]~clkctrl_outclk\,
	asdata => \INST_GPIO_register|r_IO_REG_OUT[7][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPIO_register|INST_bidir_bus8|r_INPUT_reg\(7));

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

ww_o_INTERRUPT_ack <= \o_INTERRUPT_ack~output_o\;

io_GPIO_PIN0(0) <= \io_GPIO_PIN0[0]~output_o\;

io_GPIO_PIN0(1) <= \io_GPIO_PIN0[1]~output_o\;

io_GPIO_PIN0(2) <= \io_GPIO_PIN0[2]~output_o\;

io_GPIO_PIN0(3) <= \io_GPIO_PIN0[3]~output_o\;

io_GPIO_PIN0(4) <= \io_GPIO_PIN0[4]~output_o\;

io_GPIO_PIN0(5) <= \io_GPIO_PIN0[5]~output_o\;

io_GPIO_PIN0(6) <= \io_GPIO_PIN0[6]~output_o\;

io_GPIO_PIN0(7) <= \io_GPIO_PIN0[7]~output_o\;

io_GPIO_PIN1(0) <= \io_GPIO_PIN1[0]~output_o\;

io_GPIO_PIN1(1) <= \io_GPIO_PIN1[1]~output_o\;

io_GPIO_PIN1(2) <= \io_GPIO_PIN1[2]~output_o\;

io_GPIO_PIN1(3) <= \io_GPIO_PIN1[3]~output_o\;

io_GPIO_PIN1(4) <= \io_GPIO_PIN1[4]~output_o\;

io_GPIO_PIN1(5) <= \io_GPIO_PIN1[5]~output_o\;

io_GPIO_PIN1(6) <= \io_GPIO_PIN1[6]~output_o\;

io_GPIO_PIN1(7) <= \io_GPIO_PIN1[7]~output_o\;

io_GPIO_PIN2(0) <= \io_GPIO_PIN2[0]~output_o\;

io_GPIO_PIN2(1) <= \io_GPIO_PIN2[1]~output_o\;

io_GPIO_PIN2(2) <= \io_GPIO_PIN2[2]~output_o\;

io_GPIO_PIN2(3) <= \io_GPIO_PIN2[3]~output_o\;

io_GPIO_PIN2(4) <= \io_GPIO_PIN2[4]~output_o\;

io_GPIO_PIN2(5) <= \io_GPIO_PIN2[5]~output_o\;

io_GPIO_PIN2(6) <= \io_GPIO_PIN2[6]~output_o\;

io_GPIO_PIN2(7) <= \io_GPIO_PIN2[7]~output_o\;

io_GPIO_PIN3(0) <= \io_GPIO_PIN3[0]~output_o\;

io_GPIO_PIN3(1) <= \io_GPIO_PIN3[1]~output_o\;

io_GPIO_PIN3(2) <= \io_GPIO_PIN3[2]~output_o\;

io_GPIO_PIN3(3) <= \io_GPIO_PIN3[3]~output_o\;

io_GPIO_PIN3(4) <= \io_GPIO_PIN3[4]~output_o\;

io_GPIO_PIN3(5) <= \io_GPIO_PIN3[5]~output_o\;

io_GPIO_PIN3(6) <= \io_GPIO_PIN3[6]~output_o\;

io_GPIO_PIN3(7) <= \io_GPIO_PIN3[7]~output_o\;

io_GPIO_PIN4(0) <= \io_GPIO_PIN4[0]~output_o\;

io_GPIO_PIN4(1) <= \io_GPIO_PIN4[1]~output_o\;

io_GPIO_PIN4(2) <= \io_GPIO_PIN4[2]~output_o\;

io_GPIO_PIN4(3) <= \io_GPIO_PIN4[3]~output_o\;

io_GPIO_PIN4(4) <= \io_GPIO_PIN4[4]~output_o\;

io_GPIO_PIN4(5) <= \io_GPIO_PIN4[5]~output_o\;

io_GPIO_PIN4(6) <= \io_GPIO_PIN4[6]~output_o\;

io_GPIO_PIN4(7) <= \io_GPIO_PIN4[7]~output_o\;

io_GPIO_PIN5(0) <= \io_GPIO_PIN5[0]~output_o\;

io_GPIO_PIN5(1) <= \io_GPIO_PIN5[1]~output_o\;

io_GPIO_PIN5(2) <= \io_GPIO_PIN5[2]~output_o\;

io_GPIO_PIN5(3) <= \io_GPIO_PIN5[3]~output_o\;

io_GPIO_PIN5(4) <= \io_GPIO_PIN5[4]~output_o\;

io_GPIO_PIN5(5) <= \io_GPIO_PIN5[5]~output_o\;

io_GPIO_PIN5(6) <= \io_GPIO_PIN5[6]~output_o\;

io_GPIO_PIN5(7) <= \io_GPIO_PIN5[7]~output_o\;

io_GPIO_PIN6(0) <= \io_GPIO_PIN6[0]~output_o\;

io_GPIO_PIN6(1) <= \io_GPIO_PIN6[1]~output_o\;

io_GPIO_PIN6(2) <= \io_GPIO_PIN6[2]~output_o\;

io_GPIO_PIN6(3) <= \io_GPIO_PIN6[3]~output_o\;

io_GPIO_PIN6(4) <= \io_GPIO_PIN6[4]~output_o\;

io_GPIO_PIN6(5) <= \io_GPIO_PIN6[5]~output_o\;

io_GPIO_PIN6(6) <= \io_GPIO_PIN6[6]~output_o\;

io_GPIO_PIN6(7) <= \io_GPIO_PIN6[7]~output_o\;

io_GPIO_PIN7(0) <= \io_GPIO_PIN7[0]~output_o\;

io_GPIO_PIN7(1) <= \io_GPIO_PIN7[1]~output_o\;

io_GPIO_PIN7(2) <= \io_GPIO_PIN7[2]~output_o\;

io_GPIO_PIN7(3) <= \io_GPIO_PIN7[3]~output_o\;

io_GPIO_PIN7(4) <= \io_GPIO_PIN7[4]~output_o\;

io_GPIO_PIN7(5) <= \io_GPIO_PIN7[5]~output_o\;

io_GPIO_PIN7(6) <= \io_GPIO_PIN7[6]~output_o\;

io_GPIO_PIN7(7) <= \io_GPIO_PIN7[7]~output_o\;
END structure;


