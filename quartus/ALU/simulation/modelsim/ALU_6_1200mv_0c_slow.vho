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

-- DATE "05/22/2019 13:26:47"

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

ENTITY 	ALU IS
    PORT (
	i_CLK : IN std_logic;
	i_ENABLE : IN std_logic;
	i_ALU_A : IN std_logic_vector(7 DOWNTO 0);
	i_ALU_B : IN std_logic_vector(7 DOWNTO 0);
	i_ALU_sel : IN std_logic_vector(3 DOWNTO 0);
	i_ALU_signed : IN std_logic;
	i_ALU_carry : IN std_logic;
	o_ALU_out : BUFFER std_logic_vector(7 DOWNTO 0);
	o_ALU_carry_flag : BUFFER std_logic;
	o_ALU_overflow_flag : BUFFER std_logic;
	o_ALU_negative_flag : BUFFER std_logic;
	o_ALU_zero_flag : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- o_ALU_out[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_carry_flag	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_overflow_flag	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_negative_flag	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_zero_flag	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_carry	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_signed	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL ww_i_ALU_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_ALU_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_ALU_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_ALU_signed : std_logic;
SIGNAL ww_i_ALU_carry : std_logic;
SIGNAL ww_o_ALU_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_ALU_carry_flag : std_logic;
SIGNAL ww_o_ALU_overflow_flag : std_logic;
SIGNAL ww_o_ALU_negative_flag : std_logic;
SIGNAL ww_o_ALU_zero_flag : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ENABLE~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_ALU_out[0]~output_o\ : std_logic;
SIGNAL \o_ALU_out[1]~output_o\ : std_logic;
SIGNAL \o_ALU_out[2]~output_o\ : std_logic;
SIGNAL \o_ALU_out[3]~output_o\ : std_logic;
SIGNAL \o_ALU_out[4]~output_o\ : std_logic;
SIGNAL \o_ALU_out[5]~output_o\ : std_logic;
SIGNAL \o_ALU_out[6]~output_o\ : std_logic;
SIGNAL \o_ALU_out[7]~output_o\ : std_logic;
SIGNAL \o_ALU_carry_flag~output_o\ : std_logic;
SIGNAL \o_ALU_overflow_flag~output_o\ : std_logic;
SIGNAL \o_ALU_negative_flag~output_o\ : std_logic;
SIGNAL \o_ALU_zero_flag~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_ALU_sel[0]~input_o\ : std_logic;
SIGNAL \i_ALU_A[0]~input_o\ : std_logic;
SIGNAL \i_ALU_B[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i_ALU_B[2]~input_o\ : std_logic;
SIGNAL \i_ALU_B[1]~input_o\ : std_logic;
SIGNAL \i_ALU_A[2]~input_o\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \i_ALU_A[3]~input_o\ : std_logic;
SIGNAL \i_ALU_A[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \i_ALU_B[6]~input_o\ : std_logic;
SIGNAL \i_ALU_B[4]~input_o\ : std_logic;
SIGNAL \i_ALU_B[5]~input_o\ : std_logic;
SIGNAL \i_ALU_B[7]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \i_ALU_B[3]~input_o\ : std_logic;
SIGNAL \i_ALU_A[6]~input_o\ : std_logic;
SIGNAL \i_ALU_A[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \i_ALU_A[5]~input_o\ : std_logic;
SIGNAL \i_ALU_A[7]~input_o\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \i_ALU_sel[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \i_ALU_sel[2]~input_o\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \i_ALU_sel[3]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \i_ENABLE~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \ShiftLeft1~2_combout\ : std_logic;
SIGNAL \ShiftLeft1~1_combout\ : std_logic;
SIGNAL \ShiftLeft1~3_combout\ : std_logic;
SIGNAL \ShiftLeft1~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \tmp[8]~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \tmp[8]~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \r_ALU_carry_flag~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_cout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \i_ALU_carry~input_o\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \r_ALU_Result~4_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \r_ALU_Result~5_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \r_ALU_Result~6_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \r_ALU_Result~7_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~16_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~14_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~15_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~12_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~21_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~13_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~8_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~9_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~11_combout\ : std_logic;
SIGNAL \r_ALU_Result~10_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~17_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~18_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \r_ALU_Result~19_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \r_ALU_overflow_flag~q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~20_combout\ : std_logic;
SIGNAL \i_ALU_signed~input_o\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \r_ALU_negative_flag~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \r_ALU_zero_flag~q\ : std_logic;
SIGNAL tmp : std_logic_vector(8 DOWNTO 0);
SIGNAL r_ALU_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_i_ENABLE~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_ALU_A <= i_ALU_A;
ww_i_ALU_B <= i_ALU_B;
ww_i_ALU_sel <= i_ALU_sel;
ww_i_ALU_signed <= i_ALU_signed;
ww_i_ALU_carry <= i_ALU_carry;
o_ALU_out <= ww_o_ALU_out;
o_ALU_carry_flag <= ww_o_ALU_carry_flag;
o_ALU_overflow_flag <= ww_o_ALU_overflow_flag;
o_ALU_negative_flag <= ww_o_ALU_negative_flag;
o_ALU_zero_flag <= ww_o_ALU_zero_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\i_ENABLE~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_ENABLE~input_o\);
\ALT_INV_i_ENABLE~inputclkctrl_outclk\ <= NOT \i_ENABLE~inputclkctrl_outclk\;

-- Location: IOOBUF_X28_Y29_N9
\o_ALU_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(0),
	devoe => ww_devoe,
	o => \o_ALU_out[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_ALU_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(1),
	devoe => ww_devoe,
	o => \o_ALU_out[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\o_ALU_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(2),
	devoe => ww_devoe,
	o => \o_ALU_out[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\o_ALU_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(3),
	devoe => ww_devoe,
	o => \o_ALU_out[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\o_ALU_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(4),
	devoe => ww_devoe,
	o => \o_ALU_out[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_ALU_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(5),
	devoe => ww_devoe,
	o => \o_ALU_out[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\o_ALU_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(6),
	devoe => ww_devoe,
	o => \o_ALU_out[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_ALU_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ALU_Result(7),
	devoe => ww_devoe,
	o => \o_ALU_out[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_ALU_carry_flag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_ALU_carry_flag~q\,
	devoe => ww_devoe,
	o => \o_ALU_carry_flag~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\o_ALU_overflow_flag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_ALU_overflow_flag~q\,
	devoe => ww_devoe,
	o => \o_ALU_overflow_flag~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_ALU_negative_flag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_ALU_negative_flag~q\,
	devoe => ww_devoe,
	o => \o_ALU_negative_flag~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_ALU_zero_flag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_ALU_zero_flag~q\,
	devoe => ww_devoe,
	o => \o_ALU_zero_flag~output_o\);

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

-- Location: IOIBUF_X30_Y29_N8
\i_ALU_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(0),
	o => \i_ALU_sel[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\i_ALU_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(0),
	o => \i_ALU_A[0]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\i_ALU_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(0),
	o => \i_ALU_B[0]~input_o\);

-- Location: LCCOMB_X24_Y28_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\i_ALU_A[0]~input_o\ & (\i_ALU_B[0]~input_o\ $ (VCC))) # (!\i_ALU_A[0]~input_o\ & (\i_ALU_B[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\i_ALU_A[0]~input_o\ & \i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X32_Y29_N22
\i_ALU_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(2),
	o => \i_ALU_B[2]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\i_ALU_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(1),
	o => \i_ALU_B[1]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\i_ALU_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(2),
	o => \i_ALU_A[2]~input_o\);

-- Location: LCCOMB_X27_Y28_N12
\ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & ((\i_ALU_A[2]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: IOIBUF_X26_Y29_N29
\i_ALU_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(3),
	o => \i_ALU_A[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\i_ALU_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(1),
	o => \i_ALU_A[1]~input_o\);

-- Location: LCCOMB_X27_Y28_N18
\ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\i_ALU_B[1]~input_o\ & (\i_ALU_A[3]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X27_Y26_N12
\ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (!\i_ALU_B[2]~input_o\ & ((\ShiftRight0~7_combout\) # ((\ShiftRight0~8_combout\ & \i_ALU_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \ShiftRight0~7_combout\,
	datac => \ShiftRight0~8_combout\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: IOIBUF_X23_Y29_N29
\i_ALU_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(6),
	o => \i_ALU_B[6]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\i_ALU_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(4),
	o => \i_ALU_B[4]~input_o\);

-- Location: IOIBUF_X35_Y29_N1
\i_ALU_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(5),
	o => \i_ALU_B[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\i_ALU_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(7),
	o => \i_ALU_B[7]~input_o\);

-- Location: LCCOMB_X24_Y28_N28
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\i_ALU_B[6]~input_o\ & (!\i_ALU_B[4]~input_o\ & (!\i_ALU_B[5]~input_o\ & !\i_ALU_B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_B[4]~input_o\,
	datac => \i_ALU_B[5]~input_o\,
	datad => \i_ALU_B[7]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X23_Y29_N8
\i_ALU_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(3),
	o => \i_ALU_B[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\i_ALU_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(6),
	o => \i_ALU_A[6]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\i_ALU_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(4),
	o => \i_ALU_A[4]~input_o\);

-- Location: LCCOMB_X24_Y28_N30
\ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\i_ALU_B[1]~input_o\ & (\i_ALU_A[6]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: IOIBUF_X21_Y29_N29
\i_ALU_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(5),
	o => \i_ALU_A[5]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\i_ALU_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(7),
	o => \i_ALU_A[7]~input_o\);

-- Location: LCCOMB_X27_Y26_N20
\ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_A[7]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[5]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X27_Y26_N10
\ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\i_ALU_B[2]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\ShiftRight0~4_combout\))) # (!\i_ALU_B[0]~input_o\ & (\ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X27_Y26_N22
\ShiftRight0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\Equal2~0_combout\ & (!\i_ALU_B[3]~input_o\ & ((\ShiftRight0~9_combout\) # (\ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~9_combout\,
	datab => \Equal2~0_combout\,
	datac => \i_ALU_B[3]~input_o\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: IOIBUF_X32_Y29_N8
\i_ALU_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(1),
	o => \i_ALU_sel[1]~input_o\);

-- Location: LCCOMB_X29_Y27_N12
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_ALU_sel[0]~input_o\ & (((\i_ALU_sel[1]~input_o\)))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\Add1~0_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((\ShiftRight0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \Add1~0_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X29_Y27_N30
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux7~0_combout\ & (\i_ALU_A[0]~input_o\ & \i_ALU_B[0]~input_o\)) # (!\Mux7~0_combout\ & ((\i_ALU_A[0]~input_o\) # (\i_ALU_B[0]~input_o\))))) # (!\i_ALU_sel[0]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X30_Y29_N22
\i_ALU_sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(2),
	o => \i_ALU_sel[2]~input_o\);

-- Location: LCCOMB_X29_Y27_N2
\Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_B[0]~input_o\ & (!\i_ALU_A[0]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => r_ALU_Result(0),
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_A[0]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Mux7~8_combout\))))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\Mux7~8_combout\))) # (!\i_ALU_sel[1]~input_o\ & 
-- (\i_ALU_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X29_Y27_N4
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[0]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (!\i_ALU_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\) # ((\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\ & r_ALU_Result(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Mux7~2_combout\,
	datad => r_ALU_Result(0),
	combout => \Mux7~3_combout\);

-- Location: IOIBUF_X30_Y29_N1
\i_ALU_sel[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(3),
	o => \i_ALU_sel[3]~input_o\);

-- Location: LCCOMB_X26_Y26_N10
\ShiftLeft0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\i_ALU_A[0]~input_o\ & (!\i_ALU_B[0]~input_o\ & !\i_ALU_B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X26_Y26_N0
\ShiftLeft0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\ShiftLeft0~4_combout\ & (\Equal2~0_combout\ & (!\i_ALU_B[2]~input_o\ & !\i_ALU_B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \Equal2~0_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X32_Y27_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!\i_ALU_sel[3]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (!\i_ALU_sel[0]~input_o\ & !\i_ALU_B[0]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & (\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: CLKCTRL_G2
\i_ENABLE~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_ENABLE~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_ENABLE~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y27_N26
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\i_ALU_sel[1]~input_o\ & (\r_ALU_carry_flag~q\ & (\i_ALU_sel[3]~input_o\ $ (!\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \r_ALU_carry_flag~q\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X26_Y26_N12
\ShiftLeft1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~2_combout\ = (\i_ALU_B[3]~input_o\ & (\i_ALU_A[0]~input_o\ & ((!\i_ALU_B[0]~input_o\)))) # (!\i_ALU_B[3]~input_o\ & (((\i_ALU_A[7]~input_o\ & \i_ALU_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft1~2_combout\);

-- Location: LCCOMB_X27_Y28_N16
\ShiftLeft1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~1_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[5]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \ShiftLeft1~1_combout\);

-- Location: LCCOMB_X26_Y26_N6
\ShiftLeft1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~3_combout\ = (\i_ALU_B[1]~input_o\ & (((\ShiftLeft1~1_combout\ & !\i_ALU_B[3]~input_o\)))) # (!\i_ALU_B[1]~input_o\ & (\ShiftLeft1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~2_combout\,
	datab => \ShiftLeft1~1_combout\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \ShiftLeft1~3_combout\);

-- Location: LCCOMB_X27_Y28_N20
\ShiftLeft1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~0_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[3]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[4]~input_o\,
	combout => \ShiftLeft1~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\i_ALU_A[1]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X27_Y28_N10
\ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ShiftLeft0~11_combout\) # ((!\i_ALU_B[1]~input_o\ & \ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \ShiftLeft1~0_combout\,
	datac => \ShiftLeft0~11_combout\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X26_Y26_N4
\ShiftLeft1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~4_combout\ = (\i_ALU_B[2]~input_o\ & (((\ShiftLeft0~12_combout\ & !\i_ALU_B[3]~input_o\)))) # (!\i_ALU_B[2]~input_o\ & (\ShiftLeft1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~3_combout\,
	datab => \ShiftLeft0~12_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \ShiftLeft1~4_combout\);

-- Location: LCCOMB_X24_Y28_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\i_ALU_A[1]~input_o\ & ((\i_ALU_B[1]~input_o\ & (\Add1~1\ & VCC)) # (!\i_ALU_B[1]~input_o\ & (!\Add1~1\)))) # (!\i_ALU_A[1]~input_o\ & ((\i_ALU_B[1]~input_o\ & (!\Add1~1\)) # (!\i_ALU_B[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\i_ALU_A[1]~input_o\ & (!\i_ALU_B[1]~input_o\ & !\Add1~1\)) # (!\i_ALU_A[1]~input_o\ & ((!\Add1~1\) # (!\i_ALU_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[1]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y28_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\i_ALU_B[2]~input_o\ $ (\i_ALU_A[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\i_ALU_B[2]~input_o\ & ((\i_ALU_A[2]~input_o\) # (!\Add1~3\))) # (!\i_ALU_B[2]~input_o\ & (\i_ALU_A[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y28_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\i_ALU_B[3]~input_o\ & ((\i_ALU_A[3]~input_o\ & (\Add1~5\ & VCC)) # (!\i_ALU_A[3]~input_o\ & (!\Add1~5\)))) # (!\i_ALU_B[3]~input_o\ & ((\i_ALU_A[3]~input_o\ & (!\Add1~5\)) # (!\i_ALU_A[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\i_ALU_B[3]~input_o\ & (!\i_ALU_A[3]~input_o\ & !\Add1~5\)) # (!\i_ALU_B[3]~input_o\ & ((!\Add1~5\) # (!\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y28_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\i_ALU_A[4]~input_o\ $ (\i_ALU_B[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\i_ALU_A[4]~input_o\ & ((\i_ALU_B[4]~input_o\) # (!\Add1~7\))) # (!\i_ALU_A[4]~input_o\ & (\i_ALU_B[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datab => \i_ALU_B[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y28_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\ & (\Add1~9\ & VCC)) # (!\i_ALU_A[5]~input_o\ & (!\Add1~9\)))) # (!\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\ & (!\Add1~9\)) # (!\i_ALU_A[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\i_ALU_B[5]~input_o\ & (!\i_ALU_A[5]~input_o\ & !\Add1~9\)) # (!\i_ALU_B[5]~input_o\ & ((!\Add1~9\) # (!\i_ALU_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y28_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\i_ALU_B[6]~input_o\ $ (\i_ALU_A[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\i_ALU_B[6]~input_o\ & ((\i_ALU_A[6]~input_o\) # (!\Add1~11\))) # (!\i_ALU_B[6]~input_o\ & (\i_ALU_A[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y28_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\i_ALU_A[7]~input_o\ & ((\i_ALU_B[7]~input_o\ & (\Add1~13\ & VCC)) # (!\i_ALU_B[7]~input_o\ & (!\Add1~13\)))) # (!\i_ALU_A[7]~input_o\ & ((\i_ALU_B[7]~input_o\ & (!\Add1~13\)) # (!\i_ALU_B[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\i_ALU_A[7]~input_o\ & (!\i_ALU_B[7]~input_o\ & !\Add1~13\)) # (!\i_ALU_A[7]~input_o\ & ((!\Add1~13\) # (!\i_ALU_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_B[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y28_N26
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = !\Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X26_Y28_N2
\tmp[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~0_combout\ = (\i_ALU_sel[1]~input_o\ & (\ShiftLeft1~4_combout\ & ((\Equal2~0_combout\)))) # (!\i_ALU_sel[1]~input_o\ & (((\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft1~4_combout\,
	datab => \Add1~16_combout\,
	datac => \Equal2~0_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \tmp[8]~0_combout\);

-- Location: LCCOMB_X28_Y28_N12
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\i_ALU_sel[2]~input_o\ & !\i_ALU_sel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X26_Y27_N2
\tmp[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~1_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux10~4_combout\ & (\tmp[8]~0_combout\)) # (!\Mux10~4_combout\ & ((tmp(8)))))) # (!\i_ALU_sel[0]~input_o\ & (((tmp(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~0_combout\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => tmp(8),
	datad => \Mux10~4_combout\,
	combout => \tmp[8]~1_combout\);

-- Location: FF_X26_Y27_N3
\tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_ENABLE~inputclkctrl_outclk\,
	d => \tmp[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(8));

-- Location: LCCOMB_X26_Y27_N24
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\i_ALU_sel[3]~input_o\ & (\i_ALU_sel[0]~input_o\ & tmp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[3]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => tmp(8),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X26_Y27_N18
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\ & (\i_ALU_sel[2]~input_o\ $ ((!\i_ALU_sel[3]~input_o\)))) # (!\Mux9~1_combout\ & (\Mux9~0_combout\ & (\i_ALU_sel[2]~input_o\ $ (!\i_ALU_sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: FF_X26_Y27_N19
r_ALU_carry_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_ENABLE~inputclkctrl_outclk\,
	d => \Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_carry_flag~q\);

-- Location: LCCOMB_X26_Y27_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (!\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[1]~input_o\) # (\r_ALU_carry_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[2]~input_o\,
	datad => \r_ALU_carry_flag~q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X29_Y27_N20
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_A[0]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X27_Y27_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_cout\ = CARRY(!\i_ALU_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datad => VCC,
	cout => \Add0~4_cout\);

-- Location: LCCOMB_X27_Y27_N12
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~1_combout\ & ((\Add0~2_combout\ & (\Add0~4_cout\ & VCC)) # (!\Add0~2_combout\ & (!\Add0~4_cout\)))) # (!\Add0~1_combout\ & ((\Add0~2_combout\ & (!\Add0~4_cout\)) # (!\Add0~2_combout\ & ((\Add0~4_cout\) # (GND)))))
-- \Add0~6\ = CARRY((\Add0~1_combout\ & (!\Add0~2_combout\ & !\Add0~4_cout\)) # (!\Add0~1_combout\ & ((!\Add0~4_cout\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~4_cout\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X30_Y29_N15
\i_ALU_carry~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_carry,
	o => \i_ALU_carry~input_o\);

-- Location: LCCOMB_X29_Y27_N14
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\i_ALU_carry~input_o\ & ((\Add0~5_combout\))) # (!\i_ALU_carry~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Add0~5_combout\,
	datad => \i_ALU_carry~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X29_Y27_N16
\Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\)) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\Add0~5_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((r_ALU_Result(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Add0~5_combout\,
	datad => r_ALU_Result(0),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X29_Y27_N10
\Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux7~5_combout\ & (\ShiftLeft0~5_combout\)) # (!\Mux7~5_combout\ & ((\Mux7~4_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datac => \Mux7~4_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X29_Y27_N28
\Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\i_ALU_sel[2]~input_o\ & (((\i_ALU_sel[3]~input_o\)))) # (!\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[3]~input_o\ & (\Mux7~3_combout\)) # (!\i_ALU_sel[3]~input_o\ & ((\Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X29_Y27_N0
\Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\i_ALU_sel[2]~input_o\ & ((\Mux7~7_combout\ & ((\Mux7~9_combout\))) # (!\Mux7~7_combout\ & (\Mux7~1_combout\)))) # (!\i_ALU_sel[2]~input_o\ & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux7~9_combout\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~10_combout\);

-- Location: FF_X29_Y27_N1
\r_ALU_Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux7~10_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(0));

-- Location: LCCOMB_X26_Y28_N12
\r_ALU_Result~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~4_combout\ = \i_ALU_A[1]~input_o\ $ (\i_ALU_B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_A[1]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \r_ALU_Result~4_combout\);

-- Location: LCCOMB_X27_Y26_N4
\ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\ & ((!\i_ALU_B[1]~input_o\)))) # (!\i_ALU_B[0]~input_o\ & (((\ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \ShiftRight0~4_combout\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X27_Y28_N24
\ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\i_ALU_B[1]~input_o\ & (\i_ALU_A[4]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X27_Y26_N30
\ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (!\i_ALU_B[2]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\ShiftRight0~10_combout\))) # (!\i_ALU_B[0]~input_o\ & (\ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \ShiftRight0~8_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & !\i_ALU_B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y26_N14
\ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\Equal2~1_combout\ & ((\ShiftRight0~11_combout\) # ((\ShiftRight0~12_combout\ & \i_ALU_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \i_ALU_B[2]~input_o\,
	datac => \ShiftRight0~11_combout\,
	datad => \Equal2~1_combout\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X26_Y28_N10
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_ALU_sel[0]~input_o\ & (((\i_ALU_sel[1]~input_o\)))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\r_ALU_Result~4_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((\ShiftRight0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result~4_combout\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \ShiftRight0~13_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X26_Y28_N16
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\i_ALU_A[1]~input_o\ & \i_ALU_B[1]~input_o\)) # (!\i_ALU_sel[0]~input_o\))) # (!\Mux6~0_combout\ & (\i_ALU_sel[0]~input_o\ & ((\i_ALU_A[1]~input_o\) # (\i_ALU_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \i_ALU_A[1]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y27_N30
\Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_B[1]~input_o\ & (!\i_ALU_A[1]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[1]~input_o\,
	datad => r_ALU_Result(1),
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X26_Y27_N4
\Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_A[1]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Mux6~9_combout\))))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\Mux6~9_combout\))) # (!\i_ALU_sel[1]~input_o\ 
-- & (\i_ALU_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \Mux6~9_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X26_Y27_N22
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_B[1]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((!\i_ALU_A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X26_Y27_N8
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\) # ((\i_ALU_sel[1]~input_o\ & (\i_ALU_sel[0]~input_o\ & r_ALU_Result(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => r_ALU_Result(1),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X26_Y26_N20
\ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (!\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\i_ALU_A[0]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X26_Y28_N30
\Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Equal2~0_combout\ & (\ShiftLeft0~6_combout\ & (!\i_ALU_B[3]~input_o\ & !\i_ALU_B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \i_ALU_B[3]~input_o\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X26_Y27_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_A[1]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[1]~input_o\,
	datab => \Add1~2_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X32_Y27_N8
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\i_ALU_B[1]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X27_Y27_N14
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\Add0~8_combout\ $ (\Add0~7_combout\ $ (\Add0~6\)))) # (GND)
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((!\Add0~6\) # (!\Add0~7_combout\))) # (!\Add0~8_combout\ & (!\Add0~7_combout\ & !\Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X27_Y27_N30
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\i_ALU_carry~input_o\ & ((\Add0~9_combout\))) # (!\i_ALU_carry~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => \Add0~9_combout\,
	datad => \i_ALU_carry~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X26_Y27_N12
\Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\)) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\Add0~9_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((r_ALU_Result(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Add0~9_combout\,
	datad => r_ALU_Result(1),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X26_Y27_N6
\Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux6~5_combout\ & (\Mux6~6_combout\)) # (!\Mux6~5_combout\ & ((\Mux6~4_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \Mux6~4_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X26_Y27_N28
\Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[3]~input_o\)) # (!\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[3]~input_o\ & (\Mux6~3_combout\)) # (!\i_ALU_sel[3]~input_o\ & ((\Mux6~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X26_Y27_N20
\Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\i_ALU_sel[2]~input_o\ & ((\Mux6~8_combout\ & ((\Mux6~10_combout\))) # (!\Mux6~8_combout\ & (\Mux6~1_combout\)))) # (!\i_ALU_sel[2]~input_o\ & (((\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~10_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~11_combout\);

-- Location: FF_X26_Y27_N21
\r_ALU_Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux6~11_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(1));

-- Location: LCCOMB_X32_Y27_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_B[2]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((!\i_ALU_A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X32_Y27_N28
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\i_ALU_sel[1]~input_o\ & (\i_ALU_sel[0]~input_o\ & r_ALU_Result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => r_ALU_Result(2),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X32_Y27_N24
\Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_B[2]~input_o\ & (!\i_ALU_A[2]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => r_ALU_Result(2),
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X32_Y27_N22
\Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\i_ALU_A[2]~input_o\ & ((\Mux5~8_combout\) # (\i_ALU_sel[1]~input_o\ $ (!\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_A[2]~input_o\ & (\Mux5~8_combout\ & (\i_ALU_sel[1]~input_o\ $ (\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[2]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X24_Y28_N8
\ShiftRight0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_A[5]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_A[5]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X27_Y26_N24
\ShiftRight0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\i_ALU_B[0]~input_o\ & (\ShiftRight0~15_combout\)) # (!\i_ALU_B[0]~input_o\ & ((\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \i_ALU_B[0]~input_o\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X27_Y26_N14
\ShiftRight0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (!\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[7]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_A[7]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X27_Y26_N18
\ShiftRight0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\Equal2~1_combout\ & ((\i_ALU_B[2]~input_o\ & ((\ShiftRight0~14_combout\))) # (!\i_ALU_B[2]~input_o\ & (\ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~14_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X32_Y27_N6
\r_ALU_Result~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~5_combout\ = \i_ALU_A[2]~input_o\ $ (\i_ALU_B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[2]~input_o\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result~5_combout\);

-- Location: LCCOMB_X32_Y27_N16
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\) # (\r_ALU_Result~5_combout\)))) # (!\i_ALU_sel[1]~input_o\ & (\ShiftRight0~17_combout\ & (!\i_ALU_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \r_ALU_Result~5_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X32_Y27_N30
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_B[2]~input_o\ & ((\i_ALU_A[2]~input_o\) # (!\Mux5~2_combout\))) # (!\i_ALU_B[2]~input_o\ & (\i_ALU_A[2]~input_o\ & !\Mux5~2_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \i_ALU_A[2]~input_o\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X27_Y28_N6
\ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & (\i_ALU_A[0]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X27_Y28_N28
\ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\ShiftLeft0~7_combout\) # ((!\i_ALU_B[1]~input_o\ & (\i_ALU_A[1]~input_o\ & \i_ALU_B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X26_Y27_N10
\ShiftLeft0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\Equal2~0_combout\ & (\ShiftLeft0~8_combout\ & (!\i_ALU_B[3]~input_o\ & !\i_ALU_B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \i_ALU_B[3]~input_o\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X32_Y27_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_A[2]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[2]~input_o\,
	datac => \Add1~4_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X32_Y27_N12
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\i_ALU_B[2]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X27_Y27_N16
\Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\ & ((\Add0~11_combout\ & (!\Add0~10\)) # (!\Add0~11_combout\ & (\Add0~10\ & VCC)))) # (!\Add0~12_combout\ & ((\Add0~11_combout\ & ((\Add0~10\) # (GND))) # (!\Add0~11_combout\ & (!\Add0~10\))))
-- \Add0~14\ = CARRY((\Add0~12_combout\ & (\Add0~11_combout\ & !\Add0~10\)) # (!\Add0~12_combout\ & ((\Add0~11_combout\) # (!\Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X32_Y27_N4
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\i_ALU_carry~input_o\ & ((\Add0~13_combout\))) # (!\i_ALU_carry~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_carry~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add0~13_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X32_Y27_N18
\Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\i_ALU_sel[1]~input_o\ & ((\Add0~13_combout\) # ((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (((!\i_ALU_sel[0]~input_o\ & r_ALU_Result(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => r_ALU_Result(2),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X32_Y27_N0
\Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux5~5_combout\ & (\ShiftLeft0~17_combout\)) # (!\Mux5~5_combout\ & ((\Mux5~4_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \Mux5~4_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X32_Y27_N10
\Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\i_ALU_sel[3]~input_o\ & (\i_ALU_sel[2]~input_o\)) # (!\i_ALU_sel[3]~input_o\ & ((\i_ALU_sel[2]~input_o\ & (\Mux5~3_combout\)) # (!\i_ALU_sel[2]~input_o\ & ((\Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux5~3_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X32_Y27_N20
\Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\i_ALU_sel[3]~input_o\ & ((\Mux5~7_combout\ & ((\Mux5~9_combout\))) # (!\Mux5~7_combout\ & (\Mux5~1_combout\)))) # (!\i_ALU_sel[3]~input_o\ & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~9_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~10_combout\);

-- Location: FF_X32_Y27_N21
\r_ALU_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux5~10_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(2));

-- Location: LCCOMB_X24_Y28_N6
\r_ALU_Result~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~6_combout\ = \i_ALU_B[3]~input_o\ $ (\i_ALU_A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_B[3]~input_o\,
	datad => \i_ALU_A[3]~input_o\,
	combout => \r_ALU_Result~6_combout\);

-- Location: LCCOMB_X26_Y28_N20
\ShiftRight0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (!\i_ALU_B[2]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\ShiftRight0~5_combout\)) # (!\i_ALU_B[0]~input_o\ & ((\ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \ShiftRight0~5_combout\,
	datac => \ShiftRight0~15_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X29_Y26_N20
\ShiftRight0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (!\i_ALU_B[0]~input_o\ & (\i_ALU_B[2]~input_o\ & (\i_ALU_A[7]~input_o\ & !\i_ALU_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[2]~input_o\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X26_Y28_N28
\ShiftRight0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\Equal2~0_combout\ & (!\i_ALU_B[3]~input_o\ & ((\ShiftRight0~19_combout\) # (\ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ShiftRight0~19_combout\,
	datac => \i_ALU_B[3]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X26_Y28_N14
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_ALU_sel[1]~input_o\ & ((\r_ALU_Result~6_combout\) # ((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (((!\i_ALU_sel[0]~input_o\ & \ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \r_ALU_Result~6_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\i_ALU_B[3]~input_o\ & \i_ALU_A[3]~input_o\)) # (!\i_ALU_sel[0]~input_o\))) # (!\Mux4~0_combout\ & (\i_ALU_sel[0]~input_o\ & ((\i_ALU_B[3]~input_o\) # (\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X30_Y27_N10
\Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_B[3]~input_o\ & (!\i_ALU_A[3]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => r_ALU_Result(3),
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X30_Y27_N4
\Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_A[3]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Mux4~9_combout\))))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\Mux4~9_combout\))) # (!\i_ALU_sel[1]~input_o\ 
-- & (\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X29_Y26_N10
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\i_ALU_B[0]~input_o\ & (!\i_ALU_B[2]~input_o\ & (\Equal2~1_combout\ & !\i_ALU_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[2]~input_o\,
	datac => \Equal2~1_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X30_Y27_N26
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[3]~input_o\) # ((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (((!\i_ALU_A[3]~input_o\ & !\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X30_Y27_N8
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux4~2_combout\ & ((r_ALU_Result(3)))) # (!\Mux4~2_combout\ & (\Equal2~2_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \Equal2~2_combout\,
	datac => \Mux4~2_combout\,
	datad => r_ALU_Result(3),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X26_Y26_N26
\ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[0]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_A[1]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~0_combout\ & (!\i_ALU_B[2]~input_o\ & !\i_ALU_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X27_Y28_N0
\ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[2]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Equal2~3_combout\ & ((\i_ALU_B[1]~input_o\ & (\ShiftLeft0~9_combout\)) # (!\i_ALU_B[1]~input_o\ & ((\ShiftLeft0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \Equal2~3_combout\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X30_Y27_N22
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\i_ALU_sel[1]~input_o\ & (\Mux4~4_combout\)) # (!\i_ALU_sel[1]~input_o\ & (((\i_ALU_carry~input_o\) # (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \i_ALU_carry~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \Add1~6_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X26_Y28_N0
\Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\i_ALU_B[3]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_B[3]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X28_Y27_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_A[3]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[3]~input_o\,
	datac => \Add1~6_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X27_Y27_N18
\Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = ((\Add0~15_combout\ $ (\Add0~16_combout\ $ (\Add0~14\)))) # (GND)
-- \Add0~18\ = CARRY((\Add0~15_combout\ & (\Add0~16_combout\ & !\Add0~14\)) # (!\Add0~15_combout\ & ((\Add0~16_combout\) # (!\Add0~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X30_Y27_N0
\Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\) # ((\Add0~17_combout\)))) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\ & (\Add0~17_combout\)) # (!\i_ALU_sel[0]~input_o\ & ((r_ALU_Result(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_sel[0]~input_o\,
	datac => \Add0~17_combout\,
	datad => r_ALU_Result(3),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X30_Y27_N2
\Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\i_ALU_sel[0]~input_o\ & (\Mux4~5_combout\ & ((\Mux4~6_combout\) # (!\i_ALU_carry~input_o\)))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_carry~input_o\,
	datac => \Mux4~5_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X30_Y27_N20
\Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[3]~input_o\)) # (!\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[3]~input_o\ & (\Mux4~3_combout\)) # (!\i_ALU_sel[3]~input_o\ & ((\Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X30_Y27_N12
\Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\i_ALU_sel[2]~input_o\ & ((\Mux4~8_combout\ & ((\Mux4~10_combout\))) # (!\Mux4~8_combout\ & (\Mux4~1_combout\)))) # (!\i_ALU_sel[2]~input_o\ & (((\Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux4~10_combout\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~11_combout\);

-- Location: FF_X30_Y27_N13
\r_ALU_Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux4~11_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(3));

-- Location: LCCOMB_X27_Y28_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\i_ALU_A[2]~input_o\ & (!\i_ALU_A[0]~input_o\ & (!\i_ALU_A[3]~input_o\ & !\i_ALU_A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[2]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y28_N4
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\i_ALU_A[6]~input_o\ & (!\i_ALU_A[7]~input_o\ & (\Equal1~0_combout\ & !\i_ALU_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_A[7]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X31_Y27_N10
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_ALU_sel[0]~input_o\ & (((r_ALU_Result(4))) # (!\i_ALU_sel[1]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\ & (\i_ALU_B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[4]~input_o\,
	datad => r_ALU_Result(4),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X31_Y27_N4
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\i_ALU_sel[1]~input_o\ & (((\Mux3~1_combout\)))) # (!\i_ALU_sel[1]~input_o\ & (!\i_ALU_A[4]~input_o\ & ((\Mux3~0_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X31_Y27_N12
\Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\i_ALU_sel[1]~input_o\ & (!\i_ALU_A[4]~input_o\ & (\i_ALU_B[4]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[4]~input_o\,
	datad => r_ALU_Result(4),
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X31_Y27_N26
\Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_A[4]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Mux3~10_combout\))))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\Mux3~10_combout\))) # 
-- (!\i_ALU_sel[1]~input_o\ & (\i_ALU_A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X27_Y26_N0
\ShiftRight0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\Equal2~3_combout\ & ((\i_ALU_B[0]~input_o\ & ((\ShiftRight0~4_combout\))) # (!\i_ALU_B[0]~input_o\ & (\ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \Equal2~3_combout\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X31_Y27_N30
\r_ALU_Result~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~7_combout\ = \i_ALU_B[4]~input_o\ $ (\i_ALU_A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_B[4]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	combout => \r_ALU_Result~7_combout\);

-- Location: LCCOMB_X31_Y27_N20
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\i_ALU_sel[0]~input_o\ & (((\i_ALU_sel[1]~input_o\)))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\r_ALU_Result~7_combout\))) # (!\i_ALU_sel[1]~input_o\ & (\ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \ShiftRight0~20_combout\,
	datac => \r_ALU_Result~7_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X31_Y27_N14
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_B[4]~input_o\ & ((\i_ALU_A[4]~input_o\) # (!\Mux3~3_combout\))) # (!\i_ALU_B[4]~input_o\ & (\i_ALU_A[4]~input_o\ & !\Mux3~3_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_B[4]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X26_Y26_N24
\Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Equal2~1_combout\ & ((\i_ALU_B[2]~input_o\ & (\ShiftLeft0~4_combout\)) # (!\i_ALU_B[2]~input_o\ & ((\ShiftLeft0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \Equal2~1_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \ShiftLeft0~12_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X31_Y27_N28
\Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\i_ALU_sel[1]~input_o\ & (\Mux3~5_combout\)) # (!\i_ALU_sel[1]~input_o\ & (((\Add1~8_combout\) # (\i_ALU_carry~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Add1~8_combout\,
	datac => \i_ALU_carry~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X31_Y27_N8
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_A[4]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X31_Y27_N22
\Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\i_ALU_B[4]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_B[4]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X27_Y27_N20
\Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\Add0~19_combout\ & (!\Add0~18\)) # (!\Add0~19_combout\ & (\Add0~18\ & VCC)))) # (!\Add0~20_combout\ & ((\Add0~19_combout\ & ((\Add0~18\) # (GND))) # (!\Add0~19_combout\ & (!\Add0~18\))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (\Add0~19_combout\ & !\Add0~18\)) # (!\Add0~20_combout\ & ((\Add0~19_combout\) # (!\Add0~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X31_Y27_N18
\Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\) # ((\Add0~21_combout\)))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\Add0~21_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((r_ALU_Result(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Add0~21_combout\,
	datad => r_ALU_Result(4),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X31_Y27_N16
\Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\i_ALU_sel[0]~input_o\ & (\Mux3~6_combout\ & ((\Mux3~7_combout\) # (!\i_ALU_carry~input_o\)))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \Mux3~6_combout\,
	datac => \i_ALU_carry~input_o\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X31_Y27_N6
\Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\i_ALU_sel[2]~input_o\ & ((\Mux3~4_combout\) # ((\i_ALU_sel[3]~input_o\)))) # (!\i_ALU_sel[2]~input_o\ & (((!\i_ALU_sel[3]~input_o\ & \Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X31_Y27_N24
\Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\i_ALU_sel[3]~input_o\ & ((\Mux3~9_combout\ & ((\Mux3~11_combout\))) # (!\Mux3~9_combout\ & (\Mux3~2_combout\)))) # (!\i_ALU_sel[3]~input_o\ & (((\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~11_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~12_combout\);

-- Location: FF_X31_Y27_N25
\r_ALU_Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux3~12_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(4));

-- Location: LCCOMB_X28_Y28_N20
\r_ALU_Result[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~16_combout\ = (\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[3]~input_o\ & ((\i_ALU_sel[0]~input_o\) # (!\i_ALU_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~16_combout\);

-- Location: LCCOMB_X28_Y28_N28
\r_ALU_Result[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~14_combout\ = (\i_ALU_sel[2]~input_o\) # ((\i_ALU_sel[0]~input_o\ & !\i_ALU_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~14_combout\);

-- Location: LCCOMB_X28_Y28_N18
\r_ALU_Result[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~15_combout\ = (\i_ALU_sel[2]~input_o\) # (\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~15_combout\);

-- Location: LCCOMB_X29_Y28_N16
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\i_ALU_B[0]~input_o\ & !\i_ALU_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X29_Y28_N18
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\i_ALU_B[1]~input_o\ & (\i_ALU_A[1]~input_o\ & !\LessThan1~1_cout\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X29_Y28_N20
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\i_ALU_B[2]~input_o\ & ((!\LessThan1~3_cout\) # (!\i_ALU_A[2]~input_o\))) # (!\i_ALU_B[2]~input_o\ & (!\i_ALU_A[2]~input_o\ & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X29_Y28_N22
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\i_ALU_A[3]~input_o\ & ((!\LessThan1~5_cout\) # (!\i_ALU_B[3]~input_o\))) # (!\i_ALU_A[3]~input_o\ & (!\i_ALU_B[3]~input_o\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datab => \i_ALU_B[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X29_Y28_N24
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\i_ALU_B[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\i_ALU_A[4]~input_o\))) # (!\i_ALU_B[4]~input_o\ & (!\i_ALU_A[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[4]~input_o\,
	datab => \i_ALU_A[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X29_Y28_N26
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\i_ALU_B[5]~input_o\ & (\i_ALU_A[5]~input_o\ & !\LessThan1~9_cout\)) # (!\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X29_Y28_N28
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\i_ALU_A[6]~input_o\ & (\i_ALU_B[6]~input_o\ & !\LessThan1~11_cout\)) # (!\i_ALU_A[6]~input_o\ & ((\i_ALU_B[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_B[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X29_Y28_N30
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\i_ALU_A[7]~input_o\ & (\LessThan1~13_cout\ & \i_ALU_B[7]~input_o\)) # (!\i_ALU_A[7]~input_o\ & ((\LessThan1~13_cout\) # (\i_ALU_B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_B[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X31_Y27_N2
\Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\i_ALU_sel[2]~input_o\ & (((\i_ALU_B[5]~input_o\)))) # (!\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[5]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (\LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \i_ALU_B[5]~input_o\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X30_Y27_N6
\Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\i_ALU_A[5]~input_o\ & (\Mux2~10_combout\ & (\r_ALU_Result[5]~14_combout\ $ (\r_ALU_Result[5]~15_combout\)))) # (!\i_ALU_A[5]~input_o\ & ((\Mux2~10_combout\) # ((!\r_ALU_Result[5]~14_combout\ & !\r_ALU_Result[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[5]~input_o\,
	datab => \r_ALU_Result[5]~14_combout\,
	datac => \r_ALU_Result[5]~15_combout\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X26_Y28_N26
\r_ALU_Result[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~12_combout\ = (\i_ALU_B[3]~input_o\) # (((\i_ALU_B[2]~input_o\) # (!\Equal2~0_combout\)) # (!\i_ALU_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[5]~12_combout\);

-- Location: LCCOMB_X26_Y28_N22
\r_ALU_Result[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~21_combout\ = ((!\i_ALU_B[3]~input_o\ & (\Equal2~0_combout\ & \i_ALU_B[2]~input_o\))) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[5]~21_combout\);

-- Location: LCCOMB_X26_Y28_N24
\r_ALU_Result[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~13_combout\ = (\r_ALU_Result[5]~12_combout\ & (\i_ALU_sel[1]~input_o\)) # (!\r_ALU_Result[5]~12_combout\ & ((\i_ALU_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datac => \r_ALU_Result[5]~12_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \r_ALU_Result[5]~13_combout\);

-- Location: LCCOMB_X26_Y28_N6
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\r_ALU_Result[5]~21_combout\ & ((\r_ALU_Result[5]~13_combout\ & (\ShiftLeft0~6_combout\)) # (!\r_ALU_Result[5]~13_combout\ & ((\Add1~10_combout\))))) # (!\r_ALU_Result[5]~21_combout\ & (((!\r_ALU_Result[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~21_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \Add1~10_combout\,
	datad => \r_ALU_Result[5]~13_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X27_Y28_N8
\ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[4]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X27_Y28_N14
\Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\r_ALU_Result[5]~12_combout\ & (((\Mux2~4_combout\)))) # (!\r_ALU_Result[5]~12_combout\ & ((\Mux2~4_combout\ & ((\ShiftLeft0~13_combout\))) # (!\Mux2~4_combout\ & (\ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~12_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \Mux2~4_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X31_Y27_N0
\r_ALU_Result[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~8_combout\ = (\i_ALU_sel[1]~input_o\ & (!\i_ALU_sel[0]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_carry~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datac => \i_ALU_carry~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~8_combout\);

-- Location: LCCOMB_X28_Y28_N26
\r_ALU_Result[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~9_combout\ = (\i_ALU_sel[3]~input_o\) # ((!\i_ALU_sel[2]~input_o\ & \r_ALU_Result[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \r_ALU_Result[5]~8_combout\,
	combout => \r_ALU_Result[5]~9_combout\);

-- Location: LCCOMB_X27_Y26_N8
\r_ALU_Result[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~11_combout\ = (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\) # ((\Equal2~1_combout\ & !\i_ALU_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[5]~11_combout\);

-- Location: LCCOMB_X27_Y26_N6
\r_ALU_Result~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~10_combout\ = (\i_ALU_A[5]~input_o\) # (\i_ALU_B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_A[5]~input_o\,
	datad => \i_ALU_B[5]~input_o\,
	combout => \r_ALU_Result~10_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_ALU_sel[0]~input_o\ & (((\r_ALU_Result~10_combout\)) # (!\r_ALU_Result[5]~11_combout\))) # (!\i_ALU_sel[0]~input_o\ & (\r_ALU_Result[5]~11_combout\ & (\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \r_ALU_Result[5]~11_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \r_ALU_Result~10_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X31_Y28_N4
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_ALU_sel[1]~input_o\ & ((\Mux2~2_combout\ & (\i_ALU_A[5]~input_o\ & \i_ALU_B[5]~input_o\)) # (!\Mux2~2_combout\ & (\i_ALU_A[5]~input_o\ $ (\i_ALU_B[5]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \i_ALU_A[5]~input_o\,
	datad => \i_ALU_B[5]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X28_Y28_N2
\Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux10~4_combout\ & (\Mux2~5_combout\ & (!\r_ALU_Result[5]~9_combout\))) # (!\Mux10~4_combout\ & (((\r_ALU_Result[5]~9_combout\) # (\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux10~4_combout\,
	datac => \r_ALU_Result[5]~9_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X24_Y28_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\i_ALU_sel[1]~input_o\ & (\i_ALU_A[5]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datad => \Add1~10_combout\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X28_Y28_N0
\Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\i_ALU_B[5]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_B[5]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X27_Y27_N22
\Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = ((\Add0~24_combout\ $ (\Add0~23_combout\ $ (\Add0~22\)))) # (GND)
-- \Add0~26\ = CARRY((\Add0~24_combout\ & ((!\Add0~22\) # (!\Add0~23_combout\))) # (!\Add0~24_combout\ & (!\Add0~23_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X30_Y27_N16
\Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~6_combout\ & ((\Mux2~7_combout\) # ((!\r_ALU_Result[5]~9_combout\)))) # (!\Mux2~6_combout\ & (((\r_ALU_Result[5]~9_combout\ & \Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Mux2~6_combout\,
	datac => \r_ALU_Result[5]~9_combout\,
	datad => \Add0~25_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X30_Y27_N14
\Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\r_ALU_Result[5]~16_combout\ & (\i_ALU_A[5]~input_o\)) # (!\r_ALU_Result[5]~16_combout\ & ((\Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~16_combout\,
	datac => \i_ALU_A[5]~input_o\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X30_Y27_N30
\r_ALU_Result[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~17_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[2]~input_o\ $ (!\i_ALU_sel[1]~input_o\)) # (!\i_ALU_sel[3]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[2]~input_o\) # ((\i_ALU_sel[1]~input_o\) # (\i_ALU_sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[5]~17_combout\);

-- Location: LCCOMB_X30_Y27_N28
\r_ALU_Result[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~18_combout\ = (\r_ALU_Result[5]~17_combout\ & \i_ENABLE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ALU_Result[5]~17_combout\,
	datad => \i_ENABLE~input_o\,
	combout => \r_ALU_Result[5]~18_combout\);

-- Location: FF_X30_Y27_N15
\r_ALU_Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux2~9_combout\,
	ena => \r_ALU_Result[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(5));

-- Location: LCCOMB_X29_Y28_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\i_ALU_B[0]~input_o\ & \i_ALU_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y28_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\i_ALU_B[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\i_ALU_A[1]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (!\i_ALU_A[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y28_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\i_ALU_B[2]~input_o\ & (\i_ALU_A[2]~input_o\ & !\LessThan0~3_cout\)) # (!\i_ALU_B[2]~input_o\ & ((\i_ALU_A[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y28_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\i_ALU_A[3]~input_o\ & (\i_ALU_B[3]~input_o\ & !\LessThan0~5_cout\)) # (!\i_ALU_A[3]~input_o\ & ((\i_ALU_B[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datab => \i_ALU_B[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y28_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\i_ALU_B[4]~input_o\ & (\i_ALU_A[4]~input_o\ & !\LessThan0~7_cout\)) # (!\i_ALU_B[4]~input_o\ & ((\i_ALU_A[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[4]~input_o\,
	datab => \i_ALU_A[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y28_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\i_ALU_B[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\i_ALU_A[5]~input_o\))) # (!\i_ALU_B[5]~input_o\ & (!\i_ALU_A[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y28_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\i_ALU_A[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\i_ALU_B[6]~input_o\))) # (!\i_ALU_A[6]~input_o\ & (!\i_ALU_B[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_B[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y28_N14
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\i_ALU_A[7]~input_o\ & ((\LessThan0~13_cout\) # (!\i_ALU_B[7]~input_o\))) # (!\i_ALU_A[7]~input_o\ & (\LessThan0~13_cout\ & !\i_ALU_B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_B[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X28_Y28_N22
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\r_ALU_Result[5]~15_combout\ & (((\r_ALU_Result[5]~14_combout\)))) # (!\r_ALU_Result[5]~15_combout\ & ((\r_ALU_Result[5]~14_combout\ & (\LessThan0~14_combout\)) # (!\r_ALU_Result[5]~14_combout\ & ((!\i_ALU_A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \r_ALU_Result[5]~15_combout\,
	datac => \i_ALU_A[6]~input_o\,
	datad => \r_ALU_Result[5]~14_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X28_Y28_N4
\Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\r_ALU_Result[5]~15_combout\ & (\i_ALU_B[6]~input_o\ & ((!\i_ALU_A[6]~input_o\) # (!\Mux1~5_combout\)))) # (!\r_ALU_Result[5]~15_combout\ & (\Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \i_ALU_B[6]~input_o\,
	datac => \i_ALU_A[6]~input_o\,
	datad => \r_ALU_Result[5]~15_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X26_Y28_N4
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\r_ALU_Result[5]~21_combout\ & ((\r_ALU_Result[5]~13_combout\ & ((\ShiftLeft0~8_combout\))) # (!\r_ALU_Result[5]~13_combout\ & (\Add1~12_combout\)))) # (!\r_ALU_Result[5]~21_combout\ & (!\r_ALU_Result[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~21_combout\,
	datab => \r_ALU_Result[5]~13_combout\,
	datac => \Add1~12_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X27_Y28_N2
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\r_ALU_Result[5]~12_combout\ & (((\Mux1~2_combout\)))) # (!\r_ALU_Result[5]~12_combout\ & ((\Mux1~2_combout\ & ((\ShiftLeft1~1_combout\))) # (!\Mux1~2_combout\ & (\ShiftLeft1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~12_combout\,
	datab => \ShiftLeft1~0_combout\,
	datac => \Mux1~2_combout\,
	datad => \ShiftLeft1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X27_Y26_N16
\r_ALU_Result~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~19_combout\ = (\i_ALU_A[6]~input_o\) # (\i_ALU_B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_A[6]~input_o\,
	datad => \i_ALU_B[6]~input_o\,
	combout => \r_ALU_Result~19_combout\);

-- Location: LCCOMB_X27_Y26_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_ALU_sel[0]~input_o\ & (((\r_ALU_Result~19_combout\) # (!\r_ALU_Result[5]~11_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (\ShiftRight0~14_combout\ & (\r_ALU_Result[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \ShiftRight0~14_combout\,
	datac => \r_ALU_Result[5]~11_combout\,
	datad => \r_ALU_Result~19_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\i_ALU_A[6]~input_o\ & \i_ALU_B[6]~input_o\)) # (!\i_ALU_sel[1]~input_o\))) # (!\Mux1~0_combout\ & (\i_ALU_sel[1]~input_o\ & (\i_ALU_A[6]~input_o\ $ (\i_ALU_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_B[6]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X28_Y28_N24
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux10~4_combout\ & (\Mux1~3_combout\ & (!\r_ALU_Result[5]~9_combout\))) # (!\Mux10~4_combout\ & (((\r_ALU_Result[5]~9_combout\) # (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux10~4_combout\,
	datac => \r_ALU_Result[5]~9_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_A[6]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \i_ALU_A[6]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X27_Y27_N4
\Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\i_ALU_B[6]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_B[6]~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X27_Y27_N24
\Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28_combout\ & ((\Add0~27_combout\ & (!\Add0~26\)) # (!\Add0~27_combout\ & (\Add0~26\ & VCC)))) # (!\Add0~28_combout\ & ((\Add0~27_combout\ & ((\Add0~26\) # (GND))) # (!\Add0~27_combout\ & (!\Add0~26\))))
-- \Add0~30\ = CARRY((\Add0~28_combout\ & (\Add0~27_combout\ & !\Add0~26\)) # (!\Add0~28_combout\ & ((\Add0~27_combout\) # (!\Add0~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X30_Y27_N18
\Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~4_combout\ & ((\Mux1~6_combout\) # ((!\r_ALU_Result[5]~9_combout\)))) # (!\Mux1~4_combout\ & (((\r_ALU_Result[5]~9_combout\ & \Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux1~4_combout\,
	datac => \r_ALU_Result[5]~9_combout\,
	datad => \Add0~29_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X30_Y27_N24
\Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\r_ALU_Result[5]~16_combout\ & (\i_ALU_A[6]~input_o\)) # (!\r_ALU_Result[5]~16_combout\ & ((\Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~16_combout\,
	datac => \i_ALU_A[6]~input_o\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: FF_X30_Y27_N25
\r_ALU_Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux1~8_combout\,
	ena => \r_ALU_Result[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(6));

-- Location: LCCOMB_X27_Y26_N28
\ShiftRight0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\i_ALU_A[7]~input_o\ & (\Equal2~3_combout\ & (!\i_ALU_B[1]~input_o\ & !\i_ALU_B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \Equal2~3_combout\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X28_Y27_N8
\Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\i_ALU_A[7]~input_o\ & ((\i_ALU_B[7]~input_o\ $ (!\i_ALU_sel[0]~input_o\)) # (!\i_ALU_sel[1]~input_o\))) # (!\i_ALU_A[7]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_B[7]~input_o\ & !\i_ALU_sel[0]~input_o\)) # (!\i_ALU_sel[1]~input_o\ 
-- & ((\i_ALU_B[7]~input_o\) # (!\i_ALU_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[7]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X28_Y27_N10
\Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Mux0~9_combout\ & ((\ShiftRight0~21_combout\) # ((\i_ALU_sel[1]~input_o\) # (\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Mux0~9_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X28_Y27_N20
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\i_ALU_sel[1]~input_o\ & (!\i_ALU_A[7]~input_o\ & (\i_ALU_B[7]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (((r_ALU_Result(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[7]~input_o\,
	datad => r_ALU_Result(7),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X28_Y27_N30
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\i_ALU_A[7]~input_o\)) # (!\i_ALU_sel[1]~input_o\ & ((\Mux0~6_combout\))))) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & ((\Mux0~6_combout\))) # (!\i_ALU_sel[1]~input_o\ & 
-- (\i_ALU_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X28_Y27_N14
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_B[7]~input_o\) # (\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (!\i_ALU_A[7]~input_o\ & ((!\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[7]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\i_ALU_A[7]~input_o\ & (\i_ALU_B[7]~input_o\ & (\i_ALU_A[0]~input_o\ $ (!\i_ALU_B[0]~input_o\)))) # (!\i_ALU_A[7]~input_o\ & (!\i_ALU_B[7]~input_o\ & (\i_ALU_A[0]~input_o\ $ (!\i_ALU_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_B[7]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y28_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\i_ALU_A[6]~input_o\ & (\i_ALU_B[6]~input_o\ & (\i_ALU_A[5]~input_o\ $ (!\i_ALU_B[5]~input_o\)))) # (!\i_ALU_A[6]~input_o\ & (!\i_ALU_B[6]~input_o\ & (\i_ALU_A[5]~input_o\ $ (!\i_ALU_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datac => \i_ALU_B[5]~input_o\,
	datad => \i_ALU_B[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y28_N18
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\r_ALU_Result~4_combout\ & (!\r_ALU_Result~6_combout\ & (!\r_ALU_Result~7_combout\ & !\r_ALU_Result~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result~4_combout\,
	datab => \r_ALU_Result~6_combout\,
	datac => \r_ALU_Result~7_combout\,
	datad => \r_ALU_Result~5_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y28_N8
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y27_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux0~0_combout\ & ((r_ALU_Result(7)))) # (!\Mux0~0_combout\ & (\Equal0~3_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => r_ALU_Result(7),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y26_N22
\ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[2]~input_o\ & (\ShiftLeft0~9_combout\)) # (!\i_ALU_B[2]~input_o\ & ((\ShiftLeft0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X26_Y26_N16
\ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (!\i_ALU_B[2]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[6]~input_o\,
	datab => \i_ALU_A[7]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X26_Y26_N18
\ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (!\i_ALU_B[1]~input_o\ & ((\ShiftLeft0~15_combout\) # ((\ShiftLeft0~10_combout\ & \i_ALU_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \i_ALU_B[2]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \ShiftLeft0~15_combout\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X26_Y26_N30
\ShiftLeft0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (!\i_ALU_B[3]~input_o\ & (\Equal2~0_combout\ & ((\ShiftLeft0~14_combout\) # (\ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X28_Y27_N2
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_A[7]~input_o\))) # (!\i_ALU_sel[1]~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\i_ALU_B[7]~input_o\) # (!\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_B[7]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X27_Y27_N26
\Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \Add0~32_combout\ $ (\Add0~30\ $ (\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => \Add0~31_combout\,
	cin => \Add0~30\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X28_Y27_N26
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\)) # (!\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\ & (\Add0~33_combout\)) # (!\i_ALU_sel[1]~input_o\ & ((r_ALU_Result(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Add0~33_combout\,
	datad => r_ALU_Result(7),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X28_Y27_N16
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\i_ALU_carry~input_o\ & ((\Add0~33_combout\))) # (!\i_ALU_carry~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_carry~input_o\,
	datab => \Add1~14_combout\,
	datac => \Add0~33_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X28_Y27_N12
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux0~3_combout\ & (\ShiftLeft0~18_combout\)) # (!\Mux0~3_combout\ & ((\Mux0~2_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \ShiftLeft0~18_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X28_Y27_N6
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\i_ALU_sel[3]~input_o\ & ((\i_ALU_sel[2]~input_o\) # ((\Mux0~1_combout\)))) # (!\i_ALU_sel[3]~input_o\ & (!\i_ALU_sel[2]~input_o\ & ((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X28_Y27_N28
\Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\i_ALU_sel[2]~input_o\ & ((\Mux0~5_combout\ & ((\Mux0~7_combout\))) # (!\Mux0~5_combout\ & (\Mux0~10_combout\)))) # (!\i_ALU_sel[2]~input_o\ & (((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux0~7_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~8_combout\);

-- Location: FF_X28_Y27_N29
\r_ALU_Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux0~8_combout\,
	ena => \i_ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(7));

-- Location: LCCOMB_X29_Y27_N18
\Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[3]~input_o\ & !\i_ALU_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X28_Y27_N18
\Mux10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\i_ALU_A[7]~input_o\ & (!r_ALU_Result(7) & (\i_ALU_sel[1]~input_o\ $ (\i_ALU_B[7]~input_o\)))) # (!\i_ALU_A[7]~input_o\ & (r_ALU_Result(7) & (\i_ALU_sel[1]~input_o\ $ (!\i_ALU_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[7]~input_o\,
	datad => r_ALU_Result(7),
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X28_Y27_N0
\Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\i_ALU_sel[0]~input_o\ & (\r_ALU_overflow_flag~q\ $ (((!\i_ALU_sel[1]~input_o\ & \Mux10~8_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (\i_ALU_sel[1]~input_o\ & (\r_ALU_overflow_flag~q\ $ (\Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \r_ALU_overflow_flag~q\,
	datad => \Mux10~8_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X28_Y27_N22
\Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\r_ALU_overflow_flag~q\ & ((\Mux10~7_combout\) # ((\Mux10~4_combout\ & !\Mux10~5_combout\)))) # (!\r_ALU_overflow_flag~q\ & (\Mux10~4_combout\ & ((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux10~7_combout\,
	datac => \r_ALU_overflow_flag~q\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: FF_X28_Y27_N23
r_ALU_overflow_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_ENABLE~inputclkctrl_outclk\,
	d => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_overflow_flag~q\);

-- Location: LCCOMB_X28_Y28_N30
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\i_ALU_sel[3]~input_o\) # ((\i_ALU_sel[0]~input_o\ & !\i_ALU_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X27_Y27_N6
\Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\r_ALU_negative_flag~q\ & ((\i_ALU_sel[2]~input_o\ & ((\Mux11~2_combout\))) # (!\i_ALU_sel[2]~input_o\ & (!\i_ALU_sel[1]~input_o\ & !\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux11~2_combout\,
	datad => \r_ALU_negative_flag~q\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X27_Y27_N8
\Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\i_ALU_sel[2]~input_o\ & (((\Mux11~2_combout\ & \r_ALU_negative_flag~q\)))) # (!\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[1]~input_o\ & (!\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux11~2_combout\,
	datad => \r_ALU_negative_flag~q\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X26_Y27_N0
\r_ALU_Result[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~20_combout\ = (\i_ALU_sel[0]~input_o\ & !\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~20_combout\);

-- Location: IOIBUF_X26_Y29_N22
\i_ALU_signed~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_signed,
	o => \i_ALU_signed~input_o\);

-- Location: LCCOMB_X27_Y27_N2
\Mux11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\i_ALU_signed~input_o\ & (!\i_ALU_sel[3]~input_o\ & ((!\i_ALU_sel[2]~input_o\)))) # (!\i_ALU_signed~input_o\ & (((\LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_signed~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \i_ALU_sel[2]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X27_Y27_N0
\Mux11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\i_ALU_signed~input_o\ & (r_ALU_Result(7) & ((\Mux11~7_combout\) # (\Mux11~4_combout\)))) # (!\i_ALU_signed~input_o\ & (\Mux11~7_combout\ & (\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_signed~input_o\,
	datab => \Mux11~7_combout\,
	datac => \Mux11~4_combout\,
	datad => r_ALU_Result(7),
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X27_Y27_N28
\Mux11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~3_combout\ & (((\r_ALU_Result[5]~20_combout\)) # (!\Mux11~4_combout\))) # (!\Mux11~3_combout\ & (\Mux11~5_combout\ & ((\Mux11~4_combout\) # (\r_ALU_Result[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux11~4_combout\,
	datac => \r_ALU_Result[5]~20_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: FF_X27_Y27_N29
r_ALU_negative_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_ENABLE~inputclkctrl_outclk\,
	d => \Mux11~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_negative_flag~q\);

-- Location: LCCOMB_X29_Y27_N26
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!r_ALU_Result(0) & (!r_ALU_Result(3) & (!r_ALU_Result(1) & !r_ALU_Result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ALU_Result(0),
	datab => r_ALU_Result(3),
	datac => r_ALU_Result(1),
	datad => r_ALU_Result(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X29_Y27_N24
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!r_ALU_Result(4) & (!r_ALU_Result(6) & (!r_ALU_Result(5) & !r_ALU_Result(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ALU_Result(4),
	datab => r_ALU_Result(6),
	datac => r_ALU_Result(5),
	datad => r_ALU_Result(7),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X29_Y27_N22
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~0_combout\ & \Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: FF_X29_Y27_N23
r_ALU_zero_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_ENABLE~inputclkctrl_outclk\,
	d => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_zero_flag~q\);

ww_o_ALU_out(0) <= \o_ALU_out[0]~output_o\;

ww_o_ALU_out(1) <= \o_ALU_out[1]~output_o\;

ww_o_ALU_out(2) <= \o_ALU_out[2]~output_o\;

ww_o_ALU_out(3) <= \o_ALU_out[3]~output_o\;

ww_o_ALU_out(4) <= \o_ALU_out[4]~output_o\;

ww_o_ALU_out(5) <= \o_ALU_out[5]~output_o\;

ww_o_ALU_out(6) <= \o_ALU_out[6]~output_o\;

ww_o_ALU_out(7) <= \o_ALU_out[7]~output_o\;

ww_o_ALU_carry_flag <= \o_ALU_carry_flag~output_o\;

ww_o_ALU_overflow_flag <= \o_ALU_overflow_flag~output_o\;

ww_o_ALU_negative_flag <= \o_ALU_negative_flag~output_o\;

ww_o_ALU_zero_flag <= \o_ALU_zero_flag~output_o\;
END structure;


