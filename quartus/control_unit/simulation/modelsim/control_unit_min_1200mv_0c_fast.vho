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

-- DATE "05/23/2019 14:09:27"

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
	i_HALT : IN std_logic;
	i_OPCODE : IN std_logic_vector(3 DOWNTO 0);
	i_MEM_state : IN std_logic_vector(1 DOWNTO 0);
	i_MEM_access : IN std_logic;
	o_STATE : BUFFER std_logic_vector(6 DOWNTO 0);
	i_INTERRUPT_request : IN std_logic;
	i_INTERRUPT_enable : IN std_logic;
	o_INTERRUPT_ack : BUFFER std_logic;
	o_INTERRUPT_PC_set : BUFFER std_logic
	);
END control_unit;

-- Design Ports Information
-- i_OPCODE[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_OPCODE[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MEM_state[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[5]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_STATE[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_INTERRUPT_ack	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_INTERRUPT_PC_set	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RESET	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_HALT	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INTERRUPT_enable	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MEM_access	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MEM_state[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_INTERRUPT_request	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_HALT : std_logic;
SIGNAL ww_i_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_MEM_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_MEM_access : std_logic;
SIGNAL ww_o_STATE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_i_INTERRUPT_request : std_logic;
SIGNAL ww_i_INTERRUPT_enable : std_logic;
SIGNAL ww_o_INTERRUPT_ack : std_logic;
SIGNAL ww_o_INTERRUPT_PC_set : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_OPCODE[0]~input_o\ : std_logic;
SIGNAL \i_OPCODE[1]~input_o\ : std_logic;
SIGNAL \i_OPCODE[2]~input_o\ : std_logic;
SIGNAL \i_OPCODE[3]~input_o\ : std_logic;
SIGNAL \i_MEM_state[0]~input_o\ : std_logic;
SIGNAL \o_STATE[0]~output_o\ : std_logic;
SIGNAL \o_STATE[1]~output_o\ : std_logic;
SIGNAL \o_STATE[2]~output_o\ : std_logic;
SIGNAL \o_STATE[3]~output_o\ : std_logic;
SIGNAL \o_STATE[4]~output_o\ : std_logic;
SIGNAL \o_STATE[5]~output_o\ : std_logic;
SIGNAL \o_STATE[6]~output_o\ : std_logic;
SIGNAL \o_INTERRUPT_ack~output_o\ : std_logic;
SIGNAL \o_INTERRUPT_PC_set~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RESET~input_o\ : std_logic;
SIGNAL \i_HALT~input_o\ : std_logic;
SIGNAL \r_state[2]~9_combout\ : std_logic;
SIGNAL \i_INTERRUPT_enable~input_o\ : std_logic;
SIGNAL \r_state~17_combout\ : std_logic;
SIGNAL \i_MEM_access~input_o\ : std_logic;
SIGNAL \i_MEM_state[1]~input_o\ : std_logic;
SIGNAL \r_state~16_combout\ : std_logic;
SIGNAL \r_state~15_combout\ : std_logic;
SIGNAL \r_state~18_combout\ : std_logic;
SIGNAL \r_state~22_combout\ : std_logic;
SIGNAL \r_state~11_combout\ : std_logic;
SIGNAL \r_state~12_combout\ : std_logic;
SIGNAL \r_state~13_combout\ : std_logic;
SIGNAL \r_state~14_combout\ : std_logic;
SIGNAL \r_state~19_combout\ : std_logic;
SIGNAL \r_state~6_combout\ : std_logic;
SIGNAL \r_state~20_combout\ : std_logic;
SIGNAL \r_state~21_combout\ : std_logic;
SIGNAL \r_state~7_combout\ : std_logic;
SIGNAL \r_state~8_combout\ : std_logic;
SIGNAL \r_INTERRUPT_active~0_combout\ : std_logic;
SIGNAL \r_INTERRUPT_active~1_combout\ : std_logic;
SIGNAL \r_INTERRUPT_active~2_combout\ : std_logic;
SIGNAL \r_INTERRUPT_active~q\ : std_logic;
SIGNAL \i_INTERRUPT_request~input_o\ : std_logic;
SIGNAL \r_INTERRUPT_request~0_combout\ : std_logic;
SIGNAL \r_INTERRUPT_request~1_combout\ : std_logic;
SIGNAL \r_INTERRUPT_request~q\ : std_logic;
SIGNAL \r_state~5_combout\ : std_logic;
SIGNAL \r_state~10_combout\ : std_logic;
SIGNAL \r_state~1_combout\ : std_logic;
SIGNAL \r_state~0_combout\ : std_logic;
SIGNAL \r_state~2_combout\ : std_logic;
SIGNAL \r_state~3_combout\ : std_logic;
SIGNAL \r_state~4_combout\ : std_logic;
SIGNAL \r_INTERRUPT_PC_set~0_combout\ : std_logic;
SIGNAL \r_INTERRUPT_PC_set~1_combout\ : std_logic;
SIGNAL \r_INTERRUPT_PC_set~2_combout\ : std_logic;
SIGNAL \r_INTERRUPT_PC_set~q\ : std_logic;
SIGNAL r_state : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_r_state[2]~9_combout\ : std_logic;
SIGNAL ALT_INV_r_state : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RESET <= i_RESET;
ww_i_HALT <= i_HALT;
ww_i_OPCODE <= i_OPCODE;
ww_i_MEM_state <= i_MEM_state;
ww_i_MEM_access <= i_MEM_access;
o_STATE <= ww_o_STATE;
ww_i_INTERRUPT_request <= i_INTERRUPT_request;
ww_i_INTERRUPT_enable <= i_INTERRUPT_enable;
o_INTERRUPT_ack <= ww_o_INTERRUPT_ack;
o_INTERRUPT_PC_set <= ww_o_INTERRUPT_PC_set;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\ALT_INV_r_state[2]~9_combout\ <= NOT \r_state[2]~9_combout\;
ALT_INV_r_state(0) <= NOT r_state(0);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X0_Y2_N9
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

-- Location: IOOBUF_X0_Y2_N2
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X0_Y2_N23
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

-- Location: IOOBUF_X1_Y0_N2
\o_STATE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_state(6),
	devoe => ww_devoe,
	o => \o_STATE[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\o_INTERRUPT_ack~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_INTERRUPT_PC_set~q\,
	devoe => ww_devoe,
	o => \o_INTERRUPT_ack~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\o_INTERRUPT_PC_set~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_INTERRUPT_PC_set~q\,
	devoe => ww_devoe,
	o => \o_INTERRUPT_PC_set~output_o\);

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

-- Location: IOIBUF_X1_Y0_N29
\i_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RESET,
	o => \i_RESET~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\i_HALT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_HALT,
	o => \i_HALT~input_o\);

-- Location: LCCOMB_X1_Y2_N2
\r_state[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state[2]~9_combout\ = (!\i_RESET~input_o\ & \i_HALT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RESET~input_o\,
	datad => \i_HALT~input_o\,
	combout => \r_state[2]~9_combout\);

-- Location: IOIBUF_X1_Y0_N8
\i_INTERRUPT_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INTERRUPT_enable,
	o => \i_INTERRUPT_enable~input_o\);

-- Location: LCCOMB_X2_Y2_N2
\r_state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~17_combout\ = (!\i_HALT~input_o\ & (!\i_RESET~input_o\ & \r_state~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_HALT~input_o\,
	datab => \i_RESET~input_o\,
	datac => \r_state~7_combout\,
	combout => \r_state~17_combout\);

-- Location: IOIBUF_X1_Y0_N15
\i_MEM_access~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MEM_access,
	o => \i_MEM_access~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\i_MEM_state[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MEM_state(1),
	o => \i_MEM_state[1]~input_o\);

-- Location: LCCOMB_X1_Y2_N22
\r_state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~16_combout\ = (r_state(4) & (((!\i_MEM_state[1]~input_o\ & !r_state(3))))) # (!r_state(4) & (\i_MEM_access~input_o\ & ((r_state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MEM_access~input_o\,
	datab => \i_MEM_state[1]~input_o\,
	datac => r_state(4),
	datad => r_state(3),
	combout => \r_state~16_combout\);

-- Location: LCCOMB_X1_Y2_N4
\r_state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~15_combout\ = (r_state(4) & (!\i_RESET~input_o\ & \i_HALT~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(4),
	datac => \i_RESET~input_o\,
	datad => \i_HALT~input_o\,
	combout => \r_state~15_combout\);

-- Location: LCCOMB_X1_Y2_N14
\r_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~18_combout\ = (\r_state~15_combout\) # ((\r_state~16_combout\ & (r_state(0) & \r_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_state~16_combout\,
	datab => r_state(0),
	datac => \r_state~15_combout\,
	datad => \r_state~17_combout\,
	combout => \r_state~18_combout\);

-- Location: FF_X1_Y2_N15
\r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(4));

-- Location: LCCOMB_X2_Y2_N4
\r_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~22_combout\ = (!r_state(2) & (!r_state(1) & (r_state(5) & \r_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(2),
	datab => r_state(1),
	datac => r_state(5),
	datad => \r_state~12_combout\,
	combout => \r_state~22_combout\);

-- Location: FF_X2_Y2_N5
\r_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~22_combout\,
	ena => \ALT_INV_r_state[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(6));

-- Location: LCCOMB_X1_Y2_N20
\r_state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~11_combout\ = (!r_state(3) & (!r_state(4) & (r_state(0) & !r_state(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(3),
	datab => r_state(4),
	datac => r_state(0),
	datad => r_state(6),
	combout => \r_state~11_combout\);

-- Location: LCCOMB_X1_Y2_N18
\r_state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~12_combout\ = (!\i_RESET~input_o\ & \r_state~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RESET~input_o\,
	datad => \r_state~11_combout\,
	combout => \r_state~12_combout\);

-- Location: LCCOMB_X1_Y2_N6
\r_state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~13_combout\ = (r_state(1) & (!r_state(5) & (!r_state(2) & \r_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(5),
	datac => r_state(2),
	datad => \r_state~12_combout\,
	combout => \r_state~13_combout\);

-- Location: FF_X1_Y2_N7
\r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~13_combout\,
	ena => \ALT_INV_r_state[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(2));

-- Location: LCCOMB_X1_Y2_N8
\r_state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~14_combout\ = (!r_state(1) & (!r_state(5) & (r_state(2) & \r_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => r_state(5),
	datac => r_state(2),
	datad => \r_state~12_combout\,
	combout => \r_state~14_combout\);

-- Location: FF_X1_Y2_N9
\r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~14_combout\,
	ena => \ALT_INV_r_state[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(3));

-- Location: LCCOMB_X1_Y2_N16
\r_state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~19_combout\ = (r_state(3) & (!\i_MEM_access~input_o\ & ((!r_state(4))))) # (!r_state(3) & (((\i_MEM_state[1]~input_o\ & r_state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MEM_access~input_o\,
	datab => \i_MEM_state[1]~input_o\,
	datac => r_state(3),
	datad => r_state(4),
	combout => \r_state~19_combout\);

-- Location: LCCOMB_X1_Y2_N12
\r_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~6_combout\ = (!r_state(3) & (!r_state(4) & !r_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_state(3),
	datac => r_state(4),
	datad => r_state(0),
	combout => \r_state~6_combout\);

-- Location: LCCOMB_X2_Y2_N24
\r_state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~20_combout\ = (r_state(0) & ((\r_state~19_combout\) # ((!\r_state~5_combout\ & \r_state~6_combout\)))) # (!r_state(0) & (!\r_state~5_combout\ & ((\r_state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(0),
	datab => \r_state~5_combout\,
	datac => \r_state~19_combout\,
	datad => \r_state~6_combout\,
	combout => \r_state~20_combout\);

-- Location: LCCOMB_X2_Y2_N10
\r_state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~21_combout\ = (\r_state[2]~9_combout\ & ((r_state(5)) # ((\r_state~17_combout\ & \r_state~20_combout\)))) # (!\r_state[2]~9_combout\ & (\r_state~17_combout\ & ((\r_state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_state[2]~9_combout\,
	datab => \r_state~17_combout\,
	datac => r_state(5),
	datad => \r_state~20_combout\,
	combout => \r_state~21_combout\);

-- Location: FF_X2_Y2_N11
\r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(5));

-- Location: LCCOMB_X2_Y2_N30
\r_state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~7_combout\ = (!r_state(5) & (!r_state(6) & (!r_state(2) & !r_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(5),
	datab => r_state(6),
	datac => r_state(2),
	datad => r_state(1),
	combout => \r_state~7_combout\);

-- Location: LCCOMB_X2_Y2_N12
\r_state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~8_combout\ = (!\i_HALT~input_o\ & (!\i_RESET~input_o\ & (\r_state~7_combout\ & \r_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_HALT~input_o\,
	datab => \i_RESET~input_o\,
	datac => \r_state~7_combout\,
	datad => \r_state~6_combout\,
	combout => \r_state~8_combout\);

-- Location: LCCOMB_X2_Y2_N18
\r_INTERRUPT_active~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_active~0_combout\ = (!\i_HALT~input_o\ & (!\i_INTERRUPT_enable~input_o\ & (\r_state~7_combout\ & \r_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_HALT~input_o\,
	datab => \i_INTERRUPT_enable~input_o\,
	datac => \r_state~7_combout\,
	datad => \r_state~6_combout\,
	combout => \r_INTERRUPT_active~0_combout\);

-- Location: LCCOMB_X2_Y2_N16
\r_INTERRUPT_active~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_active~1_combout\ = (\r_INTERRUPT_active~q\ & (!\i_RESET~input_o\ & !\r_INTERRUPT_active~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_INTERRUPT_active~q\,
	datac => \i_RESET~input_o\,
	datad => \r_INTERRUPT_active~0_combout\,
	combout => \r_INTERRUPT_active~1_combout\);

-- Location: LCCOMB_X2_Y2_N0
\r_INTERRUPT_active~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_active~2_combout\ = (\r_INTERRUPT_active~1_combout\) # ((\r_state~8_combout\ & (\i_INTERRUPT_enable~input_o\ & \r_INTERRUPT_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_state~8_combout\,
	datab => \i_INTERRUPT_enable~input_o\,
	datac => \r_INTERRUPT_request~q\,
	datad => \r_INTERRUPT_active~1_combout\,
	combout => \r_INTERRUPT_active~2_combout\);

-- Location: FF_X2_Y2_N1
r_INTERRUPT_active : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INTERRUPT_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_INTERRUPT_active~q\);

-- Location: IOIBUF_X3_Y0_N8
\i_INTERRUPT_request~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_INTERRUPT_request,
	o => \i_INTERRUPT_request~input_o\);

-- Location: LCCOMB_X2_Y2_N26
\r_INTERRUPT_request~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_request~0_combout\ = (!\i_RESET~input_o\ & ((\r_INTERRUPT_request~q\) # ((\i_INTERRUPT_request~input_o\ & \i_INTERRUPT_enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INTERRUPT_request~input_o\,
	datab => \i_RESET~input_o\,
	datac => \r_INTERRUPT_request~q\,
	datad => \i_INTERRUPT_enable~input_o\,
	combout => \r_INTERRUPT_request~0_combout\);

-- Location: LCCOMB_X2_Y2_N22
\r_INTERRUPT_request~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_request~1_combout\ = (\r_INTERRUPT_request~0_combout\ & ((!\r_INTERRUPT_active~0_combout\) # (!\r_INTERRUPT_active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_INTERRUPT_active~q\,
	datac => \r_INTERRUPT_request~0_combout\,
	datad => \r_INTERRUPT_active~0_combout\,
	combout => \r_INTERRUPT_request~1_combout\);

-- Location: FF_X2_Y2_N23
r_INTERRUPT_request : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INTERRUPT_request~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_INTERRUPT_request~q\);

-- Location: LCCOMB_X2_Y2_N8
\r_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~5_combout\ = ((\r_INTERRUPT_active~q\) # (!\r_INTERRUPT_request~q\)) # (!\i_INTERRUPT_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_INTERRUPT_enable~input_o\,
	datac => \r_INTERRUPT_request~q\,
	datad => \r_INTERRUPT_active~q\,
	combout => \r_state~5_combout\);

-- Location: LCCOMB_X2_Y2_N20
\r_state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~10_combout\ = (\r_state[2]~9_combout\ & ((r_state(1)) # ((\r_state~5_combout\ & \r_state~8_combout\)))) # (!\r_state[2]~9_combout\ & (\r_state~5_combout\ & ((\r_state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_state[2]~9_combout\,
	datab => \r_state~5_combout\,
	datac => r_state(1),
	datad => \r_state~8_combout\,
	combout => \r_state~10_combout\);

-- Location: FF_X2_Y2_N21
\r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(1));

-- Location: LCCOMB_X1_Y2_N30
\r_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~1_combout\ = (\i_HALT~input_o\) # ((r_state(1) & ((r_state(3)) # (!r_state(0)))) # (!r_state(1) & (!r_state(0) & r_state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(1),
	datab => \i_HALT~input_o\,
	datac => r_state(0),
	datad => r_state(3),
	combout => \r_state~1_combout\);

-- Location: LCCOMB_X1_Y2_N24
\r_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~0_combout\ = (\i_RESET~input_o\) # ((!\i_HALT~input_o\ & r_state(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_HALT~input_o\,
	datac => \i_RESET~input_o\,
	datad => r_state(6),
	combout => \r_state~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\r_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~2_combout\ = (r_state(0) & ((\i_HALT~input_o\) # ((!r_state(3) & !r_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(3),
	datab => r_state(0),
	datac => r_state(1),
	datad => \i_HALT~input_o\,
	combout => \r_state~2_combout\);

-- Location: LCCOMB_X1_Y2_N26
\r_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~3_combout\ = (r_state(2) & (((!r_state(4) & !r_state(5))) # (!\r_state~2_combout\))) # (!r_state(2) & ((r_state(4) & ((!\r_state~2_combout\) # (!r_state(5)))) # (!r_state(4) & (r_state(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_state(2),
	datab => r_state(4),
	datac => r_state(5),
	datad => \r_state~2_combout\,
	combout => \r_state~3_combout\);

-- Location: LCCOMB_X1_Y2_N28
\r_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_state~4_combout\ = (!\r_state~0_combout\ & (\r_state~2_combout\ $ (((!\r_state~1_combout\ & !\r_state~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_state~1_combout\,
	datab => \r_state~0_combout\,
	datac => \r_state~3_combout\,
	datad => \r_state~2_combout\,
	combout => \r_state~4_combout\);

-- Location: FF_X1_Y2_N29
\r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_state(0));

-- Location: LCCOMB_X2_Y2_N6
\r_INTERRUPT_PC_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_PC_set~0_combout\ = (\i_INTERRUPT_enable~input_o\ & (\r_INTERRUPT_request~q\ & !\r_INTERRUPT_active~q\)) # (!\i_INTERRUPT_enable~input_o\ & ((\r_INTERRUPT_active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_INTERRUPT_enable~input_o\,
	datac => \r_INTERRUPT_request~q\,
	datad => \r_INTERRUPT_active~q\,
	combout => \r_INTERRUPT_PC_set~0_combout\);

-- Location: LCCOMB_X2_Y2_N28
\r_INTERRUPT_PC_set~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_PC_set~1_combout\ = (\r_INTERRUPT_PC_set~0_combout\ & (!\i_HALT~input_o\ & (\r_state~7_combout\ & \r_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_INTERRUPT_PC_set~0_combout\,
	datab => \i_HALT~input_o\,
	datac => \r_state~7_combout\,
	datad => \r_state~6_combout\,
	combout => \r_INTERRUPT_PC_set~1_combout\);

-- Location: LCCOMB_X2_Y2_N14
\r_INTERRUPT_PC_set~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_INTERRUPT_PC_set~2_combout\ = (!\i_RESET~input_o\ & ((\r_INTERRUPT_PC_set~1_combout\ & (\i_INTERRUPT_enable~input_o\)) # (!\r_INTERRUPT_PC_set~1_combout\ & ((\r_INTERRUPT_PC_set~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_INTERRUPT_enable~input_o\,
	datab => \i_RESET~input_o\,
	datac => \r_INTERRUPT_PC_set~q\,
	datad => \r_INTERRUPT_PC_set~1_combout\,
	combout => \r_INTERRUPT_PC_set~2_combout\);

-- Location: FF_X2_Y2_N15
r_INTERRUPT_PC_set : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_INTERRUPT_PC_set~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_INTERRUPT_PC_set~q\);

-- Location: IOIBUF_X32_Y0_N8
\i_OPCODE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(0),
	o => \i_OPCODE[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\i_OPCODE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(1),
	o => \i_OPCODE[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_OPCODE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(2),
	o => \i_OPCODE[2]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\i_OPCODE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OPCODE(3),
	o => \i_OPCODE[3]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\i_MEM_state[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MEM_state(0),
	o => \i_MEM_state[0]~input_o\);

ww_o_STATE(0) <= \o_STATE[0]~output_o\;

ww_o_STATE(1) <= \o_STATE[1]~output_o\;

ww_o_STATE(2) <= \o_STATE[2]~output_o\;

ww_o_STATE(3) <= \o_STATE[3]~output_o\;

ww_o_STATE(4) <= \o_STATE[4]~output_o\;

ww_o_STATE(5) <= \o_STATE[5]~output_o\;

ww_o_STATE(6) <= \o_STATE[6]~output_o\;

ww_o_INTERRUPT_ack <= \o_INTERRUPT_ack~output_o\;

ww_o_INTERRUPT_PC_set <= \o_INTERRUPT_PC_set~output_o\;
END structure;


