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

-- DATE "05/23/2019 21:53:21"

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

ENTITY 	branch_control IS
    PORT (
	i_CLK : IN std_logic;
	i_PC_REG_ENABLE : IN std_logic;
	i_BRANCH_CONTROL : IN std_logic_vector(2 DOWNTO 0);
	i_PC_INTERRUPT_set : IN std_logic;
	o_INTERRUPT_enable : BUFFER std_logic;
	i_SAVE_PC : IN std_logic;
	i_PC_ADDRESS : IN std_logic_vector(9 DOWNTO 0);
	i_ZERO_FLAG : IN std_logic;
	i_OVERFLOW_FLAG : IN std_logic;
	i_NEGATIVE_FLAG : IN std_logic;
	i_CARRY_FLAG : IN std_logic;
	i_ADDRESS : IN std_logic_vector(9 DOWNTO 0);
	o_ADDRESS : BUFFER std_logic_vector(9 DOWNTO 0);
	o_PC_LOAD : BUFFER std_logic
	);
END branch_control;

-- Design Ports Information
-- o_INTERRUPT_enable	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[8]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDRESS[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_LOAD	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BRANCH_CONTROL[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BRANCH_CONTROL[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BRANCH_CONTROL[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_INTERRUPT_set	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ADDRESS[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CARRY_FLAG	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OVERFLOW_FLAG	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ZERO_FLAG	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NEGATIVE_FLAG	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_REG_ENABLE	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SAVE_PC	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_ADDRESS[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF branch_control IS
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
SIGNAL ww_i_PC_REG_ENABLE : std_logic;
SIGNAL ww_i_BRANCH_CONTROL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_PC_INTERRUPT_set : std_logic;
SIGNAL ww_o_INTERRUPT_enable : std_logic;
SIGNAL ww_i_SAVE_PC : std_logic;
SIGNAL ww_i_PC_ADDRESS : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_i_ZERO_FLAG : std_logic;
SIGNAL ww_i_OVERFLOW_FLAG : std_logic;
SIGNAL ww_i_NEGATIVE_FLAG : std_logic;
SIGNAL ww_i_CARRY_FLAG : std_logic;
SIGNAL ww_i_ADDRESS : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_o_ADDRESS : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_o_PC_LOAD : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_INTERRUPT_enable~output_o\ : std_logic;
SIGNAL \o_ADDRESS[0]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[1]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[2]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[3]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[4]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[5]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[6]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[7]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[8]~output_o\ : std_logic;
SIGNAL \o_ADDRESS[9]~output_o\ : std_logic;
SIGNAL \o_PC_LOAD~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_PC_INTERRUPT_set~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \r_INTERRUPT_set~q\ : std_logic;
SIGNAL \i_BRANCH_CONTROL[1]~input_o\ : std_logic;
SIGNAL \i_BRANCH_CONTROL[0]~input_o\ : std_logic;
SIGNAL \i_BRANCH_CONTROL[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \r_INTERRUPT_enable~2_combout\ : std_logic;
SIGNAL \r_INTERRUPT_enable~q\ : std_logic;
SIGNAL \i_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[0]~10_combout\ : std_logic;
SIGNAL \r_PC_ADDRESS[0]~12_combout\ : std_logic;
SIGNAL \i_SAVE_PC~input_o\ : std_logic;
SIGNAL \i_PC_REG_ENABLE~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[0]~13_combout\ : std_logic;
SIGNAL \o_ADDRESS~0_combout\ : std_logic;
SIGNAL \o_ADDRESS[0]~1_combout\ : std_logic;
SIGNAL \o_ADDRESS[0]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[0]~11\ : std_logic;
SIGNAL \r_PC_ADDRESS[1]~14_combout\ : std_logic;
SIGNAL \o_ADDRESS~2_combout\ : std_logic;
SIGNAL \o_ADDRESS[1]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[1]~15\ : std_logic;
SIGNAL \r_PC_ADDRESS[2]~16_combout\ : std_logic;
SIGNAL \o_ADDRESS~3_combout\ : std_logic;
SIGNAL \o_ADDRESS[2]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[2]~17\ : std_logic;
SIGNAL \r_PC_ADDRESS[3]~18_combout\ : std_logic;
SIGNAL \o_ADDRESS~4_combout\ : std_logic;
SIGNAL \o_ADDRESS[3]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[3]~19\ : std_logic;
SIGNAL \r_PC_ADDRESS[4]~20_combout\ : std_logic;
SIGNAL \o_ADDRESS~5_combout\ : std_logic;
SIGNAL \o_ADDRESS[4]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[4]~21\ : std_logic;
SIGNAL \r_PC_ADDRESS[5]~22_combout\ : std_logic;
SIGNAL \o_ADDRESS~6_combout\ : std_logic;
SIGNAL \o_ADDRESS[5]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[5]~23\ : std_logic;
SIGNAL \r_PC_ADDRESS[6]~24_combout\ : std_logic;
SIGNAL \o_ADDRESS~7_combout\ : std_logic;
SIGNAL \o_ADDRESS[6]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[6]~25\ : std_logic;
SIGNAL \r_PC_ADDRESS[7]~26_combout\ : std_logic;
SIGNAL \o_ADDRESS~8_combout\ : std_logic;
SIGNAL \o_ADDRESS[7]~reg0_q\ : std_logic;
SIGNAL \i_PC_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[7]~27\ : std_logic;
SIGNAL \r_PC_ADDRESS[8]~28_combout\ : std_logic;
SIGNAL \i_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \o_ADDRESS~9_combout\ : std_logic;
SIGNAL \o_ADDRESS[8]~reg0_q\ : std_logic;
SIGNAL \i_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \i_PC_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \r_PC_ADDRESS[8]~29\ : std_logic;
SIGNAL \r_PC_ADDRESS[9]~30_combout\ : std_logic;
SIGNAL \o_ADDRESS~10_combout\ : std_logic;
SIGNAL \o_ADDRESS[9]~reg0_q\ : std_logic;
SIGNAL \i_CARRY_FLAG~input_o\ : std_logic;
SIGNAL \i_NEGATIVE_FLAG~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \i_OVERFLOW_FLAG~input_o\ : std_logic;
SIGNAL \i_ZERO_FLAG~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \o_PC_LOAD~reg0_q\ : std_logic;
SIGNAL r_PC_ADDRESS : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_r_INTERRUPT_enable~q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_PC_REG_ENABLE <= i_PC_REG_ENABLE;
ww_i_BRANCH_CONTROL <= i_BRANCH_CONTROL;
ww_i_PC_INTERRUPT_set <= i_PC_INTERRUPT_set;
o_INTERRUPT_enable <= ww_o_INTERRUPT_enable;
ww_i_SAVE_PC <= i_SAVE_PC;
ww_i_PC_ADDRESS <= i_PC_ADDRESS;
ww_i_ZERO_FLAG <= i_ZERO_FLAG;
ww_i_OVERFLOW_FLAG <= i_OVERFLOW_FLAG;
ww_i_NEGATIVE_FLAG <= i_NEGATIVE_FLAG;
ww_i_CARRY_FLAG <= i_CARRY_FLAG;
ww_i_ADDRESS <= i_ADDRESS;
o_ADDRESS <= ww_o_ADDRESS;
o_PC_LOAD <= ww_o_PC_LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\ALT_INV_r_INTERRUPT_enable~q\ <= NOT \r_INTERRUPT_enable~q\;

-- Location: IOOBUF_X14_Y0_N9
\o_INTERRUPT_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_r_INTERRUPT_enable~q\,
	devoe => ww_devoe,
	o => \o_INTERRUPT_enable~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_ADDRESS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\o_ADDRESS[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\o_ADDRESS[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_ADDRESS[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_ADDRESS[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_ADDRESS[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\o_ADDRESS[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_ADDRESS[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_ADDRESS[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[8]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\o_ADDRESS[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ADDRESS[9]~reg0_q\,
	devoe => ww_devoe,
	o => \o_ADDRESS[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_PC_LOAD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_PC_LOAD~reg0_q\,
	devoe => ww_devoe,
	o => \o_PC_LOAD~output_o\);

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

-- Location: IOIBUF_X21_Y29_N29
\i_PC_INTERRUPT_set~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_INTERRUPT_set,
	o => \i_PC_INTERRUPT_set~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\i_PC_INTERRUPT_set~input_o\ & (!\r_INTERRUPT_set~q\ & !\r_INTERRUPT_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC_INTERRUPT_set~input_o\,
	datac => \r_INTERRUPT_set~q\,
	datad => \r_INTERRUPT_enable~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X22_Y1_N27
r_INTERRUPT_set : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_INTERRUPT_set~q\);

-- Location: IOIBUF_X21_Y0_N1
\i_BRANCH_CONTROL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BRANCH_CONTROL(1),
	o => \i_BRANCH_CONTROL[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_BRANCH_CONTROL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BRANCH_CONTROL(0),
	o => \i_BRANCH_CONTROL[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\i_BRANCH_CONTROL[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BRANCH_CONTROL(2),
	o => \i_BRANCH_CONTROL[2]~input_o\);

-- Location: LCCOMB_X21_Y1_N2
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\i_BRANCH_CONTROL[1]~input_o\ & (!\i_BRANCH_CONTROL[0]~input_o\ & \i_BRANCH_CONTROL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[1]~input_o\,
	datac => \i_BRANCH_CONTROL[0]~input_o\,
	datad => \i_BRANCH_CONTROL[2]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\r_INTERRUPT_enable~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_enable~2_combout\ = (\r_INTERRUPT_enable~q\ & (((!\Mux11~0_combout\)))) # (!\r_INTERRUPT_enable~q\ & (\i_PC_INTERRUPT_set~input_o\ & (!\r_INTERRUPT_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC_INTERRUPT_set~input_o\,
	datab => \r_INTERRUPT_set~q\,
	datac => \r_INTERRUPT_enable~q\,
	datad => \Mux11~0_combout\,
	combout => \r_INTERRUPT_enable~2_combout\);

-- Location: FF_X22_Y1_N25
r_INTERRUPT_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INTERRUPT_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_INTERRUPT_enable~q\);

-- Location: IOIBUF_X21_Y29_N22
\i_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(0),
	o => \i_ADDRESS[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\i_PC_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(0),
	o => \i_PC_ADDRESS[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N4
\r_PC_ADDRESS[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[0]~10_combout\ = (\i_PC_ADDRESS[0]~input_o\ & (\process_0~0_combout\ $ (GND))) # (!\i_PC_ADDRESS[0]~input_o\ & (!\process_0~0_combout\ & VCC))
-- \r_PC_ADDRESS[0]~11\ = CARRY((\i_PC_ADDRESS[0]~input_o\ & !\process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC_ADDRESS[0]~input_o\,
	datab => \process_0~0_combout\,
	datad => VCC,
	combout => \r_PC_ADDRESS[0]~10_combout\,
	cout => \r_PC_ADDRESS[0]~11\);

-- Location: LCCOMB_X22_Y1_N26
\r_PC_ADDRESS[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[0]~12_combout\ = ((!\i_BRANCH_CONTROL[0]~input_o\) # (!\i_BRANCH_CONTROL[1]~input_o\)) # (!\i_BRANCH_CONTROL[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[2]~input_o\,
	datab => \i_BRANCH_CONTROL[1]~input_o\,
	datad => \i_BRANCH_CONTROL[0]~input_o\,
	combout => \r_PC_ADDRESS[0]~12_combout\);

-- Location: IOIBUF_X30_Y0_N15
\i_SAVE_PC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SAVE_PC,
	o => \i_SAVE_PC~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\i_PC_REG_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_REG_ENABLE,
	o => \i_PC_REG_ENABLE~input_o\);

-- Location: LCCOMB_X22_Y1_N30
\r_PC_ADDRESS[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[0]~13_combout\ = ((\process_0~0_combout\) # ((\i_SAVE_PC~input_o\ & \i_PC_REG_ENABLE~input_o\))) # (!\r_PC_ADDRESS[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_PC_ADDRESS[0]~12_combout\,
	datab => \i_SAVE_PC~input_o\,
	datac => \i_PC_REG_ENABLE~input_o\,
	datad => \process_0~0_combout\,
	combout => \r_PC_ADDRESS[0]~13_combout\);

-- Location: FF_X22_Y1_N5
\r_PC_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[0]~10_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(0));

-- Location: LCCOMB_X21_Y1_N20
\o_ADDRESS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~0_combout\ = (!\process_0~0_combout\ & ((\Mux11~0_combout\ & ((r_PC_ADDRESS(0)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[0]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => r_PC_ADDRESS(0),
	combout => \o_ADDRESS~0_combout\);

-- Location: LCCOMB_X22_Y1_N2
\o_ADDRESS[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS[0]~1_combout\ = (\process_0~0_combout\) # ((\i_BRANCH_CONTROL[2]~input_o\ & ((!\i_BRANCH_CONTROL[0]~input_o\) # (!\i_BRANCH_CONTROL[1]~input_o\))) # (!\i_BRANCH_CONTROL[2]~input_o\ & ((\i_BRANCH_CONTROL[1]~input_o\) # 
-- (\i_BRANCH_CONTROL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[2]~input_o\,
	datab => \i_BRANCH_CONTROL[1]~input_o\,
	datac => \i_BRANCH_CONTROL[0]~input_o\,
	datad => \process_0~0_combout\,
	combout => \o_ADDRESS[0]~1_combout\);

-- Location: FF_X21_Y1_N21
\o_ADDRESS[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~0_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[0]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\i_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(1),
	o => \i_ADDRESS[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\i_PC_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(1),
	o => \i_PC_ADDRESS[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N6
\r_PC_ADDRESS[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[1]~14_combout\ = (\i_PC_ADDRESS[1]~input_o\ & (!\r_PC_ADDRESS[0]~11\)) # (!\i_PC_ADDRESS[1]~input_o\ & ((\r_PC_ADDRESS[0]~11\) # (GND)))
-- \r_PC_ADDRESS[1]~15\ = CARRY((!\r_PC_ADDRESS[0]~11\) # (!\i_PC_ADDRESS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[1]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[0]~11\,
	combout => \r_PC_ADDRESS[1]~14_combout\,
	cout => \r_PC_ADDRESS[1]~15\);

-- Location: FF_X22_Y1_N7
\r_PC_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[1]~14_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(1));

-- Location: LCCOMB_X21_Y1_N30
\o_ADDRESS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~2_combout\ = (!\process_0~0_combout\ & ((\Mux11~0_combout\ & ((r_PC_ADDRESS(1)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[1]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => r_PC_ADDRESS(1),
	combout => \o_ADDRESS~2_combout\);

-- Location: FF_X21_Y1_N31
\o_ADDRESS[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~2_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[1]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N8
\i_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(2),
	o => \i_ADDRESS[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\i_PC_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(2),
	o => \i_PC_ADDRESS[2]~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\r_PC_ADDRESS[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[2]~16_combout\ = (\i_PC_ADDRESS[2]~input_o\ & (\r_PC_ADDRESS[1]~15\ $ (GND))) # (!\i_PC_ADDRESS[2]~input_o\ & (!\r_PC_ADDRESS[1]~15\ & VCC))
-- \r_PC_ADDRESS[2]~17\ = CARRY((\i_PC_ADDRESS[2]~input_o\ & !\r_PC_ADDRESS[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC_ADDRESS[2]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[1]~15\,
	combout => \r_PC_ADDRESS[2]~16_combout\,
	cout => \r_PC_ADDRESS[2]~17\);

-- Location: FF_X22_Y1_N9
\r_PC_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[2]~16_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(2));

-- Location: LCCOMB_X21_Y1_N24
\o_ADDRESS~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~3_combout\ = (!\process_0~0_combout\ & ((\Mux11~0_combout\ & ((r_PC_ADDRESS(2)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[2]~input_o\,
	datab => \process_0~0_combout\,
	datac => r_PC_ADDRESS(2),
	datad => \Mux11~0_combout\,
	combout => \o_ADDRESS~3_combout\);

-- Location: FF_X21_Y1_N25
\o_ADDRESS[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~3_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[2]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N22
\i_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(3),
	o => \i_ADDRESS[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\i_PC_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(3),
	o => \i_PC_ADDRESS[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N10
\r_PC_ADDRESS[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[3]~18_combout\ = (\i_PC_ADDRESS[3]~input_o\ & (!\r_PC_ADDRESS[2]~17\)) # (!\i_PC_ADDRESS[3]~input_o\ & ((\r_PC_ADDRESS[2]~17\) # (GND)))
-- \r_PC_ADDRESS[3]~19\ = CARRY((!\r_PC_ADDRESS[2]~17\) # (!\i_PC_ADDRESS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[3]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[2]~17\,
	combout => \r_PC_ADDRESS[3]~18_combout\,
	cout => \r_PC_ADDRESS[3]~19\);

-- Location: FF_X22_Y1_N11
\r_PC_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[3]~18_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(3));

-- Location: LCCOMB_X21_Y1_N22
\o_ADDRESS~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~4_combout\ = (!\process_0~0_combout\ & ((\Mux11~0_combout\ & ((r_PC_ADDRESS(3)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[3]~input_o\,
	datab => \process_0~0_combout\,
	datac => r_PC_ADDRESS(3),
	datad => \Mux11~0_combout\,
	combout => \o_ADDRESS~4_combout\);

-- Location: FF_X21_Y1_N23
\o_ADDRESS[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~4_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[3]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N15
\i_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(4),
	o => \i_ADDRESS[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\i_PC_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(4),
	o => \i_PC_ADDRESS[4]~input_o\);

-- Location: LCCOMB_X22_Y1_N12
\r_PC_ADDRESS[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[4]~20_combout\ = (\i_PC_ADDRESS[4]~input_o\ & (\r_PC_ADDRESS[3]~19\ $ (GND))) # (!\i_PC_ADDRESS[4]~input_o\ & (!\r_PC_ADDRESS[3]~19\ & VCC))
-- \r_PC_ADDRESS[4]~21\ = CARRY((\i_PC_ADDRESS[4]~input_o\ & !\r_PC_ADDRESS[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[4]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[3]~19\,
	combout => \r_PC_ADDRESS[4]~20_combout\,
	cout => \r_PC_ADDRESS[4]~21\);

-- Location: FF_X22_Y1_N13
\r_PC_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[4]~20_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(4));

-- Location: LCCOMB_X21_Y1_N12
\o_ADDRESS~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~5_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & ((r_PC_ADDRESS(4)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[4]~input_o\,
	datab => r_PC_ADDRESS(4),
	datac => \process_0~0_combout\,
	datad => \Mux11~0_combout\,
	combout => \o_ADDRESS~5_combout\);

-- Location: FF_X21_Y1_N13
\o_ADDRESS[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~5_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[4]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N8
\i_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(5),
	o => \i_ADDRESS[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\i_PC_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(5),
	o => \i_PC_ADDRESS[5]~input_o\);

-- Location: LCCOMB_X22_Y1_N14
\r_PC_ADDRESS[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[5]~22_combout\ = (\i_PC_ADDRESS[5]~input_o\ & (!\r_PC_ADDRESS[4]~21\)) # (!\i_PC_ADDRESS[5]~input_o\ & ((\r_PC_ADDRESS[4]~21\) # (GND)))
-- \r_PC_ADDRESS[5]~23\ = CARRY((!\r_PC_ADDRESS[4]~21\) # (!\i_PC_ADDRESS[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[5]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[4]~21\,
	combout => \r_PC_ADDRESS[5]~22_combout\,
	cout => \r_PC_ADDRESS[5]~23\);

-- Location: FF_X22_Y1_N15
\r_PC_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[5]~22_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(5));

-- Location: LCCOMB_X21_Y1_N26
\o_ADDRESS~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~6_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & ((r_PC_ADDRESS(5)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[5]~input_o\,
	datab => \process_0~0_combout\,
	datac => r_PC_ADDRESS(5),
	datad => \Mux11~0_combout\,
	combout => \o_ADDRESS~6_combout\);

-- Location: FF_X21_Y1_N27
\o_ADDRESS[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~6_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[5]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N29
\i_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(6),
	o => \i_ADDRESS[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\i_PC_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(6),
	o => \i_PC_ADDRESS[6]~input_o\);

-- Location: LCCOMB_X22_Y1_N16
\r_PC_ADDRESS[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[6]~24_combout\ = (\i_PC_ADDRESS[6]~input_o\ & (\r_PC_ADDRESS[5]~23\ $ (GND))) # (!\i_PC_ADDRESS[6]~input_o\ & (!\r_PC_ADDRESS[5]~23\ & VCC))
-- \r_PC_ADDRESS[6]~25\ = CARRY((\i_PC_ADDRESS[6]~input_o\ & !\r_PC_ADDRESS[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[6]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[5]~23\,
	combout => \r_PC_ADDRESS[6]~24_combout\,
	cout => \r_PC_ADDRESS[6]~25\);

-- Location: FF_X22_Y1_N17
\r_PC_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[6]~24_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(6));

-- Location: LCCOMB_X21_Y1_N16
\o_ADDRESS~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~7_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & ((r_PC_ADDRESS(6)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[6]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => r_PC_ADDRESS(6),
	combout => \o_ADDRESS~7_combout\);

-- Location: FF_X21_Y1_N17
\o_ADDRESS[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~7_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[6]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N29
\i_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(7),
	o => \i_ADDRESS[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_PC_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(7),
	o => \i_PC_ADDRESS[7]~input_o\);

-- Location: LCCOMB_X22_Y1_N18
\r_PC_ADDRESS[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[7]~26_combout\ = (\i_PC_ADDRESS[7]~input_o\ & (!\r_PC_ADDRESS[6]~25\)) # (!\i_PC_ADDRESS[7]~input_o\ & ((\r_PC_ADDRESS[6]~25\) # (GND)))
-- \r_PC_ADDRESS[7]~27\ = CARRY((!\r_PC_ADDRESS[6]~25\) # (!\i_PC_ADDRESS[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[7]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[6]~25\,
	combout => \r_PC_ADDRESS[7]~26_combout\,
	cout => \r_PC_ADDRESS[7]~27\);

-- Location: FF_X22_Y1_N19
\r_PC_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[7]~26_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(7));

-- Location: LCCOMB_X21_Y1_N14
\o_ADDRESS~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~8_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & ((r_PC_ADDRESS(7)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[7]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => r_PC_ADDRESS(7),
	combout => \o_ADDRESS~8_combout\);

-- Location: FF_X21_Y1_N15
\o_ADDRESS[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~8_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[7]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N1
\i_PC_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(8),
	o => \i_PC_ADDRESS[8]~input_o\);

-- Location: LCCOMB_X22_Y1_N20
\r_PC_ADDRESS[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[8]~28_combout\ = (\i_PC_ADDRESS[8]~input_o\ & (\r_PC_ADDRESS[7]~27\ $ (GND))) # (!\i_PC_ADDRESS[8]~input_o\ & (!\r_PC_ADDRESS[7]~27\ & VCC))
-- \r_PC_ADDRESS[8]~29\ = CARRY((\i_PC_ADDRESS[8]~input_o\ & !\r_PC_ADDRESS[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_PC_ADDRESS[8]~input_o\,
	datad => VCC,
	cin => \r_PC_ADDRESS[7]~27\,
	combout => \r_PC_ADDRESS[8]~28_combout\,
	cout => \r_PC_ADDRESS[8]~29\);

-- Location: FF_X22_Y1_N21
\r_PC_ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[8]~28_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(8));

-- Location: IOIBUF_X28_Y0_N1
\i_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(8),
	o => \i_ADDRESS[8]~input_o\);

-- Location: LCCOMB_X21_Y1_N28
\o_ADDRESS~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~9_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & (r_PC_ADDRESS(8))) # (!\Mux11~0_combout\ & ((\i_ADDRESS[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_PC_ADDRESS(8),
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => \i_ADDRESS[8]~input_o\,
	combout => \o_ADDRESS~9_combout\);

-- Location: FF_X21_Y1_N29
\o_ADDRESS[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~9_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[8]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\i_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ADDRESS(9),
	o => \i_ADDRESS[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\i_PC_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_ADDRESS(9),
	o => \i_PC_ADDRESS[9]~input_o\);

-- Location: LCCOMB_X22_Y1_N22
\r_PC_ADDRESS[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PC_ADDRESS[9]~30_combout\ = \r_PC_ADDRESS[8]~29\ $ (\i_PC_ADDRESS[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_PC_ADDRESS[9]~input_o\,
	cin => \r_PC_ADDRESS[8]~29\,
	combout => \r_PC_ADDRESS[9]~30_combout\);

-- Location: FF_X22_Y1_N23
\r_PC_ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_PC_ADDRESS[9]~30_combout\,
	ena => \r_PC_ADDRESS[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PC_ADDRESS(9));

-- Location: LCCOMB_X21_Y1_N6
\o_ADDRESS~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ADDRESS~10_combout\ = (\process_0~0_combout\) # ((\Mux11~0_combout\ & ((r_PC_ADDRESS(9)))) # (!\Mux11~0_combout\ & (\i_ADDRESS[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ADDRESS[9]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \process_0~0_combout\,
	datad => r_PC_ADDRESS(9),
	combout => \o_ADDRESS~10_combout\);

-- Location: FF_X21_Y1_N7
\o_ADDRESS[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ADDRESS~10_combout\,
	ena => \o_ADDRESS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ADDRESS[9]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N22
\i_CARRY_FLAG~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CARRY_FLAG,
	o => \i_CARRY_FLAG~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\i_NEGATIVE_FLAG~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NEGATIVE_FLAG,
	o => \i_NEGATIVE_FLAG~input_o\);

-- Location: LCCOMB_X21_Y1_N0
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\i_BRANCH_CONTROL[1]~input_o\ & ((\i_BRANCH_CONTROL[2]~input_o\) # ((\i_CARRY_FLAG~input_o\)))) # (!\i_BRANCH_CONTROL[1]~input_o\ & (\i_BRANCH_CONTROL[2]~input_o\ & ((\i_NEGATIVE_FLAG~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[1]~input_o\,
	datab => \i_BRANCH_CONTROL[2]~input_o\,
	datac => \i_CARRY_FLAG~input_o\,
	datad => \i_NEGATIVE_FLAG~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X23_Y0_N8
\i_OVERFLOW_FLAG~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OVERFLOW_FLAG,
	o => \i_OVERFLOW_FLAG~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\i_ZERO_FLAG~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ZERO_FLAG,
	o => \i_ZERO_FLAG~input_o\);

-- Location: LCCOMB_X22_Y1_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\i_BRANCH_CONTROL[2]~input_o\ & (((!\i_BRANCH_CONTROL[1]~input_o\ & \i_ZERO_FLAG~input_o\)))) # (!\i_BRANCH_CONTROL[2]~input_o\ & ((\i_OVERFLOW_FLAG~input_o\) # ((!\i_BRANCH_CONTROL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[2]~input_o\,
	datab => \i_OVERFLOW_FLAG~input_o\,
	datac => \i_BRANCH_CONTROL[1]~input_o\,
	datad => \i_ZERO_FLAG~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X21_Y1_N4
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\process_0~0_combout\) # ((\i_BRANCH_CONTROL[0]~input_o\ & ((\Mux10~0_combout\))) # (!\i_BRANCH_CONTROL[0]~input_o\ & (\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BRANCH_CONTROL[0]~input_o\,
	datab => \Mux10~1_combout\,
	datac => \process_0~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: FF_X21_Y1_N5
\o_PC_LOAD~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_PC_LOAD~reg0_q\);

ww_o_INTERRUPT_enable <= \o_INTERRUPT_enable~output_o\;

ww_o_ADDRESS(0) <= \o_ADDRESS[0]~output_o\;

ww_o_ADDRESS(1) <= \o_ADDRESS[1]~output_o\;

ww_o_ADDRESS(2) <= \o_ADDRESS[2]~output_o\;

ww_o_ADDRESS(3) <= \o_ADDRESS[3]~output_o\;

ww_o_ADDRESS(4) <= \o_ADDRESS[4]~output_o\;

ww_o_ADDRESS(5) <= \o_ADDRESS[5]~output_o\;

ww_o_ADDRESS(6) <= \o_ADDRESS[6]~output_o\;

ww_o_ADDRESS(7) <= \o_ADDRESS[7]~output_o\;

ww_o_ADDRESS(8) <= \o_ADDRESS[8]~output_o\;

ww_o_ADDRESS(9) <= \o_ADDRESS[9]~output_o\;

ww_o_PC_LOAD <= \o_PC_LOAD~output_o\;
END structure;


