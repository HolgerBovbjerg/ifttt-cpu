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

-- DATE "04/15/2019 11:50:59"

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

ENTITY 	B_imm_multiplexer IS
    PORT (
	i_CLK : IN std_logic;
	i_B_imm_sel : IN std_logic;
	i_DATA_B : IN std_logic_vector(7 DOWNTO 0);
	i_DATA_Imm : IN std_logic_vector(7 DOWNTO 0);
	o_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END B_imm_multiplexer;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B_imm_sel	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[6]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_Imm[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_B[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF B_imm_multiplexer IS
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
SIGNAL ww_i_B_imm_sel : std_logic;
SIGNAL ww_i_DATA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_DATA_Imm : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA_B[0]~input_o\ : std_logic;
SIGNAL \i_DATA_Imm[0]~input_o\ : std_logic;
SIGNAL \i_B_imm_sel~input_o\ : std_logic;
SIGNAL \o_DATA~0_combout\ : std_logic;
SIGNAL \o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \i_DATA_Imm[1]~input_o\ : std_logic;
SIGNAL \i_DATA_B[1]~input_o\ : std_logic;
SIGNAL \o_DATA~1_combout\ : std_logic;
SIGNAL \o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \i_DATA_B[2]~input_o\ : std_logic;
SIGNAL \i_DATA_Imm[2]~input_o\ : std_logic;
SIGNAL \o_DATA~2_combout\ : std_logic;
SIGNAL \o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \i_DATA_B[3]~input_o\ : std_logic;
SIGNAL \i_DATA_Imm[3]~input_o\ : std_logic;
SIGNAL \o_DATA~3_combout\ : std_logic;
SIGNAL \o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \i_DATA_B[4]~input_o\ : std_logic;
SIGNAL \i_DATA_Imm[4]~input_o\ : std_logic;
SIGNAL \o_DATA~4_combout\ : std_logic;
SIGNAL \o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \i_DATA_Imm[5]~input_o\ : std_logic;
SIGNAL \i_DATA_B[5]~input_o\ : std_logic;
SIGNAL \o_DATA~5_combout\ : std_logic;
SIGNAL \o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \i_DATA_Imm[6]~input_o\ : std_logic;
SIGNAL \i_DATA_B[6]~input_o\ : std_logic;
SIGNAL \o_DATA~6_combout\ : std_logic;
SIGNAL \o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \i_DATA_Imm[7]~input_o\ : std_logic;
SIGNAL \i_DATA_B[7]~input_o\ : std_logic;
SIGNAL \o_DATA~7_combout\ : std_logic;
SIGNAL \o_DATA[7]~reg0_q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_B_imm_sel <= i_B_imm_sel;
ww_i_DATA_B <= i_DATA_B;
ww_i_DATA_Imm <= i_DATA_Imm;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X0_Y22_N16
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

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

-- Location: IOIBUF_X0_Y11_N8
\i_DATA_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(0),
	o => \i_DATA_B[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\i_DATA_Imm[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(0),
	o => \i_DATA_Imm[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\i_B_imm_sel~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B_imm_sel,
	o => \i_B_imm_sel~input_o\);

-- Location: LCCOMB_X1_Y3_N16
\o_DATA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~0_combout\ = (\i_B_imm_sel~input_o\ & ((\i_DATA_Imm[0]~input_o\))) # (!\i_B_imm_sel~input_o\ & (\i_DATA_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA_B[0]~input_o\,
	datac => \i_DATA_Imm[0]~input_o\,
	datad => \i_B_imm_sel~input_o\,
	combout => \o_DATA~0_combout\);

-- Location: FF_X1_Y3_N17
\o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[0]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\i_DATA_Imm[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(1),
	o => \i_DATA_Imm[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\i_DATA_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(1),
	o => \i_DATA_B[1]~input_o\);

-- Location: LCCOMB_X1_Y3_N18
\o_DATA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~1_combout\ = (\i_B_imm_sel~input_o\ & (\i_DATA_Imm[1]~input_o\)) # (!\i_B_imm_sel~input_o\ & ((\i_DATA_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datac => \i_DATA_Imm[1]~input_o\,
	datad => \i_DATA_B[1]~input_o\,
	combout => \o_DATA~1_combout\);

-- Location: FF_X1_Y3_N19
\o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[1]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N15
\i_DATA_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(2),
	o => \i_DATA_B[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\i_DATA_Imm[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(2),
	o => \i_DATA_Imm[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N4
\o_DATA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~2_combout\ = (\i_B_imm_sel~input_o\ & ((\i_DATA_Imm[2]~input_o\))) # (!\i_B_imm_sel~input_o\ & (\i_DATA_B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datab => \i_DATA_B[2]~input_o\,
	datad => \i_DATA_Imm[2]~input_o\,
	combout => \o_DATA~2_combout\);

-- Location: FF_X1_Y3_N5
\o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[2]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N1
\i_DATA_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(3),
	o => \i_DATA_B[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\i_DATA_Imm[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(3),
	o => \i_DATA_Imm[3]~input_o\);

-- Location: LCCOMB_X1_Y3_N14
\o_DATA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~3_combout\ = (\i_B_imm_sel~input_o\ & ((\i_DATA_Imm[3]~input_o\))) # (!\i_B_imm_sel~input_o\ & (\i_DATA_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datac => \i_DATA_B[3]~input_o\,
	datad => \i_DATA_Imm[3]~input_o\,
	combout => \o_DATA~3_combout\);

-- Location: FF_X1_Y3_N15
\o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[3]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N22
\i_DATA_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(4),
	o => \i_DATA_B[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\i_DATA_Imm[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(4),
	o => \i_DATA_Imm[4]~input_o\);

-- Location: LCCOMB_X1_Y3_N8
\o_DATA~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~4_combout\ = (\i_B_imm_sel~input_o\ & ((\i_DATA_Imm[4]~input_o\))) # (!\i_B_imm_sel~input_o\ & (\i_DATA_B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datac => \i_DATA_B[4]~input_o\,
	datad => \i_DATA_Imm[4]~input_o\,
	combout => \o_DATA~4_combout\);

-- Location: FF_X1_Y3_N9
\o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[4]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N1
\i_DATA_Imm[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(5),
	o => \i_DATA_Imm[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\i_DATA_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(5),
	o => \i_DATA_B[5]~input_o\);

-- Location: LCCOMB_X1_Y3_N26
\o_DATA~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~5_combout\ = (\i_B_imm_sel~input_o\ & (\i_DATA_Imm[5]~input_o\)) # (!\i_B_imm_sel~input_o\ & ((\i_DATA_B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datab => \i_DATA_Imm[5]~input_o\,
	datac => \i_DATA_B[5]~input_o\,
	combout => \o_DATA~5_combout\);

-- Location: FF_X1_Y3_N27
\o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[5]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N8
\i_DATA_Imm[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(6),
	o => \i_DATA_Imm[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\i_DATA_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(6),
	o => \i_DATA_B[6]~input_o\);

-- Location: LCCOMB_X1_Y3_N12
\o_DATA~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~6_combout\ = (\i_B_imm_sel~input_o\ & (\i_DATA_Imm[6]~input_o\)) # (!\i_B_imm_sel~input_o\ & ((\i_DATA_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datac => \i_DATA_Imm[6]~input_o\,
	datad => \i_DATA_B[6]~input_o\,
	combout => \o_DATA~6_combout\);

-- Location: FF_X1_Y3_N13
\o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[6]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N1
\i_DATA_Imm[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_Imm(7),
	o => \i_DATA_Imm[7]~input_o\);

-- Location: IOIBUF_X41_Y15_N22
\i_DATA_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_B(7),
	o => \i_DATA_B[7]~input_o\);

-- Location: LCCOMB_X1_Y3_N6
\o_DATA~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA~7_combout\ = (\i_B_imm_sel~input_o\ & (\i_DATA_Imm[7]~input_o\)) # (!\i_B_imm_sel~input_o\ & ((\i_DATA_B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B_imm_sel~input_o\,
	datab => \i_DATA_Imm[7]~input_o\,
	datad => \i_DATA_B[7]~input_o\,
	combout => \o_DATA~7_combout\);

-- Location: FF_X1_Y3_N7
\o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[7]~reg0_q\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;
END structure;


