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

-- DATE "05/23/2019 15:42:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register32x8 IS
    PORT (
	i_GPR_clk : IN std_logic;
	i_GPR_enable : IN std_logic;
	i_GPR_address_A : IN std_logic_vector(4 DOWNTO 0);
	i_GPR_address_B : IN std_logic_vector(4 DOWNTO 0);
	o_GPR_ALU_data_A : OUT std_logic_vector(7 DOWNTO 0);
	o_GPR_ALU_data_B : OUT std_logic_vector(7 DOWNTO 0);
	i_GPR_data : IN std_logic_vector(7 DOWNTO 0);
	i_GPR_write_address : IN std_logic_vector(4 DOWNTO 0);
	i_GPR_write_enable : IN std_logic
	);
END register32x8;

-- Design Ports Information
-- o_GPR_ALU_data_A[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_A[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPR_ALU_data_B[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_enable	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_enable	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_write_address[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_A[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_data[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPR_address_B[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register32x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_GPR_clk : std_logic;
SIGNAL ww_i_GPR_enable : std_logic;
SIGNAL ww_i_GPR_address_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i_GPR_address_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_GPR_ALU_data_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_GPR_ALU_data_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GPR_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GPR_write_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i_GPR_write_enable : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_GPR_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_GPR_ALU_data_A[0]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[1]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[2]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[3]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[4]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[5]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[6]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_A[7]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[0]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[1]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[2]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[3]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[4]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[5]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[6]~output_o\ : std_logic;
SIGNAL \o_GPR_ALU_data_B[7]~output_o\ : std_logic;
SIGNAL \i_GPR_write_enable~input_o\ : std_logic;
SIGNAL \i_GPR_enable~input_o\ : std_logic;
SIGNAL \r_REGISTER~14_combout\ : std_logic;
SIGNAL \i_GPR_clk~input_o\ : std_logic;
SIGNAL \i_GPR_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_GPR_data[0]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[0]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[1]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[2]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[3]~input_o\ : std_logic;
SIGNAL \i_GPR_write_address[4]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[0]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[1]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[2]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[3]~input_o\ : std_logic;
SIGNAL \i_GPR_address_A[4]~input_o\ : std_logic;
SIGNAL \i_GPR_data[1]~input_o\ : std_logic;
SIGNAL \i_GPR_data[2]~input_o\ : std_logic;
SIGNAL \i_GPR_data[3]~input_o\ : std_logic;
SIGNAL \i_GPR_data[4]~input_o\ : std_logic;
SIGNAL \i_GPR_data[5]~input_o\ : std_logic;
SIGNAL \i_GPR_data[6]~input_o\ : std_logic;
SIGNAL \i_GPR_data[7]~input_o\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \r_REGISTER_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_GPR_address_B[0]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[1]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[2]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[3]~input_o\ : std_logic;
SIGNAL \i_GPR_address_B[4]~input_o\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \r_REGISTER_rtl_1|auto_generated|ram_block1a7\ : std_logic;

BEGIN

ww_i_GPR_clk <= i_GPR_clk;
ww_i_GPR_enable <= i_GPR_enable;
ww_i_GPR_address_A <= i_GPR_address_A;
ww_i_GPR_address_B <= i_GPR_address_B;
o_GPR_ALU_data_A <= ww_o_GPR_ALU_data_A;
o_GPR_ALU_data_B <= ww_o_GPR_ALU_data_B;
ww_i_GPR_data <= i_GPR_data;
ww_i_GPR_write_address <= i_GPR_write_address;
ww_i_GPR_write_enable <= i_GPR_write_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\i_GPR_data[7]~input_o\ & \i_GPR_data[6]~input_o\ & \i_GPR_data[5]~input_o\ & \i_GPR_data[4]~input_o\ & \i_GPR_data[3]~input_o\ & \i_GPR_data[2]~input_o\ & \i_GPR_data[1]~input_o\ & \i_GPR_data[0]~input_o\);

\r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_GPR_write_address[4]~input_o\ & \i_GPR_write_address[3]~input_o\ & \i_GPR_write_address[2]~input_o\ & \i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[0]~input_o\);

\r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\i_GPR_address_A[4]~input_o\ & \i_GPR_address_A[3]~input_o\ & \i_GPR_address_A[2]~input_o\ & \i_GPR_address_A[1]~input_o\ & \i_GPR_address_A[0]~input_o\);

\r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\r_REGISTER_rtl_0|auto_generated|ram_block1a1\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\r_REGISTER_rtl_0|auto_generated|ram_block1a2\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\r_REGISTER_rtl_0|auto_generated|ram_block1a3\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\r_REGISTER_rtl_0|auto_generated|ram_block1a4\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\r_REGISTER_rtl_0|auto_generated|ram_block1a5\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\r_REGISTER_rtl_0|auto_generated|ram_block1a6\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\r_REGISTER_rtl_0|auto_generated|ram_block1a7\ <= \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\i_GPR_data[7]~input_o\ & \i_GPR_data[6]~input_o\ & \i_GPR_data[5]~input_o\ & \i_GPR_data[4]~input_o\ & \i_GPR_data[3]~input_o\ & \i_GPR_data[2]~input_o\ & \i_GPR_data[1]~input_o\ & \i_GPR_data[0]~input_o\);

\r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_GPR_write_address[4]~input_o\ & \i_GPR_write_address[3]~input_o\ & \i_GPR_write_address[2]~input_o\ & \i_GPR_write_address[1]~input_o\ & \i_GPR_write_address[0]~input_o\);

\r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\i_GPR_address_B[4]~input_o\ & \i_GPR_address_B[3]~input_o\ & \i_GPR_address_B[2]~input_o\ & \i_GPR_address_B[1]~input_o\ & \i_GPR_address_B[0]~input_o\);

\r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\r_REGISTER_rtl_1|auto_generated|ram_block1a1\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\r_REGISTER_rtl_1|auto_generated|ram_block1a2\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\r_REGISTER_rtl_1|auto_generated|ram_block1a3\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\r_REGISTER_rtl_1|auto_generated|ram_block1a4\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\r_REGISTER_rtl_1|auto_generated|ram_block1a5\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\r_REGISTER_rtl_1|auto_generated|ram_block1a6\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\r_REGISTER_rtl_1|auto_generated|ram_block1a7\ <= \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\i_GPR_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_GPR_clk~input_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_GPR_ALU_data_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\o_GPR_ALU_data_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_GPR_ALU_data_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_GPR_ALU_data_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_GPR_ALU_data_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_GPR_ALU_data_A[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\o_GPR_ALU_data_A[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_GPR_ALU_data_A[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_A[7]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_GPR_ALU_data_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\o_GPR_ALU_data_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_GPR_ALU_data_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_GPR_ALU_data_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\o_GPR_ALU_data_B[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\o_GPR_ALU_data_B[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_GPR_ALU_data_B[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_GPR_ALU_data_B[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_REGISTER_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \o_GPR_ALU_data_B[7]~output_o\);

-- Location: IOIBUF_X30_Y29_N1
\i_GPR_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_enable,
	o => \i_GPR_write_enable~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\i_GPR_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_enable,
	o => \i_GPR_enable~input_o\);

-- Location: LCCOMB_X26_Y28_N0
\r_REGISTER~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_REGISTER~14_combout\ = (\i_GPR_write_enable~input_o\ & \i_GPR_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPR_write_enable~input_o\,
	datac => \i_GPR_enable~input_o\,
	combout => \r_REGISTER~14_combout\);

-- Location: IOIBUF_X0_Y14_N1
\i_GPR_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_clk,
	o => \i_GPR_clk~input_o\);

-- Location: CLKCTRL_G4
\i_GPR_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_GPR_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_GPR_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y29_N15
\i_GPR_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(0),
	o => \i_GPR_data[0]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\i_GPR_write_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(0),
	o => \i_GPR_write_address[0]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\i_GPR_write_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(1),
	o => \i_GPR_write_address[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\i_GPR_write_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(2),
	o => \i_GPR_write_address[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\i_GPR_write_address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(3),
	o => \i_GPR_write_address[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\i_GPR_write_address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_write_address(4),
	o => \i_GPR_write_address[4]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\i_GPR_address_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(0),
	o => \i_GPR_address_A[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\i_GPR_address_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(1),
	o => \i_GPR_address_A[1]~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\i_GPR_address_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(2),
	o => \i_GPR_address_A[2]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\i_GPR_address_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(3),
	o => \i_GPR_address_A[3]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\i_GPR_address_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_A(4),
	o => \i_GPR_address_A[4]~input_o\);

-- Location: IOIBUF_X30_Y29_N8
\i_GPR_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(1),
	o => \i_GPR_data[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\i_GPR_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(2),
	o => \i_GPR_data[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\i_GPR_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(3),
	o => \i_GPR_data[3]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\i_GPR_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(4),
	o => \i_GPR_data[4]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\i_GPR_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(5),
	o => \i_GPR_data[5]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\i_GPR_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(6),
	o => \i_GPR_data[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\i_GPR_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_data(7),
	o => \i_GPR_data[7]~input_o\);

-- Location: M9K_X25_Y28_N0
\r_REGISTER_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/register32x8.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:r_REGISTER_rtl_0|altsyncram_v1j1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \r_REGISTER~14_combout\,
	portbre => VCC,
	clk0 => \i_GPR_clk~inputclkctrl_outclk\,
	clk1 => \i_GPR_clk~inputclkctrl_outclk\,
	ena0 => \r_REGISTER~14_combout\,
	ena1 => \i_GPR_enable~input_o\,
	portadatain => \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \r_REGISTER_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X14_Y29_N8
\i_GPR_address_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(0),
	o => \i_GPR_address_B[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\i_GPR_address_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(1),
	o => \i_GPR_address_B[1]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\i_GPR_address_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(2),
	o => \i_GPR_address_B[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\i_GPR_address_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(3),
	o => \i_GPR_address_B[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\i_GPR_address_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPR_address_B(4),
	o => \i_GPR_address_B[4]~input_o\);

-- Location: M9K_X25_Y27_N0
\r_REGISTER_rtl_1|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/register32x8.ram0_register32x8_e16f5a94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:r_REGISTER_rtl_1|altsyncram_v1j1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \r_REGISTER~14_combout\,
	portbre => VCC,
	clk0 => \i_GPR_clk~inputclkctrl_outclk\,
	clk1 => \i_GPR_clk~inputclkctrl_outclk\,
	ena0 => \r_REGISTER~14_combout\,
	ena1 => \i_GPR_enable~input_o\,
	portadatain => \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \r_REGISTER_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

ww_o_GPR_ALU_data_A(0) <= \o_GPR_ALU_data_A[0]~output_o\;

ww_o_GPR_ALU_data_A(1) <= \o_GPR_ALU_data_A[1]~output_o\;

ww_o_GPR_ALU_data_A(2) <= \o_GPR_ALU_data_A[2]~output_o\;

ww_o_GPR_ALU_data_A(3) <= \o_GPR_ALU_data_A[3]~output_o\;

ww_o_GPR_ALU_data_A(4) <= \o_GPR_ALU_data_A[4]~output_o\;

ww_o_GPR_ALU_data_A(5) <= \o_GPR_ALU_data_A[5]~output_o\;

ww_o_GPR_ALU_data_A(6) <= \o_GPR_ALU_data_A[6]~output_o\;

ww_o_GPR_ALU_data_A(7) <= \o_GPR_ALU_data_A[7]~output_o\;

ww_o_GPR_ALU_data_B(0) <= \o_GPR_ALU_data_B[0]~output_o\;

ww_o_GPR_ALU_data_B(1) <= \o_GPR_ALU_data_B[1]~output_o\;

ww_o_GPR_ALU_data_B(2) <= \o_GPR_ALU_data_B[2]~output_o\;

ww_o_GPR_ALU_data_B(3) <= \o_GPR_ALU_data_B[3]~output_o\;

ww_o_GPR_ALU_data_B(4) <= \o_GPR_ALU_data_B[4]~output_o\;

ww_o_GPR_ALU_data_B(5) <= \o_GPR_ALU_data_B[5]~output_o\;

ww_o_GPR_ALU_data_B(6) <= \o_GPR_ALU_data_B[6]~output_o\;

ww_o_GPR_ALU_data_B(7) <= \o_GPR_ALU_data_B[7]~output_o\;
END structure;


