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

-- DATE "04/15/2019 08:24:30"

-- 
-- Device: Altera EP3C16F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplex IS
    PORT (
	i_Select : IN std_logic_vector(1 DOWNTO 0);
	i_A0 : IN std_logic_vector(7 DOWNTO 0);
	i_A1 : IN std_logic_vector(7 DOWNTO 0);
	o_B0 : OUT std_logic_vector(7 DOWNTO 0);
	o_B1 : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplex;

-- Design Ports Information
-- o_B0[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B0[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B1[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Select[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Select[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[1]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[5]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplex IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_A0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_A1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_B0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_B1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_Select[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_B0[0]~output_o\ : std_logic;
SIGNAL \o_B0[1]~output_o\ : std_logic;
SIGNAL \o_B0[2]~output_o\ : std_logic;
SIGNAL \o_B0[3]~output_o\ : std_logic;
SIGNAL \o_B0[4]~output_o\ : std_logic;
SIGNAL \o_B0[5]~output_o\ : std_logic;
SIGNAL \o_B0[6]~output_o\ : std_logic;
SIGNAL \o_B0[7]~output_o\ : std_logic;
SIGNAL \o_B1[0]~output_o\ : std_logic;
SIGNAL \o_B1[1]~output_o\ : std_logic;
SIGNAL \o_B1[2]~output_o\ : std_logic;
SIGNAL \o_B1[3]~output_o\ : std_logic;
SIGNAL \o_B1[4]~output_o\ : std_logic;
SIGNAL \o_B1[5]~output_o\ : std_logic;
SIGNAL \o_B1[6]~output_o\ : std_logic;
SIGNAL \o_B1[7]~output_o\ : std_logic;
SIGNAL \i_Select[1]~input_o\ : std_logic;
SIGNAL \i_A1[0]~input_o\ : std_logic;
SIGNAL \i_A0[0]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \i_Select[0]~input_o\ : std_logic;
SIGNAL \i_Select[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \o_B0[0]$latch~combout\ : std_logic;
SIGNAL \i_A1[1]~input_o\ : std_logic;
SIGNAL \i_A0[1]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \o_B0[1]$latch~combout\ : std_logic;
SIGNAL \i_A1[2]~input_o\ : std_logic;
SIGNAL \i_A0[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \o_B0[2]$latch~combout\ : std_logic;
SIGNAL \i_A0[3]~input_o\ : std_logic;
SIGNAL \i_A1[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \o_B0[3]$latch~combout\ : std_logic;
SIGNAL \i_A0[4]~input_o\ : std_logic;
SIGNAL \i_A1[4]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \o_B0[4]$latch~combout\ : std_logic;
SIGNAL \i_A1[5]~input_o\ : std_logic;
SIGNAL \i_A0[5]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \o_B0[5]$latch~combout\ : std_logic;
SIGNAL \i_A0[6]~input_o\ : std_logic;
SIGNAL \i_A1[6]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \o_B0[6]$latch~combout\ : std_logic;
SIGNAL \i_A0[7]~input_o\ : std_logic;
SIGNAL \i_A1[7]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \o_B0[7]$latch~combout\ : std_logic;
SIGNAL \o_B1[0]$latch~combout\ : std_logic;
SIGNAL \o_B1[1]$latch~combout\ : std_logic;
SIGNAL \o_B1[2]$latch~combout\ : std_logic;
SIGNAL \o_B1[3]$latch~combout\ : std_logic;
SIGNAL \o_B1[4]$latch~combout\ : std_logic;
SIGNAL \o_B1[5]$latch~combout\ : std_logic;
SIGNAL \o_B1[6]$latch~combout\ : std_logic;
SIGNAL \o_B1[7]$latch~combout\ : std_logic;

BEGIN

ww_i_Select <= i_Select;
ww_i_A0 <= i_A0;
ww_i_A1 <= i_A1;
o_B0 <= ww_o_B0;
o_B1 <= ww_o_B1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_Select[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Select[0]~input_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_B0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_B0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_B0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_B0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\o_B0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[4]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\o_B0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[5]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_B0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[6]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\o_B0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B0[7]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B0[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_B1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_B1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_B1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_B1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_B1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\o_B1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\o_B1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[6]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\o_B1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_B1[7]$latch~combout\,
	devoe => ww_devoe,
	o => \o_B1[7]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\i_Select[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Select(1),
	o => \i_Select[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_A1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(0),
	o => \i_A1[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_A0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(0),
	o => \i_A0[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\i_Select[1]~input_o\ & (\i_A1[0]~input_o\)) # (!\i_Select[1]~input_o\ & ((\i_A0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datac => \i_A1[0]~input_o\,
	datad => \i_A0[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X0_Y14_N1
\i_Select[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Select(0),
	o => \i_Select[0]~input_o\);

-- Location: CLKCTRL_G4
\i_Select[0]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Select[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Select[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y1_N18
\o_B0[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[0]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\o_B0[0]$latch~combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_B0[0]$latch~combout\,
	datac => \Mux9~0_combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[0]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_A1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(1),
	o => \i_A1[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\i_A0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(1),
	o => \i_A0[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\i_Select[1]~input_o\ & (\i_A1[1]~input_o\)) # (!\i_Select[1]~input_o\ & ((\i_A0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datac => \i_A1[1]~input_o\,
	datad => \i_A0[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X17_Y1_N20
\o_B0[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[1]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[1]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \i_Select[0]~inputclkctrl_outclk\,
	datad => \o_B0[1]$latch~combout\,
	combout => \o_B0[1]$latch~combout\);

-- Location: IOIBUF_X7_Y0_N22
\i_A1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(2),
	o => \i_A1[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_A0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(2),
	o => \i_A0[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\i_Select[1]~input_o\ & (\i_A1[2]~input_o\)) # (!\i_Select[1]~input_o\ & ((\i_A0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datac => \i_A1[2]~input_o\,
	datad => \i_A0[2]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X17_Y1_N14
\o_B0[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[2]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[2]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datac => \o_B0[2]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[2]$latch~combout\);

-- Location: IOIBUF_X0_Y4_N1
\i_A0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(3),
	o => \i_A0[3]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\i_A1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(3),
	o => \i_A1[3]~input_o\);

-- Location: LCCOMB_X17_Y1_N6
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\i_Select[1]~input_o\ & ((\i_A1[3]~input_o\))) # (!\i_Select[1]~input_o\ & (\i_A0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_A0[3]~input_o\,
	datac => \i_A1[3]~input_o\,
	datad => \i_Select[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X17_Y1_N24
\o_B0[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[3]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[3]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \o_B0[3]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[3]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N1
\i_A0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(4),
	o => \i_A0[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\i_A1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(4),
	o => \i_A1[4]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\i_Select[1]~input_o\ & ((\i_A1[4]~input_o\))) # (!\i_Select[1]~input_o\ & (\i_A0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datab => \i_A0[4]~input_o\,
	datad => \i_A1[4]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X17_Y1_N10
\o_B0[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[4]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\o_B0[4]$latch~combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_B0[4]$latch~combout\,
	datab => \Mux13~0_combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[4]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N29
\i_A1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(5),
	o => \i_A1[5]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\i_A0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(5),
	o => \i_A0[5]~input_o\);

-- Location: LCCOMB_X33_Y18_N24
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\i_Select[1]~input_o\ & (\i_A1[5]~input_o\)) # (!\i_Select[1]~input_o\ & ((\i_A0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datab => \i_A1[5]~input_o\,
	datad => \i_A0[5]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X33_Y18_N30
\o_B0[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[5]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[5]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \o_B0[5]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[5]$latch~combout\);

-- Location: IOIBUF_X0_Y21_N1
\i_A0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(6),
	o => \i_A0[6]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\i_A1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(6),
	o => \i_A1[6]~input_o\);

-- Location: LCCOMB_X33_Y18_N10
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\i_Select[1]~input_o\ & ((\i_A1[6]~input_o\))) # (!\i_Select[1]~input_o\ & (\i_A0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datac => \i_A0[6]~input_o\,
	datad => \i_A1[6]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X33_Y18_N8
\o_B0[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[6]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[6]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datac => \o_B0[6]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[6]$latch~combout\);

-- Location: IOIBUF_X41_Y15_N22
\i_A0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(7),
	o => \i_A0[7]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\i_A1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(7),
	o => \i_A1[7]~input_o\);

-- Location: LCCOMB_X33_Y18_N12
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\i_Select[1]~input_o\ & ((\i_A1[7]~input_o\))) # (!\i_Select[1]~input_o\ & (\i_A0[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Select[1]~input_o\,
	datab => \i_A0[7]~input_o\,
	datac => \i_A1[7]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X33_Y18_N26
\o_B0[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B0[7]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B0[7]$latch~combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datac => \o_B0[7]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B0[7]$latch~combout\);

-- Location: LCCOMB_X17_Y1_N12
\o_B1[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[0]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\Mux9~0_combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\o_B1[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_B1[0]$latch~combout\,
	datac => \Mux9~0_combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[0]$latch~combout\);

-- Location: LCCOMB_X17_Y1_N30
\o_B1[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[1]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux10~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \o_B1[1]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[1]$latch~combout\);

-- Location: LCCOMB_X17_Y1_N16
\o_B1[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[2]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\Mux11~0_combout\))) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\o_B1[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_B1[2]$latch~combout\,
	datac => \Mux11~0_combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[2]$latch~combout\);

-- Location: LCCOMB_X17_Y1_N26
\o_B1[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[3]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux12~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datac => \o_B1[3]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[3]$latch~combout\);

-- Location: LCCOMB_X17_Y1_N28
\o_B1[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[4]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux13~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~0_combout\,
	datac => \o_B1[4]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[4]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N20
\o_B1[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[5]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux14~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \o_B1[5]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[5]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N22
\o_B1[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[6]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux15~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datac => \o_B1[6]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[6]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N16
\o_B1[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_B1[7]$latch~combout\ = (GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & (\Mux16~0_combout\)) # (!GLOBAL(\i_Select[0]~inputclkctrl_outclk\) & ((\o_B1[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \o_B1[7]$latch~combout\,
	datad => \i_Select[0]~inputclkctrl_outclk\,
	combout => \o_B1[7]$latch~combout\);

ww_o_B0(0) <= \o_B0[0]~output_o\;

ww_o_B0(1) <= \o_B0[1]~output_o\;

ww_o_B0(2) <= \o_B0[2]~output_o\;

ww_o_B0(3) <= \o_B0[3]~output_o\;

ww_o_B0(4) <= \o_B0[4]~output_o\;

ww_o_B0(5) <= \o_B0[5]~output_o\;

ww_o_B0(6) <= \o_B0[6]~output_o\;

ww_o_B0(7) <= \o_B0[7]~output_o\;

ww_o_B1(0) <= \o_B1[0]~output_o\;

ww_o_B1(1) <= \o_B1[1]~output_o\;

ww_o_B1(2) <= \o_B1[2]~output_o\;

ww_o_B1(3) <= \o_B1[3]~output_o\;

ww_o_B1(4) <= \o_B1[4]~output_o\;

ww_o_B1(5) <= \o_B1[5]~output_o\;

ww_o_B1(6) <= \o_B1[6]~output_o\;

ww_o_B1(7) <= \o_B1[7]~output_o\;
END structure;


