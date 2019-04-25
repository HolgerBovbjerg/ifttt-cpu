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

-- DATE "04/15/2019 10:53:31"

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

ENTITY 	control_unit IS
    PORT (
	i_CLK : IN std_logic;
	i_RESET : IN std_logic;
	i_OPCODE : IN std_logic_vector(3 DOWNTO 0);
	o_STATE : OUT std_logic_vector(6 DOWNTO 0)
	);
END control_unit;

-- Design Ports Information
-- o_STATE[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RESET	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit IS
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
SIGNAL ww_i_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_STATE : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_OPCODE[0]~input_o\ : std_logic;
SIGNAL \o_STATE[0]~output_o\ : std_logic;
SIGNAL \o_STATE[1]~output_o\ : std_logic;
SIGNAL \o_STATE[2]~output_o\ : std_logic;
SIGNAL \o_STATE[3]~output_o\ : std_logic;
SIGNAL \o_STATE[4]~output_o\ : std_logic;
SIGNAL \o_STATE[5]~output_o\ : std_logic;
SIGNAL \o_STATE[6]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RESET~input_o\ : std_logic;
SIGNAL \i_OPCODE[2]~input_o\ : std_logic;
SIGNAL \i_OPCODE[3]~input_o\ : std_logic;
SIGNAL \i_OPCODE[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \r_state~4_combout\ : std_logic;
SIGNAL \r_state~5_combout\ : std_logic;
SIGNAL \r_state~0_combout\ : std_logic;
SIGNAL \r_state~2_combout\ : std_logic;
SIGNAL \r_state~1_combout\ : std_logic;
SIGNAL \r_state~3_combout\ : std_logic;
SIGNAL \r_state~6_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL r_state : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_r_state : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RESET <= i_RESET;
ww_i_OPCODE <= i_OPCODE;
o_STATE <= ww_o_STATE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
ALT_INV_r_state(0) <= NOT r_state(0);

-- Location: IOOBUF_X0_Y9_N9
\o_STATE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_state(0),
	devoe => ww_devoe,
	o => \o_STATE[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_STATE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(1),
	devoe => ww_devoe,
	o => \o_STATE[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\o_STATE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(2),
	devoe => ww_devoe,
	o => \o_STATE[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\o_STATE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(3),
	devoe => ww_devoe,
	o => \o_STATE[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\o_STATE[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(4),
	devoe => ww_devoe,
	o => \o_STATE[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\o_STATE[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(5),
	devoe => ww_devoe,
	o => \o_STATE[5]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\o_STATE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_STATE[6]~output_o\);

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

-- Location: IOIBUF_X0_Y9_N22
\i_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RESET,
	o => \i_RESET~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\i_OPCODE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(2),
	o => \i_OPCODE[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\i_OPCODE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(3),
	o => \i_OPCODE[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\i_OPCODE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(1),
	o => \i_OPCODE[1]~input_o\);

-- Location: LCCOMB_X1_Y9_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_OPCODE[2]~input_o\ & (\i_OPCODE[3]~input_o\ & (r_state(3) & !\i_OPCODE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OPCODE[2]~input_o\,
	datab => \i_OPCODE[3]~input_o\,
	datac => r_state(3),
	datad => \i_OPCODE[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y9_N24
\r_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~4_combout\ = (!r_state(1) & (r_state(0) & (!r_state(2) & \Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(0),
	datac => r_state(2),
	datad => \Mux5~2_combout\,
	combout => \r_state~4_combout\);

-- Location: LCCOMB_X1_Y9_N0
\r_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~5_combout\ = (\Mux0~0_combout\ & (!r_state(4) & \r_state~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => r_state(4),
	datad => \r_state~4_combout\,
	combout => \r_state~5_combout\);

-- Location: FF_X1_Y9_N1
\r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(4));

-- Location: LCCOMB_X1_Y9_N2
\r_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~0_combout\ = (!r_state(5) & (!\i_RESET~input_o\ & (!r_state(3) & !r_state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(5),
	datab => \i_RESET~input_o\,
	datac => r_state(3),
	datad => r_state(4),
	combout => \r_state~0_combout\);

-- Location: LCCOMB_X1_Y9_N20
\r_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~2_combout\ = (r_state(1) & (r_state(0) & (!r_state(2) & \r_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(0),
	datac => r_state(2),
	datad => \r_state~0_combout\,
	combout => \r_state~2_combout\);

-- Location: FF_X1_Y9_N21
\r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(2));

-- Location: LCCOMB_X1_Y9_N22
\r_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~1_combout\ = (!r_state(2) & (!r_state(0) & (!r_state(1) & \r_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(2),
	datab => r_state(0),
	datac => r_state(1),
	datad => \r_state~0_combout\,
	combout => \r_state~1_combout\);

-- Location: FF_X1_Y9_N23
\r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(1));

-- Location: LCCOMB_X1_Y9_N30
\r_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~3_combout\ = (!r_state(1) & (r_state(0) & (r_state(2) & \r_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(0),
	datac => r_state(2),
	datad => \r_state~0_combout\,
	combout => \r_state~3_combout\);

-- Location: FF_X1_Y9_N31
\r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(3));

-- Location: LCCOMB_X1_Y9_N10
\r_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~6_combout\ = (!\Mux0~0_combout\ & (\r_state~4_combout\ & (r_state(3) $ (r_state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(3),
	datab => r_state(4),
	datac => \Mux0~0_combout\,
	datad => \r_state~4_combout\,
	combout => \r_state~6_combout\);

-- Location: FF_X1_Y9_N11
\r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(5));

-- Location: LCCOMB_X1_Y9_N28
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\i_RESET~input_o\ & !r_state(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RESET~input_o\,
	datad => r_state(5),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X1_Y9_N8
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (r_state(1)) # ((r_state(2)) # ((r_state(3)) # (!r_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(2),
	datac => r_state(3),
	datad => r_state(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y9_N18
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (r_state(1) & (!r_state(2) & (!r_state(3) & r_state(0)))) # (!r_state(1) & ((r_state(2) & (!r_state(3) & r_state(0))) # (!r_state(2) & (r_state(3) $ (!r_state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(2),
	datac => r_state(3),
	datad => r_state(0),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X1_Y9_N16
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & ((r_state(4) & (!\Mux5~0_combout\)) # (!r_state(4) & ((\Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => r_state(4),
	datac => \Mux5~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: FF_X1_Y9_N17
\r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(0));

-- Location: IOIBUF_X37_Y0_N1
\i_OPCODE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(0),
	o => \i_OPCODE[0]~input_o\);

ww_o_STATE(0) <= \o_STATE[0]~output_o\;

ww_o_STATE(1) <= \o_STATE[1]~output_o\;

ww_o_STATE(2) <= \o_STATE[2]~output_o\;

ww_o_STATE(3) <= \o_STATE[3]~output_o\;

ww_o_STATE(4) <= \o_STATE[4]~output_o\;

ww_o_STATE(5) <= \o_STATE[5]~output_o\;

ww_o_STATE(6) <= \o_STATE[6]~output_o\;
END structure;


