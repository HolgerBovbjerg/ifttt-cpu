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

-- DATE "05/23/2019 14:57:48"

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

ENTITY 	instruction_decoder IS
    PORT (
	i_CLK : IN std_logic;
	i_ENABLE : IN std_logic;
	i_INSTRUCTION : IN std_logic_vector(31 DOWNTO 0);
	o_OPCODE : OUT std_logic_vector(3 DOWNTO 0);
	o_REGISTER_A : OUT std_logic_vector(4 DOWNTO 0);
	o_REGISTER_B : OUT std_logic_vector(4 DOWNTO 0);
	o_REGISTER_C : OUT std_logic_vector(4 DOWNTO 0);
	o_REGISTER_C_WRITE_ENABLE : OUT std_logic;
	o_DATA_IMM : OUT std_logic_vector(7 DOWNTO 0);
	o_Address_PROG : OUT std_logic_vector(9 DOWNTO 0);
	o_Address_MEM : OUT std_logic_vector(15 DOWNTO 0);
	o_MEM_access : OUT std_logic;
	o_MEM_write_enable : OUT std_logic;
	o_BRANCH_CONTROL : OUT std_logic_vector(2 DOWNTO 0);
	o_Signed : OUT std_logic;
	o_carry : OUT std_logic;
	o_SAVE_PC : OUT std_logic;
	o_IMM_enable : OUT std_logic;
	o_BUS_select : OUT std_logic_vector(1 DOWNTO 0)
	);
END instruction_decoder;

-- Design Ports Information
-- o_OPCODE[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_OPCODE[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_OPCODE[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_OPCODE[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C_WRITE_ENABLE	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[9]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[13]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[15]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MEM_access	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MEM_write_enable	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Signed	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_carry	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SAVE_PC	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IMM_enable	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BUS_select[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BUS_select[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[28]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[18]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[20]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[21]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[22]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[14]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[16]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[23]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[24]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[26]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[27]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF instruction_decoder IS
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
SIGNAL ww_i_ENABLE : std_logic;
SIGNAL ww_i_INSTRUCTION : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_REGISTER_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_C : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_C_WRITE_ENABLE : std_logic;
SIGNAL ww_o_DATA_IMM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Address_PROG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_o_Address_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_MEM_access : std_logic;
SIGNAL ww_o_MEM_write_enable : std_logic;
SIGNAL ww_o_BRANCH_CONTROL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_Signed : std_logic;
SIGNAL ww_o_carry : std_logic;
SIGNAL ww_o_SAVE_PC : std_logic;
SIGNAL ww_o_IMM_enable : std_logic;
SIGNAL ww_o_BUS_select : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_OPCODE[0]~output_o\ : std_logic;
SIGNAL \o_OPCODE[1]~output_o\ : std_logic;
SIGNAL \o_OPCODE[2]~output_o\ : std_logic;
SIGNAL \o_OPCODE[3]~output_o\ : std_logic;
SIGNAL \o_REGISTER_A[0]~output_o\ : std_logic;
SIGNAL \o_REGISTER_A[1]~output_o\ : std_logic;
SIGNAL \o_REGISTER_A[2]~output_o\ : std_logic;
SIGNAL \o_REGISTER_A[3]~output_o\ : std_logic;
SIGNAL \o_REGISTER_A[4]~output_o\ : std_logic;
SIGNAL \o_REGISTER_B[0]~output_o\ : std_logic;
SIGNAL \o_REGISTER_B[1]~output_o\ : std_logic;
SIGNAL \o_REGISTER_B[2]~output_o\ : std_logic;
SIGNAL \o_REGISTER_B[3]~output_o\ : std_logic;
SIGNAL \o_REGISTER_B[4]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C[0]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C[1]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C[2]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C[3]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C[4]~output_o\ : std_logic;
SIGNAL \o_REGISTER_C_WRITE_ENABLE~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[0]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[1]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[2]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[3]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[4]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[5]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[6]~output_o\ : std_logic;
SIGNAL \o_DATA_IMM[7]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[0]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[1]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[2]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[3]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[4]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[5]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[6]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[7]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[8]~output_o\ : std_logic;
SIGNAL \o_Address_PROG[9]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[0]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[1]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[2]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[3]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[4]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[5]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[6]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[7]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[8]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[9]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[10]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[11]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[12]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[13]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[14]~output_o\ : std_logic;
SIGNAL \o_Address_MEM[15]~output_o\ : std_logic;
SIGNAL \o_MEM_access~output_o\ : std_logic;
SIGNAL \o_MEM_write_enable~output_o\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[0]~output_o\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[1]~output_o\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[2]~output_o\ : std_logic;
SIGNAL \o_Signed~output_o\ : std_logic;
SIGNAL \o_carry~output_o\ : std_logic;
SIGNAL \o_SAVE_PC~output_o\ : std_logic;
SIGNAL \o_IMM_enable~output_o\ : std_logic;
SIGNAL \o_BUS_select[0]~output_o\ : std_logic;
SIGNAL \o_BUS_select[1]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_INSTRUCTION[28]~input_o\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \o_OPCODE[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[29]~input_o\ : std_logic;
SIGNAL \o_OPCODE[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[30]~input_o\ : std_logic;
SIGNAL \o_OPCODE[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_OPCODE[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[31]~input_o\ : std_logic;
SIGNAL \o_OPCODE[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[18]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[19]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[20]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[21]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[22]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[13]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[14]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[15]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[16]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_B[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[17]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[23]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[24]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[25]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[26]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[27]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \o_REGISTER_C_WRITE_ENABLE~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[5]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[6]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[7]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[8]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[9]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[10]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[5]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[11]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[6]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[12]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[7]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[3]~input_o\ : std_logic;
SIGNAL \o_Address_PROG[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[4]~input_o\ : std_logic;
SIGNAL \o_Address_PROG[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[1]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[2]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[3]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[4]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[5]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[6]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[7]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[8]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[8]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[9]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[9]~reg0_q\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[0]~3_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[0]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_INSTRUCTION[2]~input_o\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \o_Address_MEM[0]~reg0_q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[1]~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[1]~reg0_q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[2]~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[2]~reg0_q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[3]~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[3]~reg0_q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[4]~7_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[4]~reg0_q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[5]~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[5]~reg0_q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[6]~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[6]~reg0_q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[7]~10_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[7]~reg0_q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[8]~11_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[8]~reg0_q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[9]~12_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[9]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[0]~2_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[10]~13_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[10]~reg0_q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[11]~14_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[11]~reg0_q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[12]~15_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[12]~reg0_q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \r_STACK_POINTER[13]~16_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[13]~reg0_q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[14]~reg0_q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \o_Address_MEM[15]~reg0_q\ : std_logic;
SIGNAL \o_MEM_access~0_combout\ : std_logic;
SIGNAL \o_MEM_access~1_combout\ : std_logic;
SIGNAL \o_MEM_access~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \o_MEM_write_enable~reg0feeder_combout\ : std_logic;
SIGNAL \o_MEM_write_enable~reg0_q\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \i_INSTRUCTION[0]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[0]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \i_INSTRUCTION[1]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[1]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[2]~reg0_q\ : std_logic;
SIGNAL \o_Signed~reg0feeder_combout\ : std_logic;
SIGNAL \o_Signed~reg0_q\ : std_logic;
SIGNAL \o_carry~reg0feeder_combout\ : std_logic;
SIGNAL \o_carry~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \o_SAVE_PC~reg0_q\ : std_logic;
SIGNAL \o_IMM_enable~reg0_q\ : std_logic;
SIGNAL \o_BUS_select[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_BUS_select[0]~reg0_q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \o_BUS_select[1]~reg0_q\ : std_logic;
SIGNAL r_STACK_POINTER : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_INSTRUCTION <= i_INSTRUCTION;
o_OPCODE <= ww_o_OPCODE;
o_REGISTER_A <= ww_o_REGISTER_A;
o_REGISTER_B <= ww_o_REGISTER_B;
o_REGISTER_C <= ww_o_REGISTER_C;
o_REGISTER_C_WRITE_ENABLE <= ww_o_REGISTER_C_WRITE_ENABLE;
o_DATA_IMM <= ww_o_DATA_IMM;
o_Address_PROG <= ww_o_Address_PROG;
o_Address_MEM <= ww_o_Address_MEM;
o_MEM_access <= ww_o_MEM_access;
o_MEM_write_enable <= ww_o_MEM_write_enable;
o_BRANCH_CONTROL <= ww_o_BRANCH_CONTROL;
o_Signed <= ww_o_Signed;
o_carry <= ww_o_carry;
o_SAVE_PC <= ww_o_SAVE_PC;
o_IMM_enable <= ww_o_IMM_enable;
o_BUS_select <= ww_o_BUS_select;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X35_Y0_N9
\o_OPCODE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_OPCODE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_OPCODE[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_OPCODE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_OPCODE[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_OPCODE[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\o_OPCODE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_OPCODE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_OPCODE[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\o_OPCODE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_OPCODE[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_OPCODE[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_REGISTER_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_A[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_A[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_REGISTER_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_A[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_A[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_REGISTER_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_A[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_A[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_REGISTER_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_A[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_A[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_REGISTER_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_A[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_A[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_REGISTER_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_B[0]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\o_REGISTER_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_B[1]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\o_REGISTER_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_B[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\o_REGISTER_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_B[3]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\o_REGISTER_B[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_B[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\o_REGISTER_C[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_REGISTER_C[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_REGISTER_C[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_REGISTER_C[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\o_REGISTER_C[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\o_REGISTER_C_WRITE_ENABLE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_REGISTER_C_WRITE_ENABLE~reg0_q\,
	devoe => ww_devoe,
	o => \o_REGISTER_C_WRITE_ENABLE~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_DATA_IMM[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_DATA_IMM[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[1]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\o_DATA_IMM[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\o_DATA_IMM[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\o_DATA_IMM[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\o_DATA_IMM[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[5]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\o_DATA_IMM[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[6]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\o_DATA_IMM[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_IMM[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_IMM[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\o_Address_PROG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\o_Address_PROG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_Address_PROG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_Address_PROG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[3]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\o_Address_PROG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[4]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\o_Address_PROG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[5]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_Address_PROG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\o_Address_PROG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[7]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\o_Address_PROG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[8]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[8]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\o_Address_PROG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_PROG[9]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_PROG[9]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\o_Address_MEM[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\o_Address_MEM[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\o_Address_MEM[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\o_Address_MEM[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\o_Address_MEM[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_Address_MEM[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[5]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\o_Address_MEM[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\o_Address_MEM[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_Address_MEM[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[8]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_Address_MEM[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[9]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[9]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\o_Address_MEM[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[10]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[10]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_Address_MEM[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[11]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[11]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_Address_MEM[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[12]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[12]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\o_Address_MEM[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[13]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_Address_MEM[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[14]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[14]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_Address_MEM[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Address_MEM[15]~reg0_q\,
	devoe => ww_devoe,
	o => \o_Address_MEM[15]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\o_MEM_access~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MEM_access~reg0_q\,
	devoe => ww_devoe,
	o => \o_MEM_access~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\o_MEM_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MEM_write_enable~reg0_q\,
	devoe => ww_devoe,
	o => \o_MEM_write_enable~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\o_BRANCH_CONTROL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_BRANCH_CONTROL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_BRANCH_CONTROL[0]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\o_BRANCH_CONTROL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_BRANCH_CONTROL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_BRANCH_CONTROL[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\o_BRANCH_CONTROL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_BRANCH_CONTROL[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_BRANCH_CONTROL[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_Signed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Signed~reg0_q\,
	devoe => ww_devoe,
	o => \o_Signed~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\o_carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_carry~reg0_q\,
	devoe => ww_devoe,
	o => \o_carry~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\o_SAVE_PC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_SAVE_PC~reg0_q\,
	devoe => ww_devoe,
	o => \o_SAVE_PC~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\o_IMM_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_IMM_enable~reg0_q\,
	devoe => ww_devoe,
	o => \o_IMM_enable~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\o_BUS_select[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_BUS_select[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_BUS_select[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\o_BUS_select[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_BUS_select[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_BUS_select[1]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X30_Y29_N22
\i_INSTRUCTION[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(28),
	o => \i_INSTRUCTION[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: FF_X33_Y16_N25
\o_OPCODE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[28]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_OPCODE[0]~reg0_q\);

-- Location: IOIBUF_X39_Y29_N1
\i_INSTRUCTION[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(29),
	o => \i_INSTRUCTION[29]~input_o\);

-- Location: FF_X37_Y17_N9
\o_OPCODE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[29]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_OPCODE[1]~reg0_q\);

-- Location: IOIBUF_X30_Y29_N15
\i_INSTRUCTION[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(30),
	o => \i_INSTRUCTION[30]~input_o\);

-- Location: LCCOMB_X30_Y16_N24
\o_OPCODE[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_OPCODE[2]~reg0feeder_combout\ = \i_INSTRUCTION[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[30]~input_o\,
	combout => \o_OPCODE[2]~reg0feeder_combout\);

-- Location: FF_X30_Y16_N25
\o_OPCODE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_OPCODE[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_OPCODE[2]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N15
\i_INSTRUCTION[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(31),
	o => \i_INSTRUCTION[31]~input_o\);

-- Location: FF_X37_Y17_N23
\o_OPCODE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[31]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_OPCODE[3]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\i_INSTRUCTION[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(18),
	o => \i_INSTRUCTION[18]~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\o_REGISTER_A[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[0]~reg0feeder_combout\ = \i_INSTRUCTION[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[18]~input_o\,
	combout => \o_REGISTER_A[0]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N21
\o_REGISTER_A[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_A[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[0]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N8
\i_INSTRUCTION[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(19),
	o => \i_INSTRUCTION[19]~input_o\);

-- Location: LCCOMB_X15_Y1_N30
\o_REGISTER_A[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[1]~reg0feeder_combout\ = \i_INSTRUCTION[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[19]~input_o\,
	combout => \o_REGISTER_A[1]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N31
\o_REGISTER_A[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_A[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[1]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\i_INSTRUCTION[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(20),
	o => \i_INSTRUCTION[20]~input_o\);

-- Location: FF_X15_Y1_N13
\o_REGISTER_A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[20]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[2]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\i_INSTRUCTION[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(21),
	o => \i_INSTRUCTION[21]~input_o\);

-- Location: LCCOMB_X15_Y1_N10
\o_REGISTER_A[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[3]~reg0feeder_combout\ = \i_INSTRUCTION[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[21]~input_o\,
	combout => \o_REGISTER_A[3]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N11
\o_REGISTER_A[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_A[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[3]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N29
\i_INSTRUCTION[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(22),
	o => \i_INSTRUCTION[22]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\o_REGISTER_A[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[4]~reg0feeder_combout\ = \i_INSTRUCTION[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[22]~input_o\,
	combout => \o_REGISTER_A[4]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N25
\o_REGISTER_A[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_A[4]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[4]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N22
\i_INSTRUCTION[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(13),
	o => \i_INSTRUCTION[13]~input_o\);

-- Location: FF_X32_Y16_N13
\o_REGISTER_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[13]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[0]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N29
\i_INSTRUCTION[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(14),
	o => \i_INSTRUCTION[14]~input_o\);

-- Location: FF_X32_Y16_N31
\o_REGISTER_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[14]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[1]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N22
\i_INSTRUCTION[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(15),
	o => \i_INSTRUCTION[15]~input_o\);

-- Location: FF_X37_Y16_N25
\o_REGISTER_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[15]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[2]~reg0_q\);

-- Location: IOIBUF_X41_Y14_N15
\i_INSTRUCTION[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(16),
	o => \i_INSTRUCTION[16]~input_o\);

-- Location: LCCOMB_X33_Y16_N22
\o_REGISTER_B[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_B[3]~reg0feeder_combout\ = \i_INSTRUCTION[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[16]~input_o\,
	combout => \o_REGISTER_B[3]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N23
\o_REGISTER_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_B[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[3]~reg0_q\);

-- Location: IOIBUF_X41_Y19_N1
\i_INSTRUCTION[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(17),
	o => \i_INSTRUCTION[17]~input_o\);

-- Location: FF_X33_Y16_N5
\o_REGISTER_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[17]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[4]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N1
\i_INSTRUCTION[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(23),
	o => \i_INSTRUCTION[23]~input_o\);

-- Location: FF_X15_Y1_N15
\o_REGISTER_C[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[23]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[0]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N29
\i_INSTRUCTION[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(24),
	o => \i_INSTRUCTION[24]~input_o\);

-- Location: LCCOMB_X15_Y1_N8
\o_REGISTER_C[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_C[1]~reg0feeder_combout\ = \i_INSTRUCTION[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[24]~input_o\,
	combout => \o_REGISTER_C[1]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N9
\o_REGISTER_C[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_C[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[1]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\i_INSTRUCTION[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(25),
	o => \i_INSTRUCTION[25]~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\o_REGISTER_C[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_C[2]~reg0feeder_combout\ = \i_INSTRUCTION[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[25]~input_o\,
	combout => \o_REGISTER_C[2]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N19
\o_REGISTER_C[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_C[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[2]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N15
\i_INSTRUCTION[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(26),
	o => \i_INSTRUCTION[26]~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\o_REGISTER_C[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_C[3]~reg0feeder_combout\ = \i_INSTRUCTION[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[26]~input_o\,
	combout => \o_REGISTER_C[3]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N1
\o_REGISTER_C[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_C[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[3]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\i_INSTRUCTION[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(27),
	o => \i_INSTRUCTION[27]~input_o\);

-- Location: FF_X15_Y1_N3
\o_REGISTER_C[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[27]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[4]~reg0_q\);

-- Location: LCCOMB_X33_Y16_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_INSTRUCTION[16]~input_o\ & !\i_INSTRUCTION[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[16]~input_o\,
	datac => \i_INSTRUCTION[17]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X37_Y17_N6
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\i_INSTRUCTION[28]~input_o\ & (((\Mux1~0_combout\ & \i_INSTRUCTION[15]~input_o\)) # (!\i_INSTRUCTION[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[28]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \i_INSTRUCTION[31]~input_o\,
	datad => \i_INSTRUCTION[15]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X37_Y17_N28
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\i_INSTRUCTION[30]~input_o\ & (((\i_INSTRUCTION[29]~input_o\ & \Mux1~1_combout\)) # (!\i_INSTRUCTION[31]~input_o\))) # (!\i_INSTRUCTION[30]~input_o\ & ((\i_INSTRUCTION[31]~input_o\) # ((\i_INSTRUCTION[29]~input_o\) # 
-- (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[29]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X37_Y17_N29
\o_REGISTER_C_WRITE_ENABLE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C_WRITE_ENABLE~reg0_q\);

-- Location: IOIBUF_X19_Y29_N1
\i_INSTRUCTION[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(5),
	o => \i_INSTRUCTION[5]~input_o\);

-- Location: LCCOMB_X15_Y1_N28
\o_DATA_IMM[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[0]~reg0feeder_combout\ = \i_INSTRUCTION[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[5]~input_o\,
	combout => \o_DATA_IMM[0]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N29
\o_DATA_IMM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[0]~reg0_q\);

-- Location: IOIBUF_X19_Y29_N8
\i_INSTRUCTION[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(6),
	o => \i_INSTRUCTION[6]~input_o\);

-- Location: LCCOMB_X15_Y1_N22
\o_DATA_IMM[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[1]~reg0feeder_combout\ = \i_INSTRUCTION[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[6]~input_o\,
	combout => \o_DATA_IMM[1]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N23
\o_DATA_IMM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[1]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N22
\i_INSTRUCTION[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(7),
	o => \i_INSTRUCTION[7]~input_o\);

-- Location: LCCOMB_X37_Y16_N30
\o_DATA_IMM[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[2]~reg0feeder_combout\ = \i_INSTRUCTION[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[7]~input_o\,
	combout => \o_DATA_IMM[2]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N31
\o_DATA_IMM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[2]~reg0_q\);

-- Location: IOIBUF_X39_Y29_N29
\i_INSTRUCTION[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(8),
	o => \i_INSTRUCTION[8]~input_o\);

-- Location: FF_X37_Y16_N29
\o_DATA_IMM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[8]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[3]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N8
\i_INSTRUCTION[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(9),
	o => \i_INSTRUCTION[9]~input_o\);

-- Location: LCCOMB_X33_Y16_N14
\o_DATA_IMM[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[4]~reg0feeder_combout\ = \i_INSTRUCTION[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[9]~input_o\,
	combout => \o_DATA_IMM[4]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N15
\o_DATA_IMM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[4]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[4]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N1
\i_INSTRUCTION[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(10),
	o => \i_INSTRUCTION[10]~input_o\);

-- Location: LCCOMB_X37_Y16_N14
\o_DATA_IMM[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[5]~reg0feeder_combout\ = \i_INSTRUCTION[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[10]~input_o\,
	combout => \o_DATA_IMM[5]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N15
\o_DATA_IMM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[5]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[5]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N8
\i_INSTRUCTION[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(11),
	o => \i_INSTRUCTION[11]~input_o\);

-- Location: LCCOMB_X37_Y16_N16
\o_DATA_IMM[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[6]~reg0feeder_combout\ = \i_INSTRUCTION[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[11]~input_o\,
	combout => \o_DATA_IMM[6]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N17
\o_DATA_IMM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[6]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[6]~reg0_q\);

-- Location: IOIBUF_X41_Y14_N1
\i_INSTRUCTION[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(12),
	o => \i_INSTRUCTION[12]~input_o\);

-- Location: LCCOMB_X37_Y16_N26
\o_DATA_IMM[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[7]~reg0feeder_combout\ = \i_INSTRUCTION[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[12]~input_o\,
	combout => \o_DATA_IMM[7]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N27
\o_DATA_IMM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[7]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[7]~reg0_q\);

-- Location: IOIBUF_X26_Y29_N22
\i_INSTRUCTION[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(3),
	o => \i_INSTRUCTION[3]~input_o\);

-- Location: LCCOMB_X33_Y16_N12
\o_Address_PROG[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[0]~reg0feeder_combout\ = \i_INSTRUCTION[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[3]~input_o\,
	combout => \o_Address_PROG[0]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N13
\o_Address_PROG[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[0]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N8
\i_INSTRUCTION[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(4),
	o => \i_INSTRUCTION[4]~input_o\);

-- Location: LCCOMB_X33_Y16_N10
\o_Address_PROG[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[1]~reg0feeder_combout\ = \i_INSTRUCTION[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[4]~input_o\,
	combout => \o_Address_PROG[1]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N11
\o_Address_PROG[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[1]~reg0_q\);

-- Location: LCCOMB_X15_Y1_N16
\o_Address_PROG[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[2]~reg0feeder_combout\ = \i_INSTRUCTION[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[5]~input_o\,
	combout => \o_Address_PROG[2]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N17
\o_Address_PROG[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[2]~reg0_q\);

-- Location: LCCOMB_X15_Y1_N26
\o_Address_PROG[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[3]~reg0feeder_combout\ = \i_INSTRUCTION[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[6]~input_o\,
	combout => \o_Address_PROG[3]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N27
\o_Address_PROG[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[3]~reg0_q\);

-- Location: LCCOMB_X37_Y16_N20
\o_Address_PROG[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[4]~reg0feeder_combout\ = \i_INSTRUCTION[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[7]~input_o\,
	combout => \o_Address_PROG[4]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N21
\o_Address_PROG[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[4]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[4]~reg0_q\);

-- Location: FF_X37_Y16_N7
\o_Address_PROG[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[8]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[5]~reg0_q\);

-- Location: LCCOMB_X33_Y16_N16
\o_Address_PROG[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[6]~reg0feeder_combout\ = \i_INSTRUCTION[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[9]~input_o\,
	combout => \o_Address_PROG[6]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N17
\o_Address_PROG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[6]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[6]~reg0_q\);

-- Location: LCCOMB_X37_Y16_N8
\o_Address_PROG[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[7]~reg0feeder_combout\ = \i_INSTRUCTION[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[10]~input_o\,
	combout => \o_Address_PROG[7]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N9
\o_Address_PROG[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[7]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[7]~reg0_q\);

-- Location: LCCOMB_X37_Y16_N22
\o_Address_PROG[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[8]~reg0feeder_combout\ = \i_INSTRUCTION[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[11]~input_o\,
	combout => \o_Address_PROG[8]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N23
\o_Address_PROG[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[8]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[8]~reg0_q\);

-- Location: LCCOMB_X37_Y16_N4
\o_Address_PROG[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[9]~reg0feeder_combout\ = \i_INSTRUCTION[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[12]~input_o\,
	combout => \o_Address_PROG[9]~reg0feeder_combout\);

-- Location: FF_X37_Y16_N5
\o_Address_PROG[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[9]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[9]~reg0_q\);

-- Location: LCCOMB_X37_Y17_N12
\Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\i_INSTRUCTION[29]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & (\i_INSTRUCTION[30]~input_o\ & \i_INSTRUCTION[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[30]~input_o\,
	datad => \i_INSTRUCTION[28]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X29_Y16_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = r_STACK_POINTER(0) $ (GND)
-- \Add1~1\ = CARRY(!r_STACK_POINTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_STACK_POINTER(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X30_Y16_N6
\r_STACK_POINTER[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[0]~3_combout\ = !\Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~0_combout\,
	combout => \r_STACK_POINTER[0]~3_combout\);

-- Location: LCCOMB_X33_Y16_N2
\r_STACK_POINTER[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[0]~2_combout\ = (\i_INSTRUCTION[16]~input_o\ & (\i_ENABLE~input_o\ & (!\i_INSTRUCTION[17]~input_o\ & \Mux57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[16]~input_o\,
	datab => \i_ENABLE~input_o\,
	datac => \i_INSTRUCTION[17]~input_o\,
	datad => \Mux57~0_combout\,
	combout => \r_STACK_POINTER[0]~2_combout\);

-- Location: FF_X31_Y16_N11
\r_STACK_POINTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \r_STACK_POINTER[0]~3_combout\,
	sload => VCC,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(0));

-- Location: LCCOMB_X31_Y16_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_STACK_POINTER(0) & (!\i_INSTRUCTION[15]~input_o\ & VCC)) # (!r_STACK_POINTER(0) & (\i_INSTRUCTION[15]~input_o\ $ (GND)))
-- \Add0~1\ = CARRY((!r_STACK_POINTER(0) & !\i_INSTRUCTION[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(0),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X37_Y29_N15
\i_INSTRUCTION[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(2),
	o => \i_INSTRUCTION[2]~input_o\);

-- Location: LCCOMB_X37_Y16_N10
\Mux57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux57~0_combout\ & ((\Mux1~0_combout\ & (\Add0~0_combout\)) # (!\Mux1~0_combout\ & ((\i_INSTRUCTION[2]~input_o\))))) # (!\Mux57~0_combout\ & (((\i_INSTRUCTION[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: FF_X37_Y16_N11
\o_Address_MEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux57~1_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[0]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (r_STACK_POINTER(1) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add1~1\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add1~1\)))) # (!r_STACK_POINTER(1) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add1~1\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add1~1\ & VCC))))
-- \Add1~3\ = CARRY((r_STACK_POINTER(1) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add1~1\))) # (!r_STACK_POINTER(1) & (\i_INSTRUCTION[15]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(1),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X30_Y16_N20
\r_STACK_POINTER[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[1]~4_combout\ = !\Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~2_combout\,
	combout => \r_STACK_POINTER[1]~4_combout\);

-- Location: FF_X30_Y16_N21
\r_STACK_POINTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[1]~4_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(1));

-- Location: LCCOMB_X31_Y16_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(1) & ((\Add0~1\) # (GND))) # (!r_STACK_POINTER(1) & (!\Add0~1\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(1) & (!\Add0~1\)) # (!r_STACK_POINTER(1) & (\Add0~1\ & VCC))))
-- \Add0~3\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(1)) # (!\Add0~1\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y16_N30
\Mux56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux57~0_combout\ & ((\Mux1~0_combout\ & ((\Add0~2_combout\))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[3]~input_o\)))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[3]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux56~0_combout\);

-- Location: FF_X33_Y16_N31
\o_Address_MEM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux56~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[1]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(2) & !\Add1~3\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add1~3\) # (!r_STACK_POINTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X30_Y16_N18
\r_STACK_POINTER[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[2]~5_combout\ = !\Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	combout => \r_STACK_POINTER[2]~5_combout\);

-- Location: FF_X30_Y16_N19
\r_STACK_POINTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[2]~5_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(2));

-- Location: LCCOMB_X31_Y16_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(2) & !\Add0~3\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add0~3\) # (!r_STACK_POINTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X33_Y16_N20
\Mux55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & (\Add0~4_combout\)) # (!\Mux57~0_combout\ & ((\i_INSTRUCTION[4]~input_o\))))) # (!\Mux1~0_combout\ & (((\i_INSTRUCTION[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux57~0_combout\,
	datac => \Add0~4_combout\,
	datad => \i_INSTRUCTION[4]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: FF_X33_Y16_N21
\o_Address_MEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux55~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[2]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (r_STACK_POINTER(3) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add1~5\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add1~5\)))) # (!r_STACK_POINTER(3) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add1~5\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add1~5\ & VCC))))
-- \Add1~7\ = CARRY((r_STACK_POINTER(3) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add1~5\))) # (!r_STACK_POINTER(3) & (\i_INSTRUCTION[15]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(3),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X30_Y16_N12
\r_STACK_POINTER[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[3]~6_combout\ = !\Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	combout => \r_STACK_POINTER[3]~6_combout\);

-- Location: FF_X30_Y16_N13
\r_STACK_POINTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[3]~6_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(3));

-- Location: LCCOMB_X31_Y16_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(3) & ((\Add0~5\) # (GND))) # (!r_STACK_POINTER(3) & (!\Add0~5\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(3) & (!\Add0~5\)) # (!r_STACK_POINTER(3) & (\Add0~5\ & VCC))))
-- \Add0~7\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(3)) # (!\Add0~5\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y16_N28
\Mux54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux57~0_combout\ & ((\Mux1~0_combout\ & ((\Add0~6_combout\))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[5]~input_o\)))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[5]~input_o\,
	datab => \Add0~6_combout\,
	datac => \Mux57~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux54~0_combout\);

-- Location: FF_X32_Y16_N29
\o_Address_MEM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux54~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[3]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((r_STACK_POINTER(4) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((r_STACK_POINTER(4) & (!\i_INSTRUCTION[15]~input_o\ & !\Add1~7\)) # (!r_STACK_POINTER(4) & ((!\Add1~7\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(4),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y16_N30
\r_STACK_POINTER[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[4]~7_combout\ = !\Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~8_combout\,
	combout => \r_STACK_POINTER[4]~7_combout\);

-- Location: FF_X30_Y16_N31
\r_STACK_POINTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[4]~7_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(4));

-- Location: LCCOMB_X31_Y16_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(4) & !\Add0~7\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add0~7\) # (!r_STACK_POINTER(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y16_N10
\Mux53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & ((\Add0~8_combout\))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[6]~input_o\)))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[6]~input_o\,
	datab => \Add0~8_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux53~0_combout\);

-- Location: FF_X30_Y16_N11
\o_Address_MEM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux53~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[4]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(5) & ((\Add1~9\) # (GND))) # (!r_STACK_POINTER(5) & (!\Add1~9\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(5) & (!\Add1~9\)) # (!r_STACK_POINTER(5) & (\Add1~9\ & VCC))))
-- \Add1~11\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(5)) # (!\Add1~9\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(5) & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X30_Y16_N28
\r_STACK_POINTER[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[5]~8_combout\ = !\Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~10_combout\,
	combout => \r_STACK_POINTER[5]~8_combout\);

-- Location: FF_X30_Y16_N29
\r_STACK_POINTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[5]~8_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(5));

-- Location: LCCOMB_X31_Y16_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (r_STACK_POINTER(5) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add0~9\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add0~9\)))) # (!r_STACK_POINTER(5) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add0~9\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add0~9\ & VCC))))
-- \Add0~11\ = CARRY((r_STACK_POINTER(5) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add0~9\))) # (!r_STACK_POINTER(5) & (\i_INSTRUCTION[15]~input_o\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(5),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y16_N26
\Mux52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & ((\Add0~10_combout\))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[7]~input_o\)))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_INSTRUCTION[7]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux52~0_combout\);

-- Location: FF_X32_Y16_N27
\o_Address_MEM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux52~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[5]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(6) & !\Add1~11\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add1~11\) # (!r_STACK_POINTER(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y16_N14
\r_STACK_POINTER[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[6]~9_combout\ = !\Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~12_combout\,
	combout => \r_STACK_POINTER[6]~9_combout\);

-- Location: FF_X30_Y16_N15
\r_STACK_POINTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[6]~9_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(6));

-- Location: LCCOMB_X31_Y16_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((r_STACK_POINTER(6) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((r_STACK_POINTER(6) & (!\i_INSTRUCTION[15]~input_o\ & !\Add0~11\)) # (!r_STACK_POINTER(6) & ((!\Add0~11\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(6),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y16_N24
\Mux51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & ((\Add0~12_combout\))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[8]~input_o\)))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_INSTRUCTION[8]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux51~0_combout\);

-- Location: FF_X32_Y16_N25
\o_Address_MEM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux51~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[6]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7) & ((\Add1~13\) # (GND))) # (!r_STACK_POINTER(7) & (!\Add1~13\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7) & (!\Add1~13\)) # (!r_STACK_POINTER(7) & (\Add1~13\ & VCC))))
-- \Add1~15\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7)) # (!\Add1~13\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(7) & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X30_Y16_N16
\r_STACK_POINTER[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[7]~10_combout\ = !\Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~14_combout\,
	combout => \r_STACK_POINTER[7]~10_combout\);

-- Location: FF_X30_Y16_N17
\r_STACK_POINTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[7]~10_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(7));

-- Location: LCCOMB_X31_Y16_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7) & ((\Add0~13\) # (GND))) # (!r_STACK_POINTER(7) & (!\Add0~13\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7) & (!\Add0~13\)) # (!r_STACK_POINTER(7) & (\Add0~13\ & VCC))))
-- \Add0~15\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(7)) # (!\Add0~13\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y16_N18
\Mux50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & ((\Add0~14_combout\))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[9]~input_o\)))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_INSTRUCTION[9]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~14_combout\,
	combout => \Mux50~0_combout\);

-- Location: FF_X32_Y16_N19
\o_Address_MEM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux50~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[7]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((r_STACK_POINTER(8) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((r_STACK_POINTER(8) & (!\i_INSTRUCTION[15]~input_o\ & !\Add1~15\)) # (!r_STACK_POINTER(8) & ((!\Add1~15\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(8),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X30_Y16_N22
\r_STACK_POINTER[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[8]~11_combout\ = !\Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	combout => \r_STACK_POINTER[8]~11_combout\);

-- Location: FF_X30_Y16_N23
\r_STACK_POINTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[8]~11_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(8));

-- Location: LCCOMB_X31_Y16_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(8) & !\Add0~15\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add0~15\) # (!r_STACK_POINTER(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y16_N8
\Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux57~0_combout\ & ((\Mux1~0_combout\ & ((\Add0~16_combout\))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[10]~input_o\)))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \i_INSTRUCTION[10]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: FF_X32_Y16_N9
\o_Address_MEM[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux49~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[8]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9) & ((\Add1~17\) # (GND))) # (!r_STACK_POINTER(9) & (!\Add1~17\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9) & (!\Add1~17\)) # (!r_STACK_POINTER(9) & (\Add1~17\ & VCC))))
-- \Add1~19\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9)) # (!\Add1~17\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(9) & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y16_N4
\r_STACK_POINTER[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[9]~12_combout\ = !\Add1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~18_combout\,
	combout => \r_STACK_POINTER[9]~12_combout\);

-- Location: FF_X30_Y16_N5
\r_STACK_POINTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[9]~12_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(9));

-- Location: LCCOMB_X31_Y16_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9) & ((\Add0~17\) # (GND))) # (!r_STACK_POINTER(9) & (!\Add0~17\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9) & (!\Add0~17\)) # (!r_STACK_POINTER(9) & (\Add0~17\ & VCC))))
-- \Add0~19\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(9)) # (!\Add0~17\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(9) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X32_Y16_N14
\Mux48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux1~0_combout\ & ((\Mux57~0_combout\ & ((\Add0~18_combout\))) # (!\Mux57~0_combout\ & (\i_INSTRUCTION[11]~input_o\)))) # (!\Mux1~0_combout\ & (\i_INSTRUCTION[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_INSTRUCTION[11]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~18_combout\,
	combout => \Mux48~0_combout\);

-- Location: FF_X32_Y16_N15
\o_Address_MEM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux48~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[9]~reg0_q\);

-- Location: LCCOMB_X33_Y16_N28
\o_Address_MEM[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[0]~2_combout\ = ((\i_INSTRUCTION[17]~input_o\) # (!\Mux57~0_combout\)) # (!\i_INSTRUCTION[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[16]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \i_INSTRUCTION[17]~input_o\,
	combout => \o_Address_MEM[0]~2_combout\);

-- Location: LCCOMB_X29_Y16_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\i_INSTRUCTION[15]~input_o\ $ (r_STACK_POINTER(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\i_INSTRUCTION[15]~input_o\ & (!r_STACK_POINTER(10) & !\Add1~19\)) # (!\i_INSTRUCTION[15]~input_o\ & ((!\Add1~19\) # (!r_STACK_POINTER(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X30_Y16_N26
\r_STACK_POINTER[10]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[10]~13_combout\ = !\Add1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~20_combout\,
	combout => \r_STACK_POINTER[10]~13_combout\);

-- Location: FF_X30_Y16_N27
\r_STACK_POINTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[10]~13_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(10));

-- Location: LCCOMB_X31_Y16_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((r_STACK_POINTER(10) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((r_STACK_POINTER(10) & (!\i_INSTRUCTION[15]~input_o\ & !\Add0~19\)) # (!r_STACK_POINTER(10) & ((!\Add0~19\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(10),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X32_Y16_N4
\Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\o_Address_MEM[0]~2_combout\ & (\i_INSTRUCTION[12]~input_o\)) # (!\o_Address_MEM[0]~2_combout\ & ((\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_Address_MEM[0]~2_combout\,
	datac => \i_INSTRUCTION[12]~input_o\,
	datad => \Add0~20_combout\,
	combout => \Mux47~0_combout\);

-- Location: FF_X32_Y16_N5
\o_Address_MEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux47~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[10]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(11) & ((\Add1~21\) # (GND))) # (!r_STACK_POINTER(11) & (!\Add1~21\)))) # (!\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(11) & (!\Add1~21\)) # (!r_STACK_POINTER(11) & (\Add1~21\ & 
-- VCC))))
-- \Add1~23\ = CARRY((\i_INSTRUCTION[15]~input_o\ & ((r_STACK_POINTER(11)) # (!\Add1~21\))) # (!\i_INSTRUCTION[15]~input_o\ & (r_STACK_POINTER(11) & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => r_STACK_POINTER(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X30_Y16_N8
\r_STACK_POINTER[11]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[11]~14_combout\ = !\Add1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~22_combout\,
	combout => \r_STACK_POINTER[11]~14_combout\);

-- Location: FF_X30_Y16_N9
\r_STACK_POINTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[11]~14_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(11));

-- Location: LCCOMB_X31_Y16_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (r_STACK_POINTER(11) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add0~21\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add0~21\)))) # (!r_STACK_POINTER(11) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add0~21\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add0~21\ & VCC))))
-- \Add0~23\ = CARRY((r_STACK_POINTER(11) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add0~21\))) # (!r_STACK_POINTER(11) & (\i_INSTRUCTION[15]~input_o\ & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(11),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y16_N6
\Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\o_Address_MEM[0]~2_combout\ & (\i_INSTRUCTION[13]~input_o\)) # (!\o_Address_MEM[0]~2_combout\ & ((\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_Address_MEM[0]~2_combout\,
	datac => \i_INSTRUCTION[13]~input_o\,
	datad => \Add0~22_combout\,
	combout => \Mux46~0_combout\);

-- Location: FF_X32_Y16_N7
\o_Address_MEM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux46~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[11]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((r_STACK_POINTER(12) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((r_STACK_POINTER(12) & (!\i_INSTRUCTION[15]~input_o\ & !\Add1~23\)) # (!r_STACK_POINTER(12) & ((!\Add1~23\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(12),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X30_Y16_N2
\r_STACK_POINTER[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[12]~15_combout\ = !\Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~24_combout\,
	combout => \r_STACK_POINTER[12]~15_combout\);

-- Location: FF_X30_Y16_N3
\r_STACK_POINTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[12]~15_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(12));

-- Location: LCCOMB_X31_Y16_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((r_STACK_POINTER(12) $ (\i_INSTRUCTION[15]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((r_STACK_POINTER(12) & (!\i_INSTRUCTION[15]~input_o\ & !\Add0~23\)) # (!r_STACK_POINTER(12) & ((!\Add0~23\) # (!\i_INSTRUCTION[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(12),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X32_Y16_N0
\Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\o_Address_MEM[0]~2_combout\ & (\i_INSTRUCTION[14]~input_o\)) # (!\o_Address_MEM[0]~2_combout\ & ((\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_Address_MEM[0]~2_combout\,
	datac => \i_INSTRUCTION[14]~input_o\,
	datad => \Add0~24_combout\,
	combout => \Mux45~0_combout\);

-- Location: FF_X32_Y16_N1
\o_Address_MEM[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux45~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[12]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add1~25\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add1~25\)))) # (!r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add1~25\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add1~25\ & VCC))))
-- \Add1~27\ = CARRY((r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add1~25\))) # (!r_STACK_POINTER(13) & (\i_INSTRUCTION[15]~input_o\ & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(13),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X30_Y16_N0
\r_STACK_POINTER[13]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_STACK_POINTER[13]~16_combout\ = !\Add1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	combout => \r_STACK_POINTER[13]~16_combout\);

-- Location: FF_X30_Y16_N1
\r_STACK_POINTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_STACK_POINTER[13]~16_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(13));

-- Location: LCCOMB_X31_Y16_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\ & ((\Add0~25\) # (GND))) # (!\i_INSTRUCTION[15]~input_o\ & (!\Add0~25\)))) # (!r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\ & (!\Add0~25\)) # (!\i_INSTRUCTION[15]~input_o\ & 
-- (\Add0~25\ & VCC))))
-- \Add0~27\ = CARRY((r_STACK_POINTER(13) & ((\i_INSTRUCTION[15]~input_o\) # (!\Add0~25\))) # (!r_STACK_POINTER(13) & (\i_INSTRUCTION[15]~input_o\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(13),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y16_N2
\Mux44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\o_Address_MEM[0]~2_combout\ & (\i_INSTRUCTION[15]~input_o\)) # (!\o_Address_MEM[0]~2_combout\ & ((\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[15]~input_o\,
	datab => \o_Address_MEM[0]~2_combout\,
	datac => \Add0~26_combout\,
	combout => \Mux44~0_combout\);

-- Location: FF_X32_Y16_N3
\o_Address_MEM[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux44~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[13]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((r_STACK_POINTER(14) $ (\i_INSTRUCTION[15]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((r_STACK_POINTER(14) & ((!\Add1~27\) # (!\i_INSTRUCTION[15]~input_o\))) # (!r_STACK_POINTER(14) & (!\i_INSTRUCTION[15]~input_o\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(14),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X29_Y16_N29
\r_STACK_POINTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(14));

-- Location: LCCOMB_X31_Y16_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((r_STACK_POINTER(14) $ (\i_INSTRUCTION[15]~input_o\ $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((r_STACK_POINTER(14) & ((!\Add0~27\) # (!\i_INSTRUCTION[15]~input_o\))) # (!r_STACK_POINTER(14) & (!\i_INSTRUCTION[15]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(14),
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X32_Y16_N20
\Mux43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\i_INSTRUCTION[16]~input_o\ & ((\i_INSTRUCTION[17]~input_o\) # ((\Add0~28_combout\) # (!\Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[17]~input_o\,
	datab => \i_INSTRUCTION[16]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~28_combout\,
	combout => \Mux43~0_combout\);

-- Location: FF_X32_Y16_N21
\o_Address_MEM[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux43~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[14]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = r_STACK_POINTER(15) $ (\Add1~29\ $ (!\i_INSTRUCTION[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_STACK_POINTER(15),
	datad => \i_INSTRUCTION[15]~input_o\,
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: FF_X29_Y16_N31
\r_STACK_POINTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	ena => \r_STACK_POINTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_STACK_POINTER(15));

-- Location: LCCOMB_X31_Y16_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \i_INSTRUCTION[15]~input_o\ $ (\Add0~29\ $ (!r_STACK_POINTER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_INSTRUCTION[15]~input_o\,
	datad => r_STACK_POINTER(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X32_Y16_N22
\Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\i_INSTRUCTION[17]~input_o\) # ((\i_INSTRUCTION[16]~input_o\ & (\Mux57~0_combout\ & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[17]~input_o\,
	datab => \i_INSTRUCTION[16]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Add0~30_combout\,
	combout => \Mux42~0_combout\);

-- Location: FF_X32_Y16_N23
\o_Address_MEM[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux42~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[15]~reg0_q\);

-- Location: LCCOMB_X37_Y17_N14
\o_MEM_access~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MEM_access~0_combout\ = (\i_INSTRUCTION[28]~input_o\ & (\i_INSTRUCTION[29]~input_o\ & ((\Mux1~0_combout\) # (!\i_INSTRUCTION[30]~input_o\)))) # (!\i_INSTRUCTION[28]~input_o\ & (\i_INSTRUCTION[30]~input_o\ & (!\i_INSTRUCTION[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \i_INSTRUCTION[28]~input_o\,
	datac => \i_INSTRUCTION[29]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \o_MEM_access~0_combout\);

-- Location: LCCOMB_X37_Y17_N2
\o_MEM_access~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MEM_access~1_combout\ = (\i_INSTRUCTION[31]~input_o\ & \o_MEM_access~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \o_MEM_access~0_combout\,
	combout => \o_MEM_access~1_combout\);

-- Location: FF_X37_Y17_N3
\o_MEM_access~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_MEM_access~1_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MEM_access~reg0_q\);

-- Location: LCCOMB_X37_Y17_N8
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_INSTRUCTION[30]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & (\i_INSTRUCTION[29]~input_o\ $ (!\i_INSTRUCTION[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[29]~input_o\,
	datad => \i_INSTRUCTION[28]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X37_Y16_N18
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\Mux1~0_combout\ & !\i_INSTRUCTION[15]~input_o\)) # (!\i_INSTRUCTION[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \i_INSTRUCTION[15]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X33_Y16_N26
\o_MEM_write_enable~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MEM_write_enable~reg0feeder_combout\ = \Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~1_combout\,
	combout => \o_MEM_write_enable~reg0feeder_combout\);

-- Location: FF_X33_Y16_N27
\o_MEM_write_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_MEM_write_enable~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MEM_write_enable~reg0_q\);

-- Location: LCCOMB_X37_Y17_N0
\Mux57~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\i_INSTRUCTION[30]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & \i_INSTRUCTION[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datad => \i_INSTRUCTION[28]~input_o\,
	combout => \Mux57~2_combout\);

-- Location: IOIBUF_X37_Y29_N1
\i_INSTRUCTION[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(0),
	o => \i_INSTRUCTION[0]~input_o\);

-- Location: LCCOMB_X37_Y17_N16
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\i_INSTRUCTION[29]~input_o\ & (\Mux57~2_combout\ & \i_INSTRUCTION[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \Mux57~2_combout\,
	datac => \i_INSTRUCTION[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X37_Y17_N17
\o_BRANCH_CONTROL[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[0]~reg0_q\);

-- Location: LCCOMB_X37_Y17_N24
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\i_INSTRUCTION[16]~input_o\ & (\i_INSTRUCTION[15]~input_o\ & (\i_INSTRUCTION[29]~input_o\ & !\i_INSTRUCTION[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[16]~input_o\,
	datab => \i_INSTRUCTION[15]~input_o\,
	datac => \i_INSTRUCTION[29]~input_o\,
	datad => \i_INSTRUCTION[17]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X41_Y14_N8
\i_INSTRUCTION[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(1),
	o => \i_INSTRUCTION[1]~input_o\);

-- Location: LCCOMB_X37_Y17_N10
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\i_INSTRUCTION[29]~input_o\ & (!\i_INSTRUCTION[28]~input_o\)) # (!\i_INSTRUCTION[29]~input_o\ & (\i_INSTRUCTION[28]~input_o\ & \i_INSTRUCTION[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datac => \i_INSTRUCTION[28]~input_o\,
	datad => \i_INSTRUCTION[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X37_Y17_N18
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\i_INSTRUCTION[30]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & ((\Mux8~0_combout\) # (\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \i_INSTRUCTION[31]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: FF_X37_Y17_N19
\o_BRANCH_CONTROL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux8~2_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[1]~reg0_q\);

-- Location: LCCOMB_X37_Y17_N4
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux57~2_combout\ & ((\Mux8~0_combout\) # ((\i_INSTRUCTION[2]~input_o\ & !\i_INSTRUCTION[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[2]~input_o\,
	datab => \Mux57~2_combout\,
	datac => \i_INSTRUCTION[29]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X37_Y17_N5
\o_BRANCH_CONTROL[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[2]~reg0_q\);

-- Location: LCCOMB_X32_Y16_N16
\o_Signed~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Signed~reg0feeder_combout\ = \i_INSTRUCTION[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[1]~input_o\,
	combout => \o_Signed~reg0feeder_combout\);

-- Location: FF_X32_Y16_N17
\o_Signed~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Signed~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Signed~reg0_q\);

-- Location: LCCOMB_X37_Y16_N12
\o_carry~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_carry~reg0feeder_combout\ = \i_INSTRUCTION[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \o_carry~reg0feeder_combout\);

-- Location: FF_X37_Y16_N13
\o_carry~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_carry~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_carry~reg0_q\);

-- Location: LCCOMB_X37_Y17_N30
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_INSTRUCTION[31]~input_o\ & (\i_INSTRUCTION[30]~input_o\ & (\i_INSTRUCTION[29]~input_o\ $ (\i_INSTRUCTION[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[30]~input_o\,
	datad => \i_INSTRUCTION[28]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X37_Y17_N31
\o_SAVE_PC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_SAVE_PC~reg0_q\);

-- Location: FF_X37_Y17_N1
\o_IMM_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[0]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_IMM_enable~reg0_q\);

-- Location: LCCOMB_X33_Y16_N0
\o_BUS_select[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_BUS_select[0]~reg0feeder_combout\ = \Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~1_combout\,
	combout => \o_BUS_select[0]~reg0feeder_combout\);

-- Location: FF_X33_Y16_N1
\o_BUS_select[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_BUS_select[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BUS_select[0]~reg0_q\);

-- Location: LCCOMB_X37_Y17_N20
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ((\i_INSTRUCTION[16]~input_o\ & (\i_INSTRUCTION[15]~input_o\ & !\i_INSTRUCTION[17]~input_o\))) # (!\i_INSTRUCTION[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[16]~input_o\,
	datab => \i_INSTRUCTION[15]~input_o\,
	datac => \i_INSTRUCTION[30]~input_o\,
	datad => \i_INSTRUCTION[17]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X37_Y17_N26
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_INSTRUCTION[29]~input_o\ & (\i_INSTRUCTION[28]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & \Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \i_INSTRUCTION[28]~input_o\,
	datac => \i_INSTRUCTION[31]~input_o\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: FF_X37_Y17_N27
\o_BUS_select[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux2~3_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BUS_select[1]~reg0_q\);

ww_o_OPCODE(0) <= \o_OPCODE[0]~output_o\;

ww_o_OPCODE(1) <= \o_OPCODE[1]~output_o\;

ww_o_OPCODE(2) <= \o_OPCODE[2]~output_o\;

ww_o_OPCODE(3) <= \o_OPCODE[3]~output_o\;

ww_o_REGISTER_A(0) <= \o_REGISTER_A[0]~output_o\;

ww_o_REGISTER_A(1) <= \o_REGISTER_A[1]~output_o\;

ww_o_REGISTER_A(2) <= \o_REGISTER_A[2]~output_o\;

ww_o_REGISTER_A(3) <= \o_REGISTER_A[3]~output_o\;

ww_o_REGISTER_A(4) <= \o_REGISTER_A[4]~output_o\;

ww_o_REGISTER_B(0) <= \o_REGISTER_B[0]~output_o\;

ww_o_REGISTER_B(1) <= \o_REGISTER_B[1]~output_o\;

ww_o_REGISTER_B(2) <= \o_REGISTER_B[2]~output_o\;

ww_o_REGISTER_B(3) <= \o_REGISTER_B[3]~output_o\;

ww_o_REGISTER_B(4) <= \o_REGISTER_B[4]~output_o\;

ww_o_REGISTER_C(0) <= \o_REGISTER_C[0]~output_o\;

ww_o_REGISTER_C(1) <= \o_REGISTER_C[1]~output_o\;

ww_o_REGISTER_C(2) <= \o_REGISTER_C[2]~output_o\;

ww_o_REGISTER_C(3) <= \o_REGISTER_C[3]~output_o\;

ww_o_REGISTER_C(4) <= \o_REGISTER_C[4]~output_o\;

ww_o_REGISTER_C_WRITE_ENABLE <= \o_REGISTER_C_WRITE_ENABLE~output_o\;

ww_o_DATA_IMM(0) <= \o_DATA_IMM[0]~output_o\;

ww_o_DATA_IMM(1) <= \o_DATA_IMM[1]~output_o\;

ww_o_DATA_IMM(2) <= \o_DATA_IMM[2]~output_o\;

ww_o_DATA_IMM(3) <= \o_DATA_IMM[3]~output_o\;

ww_o_DATA_IMM(4) <= \o_DATA_IMM[4]~output_o\;

ww_o_DATA_IMM(5) <= \o_DATA_IMM[5]~output_o\;

ww_o_DATA_IMM(6) <= \o_DATA_IMM[6]~output_o\;

ww_o_DATA_IMM(7) <= \o_DATA_IMM[7]~output_o\;

ww_o_Address_PROG(0) <= \o_Address_PROG[0]~output_o\;

ww_o_Address_PROG(1) <= \o_Address_PROG[1]~output_o\;

ww_o_Address_PROG(2) <= \o_Address_PROG[2]~output_o\;

ww_o_Address_PROG(3) <= \o_Address_PROG[3]~output_o\;

ww_o_Address_PROG(4) <= \o_Address_PROG[4]~output_o\;

ww_o_Address_PROG(5) <= \o_Address_PROG[5]~output_o\;

ww_o_Address_PROG(6) <= \o_Address_PROG[6]~output_o\;

ww_o_Address_PROG(7) <= \o_Address_PROG[7]~output_o\;

ww_o_Address_PROG(8) <= \o_Address_PROG[8]~output_o\;

ww_o_Address_PROG(9) <= \o_Address_PROG[9]~output_o\;

ww_o_Address_MEM(0) <= \o_Address_MEM[0]~output_o\;

ww_o_Address_MEM(1) <= \o_Address_MEM[1]~output_o\;

ww_o_Address_MEM(2) <= \o_Address_MEM[2]~output_o\;

ww_o_Address_MEM(3) <= \o_Address_MEM[3]~output_o\;

ww_o_Address_MEM(4) <= \o_Address_MEM[4]~output_o\;

ww_o_Address_MEM(5) <= \o_Address_MEM[5]~output_o\;

ww_o_Address_MEM(6) <= \o_Address_MEM[6]~output_o\;

ww_o_Address_MEM(7) <= \o_Address_MEM[7]~output_o\;

ww_o_Address_MEM(8) <= \o_Address_MEM[8]~output_o\;

ww_o_Address_MEM(9) <= \o_Address_MEM[9]~output_o\;

ww_o_Address_MEM(10) <= \o_Address_MEM[10]~output_o\;

ww_o_Address_MEM(11) <= \o_Address_MEM[11]~output_o\;

ww_o_Address_MEM(12) <= \o_Address_MEM[12]~output_o\;

ww_o_Address_MEM(13) <= \o_Address_MEM[13]~output_o\;

ww_o_Address_MEM(14) <= \o_Address_MEM[14]~output_o\;

ww_o_Address_MEM(15) <= \o_Address_MEM[15]~output_o\;

ww_o_MEM_access <= \o_MEM_access~output_o\;

ww_o_MEM_write_enable <= \o_MEM_write_enable~output_o\;

ww_o_BRANCH_CONTROL(0) <= \o_BRANCH_CONTROL[0]~output_o\;

ww_o_BRANCH_CONTROL(1) <= \o_BRANCH_CONTROL[1]~output_o\;

ww_o_BRANCH_CONTROL(2) <= \o_BRANCH_CONTROL[2]~output_o\;

ww_o_Signed <= \o_Signed~output_o\;

ww_o_carry <= \o_carry~output_o\;

ww_o_SAVE_PC <= \o_SAVE_PC~output_o\;

ww_o_IMM_enable <= \o_IMM_enable~output_o\;

ww_o_BUS_select(0) <= \o_BUS_select[0]~output_o\;

ww_o_BUS_select(1) <= \o_BUS_select[1]~output_o\;
END structure;


