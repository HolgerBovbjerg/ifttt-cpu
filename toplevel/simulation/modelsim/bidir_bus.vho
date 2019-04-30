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

-- DATE "04/30/2019 10:15:58"

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

ENTITY 	bidir_bus IS
    PORT (
	i_bidir_port : INOUT std_logic_vector(7 DOWNTO 0);
	i_OUT_enable : IN std_logic;
	i_CLK : IN std_logic;
	i_DATA_in : IN std_logic_vector(7 DOWNTO 0);
	o_DATA_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END bidir_bus;

-- Design Ports Information
-- o_DATA_out[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_out[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_bidir_port[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OUT_enable	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_in[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bidir_bus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_OUT_enable : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_DATA_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_bidir_port[0]~output_o\ : std_logic;
SIGNAL \i_bidir_port[1]~output_o\ : std_logic;
SIGNAL \i_bidir_port[2]~output_o\ : std_logic;
SIGNAL \i_bidir_port[3]~output_o\ : std_logic;
SIGNAL \i_bidir_port[4]~output_o\ : std_logic;
SIGNAL \i_bidir_port[5]~output_o\ : std_logic;
SIGNAL \i_bidir_port[6]~output_o\ : std_logic;
SIGNAL \i_bidir_port[7]~output_o\ : std_logic;
SIGNAL \o_DATA_out[0]~output_o\ : std_logic;
SIGNAL \o_DATA_out[1]~output_o\ : std_logic;
SIGNAL \o_DATA_out[2]~output_o\ : std_logic;
SIGNAL \o_DATA_out[3]~output_o\ : std_logic;
SIGNAL \o_DATA_out[4]~output_o\ : std_logic;
SIGNAL \o_DATA_out[5]~output_o\ : std_logic;
SIGNAL \o_DATA_out[6]~output_o\ : std_logic;
SIGNAL \o_DATA_out[7]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA_in[0]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \i_OUT_enable~input_o\ : std_logic;
SIGNAL \i_DATA_in[1]~input_o\ : std_logic;
SIGNAL \i_DATA_in[2]~input_o\ : std_logic;
SIGNAL \i_DATA_in[3]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_in[4]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_in[5]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_in[6]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_in[7]~input_o\ : std_logic;
SIGNAL \r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \i_bidir_port[0]~input_o\ : std_logic;
SIGNAL \o_DATA_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[0]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[1]~input_o\ : std_logic;
SIGNAL \o_DATA_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[1]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[2]~input_o\ : std_logic;
SIGNAL \o_DATA_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[2]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[3]~input_o\ : std_logic;
SIGNAL \o_DATA_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[3]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[4]~input_o\ : std_logic;
SIGNAL \o_DATA_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[4]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[5]~input_o\ : std_logic;
SIGNAL \o_DATA_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[5]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[6]~input_o\ : std_logic;
SIGNAL \o_DATA_out[6]~reg0_q\ : std_logic;
SIGNAL \i_bidir_port[7]~input_o\ : std_logic;
SIGNAL \o_DATA_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA_out[7]~reg0_q\ : std_logic;
SIGNAL r_INPUT_reg : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_OUT_enable <= i_OUT_enable;
ww_i_CLK <= i_CLK;
ww_i_DATA_in <= i_DATA_in;
o_DATA_out <= ww_o_DATA_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X11_Y29_N9
\i_bidir_port[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(0),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\i_bidir_port[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(1),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\i_bidir_port[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(2),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\i_bidir_port[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(3),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\i_bidir_port[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(4),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\i_bidir_port[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(5),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\i_bidir_port[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(6),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\i_bidir_port[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_INPUT_reg(7),
	oe => \i_OUT_enable~input_o\,
	devoe => ww_devoe,
	o => \i_bidir_port[7]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\o_DATA_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\o_DATA_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\o_DATA_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\o_DATA_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\o_DATA_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o_DATA_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\o_DATA_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_DATA_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA_out[7]~output_o\);

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

-- Location: IOIBUF_X41_Y15_N1
\i_DATA_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(0),
	o => \i_DATA_in[0]~input_o\);

-- Location: LCCOMB_X37_Y28_N24
\r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[0]~feeder_combout\ = \i_DATA_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[0]~input_o\,
	combout => \r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X37_Y28_N25
\r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(0));

-- Location: IOIBUF_X41_Y15_N8
\i_OUT_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OUT_enable,
	o => \i_OUT_enable~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\i_DATA_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(1),
	o => \i_DATA_in[1]~input_o\);

-- Location: FF_X36_Y28_N1
\r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(1));

-- Location: IOIBUF_X9_Y29_N8
\i_DATA_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(2),
	o => \i_DATA_in[2]~input_o\);

-- Location: FF_X9_Y28_N1
\r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_in[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(2));

-- Location: IOIBUF_X41_Y18_N22
\i_DATA_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(3),
	o => \i_DATA_in[3]~input_o\);

-- Location: LCCOMB_X40_Y18_N0
\r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[3]~feeder_combout\ = \i_DATA_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[3]~input_o\,
	combout => \r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X40_Y18_N1
\r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(3));

-- Location: IOIBUF_X3_Y29_N15
\i_DATA_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(4),
	o => \i_DATA_in[4]~input_o\);

-- Location: LCCOMB_X3_Y28_N0
\r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[4]~feeder_combout\ = \i_DATA_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[4]~input_o\,
	combout => \r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X3_Y28_N1
\r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(4));

-- Location: IOIBUF_X0_Y25_N1
\i_DATA_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(5),
	o => \i_DATA_in[5]~input_o\);

-- Location: LCCOMB_X1_Y25_N16
\r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[5]~feeder_combout\ = \i_DATA_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[5]~input_o\,
	combout => \r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X1_Y25_N17
\r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(5));

-- Location: IOIBUF_X39_Y29_N29
\i_DATA_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(6),
	o => \i_DATA_in[6]~input_o\);

-- Location: LCCOMB_X39_Y28_N0
\r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[6]~feeder_combout\ = \i_DATA_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[6]~input_o\,
	combout => \r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X39_Y28_N1
\r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(6));

-- Location: IOIBUF_X32_Y29_N22
\i_DATA_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_in(7),
	o => \i_DATA_in[7]~input_o\);

-- Location: LCCOMB_X32_Y28_N0
\r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INPUT_reg[7]~feeder_combout\ = \i_DATA_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_in[7]~input_o\,
	combout => \r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X32_Y28_N1
\r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_INPUT_reg(7));

-- Location: IOIBUF_X11_Y29_N8
\i_bidir_port[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(0),
	o => \i_bidir_port[0]~input_o\);

-- Location: LCCOMB_X12_Y28_N0
\o_DATA_out[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[0]~reg0feeder_combout\ = \i_bidir_port[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[0]~input_o\,
	combout => \o_DATA_out[0]~reg0feeder_combout\);

-- Location: FF_X12_Y28_N1
\o_DATA_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[0]~reg0_q\);

-- Location: IOIBUF_X35_Y29_N8
\i_bidir_port[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(1),
	o => \i_bidir_port[1]~input_o\);

-- Location: LCCOMB_X35_Y28_N0
\o_DATA_out[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[1]~reg0feeder_combout\ = \i_bidir_port[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[1]~input_o\,
	combout => \o_DATA_out[1]~reg0feeder_combout\);

-- Location: FF_X35_Y28_N1
\o_DATA_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[1]~reg0_q\);

-- Location: IOIBUF_X9_Y29_N1
\i_bidir_port[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(2),
	o => \i_bidir_port[2]~input_o\);

-- Location: LCCOMB_X8_Y28_N0
\o_DATA_out[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[2]~reg0feeder_combout\ = \i_bidir_port[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[2]~input_o\,
	combout => \o_DATA_out[2]~reg0feeder_combout\);

-- Location: FF_X8_Y28_N1
\o_DATA_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[2]~reg0_q\);

-- Location: IOIBUF_X41_Y19_N8
\i_bidir_port[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(3),
	o => \i_bidir_port[3]~input_o\);

-- Location: LCCOMB_X40_Y19_N16
\o_DATA_out[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[3]~reg0feeder_combout\ = \i_bidir_port[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[3]~input_o\,
	combout => \o_DATA_out[3]~reg0feeder_combout\);

-- Location: FF_X40_Y19_N17
\o_DATA_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[3]~reg0_q\);

-- Location: IOIBUF_X3_Y29_N1
\i_bidir_port[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(4),
	o => \i_bidir_port[4]~input_o\);

-- Location: LCCOMB_X4_Y28_N0
\o_DATA_out[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[4]~reg0feeder_combout\ = \i_bidir_port[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[4]~input_o\,
	combout => \o_DATA_out[4]~reg0feeder_combout\);

-- Location: FF_X4_Y28_N1
\o_DATA_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[4]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N15
\i_bidir_port[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(5),
	o => \i_bidir_port[5]~input_o\);

-- Location: LCCOMB_X1_Y28_N8
\o_DATA_out[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[5]~reg0feeder_combout\ = \i_bidir_port[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[5]~input_o\,
	combout => \o_DATA_out[5]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N9
\o_DATA_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[5]~reg0_q\);

-- Location: IOIBUF_X39_Y29_N8
\i_bidir_port[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(6),
	o => \i_bidir_port[6]~input_o\);

-- Location: FF_X38_Y28_N1
\o_DATA_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_bidir_port[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[6]~reg0_q\);

-- Location: IOIBUF_X32_Y29_N29
\i_bidir_port[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => i_bidir_port(7),
	o => \i_bidir_port[7]~input_o\);

-- Location: LCCOMB_X31_Y28_N0
\o_DATA_out[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA_out[7]~reg0feeder_combout\ = \i_bidir_port[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_bidir_port[7]~input_o\,
	combout => \o_DATA_out[7]~reg0feeder_combout\);

-- Location: FF_X31_Y28_N1
\o_DATA_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA_out[7]~reg0_q\);

ww_o_DATA_out(0) <= \o_DATA_out[0]~output_o\;

ww_o_DATA_out(1) <= \o_DATA_out[1]~output_o\;

ww_o_DATA_out(2) <= \o_DATA_out[2]~output_o\;

ww_o_DATA_out(3) <= \o_DATA_out[3]~output_o\;

ww_o_DATA_out(4) <= \o_DATA_out[4]~output_o\;

ww_o_DATA_out(5) <= \o_DATA_out[5]~output_o\;

ww_o_DATA_out(6) <= \o_DATA_out[6]~output_o\;

ww_o_DATA_out(7) <= \o_DATA_out[7]~output_o\;

i_bidir_port(0) <= \i_bidir_port[0]~output_o\;

i_bidir_port(1) <= \i_bidir_port[1]~output_o\;

i_bidir_port(2) <= \i_bidir_port[2]~output_o\;

i_bidir_port(3) <= \i_bidir_port[3]~output_o\;

i_bidir_port(4) <= \i_bidir_port[4]~output_o\;

i_bidir_port(5) <= \i_bidir_port[5]~output_o\;

i_bidir_port(6) <= \i_bidir_port[6]~output_o\;

i_bidir_port(7) <= \i_bidir_port[7]~output_o\;
END structure;


