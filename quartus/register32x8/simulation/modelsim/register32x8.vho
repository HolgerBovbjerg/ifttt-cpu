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

-- DATE "05/27/2019 15:05:42"

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

ENTITY 	register32x8 IS
    PORT (
	i_GPR_clk : IN std_logic;
	i_GPR_enable : IN std_logic;
	i_GPR_reset : IN std_logic;
	i_GPR_address_A : IN std_logic_vector(4 DOWNTO 0);
	i_GPR_address_B : IN std_logic_vector(4 DOWNTO 0);
	o_GPR_ALU_data_A : OUT std_logic_vector(7 DOWNTO 0);
	o_GPR_ALU_data_B : OUT std_logic_vector(7 DOWNTO 0);
	i_GPR_data : IN std_logic_vector(7 DOWNTO 0);
	i_GPR_write_address : IN std_logic_vector(4 DOWNTO 0);
	i_GPR_write_enable : IN std_logic
	);
END register32x8;

-- Design Ports Information
-- o_GPR_ALU_data_A[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[3]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_enable	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_reset	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_enable	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register32x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_GPR_clk : std_logic;
SIGNAL ww_i_GPR_enable : std_logic;
SIGNAL ww_i_GPR_reset : std_logic;
SIGNAL ww_i_GPR_address_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i_GPR_address_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_GPR_ALU_data_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_GPR_ALU_data_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GPR_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GPR_write_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i_GPR_write_enable : std_logic;
SIGNAL \i_GPR_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_GPR_ALU_data_A[0]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[1]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[2]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[3]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[4]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[5]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[6]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[7]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[0]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[1]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[2]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[3]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[4]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[5]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[6]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[7]~output_o\ : std_logic;
SIGNAL \i_GPR_clk~input_o\ : std_logic;
SIGNAL \i_GPR_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_GPR_address_A[4]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[0]~input_o\ : std_logic;
SIGNAL \i_GPR_reset~input_o\ : std_logic;
SIGNAL \i_GPR_data[0]~input_o\ : std_logic;
SIGNAL \r_REGISTER~0_combout\ : std_logic;
SIGNAL \i_GPR_write_address[0]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[1]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[2]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[3]~input_o\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \i_GPR_enable~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[4]~input_o\ : std_logic;
SIGNAL \i_GPR_write_enable~input_o\ : std_logic;
SIGNAL \r_REGISTER[10][0]~18_combout\ : std_logic;
SIGNAL \r_REGISTER[13][0]~31_combout\ : std_logic;
SIGNAL \r_REGISTER[13][0]~q\ : std_logic;
SIGNAL \r_REGISTER[15][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \r_REGISTER[15][0]~34_combout\ : std_logic;
SIGNAL \r_REGISTER[15][0]~q\ : std_logic;
SIGNAL \i_GPR_address_A[1]~input_o\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_REGISTER[14][0]~32_combout\ : std_logic;
SIGNAL \r_REGISTER[14][0]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \r_REGISTER[12][0]~33_combout\ : std_logic;
SIGNAL \r_REGISTER[12][0]~q\ : std_logic;
SIGNAL \Mux7~17_combout\ : std_logic;
SIGNAL \Mux7~18_combout\ : std_logic;
SIGNAL \i_GPR_address_A[3]~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_REGISTER[10][0]~19_combout\ : std_logic;
SIGNAL \r_REGISTER[10][0]~q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \r_REGISTER[8][0]~21_combout\ : std_logic;
SIGNAL \r_REGISTER[8][0]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_REGISTER[9][0]~20_combout\ : std_logic;
SIGNAL \r_REGISTER[9][0]~q\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \r_REGISTER[11][0]~22_combout\ : std_logic;
SIGNAL \r_REGISTER[11][0]~q\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_REGISTER[2][0]~27_combout\ : std_logic;
SIGNAL \r_REGISTER[2][0]~q\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \r_REGISTER[3][0]~30_combout\ : std_logic;
SIGNAL \r_REGISTER[3][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_REGISTER[1][0]~28_combout\ : std_logic;
SIGNAL \r_REGISTER[1][0]~q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \r_REGISTER[0][0]~29_combout\ : std_logic;
SIGNAL \r_REGISTER[0][0]~q\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \i_GPR_address_A[2]~input_o\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \r_REGISTER[7][0]~26_combout\ : std_logic;
SIGNAL \r_REGISTER[7][0]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_REGISTER[5][0]~23_combout\ : std_logic;
SIGNAL \r_REGISTER[5][0]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_REGISTER[4][0]~25_combout\ : std_logic;
SIGNAL \r_REGISTER[4][0]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \r_REGISTER[6][0]~24_combout\ : std_logic;
SIGNAL \r_REGISTER[6][0]~q\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \Mux7~19_combout\ : std_logic;
SIGNAL \r_REGISTER[22][0]~1_combout\ : std_logic;
SIGNAL \r_REGISTER[31][0]~17_combout\ : std_logic;
SIGNAL \r_REGISTER[31][0]~q\ : std_logic;
SIGNAL \r_REGISTER[27][0]~14_combout\ : std_logic;
SIGNAL \r_REGISTER[27][0]~q\ : std_logic;
SIGNAL \r_REGISTER[23][0]~15_combout\ : std_logic;
SIGNAL \r_REGISTER[23][0]~q\ : std_logic;
SIGNAL \r_REGISTER[19][0]~16_combout\ : std_logic;
SIGNAL \r_REGISTER[19][0]~q\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \r_REGISTER[30][0]~5_combout\ : std_logic;
SIGNAL \r_REGISTER[30][0]~q\ : std_logic;
SIGNAL \r_REGISTER[22][0]~2_combout\ : std_logic;
SIGNAL \r_REGISTER[22][0]~q\ : std_logic;
SIGNAL \r_REGISTER[18][0]~4_combout\ : std_logic;
SIGNAL \r_REGISTER[18][0]~q\ : std_logic;
SIGNAL \r_REGISTER[26][0]~3_combout\ : std_logic;
SIGNAL \r_REGISTER[26][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \r_REGISTER[21][0]~7_combout\ : std_logic;
SIGNAL \r_REGISTER[21][0]~q\ : std_logic;
SIGNAL \r_REGISTER[17][0]~8_combout\ : std_logic;
SIGNAL \r_REGISTER[17][0]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \r_REGISTER[29][0]~9_combout\ : std_logic;
SIGNAL \r_REGISTER[29][0]~q\ : std_logic;
SIGNAL \r_REGISTER[25][0]~6_combout\ : std_logic;
SIGNAL \r_REGISTER[25][0]~q\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \r_REGISTER[28][0]~13_combout\ : std_logic;
SIGNAL \r_REGISTER[28][0]~q\ : std_logic;
SIGNAL \r_REGISTER[20][0]~10_combout\ : std_logic;
SIGNAL \r_REGISTER[20][0]~q\ : std_logic;
SIGNAL \r_REGISTER[24][0]~11_combout\ : std_logic;
SIGNAL \r_REGISTER[24][0]~q\ : std_logic;
SIGNAL \r_REGISTER[16][0]~12_combout\ : std_logic;
SIGNAL \r_REGISTER[16][0]~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[0]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[1]~input_o\ : std_logic;
SIGNAL \r_REGISTER~35_combout\ : std_logic;
SIGNAL \r_REGISTER[20][1]~q\ : std_logic;
SIGNAL \r_REGISTER[16][1]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \r_REGISTER[28][1]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[28][1]~q\ : std_logic;
SIGNAL \r_REGISTER[24][1]~q\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \r_REGISTER[22][1]~q\ : std_logic;
SIGNAL \r_REGISTER[18][1]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \r_REGISTER[26][1]~q\ : std_logic;
SIGNAL \r_REGISTER[30][1]~q\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \r_REGISTER[27][1]~q\ : std_logic;
SIGNAL \r_REGISTER[19][1]~q\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \r_REGISTER[23][1]~q\ : std_logic;
SIGNAL \r_REGISTER[31][1]~q\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \r_REGISTER[21][1]~q\ : std_logic;
SIGNAL \r_REGISTER[29][1]~q\ : std_logic;
SIGNAL \r_REGISTER[17][1]~q\ : std_logic;
SIGNAL \r_REGISTER[25][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \r_REGISTER[14][1]~q\ : std_logic;
SIGNAL \r_REGISTER[15][1]~q\ : std_logic;
SIGNAL \r_REGISTER[12][1]~q\ : std_logic;
SIGNAL \r_REGISTER[13][1]~q\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \r_REGISTER[9][1]~q\ : std_logic;
SIGNAL \r_REGISTER[11][1]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[11][1]~q\ : std_logic;
SIGNAL \r_REGISTER[8][1]~q\ : std_logic;
SIGNAL \r_REGISTER[10][1]~q\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \r_REGISTER[1][1]~q\ : std_logic;
SIGNAL \r_REGISTER[3][1]~q\ : std_logic;
SIGNAL \r_REGISTER[2][1]~q\ : std_logic;
SIGNAL \r_REGISTER[0][1]~q\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \r_REGISTER[6][1]~q\ : std_logic;
SIGNAL \r_REGISTER[7][1]~q\ : std_logic;
SIGNAL \r_REGISTER[5][1]~q\ : std_logic;
SIGNAL \r_REGISTER[4][1]~q\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \Mux6~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[1]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[2]~input_o\ : std_logic;
SIGNAL \r_REGISTER~36_combout\ : std_logic;
SIGNAL \r_REGISTER[30][2]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[30][2]~q\ : std_logic;
SIGNAL \r_REGISTER[22][2]~q\ : std_logic;
SIGNAL \r_REGISTER[26][2]~q\ : std_logic;
SIGNAL \r_REGISTER[18][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \r_REGISTER[23][2]~q\ : std_logic;
SIGNAL \r_REGISTER[19][2]~q\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \r_REGISTER[27][2]~q\ : std_logic;
SIGNAL \r_REGISTER[31][2]~q\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \r_REGISTER[29][2]~q\ : std_logic;
SIGNAL \r_REGISTER[25][2]~q\ : std_logic;
SIGNAL \r_REGISTER[21][2]~q\ : std_logic;
SIGNAL \r_REGISTER[17][2]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \r_REGISTER[28][2]~q\ : std_logic;
SIGNAL \r_REGISTER[20][2]~q\ : std_logic;
SIGNAL \r_REGISTER[24][2]~q\ : std_logic;
SIGNAL \r_REGISTER[16][2]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \r_REGISTER[13][2]~q\ : std_logic;
SIGNAL \r_REGISTER[15][2]~q\ : std_logic;
SIGNAL \r_REGISTER[14][2]~q\ : std_logic;
SIGNAL \r_REGISTER[12][2]~q\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \r_REGISTER[11][2]~q\ : std_logic;
SIGNAL \r_REGISTER[10][2]~q\ : std_logic;
SIGNAL \r_REGISTER[8][2]~q\ : std_logic;
SIGNAL \r_REGISTER[9][2]~q\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \r_REGISTER[2][2]~q\ : std_logic;
SIGNAL \r_REGISTER[3][2]~q\ : std_logic;
SIGNAL \r_REGISTER[1][2]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[1][2]~q\ : std_logic;
SIGNAL \r_REGISTER[0][2]~q\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \r_REGISTER[7][2]~q\ : std_logic;
SIGNAL \r_REGISTER[5][2]~q\ : std_logic;
SIGNAL \r_REGISTER[6][2]~q\ : std_logic;
SIGNAL \r_REGISTER[4][2]~q\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \Mux5~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[2]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[3]~input_o\ : std_logic;
SIGNAL \r_REGISTER~37_combout\ : std_logic;
SIGNAL \r_REGISTER[14][3]~q\ : std_logic;
SIGNAL \r_REGISTER[15][3]~q\ : std_logic;
SIGNAL \r_REGISTER[13][3]~q\ : std_logic;
SIGNAL \r_REGISTER[12][3]~q\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \r_REGISTER[6][3]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[6][3]~q\ : std_logic;
SIGNAL \r_REGISTER[7][3]~q\ : std_logic;
SIGNAL \r_REGISTER[5][3]~q\ : std_logic;
SIGNAL \r_REGISTER[4][3]~q\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \r_REGISTER[3][3]~q\ : std_logic;
SIGNAL \r_REGISTER[1][3]~q\ : std_logic;
SIGNAL \r_REGISTER[0][3]~q\ : std_logic;
SIGNAL \r_REGISTER[2][3]~q\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \r_REGISTER[9][3]~q\ : std_logic;
SIGNAL \r_REGISTER[11][3]~q\ : std_logic;
SIGNAL \r_REGISTER[10][3]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[10][3]~q\ : std_logic;
SIGNAL \r_REGISTER[8][3]~q\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~19_combout\ : std_logic;
SIGNAL \r_REGISTER[21][3]~q\ : std_logic;
SIGNAL \r_REGISTER[29][3]~q\ : std_logic;
SIGNAL \r_REGISTER[25][3]~q\ : std_logic;
SIGNAL \r_REGISTER[17][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \r_REGISTER[27][3]~q\ : std_logic;
SIGNAL \r_REGISTER[19][3]~q\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \r_REGISTER[23][3]~q\ : std_logic;
SIGNAL \r_REGISTER[31][3]~q\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \r_REGISTER[28][3]~q\ : std_logic;
SIGNAL \r_REGISTER[24][3]~q\ : std_logic;
SIGNAL \r_REGISTER[20][3]~q\ : std_logic;
SIGNAL \r_REGISTER[16][3]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \r_REGISTER[30][3]~q\ : std_logic;
SIGNAL \r_REGISTER[22][3]~q\ : std_logic;
SIGNAL \r_REGISTER[18][3]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \r_REGISTER[26][3]~q\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[3]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[4]~input_o\ : std_logic;
SIGNAL \r_REGISTER~38_combout\ : std_logic;
SIGNAL \r_REGISTER[31][4]~q\ : std_logic;
SIGNAL \r_REGISTER[19][4]~q\ : std_logic;
SIGNAL \r_REGISTER[23][4]~q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \r_REGISTER[27][4]~q\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \r_REGISTER[29][4]~q\ : std_logic;
SIGNAL \r_REGISTER[25][4]~q\ : std_logic;
SIGNAL \r_REGISTER[21][4]~q\ : std_logic;
SIGNAL \r_REGISTER[17][4]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \r_REGISTER[24][4]~q\ : std_logic;
SIGNAL \r_REGISTER[16][4]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \r_REGISTER[28][4]~q\ : std_logic;
SIGNAL \r_REGISTER[20][4]~q\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \r_REGISTER[22][4]~q\ : std_logic;
SIGNAL \r_REGISTER[30][4]~q\ : std_logic;
SIGNAL \r_REGISTER[26][4]~q\ : std_logic;
SIGNAL \r_REGISTER[18][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \r_REGISTER[14][4]~q\ : std_logic;
SIGNAL \r_REGISTER[12][4]~q\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \r_REGISTER[15][4]~q\ : std_logic;
SIGNAL \r_REGISTER[13][4]~q\ : std_logic;
SIGNAL \Mux3~18_combout\ : std_logic;
SIGNAL \r_REGISTER[10][4]~q\ : std_logic;
SIGNAL \r_REGISTER[11][4]~q\ : std_logic;
SIGNAL \r_REGISTER[9][4]~q\ : std_logic;
SIGNAL \r_REGISTER[8][4]~q\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \r_REGISTER[2][4]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[2][4]~q\ : std_logic;
SIGNAL \r_REGISTER[3][4]~q\ : std_logic;
SIGNAL \r_REGISTER[1][4]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[1][4]~q\ : std_logic;
SIGNAL \r_REGISTER[0][4]~q\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \r_REGISTER[7][4]~q\ : std_logic;
SIGNAL \r_REGISTER[5][4]~q\ : std_logic;
SIGNAL \r_REGISTER[6][4]~q\ : std_logic;
SIGNAL \r_REGISTER[4][4]~q\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~19_combout\ : std_logic;
SIGNAL \Mux3~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[4]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[5]~input_o\ : std_logic;
SIGNAL \r_REGISTER~39_combout\ : std_logic;
SIGNAL \r_REGISTER[31][5]~q\ : std_logic;
SIGNAL \r_REGISTER[23][5]~q\ : std_logic;
SIGNAL \r_REGISTER[27][5]~q\ : std_logic;
SIGNAL \r_REGISTER[19][5]~q\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \r_REGISTER[21][5]~q\ : std_logic;
SIGNAL \r_REGISTER[29][5]~q\ : std_logic;
SIGNAL \r_REGISTER[25][5]~q\ : std_logic;
SIGNAL \r_REGISTER[17][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \r_REGISTER[30][5]~q\ : std_logic;
SIGNAL \r_REGISTER[26][5]~q\ : std_logic;
SIGNAL \r_REGISTER[22][5]~q\ : std_logic;
SIGNAL \r_REGISTER[18][5]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \r_REGISTER[28][5]~q\ : std_logic;
SIGNAL \r_REGISTER[24][5]~q\ : std_logic;
SIGNAL \r_REGISTER[20][5]~q\ : std_logic;
SIGNAL \r_REGISTER[16][5]~q\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \r_REGISTER[15][5]~q\ : std_logic;
SIGNAL \r_REGISTER[14][5]~q\ : std_logic;
SIGNAL \r_REGISTER[13][5]~q\ : std_logic;
SIGNAL \r_REGISTER[12][5]~q\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \Mux2~18_combout\ : std_logic;
SIGNAL \r_REGISTER[6][5]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[6][5]~q\ : std_logic;
SIGNAL \r_REGISTER[7][5]~q\ : std_logic;
SIGNAL \r_REGISTER[5][5]~q\ : std_logic;
SIGNAL \r_REGISTER[4][5]~q\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \r_REGISTER[3][5]~q\ : std_logic;
SIGNAL \r_REGISTER[1][5]~q\ : std_logic;
SIGNAL \r_REGISTER[0][5]~q\ : std_logic;
SIGNAL \r_REGISTER[2][5]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[2][5]~q\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \r_REGISTER[11][5]~q\ : std_logic;
SIGNAL \r_REGISTER[9][5]~q\ : std_logic;
SIGNAL \r_REGISTER[8][5]~q\ : std_logic;
SIGNAL \r_REGISTER[10][5]~q\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \Mux2~19_combout\ : std_logic;
SIGNAL \Mux2~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[5]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[6]~input_o\ : std_logic;
SIGNAL \r_REGISTER~40_combout\ : std_logic;
SIGNAL \r_REGISTER[3][6]~q\ : std_logic;
SIGNAL \r_REGISTER[2][6]~q\ : std_logic;
SIGNAL \r_REGISTER[1][6]~q\ : std_logic;
SIGNAL \r_REGISTER[0][6]~q\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \r_REGISTER[7][6]~q\ : std_logic;
SIGNAL \r_REGISTER[5][6]~q\ : std_logic;
SIGNAL \r_REGISTER[6][6]~q\ : std_logic;
SIGNAL \r_REGISTER[4][6]~q\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \r_REGISTER[9][6]~q\ : std_logic;
SIGNAL \r_REGISTER[8][6]~q\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \r_REGISTER[11][6]~q\ : std_logic;
SIGNAL \r_REGISTER[10][6]~q\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \r_REGISTER[14][6]~q\ : std_logic;
SIGNAL \r_REGISTER[12][6]~q\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \r_REGISTER[15][6]~q\ : std_logic;
SIGNAL \r_REGISTER[13][6]~q\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \r_REGISTER[31][6]~q\ : std_logic;
SIGNAL \r_REGISTER[27][6]~q\ : std_logic;
SIGNAL \r_REGISTER[23][6]~q\ : std_logic;
SIGNAL \r_REGISTER[19][6]~q\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \r_REGISTER[22][6]~q\ : std_logic;
SIGNAL \r_REGISTER[30][6]~q\ : std_logic;
SIGNAL \r_REGISTER[18][6]~q\ : std_logic;
SIGNAL \r_REGISTER[26][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \r_REGISTER[29][6]~q\ : std_logic;
SIGNAL \r_REGISTER[25][6]~q\ : std_logic;
SIGNAL \r_REGISTER[21][6]~q\ : std_logic;
SIGNAL \r_REGISTER[17][6]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \r_REGISTER[28][6]~q\ : std_logic;
SIGNAL \r_REGISTER[20][6]~q\ : std_logic;
SIGNAL \r_REGISTER[24][6]~q\ : std_logic;
SIGNAL \r_REGISTER[16][6]~q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[6]~reg0_q\ : std_logic;
SIGNAL \i_GPR_data[7]~input_o\ : std_logic;
SIGNAL \r_REGISTER~41_combout\ : std_logic;
SIGNAL \r_REGISTER[31][7]~q\ : std_logic;
SIGNAL \r_REGISTER[23][7]~q\ : std_logic;
SIGNAL \r_REGISTER[27][7]~q\ : std_logic;
SIGNAL \r_REGISTER[19][7]~q\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \r_REGISTER[21][7]~q\ : std_logic;
SIGNAL \r_REGISTER[25][7]~q\ : std_logic;
SIGNAL \r_REGISTER[17][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \r_REGISTER[29][7]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \r_REGISTER[30][7]~q\ : std_logic;
SIGNAL \r_REGISTER[26][7]~q\ : std_logic;
SIGNAL \r_REGISTER[22][7]~q\ : std_logic;
SIGNAL \r_REGISTER[18][7]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \r_REGISTER[28][7]~q\ : std_logic;
SIGNAL \r_REGISTER[24][7]~q\ : std_logic;
SIGNAL \r_REGISTER[20][7]~q\ : std_logic;
SIGNAL \r_REGISTER[16][7]~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \r_REGISTER[7][7]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[7][7]~q\ : std_logic;
SIGNAL \r_REGISTER[6][7]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[6][7]~q\ : std_logic;
SIGNAL \r_REGISTER[5][7]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[5][7]~q\ : std_logic;
SIGNAL \r_REGISTER[4][7]~feeder_combout\ : std_logic;
SIGNAL \r_REGISTER[4][7]~q\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \r_REGISTER[13][7]~q\ : std_logic;
SIGNAL \r_REGISTER[12][7]~q\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \r_REGISTER[14][7]~q\ : std_logic;
SIGNAL \r_REGISTER[15][7]~q\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \r_REGISTER[3][7]~q\ : std_logic;
SIGNAL \r_REGISTER[1][7]~q\ : std_logic;
SIGNAL \r_REGISTER[2][7]~q\ : std_logic;
SIGNAL \r_REGISTER[0][7]~q\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \r_REGISTER[9][7]~q\ : std_logic;
SIGNAL \r_REGISTER[11][7]~q\ : std_logic;
SIGNAL \r_REGISTER[10][7]~q\ : std_logic;
SIGNAL \r_REGISTER[8][7]~q\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[7]~reg0_q\ : std_logic;
SIGNAL \i_GPR_address_B[4]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[2]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[3]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \i_GPR_address_B[1]~input_o\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \i_GPR_address_B[0]~input_o\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~17_combout\ : std_logic;
SIGNAL \Mux15~18_combout\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \Mux15~19_combout\ : std_logic;
SIGNAL \Mux15~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[0]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \Mux14~17_combout\ : std_logic;
SIGNAL \Mux14~18_combout\ : std_logic;
SIGNAL \Mux14~14_combout\ : std_logic;
SIGNAL \Mux14~15_combout\ : std_logic;
SIGNAL \Mux14~12_combout\ : std_logic;
SIGNAL \Mux14~13_combout\ : std_logic;
SIGNAL \Mux14~16_combout\ : std_logic;
SIGNAL \Mux14~19_combout\ : std_logic;
SIGNAL \Mux14~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[1]~reg0_q\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \Mux13~18_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux13~19_combout\ : std_logic;
SIGNAL \Mux13~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[2]~reg0_q\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~17_combout\ : std_logic;
SIGNAL \Mux12~18_combout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \Mux12~19_combout\ : std_logic;
SIGNAL \Mux12~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[3]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux11~17_combout\ : std_logic;
SIGNAL \Mux11~18_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \Mux11~19_combout\ : std_logic;
SIGNAL \Mux11~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~17_combout\ : std_logic;
SIGNAL \Mux10~18_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux10~14_combout\ : std_logic;
SIGNAL \Mux10~15_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \Mux10~13_combout\ : std_logic;
SIGNAL \Mux10~16_combout\ : std_logic;
SIGNAL \Mux10~19_combout\ : std_logic;
SIGNAL \Mux10~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[5]~reg0_q\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~17_combout\ : std_logic;
SIGNAL \Mux9~18_combout\ : std_logic;
SIGNAL \Mux9~12_combout\ : std_logic;
SIGNAL \Mux9~13_combout\ : std_logic;
SIGNAL \Mux9~14_combout\ : std_logic;
SIGNAL \Mux9~15_combout\ : std_logic;
SIGNAL \Mux9~16_combout\ : std_logic;
SIGNAL \Mux9~19_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[6]~reg0_q\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~17_combout\ : std_logic;
SIGNAL \Mux8~18_combout\ : std_logic;
SIGNAL \Mux8~14_combout\ : std_logic;
SIGNAL \Mux8~15_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \Mux8~13_combout\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \Mux8~19_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~20_combout\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[7]~reg0_q\ : std_logic;

BEGIN

ww_i_GPR_clk <= i_GPR_clk;
ww_i_GPR_enable <= i_GPR_enable;
ww_i_GPR_reset <= i_GPR_reset;
ww_i_GPR_address_A <= i_GPR_address_A;
ww_i_GPR_address_B <= i_GPR_address_B;
o_GPR_ALU_data_A <= ww_o_GPR_ALU_data_A;
o_GPR_ALU_data_B <= ww_o_GPR_ALU_data_B;
ww_i_GPR_data <= i_GPR_data;
ww_i_GPR_write_address <= i_GPR_write_address;
ww_i_GPR_write_enable <= i_GPR_write_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_GPR_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_GPR_clk~input_o\);

-- Location: IOOBUF_X41_Y22_N23
\o_GPR_ALU_data_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_GPR_ALU_data_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\o_GPR_ALU_data_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\o_GPR_ALU_data_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\o_GPR_ALU_data_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_GPR_ALU_data_A[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\o_GPR_ALU_data_A[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_GPR_ALU_data_A[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_A[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_GPR_ALU_data_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\o_GPR_ALU_data_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\o_GPR_ALU_data_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[2]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\o_GPR_ALU_data_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_GPR_ALU_data_B[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_GPR_ALU_data_B[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_GPR_ALU_data_B[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_GPR_ALU_data_B[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPR_ALU_data_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_GPR_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_clk,
	o => \i_GPR_clk~input_o\);

-- Location: CLKCTRL_G4
\i_GPR_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_GPR_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_GPR_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y23_N8
\i_GPR_address_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(4),
	o => \i_GPR_address_A[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\i_GPR_address_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(0),
	o => \i_GPR_address_A[0]~input_o\);

-- Location: IOIBUF_X41_Y25_N22
\i_GPR_reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_reset,
	o => \i_GPR_reset~input_o\);

-- Location: IOIBUF_X41_Y24_N22
\i_GPR_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(0),
	o => \i_GPR_data[0]~input_o\);

-- Location: LCCOMB_X30_Y24_N0
\r_REGISTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~0_combout\ = (!\i_GPR_reset~input_o\ & \i_GPR_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_reset~input_o\,
	datad => \i_GPR_data[0]~input_o\,
	combout => \r_REGISTER~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\i_GPR_write_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(0),
	o => \i_GPR_write_address[0]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\i_GPR_write_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(1),
	o => \i_GPR_write_address[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\i_GPR_write_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(2),
	o => \i_GPR_write_address[2]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\i_GPR_write_address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(3),
	o => \i_GPR_write_address[3]~input_o\);

-- Location: LCCOMB_X24_Y25_N8
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & (\i_GPR_write_address[2]~input_o\ & \i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: IOIBUF_X23_Y29_N15
\i_GPR_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_enable,
	o => \i_GPR_enable~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\i_GPR_write_address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(4),
	o => \i_GPR_write_address[4]~input_o\);

-- Location: IOIBUF_X35_Y29_N29
\i_GPR_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_enable,
	o => \i_GPR_write_enable~input_o\);

-- Location: LCCOMB_X31_Y24_N26
\r_REGISTER[10][0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[10][0]~18_combout\ = (!\i_GPR_write_address[4]~input_o\ & \i_GPR_write_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_write_address[4]~input_o\,
	datad => \i_GPR_write_enable~input_o\,
	combout => \r_REGISTER[10][0]~18_combout\);

-- Location: LCCOMB_X26_Y24_N6
\r_REGISTER[13][0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[13][0]~31_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~7_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[10][0]~18_combout\,
	combout => \r_REGISTER[13][0]~31_combout\);

-- Location: FF_X26_Y23_N1
\r_REGISTER[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][0]~q\);

-- Location: LCCOMB_X30_Y23_N12
\r_REGISTER[15][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[15][0]~feeder_combout\ = \r_REGISTER~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~0_combout\,
	combout => \r_REGISTER[15][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y26_N16
\Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X26_Y26_N22
\r_REGISTER[15][0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[15][0]~34_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \r_REGISTER[10][0]~18_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \Decoder0~15_combout\,
	combout => \r_REGISTER[15][0]~34_combout\);

-- Location: FF_X30_Y23_N13
\r_REGISTER[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[15][0]~feeder_combout\,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][0]~q\);

-- Location: IOIBUF_X32_Y29_N8
\i_GPR_address_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(1),
	o => \i_GPR_address_A[1]~input_o\);

-- Location: LCCOMB_X26_Y26_N20
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\i_GPR_write_address[3]~input_o\ & (!\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X26_Y24_N24
\r_REGISTER[14][0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[14][0]~32_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \Decoder0~3_combout\,
	combout => \r_REGISTER[14][0]~32_combout\);

-- Location: FF_X27_Y23_N19
\r_REGISTER[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][0]~q\);

-- Location: LCCOMB_X26_Y26_N30
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\i_GPR_write_address[3]~input_o\ & (!\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X26_Y24_N14
\r_REGISTER[12][0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[12][0]~33_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~11_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[10][0]~18_combout\,
	combout => \r_REGISTER[12][0]~33_combout\);

-- Location: FF_X26_Y23_N3
\r_REGISTER[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][0]~q\);

-- Location: LCCOMB_X27_Y23_N18
\Mux7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~17_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[14][0]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[14][0]~q\,
	datad => \r_REGISTER[12][0]~q\,
	combout => \Mux7~17_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Mux7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~18_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux7~17_combout\ & ((\r_REGISTER[15][0]~q\))) # (!\Mux7~17_combout\ & (\r_REGISTER[13][0]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[13][0]~q\,
	datac => \r_REGISTER[15][0]~q\,
	datad => \Mux7~17_combout\,
	combout => \Mux7~18_combout\);

-- Location: IOIBUF_X28_Y29_N29
\i_GPR_address_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(3),
	o => \i_GPR_address_A[3]~input_o\);

-- Location: LCCOMB_X24_Y25_N4
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & (!\i_GPR_write_address[2]~input_o\ & \i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y25_N24
\r_REGISTER[10][0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[10][0]~19_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \Decoder0~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[10][0]~19_combout\);

-- Location: FF_X27_Y23_N21
\r_REGISTER[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][0]~q\);

-- Location: LCCOMB_X24_Y25_N12
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & (!\i_GPR_write_address[2]~input_o\ & \i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X24_Y25_N6
\r_REGISTER[8][0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[8][0]~21_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~9_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~9_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \r_REGISTER[10][0]~18_combout\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[8][0]~21_combout\);

-- Location: FF_X28_Y23_N27
\r_REGISTER[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][0]~q\);

-- Location: LCCOMB_X26_Y26_N18
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & !\i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X26_Y26_N4
\r_REGISTER[9][0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[9][0]~20_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~4_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_enable~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \r_REGISTER[10][0]~18_combout\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[9][0]~20_combout\);

-- Location: FF_X28_Y23_N25
\r_REGISTER[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][0]~q\);

-- Location: LCCOMB_X28_Y23_N24
\Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\i_GPR_address_A[0]~input_o\ & (((\r_REGISTER[9][0]~q\) # (\i_GPR_address_A[1]~input_o\)))) # (!\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[8][0]~q\ & ((!\i_GPR_address_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[8][0]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[9][0]~q\,
	datad => \i_GPR_address_A[1]~input_o\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & !\i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X26_Y24_N12
\r_REGISTER[11][0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[11][0]~22_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~12_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[10][0]~18_combout\,
	combout => \r_REGISTER[11][0]~22_combout\);

-- Location: FF_X29_Y23_N21
\r_REGISTER[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][0]~q\);

-- Location: LCCOMB_X28_Y23_N8
\Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux7~10_combout\ & ((\r_REGISTER[11][0]~q\))) # (!\Mux7~10_combout\ & (\r_REGISTER[10][0]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux7~10_combout\,
	datad => \r_REGISTER[11][0]~q\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X24_Y25_N28
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & (!\i_GPR_write_address[2]~input_o\ & !\i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y25_N2
\r_REGISTER[2][0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[2][0]~27_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \Decoder0~2_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[2][0]~27_combout\);

-- Location: FF_X30_Y22_N19
\r_REGISTER[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][0]~q\);

-- Location: LCCOMB_X24_Y25_N26
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & (!\i_GPR_write_address[2]~input_o\ & !\i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X31_Y24_N6
\r_REGISTER[3][0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[3][0]~30_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~14_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \Decoder0~14_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \r_REGISTER[10][0]~18_combout\,
	combout => \r_REGISTER[3][0]~30_combout\);

-- Location: FF_X28_Y22_N31
\r_REGISTER[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][0]~q\);

-- Location: LCCOMB_X26_Y26_N10
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & !\i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X26_Y26_N12
\r_REGISTER[1][0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[1][0]~28_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~6_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \r_REGISTER[10][0]~18_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[1][0]~28_combout\);

-- Location: FF_X29_Y22_N29
\r_REGISTER[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][0]~q\);

-- Location: LCCOMB_X24_Y25_N0
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & (!\i_GPR_write_address[2]~input_o\ & !\i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X26_Y24_N4
\r_REGISTER[0][0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[0][0]~29_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \Decoder0~10_combout\,
	combout => \r_REGISTER[0][0]~29_combout\);

-- Location: FF_X28_Y22_N29
\r_REGISTER[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][0]~q\);

-- Location: LCCOMB_X29_Y22_N18
\Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[1][0]~q\) # ((\i_GPR_address_A[1]~input_o\)))) # (!\i_GPR_address_A[0]~input_o\ & (((!\i_GPR_address_A[1]~input_o\ & \r_REGISTER[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[1][0]~q\,
	datac => \i_GPR_address_A[1]~input_o\,
	datad => \r_REGISTER[0][0]~q\,
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X29_Y22_N16
\Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux7~14_combout\ & ((\r_REGISTER[3][0]~q\))) # (!\Mux7~14_combout\ & (\r_REGISTER[2][0]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[2][0]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[3][0]~q\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~15_combout\);

-- Location: IOIBUF_X30_Y29_N1
\i_GPR_address_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(2),
	o => \i_GPR_address_A[2]~input_o\);

-- Location: LCCOMB_X26_Y26_N2
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X26_Y24_N30
\r_REGISTER[7][0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[7][0]~26_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \Decoder0~13_combout\,
	combout => \r_REGISTER[7][0]~26_combout\);

-- Location: FF_X28_Y21_N11
\r_REGISTER[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][0]~q\);

-- Location: LCCOMB_X26_Y26_N26
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\i_GPR_write_address[3]~input_o\ & (\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[3]~input_o\,
	datab => \i_GPR_write_address[0]~input_o\,
	datac => \i_GPR_write_address[1]~input_o\,
	datad => \i_GPR_write_address[2]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y26_N14
\r_REGISTER[5][0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[5][0]~23_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~5_combout\ & \r_REGISTER[10][0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \r_REGISTER[10][0]~18_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[5][0]~23_combout\);

-- Location: FF_X29_Y21_N21
\r_REGISTER[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][0]~q\);

-- Location: LCCOMB_X24_Y25_N10
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\i_GPR_write_address[0]~input_o\ & (!\i_GPR_write_address[1]~input_o\ & (\i_GPR_write_address[2]~input_o\ & !\i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X31_Y24_N12
\r_REGISTER[4][0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[4][0]~25_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_enable~input_o\,
	datab => \r_REGISTER[10][0]~18_combout\,
	datac => \Decoder0~8_combout\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[4][0]~25_combout\);

-- Location: FF_X28_Y21_N5
\r_REGISTER[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][0]~q\);

-- Location: LCCOMB_X24_Y25_N20
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\i_GPR_write_address[0]~input_o\ & (\i_GPR_write_address[1]~input_o\ & (\i_GPR_write_address[2]~input_o\ & !\i_GPR_write_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_address[0]~input_o\,
	datab => \i_GPR_write_address[1]~input_o\,
	datac => \i_GPR_write_address[2]~input_o\,
	datad => \i_GPR_write_address[3]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y25_N16
\r_REGISTER[6][0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[6][0]~24_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[10][0]~18_combout\ & \Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][0]~18_combout\,
	datab => \Decoder0~0_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[6][0]~24_combout\);

-- Location: FF_X29_Y21_N19
\r_REGISTER[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][0]~q\);

-- Location: LCCOMB_X29_Y21_N0
\Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (((\i_GPR_address_A[1]~input_o\)))) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[6][0]~q\))) # (!\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[4][0]~q\,
	datac => \r_REGISTER[6][0]~q\,
	datad => \i_GPR_address_A[1]~input_o\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X29_Y21_N20
\Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux7~12_combout\ & (\r_REGISTER[7][0]~q\)) # (!\Mux7~12_combout\ & ((\r_REGISTER[5][0]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[7][0]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[5][0]~q\,
	datad => \Mux7~12_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (\i_GPR_address_A[3]~input_o\ & (((\i_GPR_address_A[2]~input_o\)))) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & ((\Mux7~13_combout\))) # (!\i_GPR_address_A[2]~input_o\ & (\Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~15_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \i_GPR_address_A[2]~input_o\,
	datad => \Mux7~13_combout\,
	combout => \Mux7~16_combout\);

-- Location: LCCOMB_X30_Y22_N8
\Mux7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~19_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux7~16_combout\ & (\Mux7~18_combout\)) # (!\Mux7~16_combout\ & ((\Mux7~11_combout\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~18_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux7~11_combout\,
	datad => \Mux7~16_combout\,
	combout => \Mux7~19_combout\);

-- Location: LCCOMB_X32_Y24_N20
\r_REGISTER[22][0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[22][0]~1_combout\ = (\i_GPR_write_enable~input_o\ & \i_GPR_write_address[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_write_enable~input_o\,
	datad => \i_GPR_write_address[4]~input_o\,
	combout => \r_REGISTER[22][0]~1_combout\);

-- Location: LCCOMB_X26_Y26_N6
\r_REGISTER[31][0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[31][0]~17_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \r_REGISTER[22][0]~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \Decoder0~15_combout\,
	combout => \r_REGISTER[31][0]~17_combout\);

-- Location: FF_X29_Y26_N7
\r_REGISTER[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][0]~q\);

-- Location: LCCOMB_X26_Y24_N2
\r_REGISTER[27][0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[27][0]~14_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~12_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[27][0]~14_combout\);

-- Location: FF_X30_Y26_N17
\r_REGISTER[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][0]~q\);

-- Location: LCCOMB_X27_Y26_N10
\r_REGISTER[23][0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[23][0]~15_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~13_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \r_REGISTER[22][0]~1_combout\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[23][0]~15_combout\);

-- Location: FF_X30_Y26_N19
\r_REGISTER[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][0]~q\);

-- Location: LCCOMB_X31_Y24_N10
\r_REGISTER[19][0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[19][0]~16_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~14_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \Decoder0~14_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[19][0]~16_combout\);

-- Location: FF_X29_Y26_N9
\r_REGISTER[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][0]~q\);

-- Location: LCCOMB_X30_Y26_N18
\Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[23][0]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[23][0]~q\,
	datad => \r_REGISTER[19][0]~q\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X30_Y26_N16
\Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux7~7_combout\ & (\r_REGISTER[31][0]~q\)) # (!\Mux7~7_combout\ & ((\r_REGISTER[27][0]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \r_REGISTER[31][0]~q\,
	datac => \r_REGISTER[27][0]~q\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X26_Y24_N20
\r_REGISTER[30][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[30][0]~5_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~3_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[30][0]~5_combout\);

-- Location: FF_X27_Y25_N3
\r_REGISTER[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][0]~q\);

-- Location: LCCOMB_X24_Y25_N18
\r_REGISTER[22][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[22][0]~2_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[22][0]~1_combout\,
	datab => \Decoder0~0_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[22][0]~2_combout\);

-- Location: FF_X28_Y25_N21
\r_REGISTER[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][0]~q\);

-- Location: LCCOMB_X24_Y25_N22
\r_REGISTER[18][0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[18][0]~4_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[22][0]~1_combout\,
	datab => \Decoder0~2_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[18][0]~4_combout\);

-- Location: FF_X27_Y25_N1
\r_REGISTER[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][0]~q\);

-- Location: LCCOMB_X24_Y25_N14
\r_REGISTER[26][0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[26][0]~3_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[22][0]~1_combout\,
	datab => \Decoder0~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[26][0]~3_combout\);

-- Location: FF_X28_Y25_N3
\r_REGISTER[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][0]~q\);

-- Location: LCCOMB_X28_Y25_N2
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_GPR_address_A[2]~input_o\ & (((\i_GPR_address_A[3]~input_o\)))) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[26][0]~q\))) # (!\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[18][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[18][0]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[26][0]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X28_Y25_N20
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux7~0_combout\ & (\r_REGISTER[30][0]~q\)) # (!\Mux7~0_combout\ & ((\r_REGISTER[22][0]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[30][0]~q\,
	datac => \r_REGISTER[22][0]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X26_Y26_N24
\r_REGISTER[21][0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[21][0]~7_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~5_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \r_REGISTER[22][0]~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[21][0]~7_combout\);

-- Location: FF_X30_Y25_N23
\r_REGISTER[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][0]~q\);

-- Location: LCCOMB_X26_Y26_N0
\r_REGISTER[17][0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[17][0]~8_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~6_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \r_REGISTER[22][0]~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER[17][0]~8_combout\);

-- Location: FF_X29_Y25_N13
\r_REGISTER[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][0]~q\);

-- Location: LCCOMB_X30_Y25_N22
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[21][0]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[21][0]~q\,
	datad => \r_REGISTER[17][0]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X26_Y24_N26
\r_REGISTER[29][0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[29][0]~9_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~7_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[29][0]~9_combout\);

-- Location: FF_X29_Y25_N19
\r_REGISTER[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][0]~q\);

-- Location: LCCOMB_X26_Y26_N8
\r_REGISTER[25][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[25][0]~6_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \r_REGISTER[22][0]~1_combout\,
	datac => \i_GPR_enable~input_o\,
	datad => \Decoder0~4_combout\,
	combout => \r_REGISTER[25][0]~6_combout\);

-- Location: FF_X30_Y25_N13
\r_REGISTER[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][0]~q\);

-- Location: LCCOMB_X30_Y25_N12
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\r_REGISTER[29][0]~q\) # ((!\i_GPR_address_A[3]~input_o\)))) # (!\Mux7~2_combout\ & (((\r_REGISTER[25][0]~q\ & \i_GPR_address_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \r_REGISTER[29][0]~q\,
	datac => \r_REGISTER[25][0]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X26_Y24_N28
\r_REGISTER[28][0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[28][0]~13_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~11_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \i_GPR_enable~input_o\,
	datac => \i_GPR_reset~input_o\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[28][0]~13_combout\);

-- Location: FF_X27_Y26_N27
\r_REGISTER[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][0]~q\);

-- Location: LCCOMB_X31_Y24_N8
\r_REGISTER[20][0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[20][0]~10_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~8_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \i_GPR_enable~input_o\,
	datac => \Decoder0~8_combout\,
	datad => \r_REGISTER[22][0]~1_combout\,
	combout => \r_REGISTER[20][0]~10_combout\);

-- Location: FF_X28_Y26_N9
\r_REGISTER[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][0]~q\);

-- Location: LCCOMB_X24_Y25_N30
\r_REGISTER[24][0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[24][0]~11_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\r_REGISTER[22][0]~1_combout\ & \Decoder0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[22][0]~1_combout\,
	datab => \i_GPR_reset~input_o\,
	datac => \i_GPR_enable~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \r_REGISTER[24][0]~11_combout\);

-- Location: FF_X28_Y26_N19
\r_REGISTER[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][0]~q\);

-- Location: LCCOMB_X27_Y26_N4
\r_REGISTER[16][0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[16][0]~12_combout\ = (\i_GPR_enable~input_o\ & ((\i_GPR_reset~input_o\) # ((\Decoder0~10_combout\ & \r_REGISTER[22][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_reset~input_o\,
	datab => \Decoder0~10_combout\,
	datac => \r_REGISTER[22][0]~1_combout\,
	datad => \i_GPR_enable~input_o\,
	combout => \r_REGISTER[16][0]~12_combout\);

-- Location: FF_X27_Y26_N1
\r_REGISTER[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~0_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][0]~q\);

-- Location: LCCOMB_X28_Y26_N18
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[24][0]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[24][0]~q\,
	datad => \r_REGISTER[16][0]~q\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X28_Y26_N8
\Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux7~4_combout\ & (\r_REGISTER[28][0]~q\)) # (!\Mux7~4_combout\ & ((\r_REGISTER[20][0]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][0]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][0]~q\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X30_Y22_N10
\Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\Mux7~3_combout\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X30_Y22_N12
\Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux7~6_combout\ & (\Mux7~8_combout\)) # (!\Mux7~6_combout\ & ((\Mux7~1_combout\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \Mux7~8_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Mux7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~20_combout\ = (\i_GPR_address_A[4]~input_o\ & ((\Mux7~9_combout\))) # (!\i_GPR_address_A[4]~input_o\ & (\Mux7~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux7~19_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~20_combout\);

-- Location: FF_X30_Y22_N1
\o_GPR_ALU_data_A[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux7~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[0]~reg0_q\);

-- Location: IOIBUF_X30_Y29_N15
\i_GPR_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(1),
	o => \i_GPR_data[1]~input_o\);

-- Location: LCCOMB_X29_Y23_N22
\r_REGISTER~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~35_combout\ = (\i_GPR_data[1]~input_o\ & !\i_GPR_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_data[1]~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER~35_combout\);

-- Location: FF_X28_Y26_N31
\r_REGISTER[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][1]~q\);

-- Location: FF_X27_Y26_N13
\r_REGISTER[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][1]~q\);

-- Location: LCCOMB_X28_Y26_N30
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[20][1]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][1]~q\,
	datad => \r_REGISTER[16][1]~q\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X27_Y22_N12
\r_REGISTER[28][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[28][1]~feeder_combout\ = \r_REGISTER~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~35_combout\,
	combout => \r_REGISTER[28][1]~feeder_combout\);

-- Location: FF_X27_Y22_N13
\r_REGISTER[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[28][1]~feeder_combout\,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][1]~q\);

-- Location: FF_X28_Y26_N13
\r_REGISTER[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][1]~q\);

-- Location: LCCOMB_X28_Y26_N12
\Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((\r_REGISTER[28][1]~q\) # ((!\i_GPR_address_A[3]~input_o\)))) # (!\Mux6~4_combout\ & (((\r_REGISTER[24][1]~q\ & \i_GPR_address_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \r_REGISTER[28][1]~q\,
	datac => \r_REGISTER[24][1]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: FF_X28_Y25_N23
\r_REGISTER[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][1]~q\);

-- Location: FF_X27_Y25_N21
\r_REGISTER[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][1]~q\);

-- Location: LCCOMB_X28_Y25_N22
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[22][1]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[22][1]~q\,
	datad => \r_REGISTER[18][1]~q\,
	combout => \Mux6~2_combout\);

-- Location: FF_X28_Y25_N1
\r_REGISTER[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][1]~q\);

-- Location: FF_X27_Y25_N19
\r_REGISTER[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][1]~q\);

-- Location: LCCOMB_X28_Y25_N0
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\r_REGISTER[30][1]~q\)) # (!\i_GPR_address_A[3]~input_o\))) # (!\Mux6~2_combout\ & (\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[26][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[26][1]~q\,
	datad => \r_REGISTER[30][1]~q\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X29_Y22_N6
\Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & ((\Mux6~3_combout\))) # (!\i_GPR_address_A[1]~input_o\ & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux6~5_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: FF_X30_Y26_N23
\r_REGISTER[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][1]~q\);

-- Location: FF_X29_Y26_N5
\r_REGISTER[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][1]~q\);

-- Location: LCCOMB_X30_Y26_N22
\Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[27][1]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][1]~q\,
	datad => \r_REGISTER[19][1]~q\,
	combout => \Mux6~7_combout\);

-- Location: FF_X30_Y26_N29
\r_REGISTER[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][1]~q\);

-- Location: FF_X29_Y26_N23
\r_REGISTER[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][1]~q\);

-- Location: LCCOMB_X30_Y26_N28
\Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & (((\r_REGISTER[31][1]~q\)) # (!\i_GPR_address_A[2]~input_o\))) # (!\Mux6~7_combout\ & (\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[23][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[23][1]~q\,
	datad => \r_REGISTER[31][1]~q\,
	combout => \Mux6~8_combout\);

-- Location: FF_X30_Y25_N9
\r_REGISTER[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][1]~q\);

-- Location: FF_X29_Y25_N23
\r_REGISTER[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][1]~q\);

-- Location: FF_X29_Y25_N5
\r_REGISTER[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][1]~q\);

-- Location: FF_X30_Y25_N11
\r_REGISTER[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][1]~q\);

-- Location: LCCOMB_X30_Y25_N10
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_GPR_address_A[2]~input_o\ & (((\i_GPR_address_A[3]~input_o\)))) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[25][1]~q\))) # (!\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[17][1]~q\,
	datac => \r_REGISTER[25][1]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X29_Y25_N22
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux6~0_combout\ & ((\r_REGISTER[29][1]~q\))) # (!\Mux6~0_combout\ & (\r_REGISTER[21][1]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[21][1]~q\,
	datac => \r_REGISTER[29][1]~q\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X29_Y22_N8
\Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~6_combout\ & (((\Mux6~8_combout\)) # (!\i_GPR_address_A[0]~input_o\))) # (!\Mux6~6_combout\ & (\i_GPR_address_A[0]~input_o\ & ((\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \Mux6~8_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~9_combout\);

-- Location: FF_X30_Y23_N27
\r_REGISTER[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][1]~q\);

-- Location: FF_X30_Y23_N21
\r_REGISTER[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][1]~q\);

-- Location: FF_X26_Y23_N23
\r_REGISTER[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][1]~q\);

-- Location: FF_X26_Y23_N5
\r_REGISTER[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][1]~q\);

-- Location: LCCOMB_X26_Y23_N4
\Mux6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\)))) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[13][1]~q\))) # (!\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[12][1]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[13][1]~q\,
	datad => \i_GPR_address_A[0]~input_o\,
	combout => \Mux6~17_combout\);

-- Location: LCCOMB_X29_Y22_N24
\Mux6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux6~17_combout\ & ((\r_REGISTER[15][1]~q\))) # (!\Mux6~17_combout\ & (\r_REGISTER[14][1]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[14][1]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[15][1]~q\,
	datad => \Mux6~17_combout\,
	combout => \Mux6~18_combout\);

-- Location: FF_X29_Y23_N15
\r_REGISTER[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][1]~q\);

-- Location: LCCOMB_X29_Y23_N28
\r_REGISTER[11][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[11][1]~feeder_combout\ = \r_REGISTER~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~35_combout\,
	combout => \r_REGISTER[11][1]~feeder_combout\);

-- Location: FF_X29_Y23_N29
\r_REGISTER[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[11][1]~feeder_combout\,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][1]~q\);

-- Location: FF_X28_Y23_N31
\r_REGISTER[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][1]~q\);

-- Location: FF_X27_Y23_N25
\r_REGISTER[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][1]~q\);

-- Location: LCCOMB_X27_Y23_N22
\Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[10][1]~q\))) # (!\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[8][1]~q\,
	datad => \r_REGISTER[10][1]~q\,
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux6~12_combout\ & ((\r_REGISTER[11][1]~q\))) # (!\Mux6~12_combout\ & (\r_REGISTER[9][1]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[9][1]~q\,
	datac => \r_REGISTER[11][1]~q\,
	datad => \Mux6~12_combout\,
	combout => \Mux6~13_combout\);

-- Location: FF_X29_Y22_N3
\r_REGISTER[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][1]~q\);

-- Location: FF_X28_Y22_N27
\r_REGISTER[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][1]~q\);

-- Location: FF_X30_Y22_N23
\r_REGISTER[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][1]~q\);

-- Location: FF_X28_Y22_N9
\r_REGISTER[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][1]~q\);

-- Location: LCCOMB_X30_Y22_N16
\Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[2][1]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[2][1]~q\,
	datad => \r_REGISTER[0][1]~q\,
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X29_Y22_N20
\Mux6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux6~14_combout\ & ((\r_REGISTER[3][1]~q\))) # (!\Mux6~14_combout\ & (\r_REGISTER[1][1]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[1][1]~q\,
	datac => \r_REGISTER[3][1]~q\,
	datad => \Mux6~14_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X29_Y22_N30
\Mux6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\Mux6~13_combout\)) # (!\i_GPR_address_A[3]~input_o\ & ((\Mux6~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux6~13_combout\,
	datad => \Mux6~15_combout\,
	combout => \Mux6~16_combout\);

-- Location: FF_X29_Y21_N31
\r_REGISTER[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][1]~q\);

-- Location: FF_X28_Y21_N3
\r_REGISTER[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][1]~q\);

-- Location: FF_X29_Y21_N29
\r_REGISTER[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][1]~q\);

-- Location: FF_X28_Y21_N25
\r_REGISTER[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~35_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][1]~q\);

-- Location: LCCOMB_X29_Y21_N28
\Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[5][1]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[5][1]~q\,
	datad => \r_REGISTER[4][1]~q\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X28_Y21_N2
\Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux6~10_combout\ & ((\r_REGISTER[7][1]~q\))) # (!\Mux6~10_combout\ & (\r_REGISTER[6][1]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[6][1]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[7][1]~q\,
	datad => \Mux6~10_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X29_Y22_N10
\Mux6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux6~16_combout\ & (\Mux6~18_combout\)) # (!\Mux6~16_combout\ & ((\Mux6~11_combout\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \Mux6~18_combout\,
	datac => \Mux6~16_combout\,
	datad => \Mux6~11_combout\,
	combout => \Mux6~19_combout\);

-- Location: LCCOMB_X29_Y22_N12
\Mux6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~20_combout\ = (\i_GPR_address_A[4]~input_o\ & (\Mux6~9_combout\)) # (!\i_GPR_address_A[4]~input_o\ & ((\Mux6~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_address_A[4]~input_o\,
	datac => \Mux6~9_combout\,
	datad => \Mux6~19_combout\,
	combout => \Mux6~20_combout\);

-- Location: FF_X29_Y22_N13
\o_GPR_ALU_data_A[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux6~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[1]~reg0_q\);

-- Location: IOIBUF_X30_Y29_N8
\i_GPR_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(2),
	o => \i_GPR_data[2]~input_o\);

-- Location: LCCOMB_X29_Y23_N6
\r_REGISTER~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~36_combout\ = (\i_GPR_data[2]~input_o\ & !\i_GPR_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_data[2]~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER~36_combout\);

-- Location: LCCOMB_X27_Y25_N26
\r_REGISTER[30][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[30][2]~feeder_combout\ = \r_REGISTER~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~36_combout\,
	combout => \r_REGISTER[30][2]~feeder_combout\);

-- Location: FF_X27_Y25_N27
\r_REGISTER[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[30][2]~feeder_combout\,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][2]~q\);

-- Location: FF_X28_Y25_N9
\r_REGISTER[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][2]~q\);

-- Location: FF_X28_Y25_N7
\r_REGISTER[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][2]~q\);

-- Location: FF_X27_Y25_N13
\r_REGISTER[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][2]~q\);

-- Location: LCCOMB_X28_Y25_N6
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[26][2]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[26][2]~q\,
	datad => \r_REGISTER[18][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X28_Y25_N24
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux5~0_combout\ & (\r_REGISTER[30][2]~q\)) # (!\Mux5~0_combout\ & ((\r_REGISTER[22][2]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[30][2]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[22][2]~q\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X30_Y26_N27
\r_REGISTER[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][2]~q\);

-- Location: FF_X29_Y26_N13
\r_REGISTER[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][2]~q\);

-- Location: LCCOMB_X30_Y26_N26
\Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[23][2]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[23][2]~q\,
	datad => \r_REGISTER[19][2]~q\,
	combout => \Mux5~7_combout\);

-- Location: FF_X30_Y26_N21
\r_REGISTER[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][2]~q\);

-- Location: FF_X29_Y26_N19
\r_REGISTER[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][2]~q\);

-- Location: LCCOMB_X30_Y26_N20
\Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & (((\r_REGISTER[31][2]~q\)) # (!\i_GPR_address_A[3]~input_o\))) # (!\Mux5~7_combout\ & (\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[27][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][2]~q\,
	datad => \r_REGISTER[31][2]~q\,
	combout => \Mux5~8_combout\);

-- Location: FF_X29_Y25_N27
\r_REGISTER[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][2]~q\);

-- Location: FF_X30_Y25_N5
\r_REGISTER[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][2]~q\);

-- Location: FF_X30_Y25_N3
\r_REGISTER[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][2]~q\);

-- Location: FF_X29_Y25_N25
\r_REGISTER[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][2]~q\);

-- Location: LCCOMB_X30_Y25_N2
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[21][2]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[21][2]~q\,
	datad => \r_REGISTER[17][2]~q\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X30_Y25_N4
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux5~2_combout\ & (\r_REGISTER[29][2]~q\)) # (!\Mux5~2_combout\ & ((\r_REGISTER[25][2]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[29][2]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[25][2]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: FF_X27_Y22_N27
\r_REGISTER[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][2]~q\);

-- Location: FF_X28_Y26_N17
\r_REGISTER[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][2]~q\);

-- Location: FF_X28_Y26_N11
\r_REGISTER[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][2]~q\);

-- Location: FF_X27_Y26_N15
\r_REGISTER[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][2]~q\);

-- Location: LCCOMB_X28_Y26_N10
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[24][2]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[24][2]~q\,
	datad => \r_REGISTER[16][2]~q\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X28_Y26_N16
\Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux5~4_combout\ & (\r_REGISTER[28][2]~q\)) # (!\Mux5~4_combout\ & ((\r_REGISTER[20][2]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][2]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][2]~q\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X31_Y23_N10
\Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux5~3_combout\) # ((\i_GPR_address_A[1]~input_o\)))) # (!\i_GPR_address_A[0]~input_o\ & (((!\i_GPR_address_A[1]~input_o\ & \Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \i_GPR_address_A[1]~input_o\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X31_Y23_N8
\Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux5~6_combout\ & ((\Mux5~8_combout\))) # (!\Mux5~6_combout\ & (\Mux5~1_combout\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~8_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: FF_X26_Y23_N9
\r_REGISTER[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][2]~q\);

-- Location: FF_X30_Y23_N17
\r_REGISTER[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][2]~q\);

-- Location: FF_X30_Y23_N19
\r_REGISTER[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][2]~q\);

-- Location: FF_X26_Y23_N15
\r_REGISTER[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][2]~q\);

-- Location: LCCOMB_X30_Y23_N18
\Mux5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\) # ((\r_REGISTER[14][2]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[14][2]~q\,
	datad => \r_REGISTER[12][2]~q\,
	combout => \Mux5~17_combout\);

-- Location: LCCOMB_X30_Y23_N16
\Mux5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux5~17_combout\ & ((\r_REGISTER[15][2]~q\))) # (!\Mux5~17_combout\ & (\r_REGISTER[13][2]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[13][2]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[15][2]~q\,
	datad => \Mux5~17_combout\,
	combout => \Mux5~18_combout\);

-- Location: FF_X29_Y23_N23
\r_REGISTER[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][2]~q\);

-- Location: FF_X27_Y23_N5
\r_REGISTER[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][2]~q\);

-- Location: FF_X28_Y23_N5
\r_REGISTER[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][2]~q\);

-- Location: FF_X28_Y23_N3
\r_REGISTER[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][2]~q\);

-- Location: LCCOMB_X28_Y23_N2
\Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\)))) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[9][2]~q\))) # (!\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[8][2]~q\,
	datac => \r_REGISTER[9][2]~q\,
	datad => \i_GPR_address_A[0]~input_o\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X29_Y23_N16
\Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux5~10_combout\ & (\r_REGISTER[11][2]~q\)) # (!\Mux5~10_combout\ & ((\r_REGISTER[10][2]~q\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[11][2]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[10][2]~q\,
	datad => \Mux5~10_combout\,
	combout => \Mux5~11_combout\);

-- Location: FF_X30_Y24_N1
\r_REGISTER[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][2]~q\);

-- Location: FF_X28_Y24_N7
\r_REGISTER[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][2]~q\);

-- Location: LCCOMB_X30_Y24_N6
\r_REGISTER[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[1][2]~feeder_combout\ = \r_REGISTER~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~36_combout\,
	combout => \r_REGISTER[1][2]~feeder_combout\);

-- Location: FF_X30_Y24_N7
\r_REGISTER[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[1][2]~feeder_combout\,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][2]~q\);

-- Location: FF_X28_Y24_N25
\r_REGISTER[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][2]~q\);

-- Location: LCCOMB_X30_Y24_N20
\Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\)))) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[1][2]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[1][2]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \i_GPR_address_A[0]~input_o\,
	datad => \r_REGISTER[0][2]~q\,
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X30_Y24_N30
\Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux5~14_combout\ & ((\r_REGISTER[3][2]~q\))) # (!\Mux5~14_combout\ & (\r_REGISTER[2][2]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[2][2]~q\,
	datac => \r_REGISTER[3][2]~q\,
	datad => \Mux5~14_combout\,
	combout => \Mux5~15_combout\);

-- Location: FF_X28_Y21_N23
\r_REGISTER[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][2]~q\);

-- Location: FF_X29_Y21_N15
\r_REGISTER[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][2]~q\);

-- Location: FF_X29_Y21_N25
\r_REGISTER[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][2]~q\);

-- Location: FF_X28_Y21_N13
\r_REGISTER[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~36_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][2]~q\);

-- Location: LCCOMB_X29_Y21_N24
\Mux5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[6][2]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[6][2]~q\,
	datad => \r_REGISTER[4][2]~q\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X29_Y21_N14
\Mux5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux5~12_combout\ & (\r_REGISTER[7][2]~q\)) # (!\Mux5~12_combout\ & ((\r_REGISTER[5][2]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[7][2]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[5][2]~q\,
	datad => \Mux5~12_combout\,
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X31_Y23_N6
\Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\Mux5~13_combout\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & (\Mux5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux5~15_combout\,
	datad => \Mux5~13_combout\,
	combout => \Mux5~16_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Mux5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux5~16_combout\ & (\Mux5~18_combout\)) # (!\Mux5~16_combout\ & ((\Mux5~11_combout\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~18_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux5~11_combout\,
	datad => \Mux5~16_combout\,
	combout => \Mux5~19_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Mux5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~20_combout\ = (\i_GPR_address_A[4]~input_o\ & (\Mux5~9_combout\)) # (!\i_GPR_address_A[4]~input_o\ & ((\Mux5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux5~9_combout\,
	datad => \Mux5~19_combout\,
	combout => \Mux5~20_combout\);

-- Location: FF_X31_Y23_N1
\o_GPR_ALU_data_A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux5~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[2]~reg0_q\);

-- Location: IOIBUF_X26_Y29_N1
\i_GPR_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(3),
	o => \i_GPR_data[3]~input_o\);

-- Location: LCCOMB_X26_Y24_N16
\r_REGISTER~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~37_combout\ = (!\i_GPR_reset~input_o\ & \i_GPR_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_reset~input_o\,
	datac => \i_GPR_data[3]~input_o\,
	combout => \r_REGISTER~37_combout\);

-- Location: FF_X30_Y23_N31
\r_REGISTER[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][3]~q\);

-- Location: FF_X30_Y23_N29
\r_REGISTER[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][3]~q\);

-- Location: FF_X26_Y23_N17
\r_REGISTER[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][3]~q\);

-- Location: FF_X26_Y23_N19
\r_REGISTER[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][3]~q\);

-- Location: LCCOMB_X26_Y23_N16
\Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[13][3]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[13][3]~q\,
	datad => \r_REGISTER[12][3]~q\,
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X30_Y23_N28
\Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux4~17_combout\ & ((\r_REGISTER[15][3]~q\))) # (!\Mux4~17_combout\ & (\r_REGISTER[14][3]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[14][3]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[15][3]~q\,
	datad => \Mux4~17_combout\,
	combout => \Mux4~18_combout\);

-- Location: LCCOMB_X29_Y21_N22
\r_REGISTER[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[6][3]~feeder_combout\ = \r_REGISTER~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~37_combout\,
	combout => \r_REGISTER[6][3]~feeder_combout\);

-- Location: FF_X29_Y21_N23
\r_REGISTER[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[6][3]~feeder_combout\,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][3]~q\);

-- Location: FF_X28_Y21_N27
\r_REGISTER[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][3]~q\);

-- Location: FF_X29_Y21_N5
\r_REGISTER[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][3]~q\);

-- Location: FF_X28_Y21_N9
\r_REGISTER[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][3]~q\);

-- Location: LCCOMB_X29_Y21_N4
\Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[5][3]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[5][3]~q\,
	datad => \r_REGISTER[4][3]~q\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X28_Y21_N26
\Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux4~10_combout\ & ((\r_REGISTER[7][3]~q\))) # (!\Mux4~10_combout\ & (\r_REGISTER[6][3]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[6][3]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[7][3]~q\,
	datad => \Mux4~10_combout\,
	combout => \Mux4~11_combout\);

-- Location: FF_X28_Y22_N5
\r_REGISTER[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][3]~q\);

-- Location: FF_X29_Y24_N31
\r_REGISTER[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][3]~q\);

-- Location: FF_X26_Y22_N23
\r_REGISTER[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][3]~q\);

-- Location: FF_X26_Y22_N1
\r_REGISTER[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][3]~q\);

-- Location: LCCOMB_X26_Y22_N28
\Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[2][3]~q\))) # (!\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[0][3]~q\,
	datad => \r_REGISTER[2][3]~q\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X29_Y24_N4
\Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux4~14_combout\ & (\r_REGISTER[3][3]~q\)) # (!\Mux4~14_combout\ & ((\r_REGISTER[1][3]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[3][3]~q\,
	datac => \r_REGISTER[1][3]~q\,
	datad => \Mux4~14_combout\,
	combout => \Mux4~15_combout\);

-- Location: FF_X29_Y23_N7
\r_REGISTER[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][3]~q\);

-- Location: FF_X29_Y23_N9
\r_REGISTER[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][3]~q\);

-- Location: LCCOMB_X27_Y23_N14
\r_REGISTER[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[10][3]~feeder_combout\ = \r_REGISTER~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~37_combout\,
	combout => \r_REGISTER[10][3]~feeder_combout\);

-- Location: FF_X27_Y23_N15
\r_REGISTER[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[10][3]~feeder_combout\,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][3]~q\);

-- Location: FF_X28_Y23_N19
\r_REGISTER[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][3]~q\);

-- Location: LCCOMB_X27_Y23_N0
\Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[10][3]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[10][3]~q\,
	datad => \r_REGISTER[8][3]~q\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X29_Y23_N2
\Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux4~12_combout\ & ((\r_REGISTER[11][3]~q\))) # (!\Mux4~12_combout\ & (\r_REGISTER[9][3]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[9][3]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[11][3]~q\,
	datad => \Mux4~12_combout\,
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X29_Y24_N2
\Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\Mux4~13_combout\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & (\Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \Mux4~15_combout\,
	datad => \Mux4~13_combout\,
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~19_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux4~16_combout\ & (\Mux4~18_combout\)) # (!\Mux4~16_combout\ & ((\Mux4~11_combout\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \Mux4~18_combout\,
	datac => \Mux4~11_combout\,
	datad => \Mux4~16_combout\,
	combout => \Mux4~19_combout\);

-- Location: FF_X30_Y25_N1
\r_REGISTER[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][3]~q\);

-- Location: FF_X29_Y25_N7
\r_REGISTER[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][3]~q\);

-- Location: FF_X30_Y25_N19
\r_REGISTER[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][3]~q\);

-- Location: FF_X29_Y25_N17
\r_REGISTER[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][3]~q\);

-- Location: LCCOMB_X30_Y25_N18
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[25][3]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[25][3]~q\,
	datad => \r_REGISTER[17][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y25_N20
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux4~0_combout\ & ((\r_REGISTER[29][3]~q\))) # (!\Mux4~0_combout\ & (\r_REGISTER[21][3]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[21][3]~q\,
	datac => \r_REGISTER[29][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X30_Y26_N31
\r_REGISTER[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][3]~q\);

-- Location: FF_X29_Y26_N29
\r_REGISTER[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][3]~q\);

-- Location: LCCOMB_X30_Y26_N30
\Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[27][3]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][3]~q\,
	datad => \r_REGISTER[19][3]~q\,
	combout => \Mux4~7_combout\);

-- Location: FF_X30_Y26_N25
\r_REGISTER[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][3]~q\);

-- Location: FF_X29_Y26_N31
\r_REGISTER[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][3]~q\);

-- Location: LCCOMB_X30_Y26_N24
\Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & (((\r_REGISTER[31][3]~q\)) # (!\i_GPR_address_A[2]~input_o\))) # (!\Mux4~7_combout\ & (\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[23][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[23][3]~q\,
	datad => \r_REGISTER[31][3]~q\,
	combout => \Mux4~8_combout\);

-- Location: FF_X27_Y26_N7
\r_REGISTER[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][3]~q\);

-- Location: FF_X28_Y26_N21
\r_REGISTER[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][3]~q\);

-- Location: FF_X28_Y26_N27
\r_REGISTER[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][3]~q\);

-- Location: FF_X27_Y26_N29
\r_REGISTER[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][3]~q\);

-- Location: LCCOMB_X28_Y26_N26
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[20][3]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][3]~q\,
	datad => \r_REGISTER[16][3]~q\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X28_Y26_N20
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux4~4_combout\ & (\r_REGISTER[28][3]~q\)) # (!\Mux4~4_combout\ & ((\r_REGISTER[24][3]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][3]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[24][3]~q\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: FF_X27_Y25_N23
\r_REGISTER[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][3]~q\);

-- Location: FF_X28_Y25_N5
\r_REGISTER[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][3]~q\);

-- Location: FF_X27_Y25_N25
\r_REGISTER[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][3]~q\);

-- Location: LCCOMB_X28_Y25_N4
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[22][3]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[22][3]~q\,
	datad => \r_REGISTER[18][3]~q\,
	combout => \Mux4~2_combout\);

-- Location: FF_X28_Y25_N15
\r_REGISTER[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~37_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][3]~q\);

-- Location: LCCOMB_X28_Y25_N14
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\r_REGISTER[30][3]~q\) # ((!\i_GPR_address_A[3]~input_o\)))) # (!\Mux4~2_combout\ & (((\r_REGISTER[26][3]~q\ & \i_GPR_address_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[30][3]~q\,
	datab => \Mux4~2_combout\,
	datac => \r_REGISTER[26][3]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X29_Y24_N18
\Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & ((\Mux4~3_combout\))) # (!\i_GPR_address_A[1]~input_o\ & (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux4~5_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux4~6_combout\ & ((\Mux4~8_combout\))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \Mux4~8_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X29_Y24_N20
\Mux4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~20_combout\ = (\i_GPR_address_A[4]~input_o\ & ((\Mux4~9_combout\))) # (!\i_GPR_address_A[4]~input_o\ & (\Mux4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datab => \Mux4~19_combout\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~20_combout\);

-- Location: FF_X29_Y24_N21
\o_GPR_ALU_data_A[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux4~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[3]~reg0_q\);

-- Location: IOIBUF_X21_Y29_N22
\i_GPR_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(4),
	o => \i_GPR_data[4]~input_o\);

-- Location: LCCOMB_X26_Y25_N24
\r_REGISTER~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~38_combout\ = (\i_GPR_data[4]~input_o\ & !\i_GPR_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_data[4]~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER~38_combout\);

-- Location: FF_X29_Y26_N3
\r_REGISTER[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][4]~q\);

-- Location: FF_X29_Y26_N17
\r_REGISTER[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][4]~q\);

-- Location: FF_X30_Y26_N15
\r_REGISTER[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][4]~q\);

-- Location: LCCOMB_X30_Y26_N14
\Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\i_GPR_address_A[3]~input_o\ & (((\i_GPR_address_A[2]~input_o\)))) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[23][4]~q\))) # (!\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[19][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[19][4]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[23][4]~q\,
	datad => \i_GPR_address_A[2]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: FF_X30_Y26_N9
\r_REGISTER[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][4]~q\);

-- Location: LCCOMB_X30_Y26_N8
\Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & ((\r_REGISTER[31][4]~q\) # ((!\i_GPR_address_A[3]~input_o\)))) # (!\Mux3~7_combout\ & (((\r_REGISTER[27][4]~q\ & \i_GPR_address_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[31][4]~q\,
	datab => \Mux3~7_combout\,
	datac => \r_REGISTER[27][4]~q\,
	datad => \i_GPR_address_A[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: FF_X29_Y25_N11
\r_REGISTER[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][4]~q\);

-- Location: FF_X30_Y25_N15
\r_REGISTER[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][4]~q\);

-- Location: FF_X30_Y25_N17
\r_REGISTER[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][4]~q\);

-- Location: FF_X29_Y25_N1
\r_REGISTER[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][4]~q\);

-- Location: LCCOMB_X30_Y25_N16
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[21][4]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[21][4]~q\,
	datad => \r_REGISTER[17][4]~q\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X30_Y25_N14
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux3~2_combout\ & (\r_REGISTER[29][4]~q\)) # (!\Mux3~2_combout\ & ((\r_REGISTER[25][4]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[29][4]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[25][4]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: FF_X28_Y26_N23
\r_REGISTER[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][4]~q\);

-- Location: FF_X27_Y26_N25
\r_REGISTER[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][4]~q\);

-- Location: LCCOMB_X28_Y26_N22
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[24][4]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[24][4]~q\,
	datad => \r_REGISTER[16][4]~q\,
	combout => \Mux3~4_combout\);

-- Location: FF_X27_Y26_N19
\r_REGISTER[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][4]~q\);

-- Location: FF_X28_Y26_N29
\r_REGISTER[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][4]~q\);

-- Location: LCCOMB_X28_Y26_N28
\Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & ((\r_REGISTER[28][4]~q\) # ((!\i_GPR_address_A[2]~input_o\)))) # (!\Mux3~4_combout\ & (((\r_REGISTER[20][4]~q\ & \i_GPR_address_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \r_REGISTER[28][4]~q\,
	datac => \r_REGISTER[20][4]~q\,
	datad => \i_GPR_address_A[2]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X31_Y23_N22
\Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\Mux3~3_combout\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: FF_X28_Y25_N31
\r_REGISTER[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][4]~q\);

-- Location: FF_X27_Y25_N15
\r_REGISTER[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][4]~q\);

-- Location: FF_X28_Y25_N17
\r_REGISTER[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][4]~q\);

-- Location: FF_X27_Y25_N9
\r_REGISTER[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][4]~q\);

-- Location: LCCOMB_X28_Y25_N16
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[26][4]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[26][4]~q\,
	datad => \r_REGISTER[18][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux3~0_combout\ & ((\r_REGISTER[30][4]~q\))) # (!\Mux3~0_combout\ & (\r_REGISTER[22][4]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[22][4]~q\,
	datac => \r_REGISTER[30][4]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux3~6_combout\ & (\Mux3~8_combout\)) # (!\Mux3~6_combout\ & ((\Mux3~1_combout\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \Mux3~8_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~9_combout\);

-- Location: FF_X27_Y23_N29
\r_REGISTER[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][4]~q\);

-- Location: FF_X26_Y23_N31
\r_REGISTER[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][4]~q\);

-- Location: LCCOMB_X27_Y23_N28
\Mux3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[14][4]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[14][4]~q\,
	datad => \r_REGISTER[12][4]~q\,
	combout => \Mux3~17_combout\);

-- Location: FF_X30_Y23_N3
\r_REGISTER[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][4]~q\);

-- Location: FF_X26_Y23_N13
\r_REGISTER[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][4]~q\);

-- Location: LCCOMB_X27_Y23_N2
\Mux3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~18_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux3~17_combout\ & (\r_REGISTER[15][4]~q\)) # (!\Mux3~17_combout\ & ((\r_REGISTER[13][4]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (\Mux3~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \Mux3~17_combout\,
	datac => \r_REGISTER[15][4]~q\,
	datad => \r_REGISTER[13][4]~q\,
	combout => \Mux3~18_combout\);

-- Location: FF_X27_Y23_N27
\r_REGISTER[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][4]~q\);

-- Location: FF_X29_Y23_N13
\r_REGISTER[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][4]~q\);

-- Location: FF_X28_Y23_N13
\r_REGISTER[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][4]~q\);

-- Location: FF_X28_Y23_N7
\r_REGISTER[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][4]~q\);

-- Location: LCCOMB_X28_Y23_N12
\Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\i_GPR_address_A[1]~input_o\ & (\i_GPR_address_A[0]~input_o\)) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[9][4]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[9][4]~q\,
	datad => \r_REGISTER[8][4]~q\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X29_Y23_N12
\Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux3~10_combout\ & ((\r_REGISTER[11][4]~q\))) # (!\Mux3~10_combout\ & (\r_REGISTER[10][4]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[10][4]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[11][4]~q\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X30_Y24_N28
\r_REGISTER[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[2][4]~feeder_combout\ = \r_REGISTER~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~38_combout\,
	combout => \r_REGISTER[2][4]~feeder_combout\);

-- Location: FF_X30_Y24_N29
\r_REGISTER[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[2][4]~feeder_combout\,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][4]~q\);

-- Location: FF_X28_Y24_N31
\r_REGISTER[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][4]~q\);

-- Location: LCCOMB_X30_Y24_N22
\r_REGISTER[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[1][4]~feeder_combout\ = \r_REGISTER~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~38_combout\,
	combout => \r_REGISTER[1][4]~feeder_combout\);

-- Location: FF_X30_Y24_N23
\r_REGISTER[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[1][4]~feeder_combout\,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][4]~q\);

-- Location: FF_X28_Y24_N5
\r_REGISTER[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][4]~q\);

-- Location: LCCOMB_X30_Y24_N24
\Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\)))) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[1][4]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[1][4]~q\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \i_GPR_address_A[0]~input_o\,
	datad => \r_REGISTER[0][4]~q\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X30_Y24_N26
\Mux3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux3~14_combout\ & ((\r_REGISTER[3][4]~q\))) # (!\Mux3~14_combout\ & (\r_REGISTER[2][4]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[2][4]~q\,
	datac => \r_REGISTER[3][4]~q\,
	datad => \Mux3~14_combout\,
	combout => \Mux3~15_combout\);

-- Location: FF_X28_Y21_N15
\r_REGISTER[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][4]~q\);

-- Location: FF_X29_Y21_N3
\r_REGISTER[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][4]~q\);

-- Location: FF_X29_Y21_N17
\r_REGISTER[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][4]~q\);

-- Location: FF_X28_Y21_N29
\r_REGISTER[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~38_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][4]~q\);

-- Location: LCCOMB_X29_Y21_N10
\Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (((\i_GPR_address_A[1]~input_o\)))) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[6][4]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[6][4]~q\,
	datac => \i_GPR_address_A[1]~input_o\,
	datad => \r_REGISTER[4][4]~q\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X29_Y21_N2
\Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux3~12_combout\ & (\r_REGISTER[7][4]~q\)) # (!\Mux3~12_combout\ & ((\r_REGISTER[5][4]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[7][4]~q\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[5][4]~q\,
	datad => \Mux3~12_combout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Mux3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\Mux3~13_combout\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & (\Mux3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux3~15_combout\,
	datad => \Mux3~13_combout\,
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X31_Y23_N2
\Mux3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~19_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux3~16_combout\ & (\Mux3~18_combout\)) # (!\Mux3~16_combout\ & ((\Mux3~11_combout\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~18_combout\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux3~11_combout\,
	datad => \Mux3~16_combout\,
	combout => \Mux3~19_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Mux3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~20_combout\ = (\i_GPR_address_A[4]~input_o\ & (\Mux3~9_combout\)) # (!\i_GPR_address_A[4]~input_o\ & ((\Mux3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux3~9_combout\,
	datad => \Mux3~19_combout\,
	combout => \Mux3~20_combout\);

-- Location: FF_X31_Y23_N31
\o_GPR_ALU_data_A[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux3~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[4]~reg0_q\);

-- Location: IOIBUF_X41_Y26_N8
\i_GPR_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(5),
	o => \i_GPR_data[5]~input_o\);

-- Location: LCCOMB_X40_Y26_N16
\r_REGISTER~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~39_combout\ = (!\i_GPR_reset~input_o\ & \i_GPR_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_GPR_reset~input_o\,
	datad => \i_GPR_data[5]~input_o\,
	combout => \r_REGISTER~39_combout\);

-- Location: FF_X29_Y26_N27
\r_REGISTER[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][5]~q\);

-- Location: FF_X30_Y26_N1
\r_REGISTER[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][5]~q\);

-- Location: FF_X30_Y26_N11
\r_REGISTER[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][5]~q\);

-- Location: FF_X29_Y26_N1
\r_REGISTER[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][5]~q\);

-- Location: LCCOMB_X30_Y26_N10
\Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[27][5]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][5]~q\,
	datad => \r_REGISTER[19][5]~q\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X30_Y26_N0
\Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux2~7_combout\ & (\r_REGISTER[31][5]~q\)) # (!\Mux2~7_combout\ & ((\r_REGISTER[23][5]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[31][5]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[23][5]~q\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: FF_X30_Y25_N31
\r_REGISTER[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][5]~q\);

-- Location: FF_X29_Y25_N31
\r_REGISTER[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][5]~q\);

-- Location: FF_X30_Y25_N29
\r_REGISTER[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][5]~q\);

-- Location: FF_X29_Y25_N29
\r_REGISTER[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][5]~q\);

-- Location: LCCOMB_X30_Y25_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[25][5]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[25][5]~q\,
	datad => \r_REGISTER[17][5]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y25_N30
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux2~0_combout\ & ((\r_REGISTER[29][5]~q\))) # (!\Mux2~0_combout\ & (\r_REGISTER[21][5]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[21][5]~q\,
	datac => \r_REGISTER[29][5]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X27_Y25_N31
\r_REGISTER[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][5]~q\);

-- Location: FF_X28_Y25_N27
\r_REGISTER[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][5]~q\);

-- Location: FF_X28_Y25_N29
\r_REGISTER[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][5]~q\);

-- Location: FF_X27_Y25_N29
\r_REGISTER[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][5]~q\);

-- Location: LCCOMB_X28_Y25_N28
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[22][5]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[22][5]~q\,
	datad => \r_REGISTER[18][5]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X28_Y25_N26
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux2~2_combout\ & (\r_REGISTER[30][5]~q\)) # (!\Mux2~2_combout\ & ((\r_REGISTER[26][5]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \r_REGISTER[30][5]~q\,
	datac => \r_REGISTER[26][5]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: FF_X27_Y26_N3
\r_REGISTER[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][5]~q\);

-- Location: FF_X28_Y26_N1
\r_REGISTER[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][5]~q\);

-- Location: FF_X28_Y26_N15
\r_REGISTER[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][5]~q\);

-- Location: FF_X27_Y26_N9
\r_REGISTER[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][5]~q\);

-- Location: LCCOMB_X28_Y26_N14
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[20][5]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][5]~q\,
	datad => \r_REGISTER[16][5]~q\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux2~4_combout\ & (\r_REGISTER[28][5]~q\)) # (!\Mux2~4_combout\ & ((\r_REGISTER[24][5]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][5]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[24][5]~q\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X29_Y24_N6
\Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\Mux2~3_combout\)) # (!\i_GPR_address_A[1]~input_o\ & ((\Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux2~3_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X29_Y24_N8
\Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux2~6_combout\ & (\Mux2~8_combout\)) # (!\Mux2~6_combout\ & ((\Mux2~1_combout\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \Mux2~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~9_combout\);

-- Location: FF_X30_Y23_N9
\r_REGISTER[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][5]~q\);

-- Location: FF_X27_Y23_N17
\r_REGISTER[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][5]~q\);

-- Location: FF_X26_Y23_N21
\r_REGISTER[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][5]~q\);

-- Location: FF_X26_Y23_N11
\r_REGISTER[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][5]~q\);

-- Location: LCCOMB_X26_Y23_N20
\Mux2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[13][5]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[13][5]~q\,
	datad => \r_REGISTER[12][5]~q\,
	combout => \Mux2~17_combout\);

-- Location: LCCOMB_X30_Y23_N10
\Mux2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~18_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux2~17_combout\ & (\r_REGISTER[15][5]~q\)) # (!\Mux2~17_combout\ & ((\r_REGISTER[14][5]~q\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[15][5]~q\,
	datac => \r_REGISTER[14][5]~q\,
	datad => \Mux2~17_combout\,
	combout => \Mux2~18_combout\);

-- Location: LCCOMB_X29_Y21_N8
\r_REGISTER[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[6][5]~feeder_combout\ = \r_REGISTER~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~39_combout\,
	combout => \r_REGISTER[6][5]~feeder_combout\);

-- Location: FF_X29_Y21_N9
\r_REGISTER[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[6][5]~feeder_combout\,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][5]~q\);

-- Location: FF_X28_Y21_N19
\r_REGISTER[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][5]~q\);

-- Location: FF_X29_Y21_N27
\r_REGISTER[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][5]~q\);

-- Location: FF_X28_Y21_N17
\r_REGISTER[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][5]~q\);

-- Location: LCCOMB_X29_Y21_N26
\Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[5][5]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[5][5]~q\,
	datad => \r_REGISTER[4][5]~q\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X28_Y21_N18
\Mux2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux2~10_combout\ & ((\r_REGISTER[7][5]~q\))) # (!\Mux2~10_combout\ & (\r_REGISTER[6][5]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[6][5]~q\,
	datac => \r_REGISTER[7][5]~q\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~11_combout\);

-- Location: FF_X28_Y24_N15
\r_REGISTER[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][5]~q\);

-- Location: FF_X29_Y24_N23
\r_REGISTER[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][5]~q\);

-- Location: FF_X28_Y24_N9
\r_REGISTER[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][5]~q\);

-- Location: LCCOMB_X27_Y24_N20
\r_REGISTER[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[2][5]~feeder_combout\ = \r_REGISTER~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~39_combout\,
	combout => \r_REGISTER[2][5]~feeder_combout\);

-- Location: FF_X27_Y24_N21
\r_REGISTER[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[2][5]~feeder_combout\,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][5]~q\);

-- Location: LCCOMB_X27_Y24_N10
\Mux2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\) # ((\r_REGISTER[2][5]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (!\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[0][5]~q\,
	datad => \r_REGISTER[2][5]~q\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Mux2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux2~14_combout\ & (\r_REGISTER[3][5]~q\)) # (!\Mux2~14_combout\ & ((\r_REGISTER[1][5]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[3][5]~q\,
	datac => \r_REGISTER[1][5]~q\,
	datad => \Mux2~14_combout\,
	combout => \Mux2~15_combout\);

-- Location: FF_X29_Y23_N25
\r_REGISTER[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][5]~q\);

-- Location: FF_X29_Y23_N27
\r_REGISTER[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][5]~q\);

-- Location: FF_X28_Y23_N29
\r_REGISTER[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][5]~q\);

-- Location: FF_X27_Y23_N13
\r_REGISTER[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~39_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][5]~q\);

-- Location: LCCOMB_X27_Y23_N10
\Mux2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\) # (\r_REGISTER[10][5]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[8][5]~q\ & (!\i_GPR_address_A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[8][5]~q\,
	datac => \i_GPR_address_A[0]~input_o\,
	datad => \r_REGISTER[10][5]~q\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X29_Y23_N10
\Mux2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux2~12_combout\ & (\r_REGISTER[11][5]~q\)) # (!\Mux2~12_combout\ & ((\r_REGISTER[9][5]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[11][5]~q\,
	datac => \r_REGISTER[9][5]~q\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X29_Y24_N24
\Mux2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\Mux2~13_combout\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & (\Mux2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \Mux2~15_combout\,
	datad => \Mux2~13_combout\,
	combout => \Mux2~16_combout\);

-- Location: LCCOMB_X29_Y24_N10
\Mux2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~19_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux2~16_combout\ & (\Mux2~18_combout\)) # (!\Mux2~16_combout\ & ((\Mux2~11_combout\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \Mux2~18_combout\,
	datac => \Mux2~11_combout\,
	datad => \Mux2~16_combout\,
	combout => \Mux2~19_combout\);

-- Location: LCCOMB_X29_Y24_N26
\Mux2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~20_combout\ = (\i_GPR_address_A[4]~input_o\ & (\Mux2~9_combout\)) # (!\i_GPR_address_A[4]~input_o\ & ((\Mux2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux2~9_combout\,
	datad => \Mux2~19_combout\,
	combout => \Mux2~20_combout\);

-- Location: FF_X29_Y24_N27
\o_GPR_ALU_data_A[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux2~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[5]~reg0_q\);

-- Location: IOIBUF_X41_Y23_N22
\i_GPR_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(6),
	o => \i_GPR_data[6]~input_o\);

-- Location: LCCOMB_X33_Y23_N26
\r_REGISTER~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~40_combout\ = (\i_GPR_data[6]~input_o\ & !\i_GPR_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_GPR_data[6]~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER~40_combout\);

-- Location: FF_X28_Y24_N23
\r_REGISTER[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][6]~q\);

-- Location: FF_X30_Y24_N15
\r_REGISTER[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][6]~q\);

-- Location: FF_X30_Y24_N5
\r_REGISTER[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][6]~q\);

-- Location: FF_X28_Y24_N17
\r_REGISTER[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][6]~q\);

-- Location: LCCOMB_X30_Y24_N10
\Mux1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (\i_GPR_address_A[1]~input_o\ & (((\i_GPR_address_A[0]~input_o\)))) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[1][6]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[1][6]~q\,
	datac => \i_GPR_address_A[0]~input_o\,
	datad => \r_REGISTER[0][6]~q\,
	combout => \Mux1~14_combout\);

-- Location: LCCOMB_X30_Y24_N14
\Mux1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux1~14_combout\ & (\r_REGISTER[3][6]~q\)) # (!\Mux1~14_combout\ & ((\r_REGISTER[2][6]~q\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[3][6]~q\,
	datac => \r_REGISTER[2][6]~q\,
	datad => \Mux1~14_combout\,
	combout => \Mux1~15_combout\);

-- Location: FF_X28_Y21_N31
\r_REGISTER[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][6]~q\);

-- Location: FF_X29_Y21_N13
\r_REGISTER[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][6]~q\);

-- Location: FF_X29_Y21_N7
\r_REGISTER[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][6]~q\);

-- Location: FF_X28_Y21_N21
\r_REGISTER[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][6]~q\);

-- Location: LCCOMB_X29_Y21_N6
\Mux1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[6][6]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[6][6]~q\,
	datad => \r_REGISTER[4][6]~q\,
	combout => \Mux1~12_combout\);

-- Location: LCCOMB_X29_Y21_N12
\Mux1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux1~12_combout\ & (\r_REGISTER[7][6]~q\)) # (!\Mux1~12_combout\ & ((\r_REGISTER[5][6]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[7][6]~q\,
	datac => \r_REGISTER[5][6]~q\,
	datad => \Mux1~12_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X29_Y24_N28
\Mux1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & ((\Mux1~13_combout\))) # (!\i_GPR_address_A[2]~input_o\ & (\Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \Mux1~15_combout\,
	datad => \Mux1~13_combout\,
	combout => \Mux1~16_combout\);

-- Location: FF_X28_Y23_N11
\r_REGISTER[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][6]~q\);

-- Location: FF_X28_Y23_N1
\r_REGISTER[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][6]~q\);

-- Location: LCCOMB_X28_Y23_N10
\Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\i_GPR_address_A[1]~input_o\ & (\i_GPR_address_A[0]~input_o\)) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[9][6]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[9][6]~q\,
	datad => \r_REGISTER[8][6]~q\,
	combout => \Mux1~10_combout\);

-- Location: FF_X29_Y23_N5
\r_REGISTER[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][6]~q\);

-- Location: FF_X27_Y23_N7
\r_REGISTER[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][6]~q\);

-- Location: LCCOMB_X29_Y23_N4
\Mux1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Mux1~10_combout\ & (((\r_REGISTER[11][6]~q\)) # (!\i_GPR_address_A[1]~input_o\))) # (!\Mux1~10_combout\ & (\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[10][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~10_combout\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[11][6]~q\,
	datad => \r_REGISTER[10][6]~q\,
	combout => \Mux1~11_combout\);

-- Location: FF_X30_Y23_N5
\r_REGISTER[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][6]~q\);

-- Location: FF_X26_Y23_N27
\r_REGISTER[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][6]~q\);

-- Location: LCCOMB_X30_Y23_N14
\Mux1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[14][6]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[14][6]~q\,
	datad => \r_REGISTER[12][6]~q\,
	combout => \Mux1~17_combout\);

-- Location: FF_X30_Y23_N1
\r_REGISTER[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][6]~q\);

-- Location: FF_X26_Y23_N25
\r_REGISTER[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][6]~q\);

-- Location: LCCOMB_X30_Y23_N0
\Mux1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux1~17_combout\ & (\r_REGISTER[15][6]~q\)) # (!\Mux1~17_combout\ & ((\r_REGISTER[13][6]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (\Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \Mux1~17_combout\,
	datac => \r_REGISTER[15][6]~q\,
	datad => \r_REGISTER[13][6]~q\,
	combout => \Mux1~18_combout\);

-- Location: LCCOMB_X29_Y24_N14
\Mux1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~19_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux1~16_combout\ & ((\Mux1~18_combout\))) # (!\Mux1~16_combout\ & (\Mux1~11_combout\)))) # (!\i_GPR_address_A[3]~input_o\ & (\Mux1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \Mux1~16_combout\,
	datac => \Mux1~11_combout\,
	datad => \Mux1~18_combout\,
	combout => \Mux1~19_combout\);

-- Location: FF_X29_Y26_N15
\r_REGISTER[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][6]~q\);

-- Location: FF_X30_Y26_N5
\r_REGISTER[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][6]~q\);

-- Location: FF_X30_Y26_N3
\r_REGISTER[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][6]~q\);

-- Location: FF_X29_Y26_N25
\r_REGISTER[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][6]~q\);

-- Location: LCCOMB_X30_Y26_N2
\Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[23][6]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[23][6]~q\,
	datad => \r_REGISTER[19][6]~q\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux1~7_combout\ & (\r_REGISTER[31][6]~q\)) # (!\Mux1~7_combout\ & ((\r_REGISTER[27][6]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[31][6]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][6]~q\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: FF_X28_Y25_N19
\r_REGISTER[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][6]~q\);

-- Location: FF_X27_Y25_N17
\r_REGISTER[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][6]~q\);

-- Location: FF_X26_Y25_N15
\r_REGISTER[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][6]~q\);

-- Location: FF_X26_Y25_N25
\r_REGISTER[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][6]~q\);

-- Location: LCCOMB_X26_Y25_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[26][6]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[18][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[18][6]~q\,
	datad => \r_REGISTER[26][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux1~0_combout\ & ((\r_REGISTER[30][6]~q\))) # (!\Mux1~0_combout\ & (\r_REGISTER[22][6]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[22][6]~q\,
	datac => \r_REGISTER[30][6]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X29_Y25_N3
\r_REGISTER[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][6]~q\);

-- Location: FF_X30_Y25_N7
\r_REGISTER[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][6]~q\);

-- Location: FF_X30_Y25_N25
\r_REGISTER[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][6]~q\);

-- Location: FF_X29_Y25_N21
\r_REGISTER[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][6]~q\);

-- Location: LCCOMB_X30_Y25_N24
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\) # ((\r_REGISTER[21][6]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[21][6]~q\,
	datad => \r_REGISTER[17][6]~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X30_Y25_N6
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux1~2_combout\ & (\r_REGISTER[29][6]~q\)) # (!\Mux1~2_combout\ & ((\r_REGISTER[25][6]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[29][6]~q\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[25][6]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: FF_X27_Y26_N31
\r_REGISTER[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][6]~q\);

-- Location: FF_X28_Y26_N25
\r_REGISTER[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][6]~q\);

-- Location: FF_X28_Y26_N3
\r_REGISTER[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][6]~q\);

-- Location: FF_X27_Y26_N17
\r_REGISTER[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~40_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][6]~q\);

-- Location: LCCOMB_X28_Y26_N2
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[24][6]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[24][6]~q\,
	datad => \r_REGISTER[16][6]~q\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X28_Y26_N24
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux1~4_combout\ & (\r_REGISTER[28][6]~q\)) # (!\Mux1~4_combout\ & ((\r_REGISTER[20][6]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][6]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][6]~q\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X30_Y24_N18
\Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\Mux1~3_combout\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X30_Y24_N16
\Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux1~6_combout\ & (\Mux1~8_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~1_combout\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \Mux1~8_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X29_Y24_N12
\Mux1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~20_combout\ = (\i_GPR_address_A[4]~input_o\ & ((\Mux1~9_combout\))) # (!\i_GPR_address_A[4]~input_o\ & (\Mux1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux1~19_combout\,
	datad => \Mux1~9_combout\,
	combout => \Mux1~20_combout\);

-- Location: FF_X29_Y24_N13
\o_GPR_ALU_data_A[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux1~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[6]~reg0_q\);

-- Location: IOIBUF_X0_Y14_N8
\i_GPR_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(7),
	o => \i_GPR_data[7]~input_o\);

-- Location: LCCOMB_X29_Y23_N26
\r_REGISTER~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~41_combout\ = (\i_GPR_data[7]~input_o\ & !\i_GPR_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_data[7]~input_o\,
	datad => \i_GPR_reset~input_o\,
	combout => \r_REGISTER~41_combout\);

-- Location: FF_X29_Y26_N11
\r_REGISTER[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[31][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[31][7]~q\);

-- Location: FF_X30_Y26_N13
\r_REGISTER[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[23][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[23][7]~q\);

-- Location: FF_X30_Y26_N7
\r_REGISTER[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[27][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[27][7]~q\);

-- Location: FF_X29_Y26_N21
\r_REGISTER[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[19][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[19][7]~q\);

-- Location: LCCOMB_X30_Y26_N6
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & (\r_REGISTER[27][7]~q\)) # (!\i_GPR_address_A[3]~input_o\ & ((\r_REGISTER[19][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \r_REGISTER[27][7]~q\,
	datad => \r_REGISTER[19][7]~q\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X30_Y26_N12
\Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux0~7_combout\ & (\r_REGISTER[31][7]~q\)) # (!\Mux0~7_combout\ & ((\r_REGISTER[23][7]~q\))))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[31][7]~q\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[23][7]~q\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: FF_X31_Y25_N1
\r_REGISTER[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[21][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[21][7]~q\);

-- Location: FF_X30_Y25_N27
\r_REGISTER[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[25][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[25][7]~q\);

-- Location: FF_X29_Y25_N9
\r_REGISTER[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[17][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[17][7]~q\);

-- Location: LCCOMB_X30_Y25_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\) # ((\r_REGISTER[25][7]~q\)))) # (!\i_GPR_address_A[3]~input_o\ & (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[25][7]~q\,
	datad => \r_REGISTER[17][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X31_Y25_N23
\r_REGISTER[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[29][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[29][7]~q\);

-- Location: LCCOMB_X31_Y25_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux0~0_combout\ & ((\r_REGISTER[29][7]~q\))) # (!\Mux0~0_combout\ & (\r_REGISTER[21][7]~q\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \r_REGISTER[21][7]~q\,
	datac => \Mux0~0_combout\,
	datad => \r_REGISTER[29][7]~q\,
	combout => \Mux0~1_combout\);

-- Location: FF_X27_Y25_N5
\r_REGISTER[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[30][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[30][7]~q\);

-- Location: FF_X28_Y25_N13
\r_REGISTER[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[26][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[26][7]~q\);

-- Location: FF_X28_Y25_N11
\r_REGISTER[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[22][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[22][7]~q\);

-- Location: FF_X27_Y25_N11
\r_REGISTER[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[18][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[18][7]~q\);

-- Location: LCCOMB_X28_Y25_N10
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[22][7]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[22][7]~q\,
	datad => \r_REGISTER[18][7]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X28_Y25_N12
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux0~2_combout\ & (\r_REGISTER[30][7]~q\)) # (!\Mux0~2_combout\ & ((\r_REGISTER[26][7]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \r_REGISTER[30][7]~q\,
	datac => \r_REGISTER[26][7]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: FF_X27_Y26_N23
\r_REGISTER[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[28][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[28][7]~q\);

-- Location: FF_X28_Y26_N5
\r_REGISTER[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[24][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[24][7]~q\);

-- Location: FF_X28_Y26_N7
\r_REGISTER[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[20][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[20][7]~q\);

-- Location: FF_X27_Y26_N21
\r_REGISTER[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[16][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[16][7]~q\);

-- Location: LCCOMB_X28_Y26_N6
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\i_GPR_address_A[3]~input_o\ & (\i_GPR_address_A[2]~input_o\)) # (!\i_GPR_address_A[3]~input_o\ & ((\i_GPR_address_A[2]~input_o\ & (\r_REGISTER[20][7]~q\)) # (!\i_GPR_address_A[2]~input_o\ & ((\r_REGISTER[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \i_GPR_address_A[2]~input_o\,
	datac => \r_REGISTER[20][7]~q\,
	datad => \r_REGISTER[16][7]~q\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X28_Y26_N4
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\i_GPR_address_A[3]~input_o\ & ((\Mux0~4_combout\ & (\r_REGISTER[28][7]~q\)) # (!\Mux0~4_combout\ & ((\r_REGISTER[24][7]~q\))))) # (!\i_GPR_address_A[3]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[3]~input_o\,
	datab => \r_REGISTER[28][7]~q\,
	datac => \r_REGISTER[24][7]~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X31_Y23_N20
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\) # ((\Mux0~3_combout\)))) # (!\i_GPR_address_A[1]~input_o\ & (!\i_GPR_address_A[0]~input_o\ & ((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X31_Y23_N14
\Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux0~6_combout\ & (\Mux0~8_combout\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X32_Y23_N0
\r_REGISTER[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[7][7]~feeder_combout\ = \r_REGISTER~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~41_combout\,
	combout => \r_REGISTER[7][7]~feeder_combout\);

-- Location: FF_X32_Y23_N1
\r_REGISTER[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[7][7]~feeder_combout\,
	ena => \r_REGISTER[7][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[7][7]~q\);

-- Location: LCCOMB_X32_Y23_N8
\r_REGISTER[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[6][7]~feeder_combout\ = \r_REGISTER~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~41_combout\,
	combout => \r_REGISTER[6][7]~feeder_combout\);

-- Location: FF_X32_Y23_N9
\r_REGISTER[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[6][7]~feeder_combout\,
	ena => \r_REGISTER[6][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[6][7]~q\);

-- Location: LCCOMB_X33_Y23_N0
\r_REGISTER[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[5][7]~feeder_combout\ = \r_REGISTER~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~41_combout\,
	combout => \r_REGISTER[5][7]~feeder_combout\);

-- Location: FF_X33_Y23_N1
\r_REGISTER[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[5][7]~feeder_combout\,
	ena => \r_REGISTER[5][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[5][7]~q\);

-- Location: LCCOMB_X33_Y23_N2
\r_REGISTER[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER[4][7]~feeder_combout\ = \r_REGISTER~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_REGISTER~41_combout\,
	combout => \r_REGISTER[4][7]~feeder_combout\);

-- Location: FF_X33_Y23_N3
\r_REGISTER[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \r_REGISTER[4][7]~feeder_combout\,
	ena => \r_REGISTER[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[4][7]~q\);

-- Location: LCCOMB_X32_Y23_N2
\Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\i_GPR_address_A[1]~input_o\ & (\i_GPR_address_A[0]~input_o\)) # (!\i_GPR_address_A[1]~input_o\ & ((\i_GPR_address_A[0]~input_o\ & (\r_REGISTER[5][7]~q\)) # (!\i_GPR_address_A[0]~input_o\ & ((\r_REGISTER[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \i_GPR_address_A[0]~input_o\,
	datac => \r_REGISTER[5][7]~q\,
	datad => \r_REGISTER[4][7]~q\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux0~10_combout\ & (\r_REGISTER[7][7]~q\)) # (!\Mux0~10_combout\ & ((\r_REGISTER[6][7]~q\))))) # (!\i_GPR_address_A[1]~input_o\ & (((\Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \r_REGISTER[7][7]~q\,
	datac => \r_REGISTER[6][7]~q\,
	datad => \Mux0~10_combout\,
	combout => \Mux0~11_combout\);

-- Location: FF_X26_Y23_N29
\r_REGISTER[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[13][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[13][7]~q\);

-- Location: FF_X26_Y23_N7
\r_REGISTER[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[12][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[12][7]~q\);

-- Location: LCCOMB_X26_Y23_N28
\Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\) # ((\r_REGISTER[13][7]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[13][7]~q\,
	datad => \r_REGISTER[12][7]~q\,
	combout => \Mux0~17_combout\);

-- Location: FF_X30_Y23_N23
\r_REGISTER[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[14][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[14][7]~q\);

-- Location: FF_X30_Y23_N25
\r_REGISTER[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[15][0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[15][7]~q\);

-- Location: LCCOMB_X30_Y23_N6
\Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (\i_GPR_address_A[1]~input_o\ & ((\Mux0~17_combout\ & ((\r_REGISTER[15][7]~q\))) # (!\Mux0~17_combout\ & (\r_REGISTER[14][7]~q\)))) # (!\i_GPR_address_A[1]~input_o\ & (\Mux0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[1]~input_o\,
	datab => \Mux0~17_combout\,
	datac => \r_REGISTER[14][7]~q\,
	datad => \r_REGISTER[15][7]~q\,
	combout => \Mux0~18_combout\);

-- Location: FF_X31_Y24_N27
\r_REGISTER[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[3][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[3][7]~q\);

-- Location: FF_X30_Y24_N9
\r_REGISTER[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[1][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[1][7]~q\);

-- Location: FF_X30_Y24_N3
\r_REGISTER[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[2][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[2][7]~q\);

-- Location: FF_X32_Y24_N21
\r_REGISTER[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[0][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[0][7]~q\);

-- Location: LCCOMB_X30_Y24_N2
\Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[2][7]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[2][7]~q\,
	datad => \r_REGISTER[0][7]~q\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux0~14_combout\ & (\r_REGISTER[3][7]~q\)) # (!\Mux0~14_combout\ & ((\r_REGISTER[1][7]~q\))))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \r_REGISTER[3][7]~q\,
	datac => \r_REGISTER[1][7]~q\,
	datad => \Mux0~14_combout\,
	combout => \Mux0~15_combout\);

-- Location: FF_X29_Y23_N31
\r_REGISTER[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[9][7]~q\);

-- Location: FF_X29_Y23_N1
\r_REGISTER[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[11][7]~q\);

-- Location: FF_X27_Y23_N9
\r_REGISTER[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[10][7]~q\);

-- Location: FF_X28_Y23_N23
\r_REGISTER[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	asdata => \r_REGISTER~41_combout\,
	sload => VCC,
	ena => \r_REGISTER[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_REGISTER[8][7]~q\);

-- Location: LCCOMB_X27_Y23_N30
\Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\i_GPR_address_A[0]~input_o\ & (\i_GPR_address_A[1]~input_o\)) # (!\i_GPR_address_A[0]~input_o\ & ((\i_GPR_address_A[1]~input_o\ & (\r_REGISTER[10][7]~q\)) # (!\i_GPR_address_A[1]~input_o\ & ((\r_REGISTER[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[0]~input_o\,
	datab => \i_GPR_address_A[1]~input_o\,
	datac => \r_REGISTER[10][7]~q\,
	datad => \r_REGISTER[8][7]~q\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X29_Y23_N18
\Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\i_GPR_address_A[0]~input_o\ & ((\Mux0~12_combout\ & ((\r_REGISTER[11][7]~q\))) # (!\Mux0~12_combout\ & (\r_REGISTER[9][7]~q\)))) # (!\i_GPR_address_A[0]~input_o\ & (((\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[9][7]~q\,
	datab => \r_REGISTER[11][7]~q\,
	datac => \i_GPR_address_A[0]~input_o\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X31_Y23_N16
\Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (\i_GPR_address_A[2]~input_o\ & (\i_GPR_address_A[3]~input_o\)) # (!\i_GPR_address_A[2]~input_o\ & ((\i_GPR_address_A[3]~input_o\ & ((\Mux0~13_combout\))) # (!\i_GPR_address_A[3]~input_o\ & (\Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \i_GPR_address_A[3]~input_o\,
	datac => \Mux0~15_combout\,
	datad => \Mux0~13_combout\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X31_Y23_N18
\Mux0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (\i_GPR_address_A[2]~input_o\ & ((\Mux0~16_combout\ & ((\Mux0~18_combout\))) # (!\Mux0~16_combout\ & (\Mux0~11_combout\)))) # (!\i_GPR_address_A[2]~input_o\ & (((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[2]~input_o\,
	datab => \Mux0~11_combout\,
	datac => \Mux0~18_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X31_Y23_N12
\Mux0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = (\i_GPR_address_A[4]~input_o\ & (\Mux0~9_combout\)) # (!\i_GPR_address_A[4]~input_o\ & ((\Mux0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_A[4]~input_o\,
	datac => \Mux0~9_combout\,
	datad => \Mux0~19_combout\,
	combout => \Mux0~20_combout\);

-- Location: FF_X31_Y23_N13
\o_GPR_ALU_data_A[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux0~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_A[7]~reg0_q\);

-- Location: IOIBUF_X32_Y29_N15
\i_GPR_address_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(4),
	o => \i_GPR_address_B[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\i_GPR_address_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(2),
	o => \i_GPR_address_B[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\i_GPR_address_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(3),
	o => \i_GPR_address_B[3]~input_o\);

-- Location: LCCOMB_X27_Y25_N0
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[26][0]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][0]~q\,
	datad => \r_REGISTER[26][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux15~0_combout\ & ((\r_REGISTER[30][0]~q\))) # (!\Mux15~0_combout\ & (\r_REGISTER[22][0]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[22][0]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[30][0]~q\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X32_Y29_N29
\i_GPR_address_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(1),
	o => \i_GPR_address_B[1]~input_o\);

-- Location: LCCOMB_X29_Y26_N8
\Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[23][0]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][0]~q\,
	datad => \r_REGISTER[23][0]~q\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X29_Y26_N6
\Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux15~7_combout\ & (\r_REGISTER[31][0]~q\)) # (!\Mux15~7_combout\ & ((\r_REGISTER[27][0]~q\))))) # (!\i_GPR_address_B[3]~input_o\ & (\Mux15~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \Mux15~7_combout\,
	datac => \r_REGISTER[31][0]~q\,
	datad => \r_REGISTER[27][0]~q\,
	combout => \Mux15~8_combout\);

-- Location: IOIBUF_X32_Y29_N22
\i_GPR_address_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(0),
	o => \i_GPR_address_B[0]~input_o\);

-- Location: LCCOMB_X27_Y26_N0
\Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[24][0]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][0]~q\,
	datad => \r_REGISTER[24][0]~q\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux15~4_combout\ & ((\r_REGISTER[28][0]~q\))) # (!\Mux15~4_combout\ & (\r_REGISTER[20][0]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[20][0]~q\,
	datac => \r_REGISTER[28][0]~q\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X29_Y25_N12
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[21][0]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][0]~q\,
	datad => \r_REGISTER[21][0]~q\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X29_Y25_N18
\Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux15~2_combout\ & ((\r_REGISTER[29][0]~q\))) # (!\Mux15~2_combout\ & (\r_REGISTER[25][0]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[25][0]~q\,
	datac => \r_REGISTER[29][0]~q\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X28_Y22_N10
\Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\Mux15~3_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux15~5_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X28_Y22_N12
\Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux15~6_combout\ & ((\Mux15~8_combout\))) # (!\Mux15~6_combout\ & (\Mux15~1_combout\)))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux15~8_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X28_Y23_N26
\Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[9][0]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][0]~q\,
	datad => \r_REGISTER[9][0]~q\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X27_Y23_N20
\Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux15~10_combout\ & (\r_REGISTER[11][0]~q\)) # (!\Mux15~10_combout\ & ((\r_REGISTER[10][0]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[11][0]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[10][0]~q\,
	datad => \Mux15~10_combout\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X26_Y23_N2
\Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~17_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[14][0]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][0]~q\,
	datad => \r_REGISTER[14][0]~q\,
	combout => \Mux15~17_combout\);

-- Location: LCCOMB_X26_Y23_N0
\Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~18_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux15~17_combout\ & (\r_REGISTER[15][0]~q\)) # (!\Mux15~17_combout\ & ((\r_REGISTER[13][0]~q\))))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \r_REGISTER[15][0]~q\,
	datac => \r_REGISTER[13][0]~q\,
	datad => \Mux15~17_combout\,
	combout => \Mux15~18_combout\);

-- Location: LCCOMB_X28_Y22_N2
\Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~14_combout\ = (\i_GPR_address_B[0]~input_o\ & (((\i_GPR_address_B[1]~input_o\) # (\r_REGISTER[1][0]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[0][0]~q\ & (!\i_GPR_address_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \r_REGISTER[0][0]~q\,
	datac => \i_GPR_address_B[1]~input_o\,
	datad => \r_REGISTER[1][0]~q\,
	combout => \Mux15~14_combout\);

-- Location: LCCOMB_X28_Y22_N30
\Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~15_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux15~14_combout\ & ((\r_REGISTER[3][0]~q\))) # (!\Mux15~14_combout\ & (\r_REGISTER[2][0]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[2][0]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[3][0]~q\,
	datad => \Mux15~14_combout\,
	combout => \Mux15~15_combout\);

-- Location: LCCOMB_X28_Y21_N4
\Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\) # ((\r_REGISTER[6][0]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[4][0]~q\,
	datad => \r_REGISTER[6][0]~q\,
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X28_Y21_N10
\Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\Mux15~12_combout\ & (((\r_REGISTER[7][0]~q\) # (!\i_GPR_address_B[0]~input_o\)))) # (!\Mux15~12_combout\ & (\r_REGISTER[5][0]~q\ & ((\i_GPR_address_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[5][0]~q\,
	datab => \Mux15~12_combout\,
	datac => \r_REGISTER[7][0]~q\,
	datad => \i_GPR_address_B[0]~input_o\,
	combout => \Mux15~13_combout\);

-- Location: LCCOMB_X28_Y22_N24
\Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~16_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\Mux15~13_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\Mux15~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux15~15_combout\,
	datad => \Mux15~13_combout\,
	combout => \Mux15~16_combout\);

-- Location: LCCOMB_X28_Y22_N22
\Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~19_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux15~16_combout\ & ((\Mux15~18_combout\))) # (!\Mux15~16_combout\ & (\Mux15~11_combout\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~11_combout\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux15~18_combout\,
	datad => \Mux15~16_combout\,
	combout => \Mux15~19_combout\);

-- Location: LCCOMB_X27_Y22_N24
\Mux15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux15~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux15~9_combout\,
	datad => \Mux15~19_combout\,
	combout => \Mux15~20_combout\);

-- Location: FF_X27_Y22_N25
\o_GPR_ALU_data_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux15~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[0]~reg0_q\);

-- Location: LCCOMB_X29_Y25_N4
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[25][1]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][1]~q\,
	datad => \r_REGISTER[25][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X29_Y25_N14
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\r_REGISTER[29][1]~q\) # ((!\i_GPR_address_B[2]~input_o\)))) # (!\Mux14~0_combout\ & (((\r_REGISTER[21][1]~q\ & \i_GPR_address_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[29][1]~q\,
	datab => \r_REGISTER[21][1]~q\,
	datac => \Mux14~0_combout\,
	datad => \i_GPR_address_B[2]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X29_Y26_N4
\Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[27][1]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][1]~q\,
	datad => \r_REGISTER[27][1]~q\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux14~7_combout\ & (\r_REGISTER[31][1]~q\)) # (!\Mux14~7_combout\ & ((\r_REGISTER[23][1]~q\))))) # (!\i_GPR_address_B[2]~input_o\ & (\Mux14~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \Mux14~7_combout\,
	datac => \r_REGISTER[31][1]~q\,
	datad => \r_REGISTER[23][1]~q\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X27_Y26_N12
\Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[20][1]~q\) # ((\i_GPR_address_B[3]~input_o\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\r_REGISTER[16][1]~q\ & !\i_GPR_address_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[20][1]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][1]~q\,
	datad => \i_GPR_address_B[3]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X27_Y22_N4
\Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux14~4_combout\ & (\r_REGISTER[28][1]~q\)) # (!\Mux14~4_combout\ & ((\r_REGISTER[24][1]~q\))))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[28][1]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[24][1]~q\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X27_Y25_N20
\Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[22][1]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][1]~q\,
	datad => \r_REGISTER[22][1]~q\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X27_Y25_N18
\Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux14~2_combout\ & ((\r_REGISTER[30][1]~q\))) # (!\Mux14~2_combout\ & (\r_REGISTER[26][1]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[26][1]~q\,
	datac => \r_REGISTER[30][1]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X27_Y22_N18
\Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\Mux14~3_combout\))) # (!\i_GPR_address_B[1]~input_o\ & (\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux14~5_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X27_Y22_N8
\Mux14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux14~6_combout\ & ((\Mux14~8_combout\))) # (!\Mux14~6_combout\ & (\Mux14~1_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~8_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X28_Y21_N24
\Mux14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\i_GPR_address_B[1]~input_o\ & (\i_GPR_address_B[0]~input_o\)) # (!\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\ & ((\r_REGISTER[5][1]~q\))) # (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[4][1]~q\,
	datad => \r_REGISTER[5][1]~q\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X29_Y21_N30
\Mux14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux14~10_combout\ & (\r_REGISTER[7][1]~q\)) # (!\Mux14~10_combout\ & ((\r_REGISTER[6][1]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[7][1]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[6][1]~q\,
	datad => \Mux14~10_combout\,
	combout => \Mux14~11_combout\);

-- Location: LCCOMB_X26_Y23_N22
\Mux14~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~17_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[13][1]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][1]~q\,
	datad => \r_REGISTER[13][1]~q\,
	combout => \Mux14~17_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Mux14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~18_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux14~17_combout\ & (\r_REGISTER[15][1]~q\)) # (!\Mux14~17_combout\ & ((\r_REGISTER[14][1]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[15][1]~q\,
	datac => \r_REGISTER[14][1]~q\,
	datad => \Mux14~17_combout\,
	combout => \Mux14~18_combout\);

-- Location: LCCOMB_X28_Y22_N20
\Mux14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~14_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[2][1]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[0][1]~q\,
	datad => \r_REGISTER[2][1]~q\,
	combout => \Mux14~14_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Mux14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~15_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux14~14_combout\ & ((\r_REGISTER[3][1]~q\))) # (!\Mux14~14_combout\ & (\r_REGISTER[1][1]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[1][1]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[3][1]~q\,
	datad => \Mux14~14_combout\,
	combout => \Mux14~15_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Mux14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~12_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[10][1]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][1]~q\,
	datad => \r_REGISTER[10][1]~q\,
	combout => \Mux14~12_combout\);

-- Location: LCCOMB_X29_Y23_N14
\Mux14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux14~12_combout\ & (\r_REGISTER[11][1]~q\)) # (!\Mux14~12_combout\ & ((\r_REGISTER[9][1]~q\))))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \r_REGISTER[11][1]~q\,
	datac => \r_REGISTER[9][1]~q\,
	datad => \Mux14~12_combout\,
	combout => \Mux14~13_combout\);

-- Location: LCCOMB_X28_Y22_N6
\Mux14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~16_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\Mux14~13_combout\))) # (!\i_GPR_address_B[3]~input_o\ & (\Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux14~15_combout\,
	datad => \Mux14~13_combout\,
	combout => \Mux14~16_combout\);

-- Location: LCCOMB_X28_Y22_N16
\Mux14~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~19_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux14~16_combout\ & ((\Mux14~18_combout\))) # (!\Mux14~16_combout\ & (\Mux14~11_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~11_combout\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \Mux14~18_combout\,
	datad => \Mux14~16_combout\,
	combout => \Mux14~19_combout\);

-- Location: LCCOMB_X27_Y22_N14
\Mux14~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux14~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux14~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux14~9_combout\,
	datad => \Mux14~19_combout\,
	combout => \Mux14~20_combout\);

-- Location: FF_X27_Y22_N15
\o_GPR_ALU_data_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux14~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[1]~reg0_q\);

-- Location: LCCOMB_X29_Y26_N12
\Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[23][2]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][2]~q\,
	datad => \r_REGISTER[23][2]~q\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X29_Y26_N18
\Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux13~7_combout\ & ((\r_REGISTER[31][2]~q\))) # (!\Mux13~7_combout\ & (\r_REGISTER[27][2]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[27][2]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[31][2]~q\,
	datad => \Mux13~7_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X27_Y25_N12
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[26][2]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][2]~q\,
	datad => \r_REGISTER[26][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X28_Y25_N8
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux13~0_combout\ & (\r_REGISTER[30][2]~q\)) # (!\Mux13~0_combout\ & ((\r_REGISTER[22][2]~q\))))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[30][2]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[22][2]~q\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X27_Y26_N14
\Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[24][2]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][2]~q\,
	datad => \r_REGISTER[24][2]~q\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X27_Y22_N30
\Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux13~4_combout\ & ((\r_REGISTER[28][2]~q\))) # (!\Mux13~4_combout\ & (\r_REGISTER[20][2]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[20][2]~q\,
	datac => \r_REGISTER[28][2]~q\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X29_Y25_N24
\Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[21][2]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][2]~q\,
	datad => \r_REGISTER[21][2]~q\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X29_Y25_N26
\Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux13~2_combout\ & ((\r_REGISTER[29][2]~q\))) # (!\Mux13~2_combout\ & (\r_REGISTER[25][2]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[25][2]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[29][2]~q\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X27_Y22_N0
\Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\Mux13~3_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\Mux13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X27_Y22_N22
\Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux13~6_combout\ & (\Mux13~8_combout\)) # (!\Mux13~6_combout\ & ((\Mux13~1_combout\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \Mux13~8_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[9][2]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][2]~q\,
	datad => \r_REGISTER[9][2]~q\,
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X27_Y23_N4
\Mux13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux13~10_combout\ & ((\r_REGISTER[11][2]~q\))) # (!\Mux13~10_combout\ & (\r_REGISTER[10][2]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (\Mux13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \Mux13~10_combout\,
	datac => \r_REGISTER[10][2]~q\,
	datad => \r_REGISTER[11][2]~q\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X26_Y23_N14
\Mux13~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~17_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[14][2]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][2]~q\,
	datad => \r_REGISTER[14][2]~q\,
	combout => \Mux13~17_combout\);

-- Location: LCCOMB_X26_Y23_N8
\Mux13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~18_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux13~17_combout\ & ((\r_REGISTER[15][2]~q\))) # (!\Mux13~17_combout\ & (\r_REGISTER[13][2]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (\Mux13~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux13~17_combout\,
	datac => \r_REGISTER[13][2]~q\,
	datad => \r_REGISTER[15][2]~q\,
	combout => \Mux13~18_combout\);

-- Location: LCCOMB_X28_Y21_N12
\Mux13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\) # ((\r_REGISTER[6][2]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[4][2]~q\,
	datad => \r_REGISTER[6][2]~q\,
	combout => \Mux13~12_combout\);

-- Location: LCCOMB_X28_Y21_N22
\Mux13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~13_combout\ = (\Mux13~12_combout\ & (((\r_REGISTER[7][2]~q\)) # (!\i_GPR_address_B[0]~input_o\))) # (!\Mux13~12_combout\ & (\i_GPR_address_B[0]~input_o\ & ((\r_REGISTER[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~12_combout\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[7][2]~q\,
	datad => \r_REGISTER[5][2]~q\,
	combout => \Mux13~13_combout\);

-- Location: LCCOMB_X28_Y24_N20
\Mux13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~14_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[1][2]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[1][2]~q\,
	datad => \r_REGISTER[0][2]~q\,
	combout => \Mux13~14_combout\);

-- Location: LCCOMB_X28_Y24_N10
\Mux13~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~15_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux13~14_combout\ & (\r_REGISTER[3][2]~q\)) # (!\Mux13~14_combout\ & ((\r_REGISTER[2][2]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[3][2]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[2][2]~q\,
	datad => \Mux13~14_combout\,
	combout => \Mux13~15_combout\);

-- Location: LCCOMB_X27_Y22_N16
\Mux13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~16_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\Mux13~13_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & ((\Mux13~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux13~13_combout\,
	datad => \Mux13~15_combout\,
	combout => \Mux13~16_combout\);

-- Location: LCCOMB_X27_Y22_N10
\Mux13~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~19_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux13~16_combout\ & ((\Mux13~18_combout\))) # (!\Mux13~16_combout\ & (\Mux13~11_combout\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~11_combout\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux13~18_combout\,
	datad => \Mux13~16_combout\,
	combout => \Mux13~19_combout\);

-- Location: LCCOMB_X27_Y22_N28
\Mux13~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux13~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux13~9_combout\,
	datad => \Mux13~19_combout\,
	combout => \Mux13~20_combout\);

-- Location: FF_X27_Y22_N29
\o_GPR_ALU_data_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux13~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[2]~reg0_q\);

-- Location: LCCOMB_X29_Y26_N28
\Mux12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[27][3]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][3]~q\,
	datad => \r_REGISTER[27][3]~q\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X29_Y26_N30
\Mux12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux12~7_combout\ & ((\r_REGISTER[31][3]~q\))) # (!\Mux12~7_combout\ & (\r_REGISTER[23][3]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[23][3]~q\,
	datac => \r_REGISTER[31][3]~q\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X29_Y25_N16
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[25][3]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][3]~q\,
	datad => \r_REGISTER[25][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux12~0_combout\ & (\r_REGISTER[29][3]~q\)) # (!\Mux12~0_combout\ & ((\r_REGISTER[21][3]~q\))))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[29][3]~q\,
	datac => \r_REGISTER[21][3]~q\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X27_Y26_N28
\Mux12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[20][3]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][3]~q\,
	datad => \r_REGISTER[20][3]~q\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X27_Y26_N6
\Mux12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux12~4_combout\ & ((\r_REGISTER[28][3]~q\))) # (!\Mux12~4_combout\ & (\r_REGISTER[24][3]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[24][3]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[28][3]~q\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X27_Y25_N24
\Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[22][3]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][3]~q\,
	datad => \r_REGISTER[22][3]~q\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X27_Y25_N22
\Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux12~2_combout\ & ((\r_REGISTER[30][3]~q\))) # (!\Mux12~2_combout\ & (\r_REGISTER[26][3]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[26][3]~q\,
	datac => \r_REGISTER[30][3]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X28_Y22_N18
\Mux12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\Mux12~3_combout\))) # (!\i_GPR_address_B[1]~input_o\ & (\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux12~5_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Mux12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux12~6_combout\ & (\Mux12~8_combout\)) # (!\Mux12~6_combout\ & ((\Mux12~1_combout\))))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux12~8_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X28_Y21_N8
\Mux12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\i_GPR_address_B[1]~input_o\ & (((\i_GPR_address_B[0]~input_o\)))) # (!\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[5][3]~q\)) # (!\i_GPR_address_B[0]~input_o\ & ((\r_REGISTER[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[5][3]~q\,
	datac => \r_REGISTER[4][3]~q\,
	datad => \i_GPR_address_B[0]~input_o\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X28_Y21_N0
\Mux12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (\Mux12~10_combout\ & (((\r_REGISTER[7][3]~q\) # (!\i_GPR_address_B[1]~input_o\)))) # (!\Mux12~10_combout\ & (\r_REGISTER[6][3]~q\ & ((\i_GPR_address_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[6][3]~q\,
	datab => \Mux12~10_combout\,
	datac => \r_REGISTER[7][3]~q\,
	datad => \i_GPR_address_B[1]~input_o\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X26_Y23_N18
\Mux12~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~17_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[13][3]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][3]~q\,
	datad => \r_REGISTER[13][3]~q\,
	combout => \Mux12~17_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Mux12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~18_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux12~17_combout\ & (\r_REGISTER[15][3]~q\)) # (!\Mux12~17_combout\ & ((\r_REGISTER[14][3]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[15][3]~q\,
	datac => \r_REGISTER[14][3]~q\,
	datad => \Mux12~17_combout\,
	combout => \Mux12~18_combout\);

-- Location: LCCOMB_X26_Y22_N14
\Mux12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~14_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[2][3]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[0][3]~q\,
	datad => \r_REGISTER[2][3]~q\,
	combout => \Mux12~14_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Mux12~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~15_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux12~14_combout\ & ((\r_REGISTER[3][3]~q\))) # (!\Mux12~14_combout\ & (\r_REGISTER[1][3]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \r_REGISTER[1][3]~q\,
	datac => \r_REGISTER[3][3]~q\,
	datad => \Mux12~14_combout\,
	combout => \Mux12~15_combout\);

-- Location: LCCOMB_X28_Y23_N18
\Mux12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~12_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[10][3]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][3]~q\,
	datad => \r_REGISTER[10][3]~q\,
	combout => \Mux12~12_combout\);

-- Location: LCCOMB_X29_Y23_N8
\Mux12~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux12~12_combout\ & ((\r_REGISTER[11][3]~q\))) # (!\Mux12~12_combout\ & (\r_REGISTER[9][3]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[9][3]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[11][3]~q\,
	datad => \Mux12~12_combout\,
	combout => \Mux12~13_combout\);

-- Location: LCCOMB_X28_Y22_N0
\Mux12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~16_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\Mux12~13_combout\))) # (!\i_GPR_address_B[3]~input_o\ & (\Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux12~15_combout\,
	datad => \Mux12~13_combout\,
	combout => \Mux12~16_combout\);

-- Location: LCCOMB_X28_Y22_N14
\Mux12~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~19_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux12~16_combout\ & ((\Mux12~18_combout\))) # (!\Mux12~16_combout\ & (\Mux12~11_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \Mux12~11_combout\,
	datac => \Mux12~18_combout\,
	datad => \Mux12~16_combout\,
	combout => \Mux12~19_combout\);

-- Location: LCCOMB_X29_Y22_N14
\Mux12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux12~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux12~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_address_B[4]~input_o\,
	datac => \Mux12~9_combout\,
	datad => \Mux12~19_combout\,
	combout => \Mux12~20_combout\);

-- Location: FF_X29_Y22_N15
\o_GPR_ALU_data_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux12~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[3]~reg0_q\);

-- Location: LCCOMB_X27_Y25_N8
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[26][4]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][4]~q\,
	datad => \r_REGISTER[26][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux11~0_combout\ & (\r_REGISTER[30][4]~q\)) # (!\Mux11~0_combout\ & ((\r_REGISTER[22][4]~q\))))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[30][4]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[22][4]~q\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Mux11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[23][4]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][4]~q\,
	datad => \r_REGISTER[23][4]~q\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X29_Y26_N2
\Mux11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux11~7_combout\ & ((\r_REGISTER[31][4]~q\))) # (!\Mux11~7_combout\ & (\r_REGISTER[27][4]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[27][4]~q\,
	datac => \r_REGISTER[31][4]~q\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X27_Y26_N24
\Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[24][4]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][4]~q\,
	datad => \r_REGISTER[24][4]~q\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X27_Y26_N18
\Mux11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux11~4_combout\ & ((\r_REGISTER[28][4]~q\))) # (!\Mux11~4_combout\ & (\r_REGISTER[20][4]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[20][4]~q\,
	datac => \r_REGISTER[28][4]~q\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X29_Y25_N0
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[21][4]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][4]~q\,
	datad => \r_REGISTER[21][4]~q\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X29_Y25_N10
\Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux11~2_combout\ & ((\r_REGISTER[29][4]~q\))) # (!\Mux11~2_combout\ & (\r_REGISTER[25][4]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[25][4]~q\,
	datac => \r_REGISTER[29][4]~q\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X28_Y24_N28
\Mux11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\Mux11~3_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux11~5_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X28_Y24_N18
\Mux11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux11~6_combout\ & ((\Mux11~8_combout\))) # (!\Mux11~6_combout\ & (\Mux11~1_combout\)))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \Mux11~8_combout\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X26_Y23_N30
\Mux11~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~17_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[14][4]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][4]~q\,
	datad => \r_REGISTER[14][4]~q\,
	combout => \Mux11~17_combout\);

-- Location: LCCOMB_X26_Y23_N12
\Mux11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~18_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux11~17_combout\ & (\r_REGISTER[15][4]~q\)) # (!\Mux11~17_combout\ & ((\r_REGISTER[13][4]~q\))))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \r_REGISTER[15][4]~q\,
	datac => \r_REGISTER[13][4]~q\,
	datad => \Mux11~17_combout\,
	combout => \Mux11~18_combout\);

-- Location: LCCOMB_X28_Y23_N6
\Mux11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[9][4]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][4]~q\,
	datad => \r_REGISTER[9][4]~q\,
	combout => \Mux11~10_combout\);

-- Location: LCCOMB_X27_Y23_N26
\Mux11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\Mux11~10_combout\ & (((\r_REGISTER[11][4]~q\)) # (!\i_GPR_address_B[1]~input_o\))) # (!\Mux11~10_combout\ & (\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[10][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~10_combout\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[10][4]~q\,
	datad => \r_REGISTER[11][4]~q\,
	combout => \Mux11~11_combout\);

-- Location: LCCOMB_X28_Y24_N12
\Mux11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~14_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[1][4]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[0][4]~q\,
	datad => \r_REGISTER[1][4]~q\,
	combout => \Mux11~14_combout\);

-- Location: LCCOMB_X28_Y24_N30
\Mux11~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~15_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux11~14_combout\ & ((\r_REGISTER[3][4]~q\))) # (!\Mux11~14_combout\ & (\r_REGISTER[2][4]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[2][4]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[3][4]~q\,
	datad => \Mux11~14_combout\,
	combout => \Mux11~15_combout\);

-- Location: LCCOMB_X28_Y21_N28
\Mux11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\) # ((\r_REGISTER[6][4]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[4][4]~q\,
	datad => \r_REGISTER[6][4]~q\,
	combout => \Mux11~12_combout\);

-- Location: LCCOMB_X28_Y21_N14
\Mux11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux11~12_combout\ & ((\r_REGISTER[7][4]~q\))) # (!\Mux11~12_combout\ & (\r_REGISTER[5][4]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[5][4]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[7][4]~q\,
	datad => \Mux11~12_combout\,
	combout => \Mux11~13_combout\);

-- Location: LCCOMB_X28_Y24_N2
\Mux11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~16_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\Mux11~13_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\Mux11~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~13_combout\,
	combout => \Mux11~16_combout\);

-- Location: LCCOMB_X27_Y22_N20
\Mux11~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~19_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux11~16_combout\ & (\Mux11~18_combout\)) # (!\Mux11~16_combout\ & ((\Mux11~11_combout\))))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~18_combout\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux11~11_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux11~19_combout\);

-- Location: LCCOMB_X27_Y22_N2
\Mux11~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux11~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux11~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux11~9_combout\,
	datad => \Mux11~19_combout\,
	combout => \Mux11~20_combout\);

-- Location: FF_X27_Y22_N3
\o_GPR_ALU_data_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux11~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[4]~reg0_q\);

-- Location: LCCOMB_X29_Y25_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[25][5]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][5]~q\,
	datad => \r_REGISTER[25][5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\r_REGISTER[29][5]~q\) # ((!\i_GPR_address_B[2]~input_o\)))) # (!\Mux10~0_combout\ & (((\r_REGISTER[21][5]~q\ & \i_GPR_address_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \r_REGISTER[29][5]~q\,
	datac => \r_REGISTER[21][5]~q\,
	datad => \i_GPR_address_B[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X29_Y26_N0
\Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[27][5]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][5]~q\,
	datad => \r_REGISTER[27][5]~q\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X29_Y26_N26
\Mux10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux10~7_combout\ & ((\r_REGISTER[31][5]~q\))) # (!\Mux10~7_combout\ & (\r_REGISTER[23][5]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[23][5]~q\,
	datac => \r_REGISTER[31][5]~q\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[22][5]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][5]~q\,
	datad => \r_REGISTER[22][5]~q\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X27_Y25_N30
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux10~2_combout\ & ((\r_REGISTER[30][5]~q\))) # (!\Mux10~2_combout\ & (\r_REGISTER[26][5]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[26][5]~q\,
	datac => \r_REGISTER[30][5]~q\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X27_Y26_N8
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[20][5]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][5]~q\,
	datad => \r_REGISTER[20][5]~q\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X27_Y26_N2
\Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux10~4_combout\ & ((\r_REGISTER[28][5]~q\))) # (!\Mux10~4_combout\ & (\r_REGISTER[24][5]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[24][5]~q\,
	datac => \r_REGISTER[28][5]~q\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X27_Y24_N12
\Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\i_GPR_address_B[0]~input_o\ & (((\i_GPR_address_B[1]~input_o\)))) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & (\Mux10~3_combout\)) # (!\i_GPR_address_B[1]~input_o\ & ((\Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \i_GPR_address_B[1]~input_o\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X27_Y24_N14
\Mux10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux10~6_combout\ & ((\Mux10~8_combout\))) # (!\Mux10~6_combout\ & (\Mux10~1_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~8_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X26_Y23_N10
\Mux10~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~17_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[13][5]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][5]~q\,
	datad => \r_REGISTER[13][5]~q\,
	combout => \Mux10~17_combout\);

-- Location: LCCOMB_X27_Y23_N16
\Mux10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~18_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux10~17_combout\ & (\r_REGISTER[15][5]~q\)) # (!\Mux10~17_combout\ & ((\r_REGISTER[14][5]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[15][5]~q\,
	datac => \r_REGISTER[14][5]~q\,
	datad => \Mux10~17_combout\,
	combout => \Mux10~18_combout\);

-- Location: LCCOMB_X28_Y21_N16
\Mux10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\i_GPR_address_B[1]~input_o\ & (\i_GPR_address_B[0]~input_o\)) # (!\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\ & ((\r_REGISTER[5][5]~q\))) # (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[4][5]~q\,
	datad => \r_REGISTER[5][5]~q\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X28_Y21_N6
\Mux10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux10~10_combout\ & (\r_REGISTER[7][5]~q\)) # (!\Mux10~10_combout\ & ((\r_REGISTER[6][5]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[7][5]~q\,
	datac => \r_REGISTER[6][5]~q\,
	datad => \Mux10~10_combout\,
	combout => \Mux10~11_combout\);

-- Location: LCCOMB_X28_Y24_N8
\Mux10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~14_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[2][5]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[0][5]~q\,
	datad => \r_REGISTER[2][5]~q\,
	combout => \Mux10~14_combout\);

-- Location: LCCOMB_X28_Y24_N14
\Mux10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~15_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux10~14_combout\ & (\r_REGISTER[3][5]~q\)) # (!\Mux10~14_combout\ & ((\r_REGISTER[1][5]~q\))))) # (!\i_GPR_address_B[0]~input_o\ & (\Mux10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux10~14_combout\,
	datac => \r_REGISTER[3][5]~q\,
	datad => \r_REGISTER[1][5]~q\,
	combout => \Mux10~15_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Mux10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~12_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[10][5]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][5]~q\,
	datad => \r_REGISTER[10][5]~q\,
	combout => \Mux10~12_combout\);

-- Location: LCCOMB_X29_Y23_N24
\Mux10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux10~12_combout\ & ((\r_REGISTER[11][5]~q\))) # (!\Mux10~12_combout\ & (\r_REGISTER[9][5]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[9][5]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[11][5]~q\,
	datad => \Mux10~12_combout\,
	combout => \Mux10~13_combout\);

-- Location: LCCOMB_X28_Y24_N0
\Mux10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~16_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\Mux10~13_combout\))) # (!\i_GPR_address_B[3]~input_o\ & (\Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \Mux10~15_combout\,
	datad => \Mux10~13_combout\,
	combout => \Mux10~16_combout\);

-- Location: LCCOMB_X28_Y24_N26
\Mux10~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~19_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux10~16_combout\ & (\Mux10~18_combout\)) # (!\Mux10~16_combout\ & ((\Mux10~11_combout\))))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~18_combout\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \Mux10~11_combout\,
	datad => \Mux10~16_combout\,
	combout => \Mux10~19_combout\);

-- Location: LCCOMB_X27_Y24_N0
\Mux10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~20_combout\ = (\i_GPR_address_B[4]~input_o\ & (\Mux10~9_combout\)) # (!\i_GPR_address_B[4]~input_o\ & ((\Mux10~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux10~9_combout\,
	datad => \Mux10~19_combout\,
	combout => \Mux10~20_combout\);

-- Location: FF_X27_Y24_N1
\o_GPR_ALU_data_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux10~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[5]~reg0_q\);

-- Location: LCCOMB_X28_Y23_N0
\Mux9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[9][6]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][6]~q\,
	datad => \r_REGISTER[9][6]~q\,
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X27_Y23_N6
\Mux9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (\Mux9~10_combout\ & ((\r_REGISTER[11][6]~q\) # ((!\i_GPR_address_B[1]~input_o\)))) # (!\Mux9~10_combout\ & (((\r_REGISTER[10][6]~q\ & \i_GPR_address_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[11][6]~q\,
	datab => \Mux9~10_combout\,
	datac => \r_REGISTER[10][6]~q\,
	datad => \i_GPR_address_B[1]~input_o\,
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X26_Y23_N26
\Mux9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~17_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[14][6]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][6]~q\,
	datad => \r_REGISTER[14][6]~q\,
	combout => \Mux9~17_combout\);

-- Location: LCCOMB_X26_Y23_N24
\Mux9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~18_combout\ = (\Mux9~17_combout\ & ((\r_REGISTER[15][6]~q\) # ((!\i_GPR_address_B[0]~input_o\)))) # (!\Mux9~17_combout\ & (((\r_REGISTER[13][6]~q\ & \i_GPR_address_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~17_combout\,
	datab => \r_REGISTER[15][6]~q\,
	datac => \r_REGISTER[13][6]~q\,
	datad => \i_GPR_address_B[0]~input_o\,
	combout => \Mux9~18_combout\);

-- Location: LCCOMB_X28_Y21_N20
\Mux9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~12_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[6][6]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[4][6]~q\,
	datad => \r_REGISTER[6][6]~q\,
	combout => \Mux9~12_combout\);

-- Location: LCCOMB_X28_Y21_N30
\Mux9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux9~12_combout\ & ((\r_REGISTER[7][6]~q\))) # (!\Mux9~12_combout\ & (\r_REGISTER[5][6]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[5][6]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[7][6]~q\,
	datad => \Mux9~12_combout\,
	combout => \Mux9~13_combout\);

-- Location: LCCOMB_X28_Y24_N16
\Mux9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~14_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[1][6]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[0][6]~q\,
	datad => \r_REGISTER[1][6]~q\,
	combout => \Mux9~14_combout\);

-- Location: LCCOMB_X28_Y24_N22
\Mux9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~15_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux9~14_combout\ & ((\r_REGISTER[3][6]~q\))) # (!\Mux9~14_combout\ & (\r_REGISTER[2][6]~q\)))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[2][6]~q\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[3][6]~q\,
	datad => \Mux9~14_combout\,
	combout => \Mux9~15_combout\);

-- Location: LCCOMB_X27_Y24_N16
\Mux9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~16_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & (\Mux9~13_combout\)) # (!\i_GPR_address_B[2]~input_o\ & ((\Mux9~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \Mux9~13_combout\,
	datad => \Mux9~15_combout\,
	combout => \Mux9~16_combout\);

-- Location: LCCOMB_X27_Y24_N22
\Mux9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~19_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux9~16_combout\ & ((\Mux9~18_combout\))) # (!\Mux9~16_combout\ & (\Mux9~11_combout\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \Mux9~11_combout\,
	datac => \Mux9~18_combout\,
	datad => \Mux9~16_combout\,
	combout => \Mux9~19_combout\);

-- Location: LCCOMB_X29_Y26_N24
\Mux9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[23][6]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][6]~q\,
	datad => \r_REGISTER[23][6]~q\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Mux9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux9~7_combout\ & ((\r_REGISTER[31][6]~q\))) # (!\Mux9~7_combout\ & (\r_REGISTER[27][6]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[27][6]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[31][6]~q\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X26_Y25_N22
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[26][6]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[18][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[18][6]~q\,
	datad => \r_REGISTER[26][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X28_Y25_N18
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux9~0_combout\ & (\r_REGISTER[30][6]~q\)) # (!\Mux9~0_combout\ & ((\r_REGISTER[22][6]~q\))))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[30][6]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[22][6]~q\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X29_Y25_N20
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\) # ((\r_REGISTER[21][6]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][6]~q\,
	datad => \r_REGISTER[21][6]~q\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X29_Y25_N2
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux9~2_combout\ & ((\r_REGISTER[29][6]~q\))) # (!\Mux9~2_combout\ & (\r_REGISTER[25][6]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[25][6]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[29][6]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X27_Y26_N16
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\r_REGISTER[24][6]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][6]~q\,
	datad => \r_REGISTER[24][6]~q\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X27_Y26_N30
\Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux9~4_combout\ & ((\r_REGISTER[28][6]~q\))) # (!\Mux9~4_combout\ & (\r_REGISTER[20][6]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[20][6]~q\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[28][6]~q\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux9~3_combout\) # ((\i_GPR_address_B[1]~input_o\)))) # (!\i_GPR_address_B[0]~input_o\ & (((!\i_GPR_address_B[1]~input_o\ & \Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \Mux9~3_combout\,
	datac => \i_GPR_address_B[1]~input_o\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X28_Y23_N14
\Mux9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux9~6_combout\ & (\Mux9~8_combout\)) # (!\Mux9~6_combout\ & ((\Mux9~1_combout\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \Mux9~8_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X27_Y24_N6
\Mux9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~20_combout\ = (\i_GPR_address_B[4]~input_o\ & ((\Mux9~9_combout\))) # (!\i_GPR_address_B[4]~input_o\ & (\Mux9~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[4]~input_o\,
	datac => \Mux9~19_combout\,
	datad => \Mux9~9_combout\,
	combout => \Mux9~20_combout\);

-- Location: FF_X27_Y24_N7
\o_GPR_ALU_data_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux9~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[6]~reg0_q\);

-- Location: LCCOMB_X33_Y23_N4
\Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\i_GPR_address_B[1]~input_o\ & (((\i_GPR_address_B[0]~input_o\)))) # (!\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\ & ((\r_REGISTER[5][7]~q\))) # (!\i_GPR_address_B[0]~input_o\ & (\r_REGISTER[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[4][7]~q\,
	datac => \i_GPR_address_B[0]~input_o\,
	datad => \r_REGISTER[5][7]~q\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux8~10_combout\ & (\r_REGISTER[7][7]~q\)) # (!\Mux8~10_combout\ & ((\r_REGISTER[6][7]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[7][7]~q\,
	datac => \r_REGISTER[6][7]~q\,
	datad => \Mux8~10_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X26_Y23_N6
\Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~17_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\) # ((\r_REGISTER[13][7]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[12][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[12][7]~q\,
	datad => \r_REGISTER[13][7]~q\,
	combout => \Mux8~17_combout\);

-- Location: LCCOMB_X30_Y23_N22
\Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~18_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\Mux8~17_combout\ & (\r_REGISTER[15][7]~q\)) # (!\Mux8~17_combout\ & ((\r_REGISTER[14][7]~q\))))) # (!\i_GPR_address_B[1]~input_o\ & (((\Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \r_REGISTER[15][7]~q\,
	datac => \r_REGISTER[14][7]~q\,
	datad => \Mux8~17_combout\,
	combout => \Mux8~18_combout\);

-- Location: LCCOMB_X31_Y24_N20
\Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~14_combout\ = (\i_GPR_address_B[0]~input_o\ & (((\i_GPR_address_B[1]~input_o\)))) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[2][7]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[0][7]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \i_GPR_address_B[1]~input_o\,
	datad => \r_REGISTER[2][7]~q\,
	combout => \Mux8~14_combout\);

-- Location: LCCOMB_X31_Y24_N14
\Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~15_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux8~14_combout\ & ((\r_REGISTER[3][7]~q\))) # (!\Mux8~14_combout\ & (\r_REGISTER[1][7]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[1][7]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[3][7]~q\,
	datad => \Mux8~14_combout\,
	combout => \Mux8~15_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\i_GPR_address_B[0]~input_o\ & (\i_GPR_address_B[1]~input_o\)) # (!\i_GPR_address_B[0]~input_o\ & ((\i_GPR_address_B[1]~input_o\ & ((\r_REGISTER[10][7]~q\))) # (!\i_GPR_address_B[1]~input_o\ & (\r_REGISTER[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[0]~input_o\,
	datab => \i_GPR_address_B[1]~input_o\,
	datac => \r_REGISTER[8][7]~q\,
	datad => \r_REGISTER[10][7]~q\,
	combout => \Mux8~12_combout\);

-- Location: LCCOMB_X29_Y23_N0
\Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~13_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux8~12_combout\ & ((\r_REGISTER[11][7]~q\))) # (!\Mux8~12_combout\ & (\r_REGISTER[9][7]~q\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[9][7]~q\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \r_REGISTER[11][7]~q\,
	datad => \Mux8~12_combout\,
	combout => \Mux8~13_combout\);

-- Location: LCCOMB_X31_Y24_N16
\Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~16_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\) # ((\Mux8~13_combout\)))) # (!\i_GPR_address_B[3]~input_o\ & (!\i_GPR_address_B[2]~input_o\ & (\Mux8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \Mux8~15_combout\,
	datad => \Mux8~13_combout\,
	combout => \Mux8~16_combout\);

-- Location: LCCOMB_X31_Y24_N22
\Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~19_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux8~16_combout\ & ((\Mux8~18_combout\))) # (!\Mux8~16_combout\ & (\Mux8~11_combout\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \Mux8~11_combout\,
	datac => \Mux8~18_combout\,
	datad => \Mux8~16_combout\,
	combout => \Mux8~19_combout\);

-- Location: LCCOMB_X29_Y25_N8
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[25][7]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[17][7]~q\,
	datad => \r_REGISTER[25][7]~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux8~0_combout\ & ((\r_REGISTER[29][7]~q\))) # (!\Mux8~0_combout\ & (\r_REGISTER[21][7]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[21][7]~q\,
	datac => \r_REGISTER[29][7]~q\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X29_Y26_N20
\Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\i_GPR_address_B[2]~input_o\ & (\i_GPR_address_B[3]~input_o\)) # (!\i_GPR_address_B[2]~input_o\ & ((\i_GPR_address_B[3]~input_o\ & ((\r_REGISTER[27][7]~q\))) # (!\i_GPR_address_B[3]~input_o\ & (\r_REGISTER[19][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[19][7]~q\,
	datad => \r_REGISTER[27][7]~q\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X29_Y26_N10
\Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\i_GPR_address_B[2]~input_o\ & ((\Mux8~7_combout\ & ((\r_REGISTER[31][7]~q\))) # (!\Mux8~7_combout\ & (\r_REGISTER[23][7]~q\)))) # (!\i_GPR_address_B[2]~input_o\ & (((\Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[2]~input_o\,
	datab => \r_REGISTER[23][7]~q\,
	datac => \r_REGISTER[31][7]~q\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X27_Y25_N6
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[22][7]~q\)) # (!\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[22][7]~q\,
	datad => \r_REGISTER[18][7]~q\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X27_Y25_N4
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux8~2_combout\ & ((\r_REGISTER[30][7]~q\))) # (!\Mux8~2_combout\ & (\r_REGISTER[26][7]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \r_REGISTER[26][7]~q\,
	datac => \r_REGISTER[30][7]~q\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X27_Y26_N20
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\i_GPR_address_B[3]~input_o\ & (\i_GPR_address_B[2]~input_o\)) # (!\i_GPR_address_B[3]~input_o\ & ((\i_GPR_address_B[2]~input_o\ & ((\r_REGISTER[20][7]~q\))) # (!\i_GPR_address_B[2]~input_o\ & (\r_REGISTER[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[3]~input_o\,
	datab => \i_GPR_address_B[2]~input_o\,
	datac => \r_REGISTER[16][7]~q\,
	datad => \r_REGISTER[20][7]~q\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X27_Y26_N22
\Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\i_GPR_address_B[3]~input_o\ & ((\Mux8~4_combout\ & ((\r_REGISTER[28][7]~q\))) # (!\Mux8~4_combout\ & (\r_REGISTER[24][7]~q\)))) # (!\i_GPR_address_B[3]~input_o\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_REGISTER[24][7]~q\,
	datab => \i_GPR_address_B[3]~input_o\,
	datac => \r_REGISTER[28][7]~q\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X31_Y24_N24
\Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\i_GPR_address_B[1]~input_o\ & ((\i_GPR_address_B[0]~input_o\) # ((\Mux8~3_combout\)))) # (!\i_GPR_address_B[1]~input_o\ & (!\i_GPR_address_B[0]~input_o\ & ((\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPR_address_B[1]~input_o\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X31_Y24_N18
\Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\i_GPR_address_B[0]~input_o\ & ((\Mux8~6_combout\ & ((\Mux8~8_combout\))) # (!\Mux8~6_combout\ & (\Mux8~1_combout\)))) # (!\i_GPR_address_B[0]~input_o\ & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \i_GPR_address_B[0]~input_o\,
	datac => \Mux8~8_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Mux8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~20_combout\ = (\i_GPR_address_B[4]~input_o\ & ((\Mux8~9_combout\))) # (!\i_GPR_address_B[4]~input_o\ & (\Mux8~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_address_B[4]~input_o\,
	datac => \Mux8~19_combout\,
	datad => \Mux8~9_combout\,
	combout => \Mux8~20_combout\);

-- Location: FF_X31_Y24_N5
\o_GPR_ALU_data_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPR_clk~inputclkctrl_outclk\,
	d => \Mux8~20_combout\,
	ena => \i_GPR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPR_ALU_data_B[7]~reg0_q\);

ww_o_GPR_ALU_data_A(0) <= \o_GPR_ALU_data_A[0]~output_o\;

ww_o_GPR_ALU_data_A(1) <= \o_GPR_ALU_data_A[1]~output_o\;

ww_o_GPR_ALU_data_A(2) <= \o_GPR_ALU_data_A[2]~output_o\;

ww_o_GPR_ALU_data_A(3) <= \o_GPR_ALU_data_A[3]~output_o\;

ww_o_GPR_ALU_data_A(4) <= \o_GPR_ALU_data_A[4]~output_o\;

ww_o_GPR_ALU_data_A(5) <= \o_GPR_ALU_data_A[5]~output_o\;

ww_o_GPR_ALU_data_A(6) <= \o_GPR_ALU_data_A[6]~output_o\;

ww_o_GPR_ALU_data_A(7) <= \o_GPR_ALU_data_A[7]~output_o\;

ww_o_GPR_ALU_data_B(0) <= \o_GPR_ALU_data_B[0]~output_o\;

ww_o_GPR_ALU_data_B(1) <= \o_GPR_ALU_data_B[1]~output_o\;

ww_o_GPR_ALU_data_B(2) <= \o_GPR_ALU_data_B[2]~output_o\;

ww_o_GPR_ALU_data_B(3) <= \o_GPR_ALU_data_B[3]~output_o\;

ww_o_GPR_ALU_data_B(4) <= \o_GPR_ALU_data_B[4]~output_o\;

ww_o_GPR_ALU_data_B(5) <= \o_GPR_ALU_data_B[5]~output_o\;

ww_o_GPR_ALU_data_B(6) <= \o_GPR_ALU_data_B[6]~output_o\;

ww_o_GPR_ALU_data_B(7) <= \o_GPR_ALU_data_B[7]~output_o\;
END structure;


