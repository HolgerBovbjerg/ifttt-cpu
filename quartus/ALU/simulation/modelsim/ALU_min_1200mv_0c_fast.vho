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

-- DATE "04/10/2019 10:15:03"

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
	o_ALU_out : OUT std_logic_vector(7 DOWNTO 0);
	o_ALU_carry_flag : OUT std_logic;
	o_ALU_overflow_flag : OUT std_logic;
	o_ALU_negative_flag : OUT std_logic;
	o_ALU_zero_flag : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- o_ALU_out[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_out[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_carry_flag	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_overflow_flag	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_negative_flag	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_zero_flag	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_sel[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[0]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_B[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[4]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[7]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_A[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_signed	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_o_ALU_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_ALU_carry_flag : std_logic;
SIGNAL ww_o_ALU_overflow_flag : std_logic;
SIGNAL ww_o_ALU_negative_flag : std_logic;
SIGNAL ww_o_ALU_zero_flag : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \i_ALU_sel[2]~input_o\ : std_logic;
SIGNAL \i_ALU_sel[0]~input_o\ : std_logic;
SIGNAL \i_ALU_sel[1]~input_o\ : std_logic;
SIGNAL \i_ALU_sel[3]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \r_ALU_Result[7]~2_combout\ : std_logic;
SIGNAL \i_ALU_B[2]~input_o\ : std_logic;
SIGNAL \i_ALU_B[0]~input_o\ : std_logic;
SIGNAL \i_ALU_B[1]~input_o\ : std_logic;
SIGNAL \r_ALU_Result[7]~6_combout\ : std_logic;
SIGNAL \i_ALU_A[7]~input_o\ : std_logic;
SIGNAL \i_ALU_A[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \i_ALU_A[6]~input_o\ : std_logic;
SIGNAL \i_ALU_A[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \i_ALU_A[0]~input_o\ : std_logic;
SIGNAL \r_ALU_Result[0]~7_combout\ : std_logic;
SIGNAL \i_ALU_A[2]~input_o\ : std_logic;
SIGNAL \i_ALU_A[3]~input_o\ : std_logic;
SIGNAL \r_ALU_Result[0]~4_combout\ : std_logic;
SIGNAL \i_ALU_A[1]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~5_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~8_combout\ : std_logic;
SIGNAL \i_ALU_B[3]~input_o\ : std_logic;
SIGNAL \i_ALU_B[6]~input_o\ : std_logic;
SIGNAL \i_ALU_B[7]~input_o\ : std_logic;
SIGNAL \i_ALU_B[5]~input_o\ : std_logic;
SIGNAL \i_ALU_B[4]~input_o\ : std_logic;
SIGNAL \tmp[8]~0_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~3_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~10_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~11_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~12_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~13_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~16_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~15_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~14_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~18_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~19_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~20_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~21_combout\ : std_logic;
SIGNAL \r_ALU_Result[1]~22_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~29_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~23_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~24_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~25_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~26_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~27_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~28_combout\ : std_logic;
SIGNAL \r_ALU_Result[2]~30_combout\ : std_logic;
SIGNAL \r_ALU_Result[0]~32_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~33_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~31_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~34_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~36_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~37_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~38_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~39_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~40_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~41_combout\ : std_logic;
SIGNAL \r_ALU_Result[3]~42_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~43_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~44_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~45_combout\ : std_logic;
SIGNAL \ShiftLeft1~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~46_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~47_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~48_combout\ : std_logic;
SIGNAL \r_ALU_Result~50_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \r_ALU_Result~49_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~51_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~52_combout\ : std_logic;
SIGNAL \r_ALU_Result[4]~53_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~55_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~56_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \r_ALU_Result~54_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~73_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~58_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~59_combout\ : std_logic;
SIGNAL \r_ALU_Result[5]~60_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \r_ALU_Result~61_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \ShiftLeft1~1_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~70_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~66_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~67_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~64_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~65_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~63_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~69_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~71_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~62_combout\ : std_logic;
SIGNAL \r_ALU_Result[7]~72_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \r_ALU_carry_flag~1_combout\ : std_logic;
SIGNAL \r_ALU_carry_flag~0_combout\ : std_logic;
SIGNAL \tmp[8]~1_combout\ : std_logic;
SIGNAL \tmp[8]~2_combout\ : std_logic;
SIGNAL \tmp[8]~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \tmp[8]~4_combout\ : std_logic;
SIGNAL \tmp[8]~5_combout\ : std_logic;
SIGNAL \r_ALU_carry_flag~2_combout\ : std_logic;
SIGNAL \r_ALU_carry_flag~q\ : std_logic;
SIGNAL \r_ALU_overflow_flag~0_combout\ : std_logic;
SIGNAL \r_ALU_overflow_flag~1_combout\ : std_logic;
SIGNAL \r_ALU_overflow_flag~2_combout\ : std_logic;
SIGNAL \r_ALU_overflow_flag~q\ : std_logic;
SIGNAL \i_ALU_signed~input_o\ : std_logic;
SIGNAL \r_ALU_negative_flag~0_combout\ : std_logic;
SIGNAL \r_ALU_negative_flag~1_combout\ : std_logic;
SIGNAL \r_ALU_negative_flag~q\ : std_logic;
SIGNAL \r_ALU_zero_flag~1_combout\ : std_logic;
SIGNAL \r_ALU_zero_flag~0_combout\ : std_logic;
SIGNAL \r_ALU_zero_flag~2_combout\ : std_logic;
SIGNAL \r_ALU_zero_flag~q\ : std_logic;
SIGNAL tmp : std_logic_vector(8 DOWNTO 0);
SIGNAL r_ALU_Result : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_ENABLE <= i_ENABLE;
ww_i_ALU_A <= i_ALU_A;
ww_i_ALU_B <= i_ALU_B;
ww_i_ALU_sel <= i_ALU_sel;
ww_i_ALU_signed <= i_ALU_signed;
o_ALU_out <= ww_o_ALU_out;
o_ALU_carry_flag <= ww_o_ALU_carry_flag;
o_ALU_overflow_flag <= ww_o_ALU_overflow_flag;
o_ALU_negative_flag <= ww_o_ALU_negative_flag;
o_ALU_zero_flag <= ww_o_ALU_zero_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X41_Y12_N9
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

-- Location: IOOBUF_X41_Y12_N23
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

-- Location: IOOBUF_X39_Y0_N30
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

-- Location: IOOBUF_X39_Y0_N23
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

-- Location: IOOBUF_X41_Y12_N16
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

-- Location: IOOBUF_X41_Y4_N9
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

-- Location: IOOBUF_X41_Y3_N23
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

-- Location: IOOBUF_X41_Y8_N23
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

-- Location: IOOBUF_X41_Y5_N23
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

-- Location: IOOBUF_X41_Y4_N2
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

-- Location: IOOBUF_X37_Y0_N23
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

-- Location: IOOBUF_X41_Y12_N2
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

-- Location: IOIBUF_X41_Y5_N15
\i_ALU_sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(2),
	o => \i_ALU_sel[2]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\i_ALU_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(0),
	o => \i_ALU_sel[0]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\i_ALU_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(1),
	o => \i_ALU_sel[1]~input_o\);

-- Location: IOIBUF_X41_Y6_N22
\i_ALU_sel[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_sel(3),
	o => \i_ALU_sel[3]~input_o\);

-- Location: LCCOMB_X40_Y8_N18
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[2]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (\i_ALU_sel[3]~input_o\ & ((\i_ALU_sel[2]~input_o\) # (!\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X41_Y8_N8
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: LCCOMB_X40_Y8_N4
\r_ALU_Result[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~2_combout\ = (!\i_ALU_sel[2]~input_o\ & (!\Mux7~0_combout\ & \i_ENABLE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \Mux7~0_combout\,
	datad => \i_ENABLE~input_o\,
	combout => \r_ALU_Result[7]~2_combout\);

-- Location: IOIBUF_X41_Y7_N22
\i_ALU_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(2),
	o => \i_ALU_B[2]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\i_ALU_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(0),
	o => \i_ALU_B[0]~input_o\);

-- Location: IOIBUF_X41_Y8_N1
\i_ALU_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(1),
	o => \i_ALU_B[1]~input_o\);

-- Location: LCCOMB_X39_Y9_N4
\r_ALU_Result[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~6_combout\ = (!\i_ALU_B[0]~input_o\ & !\i_ALU_B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	combout => \r_ALU_Result[7]~6_combout\);

-- Location: IOIBUF_X41_Y10_N1
\i_ALU_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(7),
	o => \i_ALU_A[7]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\i_ALU_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(5),
	o => \i_ALU_A[5]~input_o\);

-- Location: LCCOMB_X39_Y9_N12
\ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\i_ALU_B[1]~input_o\ & (\i_ALU_A[7]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \ShiftRight0~1_combout\);

-- Location: IOIBUF_X41_Y10_N15
\i_ALU_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(6),
	o => \i_ALU_A[6]~input_o\);

-- Location: IOIBUF_X41_Y7_N1
\i_ALU_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(4),
	o => \i_ALU_A[4]~input_o\);

-- Location: LCCOMB_X39_Y9_N2
\ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & (\i_ALU_A[6]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[6]~input_o\,
	datad => \i_ALU_A[4]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X39_Y9_N26
\ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\ShiftRight0~0_combout\) # ((\ShiftRight0~1_combout\ & \i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~2_combout\);

-- Location: IOIBUF_X41_Y3_N15
\i_ALU_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(0),
	o => \i_ALU_A[0]~input_o\);

-- Location: LCCOMB_X38_Y7_N20
\r_ALU_Result[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~7_combout\ = (\i_ALU_B[2]~input_o\ & (((\ShiftRight0~2_combout\)))) # (!\i_ALU_B[2]~input_o\ & (\r_ALU_Result[7]~6_combout\ & ((\i_ALU_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \r_ALU_Result[7]~6_combout\,
	datac => \ShiftRight0~2_combout\,
	datad => \i_ALU_A[0]~input_o\,
	combout => \r_ALU_Result[0]~7_combout\);

-- Location: IOIBUF_X41_Y10_N8
\i_ALU_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(2),
	o => \i_ALU_A[2]~input_o\);

-- Location: IOIBUF_X41_Y7_N8
\i_ALU_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(3),
	o => \i_ALU_A[3]~input_o\);

-- Location: LCCOMB_X39_Y7_N12
\r_ALU_Result[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~4_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[3]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[3]~input_o\,
	combout => \r_ALU_Result[0]~4_combout\);

-- Location: IOIBUF_X41_Y8_N15
\i_ALU_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_A(1),
	o => \i_ALU_A[1]~input_o\);

-- Location: LCCOMB_X38_Y7_N28
\ShiftLeft0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\i_ALU_B[0]~input_o\ & (!\i_ALU_B[1]~input_o\ & \i_ALU_A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X38_Y7_N22
\r_ALU_Result[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~5_combout\ = (!\i_ALU_B[2]~input_o\ & ((\r_ALU_Result[0]~4_combout\) # (\ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ALU_Result[0]~4_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \r_ALU_Result[0]~5_combout\);

-- Location: LCCOMB_X38_Y7_N26
\r_ALU_Result[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~8_combout\ = (\r_ALU_Result[0]~7_combout\ & (((\i_ALU_sel[0]~input_o\)) # (!\i_ALU_B[2]~input_o\))) # (!\r_ALU_Result[0]~7_combout\ & (((\r_ALU_Result[0]~5_combout\ & \i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \r_ALU_Result[0]~7_combout\,
	datac => \r_ALU_Result[0]~5_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[0]~8_combout\);

-- Location: IOIBUF_X41_Y7_N15
\i_ALU_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(3),
	o => \i_ALU_B[3]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\i_ALU_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(6),
	o => \i_ALU_B[6]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\i_ALU_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(7),
	o => \i_ALU_B[7]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\i_ALU_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(5),
	o => \i_ALU_B[5]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\i_ALU_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_B(4),
	o => \i_ALU_B[4]~input_o\);

-- Location: LCCOMB_X40_Y7_N28
\tmp[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~0_combout\ = (!\i_ALU_B[6]~input_o\ & (!\i_ALU_B[7]~input_o\ & (!\i_ALU_B[5]~input_o\ & !\i_ALU_B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_B[7]~input_o\,
	datac => \i_ALU_B[5]~input_o\,
	datad => \i_ALU_B[4]~input_o\,
	combout => \tmp[8]~0_combout\);

-- Location: LCCOMB_X39_Y8_N6
\r_ALU_Result[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~3_combout\ = (!\i_ALU_B[3]~input_o\ & (\i_ALU_sel[3]~input_o\ & (\i_ALU_sel[1]~input_o\ & \tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \tmp[8]~0_combout\,
	combout => \r_ALU_Result[0]~3_combout\);

-- Location: LCCOMB_X40_Y8_N30
\r_ALU_Result[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~9_combout\ = (!\Mux7~0_combout\ & \i_ENABLE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datad => \i_ENABLE~input_o\,
	combout => \r_ALU_Result[0]~9_combout\);

-- Location: LCCOMB_X37_Y7_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\i_ALU_A[0]~input_o\ & (\i_ALU_B[0]~input_o\ $ (VCC))) # (!\i_ALU_A[0]~input_o\ & (\i_ALU_B[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\i_ALU_A[0]~input_o\ & \i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X40_Y7_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[0]~input_o\ $ (VCC))) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\i_ALU_A[0]~input_o\) # (!\i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X39_Y7_N30
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_B[0]~input_o\) # (\i_ALU_A[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Add1~0_combout\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X38_Y7_N12
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Add0~0_combout\ & ((\Mux7~1_combout\) # (\i_ALU_sel[1]~input_o\ $ (!\i_ALU_sel[0]~input_o\)))) # (!\Add0~0_combout\ & (\Mux7~1_combout\ & (\i_ALU_sel[1]~input_o\ $ (\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Mux7~1_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X38_Y7_N30
\r_ALU_Result[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~10_combout\ = (\i_ALU_A[0]~input_o\ & (\i_ALU_B[0]~input_o\ & !\i_ALU_sel[0]~input_o\)) # (!\i_ALU_A[0]~input_o\ & ((\i_ALU_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[0]~10_combout\);

-- Location: LCCOMB_X38_Y7_N24
\r_ALU_Result[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~11_combout\ = (\i_ALU_sel[2]~input_o\ & (((\r_ALU_Result[0]~10_combout\ & !\i_ALU_sel[1]~input_o\)))) # (!\i_ALU_sel[2]~input_o\ & (\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \r_ALU_Result[0]~10_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[0]~11_combout\);

-- Location: LCCOMB_X39_Y8_N0
\r_ALU_Result[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~12_combout\ = (\r_ALU_Result[0]~9_combout\ & (!\i_ALU_sel[3]~input_o\ & (\r_ALU_Result[0]~11_combout\))) # (!\r_ALU_Result[0]~9_combout\ & (((r_ALU_Result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \i_ALU_sel[3]~input_o\,
	datac => \r_ALU_Result[0]~11_combout\,
	datad => r_ALU_Result(0),
	combout => \r_ALU_Result[0]~12_combout\);

-- Location: LCCOMB_X39_Y8_N28
\r_ALU_Result[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~13_combout\ = (\r_ALU_Result[0]~12_combout\) # ((\r_ALU_Result[7]~2_combout\ & (\r_ALU_Result[0]~8_combout\ & \r_ALU_Result[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~2_combout\,
	datab => \r_ALU_Result[0]~8_combout\,
	datac => \r_ALU_Result[0]~3_combout\,
	datad => \r_ALU_Result[0]~12_combout\,
	combout => \r_ALU_Result[0]~13_combout\);

-- Location: FF_X39_Y8_N29
\r_ALU_Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(0));

-- Location: LCCOMB_X40_Y7_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\ & (!\Add1~1\)) # (!\i_ALU_A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\i_ALU_A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\i_ALU_B[1]~input_o\ & ((!\Add1~1\) # (!\i_ALU_A[1]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (!\i_ALU_A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X37_Y7_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\i_ALU_A[1]~input_o\ & (!\Add0~1\)))) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\ & (!\Add0~1\)) # (!\i_ALU_A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\i_ALU_B[1]~input_o\ & (!\i_ALU_A[1]~input_o\ & !\Add0~1\)) # (!\i_ALU_B[1]~input_o\ & ((!\Add0~1\) # (!\i_ALU_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X39_Y7_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\ & (\Add1~2_combout\)) # (!\i_ALU_sel[0]~input_o\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Add1~2_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X39_Y7_N22
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[1]~input_o\ & ((!\i_ALU_A[1]~input_o\) # (!\Mux6~0_combout\))) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X39_Y9_N28
\ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\ & (!\i_ALU_B[1]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (((\ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \ShiftRight0~1_combout\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X39_Y9_N16
\r_ALU_Result[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~16_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & ((\i_ALU_A[4]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[2]~input_o\,
	datad => \i_ALU_A[4]~input_o\,
	combout => \r_ALU_Result[1]~16_combout\);

-- Location: LCCOMB_X39_Y9_N22
\r_ALU_Result[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~15_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & (\i_ALU_A[3]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \r_ALU_Result[1]~15_combout\);

-- Location: LCCOMB_X39_Y9_N6
\r_ALU_Result[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~17_combout\ = (\i_ALU_B[2]~input_o\ & (\ShiftRight0~3_combout\)) # (!\i_ALU_B[2]~input_o\ & (((\r_ALU_Result[1]~16_combout\) # (\r_ALU_Result[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datab => \r_ALU_Result[1]~16_combout\,
	datac => \r_ALU_Result[1]~15_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[1]~17_combout\);

-- Location: LCCOMB_X38_Y9_N4
\ShiftLeft0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[0]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[1]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X38_Y9_N22
\r_ALU_Result[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~14_combout\ = (!\i_ALU_B[1]~input_o\ & (\ShiftLeft0~1_combout\ & (!\i_ALU_B[2]~input_o\ & !\i_ALU_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \ShiftLeft0~1_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[1]~14_combout\);

-- Location: LCCOMB_X38_Y9_N20
\r_ALU_Result[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~18_combout\ = (\r_ALU_Result[0]~3_combout\ & ((\r_ALU_Result[1]~14_combout\) # ((\r_ALU_Result[1]~17_combout\ & \i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[1]~17_combout\,
	datab => \r_ALU_Result[0]~3_combout\,
	datac => \r_ALU_Result[1]~14_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[1]~18_combout\);

-- Location: LCCOMB_X39_Y8_N18
\r_ALU_Result[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~19_combout\ = (\r_ALU_Result[7]~2_combout\ & ((\r_ALU_Result[1]~18_combout\) # ((\Mux6~1_combout\ & !\i_ALU_sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \r_ALU_Result[1]~18_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[1]~19_combout\);

-- Location: LCCOMB_X40_Y8_N28
\r_ALU_Result[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~20_combout\ = (\i_ALU_sel[2]~input_o\ & (!\i_ALU_sel[1]~input_o\ & (\r_ALU_Result[0]~9_combout\ & !\i_ALU_sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[2]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \r_ALU_Result[0]~9_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[7]~20_combout\);

-- Location: LCCOMB_X39_Y7_N4
\r_ALU_Result[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~21_combout\ = (\r_ALU_Result[7]~20_combout\ & ((\i_ALU_sel[0]~input_o\ & ((!\i_ALU_A[1]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & (\i_ALU_B[1]~input_o\ & \i_ALU_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \r_ALU_Result[7]~20_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \r_ALU_Result[1]~21_combout\);

-- Location: LCCOMB_X39_Y8_N10
\r_ALU_Result[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[1]~22_combout\ = (\r_ALU_Result[1]~19_combout\) # ((\r_ALU_Result[1]~21_combout\) # ((!\r_ALU_Result[0]~9_combout\ & r_ALU_Result(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[1]~19_combout\,
	datac => r_ALU_Result(1),
	datad => \r_ALU_Result[1]~21_combout\,
	combout => \r_ALU_Result[1]~22_combout\);

-- Location: FF_X39_Y8_N11
\r_ALU_Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(1));

-- Location: LCCOMB_X40_Y8_N10
\r_ALU_Result[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~29_combout\ = (\r_ALU_Result[7]~20_combout\ & ((\i_ALU_sel[0]~input_o\ & ((!\i_ALU_A[2]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & (\i_ALU_B[2]~input_o\ & \i_ALU_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \r_ALU_Result[7]~20_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \r_ALU_Result[2]~29_combout\);

-- Location: LCCOMB_X40_Y7_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\i_ALU_A[2]~input_o\ $ (\i_ALU_B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\i_ALU_A[2]~input_o\ & ((!\Add1~3\) # (!\i_ALU_B[2]~input_o\))) # (!\i_ALU_A[2]~input_o\ & (!\i_ALU_B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[2]~input_o\,
	datab => \i_ALU_B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X37_Y7_N0
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[2]~input_o\ & ((!\i_ALU_A[2]~input_o\) # (!\i_ALU_sel[0]~input_o\))) # (!\i_ALU_B[2]~input_o\ & ((\i_ALU_A[2]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (\i_ALU_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X37_Y7_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\i_ALU_A[2]~input_o\ $ (\i_ALU_B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\i_ALU_A[2]~input_o\ & ((\i_ALU_B[2]~input_o\) # (!\Add0~3\))) # (!\i_ALU_A[2]~input_o\ & (\i_ALU_B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[2]~input_o\,
	datab => \i_ALU_B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X37_Y7_N6
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\Add1~4_combout\) # ((\i_ALU_sel[1]~input_o\)))) # (!\Mux5~0_combout\ & (((\Add0~4_combout\ & !\i_ALU_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Mux5~0_combout\,
	datac => \Add0~4_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X38_Y9_N26
\ShiftLeft0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & (\i_ALU_A[0]~input_o\)) # (!\i_ALU_B[1]~input_o\ & ((\i_ALU_A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X38_Y9_N0
\r_ALU_Result[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~23_combout\ = (!\i_ALU_B[2]~input_o\ & (!\i_ALU_sel[0]~input_o\ & ((\ShiftLeft0~2_combout\) # (\ShiftLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[2]~23_combout\);

-- Location: LCCOMB_X39_Y9_N10
\r_ALU_Result[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~24_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & ((\i_ALU_A[5]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \r_ALU_Result[2]~24_combout\);

-- Location: LCCOMB_X39_Y9_N0
\ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (!\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[7]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X39_Y9_N8
\r_ALU_Result[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~25_combout\ = (!\i_ALU_B[0]~input_o\ & ((\i_ALU_B[1]~input_o\ & ((\i_ALU_A[4]~input_o\))) # (!\i_ALU_B[1]~input_o\ & (\i_ALU_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[2]~input_o\,
	datad => \i_ALU_A[4]~input_o\,
	combout => \r_ALU_Result[2]~25_combout\);

-- Location: LCCOMB_X39_Y9_N18
\r_ALU_Result[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~26_combout\ = (\i_ALU_B[2]~input_o\ & (((\ShiftRight0~4_combout\)))) # (!\i_ALU_B[2]~input_o\ & ((\r_ALU_Result[2]~24_combout\) # ((\r_ALU_Result[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[2]~24_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \r_ALU_Result[2]~25_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[2]~26_combout\);

-- Location: LCCOMB_X38_Y9_N30
\r_ALU_Result[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~27_combout\ = (\r_ALU_Result[0]~3_combout\ & ((\r_ALU_Result[2]~23_combout\) # ((\r_ALU_Result[2]~26_combout\ & \i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[2]~23_combout\,
	datab => \r_ALU_Result[2]~26_combout\,
	datac => \r_ALU_Result[0]~3_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[2]~27_combout\);

-- Location: LCCOMB_X38_Y7_N10
\r_ALU_Result[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~28_combout\ = (\r_ALU_Result[7]~2_combout\ & ((\r_ALU_Result[2]~27_combout\) # ((!\i_ALU_sel[3]~input_o\ & \Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datab => \r_ALU_Result[7]~2_combout\,
	datac => \Mux5~1_combout\,
	datad => \r_ALU_Result[2]~27_combout\,
	combout => \r_ALU_Result[2]~28_combout\);

-- Location: LCCOMB_X39_Y8_N12
\r_ALU_Result[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[2]~30_combout\ = (\r_ALU_Result[2]~29_combout\) # ((\r_ALU_Result[2]~28_combout\) # ((!\r_ALU_Result[0]~9_combout\ & r_ALU_Result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[2]~29_combout\,
	datac => r_ALU_Result(2),
	datad => \r_ALU_Result[2]~28_combout\,
	combout => \r_ALU_Result[2]~30_combout\);

-- Location: FF_X39_Y8_N13
\r_ALU_Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(2));

-- Location: LCCOMB_X40_Y9_N10
\r_ALU_Result[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[0]~32_combout\ = (\i_ALU_sel[1]~input_o\ & (\tmp[8]~0_combout\ & !\i_ALU_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[1]~input_o\,
	datac => \tmp[8]~0_combout\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \r_ALU_Result[0]~32_combout\);

-- Location: LCCOMB_X40_Y9_N12
\r_ALU_Result[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~33_combout\ = (\r_ALU_Result[0]~32_combout\ & (\i_ALU_B[2]~input_o\ & \i_ALU_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~32_combout\,
	datab => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \r_ALU_Result[3]~33_combout\);

-- Location: LCCOMB_X40_Y9_N0
\r_ALU_Result[3]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~31_combout\ = (!\i_ALU_B[0]~input_o\ & (\i_ALU_sel[0]~input_o\ & !\i_ALU_B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \r_ALU_Result[3]~31_combout\);

-- Location: LCCOMB_X40_Y9_N14
\r_ALU_Result[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~34_combout\ = (!\i_ALU_B[3]~input_o\ & (\tmp[8]~0_combout\ & !\i_ALU_B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datac => \tmp[8]~0_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[3]~34_combout\);

-- Location: LCCOMB_X40_Y9_N16
\r_ALU_Result[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~35_combout\ = (\r_ALU_Result[3]~31_combout\ & ((\r_ALU_Result[3]~33_combout\) # ((\r_ALU_Result[3]~34_combout\ & !\i_ALU_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[3]~33_combout\,
	datab => \r_ALU_Result[3]~31_combout\,
	datac => \r_ALU_Result[3]~34_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[3]~35_combout\);

-- Location: LCCOMB_X38_Y9_N16
\ShiftLeft0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[2]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_A[2]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X38_Y9_N18
\ShiftLeft0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\i_ALU_B[1]~input_o\ & ((\ShiftLeft0~1_combout\))) # (!\i_ALU_B[1]~input_o\ & (\ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~3_combout\,
	datac => \ShiftLeft0~1_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X39_Y9_N20
\r_ALU_Result[3]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~36_combout\ = (!\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[4]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[4]~input_o\,
	combout => \r_ALU_Result[3]~36_combout\);

-- Location: LCCOMB_X39_Y9_N30
\r_ALU_Result[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~37_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\i_ALU_A[6]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_B[1]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \r_ALU_Result[3]~37_combout\);

-- Location: LCCOMB_X40_Y9_N22
\r_ALU_Result[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~38_combout\ = (\i_ALU_sel[0]~input_o\ & (((\r_ALU_Result[3]~36_combout\) # (\r_ALU_Result[3]~37_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \r_ALU_Result[3]~36_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \r_ALU_Result[3]~37_combout\,
	combout => \r_ALU_Result[3]~38_combout\);

-- Location: LCCOMB_X40_Y9_N8
\r_ALU_Result[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~39_combout\ = (\r_ALU_Result[3]~35_combout\) # ((\r_ALU_Result[0]~32_combout\ & (\r_ALU_Result[3]~38_combout\ & !\i_ALU_B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~32_combout\,
	datab => \r_ALU_Result[3]~35_combout\,
	datac => \r_ALU_Result[3]~38_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \r_ALU_Result[3]~39_combout\);

-- Location: LCCOMB_X40_Y7_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\i_ALU_A[3]~input_o\ & ((\i_ALU_B[3]~input_o\ & (!\Add1~5\)) # (!\i_ALU_B[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\i_ALU_A[3]~input_o\ & ((\i_ALU_B[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\i_ALU_B[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\i_ALU_A[3]~input_o\ & (\i_ALU_B[3]~input_o\ & !\Add1~5\)) # (!\i_ALU_A[3]~input_o\ & ((\i_ALU_B[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datab => \i_ALU_B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y7_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i_ALU_B[3]~input_o\ & ((\i_ALU_A[3]~input_o\ & (\Add0~5\ & VCC)) # (!\i_ALU_A[3]~input_o\ & (!\Add0~5\)))) # (!\i_ALU_B[3]~input_o\ & ((\i_ALU_A[3]~input_o\ & (!\Add0~5\)) # (!\i_ALU_A[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\i_ALU_B[3]~input_o\ & (!\i_ALU_A[3]~input_o\ & !\Add0~5\)) # (!\i_ALU_B[3]~input_o\ & ((!\Add0~5\) # (!\i_ALU_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X40_Y7_N30
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\ & (\Add1~6_combout\)) # (!\i_ALU_sel[0]~input_o\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Add1~6_combout\,
	datac => \Add0~6_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X40_Y9_N30
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_A[3]~input_o\ & ((!\i_ALU_B[3]~input_o\) # (!\Mux4~0_combout\))) # (!\i_ALU_A[3]~input_o\ & ((\i_ALU_B[3]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X40_Y8_N12
\r_ALU_Result[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~40_combout\ = (\r_ALU_Result[7]~2_combout\ & ((\i_ALU_sel[3]~input_o\ & (\r_ALU_Result[3]~39_combout\)) # (!\i_ALU_sel[3]~input_o\ & ((\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[3]~39_combout\,
	datab => \r_ALU_Result[7]~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[3]~40_combout\);

-- Location: LCCOMB_X40_Y8_N22
\r_ALU_Result[3]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~41_combout\ = (\r_ALU_Result[7]~20_combout\ & ((\i_ALU_A[3]~input_o\ & (\i_ALU_B[3]~input_o\ & !\i_ALU_sel[0]~input_o\)) # (!\i_ALU_A[3]~input_o\ & ((\i_ALU_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \r_ALU_Result[7]~20_combout\,
	datac => \i_ALU_A[3]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[3]~41_combout\);

-- Location: LCCOMB_X39_Y8_N22
\r_ALU_Result[3]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[3]~42_combout\ = (\r_ALU_Result[3]~40_combout\) # ((\r_ALU_Result[3]~41_combout\) # ((!\r_ALU_Result[0]~9_combout\ & r_ALU_Result(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[3]~40_combout\,
	datac => r_ALU_Result(3),
	datad => \r_ALU_Result[3]~41_combout\,
	combout => \r_ALU_Result[3]~42_combout\);

-- Location: FF_X39_Y8_N23
\r_ALU_Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(3));

-- Location: LCCOMB_X40_Y7_N8
\r_ALU_Result[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~43_combout\ = (!\i_ALU_A[2]~input_o\ & (!\i_ALU_A[0]~input_o\ & (!\i_ALU_A[1]~input_o\ & \i_ALU_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[2]~input_o\,
	datab => \i_ALU_A[0]~input_o\,
	datac => \i_ALU_A[1]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[4]~43_combout\);

-- Location: LCCOMB_X40_Y7_N2
\r_ALU_Result[4]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~44_combout\ = (!\i_ALU_A[3]~input_o\ & (!\i_ALU_A[6]~input_o\ & (!\i_ALU_A[4]~input_o\ & !\i_ALU_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \r_ALU_Result[4]~44_combout\);

-- Location: LCCOMB_X40_Y7_N4
\r_ALU_Result[4]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~45_combout\ = (!\i_ALU_sel[1]~input_o\ & (\r_ALU_Result[4]~43_combout\ & (!\i_ALU_A[7]~input_o\ & \r_ALU_Result[4]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \r_ALU_Result[4]~43_combout\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \r_ALU_Result[4]~44_combout\,
	combout => \r_ALU_Result[4]~45_combout\);

-- Location: LCCOMB_X39_Y7_N8
\ShiftLeft1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~0_combout\ = (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[3]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[3]~input_o\,
	combout => \ShiftLeft1~0_combout\);

-- Location: LCCOMB_X39_Y7_N26
\ShiftLeft0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[1]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_B[0]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X39_Y7_N18
\ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\ShiftLeft0~5_combout\) # ((!\i_ALU_B[1]~input_o\ & \ShiftLeft1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \ShiftLeft1~0_combout\,
	datac => \ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X38_Y7_N8
\r_ALU_Result[4]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~46_combout\ = (\i_ALU_B[2]~input_o\ & (((\r_ALU_Result[7]~6_combout\ & \i_ALU_A[0]~input_o\)))) # (!\i_ALU_B[2]~input_o\ & (\ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \ShiftLeft0~6_combout\,
	datac => \r_ALU_Result[7]~6_combout\,
	datad => \i_ALU_A[0]~input_o\,
	combout => \r_ALU_Result[4]~46_combout\);

-- Location: LCCOMB_X38_Y7_N14
\r_ALU_Result[4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~47_combout\ = (\i_ALU_sel[0]~input_o\ & (!\i_ALU_B[2]~input_o\ & (\ShiftRight0~2_combout\))) # (!\i_ALU_sel[0]~input_o\ & (((\r_ALU_Result[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \ShiftRight0~2_combout\,
	datac => \r_ALU_Result[4]~46_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[4]~47_combout\);

-- Location: LCCOMB_X39_Y7_N20
\r_ALU_Result[4]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~48_combout\ = (\i_ALU_sel[3]~input_o\ & ((\r_ALU_Result[4]~45_combout\) # ((\r_ALU_Result[0]~32_combout\ & \r_ALU_Result[4]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[4]~45_combout\,
	datab => \r_ALU_Result[0]~32_combout\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \r_ALU_Result[4]~47_combout\,
	combout => \r_ALU_Result[4]~48_combout\);

-- Location: LCCOMB_X39_Y7_N28
\r_ALU_Result~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~50_combout\ = \i_ALU_A[4]~input_o\ $ (\i_ALU_B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datac => \i_ALU_B[4]~input_o\,
	combout => \r_ALU_Result~50_combout\);

-- Location: LCCOMB_X37_Y7_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\i_ALU_B[4]~input_o\ $ (\i_ALU_A[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\i_ALU_B[4]~input_o\ & ((\i_ALU_A[4]~input_o\) # (!\Add0~7\))) # (!\i_ALU_B[4]~input_o\ & (\i_ALU_A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[4]~input_o\,
	datab => \i_ALU_A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X39_Y7_N10
\r_ALU_Result~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~49_combout\ = (\i_ALU_A[4]~input_o\) # (\i_ALU_B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datac => \i_ALU_B[4]~input_o\,
	combout => \r_ALU_Result~49_combout\);

-- Location: LCCOMB_X38_Y7_N16
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\r_ALU_Result~49_combout\) # (\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (\Add0~8_combout\ & ((!\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \r_ALU_Result~49_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X40_Y7_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\i_ALU_B[4]~input_o\ $ (\i_ALU_A[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\i_ALU_B[4]~input_o\ & (\i_ALU_A[4]~input_o\ & !\Add1~7\)) # (!\i_ALU_B[4]~input_o\ & ((\i_ALU_A[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[4]~input_o\,
	datab => \i_ALU_A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X39_Y7_N6
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_ALU_sel[0]~input_o\ & ((\Mux3~0_combout\ & (\r_ALU_Result~50_combout\)) # (!\Mux3~0_combout\ & ((\Add1~8_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \r_ALU_Result~50_combout\,
	datac => \Mux3~0_combout\,
	datad => \Add1~8_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X39_Y7_N0
\r_ALU_Result[4]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~51_combout\ = (\r_ALU_Result[7]~2_combout\ & ((\r_ALU_Result[4]~48_combout\) # ((!\i_ALU_sel[3]~input_o\ & \Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~2_combout\,
	datab => \r_ALU_Result[4]~48_combout\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \r_ALU_Result[4]~51_combout\);

-- Location: LCCOMB_X40_Y8_N16
\r_ALU_Result[4]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~52_combout\ = (\r_ALU_Result[7]~20_combout\ & ((\i_ALU_A[4]~input_o\ & (\i_ALU_B[4]~input_o\ & !\i_ALU_sel[0]~input_o\)) # (!\i_ALU_A[4]~input_o\ & ((\i_ALU_sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[4]~input_o\,
	datab => \r_ALU_Result[7]~20_combout\,
	datac => \i_ALU_B[4]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[4]~52_combout\);

-- Location: LCCOMB_X39_Y8_N16
\r_ALU_Result[4]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[4]~53_combout\ = (\r_ALU_Result[4]~51_combout\) # ((\r_ALU_Result[4]~52_combout\) # ((!\r_ALU_Result[0]~9_combout\ & r_ALU_Result(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[4]~51_combout\,
	datac => r_ALU_Result(4),
	datad => \r_ALU_Result[4]~52_combout\,
	combout => \r_ALU_Result[4]~53_combout\);

-- Location: FF_X39_Y8_N17
\r_ALU_Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(4));

-- Location: LCCOMB_X38_Y8_N10
\r_ALU_Result[5]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~55_combout\ = (\i_ALU_sel[2]~input_o\) # ((\i_ALU_sel[3]~input_o\ & \i_ALU_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[3]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[5]~55_combout\);

-- Location: LCCOMB_X37_Y8_N16
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\i_ALU_A[0]~input_o\ & \i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y8_N18
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\i_ALU_A[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\i_ALU_B[1]~input_o\))) # (!\i_ALU_A[1]~input_o\ & (!\i_ALU_B[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[1]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y8_N20
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

-- Location: LCCOMB_X37_Y8_N22
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

-- Location: LCCOMB_X37_Y8_N24
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

-- Location: LCCOMB_X37_Y8_N26
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

-- Location: LCCOMB_X37_Y8_N28
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\i_ALU_B[6]~input_o\ & ((!\LessThan1~11_cout\) # (!\i_ALU_A[6]~input_o\))) # (!\i_ALU_B[6]~input_o\ & (!\i_ALU_A[6]~input_o\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X37_Y8_N30
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\i_ALU_B[7]~input_o\ & ((\LessThan1~13_cout\) # (!\i_ALU_A[7]~input_o\))) # (!\i_ALU_B[7]~input_o\ & (\LessThan1~13_cout\ & !\i_ALU_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_B[7]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X40_Y7_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\i_ALU_A[5]~input_o\ & ((\i_ALU_B[5]~input_o\ & (!\Add1~9\)) # (!\i_ALU_B[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\i_ALU_A[5]~input_o\ & ((\i_ALU_B[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\i_ALU_B[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\i_ALU_A[5]~input_o\ & (\i_ALU_B[5]~input_o\ & !\Add1~9\)) # (!\i_ALU_A[5]~input_o\ & ((\i_ALU_B[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[5]~input_o\,
	datab => \i_ALU_B[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X37_Y7_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\ & (\Add0~9\ & VCC)) # (!\i_ALU_A[5]~input_o\ & (!\Add0~9\)))) # (!\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\ & (!\Add0~9\)) # (!\i_ALU_A[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\i_ALU_B[5]~input_o\ & (!\i_ALU_A[5]~input_o\ & !\Add0~9\)) # (!\i_ALU_B[5]~input_o\ & ((!\Add0~9\) # (!\i_ALU_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datab => \i_ALU_A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X40_Y7_N26
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\ & (\Add1~10_combout\)) # (!\i_ALU_sel[0]~input_o\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Add1~10_combout\,
	datac => \Add0~10_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X40_Y7_N0
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[5]~input_o\ & ((!\i_ALU_A[5]~input_o\) # (!\Mux2~2_combout\))) # (!\i_ALU_B[5]~input_o\ & ((\i_ALU_A[5]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \i_ALU_B[5]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X38_Y8_N0
\r_ALU_Result[5]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~56_combout\ = (\i_ALU_sel[3]~input_o\ & !\i_ALU_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[3]~input_o\,
	datad => \i_ALU_sel[2]~input_o\,
	combout => \r_ALU_Result[5]~56_combout\);

-- Location: LCCOMB_X38_Y8_N6
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\r_ALU_Result[5]~55_combout\ & (((\r_ALU_Result[5]~56_combout\)))) # (!\r_ALU_Result[5]~55_combout\ & ((\r_ALU_Result[5]~56_combout\ & (\LessThan1~14_combout\)) # (!\r_ALU_Result[5]~56_combout\ & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~55_combout\,
	datab => \LessThan1~14_combout\,
	datac => \Mux2~3_combout\,
	datad => \r_ALU_Result[5]~56_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X38_Y8_N24
\r_ALU_Result~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~54_combout\ = (\i_ALU_B[5]~input_o\ & \i_ALU_A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datac => \i_ALU_A[5]~input_o\,
	combout => \r_ALU_Result~54_combout\);

-- Location: LCCOMB_X38_Y9_N10
\Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\tmp[8]~0_combout\ & (!\i_ALU_B[3]~input_o\ & (\ShiftLeft0~1_combout\ & !\i_ALU_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~0_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \ShiftLeft0~1_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X38_Y9_N8
\r_ALU_Result[5]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~73_combout\ = \i_ALU_sel[0]~input_o\ $ ((((\i_ALU_B[3]~input_o\) # (\i_ALU_B[2]~input_o\)) # (!\tmp[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~0_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[5]~73_combout\);

-- Location: LCCOMB_X40_Y9_N20
\r_ALU_Result[5]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~58_combout\ = (\i_ALU_sel[0]~input_o\) # ((\r_ALU_Result[3]~34_combout\ & \i_ALU_B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datac => \r_ALU_Result[3]~34_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \r_ALU_Result[5]~58_combout\);

-- Location: LCCOMB_X38_Y9_N12
\Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\r_ALU_Result[5]~73_combout\ & ((\r_ALU_Result[5]~58_combout\ & ((\ShiftRight0~3_combout\))) # (!\r_ALU_Result[5]~58_combout\ & (\Mux2~5_combout\)))) # (!\r_ALU_Result[5]~73_combout\ & (((!\r_ALU_Result[5]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \ShiftRight0~3_combout\,
	datac => \r_ALU_Result[5]~73_combout\,
	datad => \r_ALU_Result[5]~58_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X38_Y9_N28
\r_ALU_Result[5]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~57_combout\ = ((\i_ALU_B[3]~input_o\) # ((\i_ALU_B[2]~input_o\) # (\i_ALU_sel[0]~input_o\))) # (!\tmp[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~0_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_Result[5]~57_combout\);

-- Location: LCCOMB_X39_Y9_N24
\ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[4]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X38_Y9_N14
\Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((\r_ALU_Result[5]~57_combout\) # (\ShiftLeft0~7_combout\)))) # (!\Mux2~6_combout\ & (\ShiftLeft0~3_combout\ & (!\r_ALU_Result[5]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \ShiftLeft0~3_combout\,
	datac => \r_ALU_Result[5]~57_combout\,
	datad => \ShiftLeft0~7_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X38_Y8_N4
\Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~4_combout\ & (((\Mux2~7_combout\) # (!\r_ALU_Result[5]~55_combout\)))) # (!\Mux2~4_combout\ & (\r_ALU_Result~54_combout\ & ((\r_ALU_Result[5]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \r_ALU_Result~54_combout\,
	datac => \Mux2~7_combout\,
	datad => \r_ALU_Result[5]~55_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X39_Y8_N30
\Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[2]~input_o\ & (!\i_ALU_A[5]~input_o\)) # (!\i_ALU_sel[2]~input_o\ & ((\Mux2~8_combout\))))) # (!\i_ALU_sel[0]~input_o\ & (((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[5]~input_o\,
	datab => \Mux2~8_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_sel[2]~input_o\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X40_Y8_N8
\r_ALU_Result[5]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~59_combout\ = (\i_ALU_sel[1]~input_o\ & (((!\i_ALU_sel[2]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\ & !\i_ALU_sel[2]~input_o\)) # (!\i_ALU_sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[5]~59_combout\);

-- Location: LCCOMB_X40_Y8_N14
\r_ALU_Result[5]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[5]~60_combout\ = (\r_ALU_Result[5]~59_combout\ & \i_ENABLE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ALU_Result[5]~59_combout\,
	datad => \i_ENABLE~input_o\,
	combout => \r_ALU_Result[5]~60_combout\);

-- Location: FF_X39_Y8_N31
\r_ALU_Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux2~10_combout\,
	ena => \r_ALU_Result[5]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(5));

-- Location: LCCOMB_X37_Y8_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\i_ALU_A[0]~input_o\ & !\i_ALU_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[0]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X37_Y8_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\i_ALU_A[1]~input_o\ & (\i_ALU_B[1]~input_o\ & !\LessThan0~1_cout\)) # (!\i_ALU_A[1]~input_o\ & ((\i_ALU_B[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[1]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X37_Y8_N4
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

-- Location: LCCOMB_X37_Y8_N6
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

-- Location: LCCOMB_X37_Y8_N8
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

-- Location: LCCOMB_X37_Y8_N10
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

-- Location: LCCOMB_X37_Y8_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\i_ALU_B[6]~input_o\ & (\i_ALU_A[6]~input_o\ & !\LessThan0~11_cout\)) # (!\i_ALU_B[6]~input_o\ & ((\i_ALU_A[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X37_Y8_N14
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\i_ALU_B[7]~input_o\ & (\LessThan0~13_cout\ & \i_ALU_A[7]~input_o\)) # (!\i_ALU_B[7]~input_o\ & ((\LessThan0~13_cout\) # (\i_ALU_A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_B[7]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X38_Y8_N14
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\r_ALU_Result[5]~55_combout\ & (\i_ALU_B[6]~input_o\ & \i_ALU_A[6]~input_o\)) # (!\r_ALU_Result[5]~55_combout\ & ((\i_ALU_B[6]~input_o\) # (\i_ALU_A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~55_combout\,
	datab => \i_ALU_B[6]~input_o\,
	datad => \i_ALU_A[6]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X37_Y7_N28
\r_ALU_Result~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result~61_combout\ = \i_ALU_B[6]~input_o\ $ (\i_ALU_A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_B[6]~input_o\,
	datad => \i_ALU_A[6]~input_o\,
	combout => \r_ALU_Result~61_combout\);

-- Location: LCCOMB_X40_Y7_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\i_ALU_B[6]~input_o\ $ (\i_ALU_A[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\i_ALU_B[6]~input_o\ & (\i_ALU_A[6]~input_o\ & !\Add1~11\)) # (!\i_ALU_B[6]~input_o\ & ((\i_ALU_A[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X37_Y7_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\i_ALU_B[6]~input_o\ $ (\i_ALU_A[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\i_ALU_B[6]~input_o\ & ((\i_ALU_A[6]~input_o\) # (!\Add0~11\))) # (!\i_ALU_B[6]~input_o\ & (\i_ALU_A[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[6]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X38_Y7_N2
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\i_ALU_sel[0]~input_o\ & ((\i_ALU_sel[1]~input_o\) # ((\Add1~12_combout\)))) # (!\i_ALU_sel[0]~input_o\ & (!\i_ALU_sel[1]~input_o\ & ((\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Add1~12_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X38_Y8_N20
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\ & ((\r_ALU_Result~61_combout\) # ((!\i_ALU_sel[1]~input_o\)))) # (!\Mux1~3_combout\ & (((\Mux1~2_combout\ & \i_ALU_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result~61_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~3_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X38_Y8_N30
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\r_ALU_Result[5]~55_combout\ & ((\r_ALU_Result[5]~56_combout\) # ((\Mux1~2_combout\)))) # (!\r_ALU_Result[5]~55_combout\ & (!\r_ALU_Result[5]~56_combout\ & ((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~55_combout\,
	datab => \r_ALU_Result[5]~56_combout\,
	datac => \Mux1~2_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X38_Y9_N24
\Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\i_ALU_B[3]~input_o\ & (\tmp[8]~0_combout\ & ((\ShiftLeft0~2_combout\) # (\ShiftLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \ShiftLeft0~0_combout\,
	datad => \tmp[8]~0_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X38_Y9_N6
\Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\r_ALU_Result[5]~73_combout\ & ((\r_ALU_Result[5]~58_combout\ & ((\ShiftRight0~4_combout\))) # (!\r_ALU_Result[5]~58_combout\ & (\Mux1~6_combout\)))) # (!\r_ALU_Result[5]~73_combout\ & (((!\r_ALU_Result[5]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[5]~73_combout\,
	datab => \Mux1~6_combout\,
	datac => \ShiftRight0~4_combout\,
	datad => \r_ALU_Result[5]~58_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X38_Y8_N12
\ShiftLeft1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft1~1_combout\ = (\i_ALU_B[0]~input_o\ & (\i_ALU_A[5]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[5]~input_o\,
	datab => \i_ALU_A[6]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft1~1_combout\);

-- Location: LCCOMB_X38_Y8_N2
\Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~7_combout\ & ((\r_ALU_Result[5]~57_combout\) # ((\ShiftLeft1~1_combout\)))) # (!\Mux1~7_combout\ & (!\r_ALU_Result[5]~57_combout\ & (\ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datab => \r_ALU_Result[5]~57_combout\,
	datac => \ShiftLeft1~0_combout\,
	datad => \ShiftLeft1~1_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X38_Y8_N16
\Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\r_ALU_Result[5]~56_combout\ & ((\Mux1~5_combout\ & ((\Mux1~8_combout\))) # (!\Mux1~5_combout\ & (\LessThan0~14_combout\)))) # (!\r_ALU_Result[5]~56_combout\ & (((\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \r_ALU_Result[5]~56_combout\,
	datac => \Mux1~5_combout\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X39_Y8_N4
\Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\i_ALU_sel[2]~input_o\ & ((\i_ALU_sel[0]~input_o\ & ((!\i_ALU_A[6]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & (\Mux1~9_combout\)))) # (!\i_ALU_sel[2]~input_o\ & (\Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_A[6]~input_o\,
	combout => \Mux1~10_combout\);

-- Location: FF_X39_Y8_N5
\r_ALU_Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux1~10_combout\,
	ena => \r_ALU_Result[5]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(6));

-- Location: LCCOMB_X40_Y7_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \i_ALU_A[7]~input_o\ $ (\Add1~13\ $ (!\i_ALU_B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_B[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X37_Y7_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i_ALU_B[7]~input_o\ & ((\i_ALU_A[7]~input_o\ & (\Add0~13\ & VCC)) # (!\i_ALU_A[7]~input_o\ & (!\Add0~13\)))) # (!\i_ALU_B[7]~input_o\ & ((\i_ALU_A[7]~input_o\ & (!\Add0~13\)) # (!\i_ALU_A[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\i_ALU_B[7]~input_o\ & (!\i_ALU_A[7]~input_o\ & !\Add0~13\)) # (!\i_ALU_B[7]~input_o\ & ((!\Add0~13\) # (!\i_ALU_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[7]~input_o\,
	datab => \i_ALU_A[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X40_Y7_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_ALU_sel[1]~input_o\ & (((\i_ALU_sel[0]~input_o\)))) # (!\i_ALU_sel[1]~input_o\ & ((\i_ALU_sel[0]~input_o\ & (\Add1~14_combout\)) # (!\i_ALU_sel[0]~input_o\ & ((\Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[1]~input_o\,
	datab => \Add1~14_combout\,
	datac => \Add0~14_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X40_Y8_N20
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\i_ALU_sel[1]~input_o\ & ((\i_ALU_B[7]~input_o\ & ((!\i_ALU_A[7]~input_o\) # (!\Mux0~0_combout\))) # (!\i_ALU_B[7]~input_o\ & ((\i_ALU_A[7]~input_o\))))) # (!\i_ALU_sel[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[7]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \i_ALU_sel[1]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X39_Y8_N24
\r_ALU_Result[7]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~70_combout\ = (\i_ALU_sel[3]~input_o\ & (\r_ALU_Result[7]~2_combout\)) # (!\i_ALU_sel[3]~input_o\ & (((!\i_ALU_sel[2]~input_o\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~2_combout\,
	datab => \i_ALU_sel[2]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[7]~70_combout\);

-- Location: LCCOMB_X37_Y7_N30
\r_ALU_Result[7]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~66_combout\ = (\i_ALU_B[7]~input_o\ & (\i_ALU_A[7]~input_o\ & (\i_ALU_B[0]~input_o\ $ (!\i_ALU_A[0]~input_o\)))) # (!\i_ALU_B[7]~input_o\ & (!\i_ALU_A[7]~input_o\ & (\i_ALU_B[0]~input_o\ $ (!\i_ALU_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[7]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \r_ALU_Result[7]~66_combout\);

-- Location: LCCOMB_X37_Y7_N4
\r_ALU_Result[7]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~67_combout\ = (!\r_ALU_Result~61_combout\ & (\r_ALU_Result[7]~66_combout\ & (\i_ALU_B[5]~input_o\ $ (!\i_ALU_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[5]~input_o\,
	datab => \r_ALU_Result~61_combout\,
	datac => \r_ALU_Result[7]~66_combout\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \r_ALU_Result[7]~67_combout\);

-- Location: LCCOMB_X39_Y7_N14
\r_ALU_Result[7]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~64_combout\ = (\i_ALU_B[1]~input_o\ & (\i_ALU_A[1]~input_o\ & (\i_ALU_A[2]~input_o\ $ (!\i_ALU_B[2]~input_o\)))) # (!\i_ALU_B[1]~input_o\ & (!\i_ALU_A[1]~input_o\ & (\i_ALU_A[2]~input_o\ $ (!\i_ALU_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[2]~input_o\,
	datac => \i_ALU_B[2]~input_o\,
	datad => \i_ALU_A[1]~input_o\,
	combout => \r_ALU_Result[7]~64_combout\);

-- Location: LCCOMB_X39_Y7_N16
\r_ALU_Result[7]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~65_combout\ = (!\r_ALU_Result~50_combout\ & (\r_ALU_Result[7]~64_combout\ & (\i_ALU_A[3]~input_o\ $ (!\i_ALU_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[3]~input_o\,
	datab => \r_ALU_Result~50_combout\,
	datac => \r_ALU_Result[7]~64_combout\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \r_ALU_Result[7]~65_combout\);

-- Location: LCCOMB_X40_Y9_N4
\r_ALU_Result[7]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~63_combout\ = (\r_ALU_Result[0]~32_combout\ & (!\i_ALU_B[2]~input_o\ & (\r_ALU_Result[7]~6_combout\ & \i_ALU_A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~32_combout\,
	datab => \i_ALU_B[2]~input_o\,
	datac => \r_ALU_Result[7]~6_combout\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \r_ALU_Result[7]~63_combout\);

-- Location: LCCOMB_X40_Y9_N6
\r_ALU_Result[7]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~68_combout\ = (\r_ALU_Result[7]~63_combout\) # ((\r_ALU_Result[7]~67_combout\ & (\r_ALU_Result[7]~65_combout\ & !\i_ALU_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~67_combout\,
	datab => \r_ALU_Result[7]~65_combout\,
	datac => \r_ALU_Result[7]~63_combout\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_Result[7]~68_combout\);

-- Location: LCCOMB_X39_Y9_N14
\ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & (\i_ALU_A[4]~input_o\)) # (!\i_ALU_B[0]~input_o\ & ((\i_ALU_A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[0]~input_o\,
	datab => \i_ALU_B[1]~input_o\,
	datac => \i_ALU_A[4]~input_o\,
	datad => \i_ALU_A[5]~input_o\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X40_Y9_N24
\ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (!\i_ALU_B[1]~input_o\ & ((\i_ALU_B[0]~input_o\ & ((\i_ALU_A[6]~input_o\))) # (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[1]~input_o\,
	datab => \i_ALU_A[7]~input_o\,
	datac => \i_ALU_A[6]~input_o\,
	datad => \i_ALU_B[0]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X40_Y9_N2
\ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\i_ALU_B[2]~input_o\ & (((\ShiftLeft0~4_combout\)))) # (!\i_ALU_B[2]~input_o\ & ((\ShiftLeft0~8_combout\) # ((\ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~9_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \i_ALU_B[2]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X40_Y9_N28
\r_ALU_Result[7]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~69_combout\ = (\i_ALU_sel[0]~input_o\ & (\r_ALU_Result[7]~68_combout\)) # (!\i_ALU_sel[0]~input_o\ & (((\ShiftLeft0~10_combout\ & \r_ALU_Result[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[7]~68_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \r_ALU_Result[0]~32_combout\,
	combout => \r_ALU_Result[7]~69_combout\);

-- Location: LCCOMB_X39_Y8_N14
\r_ALU_Result[7]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~71_combout\ = (\r_ALU_Result[7]~70_combout\ & ((\i_ALU_sel[3]~input_o\ & ((\r_ALU_Result[7]~69_combout\))) # (!\i_ALU_sel[3]~input_o\ & (\r_ALU_Result[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[7]~70_combout\,
	datac => \r_ALU_Result[7]~69_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_Result[7]~71_combout\);

-- Location: LCCOMB_X40_Y9_N18
\r_ALU_Result[7]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~62_combout\ = (\r_ALU_Result[7]~20_combout\ & ((\i_ALU_sel[0]~input_o\ & ((!\i_ALU_A[7]~input_o\))) # (!\i_ALU_sel[0]~input_o\ & (\i_ALU_B[7]~input_o\ & \i_ALU_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[7]~input_o\,
	datab => \r_ALU_Result[7]~20_combout\,
	datac => \i_ALU_sel[0]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \r_ALU_Result[7]~62_combout\);

-- Location: LCCOMB_X39_Y8_N26
\r_ALU_Result[7]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_Result[7]~72_combout\ = (\r_ALU_Result[7]~71_combout\) # ((\r_ALU_Result[7]~62_combout\) # ((!\r_ALU_Result[0]~9_combout\ & r_ALU_Result(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_Result[0]~9_combout\,
	datab => \r_ALU_Result[7]~71_combout\,
	datac => r_ALU_Result(7),
	datad => \r_ALU_Result[7]~62_combout\,
	combout => \r_ALU_Result[7]~72_combout\);

-- Location: FF_X39_Y8_N27
\r_ALU_Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_Result[7]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ALU_Result(7));

-- Location: LCCOMB_X40_Y8_N26
\Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\i_ALU_sel[2]~input_o\ & \i_ALU_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X40_Y8_N6
\r_ALU_carry_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_carry_flag~1_combout\ = (\i_ENABLE~input_o\ & ((\i_ALU_sel[1]~input_o\) # ((!\i_ALU_sel[3]~input_o\) # (!\Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \Mux2~9_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_carry_flag~1_combout\);

-- Location: LCCOMB_X40_Y8_N0
\r_ALU_carry_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_carry_flag~0_combout\ = (!\i_ALU_sel[0]~input_o\ & (!\i_ALU_sel[2]~input_o\ & (\i_ALU_sel[1]~input_o\ $ (!\i_ALU_sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_sel[0]~input_o\,
	datab => \i_ALU_sel[1]~input_o\,
	datac => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \r_ALU_carry_flag~0_combout\);

-- Location: LCCOMB_X37_Y7_N8
\tmp[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~1_combout\ = (\i_ALU_B[3]~input_o\ & (!\i_ALU_B[0]~input_o\ & (\i_ALU_A[0]~input_o\))) # (!\i_ALU_B[3]~input_o\ & (\i_ALU_B[0]~input_o\ & ((\i_ALU_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[3]~input_o\,
	datab => \i_ALU_B[0]~input_o\,
	datac => \i_ALU_A[0]~input_o\,
	datad => \i_ALU_A[7]~input_o\,
	combout => \tmp[8]~1_combout\);

-- Location: LCCOMB_X38_Y7_N4
\tmp[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~2_combout\ = (\i_ALU_B[1]~input_o\ & (((!\i_ALU_B[3]~input_o\ & \ShiftLeft1~1_combout\)))) # (!\i_ALU_B[1]~input_o\ & (\tmp[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~1_combout\,
	datab => \i_ALU_B[3]~input_o\,
	datac => \ShiftLeft1~1_combout\,
	datad => \i_ALU_B[1]~input_o\,
	combout => \tmp[8]~2_combout\);

-- Location: LCCOMB_X38_Y7_N6
\tmp[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~3_combout\ = (\i_ALU_B[2]~input_o\ & (\ShiftLeft0~6_combout\ & ((!\i_ALU_B[3]~input_o\)))) # (!\i_ALU_B[2]~input_o\ & (((\tmp[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_B[2]~input_o\,
	datab => \ShiftLeft0~6_combout\,
	datac => \tmp[8]~2_combout\,
	datad => \i_ALU_B[3]~input_o\,
	combout => \tmp[8]~3_combout\);

-- Location: LCCOMB_X37_Y7_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X38_Y7_N0
\tmp[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~4_combout\ = (\i_ALU_sel[3]~input_o\ & (\tmp[8]~3_combout\ & ((\tmp[8]~0_combout\)))) # (!\i_ALU_sel[3]~input_o\ & (((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~3_combout\,
	datab => \Add0~16_combout\,
	datac => \tmp[8]~0_combout\,
	datad => \i_ALU_sel[3]~input_o\,
	combout => \tmp[8]~4_combout\);

-- Location: LCCOMB_X40_Y8_N2
\tmp[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[8]~5_combout\ = (\r_ALU_carry_flag~0_combout\ & ((\i_ENABLE~input_o\ & (\tmp[8]~4_combout\)) # (!\i_ENABLE~input_o\ & ((tmp(8)))))) # (!\r_ALU_carry_flag~0_combout\ & (((tmp(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[8]~4_combout\,
	datab => \r_ALU_carry_flag~0_combout\,
	datac => tmp(8),
	datad => \i_ENABLE~input_o\,
	combout => \tmp[8]~5_combout\);

-- Location: FF_X40_Y8_N3
\tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \tmp[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(8));

-- Location: LCCOMB_X40_Y8_N24
\r_ALU_carry_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_carry_flag~2_combout\ = (\r_ALU_carry_flag~1_combout\ & (\r_ALU_carry_flag~0_combout\ & ((tmp(8))))) # (!\r_ALU_carry_flag~1_combout\ & (((\r_ALU_carry_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_carry_flag~1_combout\,
	datab => \r_ALU_carry_flag~0_combout\,
	datac => \r_ALU_carry_flag~q\,
	datad => tmp(8),
	combout => \r_ALU_carry_flag~2_combout\);

-- Location: FF_X40_Y8_N25
r_ALU_carry_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_carry_flag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_carry_flag~q\);

-- Location: LCCOMB_X38_Y8_N26
\r_ALU_overflow_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_overflow_flag~0_combout\ = (!\i_ALU_sel[2]~input_o\ & !\i_ALU_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU_sel[2]~input_o\,
	datad => \i_ALU_sel[1]~input_o\,
	combout => \r_ALU_overflow_flag~0_combout\);

-- Location: LCCOMB_X38_Y8_N28
\r_ALU_overflow_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_overflow_flag~1_combout\ = (\r_ALU_overflow_flag~0_combout\ & (\i_ALU_B[7]~input_o\ $ (\i_ALU_A[7]~input_o\ $ (!\i_ALU_sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_overflow_flag~0_combout\,
	datab => \i_ALU_B[7]~input_o\,
	datac => \i_ALU_A[7]~input_o\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_overflow_flag~1_combout\);

-- Location: LCCOMB_X38_Y8_N8
\r_ALU_overflow_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_overflow_flag~2_combout\ = (\r_ALU_overflow_flag~1_combout\ & ((\r_ALU_overflow_flag~q\) # (\i_ALU_A[7]~input_o\ $ (r_ALU_Result(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU_A[7]~input_o\,
	datab => \r_ALU_overflow_flag~1_combout\,
	datac => \r_ALU_overflow_flag~q\,
	datad => r_ALU_Result(7),
	combout => \r_ALU_overflow_flag~2_combout\);

-- Location: FF_X38_Y8_N9
r_ALU_overflow_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_overflow_flag~2_combout\,
	sclr => \i_ALU_sel[3]~input_o\,
	ena => \r_ALU_carry_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_overflow_flag~q\);

-- Location: IOIBUF_X41_Y5_N8
\i_ALU_signed~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_signed,
	o => \i_ALU_signed~input_o\);

-- Location: LCCOMB_X38_Y8_N22
\r_ALU_negative_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_negative_flag~0_combout\ = (\LessThan1~14_combout\ & \i_ALU_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~14_combout\,
	datad => \i_ALU_sel[0]~input_o\,
	combout => \r_ALU_negative_flag~0_combout\);

-- Location: LCCOMB_X38_Y8_N18
\r_ALU_negative_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_negative_flag~1_combout\ = (\r_ALU_overflow_flag~0_combout\ & ((\i_ALU_signed~input_o\ & ((r_ALU_Result(7)))) # (!\i_ALU_signed~input_o\ & (\r_ALU_negative_flag~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ALU_overflow_flag~0_combout\,
	datab => \i_ALU_signed~input_o\,
	datac => \r_ALU_negative_flag~0_combout\,
	datad => r_ALU_Result(7),
	combout => \r_ALU_negative_flag~1_combout\);

-- Location: FF_X38_Y8_N19
r_ALU_negative_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_negative_flag~1_combout\,
	sclr => \i_ALU_sel[3]~input_o\,
	ena => \r_ALU_carry_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_ALU_negative_flag~q\);

-- Location: LCCOMB_X39_Y8_N2
\r_ALU_zero_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_zero_flag~1_combout\ = (!r_ALU_Result(5) & (!r_ALU_Result(6) & (!r_ALU_Result(7) & !r_ALU_Result(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ALU_Result(5),
	datab => r_ALU_Result(6),
	datac => r_ALU_Result(7),
	datad => r_ALU_Result(4),
	combout => \r_ALU_zero_flag~1_combout\);

-- Location: LCCOMB_X39_Y8_N20
\r_ALU_zero_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_zero_flag~0_combout\ = (!r_ALU_Result(1) & (!r_ALU_Result(0) & (!r_ALU_Result(3) & !r_ALU_Result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ALU_Result(1),
	datab => r_ALU_Result(0),
	datac => r_ALU_Result(3),
	datad => r_ALU_Result(2),
	combout => \r_ALU_zero_flag~0_combout\);

-- Location: LCCOMB_X39_Y8_N8
\r_ALU_zero_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_ALU_zero_flag~2_combout\ = (\i_ENABLE~input_o\ & (\r_ALU_zero_flag~1_combout\ & ((\r_ALU_zero_flag~0_combout\)))) # (!\i_ENABLE~input_o\ & (((\r_ALU_zero_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE~input_o\,
	datab => \r_ALU_zero_flag~1_combout\,
	datac => \r_ALU_zero_flag~q\,
	datad => \r_ALU_zero_flag~0_combout\,
	combout => \r_ALU_zero_flag~2_combout\);

-- Location: FF_X39_Y8_N9
r_ALU_zero_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_ALU_zero_flag~2_combout\,
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


