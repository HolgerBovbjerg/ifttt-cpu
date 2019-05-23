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

-- DATE "05/23/2019 17:06:56"

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

ENTITY 	InstrucReg IS
    PORT (
	i_IR_clk : IN std_logic;
	i_IR_enable : IN std_logic;
	i_IR_data : IN std_logic_vector(31 DOWNTO 0);
	o_IR_instruction : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END InstrucReg;

-- Design Ports Information
-- o_IR_instruction[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[8]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[10]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[13]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[14]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[16]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[18]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[19]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[20]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[21]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[22]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[23]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[24]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[25]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[26]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[27]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[28]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[29]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[30]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_IR_instruction[31]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_enable	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[12]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[15]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[17]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[18]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[20]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[21]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[23]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[24]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[25]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[26]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[27]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[28]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[29]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[30]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR_data[31]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF InstrucReg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_IR_clk : std_logic;
SIGNAL ww_i_IR_enable : std_logic;
SIGNAL ww_i_IR_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_IR_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_IR_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_IR_instruction[0]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[1]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[2]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[3]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[4]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[5]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[6]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[7]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[8]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[9]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[10]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[11]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[12]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[13]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[14]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[15]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[16]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[17]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[18]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[19]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[20]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[21]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[22]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[23]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[24]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[25]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[26]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[27]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[28]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[29]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[30]~output_o\ : std_logic;
SIGNAL \o_IR_instruction[31]~output_o\ : std_logic;
SIGNAL \i_IR_clk~input_o\ : std_logic;
SIGNAL \i_IR_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_IR_data[0]~input_o\ : std_logic;
SIGNAL \i_IR_enable~input_o\ : std_logic;
SIGNAL \i_IR_data[1]~input_o\ : std_logic;
SIGNAL \r_register[1]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[2]~input_o\ : std_logic;
SIGNAL \i_IR_data[3]~input_o\ : std_logic;
SIGNAL \r_register[3]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[4]~input_o\ : std_logic;
SIGNAL \i_IR_data[5]~input_o\ : std_logic;
SIGNAL \r_register[5]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[6]~input_o\ : std_logic;
SIGNAL \i_IR_data[7]~input_o\ : std_logic;
SIGNAL \r_register[7]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[8]~input_o\ : std_logic;
SIGNAL \i_IR_data[9]~input_o\ : std_logic;
SIGNAL \r_register[9]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[10]~input_o\ : std_logic;
SIGNAL \i_IR_data[11]~input_o\ : std_logic;
SIGNAL \i_IR_data[12]~input_o\ : std_logic;
SIGNAL \r_register[12]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[13]~input_o\ : std_logic;
SIGNAL \r_register[13]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[14]~input_o\ : std_logic;
SIGNAL \i_IR_data[15]~input_o\ : std_logic;
SIGNAL \r_register[15]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[16]~input_o\ : std_logic;
SIGNAL \i_IR_data[17]~input_o\ : std_logic;
SIGNAL \i_IR_data[18]~input_o\ : std_logic;
SIGNAL \i_IR_data[19]~input_o\ : std_logic;
SIGNAL \i_IR_data[20]~input_o\ : std_logic;
SIGNAL \i_IR_data[21]~input_o\ : std_logic;
SIGNAL \i_IR_data[22]~input_o\ : std_logic;
SIGNAL \i_IR_data[23]~input_o\ : std_logic;
SIGNAL \r_register[23]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[24]~input_o\ : std_logic;
SIGNAL \r_register[24]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[25]~input_o\ : std_logic;
SIGNAL \r_register[25]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[26]~input_o\ : std_logic;
SIGNAL \i_IR_data[27]~input_o\ : std_logic;
SIGNAL \r_register[27]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[28]~input_o\ : std_logic;
SIGNAL \i_IR_data[29]~input_o\ : std_logic;
SIGNAL \r_register[29]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[30]~input_o\ : std_logic;
SIGNAL \r_register[30]~feeder_combout\ : std_logic;
SIGNAL \i_IR_data[31]~input_o\ : std_logic;
SIGNAL \r_register[31]~feeder_combout\ : std_logic;
SIGNAL r_register : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_i_IR_clk <= i_IR_clk;
ww_i_IR_enable <= i_IR_enable;
ww_i_IR_data <= i_IR_data;
o_IR_instruction <= ww_o_IR_instruction;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_IR_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_IR_clk~input_o\);

-- Location: IOOBUF_X26_Y0_N30
\o_IR_instruction[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(0),
	devoe => ww_devoe,
	o => \o_IR_instruction[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\o_IR_instruction[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(1),
	devoe => ww_devoe,
	o => \o_IR_instruction[1]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\o_IR_instruction[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(2),
	devoe => ww_devoe,
	o => \o_IR_instruction[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_IR_instruction[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(3),
	devoe => ww_devoe,
	o => \o_IR_instruction[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_IR_instruction[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(4),
	devoe => ww_devoe,
	o => \o_IR_instruction[4]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\o_IR_instruction[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(5),
	devoe => ww_devoe,
	o => \o_IR_instruction[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\o_IR_instruction[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(6),
	devoe => ww_devoe,
	o => \o_IR_instruction[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_IR_instruction[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(7),
	devoe => ww_devoe,
	o => \o_IR_instruction[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_IR_instruction[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(8),
	devoe => ww_devoe,
	o => \o_IR_instruction[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_IR_instruction[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(9),
	devoe => ww_devoe,
	o => \o_IR_instruction[9]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\o_IR_instruction[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(10),
	devoe => ww_devoe,
	o => \o_IR_instruction[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_IR_instruction[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(11),
	devoe => ww_devoe,
	o => \o_IR_instruction[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_IR_instruction[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(12),
	devoe => ww_devoe,
	o => \o_IR_instruction[12]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\o_IR_instruction[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(13),
	devoe => ww_devoe,
	o => \o_IR_instruction[13]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\o_IR_instruction[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(14),
	devoe => ww_devoe,
	o => \o_IR_instruction[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_IR_instruction[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(15),
	devoe => ww_devoe,
	o => \o_IR_instruction[15]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\o_IR_instruction[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(16),
	devoe => ww_devoe,
	o => \o_IR_instruction[16]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_IR_instruction[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(17),
	devoe => ww_devoe,
	o => \o_IR_instruction[17]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\o_IR_instruction[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(18),
	devoe => ww_devoe,
	o => \o_IR_instruction[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_IR_instruction[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(19),
	devoe => ww_devoe,
	o => \o_IR_instruction[19]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\o_IR_instruction[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(20),
	devoe => ww_devoe,
	o => \o_IR_instruction[20]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\o_IR_instruction[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(21),
	devoe => ww_devoe,
	o => \o_IR_instruction[21]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_IR_instruction[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(22),
	devoe => ww_devoe,
	o => \o_IR_instruction[22]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\o_IR_instruction[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(23),
	devoe => ww_devoe,
	o => \o_IR_instruction[23]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\o_IR_instruction[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(24),
	devoe => ww_devoe,
	o => \o_IR_instruction[24]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\o_IR_instruction[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(25),
	devoe => ww_devoe,
	o => \o_IR_instruction[25]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\o_IR_instruction[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(26),
	devoe => ww_devoe,
	o => \o_IR_instruction[26]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_IR_instruction[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(27),
	devoe => ww_devoe,
	o => \o_IR_instruction[27]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\o_IR_instruction[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(28),
	devoe => ww_devoe,
	o => \o_IR_instruction[28]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\o_IR_instruction[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(29),
	devoe => ww_devoe,
	o => \o_IR_instruction[29]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\o_IR_instruction[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(30),
	devoe => ww_devoe,
	o => \o_IR_instruction[30]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\o_IR_instruction[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_register(31),
	devoe => ww_devoe,
	o => \o_IR_instruction[31]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_IR_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_clk,
	o => \i_IR_clk~input_o\);

-- Location: CLKCTRL_G4
\i_IR_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_IR_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_IR_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y15_N8
\i_IR_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(0),
	o => \i_IR_data[0]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_IR_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_enable,
	o => \i_IR_enable~input_o\);

-- Location: FF_X15_Y1_N1
\r_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[0]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(0));

-- Location: IOIBUF_X41_Y18_N1
\i_IR_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(1),
	o => \i_IR_data[1]~input_o\);

-- Location: LCCOMB_X40_Y14_N24
\r_register[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[1]~feeder_combout\ = \i_IR_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[1]~input_o\,
	combout => \r_register[1]~feeder_combout\);

-- Location: FF_X40_Y14_N25
\r_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[1]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(1));

-- Location: IOIBUF_X41_Y14_N8
\i_IR_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(2),
	o => \i_IR_data[2]~input_o\);

-- Location: FF_X40_Y14_N3
\r_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[2]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(2));

-- Location: IOIBUF_X11_Y0_N29
\i_IR_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(3),
	o => \i_IR_data[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\r_register[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[3]~feeder_combout\ = \i_IR_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[3]~input_o\,
	combout => \r_register[3]~feeder_combout\);

-- Location: FF_X15_Y1_N19
\r_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[3]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(3));

-- Location: IOIBUF_X16_Y0_N22
\i_IR_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(4),
	o => \i_IR_data[4]~input_o\);

-- Location: FF_X15_Y1_N13
\r_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[4]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(4));

-- Location: IOIBUF_X41_Y10_N22
\i_IR_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(5),
	o => \i_IR_data[5]~input_o\);

-- Location: LCCOMB_X40_Y14_N4
\r_register[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[5]~feeder_combout\ = \i_IR_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[5]~input_o\,
	combout => \r_register[5]~feeder_combout\);

-- Location: FF_X40_Y14_N5
\r_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[5]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(5));

-- Location: IOIBUF_X11_Y0_N22
\i_IR_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(6),
	o => \i_IR_data[6]~input_o\);

-- Location: FF_X15_Y1_N23
\r_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[6]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(6));

-- Location: IOIBUF_X19_Y0_N22
\i_IR_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(7),
	o => \i_IR_data[7]~input_o\);

-- Location: LCCOMB_X15_Y1_N8
\r_register[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[7]~feeder_combout\ = \i_IR_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[7]~input_o\,
	combout => \r_register[7]~feeder_combout\);

-- Location: FF_X15_Y1_N9
\r_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[7]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(7));

-- Location: IOIBUF_X19_Y0_N8
\i_IR_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(8),
	o => \i_IR_data[8]~input_o\);

-- Location: FF_X15_Y1_N11
\r_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[8]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(8));

-- Location: IOIBUF_X23_Y0_N22
\i_IR_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(9),
	o => \i_IR_data[9]~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\r_register[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[9]~feeder_combout\ = \i_IR_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[9]~input_o\,
	combout => \r_register[9]~feeder_combout\);

-- Location: FF_X15_Y1_N21
\r_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[9]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(9));

-- Location: IOIBUF_X41_Y12_N8
\i_IR_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(10),
	o => \i_IR_data[10]~input_o\);

-- Location: FF_X40_Y14_N31
\r_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[10]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(10));

-- Location: IOIBUF_X19_Y0_N1
\i_IR_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(11),
	o => \i_IR_data[11]~input_o\);

-- Location: FF_X15_Y1_N31
\r_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[11]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(11));

-- Location: IOIBUF_X19_Y0_N29
\i_IR_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(12),
	o => \i_IR_data[12]~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\r_register[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[12]~feeder_combout\ = \i_IR_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[12]~input_o\,
	combout => \r_register[12]~feeder_combout\);

-- Location: FF_X15_Y1_N17
\r_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[12]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(12));

-- Location: IOIBUF_X41_Y14_N22
\i_IR_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(13),
	o => \i_IR_data[13]~input_o\);

-- Location: LCCOMB_X40_Y14_N16
\r_register[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[13]~feeder_combout\ = \i_IR_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[13]~input_o\,
	combout => \r_register[13]~feeder_combout\);

-- Location: FF_X40_Y14_N17
\r_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[13]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(13));

-- Location: IOIBUF_X41_Y8_N8
\i_IR_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(14),
	o => \i_IR_data[14]~input_o\);

-- Location: FF_X40_Y14_N11
\r_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[14]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(14));

-- Location: IOIBUF_X16_Y0_N15
\i_IR_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(15),
	o => \i_IR_data[15]~input_o\);

-- Location: LCCOMB_X15_Y1_N2
\r_register[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[15]~feeder_combout\ = \i_IR_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[15]~input_o\,
	combout => \r_register[15]~feeder_combout\);

-- Location: FF_X15_Y1_N3
\r_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[15]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(15));

-- Location: IOIBUF_X41_Y11_N1
\i_IR_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(16),
	o => \i_IR_data[16]~input_o\);

-- Location: FF_X40_Y14_N21
\r_register[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[16]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(16));

-- Location: IOIBUF_X16_Y0_N8
\i_IR_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(17),
	o => \i_IR_data[17]~input_o\);

-- Location: FF_X15_Y1_N29
\r_register[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[17]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(17));

-- Location: IOIBUF_X41_Y9_N22
\i_IR_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(18),
	o => \i_IR_data[18]~input_o\);

-- Location: FF_X40_Y14_N23
\r_register[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[18]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(18));

-- Location: IOIBUF_X16_Y0_N1
\i_IR_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(19),
	o => \i_IR_data[19]~input_o\);

-- Location: FF_X15_Y1_N15
\r_register[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[19]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(19));

-- Location: IOIBUF_X41_Y10_N8
\i_IR_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(20),
	o => \i_IR_data[20]~input_o\);

-- Location: FF_X40_Y14_N1
\r_register[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[20]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(20));

-- Location: IOIBUF_X9_Y0_N29
\i_IR_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(21),
	o => \i_IR_data[21]~input_o\);

-- Location: FF_X15_Y1_N25
\r_register[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[21]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(21));

-- Location: IOIBUF_X23_Y0_N8
\i_IR_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(22),
	o => \i_IR_data[22]~input_o\);

-- Location: FF_X15_Y1_N27
\r_register[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[22]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(22));

-- Location: IOIBUF_X41_Y10_N15
\i_IR_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(23),
	o => \i_IR_data[23]~input_o\);

-- Location: LCCOMB_X40_Y14_N26
\r_register[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[23]~feeder_combout\ = \i_IR_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[23]~input_o\,
	combout => \r_register[23]~feeder_combout\);

-- Location: FF_X40_Y14_N27
\r_register[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[23]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(23));

-- Location: IOIBUF_X23_Y0_N1
\i_IR_data[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(24),
	o => \i_IR_data[24]~input_o\);

-- Location: LCCOMB_X15_Y1_N4
\r_register[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[24]~feeder_combout\ = \i_IR_data[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[24]~input_o\,
	combout => \r_register[24]~feeder_combout\);

-- Location: FF_X15_Y1_N5
\r_register[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[24]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(24));

-- Location: IOIBUF_X41_Y14_N1
\i_IR_data[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(25),
	o => \i_IR_data[25]~input_o\);

-- Location: LCCOMB_X40_Y14_N12
\r_register[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[25]~feeder_combout\ = \i_IR_data[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[25]~input_o\,
	combout => \r_register[25]~feeder_combout\);

-- Location: FF_X40_Y14_N13
\r_register[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[25]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(25));

-- Location: IOIBUF_X41_Y18_N15
\i_IR_data[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(26),
	o => \i_IR_data[26]~input_o\);

-- Location: FF_X40_Y14_N15
\r_register[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[26]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(26));

-- Location: IOIBUF_X19_Y0_N15
\i_IR_data[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(27),
	o => \i_IR_data[27]~input_o\);

-- Location: LCCOMB_X15_Y1_N6
\r_register[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[27]~feeder_combout\ = \i_IR_data[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[27]~input_o\,
	combout => \r_register[27]~feeder_combout\);

-- Location: FF_X15_Y1_N7
\r_register[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[27]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(27));

-- Location: IOIBUF_X41_Y8_N22
\i_IR_data[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(28),
	o => \i_IR_data[28]~input_o\);

-- Location: FF_X40_Y14_N9
\r_register[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	asdata => \i_IR_data[28]~input_o\,
	sload => VCC,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(28));

-- Location: IOIBUF_X41_Y19_N22
\i_IR_data[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(29),
	o => \i_IR_data[29]~input_o\);

-- Location: LCCOMB_X40_Y14_N18
\r_register[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[29]~feeder_combout\ = \i_IR_data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[29]~input_o\,
	combout => \r_register[29]~feeder_combout\);

-- Location: FF_X40_Y14_N19
\r_register[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[29]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(29));

-- Location: IOIBUF_X41_Y18_N22
\i_IR_data[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(30),
	o => \i_IR_data[30]~input_o\);

-- Location: LCCOMB_X40_Y14_N28
\r_register[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[30]~feeder_combout\ = \i_IR_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[30]~input_o\,
	combout => \r_register[30]~feeder_combout\);

-- Location: FF_X40_Y14_N29
\r_register[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[30]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(30));

-- Location: IOIBUF_X41_Y10_N1
\i_IR_data[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR_data(31),
	o => \i_IR_data[31]~input_o\);

-- Location: LCCOMB_X40_Y14_N6
\r_register[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_register[31]~feeder_combout\ = \i_IR_data[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_IR_data[31]~input_o\,
	combout => \r_register[31]~feeder_combout\);

-- Location: FF_X40_Y14_N7
\r_register[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_IR_clk~inputclkctrl_outclk\,
	d => \r_register[31]~feeder_combout\,
	ena => \i_IR_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_register(31));

ww_o_IR_instruction(0) <= \o_IR_instruction[0]~output_o\;

ww_o_IR_instruction(1) <= \o_IR_instruction[1]~output_o\;

ww_o_IR_instruction(2) <= \o_IR_instruction[2]~output_o\;

ww_o_IR_instruction(3) <= \o_IR_instruction[3]~output_o\;

ww_o_IR_instruction(4) <= \o_IR_instruction[4]~output_o\;

ww_o_IR_instruction(5) <= \o_IR_instruction[5]~output_o\;

ww_o_IR_instruction(6) <= \o_IR_instruction[6]~output_o\;

ww_o_IR_instruction(7) <= \o_IR_instruction[7]~output_o\;

ww_o_IR_instruction(8) <= \o_IR_instruction[8]~output_o\;

ww_o_IR_instruction(9) <= \o_IR_instruction[9]~output_o\;

ww_o_IR_instruction(10) <= \o_IR_instruction[10]~output_o\;

ww_o_IR_instruction(11) <= \o_IR_instruction[11]~output_o\;

ww_o_IR_instruction(12) <= \o_IR_instruction[12]~output_o\;

ww_o_IR_instruction(13) <= \o_IR_instruction[13]~output_o\;

ww_o_IR_instruction(14) <= \o_IR_instruction[14]~output_o\;

ww_o_IR_instruction(15) <= \o_IR_instruction[15]~output_o\;

ww_o_IR_instruction(16) <= \o_IR_instruction[16]~output_o\;

ww_o_IR_instruction(17) <= \o_IR_instruction[17]~output_o\;

ww_o_IR_instruction(18) <= \o_IR_instruction[18]~output_o\;

ww_o_IR_instruction(19) <= \o_IR_instruction[19]~output_o\;

ww_o_IR_instruction(20) <= \o_IR_instruction[20]~output_o\;

ww_o_IR_instruction(21) <= \o_IR_instruction[21]~output_o\;

ww_o_IR_instruction(22) <= \o_IR_instruction[22]~output_o\;

ww_o_IR_instruction(23) <= \o_IR_instruction[23]~output_o\;

ww_o_IR_instruction(24) <= \o_IR_instruction[24]~output_o\;

ww_o_IR_instruction(25) <= \o_IR_instruction[25]~output_o\;

ww_o_IR_instruction(26) <= \o_IR_instruction[26]~output_o\;

ww_o_IR_instruction(27) <= \o_IR_instruction[27]~output_o\;

ww_o_IR_instruction(28) <= \o_IR_instruction[28]~output_o\;

ww_o_IR_instruction(29) <= \o_IR_instruction[29]~output_o\;

ww_o_IR_instruction(30) <= \o_IR_instruction[30]~output_o\;

ww_o_IR_instruction(31) <= \o_IR_instruction[31]~output_o\;
END structure;


