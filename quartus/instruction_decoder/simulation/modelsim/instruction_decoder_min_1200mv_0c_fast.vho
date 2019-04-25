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

-- DATE "04/15/2019 09:58:39"

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
	o_ALU_OP_SEL : BUFFER std_logic_vector(3 DOWNTO 0);
	o_REGISTER_A : BUFFER std_logic_vector(4 DOWNTO 0);
	o_REGISTER_B : BUFFER std_logic_vector(4 DOWNTO 0);
	o_REGISTER_C : BUFFER std_logic_vector(4 DOWNTO 0);
	o_REGISTER_C_WRITE_ENABLE : BUFFER std_logic;
	o_DATA_IMM : BUFFER std_logic_vector(7 DOWNTO 0);
	o_Address_PROG : BUFFER std_logic_vector(9 DOWNTO 0);
	o_Address_MEM : BUFFER std_logic_vector(15 DOWNTO 0);
	o_BRANCH_CONTROL : BUFFER std_logic_vector(2 DOWNTO 0);
	o_Signed : BUFFER std_logic;
	o_IMM_enable : BUFFER std_logic
	);
END instruction_decoder;

-- Design Ports Information
-- i_INSTRUCTION[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[21]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[22]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_OP_SEL[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_OP_SEL[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_OP_SEL[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_OP_SEL[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_A[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_B[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_REGISTER_C_WRITE_ENABLE	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[2]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IMM[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[8]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_PROG[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[0]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[8]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[9]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[13]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Address_MEM[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BRANCH_CONTROL[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Signed	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IMM_enable	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[28]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[29]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[30]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[31]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[16]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[18]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[19]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[13]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[14]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[24]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[25]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[26]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[27]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[9]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INSTRUCTION[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_o_ALU_OP_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_REGISTER_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_C : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_REGISTER_C_WRITE_ENABLE : std_logic;
SIGNAL ww_o_DATA_IMM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Address_PROG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_o_Address_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_BRANCH_CONTROL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_Signed : std_logic;
SIGNAL ww_o_IMM_enable : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_INSTRUCTION[20]~input_o\ : std_logic;
SIGNAL \i_INSTRUCTION[21]~input_o\ : std_logic;
SIGNAL \i_INSTRUCTION[22]~input_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[0]~output_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[1]~output_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[2]~output_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[3]~output_o\ : std_logic;
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
SIGNAL \o_BRANCH_CONTROL[0]~output_o\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[1]~output_o\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[2]~output_o\ : std_logic;
SIGNAL \o_Signed~output_o\ : std_logic;
SIGNAL \o_IMM_enable~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_INSTRUCTION[28]~input_o\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[29]~input_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_ALU_OP_SEL[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[30]~input_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[31]~input_o\ : std_logic;
SIGNAL \o_ALU_OP_SEL[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[15]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[16]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[17]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[18]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[19]~input_o\ : std_logic;
SIGNAL \o_REGISTER_A[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_A[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[10]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_B[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[11]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[12]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[13]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[14]~input_o\ : std_logic;
SIGNAL \o_REGISTER_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_B[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[23]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[24]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[25]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[26]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_REGISTER_C[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[27]~input_o\ : std_logic;
SIGNAL \o_REGISTER_C[4]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \o_REGISTER_C_WRITE_ENABLE~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[2]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[3]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[1]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[4]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[2]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[5]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[3]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[6]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[4]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[7]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[5]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[8]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[6]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[9]~input_o\ : std_logic;
SIGNAL \o_DATA_IMM[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_IMM[7]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[0]~input_o\ : std_logic;
SIGNAL \o_Address_PROG[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[0]~reg0_q\ : std_logic;
SIGNAL \i_INSTRUCTION[1]~input_o\ : std_logic;
SIGNAL \o_Address_PROG[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[1]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[2]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[3]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[4]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[5]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[6]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[7]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[8]~reg0_q\ : std_logic;
SIGNAL \o_Address_PROG[9]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_PROG[9]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[0]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[1]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[2]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[3]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[4]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[5]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[6]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[7]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[8]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[9]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[9]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[10]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[10]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[11]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[12]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[13]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[14]~reg0feeder_combout\ : std_logic;
SIGNAL \o_Address_MEM[14]~reg0_q\ : std_logic;
SIGNAL \o_Address_MEM[15]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[0]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[1]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \o_BRANCH_CONTROL[2]~reg0_q\ : std_logic;
SIGNAL \o_Signed~reg0feeder_combout\ : std_logic;
SIGNAL \o_Signed~reg0_q\ : std_logic;
SIGNAL \o_IMM_enable~reg0feeder_combout\ : std_logic;
SIGNAL \o_IMM_enable~reg0_q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_INSTRUCTION <= i_INSTRUCTION;
o_ALU_OP_SEL <= ww_o_ALU_OP_SEL;
o_REGISTER_A <= ww_o_REGISTER_A;
o_REGISTER_B <= ww_o_REGISTER_B;
o_REGISTER_C <= ww_o_REGISTER_C;
o_REGISTER_C_WRITE_ENABLE <= ww_o_REGISTER_C_WRITE_ENABLE;
o_DATA_IMM <= ww_o_DATA_IMM;
o_Address_PROG <= ww_o_Address_PROG;
o_Address_MEM <= ww_o_Address_MEM;
o_BRANCH_CONTROL <= ww_o_BRANCH_CONTROL;
o_Signed <= ww_o_Signed;
o_IMM_enable <= ww_o_IMM_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_ALU_OP_SEL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ALU_OP_SEL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ALU_OP_SEL[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\o_ALU_OP_SEL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ALU_OP_SEL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ALU_OP_SEL[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_ALU_OP_SEL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ALU_OP_SEL[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ALU_OP_SEL[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_ALU_OP_SEL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ALU_OP_SEL[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ALU_OP_SEL[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X14_Y29_N2
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N30
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X21_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X41_Y12_N2
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

-- Location: IOOBUF_X35_Y0_N9
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

-- Location: IOOBUF_X41_Y18_N2
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

-- Location: IOOBUF_X41_Y3_N9
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X41_Y3_N23
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

-- Location: IOOBUF_X41_Y24_N2
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

-- Location: IOOBUF_X41_Y23_N2
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

-- Location: IOOBUF_X37_Y0_N2
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

-- Location: IOOBUF_X35_Y0_N2
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

-- Location: IOOBUF_X41_Y3_N16
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X41_Y14_N2
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X41_Y18_N16
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

-- Location: IOOBUF_X41_Y5_N2
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

-- Location: IOOBUF_X41_Y17_N2
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

-- Location: IOOBUF_X41_Y14_N16
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

-- Location: IOOBUF_X37_Y0_N9
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

-- Location: IOOBUF_X41_Y2_N16
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

-- Location: IOOBUF_X41_Y9_N23
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

-- Location: IOOBUF_X30_Y0_N30
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

-- Location: IOOBUF_X41_Y17_N9
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X41_Y24_N9
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X41_Y18_N23
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

-- Location: IOOBUF_X41_Y13_N9
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

-- Location: IOOBUF_X41_Y6_N2
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X37_Y0_N30
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

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X23_Y29_N9
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X21_Y29_N9
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

-- Location: IOOBUF_X14_Y29_N9
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

-- Location: IOOBUF_X19_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X41_Y27_N23
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

-- Location: IOOBUF_X23_Y0_N30
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

-- Location: IOIBUF_X26_Y0_N15
\i_INSTRUCTION[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(28),
	o => \i_INSTRUCTION[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: FF_X23_Y1_N1
\o_ALU_OP_SEL[0]~reg0\ : dffeas
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
	q => \o_ALU_OP_SEL[0]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N15
\i_INSTRUCTION[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(29),
	o => \i_INSTRUCTION[29]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\o_ALU_OP_SEL[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ALU_OP_SEL[1]~reg0feeder_combout\ = \i_INSTRUCTION[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[29]~input_o\,
	combout => \o_ALU_OP_SEL[1]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N11
\o_ALU_OP_SEL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ALU_OP_SEL[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ALU_OP_SEL[1]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N8
\i_INSTRUCTION[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(30),
	o => \i_INSTRUCTION[30]~input_o\);

-- Location: FF_X23_Y1_N21
\o_ALU_OP_SEL[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[30]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ALU_OP_SEL[2]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N15
\i_INSTRUCTION[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(31),
	o => \i_INSTRUCTION[31]~input_o\);

-- Location: FF_X23_Y1_N23
\o_ALU_OP_SEL[3]~reg0\ : dffeas
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
	q => \o_ALU_OP_SEL[3]~reg0_q\);

-- Location: IOIBUF_X23_Y29_N1
\i_INSTRUCTION[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(15),
	o => \i_INSTRUCTION[15]~input_o\);

-- Location: FF_X23_Y13_N1
\o_REGISTER_A[0]~reg0\ : dffeas
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
	q => \o_REGISTER_A[0]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N22
\i_INSTRUCTION[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(16),
	o => \i_INSTRUCTION[16]~input_o\);

-- Location: LCCOMB_X23_Y13_N2
\o_REGISTER_A[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[1]~reg0feeder_combout\ = \i_INSTRUCTION[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[16]~input_o\,
	combout => \o_REGISTER_A[1]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N3
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

-- Location: IOIBUF_X32_Y29_N1
\i_INSTRUCTION[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(17),
	o => \i_INSTRUCTION[17]~input_o\);

-- Location: LCCOMB_X23_Y13_N20
\o_REGISTER_A[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[2]~reg0feeder_combout\ = \i_INSTRUCTION[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[17]~input_o\,
	combout => \o_REGISTER_A[2]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N21
\o_REGISTER_A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_A[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_A[2]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N8
\i_INSTRUCTION[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(18),
	o => \i_INSTRUCTION[18]~input_o\);

-- Location: LCCOMB_X23_Y13_N6
\o_REGISTER_A[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[3]~reg0feeder_combout\ = \i_INSTRUCTION[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[18]~input_o\,
	combout => \o_REGISTER_A[3]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N7
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

-- Location: IOIBUF_X0_Y11_N8
\i_INSTRUCTION[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(19),
	o => \i_INSTRUCTION[19]~input_o\);

-- Location: LCCOMB_X23_Y13_N24
\o_REGISTER_A[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_A[4]~reg0feeder_combout\ = \i_INSTRUCTION[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[19]~input_o\,
	combout => \o_REGISTER_A[4]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N25
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

-- Location: IOIBUF_X28_Y29_N8
\i_INSTRUCTION[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(10),
	o => \i_INSTRUCTION[10]~input_o\);

-- Location: LCCOMB_X23_Y13_N26
\o_REGISTER_B[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_B[0]~reg0feeder_combout\ = \i_INSTRUCTION[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[10]~input_o\,
	combout => \o_REGISTER_B[0]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N27
\o_REGISTER_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_B[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[0]~reg0_q\);

-- Location: IOIBUF_X28_Y29_N15
\i_INSTRUCTION[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(11),
	o => \i_INSTRUCTION[11]~input_o\);

-- Location: FF_X23_Y13_N5
\o_REGISTER_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[11]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[1]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\i_INSTRUCTION[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(12),
	o => \i_INSTRUCTION[12]~input_o\);

-- Location: FF_X23_Y13_N31
\o_REGISTER_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[12]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[2]~reg0_q\);

-- Location: IOIBUF_X0_Y13_N15
\i_INSTRUCTION[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(13),
	o => \i_INSTRUCTION[13]~input_o\);

-- Location: FF_X23_Y13_N9
\o_REGISTER_B[3]~reg0\ : dffeas
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
	q => \o_REGISTER_B[3]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N22
\i_INSTRUCTION[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(14),
	o => \i_INSTRUCTION[14]~input_o\);

-- Location: LCCOMB_X23_Y13_N10
\o_REGISTER_B[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_B[4]~reg0feeder_combout\ = \i_INSTRUCTION[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[14]~input_o\,
	combout => \o_REGISTER_B[4]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N11
\o_REGISTER_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_B[4]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_B[4]~reg0_q\);

-- Location: IOIBUF_X41_Y13_N15
\i_INSTRUCTION[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(23),
	o => \i_INSTRUCTION[23]~input_o\);

-- Location: LCCOMB_X40_Y14_N0
\o_REGISTER_C[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_REGISTER_C[0]~reg0feeder_combout\ = \i_INSTRUCTION[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[23]~input_o\,
	combout => \o_REGISTER_C[0]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N1
\o_REGISTER_C[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_REGISTER_C[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[0]~reg0_q\);

-- Location: IOIBUF_X41_Y2_N1
\i_INSTRUCTION[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(24),
	o => \i_INSTRUCTION[24]~input_o\);

-- Location: FF_X40_Y3_N1
\o_REGISTER_C[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[24]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C[1]~reg0_q\);

-- Location: IOIBUF_X19_Y29_N1
\i_INSTRUCTION[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(25),
	o => \i_INSTRUCTION[25]~input_o\);

-- Location: LCCOMB_X40_Y14_N10
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

-- Location: FF_X40_Y14_N11
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

-- Location: IOIBUF_X19_Y29_N8
\i_INSTRUCTION[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(26),
	o => \i_INSTRUCTION[26]~input_o\);

-- Location: LCCOMB_X40_Y3_N18
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

-- Location: FF_X40_Y3_N19
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

-- Location: IOIBUF_X41_Y9_N15
\i_INSTRUCTION[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(27),
	o => \i_INSTRUCTION[27]~input_o\);

-- Location: FF_X40_Y3_N29
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

-- Location: LCCOMB_X23_Y1_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((\i_INSTRUCTION[29]~input_o\) # ((!\i_INSTRUCTION[30]~input_o\ & \i_INSTRUCTION[28]~input_o\))) # (!\i_INSTRUCTION[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[30]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[28]~input_o\,
	datad => \i_INSTRUCTION[29]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X23_Y1_N25
\o_REGISTER_C_WRITE_ENABLE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_REGISTER_C_WRITE_ENABLE~reg0_q\);

-- Location: IOIBUF_X28_Y0_N22
\i_INSTRUCTION[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(2),
	o => \i_INSTRUCTION[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\o_DATA_IMM[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[0]~reg0feeder_combout\ = \i_INSTRUCTION[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \o_DATA_IMM[0]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N27
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

-- Location: IOIBUF_X41_Y15_N8
\i_INSTRUCTION[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(3),
	o => \i_INSTRUCTION[3]~input_o\);

-- Location: LCCOMB_X40_Y14_N12
\o_DATA_IMM[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[1]~reg0feeder_combout\ = \i_INSTRUCTION[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[3]~input_o\,
	combout => \o_DATA_IMM[1]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N13
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

-- Location: IOIBUF_X41_Y15_N1
\i_INSTRUCTION[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(4),
	o => \i_INSTRUCTION[4]~input_o\);

-- Location: LCCOMB_X40_Y3_N6
\o_DATA_IMM[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[2]~reg0feeder_combout\ = \i_INSTRUCTION[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[4]~input_o\,
	combout => \o_DATA_IMM[2]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N7
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

-- Location: IOIBUF_X41_Y14_N8
\i_INSTRUCTION[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(5),
	o => \i_INSTRUCTION[5]~input_o\);

-- Location: LCCOMB_X40_Y14_N14
\o_DATA_IMM[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[3]~reg0feeder_combout\ = \i_INSTRUCTION[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[5]~input_o\,
	combout => \o_DATA_IMM[3]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N15
\o_DATA_IMM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_IMM[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[3]~reg0_q\);

-- Location: IOIBUF_X41_Y19_N1
\i_INSTRUCTION[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(6),
	o => \i_INSTRUCTION[6]~input_o\);

-- Location: FF_X40_Y14_N25
\o_DATA_IMM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[6]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_IMM[4]~reg0_q\);

-- Location: IOIBUF_X41_Y5_N8
\i_INSTRUCTION[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(7),
	o => \i_INSTRUCTION[7]~input_o\);

-- Location: LCCOMB_X40_Y3_N8
\o_DATA_IMM[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[5]~reg0feeder_combout\ = \i_INSTRUCTION[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[7]~input_o\,
	combout => \o_DATA_IMM[5]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N9
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

-- Location: IOIBUF_X39_Y0_N22
\i_INSTRUCTION[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(8),
	o => \i_INSTRUCTION[8]~input_o\);

-- Location: FF_X40_Y3_N27
\o_DATA_IMM[6]~reg0\ : dffeas
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
	q => \o_DATA_IMM[6]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N29
\i_INSTRUCTION[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(9),
	o => \i_INSTRUCTION[9]~input_o\);

-- Location: LCCOMB_X40_Y3_N4
\o_DATA_IMM[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_IMM[7]~reg0feeder_combout\ = \i_INSTRUCTION[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[9]~input_o\,
	combout => \o_DATA_IMM[7]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N5
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

-- Location: IOIBUF_X30_Y0_N8
\i_INSTRUCTION[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(0),
	o => \i_INSTRUCTION[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N28
\o_Address_PROG[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[0]~reg0feeder_combout\ = \i_INSTRUCTION[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[0]~input_o\,
	combout => \o_Address_PROG[0]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N29
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

-- Location: IOIBUF_X41_Y10_N1
\i_INSTRUCTION[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(1),
	o => \i_INSTRUCTION[1]~input_o\);

-- Location: LCCOMB_X40_Y14_N26
\o_Address_PROG[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[1]~reg0feeder_combout\ = \i_INSTRUCTION[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[1]~input_o\,
	combout => \o_Address_PROG[1]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N27
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

-- Location: LCCOMB_X23_Y1_N30
\o_Address_PROG[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[2]~reg0feeder_combout\ = \i_INSTRUCTION[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \o_Address_PROG[2]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N31
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

-- Location: LCCOMB_X40_Y14_N4
\o_Address_PROG[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[3]~reg0feeder_combout\ = \i_INSTRUCTION[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[3]~input_o\,
	combout => \o_Address_PROG[3]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N5
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

-- Location: LCCOMB_X40_Y3_N30
\o_Address_PROG[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[4]~reg0feeder_combout\ = \i_INSTRUCTION[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[4]~input_o\,
	combout => \o_Address_PROG[4]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N31
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

-- Location: LCCOMB_X40_Y14_N22
\o_Address_PROG[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[5]~reg0feeder_combout\ = \i_INSTRUCTION[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[5]~input_o\,
	combout => \o_Address_PROG[5]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N23
\o_Address_PROG[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_PROG[5]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[5]~reg0_q\);

-- Location: FF_X40_Y14_N17
\o_Address_PROG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[6]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_PROG[6]~reg0_q\);

-- Location: LCCOMB_X40_Y3_N24
\o_Address_PROG[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[7]~reg0feeder_combout\ = \i_INSTRUCTION[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[7]~input_o\,
	combout => \o_Address_PROG[7]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N25
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

-- Location: FF_X40_Y3_N3
\o_Address_PROG[8]~reg0\ : dffeas
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
	q => \o_Address_PROG[8]~reg0_q\);

-- Location: LCCOMB_X40_Y3_N12
\o_Address_PROG[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_PROG[9]~reg0feeder_combout\ = \i_INSTRUCTION[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[9]~input_o\,
	combout => \o_Address_PROG[9]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N13
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

-- Location: LCCOMB_X23_Y1_N8
\o_Address_MEM[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[0]~reg0feeder_combout\ = \i_INSTRUCTION[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[0]~input_o\,
	combout => \o_Address_MEM[0]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N9
\o_Address_MEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[0]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[0]~reg0_q\);

-- Location: LCCOMB_X40_Y14_N2
\o_Address_MEM[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[1]~reg0feeder_combout\ = \i_INSTRUCTION[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[1]~input_o\,
	combout => \o_Address_MEM[1]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N3
\o_Address_MEM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[1]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[1]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N2
\o_Address_MEM[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[2]~reg0feeder_combout\ = \i_INSTRUCTION[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \o_Address_MEM[2]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N3
\o_Address_MEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[2]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[2]~reg0_q\);

-- Location: LCCOMB_X40_Y14_N20
\o_Address_MEM[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[3]~reg0feeder_combout\ = \i_INSTRUCTION[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[3]~input_o\,
	combout => \o_Address_MEM[3]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N21
\o_Address_MEM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[3]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[3]~reg0_q\);

-- Location: LCCOMB_X40_Y3_N22
\o_Address_MEM[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[4]~reg0feeder_combout\ = \i_INSTRUCTION[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[4]~input_o\,
	combout => \o_Address_MEM[4]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N23
\o_Address_MEM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[4]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[4]~reg0_q\);

-- Location: LCCOMB_X40_Y14_N30
\o_Address_MEM[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[5]~reg0feeder_combout\ = \i_INSTRUCTION[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[5]~input_o\,
	combout => \o_Address_MEM[5]~reg0feeder_combout\);

-- Location: FF_X40_Y14_N31
\o_Address_MEM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[5]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[5]~reg0_q\);

-- Location: FF_X40_Y14_N9
\o_Address_MEM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[6]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[6]~reg0_q\);

-- Location: LCCOMB_X40_Y3_N16
\o_Address_MEM[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[7]~reg0feeder_combout\ = \i_INSTRUCTION[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[7]~input_o\,
	combout => \o_Address_MEM[7]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N17
\o_Address_MEM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[7]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[7]~reg0_q\);

-- Location: FF_X40_Y3_N11
\o_Address_MEM[8]~reg0\ : dffeas
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
	q => \o_Address_MEM[8]~reg0_q\);

-- Location: LCCOMB_X40_Y3_N20
\o_Address_MEM[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[9]~reg0feeder_combout\ = \i_INSTRUCTION[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[9]~input_o\,
	combout => \o_Address_MEM[9]~reg0feeder_combout\);

-- Location: FF_X40_Y3_N21
\o_Address_MEM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[9]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[9]~reg0_q\);

-- Location: LCCOMB_X23_Y13_N12
\o_Address_MEM[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[10]~reg0feeder_combout\ = \i_INSTRUCTION[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[10]~input_o\,
	combout => \o_Address_MEM[10]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N13
\o_Address_MEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[10]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[10]~reg0_q\);

-- Location: FF_X23_Y13_N15
\o_Address_MEM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[11]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[11]~reg0_q\);

-- Location: FF_X23_Y13_N17
\o_Address_MEM[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_INSTRUCTION[12]~input_o\,
	sload => VCC,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[12]~reg0_q\);

-- Location: FF_X23_Y13_N19
\o_Address_MEM[13]~reg0\ : dffeas
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
	q => \o_Address_MEM[13]~reg0_q\);

-- Location: LCCOMB_X23_Y13_N28
\o_Address_MEM[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Address_MEM[14]~reg0feeder_combout\ = \i_INSTRUCTION[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[14]~input_o\,
	combout => \o_Address_MEM[14]~reg0feeder_combout\);

-- Location: FF_X23_Y13_N29
\o_Address_MEM[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_Address_MEM[14]~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Address_MEM[14]~reg0_q\);

-- Location: FF_X23_Y13_N23
\o_Address_MEM[15]~reg0\ : dffeas
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
	q => \o_Address_MEM[15]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\i_INSTRUCTION[29]~input_o\ & (\i_INSTRUCTION[31]~input_o\ & \i_INSTRUCTION[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INSTRUCTION[29]~input_o\,
	datab => \i_INSTRUCTION[31]~input_o\,
	datac => \i_INSTRUCTION[30]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y1_N4
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (!\i_INSTRUCTION[28]~input_o\ & \i_INSTRUCTION[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \i_INSTRUCTION[28]~input_o\,
	datad => \i_INSTRUCTION[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: FF_X23_Y1_N5
\o_BRANCH_CONTROL[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[0]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N14
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~0_combout\ & ((\i_INSTRUCTION[28]~input_o\) # (\i_INSTRUCTION[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \i_INSTRUCTION[28]~input_o\,
	datad => \i_INSTRUCTION[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X23_Y1_N15
\o_BRANCH_CONTROL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[1]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N16
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux3~0_combout\ & (!\i_INSTRUCTION[28]~input_o\ & \i_INSTRUCTION[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \i_INSTRUCTION[28]~input_o\,
	datad => \i_INSTRUCTION[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X23_Y1_N17
\o_BRANCH_CONTROL[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_BRANCH_CONTROL[2]~reg0_q\);

-- Location: LCCOMB_X40_Y14_N18
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

-- Location: FF_X40_Y14_N19
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

-- Location: LCCOMB_X23_Y1_N18
\o_IMM_enable~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_IMM_enable~reg0feeder_combout\ = \i_INSTRUCTION[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_INSTRUCTION[0]~input_o\,
	combout => \o_IMM_enable~reg0feeder_combout\);

-- Location: FF_X23_Y1_N19
\o_IMM_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_IMM_enable~reg0feeder_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_IMM_enable~reg0_q\);

-- Location: IOIBUF_X7_Y0_N8
\i_INSTRUCTION[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(20),
	o => \i_INSTRUCTION[20]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\i_INSTRUCTION[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(21),
	o => \i_INSTRUCTION[21]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\i_INSTRUCTION[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INSTRUCTION(22),
	o => \i_INSTRUCTION[22]~input_o\);

ww_o_ALU_OP_SEL(0) <= \o_ALU_OP_SEL[0]~output_o\;

ww_o_ALU_OP_SEL(1) <= \o_ALU_OP_SEL[1]~output_o\;

ww_o_ALU_OP_SEL(2) <= \o_ALU_OP_SEL[2]~output_o\;

ww_o_ALU_OP_SEL(3) <= \o_ALU_OP_SEL[3]~output_o\;

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

ww_o_BRANCH_CONTROL(0) <= \o_BRANCH_CONTROL[0]~output_o\;

ww_o_BRANCH_CONTROL(1) <= \o_BRANCH_CONTROL[1]~output_o\;

ww_o_BRANCH_CONTROL(2) <= \o_BRANCH_CONTROL[2]~output_o\;

ww_o_Signed <= \o_Signed~output_o\;

ww_o_IMM_enable <= \o_IMM_enable~output_o\;
END structure;


