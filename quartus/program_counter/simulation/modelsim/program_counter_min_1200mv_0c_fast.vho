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

-- DATE "04/15/2019 19:23:52"

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

ENTITY 	Program_counter IS
    PORT (
	i_PC_clk : IN std_logic;
	i_PC_enable : IN std_logic;
	i_PC_write_enable : IN std_logic;
	i_PC_address : IN std_logic_vector(9 DOWNTO 0);
	i_PC_reset : IN std_logic;
	o_PC_PM_address : OUT std_logic_vector(9 DOWNTO 0)
	);
END Program_counter;

-- Design Ports Information
-- o_PC_PM_address[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_PC_PM_address[9]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_reset	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_write_enable	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_enable	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[8]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PC_address[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Program_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_PC_clk : std_logic;
SIGNAL ww_i_PC_enable : std_logic;
SIGNAL ww_i_PC_write_enable : std_logic;
SIGNAL ww_i_PC_address : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_i_PC_reset : std_logic;
SIGNAL ww_o_PC_PM_address : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_PC_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_PC_PM_address[0]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[1]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[2]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[3]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[4]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[5]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[6]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[7]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[8]~output_o\ : std_logic;
SIGNAL \o_PC_PM_address[9]~output_o\ : std_logic;
SIGNAL \i_PC_clk~input_o\ : std_logic;
SIGNAL \i_PC_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_PROG_COUNT[0]~10_combout\ : std_logic;
SIGNAL \i_PC_address[0]~input_o\ : std_logic;
SIGNAL \i_PC_reset~input_o\ : std_logic;
SIGNAL \i_PC_write_enable~input_o\ : std_logic;
SIGNAL \i_PC_enable~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[0]~11\ : std_logic;
SIGNAL \r_PROG_COUNT[1]~12_combout\ : std_logic;
SIGNAL \i_PC_address[1]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[1]~13\ : std_logic;
SIGNAL \r_PROG_COUNT[2]~14_combout\ : std_logic;
SIGNAL \i_PC_address[2]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[2]~15\ : std_logic;
SIGNAL \r_PROG_COUNT[3]~16_combout\ : std_logic;
SIGNAL \i_PC_address[3]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[3]~17\ : std_logic;
SIGNAL \r_PROG_COUNT[4]~18_combout\ : std_logic;
SIGNAL \i_PC_address[4]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[4]~19\ : std_logic;
SIGNAL \r_PROG_COUNT[5]~20_combout\ : std_logic;
SIGNAL \i_PC_address[5]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[5]~21\ : std_logic;
SIGNAL \r_PROG_COUNT[6]~22_combout\ : std_logic;
SIGNAL \i_PC_address[6]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[6]~23\ : std_logic;
SIGNAL \r_PROG_COUNT[7]~24_combout\ : std_logic;
SIGNAL \i_PC_address[7]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[7]~25\ : std_logic;
SIGNAL \r_PROG_COUNT[8]~26_combout\ : std_logic;
SIGNAL \i_PC_address[8]~input_o\ : std_logic;
SIGNAL \r_PROG_COUNT[8]~27\ : std_logic;
SIGNAL \r_PROG_COUNT[9]~28_combout\ : std_logic;
SIGNAL \i_PC_address[9]~input_o\ : std_logic;
SIGNAL r_PROG_COUNT : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_i_PC_clk <= i_PC_clk;
ww_i_PC_enable <= i_PC_enable;
ww_i_PC_write_enable <= i_PC_write_enable;
ww_i_PC_address <= i_PC_address;
ww_i_PC_reset <= i_PC_reset;
o_PC_PM_address <= ww_o_PC_PM_address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_PC_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_PC_clk~input_o\);

-- Location: IOOBUF_X3_Y0_N16
\o_PC_PM_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(0),
	devoe => ww_devoe,
	o => \o_PC_PM_address[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\o_PC_PM_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(1),
	devoe => ww_devoe,
	o => \o_PC_PM_address[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_PC_PM_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(2),
	devoe => ww_devoe,
	o => \o_PC_PM_address[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_PC_PM_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(3),
	devoe => ww_devoe,
	o => \o_PC_PM_address[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\o_PC_PM_address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(4),
	devoe => ww_devoe,
	o => \o_PC_PM_address[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\o_PC_PM_address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(5),
	devoe => ww_devoe,
	o => \o_PC_PM_address[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\o_PC_PM_address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(6),
	devoe => ww_devoe,
	o => \o_PC_PM_address[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\o_PC_PM_address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(7),
	devoe => ww_devoe,
	o => \o_PC_PM_address[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\o_PC_PM_address[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(8),
	devoe => ww_devoe,
	o => \o_PC_PM_address[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\o_PC_PM_address[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_PROG_COUNT(9),
	devoe => ww_devoe,
	o => \o_PC_PM_address[9]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_PC_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_clk,
	o => \i_PC_clk~input_o\);

-- Location: CLKCTRL_G4
\i_PC_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_PC_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_PC_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y4_N4
\r_PROG_COUNT[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[0]~10_combout\ = r_PROG_COUNT(0) $ (VCC)
-- \r_PROG_COUNT[0]~11\ = CARRY(r_PROG_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(0),
	datad => VCC,
	combout => \r_PROG_COUNT[0]~10_combout\,
	cout => \r_PROG_COUNT[0]~11\);

-- Location: IOIBUF_X41_Y15_N8
\i_PC_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(0),
	o => \i_PC_address[0]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_PC_reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_reset,
	o => \i_PC_reset~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\i_PC_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_write_enable,
	o => \i_PC_write_enable~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\i_PC_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_enable,
	o => \i_PC_enable~input_o\);

-- Location: FF_X4_Y4_N5
\r_PROG_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[0]~10_combout\,
	asdata => \i_PC_address[0]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(0));

-- Location: LCCOMB_X4_Y4_N6
\r_PROG_COUNT[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[1]~12_combout\ = (r_PROG_COUNT(1) & (!\r_PROG_COUNT[0]~11\)) # (!r_PROG_COUNT(1) & ((\r_PROG_COUNT[0]~11\) # (GND)))
-- \r_PROG_COUNT[1]~13\ = CARRY((!\r_PROG_COUNT[0]~11\) # (!r_PROG_COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_PROG_COUNT(1),
	datad => VCC,
	cin => \r_PROG_COUNT[0]~11\,
	combout => \r_PROG_COUNT[1]~12_combout\,
	cout => \r_PROG_COUNT[1]~13\);

-- Location: IOIBUF_X0_Y5_N15
\i_PC_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(1),
	o => \i_PC_address[1]~input_o\);

-- Location: FF_X4_Y4_N7
\r_PROG_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[1]~12_combout\,
	asdata => \i_PC_address[1]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(1));

-- Location: LCCOMB_X4_Y4_N8
\r_PROG_COUNT[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[2]~14_combout\ = (r_PROG_COUNT(2) & (\r_PROG_COUNT[1]~13\ $ (GND))) # (!r_PROG_COUNT(2) & (!\r_PROG_COUNT[1]~13\ & VCC))
-- \r_PROG_COUNT[2]~15\ = CARRY((r_PROG_COUNT(2) & !\r_PROG_COUNT[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(2),
	datad => VCC,
	cin => \r_PROG_COUNT[1]~13\,
	combout => \r_PROG_COUNT[2]~14_combout\,
	cout => \r_PROG_COUNT[2]~15\);

-- Location: IOIBUF_X5_Y0_N8
\i_PC_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(2),
	o => \i_PC_address[2]~input_o\);

-- Location: FF_X4_Y4_N9
\r_PROG_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[2]~14_combout\,
	asdata => \i_PC_address[2]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(2));

-- Location: LCCOMB_X4_Y4_N10
\r_PROG_COUNT[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[3]~16_combout\ = (r_PROG_COUNT(3) & (!\r_PROG_COUNT[2]~15\)) # (!r_PROG_COUNT(3) & ((\r_PROG_COUNT[2]~15\) # (GND)))
-- \r_PROG_COUNT[3]~17\ = CARRY((!\r_PROG_COUNT[2]~15\) # (!r_PROG_COUNT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_PROG_COUNT(3),
	datad => VCC,
	cin => \r_PROG_COUNT[2]~15\,
	combout => \r_PROG_COUNT[3]~16_combout\,
	cout => \r_PROG_COUNT[3]~17\);

-- Location: IOIBUF_X7_Y0_N15
\i_PC_address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(3),
	o => \i_PC_address[3]~input_o\);

-- Location: FF_X4_Y4_N11
\r_PROG_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[3]~16_combout\,
	asdata => \i_PC_address[3]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(3));

-- Location: LCCOMB_X4_Y4_N12
\r_PROG_COUNT[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[4]~18_combout\ = (r_PROG_COUNT(4) & (\r_PROG_COUNT[3]~17\ $ (GND))) # (!r_PROG_COUNT(4) & (!\r_PROG_COUNT[3]~17\ & VCC))
-- \r_PROG_COUNT[4]~19\ = CARRY((r_PROG_COUNT(4) & !\r_PROG_COUNT[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_PROG_COUNT(4),
	datad => VCC,
	cin => \r_PROG_COUNT[3]~17\,
	combout => \r_PROG_COUNT[4]~18_combout\,
	cout => \r_PROG_COUNT[4]~19\);

-- Location: IOIBUF_X14_Y0_N15
\i_PC_address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(4),
	o => \i_PC_address[4]~input_o\);

-- Location: FF_X4_Y4_N13
\r_PROG_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[4]~18_combout\,
	asdata => \i_PC_address[4]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(4));

-- Location: LCCOMB_X4_Y4_N14
\r_PROG_COUNT[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[5]~20_combout\ = (r_PROG_COUNT(5) & (!\r_PROG_COUNT[4]~19\)) # (!r_PROG_COUNT(5) & ((\r_PROG_COUNT[4]~19\) # (GND)))
-- \r_PROG_COUNT[5]~21\ = CARRY((!\r_PROG_COUNT[4]~19\) # (!r_PROG_COUNT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(5),
	datad => VCC,
	cin => \r_PROG_COUNT[4]~19\,
	combout => \r_PROG_COUNT[5]~20_combout\,
	cout => \r_PROG_COUNT[5]~21\);

-- Location: IOIBUF_X0_Y4_N22
\i_PC_address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(5),
	o => \i_PC_address[5]~input_o\);

-- Location: FF_X4_Y4_N15
\r_PROG_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[5]~20_combout\,
	asdata => \i_PC_address[5]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(5));

-- Location: LCCOMB_X4_Y4_N16
\r_PROG_COUNT[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[6]~22_combout\ = (r_PROG_COUNT(6) & (\r_PROG_COUNT[5]~21\ $ (GND))) # (!r_PROG_COUNT(6) & (!\r_PROG_COUNT[5]~21\ & VCC))
-- \r_PROG_COUNT[6]~23\ = CARRY((r_PROG_COUNT(6) & !\r_PROG_COUNT[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(6),
	datad => VCC,
	cin => \r_PROG_COUNT[5]~21\,
	combout => \r_PROG_COUNT[6]~22_combout\,
	cout => \r_PROG_COUNT[6]~23\);

-- Location: IOIBUF_X0_Y5_N8
\i_PC_address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(6),
	o => \i_PC_address[6]~input_o\);

-- Location: FF_X4_Y4_N17
\r_PROG_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[6]~22_combout\,
	asdata => \i_PC_address[6]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(6));

-- Location: LCCOMB_X4_Y4_N18
\r_PROG_COUNT[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[7]~24_combout\ = (r_PROG_COUNT(7) & (!\r_PROG_COUNT[6]~23\)) # (!r_PROG_COUNT(7) & ((\r_PROG_COUNT[6]~23\) # (GND)))
-- \r_PROG_COUNT[7]~25\ = CARRY((!\r_PROG_COUNT[6]~23\) # (!r_PROG_COUNT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(7),
	datad => VCC,
	cin => \r_PROG_COUNT[6]~23\,
	combout => \r_PROG_COUNT[7]~24_combout\,
	cout => \r_PROG_COUNT[7]~25\);

-- Location: IOIBUF_X7_Y0_N29
\i_PC_address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(7),
	o => \i_PC_address[7]~input_o\);

-- Location: FF_X4_Y4_N19
\r_PROG_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[7]~24_combout\,
	asdata => \i_PC_address[7]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(7));

-- Location: LCCOMB_X4_Y4_N20
\r_PROG_COUNT[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[8]~26_combout\ = (r_PROG_COUNT(8) & (\r_PROG_COUNT[7]~25\ $ (GND))) # (!r_PROG_COUNT(8) & (!\r_PROG_COUNT[7]~25\ & VCC))
-- \r_PROG_COUNT[8]~27\ = CARRY((r_PROG_COUNT(8) & !\r_PROG_COUNT[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_PROG_COUNT(8),
	datad => VCC,
	cin => \r_PROG_COUNT[7]~25\,
	combout => \r_PROG_COUNT[8]~26_combout\,
	cout => \r_PROG_COUNT[8]~27\);

-- Location: IOIBUF_X3_Y0_N29
\i_PC_address[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(8),
	o => \i_PC_address[8]~input_o\);

-- Location: FF_X4_Y4_N21
\r_PROG_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[8]~26_combout\,
	asdata => \i_PC_address[8]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(8));

-- Location: LCCOMB_X4_Y4_N22
\r_PROG_COUNT[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_PROG_COUNT[9]~28_combout\ = r_PROG_COUNT(9) $ (\r_PROG_COUNT[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_PROG_COUNT(9),
	cin => \r_PROG_COUNT[8]~27\,
	combout => \r_PROG_COUNT[9]~28_combout\);

-- Location: IOIBUF_X0_Y9_N1
\i_PC_address[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PC_address(9),
	o => \i_PC_address[9]~input_o\);

-- Location: FF_X4_Y4_N23
\r_PROG_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_PC_clk~inputclkctrl_outclk\,
	d => \r_PROG_COUNT[9]~28_combout\,
	asdata => \i_PC_address[9]~input_o\,
	sclr => \i_PC_reset~input_o\,
	sload => \i_PC_write_enable~input_o\,
	ena => \i_PC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_PROG_COUNT(9));

ww_o_PC_PM_address(0) <= \o_PC_PM_address[0]~output_o\;

ww_o_PC_PM_address(1) <= \o_PC_PM_address[1]~output_o\;

ww_o_PC_PM_address(2) <= \o_PC_PM_address[2]~output_o\;

ww_o_PC_PM_address(3) <= \o_PC_PM_address[3]~output_o\;

ww_o_PC_PM_address(4) <= \o_PC_PM_address[4]~output_o\;

ww_o_PC_PM_address(5) <= \o_PC_PM_address[5]~output_o\;

ww_o_PC_PM_address(6) <= \o_PC_PM_address[6]~output_o\;

ww_o_PC_PM_address(7) <= \o_PC_PM_address[7]~output_o\;

ww_o_PC_PM_address(8) <= \o_PC_PM_address[8]~output_o\;

ww_o_PC_PM_address(9) <= \o_PC_PM_address[9]~output_o\;
END structure;


