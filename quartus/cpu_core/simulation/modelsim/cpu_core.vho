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

-- DATE "04/16/2019 14:26:49"

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
	o_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END cpu_core;

-- Design Ports Information
-- i_CORE_HALT	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_RESET	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_CORE_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CORE_HALT~input_o\ : std_logic;
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \i_CORE_CLK~input_o\ : std_logic;
SIGNAL \i_CORE_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_Program_counter|Add0~1\ : std_logic;
SIGNAL \INST_Program_counter|Add0~4\ : std_logic;
SIGNAL \INST_Program_counter|Add0~7\ : std_logic;
SIGNAL \INST_Program_counter|Add0~10\ : std_logic;
SIGNAL \INST_Program_counter|Add0~12_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[9]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~13\ : std_logic;
SIGNAL \INST_Program_counter|Add0~16\ : std_logic;
SIGNAL \INST_Program_counter|Add0~19\ : std_logic;
SIGNAL \INST_Program_counter|Add0~22\ : std_logic;
SIGNAL \INST_Program_counter|Add0~25\ : std_logic;
SIGNAL \INST_Program_counter|Add0~27_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~29_combout\ : std_logic;
SIGNAL \i_CORE_RESET~input_o\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[8]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~24_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~26_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[7]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~21_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~23_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[6]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~18_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~20_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[5]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~15_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~17_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[4]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~14_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[3]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~9_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~11_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~6_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~8_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Address_PROG[1]~feeder_combout\ : std_logic;
SIGNAL \INST_branch_control|o_ADDRESS[1]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~3_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~5_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_OPCODE[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[0]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~19_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~38_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[4]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~21_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[3]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~20_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~22_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~14_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~16_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~15_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~17_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~11_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~34_combout\ : std_logic;
SIGNAL \r_register_enable~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_IMM_enable~q\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[6]~4_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~27_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~13_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~35_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[5]~5_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~36_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[4]~6_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~29_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~30_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~26_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[1]~1_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~23_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[0]~0_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~18_combout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan0~14_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~1\ : std_logic;
SIGNAL \INST_ALU|Add0~3\ : std_logic;
SIGNAL \INST_ALU|Add0~5\ : std_logic;
SIGNAL \INST_ALU|Add0~7\ : std_logic;
SIGNAL \INST_ALU|Add0~9\ : std_logic;
SIGNAL \INST_ALU|Add0~11\ : std_logic;
SIGNAL \INST_ALU|Add0~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~1\ : std_logic;
SIGNAL \INST_ALU|Add1~3\ : std_logic;
SIGNAL \INST_ALU|Add1~5\ : std_logic;
SIGNAL \INST_ALU|Add1~7\ : std_logic;
SIGNAL \INST_ALU|Add1~9\ : std_logic;
SIGNAL \INST_ALU|Add1~11\ : std_logic;
SIGNAL \INST_ALU|Add1~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal2~0_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~15_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~20_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~11_combout\ : std_logic;
SIGNAL \INST_ALU|Equal2~1_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~16_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux1~8_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~17_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[5]~18_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~25_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~1_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~3_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~5_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~7_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~9_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~11_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~13_cout\ : std_logic;
SIGNAL \INST_ALU|LessThan1~14_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~7_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~10_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~28_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal1~1_combout\ : std_logic;
SIGNAL \INST_ALU|Equal1~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal1~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~14_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~15_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~5_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~18_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~9_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~8_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~8_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux3~7_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[4]~10_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~37_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[3]~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~6_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~6_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result~5_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~12_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~13_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~16_combout\ : std_logic;
SIGNAL \INST_ALU|Equal2~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux4~7_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[3]~7_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~32_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[2]~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Equal0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~5_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~4_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux5~10_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[2]~4_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~31_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~8_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~9_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~5_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~2_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~7_combout\ : std_logic;
SIGNAL \INST_ALU|Mux6~9_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[1]~3_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~33_combout\ : std_logic;
SIGNAL \INST_B_imm_multiplexer|o_DATA[7]~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \INST_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \INST_ALU|Equal0~2_combout\ : std_logic;
SIGNAL \INST_ALU|Equal0~3_combout\ : std_logic;
SIGNAL \INST_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal0~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~17_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~13\ : std_logic;
SIGNAL \INST_ALU|Add1~14_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~13\ : std_logic;
SIGNAL \INST_ALU|Add0~14_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[7]~19_combout\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_GPR|r_REGISTER~24_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_overflow_flag~0_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_overflow_flag~1_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_overflow_flag~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_carry_flag~0_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_overflow_flag~q\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|Mux1~1_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_carry_flag~1_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~15\ : std_logic;
SIGNAL \INST_ALU|Add0~16_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~0_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~1_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~2_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~3_combout\ : std_logic;
SIGNAL \INST_ALU|tmp[8]~4_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_carry_flag~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_carry_flag~q\ : std_logic;
SIGNAL \INST_branch_control|Mux0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal3~1_combout\ : std_logic;
SIGNAL \INST_ALU|Equal3~0_combout\ : std_logic;
SIGNAL \INST_ALU|Equal3~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_zero_flag~q\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Signed~feeder_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Signed~q\ : std_logic;
SIGNAL \INST_ALU|r_ALU_negative_flag~2_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_negative_flag~3_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_negative_flag~q\ : std_logic;
SIGNAL \INST_branch_control|Mux0~1_combout\ : std_logic;
SIGNAL \INST_branch_control|Mux0~2_combout\ : std_logic;
SIGNAL \INST_branch_control|o_PC_LOAD~q\ : std_logic;
SIGNAL \INST_Program_counter|Add0~0_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_Address_PROG[0]~feeder_combout\ : std_logic;
SIGNAL \INST_Program_counter|Add0~2_combout\ : std_logic;
SIGNAL \INST_control_unit|process_0~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux1~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux1~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux0~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux2~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux2~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux3~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux4~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux3~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~2_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~0_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~1_combout\ : std_logic;
SIGNAL \INST_control_unit|Mux5~3_combout\ : std_logic;
SIGNAL \INST_instruction_decoder|o_OPCODE[2]~feeder_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~12_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~10_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \INST_ALU|ShiftRight0~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~5_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~7_combout\ : std_logic;
SIGNAL \INST_ALU|Add1~0_combout\ : std_logic;
SIGNAL \INST_ALU|Add0~0_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~6_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~8_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~9_combout\ : std_logic;
SIGNAL \INST_ALU|Mux7~11_combout\ : std_logic;
SIGNAL \INST_ALU|r_ALU_Result[0]~2_combout\ : std_logic;
SIGNAL \INST_ALU|tmp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INST_ALU|r_ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_branch_control|o_ADDRESS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_Program_counter|r_PROG_COUNT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_GPR|o_GPR_ALU_data_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_GPR|o_GPR_ALU_data_A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_REGISTER_C\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_Address_PROG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_control_unit|r_state\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_InstrucReg|r_register\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INST_instruction_decoder|o_BRANCH_CONTROL\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST_GPR|r_REGISTER_rtl_1_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_GPR|r_REGISTER_rtl_0_bypass\ : std_logic_vector(0 TO 26);
SIGNAL \INST_control_unit|ALT_INV_r_state\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_i_CORE_CLK <= i_CORE_CLK;
ww_i_CORE_RESET <= i_CORE_RESET;
ww_i_CORE_HALT <= i_CORE_HALT;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\INST_ALU|r_ALU_Result\(7) & \INST_ALU|r_ALU_Result\(6) & \INST_ALU|r_ALU_Result\(5) & \INST_ALU|r_ALU_Result\(4) & \INST_ALU|r_ALU_Result\(3) & \INST_ALU|r_ALU_Result\(2) & \INST_ALU|r_ALU_Result\(1) & \INST_ALU|r_ALU_Result\(0));

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

\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\INST_ALU|r_ALU_Result\(7) & \INST_ALU|r_ALU_Result\(6) & \INST_ALU|r_ALU_Result\(5) & \INST_ALU|r_ALU_Result\(4) & \INST_ALU|r_ALU_Result\(3) & \INST_ALU|r_ALU_Result\(2) & \INST_ALU|r_ALU_Result\(1) & \INST_ALU|r_ALU_Result\(0));

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

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(0) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(5) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(6) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(7) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(11) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(12) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(28) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(29) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(30) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(8) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(9) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(10) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(18) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(19) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(20) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(21) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(22) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(31) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(8);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(13) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(14) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(15) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(16) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(17) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(4);
\INST_InstrucReg|r_register\(23) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(5);
\INST_InstrucReg|r_register\(24) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(6);
\INST_InstrucReg|r_register\(25) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(7);
\INST_InstrucReg|r_register\(26) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(8);

\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\INST_Program_counter|r_PROG_COUNT\(9) & \INST_Program_counter|r_PROG_COUNT\(8) & \INST_Program_counter|r_PROG_COUNT\(7) & \INST_Program_counter|r_PROG_COUNT\(6) & 
\INST_Program_counter|r_PROG_COUNT\(5) & \INST_Program_counter|r_PROG_COUNT\(4) & \INST_Program_counter|r_PROG_COUNT\(3) & \INST_Program_counter|r_PROG_COUNT\(2) & \INST_Program_counter|r_PROG_COUNT\(1) & \INST_Program_counter|r_PROG_COUNT\(0)
);

\INST_InstrucReg|r_register\(1) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\INST_InstrucReg|r_register\(2) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\INST_InstrucReg|r_register\(3) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\INST_InstrucReg|r_register\(4) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\INST_InstrucReg|r_register\(27) <= \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);

\i_CORE_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CORE_CLK~input_o\);
\INST_control_unit|ALT_INV_r_state\(1) <= NOT \INST_control_unit|r_state\(1);
\INST_control_unit|ALT_INV_r_state\(0) <= NOT \INST_control_unit|r_state\(0);

-- Location: IOOBUF_X28_Y29_N9
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

-- Location: IOOBUF_X26_Y29_N30
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X30_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N30
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

-- Location: LCCOMB_X26_Y19_N4
\INST_Program_counter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~0_combout\ = \INST_Program_counter|r_PROG_COUNT\(0) $ (VCC)
-- \INST_Program_counter|Add0~1\ = CARRY(\INST_Program_counter|r_PROG_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(0),
	datad => VCC,
	combout => \INST_Program_counter|Add0~0_combout\,
	cout => \INST_Program_counter|Add0~1\);

-- Location: LCCOMB_X26_Y19_N6
\INST_Program_counter|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~3_combout\ = (\INST_Program_counter|r_PROG_COUNT\(1) & (!\INST_Program_counter|Add0~1\)) # (!\INST_Program_counter|r_PROG_COUNT\(1) & ((\INST_Program_counter|Add0~1\) # (GND)))
-- \INST_Program_counter|Add0~4\ = CARRY((!\INST_Program_counter|Add0~1\) # (!\INST_Program_counter|r_PROG_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(1),
	datad => VCC,
	cin => \INST_Program_counter|Add0~1\,
	combout => \INST_Program_counter|Add0~3_combout\,
	cout => \INST_Program_counter|Add0~4\);

-- Location: LCCOMB_X26_Y19_N8
\INST_Program_counter|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~6_combout\ = (\INST_Program_counter|r_PROG_COUNT\(2) & (\INST_Program_counter|Add0~4\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(2) & (!\INST_Program_counter|Add0~4\ & VCC))
-- \INST_Program_counter|Add0~7\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(2) & !\INST_Program_counter|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(2),
	datad => VCC,
	cin => \INST_Program_counter|Add0~4\,
	combout => \INST_Program_counter|Add0~6_combout\,
	cout => \INST_Program_counter|Add0~7\);

-- Location: LCCOMB_X26_Y19_N10
\INST_Program_counter|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~9_combout\ = (\INST_Program_counter|r_PROG_COUNT\(3) & (!\INST_Program_counter|Add0~7\)) # (!\INST_Program_counter|r_PROG_COUNT\(3) & ((\INST_Program_counter|Add0~7\) # (GND)))
-- \INST_Program_counter|Add0~10\ = CARRY((!\INST_Program_counter|Add0~7\) # (!\INST_Program_counter|r_PROG_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(3),
	datad => VCC,
	cin => \INST_Program_counter|Add0~7\,
	combout => \INST_Program_counter|Add0~9_combout\,
	cout => \INST_Program_counter|Add0~10\);

-- Location: LCCOMB_X26_Y19_N12
\INST_Program_counter|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~12_combout\ = (\INST_Program_counter|r_PROG_COUNT\(4) & (\INST_Program_counter|Add0~10\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(4) & (!\INST_Program_counter|Add0~10\ & VCC))
-- \INST_Program_counter|Add0~13\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(4) & !\INST_Program_counter|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(4),
	datad => VCC,
	cin => \INST_Program_counter|Add0~10\,
	combout => \INST_Program_counter|Add0~12_combout\,
	cout => \INST_Program_counter|Add0~13\);

-- Location: M9K_X25_Y17_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000380001000020C00884381C0E07038000000000A0B",
	clk0_output_clock_enable => "ena0",
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
	port_a_data_out_clock => "clock0",
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
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena0 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X27_Y21_N15
\INST_instruction_decoder|o_Address_PROG[9]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(9));

-- Location: LCCOMB_X27_Y19_N2
\INST_branch_control|o_ADDRESS[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[9]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(9),
	combout => \INST_branch_control|o_ADDRESS[9]~feeder_combout\);

-- Location: FF_X27_Y19_N3
\INST_branch_control|o_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(9));

-- Location: LCCOMB_X26_Y19_N14
\INST_Program_counter|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~15_combout\ = (\INST_Program_counter|r_PROG_COUNT\(5) & (!\INST_Program_counter|Add0~13\)) # (!\INST_Program_counter|r_PROG_COUNT\(5) & ((\INST_Program_counter|Add0~13\) # (GND)))
-- \INST_Program_counter|Add0~16\ = CARRY((!\INST_Program_counter|Add0~13\) # (!\INST_Program_counter|r_PROG_COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|r_PROG_COUNT\(5),
	datad => VCC,
	cin => \INST_Program_counter|Add0~13\,
	combout => \INST_Program_counter|Add0~15_combout\,
	cout => \INST_Program_counter|Add0~16\);

-- Location: LCCOMB_X26_Y19_N16
\INST_Program_counter|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~18_combout\ = (\INST_Program_counter|r_PROG_COUNT\(6) & (\INST_Program_counter|Add0~16\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(6) & (!\INST_Program_counter|Add0~16\ & VCC))
-- \INST_Program_counter|Add0~19\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(6) & !\INST_Program_counter|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(6),
	datad => VCC,
	cin => \INST_Program_counter|Add0~16\,
	combout => \INST_Program_counter|Add0~18_combout\,
	cout => \INST_Program_counter|Add0~19\);

-- Location: LCCOMB_X26_Y19_N18
\INST_Program_counter|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~21_combout\ = (\INST_Program_counter|r_PROG_COUNT\(7) & (!\INST_Program_counter|Add0~19\)) # (!\INST_Program_counter|r_PROG_COUNT\(7) & ((\INST_Program_counter|Add0~19\) # (GND)))
-- \INST_Program_counter|Add0~22\ = CARRY((!\INST_Program_counter|Add0~19\) # (!\INST_Program_counter|r_PROG_COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(7),
	datad => VCC,
	cin => \INST_Program_counter|Add0~19\,
	combout => \INST_Program_counter|Add0~21_combout\,
	cout => \INST_Program_counter|Add0~22\);

-- Location: LCCOMB_X26_Y19_N20
\INST_Program_counter|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~24_combout\ = (\INST_Program_counter|r_PROG_COUNT\(8) & (\INST_Program_counter|Add0~22\ $ (GND))) # (!\INST_Program_counter|r_PROG_COUNT\(8) & (!\INST_Program_counter|Add0~22\ & VCC))
-- \INST_Program_counter|Add0~25\ = CARRY((\INST_Program_counter|r_PROG_COUNT\(8) & !\INST_Program_counter|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_Program_counter|r_PROG_COUNT\(8),
	datad => VCC,
	cin => \INST_Program_counter|Add0~22\,
	combout => \INST_Program_counter|Add0~24_combout\,
	cout => \INST_Program_counter|Add0~25\);

-- Location: LCCOMB_X26_Y19_N22
\INST_Program_counter|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~27_combout\ = \INST_Program_counter|Add0~25\ $ (\INST_Program_counter|r_PROG_COUNT\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST_Program_counter|r_PROG_COUNT\(9),
	cin => \INST_Program_counter|Add0~25\,
	combout => \INST_Program_counter|Add0~27_combout\);

-- Location: LCCOMB_X26_Y19_N2
\INST_Program_counter|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~29_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(9))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(9),
	datac => \INST_Program_counter|Add0~27_combout\,
	datad => \INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_Program_counter|Add0~29_combout\);

-- Location: IOIBUF_X41_Y15_N1
\i_CORE_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_RESET,
	o => \i_CORE_RESET~input_o\);

-- Location: FF_X26_Y19_N3
\INST_Program_counter|r_PROG_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~29_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(9));

-- Location: FF_X27_Y21_N11
\INST_instruction_decoder|o_Address_PROG[8]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(8));

-- Location: LCCOMB_X27_Y18_N0
\INST_branch_control|o_ADDRESS[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[8]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(8),
	combout => \INST_branch_control|o_ADDRESS[8]~feeder_combout\);

-- Location: FF_X27_Y18_N1
\INST_branch_control|o_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(8));

-- Location: LCCOMB_X26_Y19_N28
\INST_Program_counter|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~26_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(8))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_branch_control|o_ADDRESS\(8),
	datad => \INST_Program_counter|Add0~24_combout\,
	combout => \INST_Program_counter|Add0~26_combout\);

-- Location: FF_X26_Y19_N29
\INST_Program_counter|r_PROG_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~26_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(8));

-- Location: M9K_X25_Y18_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020018000600006000004018080200010040020302",
	clk0_output_clock_enable => "ena0",
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
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
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
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena0 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: FF_X27_Y21_N31
\INST_instruction_decoder|o_Address_PROG[7]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(7));

-- Location: LCCOMB_X27_Y19_N20
\INST_branch_control|o_ADDRESS[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[7]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(7),
	combout => \INST_branch_control|o_ADDRESS[7]~feeder_combout\);

-- Location: FF_X27_Y19_N21
\INST_branch_control|o_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(7));

-- Location: LCCOMB_X27_Y19_N18
\INST_Program_counter|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~23_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(7))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(7),
	datac => \INST_branch_control|o_PC_LOAD~q\,
	datad => \INST_Program_counter|Add0~21_combout\,
	combout => \INST_Program_counter|Add0~23_combout\);

-- Location: FF_X27_Y19_N19
\INST_Program_counter|r_PROG_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~23_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(7));

-- Location: FF_X27_Y21_N25
\INST_instruction_decoder|o_Address_PROG[6]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(6));

-- Location: LCCOMB_X27_Y19_N26
\INST_branch_control|o_ADDRESS[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[6]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(6),
	combout => \INST_branch_control|o_ADDRESS[6]~feeder_combout\);

-- Location: FF_X27_Y19_N27
\INST_branch_control|o_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(6));

-- Location: LCCOMB_X27_Y19_N0
\INST_Program_counter|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~20_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(6))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_ADDRESS\(6),
	datab => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_Program_counter|Add0~18_combout\,
	combout => \INST_Program_counter|Add0~20_combout\);

-- Location: FF_X27_Y19_N1
\INST_Program_counter|r_PROG_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~20_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(6));

-- Location: FF_X28_Y21_N7
\INST_instruction_decoder|o_Address_PROG[5]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(5));

-- Location: LCCOMB_X27_Y19_N28
\INST_branch_control|o_ADDRESS[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[5]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(5),
	combout => \INST_branch_control|o_ADDRESS[5]~feeder_combout\);

-- Location: FF_X27_Y19_N29
\INST_branch_control|o_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(5));

-- Location: LCCOMB_X26_Y19_N26
\INST_Program_counter|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~17_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(5))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(5),
	datac => \INST_Program_counter|Add0~15_combout\,
	datad => \INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_Program_counter|Add0~17_combout\);

-- Location: FF_X26_Y19_N27
\INST_Program_counter|r_PROG_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~17_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(5));

-- Location: FF_X28_Y21_N13
\INST_instruction_decoder|o_Address_PROG[4]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(4));

-- Location: LCCOMB_X27_Y19_N22
\INST_branch_control|o_ADDRESS[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[4]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(4),
	combout => \INST_branch_control|o_ADDRESS[4]~feeder_combout\);

-- Location: FF_X27_Y19_N23
\INST_branch_control|o_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(4));

-- Location: LCCOMB_X27_Y19_N30
\INST_Program_counter|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~14_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & ((\INST_branch_control|o_ADDRESS\(4)))) # (!\INST_branch_control|o_PC_LOAD~q\ & (\INST_Program_counter|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_Program_counter|Add0~12_combout\,
	datab => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_branch_control|o_ADDRESS\(4),
	combout => \INST_Program_counter|Add0~14_combout\);

-- Location: FF_X27_Y19_N31
\INST_Program_counter|r_PROG_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~14_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(4));

-- Location: FF_X27_Y21_N17
\INST_instruction_decoder|o_Address_PROG[3]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(3));

-- Location: LCCOMB_X24_Y19_N8
\INST_branch_control|o_ADDRESS[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[3]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(3),
	combout => \INST_branch_control|o_ADDRESS[3]~feeder_combout\);

-- Location: FF_X24_Y19_N9
\INST_branch_control|o_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(3));

-- Location: LCCOMB_X26_Y19_N0
\INST_Program_counter|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~11_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(3))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_branch_control|o_ADDRESS\(3),
	datad => \INST_Program_counter|Add0~9_combout\,
	combout => \INST_Program_counter|Add0~11_combout\);

-- Location: FF_X26_Y19_N1
\INST_Program_counter|r_PROG_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~11_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(3));

-- Location: FF_X27_Y21_N5
\INST_instruction_decoder|o_Address_PROG[2]\ : dffeas
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
	q => \INST_instruction_decoder|o_Address_PROG\(2));

-- Location: FF_X26_Y21_N7
\INST_branch_control|o_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_Address_PROG\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(2));

-- Location: LCCOMB_X26_Y19_N30
\INST_Program_counter|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~8_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(2))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_ADDRESS\(2),
	datac => \INST_Program_counter|Add0~6_combout\,
	datad => \INST_branch_control|o_PC_LOAD~q\,
	combout => \INST_Program_counter|Add0~8_combout\);

-- Location: FF_X26_Y19_N31
\INST_Program_counter|r_PROG_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~8_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(2));

-- Location: M9K_X25_Y19_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002010000000C02038180000000000000000000000",
	clk0_output_clock_enable => "ena0",
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
	port_a_data_out_clock => "clock0",
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
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena0 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N18
\INST_instruction_decoder|o_Address_PROG[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_Address_PROG[1]~feeder_combout\ = \INST_InstrucReg|r_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(4),
	combout => \INST_instruction_decoder|o_Address_PROG[1]~feeder_combout\);

-- Location: FF_X24_Y19_N19
\INST_instruction_decoder|o_Address_PROG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_Address_PROG[1]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_PROG\(1));

-- Location: LCCOMB_X24_Y19_N2
\INST_branch_control|o_ADDRESS[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|o_ADDRESS[1]~feeder_combout\ = \INST_instruction_decoder|o_Address_PROG\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_Address_PROG\(1),
	combout => \INST_branch_control|o_ADDRESS[1]~feeder_combout\);

-- Location: FF_X24_Y19_N3
\INST_branch_control|o_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|o_ADDRESS[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(1));

-- Location: LCCOMB_X26_Y19_N24
\INST_Program_counter|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~5_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & (\INST_branch_control|o_ADDRESS\(1))) # (!\INST_branch_control|o_PC_LOAD~q\ & ((\INST_Program_counter|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_branch_control|o_ADDRESS\(1),
	datad => \INST_Program_counter|Add0~3_combout\,
	combout => \INST_Program_counter|Add0~5_combout\);

-- Location: FF_X26_Y19_N25
\INST_Program_counter|r_PROG_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~5_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(1));

-- Location: LCCOMB_X29_Y19_N30
\INST_instruction_decoder|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux1~0_combout\ = (\INST_InstrucReg|r_register\(30) & (\INST_InstrucReg|r_register\(31) & !\INST_InstrucReg|r_register\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(30),
	datac => \INST_InstrucReg|r_register\(31),
	datad => \INST_InstrucReg|r_register\(29),
	combout => \INST_instruction_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y19_N4
\INST_instruction_decoder|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux3~0_combout\ = (\INST_instruction_decoder|Mux1~0_combout\ & (!\INST_InstrucReg|r_register\(28) & \INST_InstrucReg|r_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|Mux1~0_combout\,
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(0),
	combout => \INST_instruction_decoder|Mux3~0_combout\);

-- Location: FF_X29_Y19_N5
\INST_instruction_decoder|o_BRANCH_CONTROL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux3~0_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(0));

-- Location: LCCOMB_X29_Y22_N20
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

-- Location: FF_X29_Y22_N21
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

-- Location: LCCOMB_X29_Y19_N6
\INST_instruction_decoder|o_OPCODE[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_OPCODE[1]~feeder_combout\ = \INST_InstrucReg|r_register\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(29),
	combout => \INST_instruction_decoder|o_OPCODE[1]~feeder_combout\);

-- Location: FF_X29_Y19_N7
\INST_instruction_decoder|o_OPCODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_OPCODE[1]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(1));

-- Location: LCCOMB_X27_Y20_N14
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

-- Location: FF_X27_Y20_N15
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

-- Location: LCCOMB_X29_Y22_N6
\INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\ = \INST_ALU|r_ALU_Result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_ALU|r_ALU_Result\(7),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X29_Y22_N7
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

-- Location: M9K_X25_Y20_N0
\INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000381D8038610800422100000000000083311044000",
	clk0_output_clock_enable => "ena0",
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
	port_a_data_out_clock => "clock0",
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
	clk0 => \i_CORE_CLK~inputclkctrl_outclk\,
	ena0 => \INST_control_unit|ALT_INV_r_state\(0),
	portaaddr => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \INST_PROGRAM_MEMORY|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y20_N6
\INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\ = \INST_InstrucReg|r_register\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(13),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[2]~feeder_combout\);

-- Location: FF_X26_Y20_N7
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

-- Location: LCCOMB_X26_Y20_N14
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

-- Location: FF_X26_Y20_N15
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

-- Location: FF_X26_Y20_N25
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

-- Location: FF_X26_Y20_N27
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

-- Location: LCCOMB_X26_Y20_N8
\INST_instruction_decoder|o_REGISTER_C[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\ = \INST_InstrucReg|r_register\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(24),
	combout => \INST_instruction_decoder|o_REGISTER_C[1]~feeder_combout\);

-- Location: FF_X26_Y20_N9
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

-- Location: FF_X26_Y20_N29
\INST_GPR|r_REGISTER_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(3));

-- Location: LCCOMB_X26_Y20_N26
\INST_GPR|r_REGISTER~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~19_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(2) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(4) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(3))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(2) & 
-- (!\INST_GPR|r_REGISTER_rtl_1_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(4) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(2),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(1),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(4),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(3),
	combout => \INST_GPR|r_REGISTER~19_combout\);

-- Location: LCCOMB_X29_Y19_N18
\INST_instruction_decoder|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux0~0_combout\ = ((\INST_InstrucReg|r_register\(31) & ((\INST_InstrucReg|r_register\(29)))) # (!\INST_InstrucReg|r_register\(31) & ((!\INST_InstrucReg|r_register\(29)) # (!\INST_InstrucReg|r_register\(28))))) # 
-- (!\INST_InstrucReg|r_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_InstrucReg|r_register\(30),
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(31),
	datad => \INST_InstrucReg|r_register\(29),
	combout => \INST_instruction_decoder|Mux0~0_combout\);

-- Location: FF_X29_Y19_N19
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

-- Location: LCCOMB_X27_Y19_N6
\INST_GPR|r_REGISTER~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~38_combout\ = (\INST_control_unit|r_state\(5) & \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_control_unit|r_state\(5),
	datad => \INST_instruction_decoder|o_REGISTER_C_WRITE_ENABLE~q\,
	combout => \INST_GPR|r_REGISTER~38_combout\);

-- Location: LCCOMB_X26_Y20_N30
\INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\ = \INST_GPR|r_REGISTER~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_GPR|r_REGISTER~38_combout\,
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X26_Y20_N31
\INST_GPR|r_REGISTER_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(0));

-- Location: FF_X26_Y20_N1
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

-- Location: LCCOMB_X24_Y19_N0
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

-- Location: FF_X24_Y19_N1
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

-- Location: LCCOMB_X27_Y20_N16
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

-- Location: FF_X27_Y20_N17
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

-- Location: LCCOMB_X26_Y20_N0
\INST_GPR|r_REGISTER~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~21_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(0) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(10) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(0),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(10),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(9),
	combout => \INST_GPR|r_REGISTER~21_combout\);

-- Location: LCCOMB_X26_Y20_N16
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

-- Location: FF_X26_Y20_N17
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

-- Location: LCCOMB_X24_Y20_N12
\INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(3),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\);

-- Location: FF_X24_Y20_N13
\INST_GPR|r_REGISTER_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(7));

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

-- Location: FF_X24_Y20_N3
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

-- Location: LCCOMB_X24_Y20_N26
\INST_instruction_decoder|o_REGISTER_C[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\ = \INST_InstrucReg|r_register\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(25),
	combout => \INST_instruction_decoder|o_REGISTER_C[2]~feeder_combout\);

-- Location: FF_X24_Y20_N27
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

-- Location: FF_X24_Y20_N7
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

-- Location: LCCOMB_X24_Y20_N2
\INST_GPR|r_REGISTER~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~20_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(7) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(8) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(6) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(5))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(7) & 
-- (!\INST_GPR|r_REGISTER_rtl_1_bypass\(8) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(6) $ (!\INST_GPR|r_REGISTER_rtl_1_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(7),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(6),
	datac => \INST_GPR|r_REGISTER_rtl_1_bypass\(8),
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(5),
	combout => \INST_GPR|r_REGISTER~20_combout\);

-- Location: LCCOMB_X26_Y20_N24
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

-- Location: LCCOMB_X24_Y22_N12
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

-- Location: LCCOMB_X29_Y22_N26
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

-- Location: FF_X29_Y22_N27
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

-- Location: LCCOMB_X29_Y22_N24
\INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\ = \INST_ALU|r_ALU_Result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_ALU|r_ALU_Result\(1),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X29_Y22_N25
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

-- Location: LCCOMB_X26_Y20_N10
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

-- Location: FF_X26_Y20_N11
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

-- Location: FF_X26_Y20_N19
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

-- Location: FF_X26_Y20_N23
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

-- Location: FF_X26_Y20_N21
\INST_GPR|r_REGISTER_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_REGISTER_C\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(3));

-- Location: LCCOMB_X26_Y20_N22
\INST_GPR|r_REGISTER~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~14_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(2) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(4) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(3))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(2) & 
-- (!\INST_GPR|r_REGISTER_rtl_0_bypass\(1) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(4) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(2),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(1),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(4),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(3),
	combout => \INST_GPR|r_REGISTER~14_combout\);

-- Location: LCCOMB_X24_Y20_N18
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

-- Location: FF_X24_Y20_N19
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

-- Location: FF_X24_Y20_N17
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

-- Location: LCCOMB_X24_Y20_N0
\INST_GPR|r_REGISTER_rtl_0_bypass[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[0]~feeder_combout\ = \INST_GPR|r_REGISTER~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_GPR|r_REGISTER~38_combout\,
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\INST_GPR|r_REGISTER_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(0));

-- Location: LCCOMB_X24_Y20_N16
\INST_GPR|r_REGISTER~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~16_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(0) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(9) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(9),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(10),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(0),
	combout => \INST_GPR|r_REGISTER~16_combout\);

-- Location: LCCOMB_X24_Y22_N22
\INST_GPR|r_REGISTER_rtl_0_bypass[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[6]~feeder_combout\ = \INST_InstrucReg|r_register\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(20),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X24_Y22_N23
\INST_GPR|r_REGISTER_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[6]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(6));

-- Location: LCCOMB_X24_Y22_N0
\INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(2),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\INST_GPR|r_REGISTER_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(5));

-- Location: FF_X24_Y22_N17
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

-- Location: LCCOMB_X24_Y22_N2
\INST_GPR|r_REGISTER_rtl_0_bypass[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[7]~feeder_combout\ = \INST_instruction_decoder|o_REGISTER_C\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_instruction_decoder|o_REGISTER_C\(3),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X24_Y22_N3
\INST_GPR|r_REGISTER_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(7));

-- Location: LCCOMB_X24_Y22_N16
\INST_GPR|r_REGISTER~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~15_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(6) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(5) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(8) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(7))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(6) & 
-- (!\INST_GPR|r_REGISTER_rtl_0_bypass\(5) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(8) $ (!\INST_GPR|r_REGISTER_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(6),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(5),
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(8),
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(7),
	combout => \INST_GPR|r_REGISTER~15_combout\);

-- Location: LCCOMB_X26_Y20_N18
\INST_GPR|r_REGISTER~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~17_combout\ = (\INST_GPR|r_REGISTER~14_combout\ & (\INST_GPR|r_REGISTER~16_combout\ & \INST_GPR|r_REGISTER~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~14_combout\,
	datab => \INST_GPR|r_REGISTER~16_combout\,
	datad => \INST_GPR|r_REGISTER~15_combout\,
	combout => \INST_GPR|r_REGISTER~17_combout\);

-- Location: LCCOMB_X29_Y22_N16
\INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\ = \INST_ALU|r_ALU_Result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(2),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X29_Y22_N17
\INST_GPR|r_REGISTER_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(15));

-- Location: LCCOMB_X28_Y22_N24
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

-- Location: FF_X28_Y22_N25
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

-- Location: LCCOMB_X28_Y22_N30
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

-- Location: FF_X28_Y22_N31
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

-- Location: LCCOMB_X32_Y21_N16
\INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\ = \INST_ALU|r_ALU_Result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(3),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X32_Y21_N17
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

-- Location: FF_X29_Y22_N11
\INST_GPR|r_REGISTER_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(19));

-- Location: LCCOMB_X29_Y22_N0
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

-- Location: FF_X29_Y22_N1
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

-- Location: LCCOMB_X30_Y21_N2
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

-- Location: FF_X30_Y21_N3
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

-- Location: LCCOMB_X30_Y21_N8
\INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\ = \INST_ALU|r_ALU_Result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(5),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X30_Y21_N9
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

-- Location: FF_X28_Y21_N3
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

-- Location: LCCOMB_X30_Y20_N26
\INST_ALU|r_ALU_Result[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(1)) # (\INST_instruction_decoder|o_OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|r_ALU_Result[5]~11_combout\);

-- Location: FF_X26_Y21_N27
\INST_GPR|r_REGISTER_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(23));

-- Location: M9K_X25_Y21_N0
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

-- Location: LCCOMB_X27_Y22_N30
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

-- Location: FF_X27_Y22_N31
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

-- Location: LCCOMB_X27_Y21_N0
\INST_GPR|r_REGISTER~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~34_combout\ = (\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(23))) # (!\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_1_bypass\(24) & ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\))) 
-- # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(24) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(23),
	datab => \INST_GPR|r_REGISTER~22_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a6\,
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(24),
	combout => \INST_GPR|r_REGISTER~34_combout\);

-- Location: LCCOMB_X27_Y20_N22
\r_register_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register_enable~0_combout\ = (\INST_control_unit|r_state\(2)) # (\INST_control_unit|r_state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datad => \INST_control_unit|r_state\(5),
	combout => \r_register_enable~0_combout\);

-- Location: FF_X27_Y21_N1
\INST_GPR|o_GPR_ALU_data_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~34_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(6));

-- Location: FF_X27_Y21_N21
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

-- Location: LCCOMB_X27_Y21_N10
\INST_B_imm_multiplexer|o_DATA[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[6]~4_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(8)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(6),
	datac => \INST_instruction_decoder|o_Address_PROG\(8),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\);

-- Location: LCCOMB_X29_Y22_N22
\INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\ = \INST_ALU|r_ALU_Result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(6),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X29_Y22_N23
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

-- Location: LCCOMB_X29_Y22_N8
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

-- Location: FF_X29_Y22_N9
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

-- Location: M9K_X25_Y22_N0
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

-- Location: LCCOMB_X29_Y22_N30
\INST_GPR|r_REGISTER~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~27_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(24) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(23))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(24) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(23),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(24),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a6\,
	combout => \INST_GPR|r_REGISTER~27_combout\);

-- Location: FF_X29_Y22_N31
\INST_GPR|o_GPR_ALU_data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~27_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(6));

-- Location: LCCOMB_X30_Y20_N24
\INST_ALU|r_ALU_Result[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~12_combout\ = (\INST_instruction_decoder|o_OPCODE\(3)) # ((!\INST_instruction_decoder|o_OPCODE\(1) & \INST_instruction_decoder|o_OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|r_ALU_Result[5]~12_combout\);

-- Location: LCCOMB_X30_Y20_N16
\INST_ALU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~0_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_ALU|r_ALU_Result[5]~12_combout\ & ((\INST_ALU|r_ALU_Result[5]~11_combout\) # (\INST_B_imm_multiplexer|o_DATA[6]~4_combout\)))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- (\INST_ALU|r_ALU_Result[5]~12_combout\ & ((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\) # (!\INST_ALU|r_ALU_Result[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result[5]~11_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_ALU|r_ALU_Result[5]~12_combout\,
	combout => \INST_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y20_N12
\INST_ALU|r_ALU_Result[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~13_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(0)) # (\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|r_ALU_Result[5]~13_combout\);

-- Location: LCCOMB_X27_Y19_N24
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

-- Location: FF_X27_Y19_N25
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

-- Location: LCCOMB_X30_Y21_N28
\INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\ = \INST_ALU|r_ALU_Result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(5),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X30_Y21_N29
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

-- Location: LCCOMB_X27_Y21_N8
\INST_GPR|r_REGISTER~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~35_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(22) & ((\INST_GPR|r_REGISTER~22_combout\ & ((\INST_GPR|r_REGISTER_rtl_1_bypass\(21)))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- (\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\)))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(22) & (((\INST_GPR|r_REGISTER_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(22),
	datab => \INST_GPR|r_REGISTER~22_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a5\,
	datad => \INST_GPR|r_REGISTER_rtl_1_bypass\(21),
	combout => \INST_GPR|r_REGISTER~35_combout\);

-- Location: FF_X27_Y21_N9
\INST_GPR|o_GPR_ALU_data_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~35_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(5));

-- Location: LCCOMB_X27_Y21_N30
\INST_B_imm_multiplexer|o_DATA[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[5]~5_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(7)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_B\(5),
	datac => \INST_instruction_decoder|o_Address_PROG\(7),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\);

-- Location: FF_X26_Y21_N3
\INST_GPR|r_REGISTER_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(19));

-- Location: LCCOMB_X30_Y21_N10
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

-- Location: FF_X30_Y21_N11
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

-- Location: LCCOMB_X27_Y21_N6
\INST_GPR|r_REGISTER~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~36_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(20) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(19))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(20) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(19),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(20),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a4\,
	combout => \INST_GPR|r_REGISTER~36_combout\);

-- Location: FF_X27_Y21_N7
\INST_GPR|o_GPR_ALU_data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~36_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(4));

-- Location: LCCOMB_X27_Y21_N16
\INST_B_imm_multiplexer|o_DATA[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[4]~6_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(4),
	datab => \INST_instruction_decoder|o_Address_PROG\(6),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\);

-- Location: LCCOMB_X26_Y21_N10
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

-- Location: FF_X26_Y21_N11
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

-- Location: FF_X29_Y21_N17
\INST_GPR|r_REGISTER_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(17));

-- Location: LCCOMB_X26_Y21_N8
\INST_GPR|r_REGISTER~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~29_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(18) & ((\INST_GPR|r_REGISTER~17_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(17)))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- (\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\)))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(18) & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(18),
	datab => \INST_GPR|r_REGISTER~17_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a3\,
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(17),
	combout => \INST_GPR|r_REGISTER~29_combout\);

-- Location: FF_X26_Y21_N9
\INST_GPR|o_GPR_ALU_data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~29_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(3));

-- Location: LCCOMB_X29_Y22_N2
\INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\ = \INST_ALU|r_ALU_Result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(2),
	combout => \INST_GPR|r_REGISTER_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X29_Y22_N3
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

-- Location: LCCOMB_X28_Y22_N14
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

-- Location: FF_X28_Y22_N15
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

-- Location: LCCOMB_X29_Y22_N14
\INST_GPR|r_REGISTER~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~30_combout\ = (\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(15))) # (!\INST_GPR|r_REGISTER~17_combout\ & ((\INST_GPR|r_REGISTER_rtl_0_bypass\(16) & ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\))) 
-- # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(16) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER~17_combout\,
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(15),
	datac => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a2\,
	datad => \INST_GPR|r_REGISTER_rtl_0_bypass\(16),
	combout => \INST_GPR|r_REGISTER~30_combout\);

-- Location: FF_X29_Y22_N15
\INST_GPR|o_GPR_ALU_data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~30_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(2));

-- Location: LCCOMB_X32_Y20_N0
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

-- Location: FF_X32_Y20_N1
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

-- Location: FF_X30_Y21_N21
\INST_GPR|r_REGISTER_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_1_bypass\(13));

-- Location: LCCOMB_X27_Y21_N22
\INST_GPR|r_REGISTER~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~26_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(14) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(13))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(14) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(14),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(13),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a1\,
	combout => \INST_GPR|r_REGISTER~26_combout\);

-- Location: FF_X27_Y21_N23
\INST_GPR|o_GPR_ALU_data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~26_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(1));

-- Location: LCCOMB_X27_Y21_N24
\INST_B_imm_multiplexer|o_DATA[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[1]~1_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(3))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(3),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_GPR|o_GPR_ALU_data_B\(1),
	combout => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\);

-- Location: LCCOMB_X26_Y20_N12
\INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\ = \INST_ALU|r_ALU_Result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_ALU|r_ALU_Result\(0),
	combout => \INST_GPR|r_REGISTER_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X26_Y20_N13
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

-- Location: LCCOMB_X31_Y20_N18
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

-- Location: FF_X31_Y20_N19
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

-- Location: LCCOMB_X27_Y21_N26
\INST_GPR|r_REGISTER~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~23_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(12) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(11))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(12) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(11),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(12),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \INST_GPR|r_REGISTER~23_combout\);

-- Location: FF_X27_Y21_N27
\INST_GPR|o_GPR_ALU_data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~23_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(0));

-- Location: LCCOMB_X27_Y21_N2
\INST_B_imm_multiplexer|o_DATA[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[0]~0_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(2)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(0),
	datac => \INST_instruction_decoder|o_Address_PROG\(2),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\);

-- Location: LCCOMB_X30_Y21_N6
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

-- Location: FF_X30_Y21_N7
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

-- Location: FF_X30_Y21_N17
\INST_GPR|r_REGISTER_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(11));

-- Location: LCCOMB_X30_Y21_N4
\INST_GPR|r_REGISTER~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~18_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(12) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(11))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(12) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(12),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(11),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \INST_GPR|r_REGISTER~18_combout\);

-- Location: FF_X30_Y21_N5
\INST_GPR|o_GPR_ALU_data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~18_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(0));

-- Location: LCCOMB_X28_Y20_N8
\INST_ALU|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~1_cout\ = CARRY((!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_GPR|o_GPR_ALU_data_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datad => VCC,
	cout => \INST_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X28_Y20_N10
\INST_ALU|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~3_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((!\INST_ALU|LessThan0~1_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(1)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(1) & 
-- !\INST_ALU|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => VCC,
	cin => \INST_ALU|LessThan0~1_cout\,
	cout => \INST_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X28_Y20_N12
\INST_ALU|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~5_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2) & !\INST_ALU|LessThan0~3_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2)) # 
-- (!\INST_ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_ALU|LessThan0~3_cout\,
	cout => \INST_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X28_Y20_N14
\INST_ALU|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~7_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((!\INST_ALU|LessThan0~5_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(3)))) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(3) & 
-- !\INST_ALU|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => VCC,
	cin => \INST_ALU|LessThan0~5_cout\,
	cout => \INST_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X28_Y20_N16
\INST_ALU|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~9_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(4) & ((!\INST_ALU|LessThan0~7_cout\) # (!\INST_B_imm_multiplexer|o_DATA[4]~6_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(4) & (!\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & 
-- !\INST_ALU|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan0~7_cout\,
	cout => \INST_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X28_Y20_N18
\INST_ALU|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~11_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((!\INST_ALU|LessThan0~9_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(5) & 
-- !\INST_ALU|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_ALU|LessThan0~9_cout\,
	cout => \INST_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X28_Y20_N20
\INST_ALU|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~13_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6) & !\INST_ALU|LessThan0~11_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6)) # 
-- (!\INST_ALU|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => VCC,
	cin => \INST_ALU|LessThan0~11_cout\,
	cout => \INST_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X28_Y20_N22
\INST_ALU|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan0~14_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(7) & ((\INST_ALU|LessThan0~13_cout\) # (!\INST_B_imm_multiplexer|o_DATA[7]~3_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(7) & (\INST_ALU|LessThan0~13_cout\ & 
-- !\INST_B_imm_multiplexer|o_DATA[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	cin => \INST_ALU|LessThan0~13_cout\,
	combout => \INST_ALU|LessThan0~14_combout\);

-- Location: LCCOMB_X29_Y22_N18
\INST_ALU|r_ALU_Result[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~14_combout\ = (\INST_instruction_decoder|o_OPCODE\(1)) # (!\INST_instruction_decoder|o_OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|r_ALU_Result[5]~14_combout\);

-- Location: LCCOMB_X28_Y20_N30
\INST_ALU|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~3_combout\ = (\INST_ALU|r_ALU_Result[5]~13_combout\ & (((\INST_ALU|LessThan0~14_combout\) # (\INST_ALU|r_ALU_Result[5]~14_combout\)))) # (!\INST_ALU|r_ALU_Result[5]~13_combout\ & (\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & 
-- ((!\INST_ALU|r_ALU_Result[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datab => \INST_ALU|r_ALU_Result[5]~13_combout\,
	datac => \INST_ALU|LessThan0~14_combout\,
	datad => \INST_ALU|r_ALU_Result[5]~14_combout\,
	combout => \INST_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y21_N4
\INST_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~0_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ (VCC))) # (!\INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & VCC))
-- \INST_ALU|Add0~1\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(0) & \INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	combout => \INST_ALU|Add0~0_combout\,
	cout => \INST_ALU|Add0~1\);

-- Location: LCCOMB_X29_Y21_N6
\INST_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_ALU|Add0~1\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_ALU|Add0~1\)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_ALU|Add0~1\)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_ALU|Add0~1\) # (GND)))))
-- \INST_ALU|Add0~3\ = CARRY((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_ALU|Add0~1\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((!\INST_ALU|Add0~1\) # (!\INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => VCC,
	cin => \INST_ALU|Add0~1\,
	combout => \INST_ALU|Add0~2_combout\,
	cout => \INST_ALU|Add0~3\);

-- Location: LCCOMB_X29_Y21_N8
\INST_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~4_combout\ = ((\INST_GPR|o_GPR_ALU_data_A\(2) $ (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ $ (!\INST_ALU|Add0~3\)))) # (GND)
-- \INST_ALU|Add0~5\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(2) & ((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\) # (!\INST_ALU|Add0~3\))) # (!\INST_GPR|o_GPR_ALU_data_A\(2) & (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & !\INST_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => VCC,
	cin => \INST_ALU|Add0~3\,
	combout => \INST_ALU|Add0~4_combout\,
	cout => \INST_ALU|Add0~5\);

-- Location: LCCOMB_X29_Y21_N10
\INST_ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~6_combout\ = (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_ALU|Add0~5\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_ALU|Add0~5\)))) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(3) & (!\INST_ALU|Add0~5\)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_ALU|Add0~5\) # (GND)))))
-- \INST_ALU|Add0~7\ = CARRY((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_ALU|Add0~5\)) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((!\INST_ALU|Add0~5\) # (!\INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => VCC,
	cin => \INST_ALU|Add0~5\,
	combout => \INST_ALU|Add0~6_combout\,
	cout => \INST_ALU|Add0~7\);

-- Location: LCCOMB_X29_Y21_N12
\INST_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~8_combout\ = ((\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(4) $ (!\INST_ALU|Add0~7\)))) # (GND)
-- \INST_ALU|Add0~9\ = CARRY((\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)) # (!\INST_ALU|Add0~7\))) # (!\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4) & !\INST_ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => VCC,
	cin => \INST_ALU|Add0~7\,
	combout => \INST_ALU|Add0~8_combout\,
	cout => \INST_ALU|Add0~9\);

-- Location: LCCOMB_X29_Y21_N14
\INST_ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_ALU|Add0~9\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add0~9\)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add0~9\)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & ((\INST_ALU|Add0~9\) # (GND)))))
-- \INST_ALU|Add0~11\ = CARRY((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(5) & !\INST_ALU|Add0~9\)) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((!\INST_ALU|Add0~9\) # (!\INST_GPR|o_GPR_ALU_data_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_ALU|Add0~9\,
	combout => \INST_ALU|Add0~10_combout\,
	cout => \INST_ALU|Add0~11\);

-- Location: LCCOMB_X29_Y21_N16
\INST_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~12_combout\ = ((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ $ (\INST_GPR|o_GPR_ALU_data_A\(6) $ (!\INST_ALU|Add0~11\)))) # (GND)
-- \INST_ALU|Add0~13\ = CARRY((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6)) # (!\INST_ALU|Add0~11\))) # (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6) & !\INST_ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => VCC,
	cin => \INST_ALU|Add0~11\,
	combout => \INST_ALU|Add0~12_combout\,
	cout => \INST_ALU|Add0~13\);

-- Location: LCCOMB_X30_Y20_N2
\INST_ALU|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\) # (!\INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- ((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	combout => \INST_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y21_N12
\INST_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~0_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0) & ((GND) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ (GND)))
-- \INST_ALU|Add1~1\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(0)) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => VCC,
	combout => \INST_ALU|Add1~0_combout\,
	cout => \INST_ALU|Add1~1\);

-- Location: LCCOMB_X30_Y21_N14
\INST_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~2_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_ALU|Add1~1\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|Add1~1\ & VCC)))) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & 
-- ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_ALU|Add1~1\) # (GND))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_ALU|Add1~1\))))
-- \INST_ALU|Add1~3\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_ALU|Add1~1\)) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\) # (!\INST_ALU|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~1\,
	combout => \INST_ALU|Add1~2_combout\,
	cout => \INST_ALU|Add1~3\);

-- Location: LCCOMB_X30_Y21_N16
\INST_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~4_combout\ = ((\INST_GPR|o_GPR_ALU_data_A\(2) $ (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ $ (\INST_ALU|Add1~3\)))) # (GND)
-- \INST_ALU|Add1~5\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(2) & ((!\INST_ALU|Add1~3\) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(2) & (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & !\INST_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(2),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~3\,
	combout => \INST_ALU|Add1~4_combout\,
	cout => \INST_ALU|Add1~5\);

-- Location: LCCOMB_X30_Y21_N18
\INST_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~6_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_ALU|Add1~5\)) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|Add1~5\ & VCC)))) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & 
-- ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_ALU|Add1~5\) # (GND))) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_ALU|Add1~5\))))
-- \INST_ALU|Add1~7\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(3) & (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & !\INST_ALU|Add1~5\)) # (!\INST_GPR|o_GPR_ALU_data_A\(3) & ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # (!\INST_ALU|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~5\,
	combout => \INST_ALU|Add1~6_combout\,
	cout => \INST_ALU|Add1~7\);

-- Location: LCCOMB_X30_Y21_N20
\INST_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~8_combout\ = ((\INST_GPR|o_GPR_ALU_data_A\(4) $ (\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ $ (\INST_ALU|Add1~7\)))) # (GND)
-- \INST_ALU|Add1~9\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(4) & ((!\INST_ALU|Add1~7\) # (!\INST_B_imm_multiplexer|o_DATA[4]~6_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(4) & (!\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & !\INST_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~7\,
	combout => \INST_ALU|Add1~8_combout\,
	cout => \INST_ALU|Add1~9\);

-- Location: LCCOMB_X30_Y21_N22
\INST_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add1~9\)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & ((\INST_ALU|Add1~9\) # (GND))))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_ALU|Add1~9\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|Add1~9\))))
-- \INST_ALU|Add1~11\ = CARRY((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((!\INST_ALU|Add1~9\) # (!\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(5) & !\INST_ALU|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => VCC,
	cin => \INST_ALU|Add1~9\,
	combout => \INST_ALU|Add1~10_combout\,
	cout => \INST_ALU|Add1~11\);

-- Location: LCCOMB_X30_Y21_N24
\INST_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~12_combout\ = ((\INST_GPR|o_GPR_ALU_data_A\(6) $ (\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ $ (\INST_ALU|Add1~11\)))) # (GND)
-- \INST_ALU|Add1~13\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(6) & ((!\INST_ALU|Add1~11\) # (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & !\INST_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datad => VCC,
	cin => \INST_ALU|Add1~11\,
	combout => \INST_ALU|Add1~12_combout\,
	cout => \INST_ALU|Add1~13\);

-- Location: LCCOMB_X29_Y21_N24
\INST_ALU|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux1~1_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux1~1_combout\ & ((\INST_ALU|Add1~12_combout\))) # (!\INST_ALU|Mux1~1_combout\ & 
-- (\INST_ALU|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|Add0~12_combout\,
	datac => \INST_ALU|Mux1~1_combout\,
	datad => \INST_ALU|Add1~12_combout\,
	combout => \INST_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y21_N6
\INST_ALU|ShiftLeft1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft1~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_GPR|o_GPR_ALU_data_A\(6),
	combout => \INST_ALU|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X28_Y21_N12
\INST_ALU|ShiftLeft1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft1~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X27_Y21_N28
\INST_ALU|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal2~0_combout\ = (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & (!\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & !\INST_B_imm_multiplexer|o_DATA[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	combout => \INST_ALU|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\INST_ALU|r_ALU_Result[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~15_combout\ = (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # ((\INST_instruction_decoder|o_OPCODE\(0)) # ((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\) # (!\INST_ALU|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Equal2~0_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	combout => \INST_ALU|r_ALU_Result[5]~15_combout\);

-- Location: LCCOMB_X29_Y20_N6
\INST_ALU|r_ALU_Result[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~20_combout\ = \INST_instruction_decoder|o_OPCODE\(0) $ (((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\) # ((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\) # (!\INST_ALU|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|r_ALU_Result[5]~20_combout\);

-- Location: LCCOMB_X28_Y20_N26
\INST_ALU|ShiftLeft0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~1_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

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
	combout => \INST_ALU|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X28_Y20_N28
\INST_ALU|ShiftLeft0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~2_combout\ = (\INST_ALU|ShiftLeft0~1_combout\) # ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1) & !\INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_ALU|ShiftLeft0~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X28_Y20_N0
\INST_ALU|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~4_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|Equal2~0_combout\ & \INST_ALU|ShiftLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_ALU|Equal2~0_combout\,
	datad => \INST_ALU|ShiftLeft0~2_combout\,
	combout => \INST_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X30_Y19_N30
\INST_ALU|ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~11_combout\ = (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(7),
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftRight0~11_combout\);

-- Location: LCCOMB_X28_Y21_N28
\INST_ALU|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal2~1_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & \INST_ALU|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y20_N24
\INST_ALU|r_ALU_Result[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~16_combout\ = (\INST_instruction_decoder|o_OPCODE\(0)) # ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|r_ALU_Result[5]~16_combout\);

-- Location: LCCOMB_X28_Y20_N2
\INST_ALU|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~5_combout\ = (\INST_ALU|r_ALU_Result[5]~20_combout\ & ((\INST_ALU|r_ALU_Result[5]~16_combout\ & ((\INST_ALU|ShiftRight0~11_combout\))) # (!\INST_ALU|r_ALU_Result[5]~16_combout\ & (\INST_ALU|Mux1~4_combout\)))) # 
-- (!\INST_ALU|r_ALU_Result[5]~20_combout\ & (((!\INST_ALU|r_ALU_Result[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result[5]~20_combout\,
	datab => \INST_ALU|Mux1~4_combout\,
	datac => \INST_ALU|ShiftRight0~11_combout\,
	datad => \INST_ALU|r_ALU_Result[5]~16_combout\,
	combout => \INST_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X28_Y20_N24
\INST_ALU|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~6_combout\ = (\INST_ALU|r_ALU_Result[5]~15_combout\ & (((\INST_ALU|Mux1~5_combout\)))) # (!\INST_ALU|r_ALU_Result[5]~15_combout\ & ((\INST_ALU|Mux1~5_combout\ & (\INST_ALU|ShiftLeft1~1_combout\)) # (!\INST_ALU|Mux1~5_combout\ & 
-- ((\INST_ALU|ShiftLeft1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft1~1_combout\,
	datab => \INST_ALU|ShiftLeft1~0_combout\,
	datac => \INST_ALU|r_ALU_Result[5]~15_combout\,
	datad => \INST_ALU|Mux1~5_combout\,
	combout => \INST_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X28_Y20_N6
\INST_ALU|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~7_combout\ = (\INST_ALU|Mux1~3_combout\ & (((\INST_ALU|Mux1~6_combout\)) # (!\INST_ALU|r_ALU_Result[5]~14_combout\))) # (!\INST_ALU|Mux1~3_combout\ & (\INST_ALU|r_ALU_Result[5]~14_combout\ & (\INST_ALU|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux1~3_combout\,
	datab => \INST_ALU|r_ALU_Result[5]~14_combout\,
	datac => \INST_ALU|Mux1~2_combout\,
	datad => \INST_ALU|Mux1~6_combout\,
	combout => \INST_ALU|Mux1~7_combout\);

-- Location: LCCOMB_X28_Y20_N4
\INST_ALU|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux1~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_ALU|Mux1~0_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux1~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux1~7_combout\,
	combout => \INST_ALU|Mux1~8_combout\);

-- Location: LCCOMB_X30_Y20_N20
\INST_ALU|r_ALU_Result[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~17_combout\ = ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0) & !\INST_instruction_decoder|o_OPCODE\(3))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(0)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3))))) # (!\INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_instruction_decoder|o_OPCODE\(3),
	combout => \INST_ALU|r_ALU_Result[5]~17_combout\);

-- Location: LCCOMB_X30_Y20_N14
\INST_ALU|r_ALU_Result[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[5]~18_combout\ = (\INST_control_unit|r_state\(3) & \INST_ALU|r_ALU_Result[5]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_control_unit|r_state\(3),
	datad => \INST_ALU|r_ALU_Result[5]~17_combout\,
	combout => \INST_ALU|r_ALU_Result[5]~18_combout\);

-- Location: FF_X28_Y20_N5
\INST_ALU|r_ALU_Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|Mux1~8_combout\,
	ena => \INST_ALU|r_ALU_Result[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(6));

-- Location: LCCOMB_X29_Y21_N28
\INST_GPR|r_REGISTER~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~25_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(22) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(21))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(22) & (((\INST_GPR|r_REGISTER_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(22),
	datab => \INST_GPR|r_REGISTER~17_combout\,
	datac => \INST_GPR|r_REGISTER_rtl_0_bypass\(21),
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a5\,
	combout => \INST_GPR|r_REGISTER~25_combout\);

-- Location: FF_X29_Y21_N29
\INST_GPR|o_GPR_ALU_data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~25_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(5));

-- Location: LCCOMB_X30_Y20_N30
\INST_ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~0_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_ALU|r_ALU_Result[5]~12_combout\ & ((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\) # (\INST_ALU|r_ALU_Result[5]~11_combout\)))) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & 
-- (\INST_ALU|r_ALU_Result[5]~12_combout\ & ((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\) # (!\INST_ALU|r_ALU_Result[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datac => \INST_ALU|r_ALU_Result[5]~11_combout\,
	datad => \INST_ALU|r_ALU_Result[5]~12_combout\,
	combout => \INST_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y21_N14
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

-- Location: LCCOMB_X26_Y21_N16
\INST_ALU|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~3_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(1) & ((!\INST_ALU|LessThan1~1_cout\) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- !\INST_ALU|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan1~1_cout\,
	cout => \INST_ALU|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y21_N18
\INST_ALU|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~5_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((!\INST_ALU|LessThan1~3_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(2)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(2) & 
-- !\INST_ALU|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datad => VCC,
	cin => \INST_ALU|LessThan1~3_cout\,
	cout => \INST_ALU|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y21_N20
\INST_ALU|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~7_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_ALU|LessThan1~5_cout\)) # (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3)) # 
-- (!\INST_ALU|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => VCC,
	cin => \INST_ALU|LessThan1~5_cout\,
	cout => \INST_ALU|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y21_N22
\INST_ALU|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~9_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & !\INST_ALU|LessThan1~7_cout\)) # (!\INST_GPR|o_GPR_ALU_data_A\(4) & ((\INST_B_imm_multiplexer|o_DATA[4]~6_combout\) # 
-- (!\INST_ALU|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan1~7_cout\,
	cout => \INST_ALU|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y21_N24
\INST_ALU|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~11_cout\ = CARRY((\INST_GPR|o_GPR_ALU_data_A\(5) & ((!\INST_ALU|LessThan1~9_cout\) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\))) # (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & 
-- !\INST_ALU|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(5),
	datab => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datad => VCC,
	cin => \INST_ALU|LessThan1~9_cout\,
	cout => \INST_ALU|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y21_N26
\INST_ALU|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~13_cout\ = CARRY((\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & ((!\INST_ALU|LessThan1~11_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(6)))) # (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(6) & 
-- !\INST_ALU|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => VCC,
	cin => \INST_ALU|LessThan1~11_cout\,
	cout => \INST_ALU|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y21_N28
\INST_ALU|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|LessThan1~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & ((\INST_ALU|LessThan1~13_cout\) # (!\INST_GPR|o_GPR_ALU_data_A\(7)))) # (!\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & (\INST_ALU|LessThan1~13_cout\ & 
-- !\INST_GPR|o_GPR_ALU_data_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	cin => \INST_ALU|LessThan1~13_cout\,
	combout => \INST_ALU|LessThan1~14_combout\);

-- Location: LCCOMB_X26_Y21_N2
\INST_ALU|ShiftLeft0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~3_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X30_Y19_N26
\INST_ALU|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~8_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X30_Y21_N30
\INST_ALU|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~4_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~4_combout\);

-- Location: LCCOMB_X29_Y20_N18
\INST_ALU|ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~7_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (((\INST_ALU|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_ALU|ShiftRight0~4_combout\,
	combout => \INST_ALU|ShiftRight0~7_combout\);

-- Location: LCCOMB_X26_Y21_N12
\INST_ALU|ShiftLeft0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\INST_ALU|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~4_combout\ = (\INST_ALU|ShiftLeft0~0_combout\ & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & \INST_ALU|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X29_Y20_N2
\INST_ALU|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~5_combout\ = (\INST_ALU|r_ALU_Result[5]~20_combout\ & ((\INST_ALU|r_ALU_Result[5]~16_combout\ & (\INST_ALU|ShiftRight0~7_combout\)) # (!\INST_ALU|r_ALU_Result[5]~16_combout\ & ((\INST_ALU|Mux2~4_combout\))))) # 
-- (!\INST_ALU|r_ALU_Result[5]~20_combout\ & (((!\INST_ALU|r_ALU_Result[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result[5]~20_combout\,
	datab => \INST_ALU|ShiftRight0~7_combout\,
	datac => \INST_ALU|Mux2~4_combout\,
	datad => \INST_ALU|r_ALU_Result[5]~16_combout\,
	combout => \INST_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X29_Y20_N16
\INST_ALU|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~6_combout\ = (\INST_ALU|r_ALU_Result[5]~15_combout\ & (((\INST_ALU|Mux2~5_combout\)))) # (!\INST_ALU|r_ALU_Result[5]~15_combout\ & ((\INST_ALU|Mux2~5_combout\ & ((\INST_ALU|ShiftLeft0~8_combout\))) # (!\INST_ALU|Mux2~5_combout\ & 
-- (\INST_ALU|ShiftLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result[5]~15_combout\,
	datab => \INST_ALU|ShiftLeft0~3_combout\,
	datac => \INST_ALU|ShiftLeft0~8_combout\,
	datad => \INST_ALU|Mux2~5_combout\,
	combout => \INST_ALU|Mux2~6_combout\);

-- Location: LCCOMB_X30_Y20_N4
\INST_ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & ((!\INST_GPR|o_GPR_ALU_data_A\(5)) # (!\INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(5)))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_GPR|o_GPR_ALU_data_A\(5),
	combout => \INST_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y20_N18
\INST_ALU|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux2~1_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux2~1_combout\ & ((\INST_ALU|Add1~10_combout\))) # (!\INST_ALU|Mux2~1_combout\ & 
-- (\INST_ALU|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|Mux2~1_combout\,
	datac => \INST_ALU|Add0~10_combout\,
	datad => \INST_ALU|Add1~10_combout\,
	combout => \INST_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y20_N12
\INST_ALU|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~3_combout\ = (\INST_ALU|r_ALU_Result[5]~13_combout\ & (\INST_ALU|r_ALU_Result[5]~14_combout\)) # (!\INST_ALU|r_ALU_Result[5]~13_combout\ & ((\INST_ALU|r_ALU_Result[5]~14_combout\ & ((\INST_ALU|Mux2~2_combout\))) # 
-- (!\INST_ALU|r_ALU_Result[5]~14_combout\ & (\INST_B_imm_multiplexer|o_DATA[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result[5]~13_combout\,
	datab => \INST_ALU|r_ALU_Result[5]~14_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datad => \INST_ALU|Mux2~2_combout\,
	combout => \INST_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y20_N10
\INST_ALU|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~7_combout\ = (\INST_ALU|r_ALU_Result[5]~13_combout\ & ((\INST_ALU|Mux2~3_combout\ & ((\INST_ALU|Mux2~6_combout\))) # (!\INST_ALU|Mux2~3_combout\ & (\INST_ALU|LessThan1~14_combout\)))) # (!\INST_ALU|r_ALU_Result[5]~13_combout\ & 
-- (((\INST_ALU|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|LessThan1~14_combout\,
	datab => \INST_ALU|r_ALU_Result[5]~13_combout\,
	datac => \INST_ALU|Mux2~6_combout\,
	datad => \INST_ALU|Mux2~3_combout\,
	combout => \INST_ALU|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y20_N6
\INST_ALU|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux2~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_ALU|Mux2~0_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux2~0_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux2~7_combout\,
	combout => \INST_ALU|Mux2~8_combout\);

-- Location: FF_X30_Y20_N7
\INST_ALU|r_ALU_Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|Mux2~8_combout\,
	ena => \INST_ALU|r_ALU_Result[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(5));

-- Location: LCCOMB_X29_Y22_N28
\INST_GPR|r_REGISTER~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~28_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(20) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(19))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(20) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(19),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(20),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a4\,
	combout => \INST_GPR|r_REGISTER~28_combout\);

-- Location: FF_X29_Y22_N29
\INST_GPR|o_GPR_ALU_data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~28_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(4));

-- Location: LCCOMB_X29_Y19_N10
\INST_ALU|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_GPR|o_GPR_ALU_data_A\(4) & (\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & !\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y19_N22
\INST_ALU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_GPR|o_GPR_ALU_data_A\(4) $ (((!\INST_instruction_decoder|o_OPCODE\(1)))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_GPR|o_GPR_ALU_data_A\(4) & 
-- (\INST_B_imm_multiplexer|o_DATA[4]~6_combout\ & !\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_GPR|o_GPR_ALU_data_A\(4),
	datac => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y21_N0
\INST_ALU|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal1~1_combout\ = (!\INST_GPR|o_GPR_ALU_data_A\(6) & (!\INST_GPR|o_GPR_ALU_data_A\(5) & (!\INST_GPR|o_GPR_ALU_data_A\(4) & !\INST_GPR|o_GPR_ALU_data_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_GPR|o_GPR_ALU_data_A\(4),
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	combout => \INST_ALU|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y21_N2
\INST_ALU|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal1~0_combout\ = (!\INST_GPR|o_GPR_ALU_data_A\(0) & (!\INST_GPR|o_GPR_ALU_data_A\(2) & (!\INST_GPR|o_GPR_ALU_data_A\(3) & !\INST_GPR|o_GPR_ALU_data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y21_N26
\INST_ALU|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal1~2_combout\ = (\INST_ALU|Equal1~1_combout\ & \INST_ALU|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_ALU|Equal1~1_combout\,
	datad => \INST_ALU|Equal1~0_combout\,
	combout => \INST_ALU|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y19_N20
\INST_ALU|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1)) # ((\INST_ALU|Equal1~2_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_B_imm_multiplexer|o_DATA[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[4]~6_combout\,
	datad => \INST_ALU|Equal1~2_combout\,
	combout => \INST_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y21_N16
\INST_ALU|ShiftLeft0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~5_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X28_Y21_N14
\INST_ALU|ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~6_combout\ = (\INST_ALU|ShiftLeft0~5_combout\) # ((!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|ShiftLeft1~0_combout\,
	datad => \INST_ALU|ShiftLeft0~5_combout\,
	combout => \INST_ALU|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X28_Y21_N8
\INST_ALU|ShiftRight0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & !\INST_B_imm_multiplexer|o_DATA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftRight0~14_combout\);

-- Location: LCCOMB_X28_Y21_N10
\INST_ALU|ShiftRight0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~15_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|ShiftRight0~14_combout\ & \INST_ALU|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_ALU|ShiftRight0~14_combout\,
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|ShiftRight0~15_combout\);

-- Location: LCCOMB_X28_Y21_N20
\INST_ALU|ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~7_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0) & ((\INST_ALU|ShiftRight0~15_combout\) # ((\INST_ALU|Equal2~1_combout\ & \INST_ALU|ShiftLeft0~6_combout\)))) # (!\INST_GPR|o_GPR_ALU_data_A\(0) & (\INST_ALU|Equal2~1_combout\ & 
-- (\INST_ALU|ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_ALU|Equal2~1_combout\,
	datac => \INST_ALU|ShiftLeft0~6_combout\,
	datad => \INST_ALU|ShiftRight0~15_combout\,
	combout => \INST_ALU|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X29_Y21_N30
\INST_ALU|ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~5_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(6))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_ALU|ShiftRight0~5_combout\);

-- Location: LCCOMB_X28_Y21_N18
\INST_ALU|ShiftRight0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~18_combout\ = (\INST_ALU|Equal2~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_ALU|ShiftRight0~4_combout\)) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_ALU|ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftRight0~4_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|ShiftRight0~5_combout\,
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|ShiftRight0~18_combout\);

-- Location: LCCOMB_X29_Y19_N14
\INST_ALU|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux3~1_combout\ & ((\INST_ALU|ShiftRight0~18_combout\))) # (!\INST_ALU|Mux3~1_combout\ & (\INST_ALU|ShiftLeft0~7_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_ALU|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|Mux3~1_combout\,
	datac => \INST_ALU|ShiftLeft0~7_combout\,
	datad => \INST_ALU|ShiftRight0~18_combout\,
	combout => \INST_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y21_N20
\INST_ALU|r_ALU_Result~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~9_combout\ = \INST_GPR|o_GPR_ALU_data_A\(4) $ (((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(6))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_instruction_decoder|o_Address_PROG\(6),
	datac => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_GPR|o_GPR_ALU_data_B\(4),
	combout => \INST_ALU|r_ALU_Result~9_combout\);

-- Location: LCCOMB_X30_Y21_N0
\INST_ALU|r_ALU_Result~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~8_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(4)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(6)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(4),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_instruction_decoder|o_Address_PROG\(6),
	datad => \INST_GPR|o_GPR_ALU_data_A\(4),
	combout => \INST_ALU|r_ALU_Result~8_combout\);

-- Location: LCCOMB_X29_Y19_N28
\INST_ALU|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|r_ALU_Result~8_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|r_ALU_Result~8_combout\,
	datad => \INST_ALU|Add0~8_combout\,
	combout => \INST_ALU|Mux3~3_combout\);

-- Location: LCCOMB_X29_Y19_N2
\INST_ALU|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~4_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux3~3_combout\ & (\INST_ALU|r_ALU_Result~9_combout\)) # (!\INST_ALU|Mux3~3_combout\ & ((\INST_ALU|Add1~8_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (((\INST_ALU|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_ALU|r_ALU_Result~9_combout\,
	datac => \INST_ALU|Add1~8_combout\,
	datad => \INST_ALU|Mux3~3_combout\,
	combout => \INST_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y19_N16
\INST_ALU|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(2)) # ((\INST_ALU|Mux3~2_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- ((\INST_ALU|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Mux3~2_combout\,
	datad => \INST_ALU|Mux3~4_combout\,
	combout => \INST_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y19_N24
\INST_ALU|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux3~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux3~5_combout\ & (\INST_ALU|Mux3~6_combout\)) # (!\INST_ALU|Mux3~5_combout\ & ((\INST_ALU|Mux3~0_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_ALU|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux3~6_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_ALU|Mux3~0_combout\,
	datad => \INST_ALU|Mux3~5_combout\,
	combout => \INST_ALU|Mux3~7_combout\);

-- Location: LCCOMB_X29_Y19_N8
\INST_ALU|r_ALU_Result[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[4]~10_combout\ = (\INST_ALU|Mux7~12_combout\ & (((\INST_ALU|r_ALU_Result\(4))))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux3~7_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~12_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(4),
	datad => \INST_ALU|Mux3~7_combout\,
	combout => \INST_ALU|r_ALU_Result[4]~10_combout\);

-- Location: FF_X29_Y19_N9
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

-- Location: LCCOMB_X28_Y21_N24
\INST_GPR|r_REGISTER~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~37_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(18) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(17))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(18) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(18),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(17),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a3\,
	combout => \INST_GPR|r_REGISTER~37_combout\);

-- Location: FF_X28_Y21_N25
\INST_GPR|o_GPR_ALU_data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~37_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(3));

-- Location: LCCOMB_X28_Y21_N2
\INST_B_imm_multiplexer|o_DATA[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[3]~7_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(5))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(5),
	datab => \INST_GPR|o_GPR_ALU_data_B\(3),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\);

-- Location: LCCOMB_X32_Y21_N8
\INST_ALU|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~6_combout\ = (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_GPR|o_GPR_ALU_data_A\(3) & \INST_instruction_decoder|o_OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux4~6_combout\);

-- Location: LCCOMB_X32_Y21_N22
\INST_ALU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1) $ (!\INST_GPR|o_GPR_ALU_data_A\(3))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & \INST_GPR|o_GPR_ALU_data_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y21_N18
\INST_ALU|r_ALU_Result~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~6_combout\ = \INST_GPR|o_GPR_ALU_data_A\(3) $ (((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(5))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(5),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(3),
	datad => \INST_GPR|o_GPR_ALU_data_B\(3),
	combout => \INST_ALU|r_ALU_Result~6_combout\);

-- Location: LCCOMB_X32_Y21_N26
\INST_ALU|r_ALU_Result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result~5_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(3)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(5))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(5),
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_GPR|o_GPR_ALU_data_B\(3),
	combout => \INST_ALU|r_ALU_Result~5_combout\);

-- Location: LCCOMB_X32_Y21_N28
\INST_ALU|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(1))) # (!\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|r_ALU_Result~5_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|r_ALU_Result~5_combout\,
	datad => \INST_ALU|Add0~6_combout\,
	combout => \INST_ALU|Mux4~3_combout\);

-- Location: LCCOMB_X32_Y21_N12
\INST_ALU|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~4_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Mux4~3_combout\ & (\INST_ALU|r_ALU_Result~6_combout\)) # (!\INST_ALU|Mux4~3_combout\ & ((\INST_ALU|Add1~6_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (((\INST_ALU|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_ALU|r_ALU_Result~6_combout\,
	datac => \INST_ALU|Add1~6_combout\,
	datad => \INST_ALU|Mux4~3_combout\,
	combout => \INST_ALU|Mux4~4_combout\);

-- Location: LCCOMB_X32_Y21_N4
\INST_ALU|ShiftLeft0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~4_combout\ = (\INST_ALU|Equal2~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_ALU|ShiftLeft0~0_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|ShiftLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~3_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|ShiftLeft0~0_combout\,
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X26_Y21_N4
\INST_ALU|ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~12_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- (\INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(3),
	datac => \INST_GPR|o_GPR_ALU_data_A\(5),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|ShiftRight0~12_combout\);

-- Location: LCCOMB_X28_Y21_N30
\INST_ALU|ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~13_combout\ = (\INST_ALU|Equal2~1_combout\ & ((\INST_ALU|ShiftRight0~12_combout\) # ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_ALU|ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_ALU|ShiftRight0~12_combout\,
	datac => \INST_ALU|ShiftRight0~5_combout\,
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|ShiftRight0~13_combout\);

-- Location: LCCOMB_X32_Y21_N14
\INST_ALU|ShiftRight0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~16_combout\ = (\INST_ALU|ShiftRight0~13_combout\) # ((\INST_GPR|o_GPR_ALU_data_A\(7) & \INST_ALU|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datac => \INST_ALU|ShiftRight0~15_combout\,
	datad => \INST_ALU|ShiftRight0~13_combout\,
	combout => \INST_ALU|ShiftRight0~16_combout\);

-- Location: LCCOMB_X32_Y21_N2
\INST_ALU|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal2~2_combout\ = (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & \INST_ALU|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|Equal2~2_combout\);

-- Location: LCCOMB_X32_Y21_N24
\INST_ALU|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Equal2~2_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|Equal2~2_combout\,
	combout => \INST_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X32_Y21_N20
\INST_ALU|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux4~1_combout\ & ((\INST_ALU|ShiftRight0~16_combout\))) # (!\INST_ALU|Mux4~1_combout\ & (\INST_ALU|ShiftLeft0~4_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (((\INST_ALU|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|ShiftLeft0~4_combout\,
	datac => \INST_ALU|ShiftRight0~16_combout\,
	datad => \INST_ALU|Mux4~1_combout\,
	combout => \INST_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X32_Y21_N10
\INST_ALU|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (((\INST_instruction_decoder|o_OPCODE\(3))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux4~2_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3) & (\INST_ALU|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux4~4_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_ALU|Mux4~2_combout\,
	combout => \INST_ALU|Mux4~5_combout\);

-- Location: LCCOMB_X32_Y21_N6
\INST_ALU|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux4~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux4~5_combout\ & (\INST_ALU|Mux4~6_combout\)) # (!\INST_ALU|Mux4~5_combout\ & ((\INST_ALU|Mux4~0_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_ALU|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_ALU|Mux4~6_combout\,
	datac => \INST_ALU|Mux4~0_combout\,
	datad => \INST_ALU|Mux4~5_combout\,
	combout => \INST_ALU|Mux4~7_combout\);

-- Location: LCCOMB_X32_Y21_N0
\INST_ALU|r_ALU_Result[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[3]~7_combout\ = (\INST_ALU|Mux7~12_combout\ & (((\INST_ALU|r_ALU_Result\(3))))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux4~7_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~12_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(3),
	datad => \INST_ALU|Mux4~7_combout\,
	combout => \INST_ALU|r_ALU_Result[3]~7_combout\);

-- Location: FF_X32_Y21_N1
\INST_ALU|r_ALU_Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(3));

-- Location: LCCOMB_X28_Y21_N26
\INST_GPR|r_REGISTER~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~32_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(16) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(15))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(16) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(15),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(16),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a2\,
	combout => \INST_GPR|r_REGISTER~32_combout\);

-- Location: FF_X28_Y21_N27
\INST_GPR|o_GPR_ALU_data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~32_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(2));

-- Location: LCCOMB_X28_Y21_N4
\INST_B_imm_multiplexer|o_DATA[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[2]~2_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(4))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(4),
	datac => \INST_GPR|o_GPR_ALU_data_B\(2),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\);

-- Location: LCCOMB_X30_Y19_N22
\INST_ALU|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~9_combout\ = (((\INST_instruction_decoder|o_OPCODE\(1)) # (\INST_GPR|o_GPR_ALU_data_A\(2))) # (!\INST_instruction_decoder|o_OPCODE\(0))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Mux5~9_combout\);

-- Location: LCCOMB_X29_Y20_N20
\INST_ALU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & \INST_ALU|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y22_N4
\INST_control_unit|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Equal0~0_combout\ = (!\INST_instruction_decoder|o_OPCODE\(0) & !\INST_instruction_decoder|o_OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_control_unit|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y19_N6
\INST_ALU|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~1_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y19_N20
\INST_ALU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(5)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(3),
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y19_N4
\INST_ALU|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (((\INST_ALU|ShiftRight0~11_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_ALU|Mux5~1_combout\) # ((\INST_ALU|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux5~1_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datac => \INST_ALU|ShiftRight0~11_combout\,
	datad => \INST_ALU|Mux5~0_combout\,
	combout => \INST_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y19_N10
\INST_ALU|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_ALU|Mux5~2_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_ALU|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux5~2_combout\,
	datad => \INST_ALU|ShiftLeft0~2_combout\,
	combout => \INST_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X30_Y19_N8
\INST_ALU|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~4_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_control_unit|Equal0~0_combout\) # ((\INST_ALU|Mux6~0_combout\ & \INST_ALU|Mux5~3_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (\INST_ALU|Mux6~0_combout\ 
-- & ((\INST_ALU|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_ALU|Mux6~0_combout\,
	datac => \INST_control_unit|Equal0~0_combout\,
	datad => \INST_ALU|Mux5~3_combout\,
	combout => \INST_ALU|Mux5~4_combout\);

-- Location: LCCOMB_X30_Y19_N14
\INST_ALU|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1) $ (!\INST_GPR|o_GPR_ALU_data_A\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & \INST_GPR|o_GPR_ALU_data_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Mux5~5_combout\);

-- Location: LCCOMB_X30_Y19_N0
\INST_ALU|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1)) # ((\INST_ALU|Add1~4_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_ALU|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Add0~4_combout\,
	datad => \INST_ALU|Add1~4_combout\,
	combout => \INST_ALU|Mux5~6_combout\);

-- Location: LCCOMB_X30_Y19_N18
\INST_ALU|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((!\INST_ALU|Mux5~6_combout\) # (!\INST_GPR|o_GPR_ALU_data_A\(2)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & 
-- (\INST_GPR|o_GPR_ALU_data_A\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_ALU|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux5~6_combout\,
	combout => \INST_ALU|Mux5~7_combout\);

-- Location: LCCOMB_X30_Y19_N12
\INST_ALU|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(3)) # ((\INST_ALU|Mux5~5_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- ((\INST_ALU|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux5~5_combout\,
	datad => \INST_ALU|Mux5~7_combout\,
	combout => \INST_ALU|Mux5~8_combout\);

-- Location: LCCOMB_X30_Y19_N28
\INST_ALU|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux5~10_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux5~8_combout\ & (!\INST_ALU|Mux5~9_combout\)) # (!\INST_ALU|Mux5~8_combout\ & ((\INST_ALU|Mux5~4_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux5~9_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux5~4_combout\,
	datad => \INST_ALU|Mux5~8_combout\,
	combout => \INST_ALU|Mux5~10_combout\);

-- Location: LCCOMB_X30_Y19_N24
\INST_ALU|r_ALU_Result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[2]~4_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~12_combout\ & (\INST_ALU|r_ALU_Result\(2))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_ALU|Mux5~10_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~12_combout\,
	datac => \INST_ALU|r_ALU_Result\(2),
	datad => \INST_ALU|Mux5~10_combout\,
	combout => \INST_ALU|r_ALU_Result[2]~4_combout\);

-- Location: FF_X30_Y19_N25
\INST_ALU|r_ALU_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(2));

-- Location: LCCOMB_X29_Y22_N12
\INST_GPR|r_REGISTER~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~31_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(14) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(13))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(14) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(14),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(13),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a1\,
	combout => \INST_GPR|r_REGISTER~31_combout\);

-- Location: FF_X29_Y22_N13
\INST_GPR|o_GPR_ALU_data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~31_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(1));

-- Location: LCCOMB_X30_Y20_N0
\INST_ALU|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(1) $ ((!\INST_GPR|o_GPR_ALU_data_A\(1))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_GPR|o_GPR_ALU_data_A\(1) & \INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y20_N22
\INST_ALU|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~8_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_instruction_decoder|o_OPCODE\(0) & \INST_B_imm_multiplexer|o_DATA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|Mux6~8_combout\);

-- Location: LCCOMB_X29_Y20_N22
\INST_ALU|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|ShiftLeft0~0_combout\ & \INST_ALU|Equal2~1_combout\))) # (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_ALU|ShiftLeft0~0_combout\,
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y20_N8
\INST_ALU|ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~8_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(1),
	datad => \INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_ALU|ShiftRight0~8_combout\);

-- Location: LCCOMB_X29_Y20_N30
\INST_ALU|ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~9_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(4))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(4),
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|ShiftRight0~9_combout\);

-- Location: LCCOMB_X29_Y20_N0
\INST_ALU|ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (((\INST_ALU|ShiftRight0~7_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_ALU|ShiftRight0~8_combout\) # ((\INST_ALU|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datab => \INST_ALU|ShiftRight0~8_combout\,
	datac => \INST_ALU|ShiftRight0~9_combout\,
	datad => \INST_ALU|ShiftRight0~7_combout\,
	combout => \INST_ALU|ShiftRight0~10_combout\);

-- Location: LCCOMB_X29_Y20_N4
\INST_ALU|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux6~0_combout\ & ((\INST_ALU|ShiftRight0~10_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (((\INST_ALU|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_ALU|Mux6~0_combout\,
	datac => \INST_ALU|Mux6~2_combout\,
	datad => \INST_ALU|ShiftRight0~10_combout\,
	combout => \INST_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X27_Y21_N4
\INST_ALU|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~4_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_instruction_decoder|o_Address_PROG\(3))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_GPR|o_GPR_ALU_data_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Address_PROG\(3),
	datab => \INST_instruction_decoder|o_IMM_enable~q\,
	datad => \INST_GPR|o_GPR_ALU_data_B\(1),
	combout => \INST_ALU|Mux6~4_combout\);

-- Location: LCCOMB_X29_Y20_N26
\INST_ALU|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_GPR|o_GPR_ALU_data_A\(1) & ((!\INST_ALU|Mux6~4_combout\) # (!\INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_GPR|o_GPR_ALU_data_A\(1) & ((\INST_ALU|Mux6~4_combout\))))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_ALU|Mux6~4_combout\,
	combout => \INST_ALU|Mux6~5_combout\);

-- Location: LCCOMB_X29_Y20_N28
\INST_ALU|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~6_combout\ = (\INST_ALU|Mux6~5_combout\ & ((\INST_instruction_decoder|o_OPCODE\(1)) # ((\INST_ALU|Add1~2_combout\)))) # (!\INST_ALU|Mux6~5_combout\ & (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux6~5_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Add0~2_combout\,
	datad => \INST_ALU|Add1~2_combout\,
	combout => \INST_ALU|Mux6~6_combout\);

-- Location: LCCOMB_X29_Y20_N14
\INST_ALU|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~7_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_instruction_decoder|o_OPCODE\(3))) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(3) & (\INST_ALU|Mux6~3_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux6~3_combout\,
	datad => \INST_ALU|Mux6~6_combout\,
	combout => \INST_ALU|Mux6~7_combout\);

-- Location: LCCOMB_X30_Y20_N28
\INST_ALU|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux6~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux6~7_combout\ & ((\INST_ALU|Mux6~8_combout\))) # (!\INST_ALU|Mux6~7_combout\ & (\INST_ALU|Mux6~1_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_ALU|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_ALU|Mux6~1_combout\,
	datac => \INST_ALU|Mux6~8_combout\,
	datad => \INST_ALU|Mux6~7_combout\,
	combout => \INST_ALU|Mux6~9_combout\);

-- Location: LCCOMB_X30_Y20_N8
\INST_ALU|r_ALU_Result[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[1]~3_combout\ = (\INST_ALU|Mux7~12_combout\ & (((\INST_ALU|r_ALU_Result\(1))))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux6~9_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~12_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(1),
	datad => \INST_ALU|Mux6~9_combout\,
	combout => \INST_ALU|r_ALU_Result[1]~3_combout\);

-- Location: FF_X30_Y20_N9
\INST_ALU|r_ALU_Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(1));

-- Location: LCCOMB_X27_Y21_N12
\INST_GPR|r_REGISTER~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~33_combout\ = (\INST_GPR|r_REGISTER_rtl_1_bypass\(26) & ((\INST_GPR|r_REGISTER~22_combout\ & (\INST_GPR|r_REGISTER_rtl_1_bypass\(25))) # (!\INST_GPR|r_REGISTER~22_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\))))) # (!\INST_GPR|r_REGISTER_rtl_1_bypass\(26) & (\INST_GPR|r_REGISTER_rtl_1_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_1_bypass\(26),
	datab => \INST_GPR|r_REGISTER_rtl_1_bypass\(25),
	datac => \INST_GPR|r_REGISTER~22_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_1|auto_generated|ram_block1a7\,
	combout => \INST_GPR|r_REGISTER~33_combout\);

-- Location: FF_X27_Y21_N13
\INST_GPR|o_GPR_ALU_data_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~33_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_B\(7));

-- Location: LCCOMB_X27_Y21_N14
\INST_B_imm_multiplexer|o_DATA[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_B_imm_multiplexer|o_DATA[7]~3_combout\ = (\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(9)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_B\(7),
	datac => \INST_instruction_decoder|o_Address_PROG\(9),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\);

-- Location: LCCOMB_X31_Y21_N22
\INST_ALU|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~7_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_GPR|o_GPR_ALU_data_A\(7) & \INST_B_imm_multiplexer|o_DATA[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	combout => \INST_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X27_Y21_N18
\INST_ALU|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal0~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_GPR|o_GPR_ALU_data_A\(6) $ (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[5]~5_combout\ & 
-- (!\INST_GPR|o_GPR_ALU_data_A\(5) & (\INST_GPR|o_GPR_ALU_data_A\(6) $ (!\INST_B_imm_multiplexer|o_DATA[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[5]~5_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(5),
	datac => \INST_GPR|o_GPR_ALU_data_A\(6),
	datad => \INST_B_imm_multiplexer|o_DATA[6]~4_combout\,
	combout => \INST_ALU|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\INST_ALU|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal0~2_combout\ = \INST_GPR|o_GPR_ALU_data_A\(7) $ (((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(9)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_GPR|o_GPR_ALU_data_B\(7),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_instruction_decoder|o_Address_PROG\(9),
	combout => \INST_ALU|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y21_N8
\INST_ALU|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal0~3_combout\ = (\INST_ALU|Equal0~1_combout\ & (!\INST_ALU|Equal0~2_combout\ & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_ALU|Equal0~1_combout\,
	datad => \INST_ALU|Equal0~2_combout\,
	combout => \INST_ALU|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y21_N22
\INST_ALU|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal0~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(2))))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & 
-- (!\INST_GPR|o_GPR_ALU_data_A\(1) & (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ $ (!\INST_GPR|o_GPR_ALU_data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(1),
	datac => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(2),
	combout => \INST_ALU|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y21_N2
\INST_ALU|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal0~4_combout\ = (!\INST_ALU|r_ALU_Result~9_combout\ & (!\INST_ALU|r_ALU_Result~6_combout\ & (\INST_ALU|Equal0~3_combout\ & \INST_ALU|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result~9_combout\,
	datab => \INST_ALU|r_ALU_Result~6_combout\,
	datac => \INST_ALU|Equal0~3_combout\,
	datad => \INST_ALU|Equal0~0_combout\,
	combout => \INST_ALU|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y21_N24
\INST_ALU|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (((\INST_instruction_decoder|o_OPCODE\(0))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Equal0~4_combout\))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_ALU|Equal0~4_combout\,
	combout => \INST_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y21_N14
\INST_ALU|ShiftRight0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~17_combout\ = (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7) & \INST_ALU|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_ALU|Equal2~1_combout\,
	combout => \INST_ALU|ShiftRight0~17_combout\);

-- Location: LCCOMB_X26_Y21_N0
\INST_ALU|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~9_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|ShiftLeft0~0_combout\)) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_ALU|ShiftLeft0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => \INST_ALU|ShiftLeft0~3_combout\,
	combout => \INST_ALU|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X30_Y19_N16
\INST_ALU|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~10_combout\ = (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(6)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(7),
	datab => \INST_GPR|o_GPR_ALU_data_A\(6),
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	combout => \INST_ALU|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X30_Y19_N2
\INST_ALU|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~11_combout\ = (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & ((\INST_ALU|ShiftLeft0~10_combout\) # ((\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & \INST_ALU|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datac => \INST_ALU|ShiftLeft0~8_combout\,
	datad => \INST_ALU|ShiftLeft0~10_combout\,
	combout => \INST_ALU|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X31_Y21_N28
\INST_ALU|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftLeft0~12_combout\ = (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\ & (\INST_ALU|Equal2~0_combout\ & ((\INST_ALU|ShiftLeft0~9_combout\) # (\INST_ALU|ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datab => \INST_ALU|ShiftLeft0~9_combout\,
	datac => \INST_ALU|ShiftLeft0~11_combout\,
	datad => \INST_ALU|Equal2~0_combout\,
	combout => \INST_ALU|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X31_Y21_N4
\INST_ALU|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~1_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux0~0_combout\ & (\INST_ALU|ShiftRight0~17_combout\)) # (!\INST_ALU|Mux0~0_combout\ & ((\INST_ALU|ShiftLeft0~12_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_ALU|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|Mux0~0_combout\,
	datac => \INST_ALU|ShiftRight0~17_combout\,
	datad => \INST_ALU|ShiftLeft0~12_combout\,
	combout => \INST_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y20_N0
\INST_ALU|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~2_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(1) $ ((!\INST_GPR|o_GPR_ALU_data_A\(7))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & 
-- (\INST_GPR|o_GPR_ALU_data_A\(7) & \INST_B_imm_multiplexer|o_DATA[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	combout => \INST_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y21_N30
\INST_ALU|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~3_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(7)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(9)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_IMM_enable~q\,
	datab => \INST_GPR|o_GPR_ALU_data_B\(7),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_instruction_decoder|o_Address_PROG\(9),
	combout => \INST_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X31_Y21_N16
\INST_ALU|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~4_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|Equal0~2_combout\))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux0~3_combout\)))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|Mux0~3_combout\,
	datad => \INST_ALU|Equal0~2_combout\,
	combout => \INST_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X30_Y21_N26
\INST_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add1~14_combout\ = \INST_B_imm_multiplexer|o_DATA[7]~3_combout\ $ (\INST_ALU|Add1~13\ $ (!\INST_GPR|o_GPR_ALU_data_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(7),
	cin => \INST_ALU|Add1~13\,
	combout => \INST_ALU|Add1~14_combout\);

-- Location: LCCOMB_X29_Y21_N18
\INST_ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~14_combout\ = (\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(7) & (\INST_ALU|Add0~13\ & VCC)) # (!\INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_ALU|Add0~13\)))) # (!\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & 
-- ((\INST_GPR|o_GPR_ALU_data_A\(7) & (!\INST_ALU|Add0~13\)) # (!\INST_GPR|o_GPR_ALU_data_A\(7) & ((\INST_ALU|Add0~13\) # (GND)))))
-- \INST_ALU|Add0~15\ = CARRY((\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & (!\INST_GPR|o_GPR_ALU_data_A\(7) & !\INST_ALU|Add0~13\)) # (!\INST_B_imm_multiplexer|o_DATA[7]~3_combout\ & ((!\INST_ALU|Add0~13\) # (!\INST_GPR|o_GPR_ALU_data_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[7]~3_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => VCC,
	cin => \INST_ALU|Add0~13\,
	combout => \INST_ALU|Add0~14_combout\,
	cout => \INST_ALU|Add0~15\);

-- Location: LCCOMB_X31_Y21_N18
\INST_ALU|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~5_combout\ = (\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Mux0~4_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Mux0~4_combout\ & (\INST_ALU|Add1~14_combout\)) # (!\INST_ALU|Mux0~4_combout\ & 
-- ((\INST_ALU|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datab => \INST_ALU|Mux0~4_combout\,
	datac => \INST_ALU|Add1~14_combout\,
	datad => \INST_ALU|Add0~14_combout\,
	combout => \INST_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X31_Y21_N20
\INST_ALU|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (((\INST_instruction_decoder|o_OPCODE\(2))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(2) & (\INST_ALU|Mux0~2_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(3),
	datab => \INST_ALU|Mux0~2_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux0~5_combout\,
	combout => \INST_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X31_Y21_N12
\INST_ALU|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux0~8_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux0~6_combout\ & (\INST_ALU|Mux0~7_combout\)) # (!\INST_ALU|Mux0~6_combout\ & ((\INST_ALU|Mux0~1_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (((\INST_ALU|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux0~7_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux0~1_combout\,
	datad => \INST_ALU|Mux0~6_combout\,
	combout => \INST_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X31_Y21_N26
\INST_ALU|r_ALU_Result[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[7]~19_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~12_combout\ & (\INST_ALU|r_ALU_Result\(7))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_ALU|Mux0~8_combout\))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|r_ALU_Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|Mux7~12_combout\,
	datac => \INST_ALU|r_ALU_Result\(7),
	datad => \INST_ALU|Mux0~8_combout\,
	combout => \INST_ALU|r_ALU_Result[7]~19_combout\);

-- Location: FF_X31_Y21_N27
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

-- Location: FF_X29_Y22_N19
\INST_GPR|r_REGISTER_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_ALU|r_ALU_Result\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|r_REGISTER_rtl_0_bypass\(25));

-- Location: LCCOMB_X29_Y22_N4
\INST_GPR|r_REGISTER~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_GPR|r_REGISTER~24_combout\ = (\INST_GPR|r_REGISTER_rtl_0_bypass\(26) & ((\INST_GPR|r_REGISTER~17_combout\ & (\INST_GPR|r_REGISTER_rtl_0_bypass\(25))) # (!\INST_GPR|r_REGISTER~17_combout\ & 
-- ((\INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\))))) # (!\INST_GPR|r_REGISTER_rtl_0_bypass\(26) & (\INST_GPR|r_REGISTER_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|r_REGISTER_rtl_0_bypass\(26),
	datab => \INST_GPR|r_REGISTER_rtl_0_bypass\(25),
	datac => \INST_GPR|r_REGISTER~17_combout\,
	datad => \INST_GPR|r_REGISTER_rtl_0|auto_generated|ram_block1a7\,
	combout => \INST_GPR|r_REGISTER~24_combout\);

-- Location: FF_X29_Y22_N5
\INST_GPR|o_GPR_ALU_data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_GPR|r_REGISTER~24_combout\,
	ena => \r_register_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_GPR|o_GPR_ALU_data_A\(7));

-- Location: LCCOMB_X27_Y22_N16
\INST_ALU|r_ALU_overflow_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_overflow_flag~0_combout\ = (\INST_ALU|r_ALU_overflow_flag~q\) # (\INST_GPR|o_GPR_ALU_data_A\(7) $ (\INST_ALU|r_ALU_Result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_overflow_flag~q\,
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_ALU|r_ALU_Result\(7),
	combout => \INST_ALU|r_ALU_overflow_flag~0_combout\);

-- Location: LCCOMB_X29_Y22_N10
\INST_ALU|r_ALU_overflow_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_overflow_flag~1_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & !\INST_instruction_decoder|o_OPCODE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|r_ALU_overflow_flag~1_combout\);

-- Location: LCCOMB_X28_Y22_N4
\INST_ALU|r_ALU_overflow_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_overflow_flag~2_combout\ = (\INST_ALU|r_ALU_overflow_flag~0_combout\ & (\INST_ALU|r_ALU_overflow_flag~1_combout\ & (\INST_instruction_decoder|o_OPCODE\(0) $ (!\INST_ALU|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_overflow_flag~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|r_ALU_overflow_flag~1_combout\,
	datad => \INST_ALU|Equal0~2_combout\,
	combout => \INST_ALU|r_ALU_overflow_flag~2_combout\);

-- Location: LCCOMB_X27_Y22_N6
\INST_ALU|r_ALU_carry_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_carry_flag~0_combout\ = (\INST_control_unit|r_state\(3) & (((!\INST_instruction_decoder|o_OPCODE\(2)) # (!\INST_control_unit|Equal0~0_combout\)) # (!\INST_instruction_decoder|o_OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_control_unit|Equal0~0_combout\,
	datad => \INST_instruction_decoder|o_OPCODE\(2),
	combout => \INST_ALU|r_ALU_carry_flag~0_combout\);

-- Location: FF_X28_Y22_N5
\INST_ALU|r_ALU_overflow_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_overflow_flag~2_combout\,
	sclr => \INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_ALU|r_ALU_carry_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_overflow_flag~q\);

-- Location: LCCOMB_X26_Y20_N4
\INST_instruction_decoder|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux2~0_combout\ = (\INST_instruction_decoder|Mux1~0_combout\ & ((\INST_InstrucReg|r_register\(1)) # (\INST_InstrucReg|r_register\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_InstrucReg|r_register\(1),
	datac => \INST_InstrucReg|r_register\(28),
	datad => \INST_instruction_decoder|Mux1~0_combout\,
	combout => \INST_instruction_decoder|Mux2~0_combout\);

-- Location: FF_X26_Y20_N5
\INST_instruction_decoder|o_BRANCH_CONTROL[1]\ : dffeas
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
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(1));

-- Location: LCCOMB_X29_Y19_N26
\INST_instruction_decoder|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|Mux1~1_combout\ = (\INST_instruction_decoder|Mux1~0_combout\ & (!\INST_InstrucReg|r_register\(28) & \INST_InstrucReg|r_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|Mux1~0_combout\,
	datab => \INST_InstrucReg|r_register\(28),
	datac => \INST_InstrucReg|r_register\(2),
	combout => \INST_instruction_decoder|Mux1~1_combout\);

-- Location: FF_X29_Y19_N27
\INST_instruction_decoder|o_BRANCH_CONTROL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|Mux1~1_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_BRANCH_CONTROL\(2));

-- Location: LCCOMB_X27_Y22_N2
\INST_ALU|r_ALU_carry_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_carry_flag~1_combout\ = (!\INST_instruction_decoder|o_OPCODE\(2) & (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(3) $ (!\INST_instruction_decoder|o_OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|r_ALU_carry_flag~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\INST_ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Add0~16_combout\ = !\INST_ALU|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \INST_ALU|Add0~15\,
	combout => \INST_ALU|Add0~16_combout\);

-- Location: LCCOMB_X28_Y21_N22
\INST_ALU|tmp[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~0_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (((\INST_GPR|o_GPR_ALU_data_A\(7) & !\INST_B_imm_multiplexer|o_DATA[3]~7_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(0) & 
-- ((\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_GPR|o_GPR_ALU_data_A\(7),
	datad => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	combout => \INST_ALU|tmp[8]~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\INST_ALU|tmp[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_ALU|ShiftLeft1~1_combout\ & !\INST_B_imm_multiplexer|o_DATA[3]~7_combout\)))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_ALU|tmp[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|tmp[8]~0_combout\,
	datab => \INST_ALU|ShiftLeft1~1_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	combout => \INST_ALU|tmp[8]~1_combout\);

-- Location: LCCOMB_X27_Y22_N28
\INST_ALU|tmp[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (\INST_ALU|ShiftLeft0~6_combout\ & (!\INST_B_imm_multiplexer|o_DATA[3]~7_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (((\INST_ALU|tmp[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|ShiftLeft0~6_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[3]~7_combout\,
	datac => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datad => \INST_ALU|tmp[8]~1_combout\,
	combout => \INST_ALU|tmp[8]~2_combout\);

-- Location: LCCOMB_X27_Y22_N18
\INST_ALU|tmp[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~3_combout\ = (\INST_instruction_decoder|o_OPCODE\(3) & (\INST_ALU|Equal2~0_combout\ & ((\INST_ALU|tmp[8]~2_combout\)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & (((\INST_ALU|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Equal2~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Add0~16_combout\,
	datad => \INST_ALU|tmp[8]~2_combout\,
	combout => \INST_ALU|tmp[8]~3_combout\);

-- Location: LCCOMB_X27_Y22_N12
\INST_ALU|tmp[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|tmp[8]~4_combout\ = (\INST_control_unit|r_state\(3) & ((\INST_ALU|r_ALU_carry_flag~1_combout\ & ((\INST_ALU|tmp[8]~3_combout\))) # (!\INST_ALU|r_ALU_carry_flag~1_combout\ & (\INST_ALU|tmp\(8))))) # (!\INST_control_unit|r_state\(3) & 
-- (((\INST_ALU|tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_ALU|r_ALU_carry_flag~1_combout\,
	datac => \INST_ALU|tmp\(8),
	datad => \INST_ALU|tmp[8]~3_combout\,
	combout => \INST_ALU|tmp[8]~4_combout\);

-- Location: FF_X27_Y22_N13
\INST_ALU|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|tmp[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|tmp\(8));

-- Location: LCCOMB_X27_Y22_N24
\INST_ALU|r_ALU_carry_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_carry_flag~2_combout\ = (\INST_ALU|r_ALU_carry_flag~0_combout\ & (\INST_ALU|tmp\(8) & (\INST_ALU|r_ALU_carry_flag~1_combout\))) # (!\INST_ALU|r_ALU_carry_flag~0_combout\ & (((\INST_ALU|r_ALU_carry_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|tmp\(8),
	datab => \INST_ALU|r_ALU_carry_flag~1_combout\,
	datac => \INST_ALU|r_ALU_carry_flag~q\,
	datad => \INST_ALU|r_ALU_carry_flag~0_combout\,
	combout => \INST_ALU|r_ALU_carry_flag~2_combout\);

-- Location: FF_X27_Y22_N25
\INST_ALU|r_ALU_carry_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_carry_flag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_carry_flag~q\);

-- Location: LCCOMB_X27_Y22_N10
\INST_branch_control|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux0~0_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & (\INST_ALU|r_ALU_overflow_flag~q\ & (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & 
-- (((\INST_ALU|r_ALU_carry_flag~q\) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_overflow_flag~q\,
	datab => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datad => \INST_ALU|r_ALU_carry_flag~q\,
	combout => \INST_branch_control|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y22_N22
\INST_ALU|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal3~1_combout\ = (!\INST_ALU|r_ALU_Result\(5) & (!\INST_ALU|r_ALU_Result\(6) & (!\INST_ALU|r_ALU_Result\(4) & !\INST_ALU|r_ALU_Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(5),
	datab => \INST_ALU|r_ALU_Result\(6),
	datac => \INST_ALU|r_ALU_Result\(4),
	datad => \INST_ALU|r_ALU_Result\(7),
	combout => \INST_ALU|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y22_N0
\INST_ALU|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Equal3~0_combout\ = (!\INST_ALU|r_ALU_Result\(1) & (!\INST_ALU|r_ALU_Result\(0) & (!\INST_ALU|r_ALU_Result\(2) & !\INST_ALU|r_ALU_Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|r_ALU_Result\(1),
	datab => \INST_ALU|r_ALU_Result\(0),
	datac => \INST_ALU|r_ALU_Result\(2),
	datad => \INST_ALU|r_ALU_Result\(3),
	combout => \INST_ALU|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y22_N20
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

-- Location: FF_X27_Y22_N21
\INST_ALU|r_ALU_zero_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|Equal3~2_combout\,
	ena => \INST_control_unit|r_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_zero_flag~q\);

-- Location: LCCOMB_X26_Y20_N2
\INST_instruction_decoder|o_Signed~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_Signed~feeder_combout\ = \INST_InstrucReg|r_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_InstrucReg|r_register\(1),
	combout => \INST_instruction_decoder|o_Signed~feeder_combout\);

-- Location: FF_X26_Y20_N3
\INST_instruction_decoder|o_Signed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_Signed~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Signed~q\);

-- Location: LCCOMB_X31_Y21_N6
\INST_ALU|r_ALU_negative_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_negative_flag~2_combout\ = (\INST_instruction_decoder|o_Signed~q\ & (((\INST_ALU|r_ALU_Result\(7))))) # (!\INST_instruction_decoder|o_Signed~q\ & (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_ALU|LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_Signed~q\,
	datab => \INST_instruction_decoder|o_OPCODE\(0),
	datac => \INST_ALU|r_ALU_Result\(7),
	datad => \INST_ALU|LessThan1~14_combout\,
	combout => \INST_ALU|r_ALU_negative_flag~2_combout\);

-- Location: LCCOMB_X31_Y21_N0
\INST_ALU|r_ALU_negative_flag~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_negative_flag~3_combout\ = (!\INST_instruction_decoder|o_OPCODE\(1) & (!\INST_instruction_decoder|o_OPCODE\(2) & \INST_ALU|r_ALU_negative_flag~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|r_ALU_negative_flag~2_combout\,
	combout => \INST_ALU|r_ALU_negative_flag~3_combout\);

-- Location: FF_X31_Y21_N1
\INST_ALU|r_ALU_negative_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_negative_flag~3_combout\,
	sclr => \INST_instruction_decoder|o_OPCODE\(3),
	ena => \INST_ALU|r_ALU_carry_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_negative_flag~q\);

-- Location: LCCOMB_X27_Y22_N26
\INST_branch_control|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux0~1_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & (((!\INST_instruction_decoder|o_BRANCH_CONTROL\(1) & \INST_ALU|r_ALU_negative_flag~q\)))) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(2) & 
-- (\INST_ALU|r_ALU_zero_flag~q\ & (\INST_instruction_decoder|o_BRANCH_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BRANCH_CONTROL\(2),
	datab => \INST_ALU|r_ALU_zero_flag~q\,
	datac => \INST_instruction_decoder|o_BRANCH_CONTROL\(1),
	datad => \INST_ALU|r_ALU_negative_flag~q\,
	combout => \INST_branch_control|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y19_N4
\INST_branch_control|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_branch_control|Mux0~2_combout\ = (\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & (\INST_branch_control|Mux0~0_combout\)) # (!\INST_instruction_decoder|o_BRANCH_CONTROL\(0) & ((\INST_branch_control|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_BRANCH_CONTROL\(0),
	datac => \INST_branch_control|Mux0~0_combout\,
	datad => \INST_branch_control|Mux0~1_combout\,
	combout => \INST_branch_control|Mux0~2_combout\);

-- Location: FF_X27_Y19_N5
\INST_branch_control|o_PC_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_branch_control|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_PC_LOAD~q\);

-- Location: LCCOMB_X29_Y19_N12
\INST_instruction_decoder|o_Address_PROG[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_Address_PROG[0]~feeder_combout\ = \INST_InstrucReg|r_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(3),
	combout => \INST_instruction_decoder|o_Address_PROG[0]~feeder_combout\);

-- Location: FF_X29_Y19_N13
\INST_instruction_decoder|o_Address_PROG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_Address_PROG[0]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_Address_PROG\(0));

-- Location: FF_X28_Y19_N5
\INST_branch_control|o_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	asdata => \INST_instruction_decoder|o_Address_PROG\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_branch_control|o_ADDRESS\(0));

-- Location: LCCOMB_X27_Y19_N8
\INST_Program_counter|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_Program_counter|Add0~2_combout\ = (\INST_branch_control|o_PC_LOAD~q\ & ((\INST_branch_control|o_ADDRESS\(0)))) # (!\INST_branch_control|o_PC_LOAD~q\ & (\INST_Program_counter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_branch_control|o_PC_LOAD~q\,
	datac => \INST_Program_counter|Add0~0_combout\,
	datad => \INST_branch_control|o_ADDRESS\(0),
	combout => \INST_Program_counter|Add0~2_combout\);

-- Location: FF_X27_Y19_N9
\INST_Program_counter|r_PROG_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_Program_counter|Add0~2_combout\,
	sclr => \i_CORE_RESET~input_o\,
	ena => \INST_control_unit|r_state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_Program_counter|r_PROG_COUNT\(0));

-- Location: FF_X31_Y20_N15
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

-- Location: LCCOMB_X27_Y20_N0
\INST_control_unit|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|process_0~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(2) & (!\INST_instruction_decoder|o_OPCODE\(3) & \INST_instruction_decoder|o_OPCODE\(1)))) # (!\INST_instruction_decoder|o_OPCODE\(0) & 
-- (!\INST_instruction_decoder|o_OPCODE\(2) & (\INST_instruction_decoder|o_OPCODE\(3) & !\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(2),
	datac => \INST_instruction_decoder|o_OPCODE\(3),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_control_unit|process_0~0_combout\);

-- Location: LCCOMB_X27_Y20_N2
\INST_control_unit|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux1~0_combout\ = (!\INST_control_unit|r_state\(5) & (!\INST_control_unit|r_state\(1) & (\INST_control_unit|r_state\(0) & !\INST_control_unit|r_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(5),
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(0),
	datad => \INST_control_unit|r_state\(2),
	combout => \INST_control_unit|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\INST_control_unit|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux1~1_combout\ = (\INST_control_unit|r_state\(3) & (\INST_control_unit|process_0~0_combout\ & (!\INST_control_unit|r_state\(4) & \INST_control_unit|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_control_unit|process_0~0_combout\,
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_control_unit|Mux1~0_combout\,
	combout => \INST_control_unit|Mux1~1_combout\);

-- Location: FF_X27_Y20_N9
\INST_control_unit|r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux1~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(4));

-- Location: LCCOMB_X27_Y20_N12
\INST_control_unit|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux0~0_combout\ = (\INST_control_unit|Mux1~0_combout\ & ((\INST_control_unit|r_state\(3) & (!\INST_control_unit|process_0~0_combout\ & !\INST_control_unit|r_state\(4))) # (!\INST_control_unit|r_state\(3) & 
-- ((\INST_control_unit|r_state\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(3),
	datab => \INST_control_unit|process_0~0_combout\,
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_control_unit|Mux1~0_combout\,
	combout => \INST_control_unit|Mux0~0_combout\);

-- Location: FF_X27_Y20_N13
\INST_control_unit|r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux0~0_combout\,
	sclr => \i_CORE_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(5));

-- Location: LCCOMB_X27_Y20_N30
\INST_control_unit|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux2~0_combout\ = (!\INST_control_unit|r_state\(5) & (!\INST_control_unit|r_state\(1) & (\INST_control_unit|r_state\(0) & \INST_control_unit|r_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(5),
	datab => \INST_control_unit|r_state\(1),
	datac => \INST_control_unit|r_state\(0),
	datad => \INST_control_unit|r_state\(2),
	combout => \INST_control_unit|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y20_N4
\INST_control_unit|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux2~1_combout\ = (\INST_control_unit|Mux2~0_combout\ & (!\INST_control_unit|r_state\(4) & !\INST_control_unit|r_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Mux2~0_combout\,
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_control_unit|r_state\(3),
	combout => \INST_control_unit|Mux2~1_combout\);

-- Location: FF_X27_Y20_N5
\INST_control_unit|r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux2~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(3));

-- Location: LCCOMB_X27_Y20_N20
\INST_control_unit|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux3~0_combout\ = (!\INST_control_unit|r_state\(2) & (!\INST_control_unit|r_state\(3) & (!\INST_control_unit|r_state\(4) & !\INST_control_unit|r_state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_control_unit|r_state\(4),
	datad => \INST_control_unit|r_state\(5),
	combout => \INST_control_unit|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y20_N10
\INST_control_unit|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux4~0_combout\ = (\INST_control_unit|Mux3~0_combout\ & (!\INST_control_unit|r_state\(1) & !\INST_control_unit|r_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_control_unit|Mux3~0_combout\,
	datac => \INST_control_unit|r_state\(1),
	datad => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|Mux4~0_combout\);

-- Location: FF_X27_Y20_N11
\INST_control_unit|r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux4~0_combout\,
	sclr => \i_CORE_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(1));

-- Location: LCCOMB_X27_Y20_N6
\INST_control_unit|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux3~1_combout\ = (\INST_control_unit|r_state\(1) & (\INST_control_unit|Mux3~0_combout\ & \INST_control_unit|r_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(1),
	datab => \INST_control_unit|Mux3~0_combout\,
	datac => \INST_control_unit|r_state\(0),
	combout => \INST_control_unit|Mux3~1_combout\);

-- Location: FF_X27_Y20_N7
\INST_control_unit|r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux3~1_combout\,
	sclr => \i_CORE_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(2));

-- Location: LCCOMB_X27_Y20_N18
\INST_control_unit|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~2_combout\ = (!\INST_control_unit|r_state\(2) & (\INST_control_unit|r_state\(0) & (!\INST_control_unit|r_state\(3) & !\INST_control_unit|r_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(0),
	datac => \INST_control_unit|r_state\(3),
	datad => \INST_control_unit|r_state\(1),
	combout => \INST_control_unit|Mux5~2_combout\);

-- Location: LCCOMB_X27_Y20_N26
\INST_control_unit|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~0_combout\ = (\INST_control_unit|r_state\(5)) # (\i_CORE_RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(5),
	datad => \i_CORE_RESET~input_o\,
	combout => \INST_control_unit|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y20_N24
\INST_control_unit|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~1_combout\ = (\INST_control_unit|r_state\(2) & (\INST_control_unit|r_state\(0) & (!\INST_control_unit|r_state\(3) & !\INST_control_unit|r_state\(1)))) # (!\INST_control_unit|r_state\(2) & ((\INST_control_unit|r_state\(0) & 
-- (\INST_control_unit|r_state\(3) $ (\INST_control_unit|r_state\(1)))) # (!\INST_control_unit|r_state\(0) & (!\INST_control_unit|r_state\(3) & !\INST_control_unit|r_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|r_state\(2),
	datab => \INST_control_unit|r_state\(0),
	datac => \INST_control_unit|r_state\(3),
	datad => \INST_control_unit|r_state\(1),
	combout => \INST_control_unit|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y20_N28
\INST_control_unit|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_control_unit|Mux5~3_combout\ = (!\INST_control_unit|Mux5~0_combout\ & ((\INST_control_unit|r_state\(4) & (\INST_control_unit|Mux5~2_combout\)) # (!\INST_control_unit|r_state\(4) & ((\INST_control_unit|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Mux5~2_combout\,
	datab => \INST_control_unit|r_state\(4),
	datac => \INST_control_unit|Mux5~0_combout\,
	datad => \INST_control_unit|Mux5~1_combout\,
	combout => \INST_control_unit|Mux5~3_combout\);

-- Location: FF_X27_Y20_N29
\INST_control_unit|r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_control_unit|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_control_unit|r_state\(0));

-- Location: LCCOMB_X29_Y19_N0
\INST_instruction_decoder|o_OPCODE[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_instruction_decoder|o_OPCODE[2]~feeder_combout\ = \INST_InstrucReg|r_register\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_InstrucReg|r_register\(30),
	combout => \INST_instruction_decoder|o_OPCODE[2]~feeder_combout\);

-- Location: FF_X29_Y19_N1
\INST_instruction_decoder|o_OPCODE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_instruction_decoder|o_OPCODE[2]~feeder_combout\,
	ena => \INST_control_unit|r_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_instruction_decoder|o_OPCODE\(2));

-- Location: LCCOMB_X31_Y20_N22
\INST_ALU|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~12_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_instruction_decoder|o_OPCODE\(1)) # (!\INST_instruction_decoder|o_OPCODE\(0)))) # (!\INST_instruction_decoder|o_OPCODE\(3) & 
-- (\INST_instruction_decoder|o_OPCODE\(1) & !\INST_instruction_decoder|o_OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_instruction_decoder|o_OPCODE\(1),
	datad => \INST_instruction_decoder|o_OPCODE\(0),
	combout => \INST_ALU|Mux7~12_combout\);

-- Location: LCCOMB_X31_Y20_N30
\INST_ALU|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~10_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_instruction_decoder|o_OPCODE\(0) & !\INST_GPR|o_GPR_ALU_data_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_GPR|o_GPR_ALU_data_A\(0),
	combout => \INST_ALU|Mux7~10_combout\);

-- Location: LCCOMB_X31_Y20_N14
\INST_ALU|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~0_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_GPR|o_GPR_ALU_data_A\(0) $ (!\INST_instruction_decoder|o_OPCODE\(1))))) # (!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & 
-- (\INST_GPR|o_GPR_ALU_data_A\(0) & !\INST_instruction_decoder|o_OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_instruction_decoder|o_OPCODE\(0),
	datad => \INST_instruction_decoder|o_OPCODE\(1),
	combout => \INST_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y20_N4
\INST_ALU|ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|ShiftRight0~6_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_ALU|ShiftRight0~4_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_ALU|ShiftRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|ShiftRight0~5_combout\,
	datad => \INST_ALU|ShiftRight0~4_combout\,
	combout => \INST_ALU|ShiftRight0~6_combout\);

-- Location: LCCOMB_X31_Y20_N2
\INST_ALU|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~1_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & ((\INST_GPR|o_GPR_ALU_data_A\(3)))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_GPR|o_GPR_ALU_data_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_GPR|o_GPR_ALU_data_A\(2),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(3),
	combout => \INST_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X31_Y20_N8
\INST_ALU|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~2_combout\ = (\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_GPR|o_GPR_ALU_data_A\(1))))) # (!\INST_B_imm_multiplexer|o_DATA[0]~0_combout\ & (((\INST_GPR|o_GPR_ALU_data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_GPR|o_GPR_ALU_data_A\(0),
	datac => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datad => \INST_GPR|o_GPR_ALU_data_A\(1),
	combout => \INST_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X31_Y20_N10
\INST_ALU|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~3_combout\ = (\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|Mux7~1_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[1]~1_combout\ & (((\INST_ALU|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_ALU|Mux7~1_combout\,
	datac => \INST_ALU|Mux7~2_combout\,
	datad => \INST_B_imm_multiplexer|o_DATA[1]~1_combout\,
	combout => \INST_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X31_Y20_N16
\INST_ALU|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~4_combout\ = (\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (\INST_instruction_decoder|o_OPCODE\(0) & (\INST_ALU|ShiftRight0~6_combout\))) # (!\INST_B_imm_multiplexer|o_DATA[2]~2_combout\ & (((\INST_ALU|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_B_imm_multiplexer|o_DATA[2]~2_combout\,
	datac => \INST_ALU|ShiftRight0~6_combout\,
	datad => \INST_ALU|Mux7~3_combout\,
	combout => \INST_ALU|Mux7~4_combout\);

-- Location: LCCOMB_X31_Y20_N26
\INST_ALU|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~5_combout\ = (\INST_control_unit|Equal0~0_combout\ & ((\INST_B_imm_multiplexer|o_DATA[0]~0_combout\) # ((\INST_ALU|Mux6~0_combout\ & \INST_ALU|Mux7~4_combout\)))) # (!\INST_control_unit|Equal0~0_combout\ & (((\INST_ALU|Mux6~0_combout\ & 
-- \INST_ALU|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_control_unit|Equal0~0_combout\,
	datab => \INST_B_imm_multiplexer|o_DATA[0]~0_combout\,
	datac => \INST_ALU|Mux6~0_combout\,
	datad => \INST_ALU|Mux7~4_combout\,
	combout => \INST_ALU|Mux7~5_combout\);

-- Location: LCCOMB_X26_Y21_N6
\INST_ALU|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~7_combout\ = (\INST_GPR|o_GPR_ALU_data_A\(0)) # ((\INST_instruction_decoder|o_IMM_enable~q\ & ((\INST_instruction_decoder|o_Address_PROG\(2)))) # (!\INST_instruction_decoder|o_IMM_enable~q\ & (\INST_GPR|o_GPR_ALU_data_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_GPR|o_GPR_ALU_data_A\(0),
	datab => \INST_GPR|o_GPR_ALU_data_B\(0),
	datac => \INST_instruction_decoder|o_Address_PROG\(2),
	datad => \INST_instruction_decoder|o_IMM_enable~q\,
	combout => \INST_ALU|Mux7~7_combout\);

-- Location: LCCOMB_X31_Y20_N20
\INST_ALU|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~6_combout\ = (\INST_instruction_decoder|o_OPCODE\(0) & ((\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add0~0_combout\))) # (!\INST_instruction_decoder|o_OPCODE\(1) & (\INST_ALU|Add1~0_combout\)))) # 
-- (!\INST_instruction_decoder|o_OPCODE\(0) & (!\INST_instruction_decoder|o_OPCODE\(1) & ((\INST_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Add1~0_combout\,
	datad => \INST_ALU|Add0~0_combout\,
	combout => \INST_ALU|Mux7~6_combout\);

-- Location: LCCOMB_X31_Y20_N6
\INST_ALU|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~8_combout\ = (\INST_ALU|Mux7~6_combout\) # ((!\INST_instruction_decoder|o_OPCODE\(0) & (\INST_instruction_decoder|o_OPCODE\(1) & \INST_ALU|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(0),
	datab => \INST_instruction_decoder|o_OPCODE\(1),
	datac => \INST_ALU|Mux7~7_combout\,
	datad => \INST_ALU|Mux7~6_combout\,
	combout => \INST_ALU|Mux7~8_combout\);

-- Location: LCCOMB_X31_Y20_N12
\INST_ALU|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~9_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & (\INST_instruction_decoder|o_OPCODE\(3))) # (!\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_instruction_decoder|o_OPCODE\(3) & (\INST_ALU|Mux7~5_combout\)) # 
-- (!\INST_instruction_decoder|o_OPCODE\(3) & ((\INST_ALU|Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_instruction_decoder|o_OPCODE\(2),
	datab => \INST_instruction_decoder|o_OPCODE\(3),
	datac => \INST_ALU|Mux7~5_combout\,
	datad => \INST_ALU|Mux7~8_combout\,
	combout => \INST_ALU|Mux7~9_combout\);

-- Location: LCCOMB_X31_Y20_N28
\INST_ALU|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|Mux7~11_combout\ = (\INST_instruction_decoder|o_OPCODE\(2) & ((\INST_ALU|Mux7~9_combout\ & (\INST_ALU|Mux7~10_combout\)) # (!\INST_ALU|Mux7~9_combout\ & ((\INST_ALU|Mux7~0_combout\))))) # (!\INST_instruction_decoder|o_OPCODE\(2) & 
-- (((\INST_ALU|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~10_combout\,
	datab => \INST_ALU|Mux7~0_combout\,
	datac => \INST_instruction_decoder|o_OPCODE\(2),
	datad => \INST_ALU|Mux7~9_combout\,
	combout => \INST_ALU|Mux7~11_combout\);

-- Location: LCCOMB_X31_Y20_N24
\INST_ALU|r_ALU_Result[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_ALU|r_ALU_Result[0]~2_combout\ = (\INST_ALU|Mux7~12_combout\ & (((\INST_ALU|r_ALU_Result\(0))))) # (!\INST_ALU|Mux7~12_combout\ & ((\INST_control_unit|r_state\(3) & ((\INST_ALU|Mux7~11_combout\))) # (!\INST_control_unit|r_state\(3) & 
-- (\INST_ALU|r_ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_ALU|Mux7~12_combout\,
	datab => \INST_control_unit|r_state\(3),
	datac => \INST_ALU|r_ALU_Result\(0),
	datad => \INST_ALU|Mux7~11_combout\,
	combout => \INST_ALU|r_ALU_Result[0]~2_combout\);

-- Location: FF_X31_Y20_N25
\INST_ALU|r_ALU_Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CORE_CLK~inputclkctrl_outclk\,
	d => \INST_ALU|r_ALU_Result[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_ALU|r_ALU_Result\(0));

-- Location: IOIBUF_X41_Y15_N8
\i_CORE_HALT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_HALT,
	o => \i_CORE_HALT~input_o\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;
END structure;

