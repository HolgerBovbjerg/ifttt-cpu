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

-- DATE "04/15/2019 16:19:39"

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

ENTITY 	cpu_core IS
    PORT (
	i_CORE_CLK : IN std_logic;
	i_CORE_RESET : IN std_logic;
	i_CORE_HALT : IN std_logic;
	i_PROG_ADDRESS : IN std_logic_vector(7 DOWNTO 0)
	);
END cpu_core;

-- Design Ports Information
-- i_CORE_CLK	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_RESET	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CORE_HALT	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_PROG_ADDRESS[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu_core IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CORE_CLK : std_logic;
SIGNAL ww_i_CORE_RESET : std_logic;
SIGNAL ww_i_CORE_HALT : std_logic;
SIGNAL ww_i_PROG_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CORE_CLK~input_o\ : std_logic;
SIGNAL \i_CORE_RESET~input_o\ : std_logic;
SIGNAL \i_CORE_HALT~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \i_PROG_ADDRESS[7]~input_o\ : std_logic;

BEGIN

ww_i_CORE_CLK <= i_CORE_CLK;
ww_i_CORE_RESET <= i_CORE_RESET;
ww_i_CORE_HALT <= i_CORE_HALT;
ww_i_PROG_ADDRESS <= i_PROG_ADDRESS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X41_Y15_N8
\i_CORE_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_CLK,
	o => \i_CORE_CLK~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_CORE_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_RESET,
	o => \i_CORE_RESET~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\i_CORE_HALT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CORE_HALT,
	o => \i_CORE_HALT~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\i_PROG_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(0),
	o => \i_PROG_ADDRESS[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\i_PROG_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(1),
	o => \i_PROG_ADDRESS[1]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\i_PROG_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(2),
	o => \i_PROG_ADDRESS[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\i_PROG_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(3),
	o => \i_PROG_ADDRESS[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\i_PROG_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(4),
	o => \i_PROG_ADDRESS[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\i_PROG_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(5),
	o => \i_PROG_ADDRESS[5]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\i_PROG_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(6),
	o => \i_PROG_ADDRESS[6]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\i_PROG_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_PROG_ADDRESS(7),
	o => \i_PROG_ADDRESS[7]~input_o\);
END structure;


