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

-- DATE "04/30/2019 12:27:40"

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

ENTITY 	GPIO_register IS
    PORT (
	i_GPIO_clk : IN std_logic;
	i_GPIO_address : IN std_logic_vector(2 DOWNTO 0);
	i_GPIO_data : IN std_logic_vector(7 DOWNTO 0);
	o_GPIO_data : OUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN0 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN1 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN2 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN3 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN4 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN5 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN6 : INOUT std_logic_vector(7 DOWNTO 0);
	io_GPIO_PIN7 : INOUT std_logic_vector(7 DOWNTO 0);
	i_GPIO_write_enable : IN std_logic;
	i_GPIO_config_enable : IN std_logic
	);
END GPIO_register;

-- Design Ports Information
-- o_GPIO_data[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_GPIO_data[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN0[7]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[6]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN1[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN2[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN3[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN4[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[6]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN5[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN6[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_GPIO_PIN7[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_address[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_address[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_address[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_write_enable	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_config_enable	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GPIO_data[3]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GPIO_register IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_GPIO_clk : std_logic;
SIGNAL ww_i_GPIO_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_GPIO_write_enable : std_logic;
SIGNAL ww_i_GPIO_config_enable : std_logic;
SIGNAL \i_GPIO_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io_GPIO_PIN0[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[7]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[0]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[1]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[2]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[3]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[4]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[5]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[6]~output_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[7]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[0]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[1]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[2]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[3]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[4]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[5]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[6]~output_o\ : std_logic;
SIGNAL \o_GPIO_data[7]~output_o\ : std_logic;
SIGNAL \i_GPIO_clk~input_o\ : std_logic;
SIGNAL \i_GPIO_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_GPIO_data[0]~input_o\ : std_logic;
SIGNAL \i_GPIO_address[2]~input_o\ : std_logic;
SIGNAL \i_GPIO_write_enable~input_o\ : std_logic;
SIGNAL \i_GPIO_config_enable~input_o\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \i_GPIO_address[0]~input_o\ : std_logic;
SIGNAL \i_GPIO_address[1]~input_o\ : std_logic;
SIGNAL \i_GPIO_data[2]~input_o\ : std_logic;
SIGNAL \r_CONFIG_REGISTER[7]~0_combout\ : std_logic;
SIGNAL \i_GPIO_data[3]~input_o\ : std_logic;
SIGNAL \i_GPIO_data[1]~input_o\ : std_logic;
SIGNAL \r_CONFIG_REGISTER[1]~feeder_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \i_GPIO_data[4]~input_o\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \i_GPIO_data[5]~input_o\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \i_GPIO_data[6]~input_o\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i_GPIO_data[7]~input_o\ : std_logic;
SIGNAL \r_IO_REG_OUT[0][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus1|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_CONFIG_REGISTER[5]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[1][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][2]~q\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[2][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[3][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus4|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[4][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus5|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[5][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus6|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[6][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus7|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][0]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[0]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][1]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][2]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][3]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][4]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][5]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][6]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[6]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][7]~feeder_combout\ : std_logic;
SIGNAL \r_IO_REG_OUT[7][7]~q\ : std_logic;
SIGNAL \INST_bidir_bus8|r_INPUT_reg[7]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[0]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[0]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[0]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[0]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[0]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[0]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus2|o_DATA_out[0]~feeder_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[0]~0_combout\ : std_logic;
SIGNAL \o_GPIO_data[0]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN0[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[1]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus2|o_DATA_out[1]~feeder_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[1]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \io_GPIO_PIN7[1]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[1]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[1]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[1]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[1]~feeder_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[1]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN7[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN5[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[2]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[2]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[2]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[2]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[2]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[2]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN7[3]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[3]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[3]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[3]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN4[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[3]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[3]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[3]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[3]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[3]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN4[4]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[4]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[4]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[4]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN0[4]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[4]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus2|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[4]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN3[4]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[4]~feeder_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[4]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN4[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[5]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN7[5]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[5]~feeder_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN2[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[5]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[5]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[5]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN7[6]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[6]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[6]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[6]~feeder_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[6]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[6]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[6]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[6]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[6]~reg0_q\ : std_logic;
SIGNAL \io_GPIO_PIN7[7]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus8|o_DATA_out[7]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN5[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN4[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN6[7]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus7|o_DATA_out[7]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \io_GPIO_PIN3[7]~input_o\ : std_logic;
SIGNAL \INST_bidir_bus4|o_DATA_out[7]~feeder_combout\ : std_logic;
SIGNAL \io_GPIO_PIN2[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN0[7]~input_o\ : std_logic;
SIGNAL \io_GPIO_PIN1[7]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \o_GPIO_data[7]~reg0_q\ : std_logic;
SIGNAL \INST_bidir_bus2|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus2|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus3|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus3|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus4|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus4|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus5|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus5|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus6|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus6|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus7|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus7|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus8|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus8|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_CONFIG_REGISTER : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus1|r_INPUT_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INST_bidir_bus1|o_DATA_out\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_GPIO_clk <= i_GPIO_clk;
ww_i_GPIO_address <= i_GPIO_address;
ww_i_GPIO_data <= i_GPIO_data;
o_GPIO_data <= ww_o_GPIO_data;
ww_i_GPIO_write_enable <= i_GPIO_write_enable;
ww_i_GPIO_config_enable <= i_GPIO_config_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_GPIO_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_GPIO_clk~input_o\);

-- Location: IOOBUF_X0_Y10_N16
\io_GPIO_PIN0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\io_GPIO_PIN0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\io_GPIO_PIN0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\io_GPIO_PIN0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\io_GPIO_PIN0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\io_GPIO_PIN0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\io_GPIO_PIN0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\io_GPIO_PIN0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus1|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(0),
	devoe => ww_devoe,
	o => \io_GPIO_PIN0[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\io_GPIO_PIN1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\io_GPIO_PIN1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\io_GPIO_PIN1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\io_GPIO_PIN1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\io_GPIO_PIN1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\io_GPIO_PIN1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\io_GPIO_PIN1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\io_GPIO_PIN1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus2|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(1),
	devoe => ww_devoe,
	o => \io_GPIO_PIN1[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\io_GPIO_PIN2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\io_GPIO_PIN2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\io_GPIO_PIN2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\io_GPIO_PIN2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\io_GPIO_PIN2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\io_GPIO_PIN2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\io_GPIO_PIN2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\io_GPIO_PIN2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus3|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(2),
	devoe => ww_devoe,
	o => \io_GPIO_PIN2[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\io_GPIO_PIN3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\io_GPIO_PIN3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\io_GPIO_PIN3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\io_GPIO_PIN3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\io_GPIO_PIN3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\io_GPIO_PIN3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\io_GPIO_PIN3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\io_GPIO_PIN3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus4|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(3),
	devoe => ww_devoe,
	o => \io_GPIO_PIN3[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\io_GPIO_PIN4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\io_GPIO_PIN4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\io_GPIO_PIN4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\io_GPIO_PIN4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\io_GPIO_PIN4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\io_GPIO_PIN4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\io_GPIO_PIN4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\io_GPIO_PIN4[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus5|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(4),
	devoe => ww_devoe,
	o => \io_GPIO_PIN4[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\io_GPIO_PIN5[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\io_GPIO_PIN5[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\io_GPIO_PIN5[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\io_GPIO_PIN5[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\io_GPIO_PIN5[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\io_GPIO_PIN5[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\io_GPIO_PIN5[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\io_GPIO_PIN5[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus6|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(5),
	devoe => ww_devoe,
	o => \io_GPIO_PIN5[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\io_GPIO_PIN6[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\io_GPIO_PIN6[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\io_GPIO_PIN6[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\io_GPIO_PIN6[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\io_GPIO_PIN6[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\io_GPIO_PIN6[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\io_GPIO_PIN6[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\io_GPIO_PIN6[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus7|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(6),
	devoe => ww_devoe,
	o => \io_GPIO_PIN6[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\io_GPIO_PIN7[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(0),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\io_GPIO_PIN7[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(1),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\io_GPIO_PIN7[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(2),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\io_GPIO_PIN7[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(3),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\io_GPIO_PIN7[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(4),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\io_GPIO_PIN7[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(5),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\io_GPIO_PIN7[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(6),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\io_GPIO_PIN7[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_bidir_bus8|r_INPUT_reg\(7),
	oe => r_CONFIG_REGISTER(7),
	devoe => ww_devoe,
	o => \io_GPIO_PIN7[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\o_GPIO_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\o_GPIO_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\o_GPIO_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_GPIO_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\o_GPIO_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_GPIO_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\o_GPIO_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\o_GPIO_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_GPIO_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_GPIO_data[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_GPIO_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_clk,
	o => \i_GPIO_clk~input_o\);

-- Location: CLKCTRL_G4
\i_GPIO_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_GPIO_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_GPIO_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y29_N22
\i_GPIO_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(0),
	o => \i_GPIO_data[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\i_GPIO_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_address(2),
	o => \i_GPIO_address[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\i_GPIO_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_write_enable,
	o => \i_GPIO_write_enable~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\i_GPIO_config_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_config_enable,
	o => \i_GPIO_config_enable~input_o\);

-- Location: LCCOMB_X1_Y9_N0
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!\i_GPIO_address[2]~input_o\ & (\i_GPIO_write_enable~input_o\ & !\i_GPIO_config_enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datab => \i_GPIO_write_enable~input_o\,
	datad => \i_GPIO_config_enable~input_o\,
	combout => \Decoder0~14_combout\);

-- Location: IOIBUF_X21_Y0_N8
\i_GPIO_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_address(0),
	o => \i_GPIO_address[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_GPIO_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_address(1),
	o => \i_GPIO_address[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\i_GPIO_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(2),
	o => \i_GPIO_data[2]~input_o\);

-- Location: LCCOMB_X1_Y9_N30
\r_CONFIG_REGISTER[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CONFIG_REGISTER[7]~0_combout\ = (\i_GPIO_write_enable~input_o\ & \i_GPIO_config_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPIO_write_enable~input_o\,
	datad => \i_GPIO_config_enable~input_o\,
	combout => \r_CONFIG_REGISTER[7]~0_combout\);

-- Location: FF_X2_Y8_N21
\r_CONFIG_REGISTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[2]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(2));

-- Location: IOIBUF_X0_Y21_N8
\i_GPIO_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(3),
	o => \i_GPIO_data[3]~input_o\);

-- Location: FF_X2_Y8_N3
\r_CONFIG_REGISTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[3]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(3));

-- Location: FF_X2_Y8_N1
\r_CONFIG_REGISTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[0]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(0));

-- Location: IOIBUF_X0_Y23_N1
\i_GPIO_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(1),
	o => \i_GPIO_data[1]~input_o\);

-- Location: LCCOMB_X2_Y8_N10
\r_CONFIG_REGISTER[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CONFIG_REGISTER[1]~feeder_combout\ = \i_GPIO_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[1]~input_o\,
	combout => \r_CONFIG_REGISTER[1]~feeder_combout\);

-- Location: FF_X2_Y8_N11
\r_CONFIG_REGISTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_CONFIG_REGISTER[1]~feeder_combout\,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(1));

-- Location: LCCOMB_X2_Y8_N0
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\) # ((r_CONFIG_REGISTER(1))))) # (!\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[1]~input_o\ & (r_CONFIG_REGISTER(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => r_CONFIG_REGISTER(0),
	datad => r_CONFIG_REGISTER(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X2_Y8_N2
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux0~2_combout\ & ((r_CONFIG_REGISTER(3)))) # (!\Mux0~2_combout\ & (r_CONFIG_REGISTER(2))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => r_CONFIG_REGISTER(2),
	datac => r_CONFIG_REGISTER(3),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X2_Y10_N4
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~14_combout\ & (!\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[1]~input_o\ & \Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X2_Y10_N13
\r_IO_REG_OUT[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][0]~q\);

-- Location: LCCOMB_X1_Y10_N16
\INST_bidir_bus1|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[0][0]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X1_Y10_N17
\INST_bidir_bus1|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(0));

-- Location: FF_X2_Y10_N23
\r_IO_REG_OUT[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][1]~q\);

-- Location: LCCOMB_X1_Y10_N22
\INST_bidir_bus1|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[0][1]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X1_Y10_N23
\INST_bidir_bus1|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(1));

-- Location: LCCOMB_X2_Y10_N20
\r_IO_REG_OUT[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[0][2]~feeder_combout\ = \i_GPIO_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[2]~input_o\,
	combout => \r_IO_REG_OUT[0][2]~feeder_combout\);

-- Location: FF_X2_Y10_N21
\r_IO_REG_OUT[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[0][2]~feeder_combout\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][2]~q\);

-- Location: LCCOMB_X1_Y10_N24
\INST_bidir_bus1|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[0][2]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X1_Y10_N25
\INST_bidir_bus1|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(2));

-- Location: LCCOMB_X2_Y10_N30
\r_IO_REG_OUT[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[0][3]~feeder_combout\ = \i_GPIO_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[3]~input_o\,
	combout => \r_IO_REG_OUT[0][3]~feeder_combout\);

-- Location: FF_X2_Y10_N31
\r_IO_REG_OUT[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[0][3]~feeder_combout\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][3]~q\);

-- Location: LCCOMB_X2_Y9_N2
\INST_bidir_bus1|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[0][3]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X2_Y9_N3
\INST_bidir_bus1|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(3));

-- Location: IOIBUF_X0_Y22_N15
\i_GPIO_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(4),
	o => \i_GPIO_data[4]~input_o\);

-- Location: LCCOMB_X2_Y10_N8
\r_IO_REG_OUT[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[0][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[0][4]~feeder_combout\);

-- Location: FF_X2_Y10_N9
\r_IO_REG_OUT[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[0][4]~feeder_combout\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][4]~q\);

-- Location: LCCOMB_X1_Y10_N30
\INST_bidir_bus1|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[0][4]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X1_Y10_N31
\INST_bidir_bus1|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(4));

-- Location: IOIBUF_X0_Y22_N1
\i_GPIO_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(5),
	o => \i_GPIO_data[5]~input_o\);

-- Location: FF_X2_Y10_N19
\r_IO_REG_OUT[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][5]~q\);

-- Location: LCCOMB_X1_Y10_N4
\INST_bidir_bus1|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[0][5]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X1_Y10_N5
\INST_bidir_bus1|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(5));

-- Location: IOIBUF_X0_Y2_N1
\i_GPIO_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(6),
	o => \i_GPIO_data[6]~input_o\);

-- Location: FF_X2_Y10_N1
\r_IO_REG_OUT[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][6]~q\);

-- Location: LCCOMB_X1_Y10_N14
\INST_bidir_bus1|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[0][6]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X1_Y10_N15
\INST_bidir_bus1|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(6));

-- Location: IOIBUF_X0_Y11_N8
\i_GPIO_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GPIO_data(7),
	o => \i_GPIO_data[7]~input_o\);

-- Location: FF_X2_Y10_N27
\r_IO_REG_OUT[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[0][7]~q\);

-- Location: LCCOMB_X1_Y10_N0
\INST_bidir_bus1|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus1|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[0][7]~q\,
	combout => \INST_bidir_bus1|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X1_Y10_N1
\INST_bidir_bus1|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus1|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|r_INPUT_reg\(7));

-- Location: LCCOMB_X1_Y9_N26
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\i_GPIO_write_enable~input_o\ & !\i_GPIO_config_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_GPIO_write_enable~input_o\,
	datad => \i_GPIO_config_enable~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X2_Y8_N24
\r_CONFIG_REGISTER[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_CONFIG_REGISTER[5]~feeder_combout\ = \i_GPIO_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[5]~input_o\,
	combout => \r_CONFIG_REGISTER[5]~feeder_combout\);

-- Location: FF_X2_Y8_N25
\r_CONFIG_REGISTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_CONFIG_REGISTER[5]~feeder_combout\,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(5));

-- Location: FF_X2_Y8_N15
\r_CONFIG_REGISTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[7]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(7));

-- Location: FF_X2_Y8_N29
\r_CONFIG_REGISTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[4]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(4));

-- Location: FF_X2_Y8_N19
\r_CONFIG_REGISTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \r_CONFIG_REGISTER[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CONFIG_REGISTER(6));

-- Location: LCCOMB_X2_Y8_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\)) # (!\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\ & ((r_CONFIG_REGISTER(6)))) # (!\i_GPIO_address[1]~input_o\ & (r_CONFIG_REGISTER(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => r_CONFIG_REGISTER(4),
	datad => r_CONFIG_REGISTER(6),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y8_N14
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux0~0_combout\ & ((r_CONFIG_REGISTER(7)))) # (!\Mux0~0_combout\ & (r_CONFIG_REGISTER(5))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => r_CONFIG_REGISTER(5),
	datac => r_CONFIG_REGISTER(7),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X2_Y8_N6
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Decoder0~4_combout\ & ((\i_GPIO_address[2]~input_o\ & (\Mux0~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X2_Y8_N4
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[2]~input_o\ & (!\i_GPIO_address[1]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[2]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X2_Y8_N13
\r_IO_REG_OUT[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][0]~q\);

-- Location: LCCOMB_X1_Y7_N22
\INST_bidir_bus2|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[1][0]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X1_Y7_N23
\INST_bidir_bus2|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(0));

-- Location: LCCOMB_X3_Y7_N10
\r_IO_REG_OUT[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[1][1]~feeder_combout\ = \i_GPIO_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[1]~input_o\,
	combout => \r_IO_REG_OUT[1][1]~feeder_combout\);

-- Location: FF_X3_Y7_N11
\r_IO_REG_OUT[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[1][1]~feeder_combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][1]~q\);

-- Location: LCCOMB_X3_Y7_N6
\INST_bidir_bus2|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][1]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X3_Y7_N7
\INST_bidir_bus2|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(1));

-- Location: FF_X2_Y8_N27
\r_IO_REG_OUT[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][2]~q\);

-- Location: LCCOMB_X5_Y8_N0
\INST_bidir_bus2|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][2]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X5_Y8_N1
\INST_bidir_bus2|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(2));

-- Location: LCCOMB_X3_Y7_N12
\r_IO_REG_OUT[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[1][3]~feeder_combout\ = \i_GPIO_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[3]~input_o\,
	combout => \r_IO_REG_OUT[1][3]~feeder_combout\);

-- Location: FF_X3_Y7_N13
\r_IO_REG_OUT[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[1][3]~feeder_combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][3]~q\);

-- Location: LCCOMB_X3_Y7_N0
\INST_bidir_bus2|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][3]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X3_Y7_N1
\INST_bidir_bus2|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(3));

-- Location: LCCOMB_X3_Y7_N2
\r_IO_REG_OUT[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[1][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[1][4]~feeder_combout\);

-- Location: FF_X3_Y7_N3
\r_IO_REG_OUT[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[1][4]~feeder_combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][4]~q\);

-- Location: LCCOMB_X4_Y7_N16
\INST_bidir_bus2|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][4]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X4_Y7_N17
\INST_bidir_bus2|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(4));

-- Location: LCCOMB_X3_Y7_N4
\r_IO_REG_OUT[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[1][5]~feeder_combout\ = \i_GPIO_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[5]~input_o\,
	combout => \r_IO_REG_OUT[1][5]~feeder_combout\);

-- Location: FF_X3_Y7_N5
\r_IO_REG_OUT[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[1][5]~feeder_combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][5]~q\);

-- Location: LCCOMB_X2_Y7_N20
\INST_bidir_bus2|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][5]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X2_Y7_N21
\INST_bidir_bus2|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(5));

-- Location: FF_X2_Y8_N9
\r_IO_REG_OUT[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][6]~q\);

-- Location: LCCOMB_X4_Y7_N10
\INST_bidir_bus2|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][6]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X4_Y7_N11
\INST_bidir_bus2|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(6));

-- Location: LCCOMB_X3_Y7_N14
\r_IO_REG_OUT[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[1][7]~feeder_combout\ = \i_GPIO_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[7]~input_o\,
	combout => \r_IO_REG_OUT[1][7]~feeder_combout\);

-- Location: FF_X3_Y7_N15
\r_IO_REG_OUT[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[1][7]~feeder_combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[1][7]~q\);

-- Location: LCCOMB_X4_Y7_N20
\INST_bidir_bus2|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[1][7]~q\,
	combout => \INST_bidir_bus2|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X4_Y7_N21
\INST_bidir_bus2|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|r_INPUT_reg\(7));

-- Location: LCCOMB_X2_Y8_N22
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[2]~input_o\ & (\i_GPIO_address[1]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[2]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X5_Y8_N19
\r_IO_REG_OUT[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][0]~q\);

-- Location: LCCOMB_X5_Y8_N2
\INST_bidir_bus3|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][0]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X5_Y8_N3
\INST_bidir_bus3|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(0));

-- Location: LCCOMB_X5_Y8_N8
\r_IO_REG_OUT[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[2][1]~feeder_combout\ = \i_GPIO_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[1]~input_o\,
	combout => \r_IO_REG_OUT[2][1]~feeder_combout\);

-- Location: FF_X5_Y8_N9
\r_IO_REG_OUT[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[2][1]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][1]~q\);

-- Location: LCCOMB_X1_Y7_N20
\INST_bidir_bus3|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][1]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X1_Y7_N21
\INST_bidir_bus3|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(1));

-- Location: LCCOMB_X5_Y8_N26
\r_IO_REG_OUT[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[2][2]~feeder_combout\ = \i_GPIO_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[2]~input_o\,
	combout => \r_IO_REG_OUT[2][2]~feeder_combout\);

-- Location: FF_X5_Y8_N27
\r_IO_REG_OUT[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[2][2]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][2]~q\);

-- Location: FF_X1_Y9_N27
\INST_bidir_bus3|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \r_IO_REG_OUT[2][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(2));

-- Location: FF_X5_Y8_N29
\r_IO_REG_OUT[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][3]~q\);

-- Location: LCCOMB_X4_Y8_N4
\INST_bidir_bus3|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][3]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X4_Y8_N5
\INST_bidir_bus3|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(3));

-- Location: LCCOMB_X5_Y8_N22
\r_IO_REG_OUT[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[2][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[2][4]~feeder_combout\);

-- Location: FF_X5_Y8_N23
\r_IO_REG_OUT[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[2][4]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][4]~q\);

-- Location: LCCOMB_X4_Y8_N6
\INST_bidir_bus3|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][4]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X4_Y8_N7
\INST_bidir_bus3|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(4));

-- Location: FF_X5_Y8_N25
\r_IO_REG_OUT[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][5]~q\);

-- Location: LCCOMB_X5_Y8_N20
\INST_bidir_bus3|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][5]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X5_Y8_N21
\INST_bidir_bus3|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(5));

-- Location: LCCOMB_X5_Y8_N30
\r_IO_REG_OUT[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[2][6]~feeder_combout\ = \i_GPIO_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[6]~input_o\,
	combout => \r_IO_REG_OUT[2][6]~feeder_combout\);

-- Location: FF_X5_Y8_N31
\r_IO_REG_OUT[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[2][6]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][6]~q\);

-- Location: LCCOMB_X1_Y7_N26
\INST_bidir_bus3|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][6]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X1_Y7_N27
\INST_bidir_bus3|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(6));

-- Location: FF_X5_Y8_N5
\r_IO_REG_OUT[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[2][7]~q\);

-- Location: LCCOMB_X1_Y7_N16
\INST_bidir_bus3|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[2][7]~q\,
	combout => \INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X1_Y7_N17
\INST_bidir_bus3|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus3|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|r_INPUT_reg\(7));

-- Location: LCCOMB_X2_Y10_N6
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Decoder0~14_combout\ & (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\ & \Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Decoder0~9_combout\);

-- Location: FF_X2_Y10_N17
\r_IO_REG_OUT[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][0]~q\);

-- Location: LCCOMB_X1_Y10_N2
\INST_bidir_bus4|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][0]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X1_Y10_N3
\INST_bidir_bus4|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(0));

-- Location: FF_X2_Y10_N15
\r_IO_REG_OUT[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][1]~q\);

-- Location: LCCOMB_X2_Y7_N18
\INST_bidir_bus4|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][1]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X2_Y7_N19
\INST_bidir_bus4|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(1));

-- Location: LCCOMB_X3_Y10_N2
\r_IO_REG_OUT[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[3][2]~feeder_combout\ = \i_GPIO_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[2]~input_o\,
	combout => \r_IO_REG_OUT[3][2]~feeder_combout\);

-- Location: FF_X3_Y10_N3
\r_IO_REG_OUT[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[3][2]~feeder_combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][2]~q\);

-- Location: LCCOMB_X3_Y10_N4
\INST_bidir_bus4|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][2]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X3_Y10_N5
\INST_bidir_bus4|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(2));

-- Location: LCCOMB_X3_Y10_N0
\r_IO_REG_OUT[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[3][3]~feeder_combout\ = \i_GPIO_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[3]~input_o\,
	combout => \r_IO_REG_OUT[3][3]~feeder_combout\);

-- Location: FF_X3_Y10_N1
\r_IO_REG_OUT[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[3][3]~feeder_combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][3]~q\);

-- Location: LCCOMB_X3_Y10_N26
\INST_bidir_bus4|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][3]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X3_Y10_N27
\INST_bidir_bus4|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(3));

-- Location: LCCOMB_X2_Y10_N24
\r_IO_REG_OUT[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[3][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[3][4]~feeder_combout\);

-- Location: FF_X2_Y10_N25
\r_IO_REG_OUT[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[3][4]~feeder_combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][4]~q\);

-- Location: LCCOMB_X3_Y10_N28
\INST_bidir_bus4|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][4]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X3_Y10_N29
\INST_bidir_bus4|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(4));

-- Location: FF_X2_Y10_N3
\r_IO_REG_OUT[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][5]~q\);

-- Location: LCCOMB_X1_Y10_N20
\INST_bidir_bus4|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][5]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X1_Y10_N21
\INST_bidir_bus4|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(5));

-- Location: FF_X2_Y10_N29
\r_IO_REG_OUT[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][6]~q\);

-- Location: LCCOMB_X1_Y10_N26
\INST_bidir_bus4|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][6]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X1_Y10_N27
\INST_bidir_bus4|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(6));

-- Location: FF_X2_Y10_N11
\r_IO_REG_OUT[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[3][7]~q\);

-- Location: LCCOMB_X2_Y7_N24
\INST_bidir_bus4|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[3][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[3][7]~q\,
	combout => \INST_bidir_bus4|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X2_Y7_N25
\INST_bidir_bus4|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|r_INPUT_reg\(7));

-- Location: LCCOMB_X3_Y8_N6
\r_IO_REG_OUT[4][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[4][0]~feeder_combout\ = \i_GPIO_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[0]~input_o\,
	combout => \r_IO_REG_OUT[4][0]~feeder_combout\);

-- Location: LCCOMB_X3_Y8_N14
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\i_GPIO_address[1]~input_o\ & (!\i_GPIO_address[0]~input_o\ & (\Decoder0~6_combout\ & \i_GPIO_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \Decoder0~6_combout\,
	datad => \i_GPIO_address[2]~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: FF_X3_Y8_N7
\r_IO_REG_OUT[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[4][0]~feeder_combout\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][0]~q\);

-- Location: LCCOMB_X3_Y8_N16
\INST_bidir_bus5|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][0]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X3_Y8_N17
\INST_bidir_bus5|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(0));

-- Location: FF_X3_Y8_N13
\r_IO_REG_OUT[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][1]~q\);

-- Location: LCCOMB_X3_Y8_N30
\INST_bidir_bus5|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][1]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X3_Y8_N31
\INST_bidir_bus5|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(1));

-- Location: FF_X3_Y8_N19
\r_IO_REG_OUT[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][2]~q\);

-- Location: LCCOMB_X3_Y8_N4
\INST_bidir_bus5|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][2]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X3_Y8_N5
\INST_bidir_bus5|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(2));

-- Location: FF_X3_Y8_N21
\r_IO_REG_OUT[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][3]~q\);

-- Location: LCCOMB_X3_Y8_N26
\INST_bidir_bus5|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][3]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X3_Y8_N27
\INST_bidir_bus5|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(3));

-- Location: LCCOMB_X3_Y8_N22
\r_IO_REG_OUT[4][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[4][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[4][4]~feeder_combout\);

-- Location: FF_X3_Y8_N23
\r_IO_REG_OUT[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[4][4]~feeder_combout\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][4]~q\);

-- Location: LCCOMB_X1_Y4_N8
\INST_bidir_bus5|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][4]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X1_Y4_N9
\INST_bidir_bus5|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(4));

-- Location: LCCOMB_X3_Y8_N8
\r_IO_REG_OUT[4][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[4][5]~feeder_combout\ = \i_GPIO_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[5]~input_o\,
	combout => \r_IO_REG_OUT[4][5]~feeder_combout\);

-- Location: FF_X3_Y8_N9
\r_IO_REG_OUT[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[4][5]~feeder_combout\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][5]~q\);

-- Location: LCCOMB_X4_Y8_N0
\INST_bidir_bus5|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][5]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X4_Y8_N1
\INST_bidir_bus5|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(5));

-- Location: FF_X3_Y8_N11
\r_IO_REG_OUT[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][6]~q\);

-- Location: LCCOMB_X3_Y8_N24
\INST_bidir_bus5|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][6]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X3_Y8_N25
\INST_bidir_bus5|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(6));

-- Location: LCCOMB_X3_Y8_N0
\r_IO_REG_OUT[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[4][7]~feeder_combout\ = \i_GPIO_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[7]~input_o\,
	combout => \r_IO_REG_OUT[4][7]~feeder_combout\);

-- Location: FF_X3_Y8_N1
\r_IO_REG_OUT[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[4][7]~feeder_combout\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[4][7]~q\);

-- Location: LCCOMB_X3_Y8_N2
\INST_bidir_bus5|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus5|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[4][7]~q\,
	combout => \INST_bidir_bus5|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X3_Y8_N3
\INST_bidir_bus5|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus5|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|r_INPUT_reg\(7));

-- Location: LCCOMB_X4_Y8_N20
\r_IO_REG_OUT[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[5][0]~feeder_combout\ = \i_GPIO_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[0]~input_o\,
	combout => \r_IO_REG_OUT[5][0]~feeder_combout\);

-- Location: LCCOMB_X2_Y8_N16
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[2]~input_o\ & (!\i_GPIO_address[1]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[2]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~11_combout\);

-- Location: FF_X4_Y8_N21
\r_IO_REG_OUT[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[5][0]~feeder_combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][0]~q\);

-- Location: LCCOMB_X4_Y8_N14
\INST_bidir_bus6|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][0]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X4_Y8_N15
\INST_bidir_bus6|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(0));

-- Location: LCCOMB_X4_Y8_N26
\r_IO_REG_OUT[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[5][1]~feeder_combout\ = \i_GPIO_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[1]~input_o\,
	combout => \r_IO_REG_OUT[5][1]~feeder_combout\);

-- Location: FF_X4_Y8_N27
\r_IO_REG_OUT[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[5][1]~feeder_combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][1]~q\);

-- Location: LCCOMB_X3_Y8_N28
\INST_bidir_bus6|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][1]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X3_Y8_N29
\INST_bidir_bus6|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(1));

-- Location: FF_X4_Y8_N29
\r_IO_REG_OUT[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][2]~q\);

-- Location: LCCOMB_X4_Y8_N16
\INST_bidir_bus6|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][2]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X4_Y8_N17
\INST_bidir_bus6|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(2));

-- Location: FF_X4_Y8_N11
\r_IO_REG_OUT[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][3]~q\);

-- Location: LCCOMB_X4_Y8_N2
\INST_bidir_bus6|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][3]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X4_Y8_N3
\INST_bidir_bus6|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(3));

-- Location: LCCOMB_X4_Y8_N8
\r_IO_REG_OUT[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[5][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[5][4]~feeder_combout\);

-- Location: FF_X4_Y8_N9
\r_IO_REG_OUT[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[5][4]~feeder_combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][4]~q\);

-- Location: LCCOMB_X5_Y8_N10
\INST_bidir_bus6|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][4]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X5_Y8_N11
\INST_bidir_bus6|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(4));

-- Location: FF_X4_Y8_N23
\r_IO_REG_OUT[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][5]~q\);

-- Location: LCCOMB_X5_Y8_N12
\INST_bidir_bus6|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][5]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X5_Y8_N13
\INST_bidir_bus6|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(5));

-- Location: FF_X4_Y8_N13
\r_IO_REG_OUT[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][6]~q\);

-- Location: LCCOMB_X4_Y8_N24
\INST_bidir_bus6|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][6]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X4_Y8_N25
\INST_bidir_bus6|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(6));

-- Location: FF_X4_Y8_N19
\r_IO_REG_OUT[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[5][7]~q\);

-- Location: LCCOMB_X4_Y8_N30
\INST_bidir_bus6|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus6|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[5][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[5][7]~q\,
	combout => \INST_bidir_bus6|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X4_Y8_N31
\INST_bidir_bus6|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus6|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|r_INPUT_reg\(7));

-- Location: LCCOMB_X1_Y8_N2
\r_IO_REG_OUT[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[6][0]~feeder_combout\ = \i_GPIO_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[0]~input_o\,
	combout => \r_IO_REG_OUT[6][0]~feeder_combout\);

-- Location: LCCOMB_X1_Y8_N14
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\i_GPIO_address[1]~input_o\ & (!\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[2]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \i_GPIO_address[2]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~12_combout\);

-- Location: FF_X1_Y8_N3
\r_IO_REG_OUT[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[6][0]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][0]~q\);

-- Location: LCCOMB_X1_Y8_N4
\INST_bidir_bus7|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][0]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X1_Y8_N5
\INST_bidir_bus7|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(0));

-- Location: FF_X1_Y8_N13
\r_IO_REG_OUT[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][1]~q\);

-- Location: LCCOMB_X1_Y7_N30
\INST_bidir_bus7|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_IO_REG_OUT[6][1]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X1_Y7_N31
\INST_bidir_bus7|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(1));

-- Location: FF_X1_Y8_N11
\r_IO_REG_OUT[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][2]~q\);

-- Location: LCCOMB_X1_Y8_N22
\INST_bidir_bus7|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][2]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X1_Y8_N23
\INST_bidir_bus7|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(2));

-- Location: LCCOMB_X1_Y8_N28
\r_IO_REG_OUT[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[6][3]~feeder_combout\ = \i_GPIO_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[3]~input_o\,
	combout => \r_IO_REG_OUT[6][3]~feeder_combout\);

-- Location: FF_X1_Y8_N29
\r_IO_REG_OUT[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[6][3]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][3]~q\);

-- Location: LCCOMB_X1_Y8_N0
\INST_bidir_bus7|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][3]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X1_Y8_N1
\INST_bidir_bus7|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(3));

-- Location: LCCOMB_X1_Y8_N6
\r_IO_REG_OUT[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[6][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[6][4]~feeder_combout\);

-- Location: FF_X1_Y8_N7
\r_IO_REG_OUT[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[6][4]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][4]~q\);

-- Location: LCCOMB_X1_Y8_N26
\INST_bidir_bus7|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][4]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X1_Y8_N27
\INST_bidir_bus7|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(4));

-- Location: LCCOMB_X1_Y8_N24
\r_IO_REG_OUT[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[6][5]~feeder_combout\ = \i_GPIO_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[5]~input_o\,
	combout => \r_IO_REG_OUT[6][5]~feeder_combout\);

-- Location: FF_X1_Y8_N25
\r_IO_REG_OUT[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[6][5]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][5]~q\);

-- Location: LCCOMB_X1_Y8_N16
\INST_bidir_bus7|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][5]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X1_Y8_N17
\INST_bidir_bus7|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(5));

-- Location: FF_X1_Y8_N19
\r_IO_REG_OUT[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \i_GPIO_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][6]~q\);

-- Location: LCCOMB_X1_Y8_N30
\INST_bidir_bus7|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][6]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X1_Y8_N31
\INST_bidir_bus7|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(6));

-- Location: LCCOMB_X1_Y8_N20
\r_IO_REG_OUT[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[6][7]~feeder_combout\ = \i_GPIO_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[7]~input_o\,
	combout => \r_IO_REG_OUT[6][7]~feeder_combout\);

-- Location: FF_X1_Y8_N21
\r_IO_REG_OUT[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[6][7]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[6][7]~q\);

-- Location: LCCOMB_X1_Y8_N8
\INST_bidir_bus7|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[6][7]~q\,
	combout => \INST_bidir_bus7|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X1_Y8_N9
\INST_bidir_bus7|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|r_INPUT_reg\(7));

-- Location: LCCOMB_X2_Y7_N22
\r_IO_REG_OUT[7][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][0]~feeder_combout\ = \i_GPIO_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[0]~input_o\,
	combout => \r_IO_REG_OUT[7][0]~feeder_combout\);

-- Location: LCCOMB_X2_Y8_N30
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[2]~input_o\ & (\i_GPIO_address[1]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[2]~input_o\,
	datac => \i_GPIO_address[1]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~13_combout\);

-- Location: FF_X2_Y7_N23
\r_IO_REG_OUT[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][0]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][0]~q\);

-- Location: LCCOMB_X1_Y7_N8
\INST_bidir_bus8|r_INPUT_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[0]~feeder_combout\ = \r_IO_REG_OUT[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][0]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[0]~feeder_combout\);

-- Location: FF_X1_Y7_N9
\INST_bidir_bus8|r_INPUT_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(0));

-- Location: LCCOMB_X6_Y8_N4
\r_IO_REG_OUT[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][1]~feeder_combout\ = \i_GPIO_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[1]~input_o\,
	combout => \r_IO_REG_OUT[7][1]~feeder_combout\);

-- Location: FF_X6_Y8_N5
\r_IO_REG_OUT[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][1]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][1]~q\);

-- Location: LCCOMB_X3_Y7_N22
\INST_bidir_bus8|r_INPUT_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\ = \r_IO_REG_OUT[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][1]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\);

-- Location: FF_X3_Y7_N23
\INST_bidir_bus8|r_INPUT_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(1));

-- Location: LCCOMB_X2_Y7_N0
\r_IO_REG_OUT[7][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][2]~feeder_combout\ = \i_GPIO_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[2]~input_o\,
	combout => \r_IO_REG_OUT[7][2]~feeder_combout\);

-- Location: FF_X2_Y7_N1
\r_IO_REG_OUT[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][2]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][2]~q\);

-- Location: LCCOMB_X2_Y7_N26
\INST_bidir_bus8|r_INPUT_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\ = \r_IO_REG_OUT[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][2]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\);

-- Location: FF_X2_Y7_N27
\INST_bidir_bus8|r_INPUT_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(2));

-- Location: LCCOMB_X2_Y7_N2
\r_IO_REG_OUT[7][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][3]~feeder_combout\ = \i_GPIO_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[3]~input_o\,
	combout => \r_IO_REG_OUT[7][3]~feeder_combout\);

-- Location: FF_X2_Y7_N3
\r_IO_REG_OUT[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][3]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][3]~q\);

-- Location: LCCOMB_X1_Y7_N18
\INST_bidir_bus8|r_INPUT_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\ = \r_IO_REG_OUT[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][3]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\);

-- Location: FF_X1_Y7_N19
\INST_bidir_bus8|r_INPUT_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(3));

-- Location: LCCOMB_X2_Y7_N12
\r_IO_REG_OUT[7][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][4]~feeder_combout\ = \i_GPIO_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[4]~input_o\,
	combout => \r_IO_REG_OUT[7][4]~feeder_combout\);

-- Location: FF_X2_Y7_N13
\r_IO_REG_OUT[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][4]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][4]~q\);

-- Location: LCCOMB_X3_Y7_N20
\INST_bidir_bus8|r_INPUT_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\ = \r_IO_REG_OUT[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][4]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\);

-- Location: FF_X3_Y7_N21
\INST_bidir_bus8|r_INPUT_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(4));

-- Location: LCCOMB_X2_Y7_N10
\r_IO_REG_OUT[7][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][5]~feeder_combout\ = \i_GPIO_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[5]~input_o\,
	combout => \r_IO_REG_OUT[7][5]~feeder_combout\);

-- Location: FF_X2_Y7_N11
\r_IO_REG_OUT[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][5]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][5]~q\);

-- Location: LCCOMB_X2_Y7_N28
\INST_bidir_bus8|r_INPUT_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\ = \r_IO_REG_OUT[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][5]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\);

-- Location: FF_X2_Y7_N29
\INST_bidir_bus8|r_INPUT_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(5));

-- Location: LCCOMB_X6_Y8_N18
\r_IO_REG_OUT[7][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][6]~feeder_combout\ = \i_GPIO_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[6]~input_o\,
	combout => \r_IO_REG_OUT[7][6]~feeder_combout\);

-- Location: FF_X6_Y8_N19
\r_IO_REG_OUT[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][6]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][6]~q\);

-- Location: LCCOMB_X2_Y4_N30
\INST_bidir_bus8|r_INPUT_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[6]~feeder_combout\ = \r_IO_REG_OUT[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][6]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[6]~feeder_combout\);

-- Location: FF_X2_Y4_N31
\INST_bidir_bus8|r_INPUT_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(6));

-- Location: LCCOMB_X6_Y8_N0
\r_IO_REG_OUT[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_IO_REG_OUT[7][7]~feeder_combout\ = \i_GPIO_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_GPIO_data[7]~input_o\,
	combout => \r_IO_REG_OUT[7][7]~feeder_combout\);

-- Location: FF_X6_Y8_N1
\r_IO_REG_OUT[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \r_IO_REG_OUT[7][7]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_IO_REG_OUT[7][7]~q\);

-- Location: LCCOMB_X2_Y9_N24
\INST_bidir_bus8|r_INPUT_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|r_INPUT_reg[7]~feeder_combout\ = \r_IO_REG_OUT[7][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_IO_REG_OUT[7][7]~q\,
	combout => \INST_bidir_bus8|r_INPUT_reg[7]~feeder_combout\);

-- Location: FF_X2_Y9_N25
\INST_bidir_bus8|r_INPUT_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|r_INPUT_reg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|r_INPUT_reg\(7));

-- Location: IOIBUF_X0_Y11_N22
\io_GPIO_PIN7[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(0),
	o => \io_GPIO_PIN7[0]~input_o\);

-- Location: LCCOMB_X2_Y9_N30
\INST_bidir_bus8|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN7[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[0]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X2_Y9_N31
\INST_bidir_bus8|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y20_N8
\io_GPIO_PIN5[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(0),
	o => \io_GPIO_PIN5[0]~input_o\);

-- Location: FF_X2_Y9_N17
\INST_bidir_bus6|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y12_N1
\io_GPIO_PIN6[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(0),
	o => \io_GPIO_PIN6[0]~input_o\);

-- Location: LCCOMB_X2_Y9_N10
\INST_bidir_bus7|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN6[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[0]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X2_Y9_N11
\INST_bidir_bus7|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y8_N8
\io_GPIO_PIN4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(0),
	o => \io_GPIO_PIN4[0]~input_o\);

-- Location: FF_X2_Y9_N1
\INST_bidir_bus5|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(0));

-- Location: LCCOMB_X2_Y9_N0
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(0)) # ((\i_GPIO_address[0]~input_o\)))) # (!\i_GPIO_address[1]~input_o\ & (((\INST_bidir_bus5|o_DATA_out\(0) & !\i_GPIO_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus7|o_DATA_out\(0),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(0),
	datad => \i_GPIO_address[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X2_Y9_N16
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux8~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(0))) # (!\Mux8~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(0)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus8|o_DATA_out\(0),
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus6|o_DATA_out\(0),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X0_Y10_N8
\io_GPIO_PIN3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(0),
	o => \io_GPIO_PIN3[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N8
\INST_bidir_bus4|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN3[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[0]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X1_Y10_N9
\INST_bidir_bus4|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y9_N1
\io_GPIO_PIN2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(0),
	o => \io_GPIO_PIN2[0]~input_o\);

-- Location: FF_X1_Y9_N29
\INST_bidir_bus3|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y10_N15
\io_GPIO_PIN0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(0),
	o => \io_GPIO_PIN0[0]~input_o\);

-- Location: FF_X2_Y9_N29
\INST_bidir_bus1|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(0));

-- Location: IOIBUF_X0_Y7_N15
\io_GPIO_PIN1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(0),
	o => \io_GPIO_PIN1[0]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\INST_bidir_bus2|o_DATA_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|o_DATA_out[0]~feeder_combout\ = \io_GPIO_PIN1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[0]~input_o\,
	combout => \INST_bidir_bus2|o_DATA_out[0]~feeder_combout\);

-- Location: FF_X1_Y7_N1
\INST_bidir_bus2|o_DATA_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|o_DATA_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(0));

-- Location: LCCOMB_X2_Y9_N28
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\i_GPIO_address[1]~input_o\ & (\i_GPIO_address[0]~input_o\)) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & ((\INST_bidir_bus2|o_DATA_out\(0)))) # (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(0),
	datad => \INST_bidir_bus2|o_DATA_out\(0),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X1_Y9_N28
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux8~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(0))) # (!\Mux8~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(0)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \INST_bidir_bus4|o_DATA_out\(0),
	datac => \INST_bidir_bus3|o_DATA_out\(0),
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X1_Y9_N12
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux8~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~1_combout\,
	datac => \i_GPIO_address[2]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X1_Y9_N6
\o_GPIO_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_GPIO_data[0]~0_combout\ = (!\i_GPIO_write_enable~input_o\ & ((\i_GPIO_address[2]~input_o\ & ((!\Mux0~1_combout\))) # (!\i_GPIO_address[2]~input_o\ & (!\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datab => \i_GPIO_write_enable~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \o_GPIO_data[0]~0_combout\);

-- Location: FF_X1_Y9_N13
\o_GPIO_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux8~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[0]~reg0_q\);

-- Location: IOIBUF_X0_Y13_N22
\io_GPIO_PIN0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(1),
	o => \io_GPIO_PIN0[1]~input_o\);

-- Location: FF_X1_Y4_N17
\INST_bidir_bus1|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(1));

-- Location: IOIBUF_X9_Y0_N1
\io_GPIO_PIN1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(1),
	o => \io_GPIO_PIN1[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N2
\INST_bidir_bus2|o_DATA_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|o_DATA_out[1]~feeder_combout\ = \io_GPIO_PIN1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[1]~input_o\,
	combout => \INST_bidir_bus2|o_DATA_out[1]~feeder_combout\);

-- Location: FF_X1_Y4_N3
\INST_bidir_bus2|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|o_DATA_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(1));

-- Location: LCCOMB_X1_Y4_N16
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\i_GPIO_address[1]~input_o\ & (\i_GPIO_address[0]~input_o\)) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & ((\INST_bidir_bus2|o_DATA_out\(1)))) # (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(1),
	datad => \INST_bidir_bus2|o_DATA_out\(1),
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X0_Y3_N8
\io_GPIO_PIN2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(1),
	o => \io_GPIO_PIN2[1]~input_o\);

-- Location: FF_X1_Y4_N13
\INST_bidir_bus3|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(1));

-- Location: IOIBUF_X3_Y0_N1
\io_GPIO_PIN3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(1),
	o => \io_GPIO_PIN3[1]~input_o\);

-- Location: FF_X2_Y4_N5
\INST_bidir_bus4|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN3[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(1));

-- Location: LCCOMB_X1_Y4_N12
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux7~2_combout\ & ((\INST_bidir_bus4|o_DATA_out\(1)))) # (!\Mux7~2_combout\ & (\INST_bidir_bus3|o_DATA_out\(1))))) # (!\i_GPIO_address[1]~input_o\ & (\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \INST_bidir_bus3|o_DATA_out\(1),
	datad => \INST_bidir_bus4|o_DATA_out\(1),
	combout => \Mux7~3_combout\);

-- Location: IOIBUF_X0_Y5_N1
\io_GPIO_PIN7[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(1),
	o => \io_GPIO_PIN7[1]~input_o\);

-- Location: LCCOMB_X2_Y7_N4
\INST_bidir_bus8|o_DATA_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[1]~feeder_combout\ = \io_GPIO_PIN7[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[1]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[1]~feeder_combout\);

-- Location: FF_X2_Y7_N5
\INST_bidir_bus8|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(1));

-- Location: IOIBUF_X7_Y0_N29
\io_GPIO_PIN5[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(1),
	o => \io_GPIO_PIN5[1]~input_o\);

-- Location: FF_X1_Y7_N15
\INST_bidir_bus6|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(1));

-- Location: IOIBUF_X5_Y0_N8
\io_GPIO_PIN4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(1),
	o => \io_GPIO_PIN4[1]~input_o\);

-- Location: FF_X1_Y4_N31
\INST_bidir_bus5|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(1));

-- Location: IOIBUF_X0_Y4_N1
\io_GPIO_PIN6[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(1),
	o => \io_GPIO_PIN6[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N20
\INST_bidir_bus7|o_DATA_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[1]~feeder_combout\ = \io_GPIO_PIN6[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[1]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[1]~feeder_combout\);

-- Location: FF_X1_Y4_N21
\INST_bidir_bus7|o_DATA_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(1));

-- Location: LCCOMB_X1_Y4_N30
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\) # ((\INST_bidir_bus7|o_DATA_out\(1))))) # (!\i_GPIO_address[1]~input_o\ & (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(1),
	datad => \INST_bidir_bus7|o_DATA_out\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux7~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(1))) # (!\Mux7~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(1)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus8|o_DATA_out\(1),
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus6|o_DATA_out\(1),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X1_Y9_N14
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\i_GPIO_address[2]~input_o\ & ((\Mux7~1_combout\))) # (!\i_GPIO_address[2]~input_o\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: FF_X1_Y9_N15
\o_GPIO_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux7~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[1]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N22
\io_GPIO_PIN7[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(2),
	o => \io_GPIO_PIN7[2]~input_o\);

-- Location: FF_X1_Y9_N31
\INST_bidir_bus8|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN7[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(2));

-- Location: IOIBUF_X0_Y20_N1
\io_GPIO_PIN5[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(2),
	o => \io_GPIO_PIN5[2]~input_o\);

-- Location: FF_X1_Y9_N5
\INST_bidir_bus6|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(2));

-- Location: IOIBUF_X0_Y2_N22
\io_GPIO_PIN4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(2),
	o => \io_GPIO_PIN4[2]~input_o\);

-- Location: FF_X1_Y6_N15
\INST_bidir_bus5|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(2));

-- Location: IOIBUF_X0_Y6_N8
\io_GPIO_PIN6[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(2),
	o => \io_GPIO_PIN6[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\INST_bidir_bus7|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN6[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[2]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X1_Y6_N17
\INST_bidir_bus7|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(2));

-- Location: LCCOMB_X1_Y6_N14
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\)) # (!\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(2)))) # (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(2),
	datad => \INST_bidir_bus7|o_DATA_out\(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y9_N4
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux6~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(2))) # (!\Mux6~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(2)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \INST_bidir_bus8|o_DATA_out\(2),
	datac => \INST_bidir_bus6|o_DATA_out\(2),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\io_GPIO_PIN3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(2),
	o => \io_GPIO_PIN3[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N24
\INST_bidir_bus4|o_DATA_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[2]~feeder_combout\ = \io_GPIO_PIN3[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[2]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[2]~feeder_combout\);

-- Location: FF_X1_Y6_N25
\INST_bidir_bus4|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(2));

-- Location: IOIBUF_X0_Y9_N22
\io_GPIO_PIN2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(2),
	o => \io_GPIO_PIN2[2]~input_o\);

-- Location: FF_X1_Y9_N17
\INST_bidir_bus3|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(2));

-- Location: IOIBUF_X0_Y11_N1
\io_GPIO_PIN0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(2),
	o => \io_GPIO_PIN0[2]~input_o\);

-- Location: FF_X2_Y9_N19
\INST_bidir_bus1|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(2));

-- Location: IOIBUF_X5_Y0_N1
\io_GPIO_PIN1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(2),
	o => \io_GPIO_PIN1[2]~input_o\);

-- Location: FF_X3_Y7_N25
\INST_bidir_bus2|o_DATA_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN1[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(2));

-- Location: LCCOMB_X2_Y9_N18
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\i_GPIO_address[1]~input_o\ & (\i_GPIO_address[0]~input_o\)) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & ((\INST_bidir_bus2|o_DATA_out\(2)))) # (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(2),
	datad => \INST_bidir_bus2|o_DATA_out\(2),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X1_Y9_N16
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux6~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(2))) # (!\Mux6~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(2)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \INST_bidir_bus4|o_DATA_out\(2),
	datac => \INST_bidir_bus3|o_DATA_out\(2),
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X1_Y9_N8
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux6~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: FF_X1_Y9_N9
\o_GPIO_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux6~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[2]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N15
\io_GPIO_PIN7[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(3),
	o => \io_GPIO_PIN7[3]~input_o\);

-- Location: LCCOMB_X2_Y9_N22
\INST_bidir_bus8|o_DATA_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[3]~feeder_combout\ = \io_GPIO_PIN7[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[3]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[3]~feeder_combout\);

-- Location: FF_X2_Y9_N23
\INST_bidir_bus8|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(3));

-- Location: IOIBUF_X3_Y0_N15
\io_GPIO_PIN5[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(3),
	o => \io_GPIO_PIN5[3]~input_o\);

-- Location: FF_X2_Y9_N9
\INST_bidir_bus6|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(3));

-- Location: IOIBUF_X0_Y12_N8
\io_GPIO_PIN6[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(3),
	o => \io_GPIO_PIN6[3]~input_o\);

-- Location: LCCOMB_X2_Y9_N26
\INST_bidir_bus7|o_DATA_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[3]~feeder_combout\ = \io_GPIO_PIN6[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[3]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[3]~feeder_combout\);

-- Location: FF_X2_Y9_N27
\INST_bidir_bus7|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(3));

-- Location: IOIBUF_X0_Y5_N15
\io_GPIO_PIN4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(3),
	o => \io_GPIO_PIN4[3]~input_o\);

-- Location: FF_X2_Y9_N21
\INST_bidir_bus5|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(3));

-- Location: LCCOMB_X2_Y9_N20
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(3)) # ((\i_GPIO_address[0]~input_o\)))) # (!\i_GPIO_address[1]~input_o\ & (((\INST_bidir_bus5|o_DATA_out\(3) & !\i_GPIO_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus7|o_DATA_out\(3),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(3),
	datad => \i_GPIO_address[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X2_Y9_N8
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux5~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(3))) # (!\Mux5~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(3)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus8|o_DATA_out\(3),
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus6|o_DATA_out\(3),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X0_Y10_N22
\io_GPIO_PIN3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(3),
	o => \io_GPIO_PIN3[3]~input_o\);

-- Location: LCCOMB_X1_Y10_N6
\INST_bidir_bus4|o_DATA_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[3]~feeder_combout\ = \io_GPIO_PIN3[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[3]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[3]~feeder_combout\);

-- Location: FF_X1_Y10_N7
\INST_bidir_bus4|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(3));

-- Location: IOIBUF_X0_Y8_N15
\io_GPIO_PIN2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(3),
	o => \io_GPIO_PIN2[3]~input_o\);

-- Location: FF_X2_Y9_N5
\INST_bidir_bus3|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(3));

-- Location: IOIBUF_X0_Y7_N8
\io_GPIO_PIN1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(3),
	o => \io_GPIO_PIN1[3]~input_o\);

-- Location: FF_X2_Y9_N7
\INST_bidir_bus2|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN1[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(3));

-- Location: IOIBUF_X0_Y13_N15
\io_GPIO_PIN0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(3),
	o => \io_GPIO_PIN0[3]~input_o\);

-- Location: FF_X2_Y9_N13
\INST_bidir_bus1|o_DATA_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(3));

-- Location: LCCOMB_X2_Y9_N12
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i_GPIO_address[1]~input_o\ & (((\i_GPIO_address[0]~input_o\)))) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus2|o_DATA_out\(3))) # (!\i_GPIO_address[0]~input_o\ & 
-- ((\INST_bidir_bus1|o_DATA_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus2|o_DATA_out\(3),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(3),
	datad => \i_GPIO_address[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X2_Y9_N4
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux5~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(3))) # (!\Mux5~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(3)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus4|o_DATA_out\(3),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus3|o_DATA_out\(3),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X1_Y9_N22
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux5~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: FF_X1_Y9_N23
\o_GPIO_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux5~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[3]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\io_GPIO_PIN4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(4),
	o => \io_GPIO_PIN4[4]~input_o\);

-- Location: FF_X1_Y4_N7
\INST_bidir_bus5|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(4));

-- Location: IOIBUF_X0_Y4_N15
\io_GPIO_PIN6[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(4),
	o => \io_GPIO_PIN6[4]~input_o\);

-- Location: LCCOMB_X1_Y4_N28
\INST_bidir_bus7|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN6[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[4]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X1_Y4_N29
\INST_bidir_bus7|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(4));

-- Location: LCCOMB_X1_Y4_N6
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\) # ((\INST_bidir_bus7|o_DATA_out\(4))))) # (!\i_GPIO_address[1]~input_o\ & (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(4),
	datad => \INST_bidir_bus7|o_DATA_out\(4),
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\io_GPIO_PIN5[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(4),
	o => \io_GPIO_PIN5[4]~input_o\);

-- Location: FF_X1_Y4_N11
\INST_bidir_bus6|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(4));

-- Location: IOIBUF_X3_Y0_N22
\io_GPIO_PIN7[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(4),
	o => \io_GPIO_PIN7[4]~input_o\);

-- Location: LCCOMB_X2_Y4_N2
\INST_bidir_bus8|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN7[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[4]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X2_Y4_N3
\INST_bidir_bus8|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(4));

-- Location: LCCOMB_X1_Y4_N10
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\INST_bidir_bus8|o_DATA_out\(4))) # (!\i_GPIO_address[0]~input_o\))) # (!\Mux4~0_combout\ & (\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus6|o_DATA_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus6|o_DATA_out\(4),
	datad => \INST_bidir_bus8|o_DATA_out\(4),
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X0_Y5_N8
\io_GPIO_PIN0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(4),
	o => \io_GPIO_PIN0[4]~input_o\);

-- Location: FF_X1_Y4_N25
\INST_bidir_bus1|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(4));

-- Location: IOIBUF_X9_Y0_N29
\io_GPIO_PIN1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(4),
	o => \io_GPIO_PIN1[4]~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\INST_bidir_bus2|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus2|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN1[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN1[4]~input_o\,
	combout => \INST_bidir_bus2|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X1_Y4_N19
\INST_bidir_bus2|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus2|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(4));

-- Location: LCCOMB_X1_Y4_N24
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\i_GPIO_address[1]~input_o\ & (\i_GPIO_address[0]~input_o\)) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & ((\INST_bidir_bus2|o_DATA_out\(4)))) # (!\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(4),
	datad => \INST_bidir_bus2|o_DATA_out\(4),
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X0_Y4_N22
\io_GPIO_PIN2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(4),
	o => \io_GPIO_PIN2[4]~input_o\);

-- Location: FF_X1_Y4_N1
\INST_bidir_bus3|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(4));

-- Location: IOIBUF_X3_Y0_N29
\io_GPIO_PIN3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(4),
	o => \io_GPIO_PIN3[4]~input_o\);

-- Location: LCCOMB_X2_Y4_N28
\INST_bidir_bus4|o_DATA_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[4]~feeder_combout\ = \io_GPIO_PIN3[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[4]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[4]~feeder_combout\);

-- Location: FF_X2_Y4_N29
\INST_bidir_bus4|o_DATA_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(4));

-- Location: LCCOMB_X1_Y4_N0
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux4~2_combout\ & ((\INST_bidir_bus4|o_DATA_out\(4)))) # (!\Mux4~2_combout\ & (\INST_bidir_bus3|o_DATA_out\(4))))) # (!\i_GPIO_address[1]~input_o\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \Mux4~2_combout\,
	datac => \INST_bidir_bus3|o_DATA_out\(4),
	datad => \INST_bidir_bus4|o_DATA_out\(4),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X1_Y9_N24
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux4~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: FF_X1_Y9_N25
\o_GPIO_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux4~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[4]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N22
\io_GPIO_PIN4[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(5),
	o => \io_GPIO_PIN4[5]~input_o\);

-- Location: FF_X1_Y6_N19
\INST_bidir_bus5|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(5));

-- Location: IOIBUF_X0_Y8_N1
\io_GPIO_PIN6[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(5),
	o => \io_GPIO_PIN6[5]~input_o\);

-- Location: LCCOMB_X1_Y6_N28
\INST_bidir_bus7|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN6[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[5]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X1_Y6_N29
\INST_bidir_bus7|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(5));

-- Location: LCCOMB_X1_Y6_N18
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\)) # (!\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(5)))) # (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(5),
	datad => \INST_bidir_bus7|o_DATA_out\(5),
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\io_GPIO_PIN5[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(5),
	o => \io_GPIO_PIN5[5]~input_o\);

-- Location: FF_X1_Y6_N27
\INST_bidir_bus6|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(5));

-- Location: IOIBUF_X1_Y0_N8
\io_GPIO_PIN7[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(5),
	o => \io_GPIO_PIN7[5]~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\INST_bidir_bus8|o_DATA_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[5]~feeder_combout\ = \io_GPIO_PIN7[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[5]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[5]~feeder_combout\);

-- Location: FF_X1_Y6_N13
\INST_bidir_bus8|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(5));

-- Location: LCCOMB_X1_Y6_N26
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux3~0_combout\ & ((\INST_bidir_bus8|o_DATA_out\(5)))) # (!\Mux3~0_combout\ & (\INST_bidir_bus6|o_DATA_out\(5))))) # (!\i_GPIO_address[0]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \INST_bidir_bus6|o_DATA_out\(5),
	datad => \INST_bidir_bus8|o_DATA_out\(5),
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X0_Y9_N8
\io_GPIO_PIN3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(5),
	o => \io_GPIO_PIN3[5]~input_o\);

-- Location: FF_X1_Y9_N1
\INST_bidir_bus4|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN3[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(5));

-- Location: IOIBUF_X0_Y9_N15
\io_GPIO_PIN2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(5),
	o => \io_GPIO_PIN2[5]~input_o\);

-- Location: FF_X1_Y9_N19
\INST_bidir_bus3|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(5));

-- Location: IOIBUF_X0_Y6_N15
\io_GPIO_PIN0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(5),
	o => \io_GPIO_PIN0[5]~input_o\);

-- Location: FF_X1_Y6_N5
\INST_bidir_bus1|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(5));

-- Location: IOIBUF_X1_Y0_N15
\io_GPIO_PIN1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(5),
	o => \io_GPIO_PIN1[5]~input_o\);

-- Location: FF_X1_Y6_N3
\INST_bidir_bus2|o_DATA_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN1[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(5));

-- Location: LCCOMB_X1_Y6_N4
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\) # ((\INST_bidir_bus2|o_DATA_out\(5))))) # (!\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(5),
	datad => \INST_bidir_bus2|o_DATA_out\(5),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X1_Y9_N18
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux3~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(5))) # (!\Mux3~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(5)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[1]~input_o\,
	datab => \INST_bidir_bus4|o_DATA_out\(5),
	datac => \INST_bidir_bus3|o_DATA_out\(5),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X1_Y9_N10
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux3~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: FF_X1_Y9_N11
\o_GPIO_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux3~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[5]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N29
\io_GPIO_PIN7[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(6),
	o => \io_GPIO_PIN7[6]~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\INST_bidir_bus8|o_DATA_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[6]~feeder_combout\ = \io_GPIO_PIN7[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[6]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[6]~feeder_combout\);

-- Location: FF_X1_Y4_N23
\INST_bidir_bus8|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(6));

-- Location: IOIBUF_X3_Y0_N8
\io_GPIO_PIN5[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(6),
	o => \io_GPIO_PIN5[6]~input_o\);

-- Location: FF_X1_Y6_N23
\INST_bidir_bus6|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(6));

-- Location: IOIBUF_X0_Y2_N15
\io_GPIO_PIN4[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(6),
	o => \io_GPIO_PIN4[6]~input_o\);

-- Location: FF_X1_Y6_N7
\INST_bidir_bus5|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(6));

-- Location: IOIBUF_X0_Y6_N1
\io_GPIO_PIN6[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(6),
	o => \io_GPIO_PIN6[6]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\INST_bidir_bus7|o_DATA_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[6]~feeder_combout\ = \io_GPIO_PIN6[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[6]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[6]~feeder_combout\);

-- Location: FF_X1_Y6_N1
\INST_bidir_bus7|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(6));

-- Location: LCCOMB_X1_Y6_N6
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\)) # (!\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(6)))) # (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(6),
	datad => \INST_bidir_bus7|o_DATA_out\(6),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux2~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(6))) # (!\Mux2~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(6)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \INST_bidir_bus8|o_DATA_out\(6),
	datac => \INST_bidir_bus6|o_DATA_out\(6),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X0_Y2_N8
\io_GPIO_PIN3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(6),
	o => \io_GPIO_PIN3[6]~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\INST_bidir_bus4|o_DATA_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[6]~feeder_combout\ = \io_GPIO_PIN3[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[6]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[6]~feeder_combout\);

-- Location: FF_X1_Y6_N11
\INST_bidir_bus4|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(6));

-- Location: IOIBUF_X0_Y3_N1
\io_GPIO_PIN2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(6),
	o => \io_GPIO_PIN2[6]~input_o\);

-- Location: FF_X1_Y6_N9
\INST_bidir_bus3|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(6));

-- Location: IOIBUF_X7_Y0_N8
\io_GPIO_PIN1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(6),
	o => \io_GPIO_PIN1[6]~input_o\);

-- Location: FF_X1_Y6_N31
\INST_bidir_bus2|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN1[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(6));

-- Location: IOIBUF_X0_Y10_N1
\io_GPIO_PIN0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(6),
	o => \io_GPIO_PIN0[6]~input_o\);

-- Location: FF_X1_Y6_N21
\INST_bidir_bus1|o_DATA_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(6));

-- Location: LCCOMB_X1_Y6_N20
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_GPIO_address[1]~input_o\ & (((\i_GPIO_address[0]~input_o\)))) # (!\i_GPIO_address[1]~input_o\ & ((\i_GPIO_address[0]~input_o\ & (\INST_bidir_bus2|o_DATA_out\(6))) # (!\i_GPIO_address[0]~input_o\ & 
-- ((\INST_bidir_bus1|o_DATA_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus2|o_DATA_out\(6),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(6),
	datad => \i_GPIO_address[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X1_Y6_N8
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux2~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(6))) # (!\Mux2~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(6)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus4|o_DATA_out\(6),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus3|o_DATA_out\(6),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X1_Y9_N20
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux2~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datab => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: FF_X1_Y9_N21
\o_GPIO_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux2~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[6]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N22
\io_GPIO_PIN7[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN7(7),
	o => \io_GPIO_PIN7[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N10
\INST_bidir_bus8|o_DATA_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus8|o_DATA_out[7]~feeder_combout\ = \io_GPIO_PIN7[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN7[7]~input_o\,
	combout => \INST_bidir_bus8|o_DATA_out[7]~feeder_combout\);

-- Location: FF_X1_Y7_N11
\INST_bidir_bus8|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus8|o_DATA_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus8|o_DATA_out\(7));

-- Location: IOIBUF_X7_Y0_N22
\io_GPIO_PIN5[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN5(7),
	o => \io_GPIO_PIN5[7]~input_o\);

-- Location: FF_X1_Y7_N25
\INST_bidir_bus6|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN5[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus6|o_DATA_out\(7));

-- Location: IOIBUF_X0_Y8_N22
\io_GPIO_PIN4[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN4(7),
	o => \io_GPIO_PIN4[7]~input_o\);

-- Location: FF_X1_Y7_N13
\INST_bidir_bus5|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN4[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus5|o_DATA_out\(7));

-- Location: IOIBUF_X0_Y4_N8
\io_GPIO_PIN6[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN6(7),
	o => \io_GPIO_PIN6[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N2
\INST_bidir_bus7|o_DATA_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus7|o_DATA_out[7]~feeder_combout\ = \io_GPIO_PIN6[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN6[7]~input_o\,
	combout => \INST_bidir_bus7|o_DATA_out[7]~feeder_combout\);

-- Location: FF_X1_Y7_N3
\INST_bidir_bus7|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus7|o_DATA_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus7|o_DATA_out\(7));

-- Location: LCCOMB_X1_Y7_N12
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_GPIO_address[0]~input_o\ & (\i_GPIO_address[1]~input_o\)) # (!\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\ & ((\INST_bidir_bus7|o_DATA_out\(7)))) # (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus5|o_DATA_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus5|o_DATA_out\(7),
	datad => \INST_bidir_bus7|o_DATA_out\(7),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y7_N24
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\i_GPIO_address[0]~input_o\ & ((\Mux1~0_combout\ & (\INST_bidir_bus8|o_DATA_out\(7))) # (!\Mux1~0_combout\ & ((\INST_bidir_bus6|o_DATA_out\(7)))))) # (!\i_GPIO_address[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus8|o_DATA_out\(7),
	datab => \i_GPIO_address[0]~input_o\,
	datac => \INST_bidir_bus6|o_DATA_out\(7),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X1_Y0_N1
\io_GPIO_PIN3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN3(7),
	o => \io_GPIO_PIN3[7]~input_o\);

-- Location: LCCOMB_X2_Y7_N6
\INST_bidir_bus4|o_DATA_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_bidir_bus4|o_DATA_out[7]~feeder_combout\ = \io_GPIO_PIN3[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io_GPIO_PIN3[7]~input_o\,
	combout => \INST_bidir_bus4|o_DATA_out[7]~feeder_combout\);

-- Location: FF_X2_Y7_N7
\INST_bidir_bus4|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \INST_bidir_bus4|o_DATA_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus4|o_DATA_out\(7));

-- Location: IOIBUF_X0_Y7_N1
\io_GPIO_PIN2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN2(7),
	o => \io_GPIO_PIN2[7]~input_o\);

-- Location: FF_X1_Y7_N5
\INST_bidir_bus3|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN2[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus3|o_DATA_out\(7));

-- Location: IOIBUF_X0_Y11_N15
\io_GPIO_PIN0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN0(7),
	o => \io_GPIO_PIN0[7]~input_o\);

-- Location: FF_X1_Y7_N29
\INST_bidir_bus1|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN0[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus1|o_DATA_out\(7));

-- Location: IOIBUF_X5_Y0_N29
\io_GPIO_PIN1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io_GPIO_PIN1(7),
	o => \io_GPIO_PIN1[7]~input_o\);

-- Location: FF_X1_Y7_N7
\INST_bidir_bus2|o_DATA_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	asdata => \io_GPIO_PIN1[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_bidir_bus2|o_DATA_out\(7));

-- Location: LCCOMB_X1_Y7_N28
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\i_GPIO_address[0]~input_o\ & ((\i_GPIO_address[1]~input_o\) # ((\INST_bidir_bus2|o_DATA_out\(7))))) # (!\i_GPIO_address[0]~input_o\ & (!\i_GPIO_address[1]~input_o\ & (\INST_bidir_bus1|o_DATA_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[0]~input_o\,
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus1|o_DATA_out\(7),
	datad => \INST_bidir_bus2|o_DATA_out\(7),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X1_Y7_N4
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\i_GPIO_address[1]~input_o\ & ((\Mux1~2_combout\ & (\INST_bidir_bus4|o_DATA_out\(7))) # (!\Mux1~2_combout\ & ((\INST_bidir_bus3|o_DATA_out\(7)))))) # (!\i_GPIO_address[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_bidir_bus4|o_DATA_out\(7),
	datab => \i_GPIO_address[1]~input_o\,
	datac => \INST_bidir_bus3|o_DATA_out\(7),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X1_Y9_N2
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\i_GPIO_address[2]~input_o\ & (\Mux1~1_combout\)) # (!\i_GPIO_address[2]~input_o\ & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_GPIO_address[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: FF_X1_Y9_N3
\o_GPIO_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_GPIO_clk~inputclkctrl_outclk\,
	d => \Mux1~4_combout\,
	ena => \o_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_GPIO_data[7]~reg0_q\);

ww_o_GPIO_data(0) <= \o_GPIO_data[0]~output_o\;

ww_o_GPIO_data(1) <= \o_GPIO_data[1]~output_o\;

ww_o_GPIO_data(2) <= \o_GPIO_data[2]~output_o\;

ww_o_GPIO_data(3) <= \o_GPIO_data[3]~output_o\;

ww_o_GPIO_data(4) <= \o_GPIO_data[4]~output_o\;

ww_o_GPIO_data(5) <= \o_GPIO_data[5]~output_o\;

ww_o_GPIO_data(6) <= \o_GPIO_data[6]~output_o\;

ww_o_GPIO_data(7) <= \o_GPIO_data[7]~output_o\;

io_GPIO_PIN0(0) <= \io_GPIO_PIN0[0]~output_o\;

io_GPIO_PIN0(1) <= \io_GPIO_PIN0[1]~output_o\;

io_GPIO_PIN0(2) <= \io_GPIO_PIN0[2]~output_o\;

io_GPIO_PIN0(3) <= \io_GPIO_PIN0[3]~output_o\;

io_GPIO_PIN0(4) <= \io_GPIO_PIN0[4]~output_o\;

io_GPIO_PIN0(5) <= \io_GPIO_PIN0[5]~output_o\;

io_GPIO_PIN0(6) <= \io_GPIO_PIN0[6]~output_o\;

io_GPIO_PIN0(7) <= \io_GPIO_PIN0[7]~output_o\;

io_GPIO_PIN1(0) <= \io_GPIO_PIN1[0]~output_o\;

io_GPIO_PIN1(1) <= \io_GPIO_PIN1[1]~output_o\;

io_GPIO_PIN1(2) <= \io_GPIO_PIN1[2]~output_o\;

io_GPIO_PIN1(3) <= \io_GPIO_PIN1[3]~output_o\;

io_GPIO_PIN1(4) <= \io_GPIO_PIN1[4]~output_o\;

io_GPIO_PIN1(5) <= \io_GPIO_PIN1[5]~output_o\;

io_GPIO_PIN1(6) <= \io_GPIO_PIN1[6]~output_o\;

io_GPIO_PIN1(7) <= \io_GPIO_PIN1[7]~output_o\;

io_GPIO_PIN2(0) <= \io_GPIO_PIN2[0]~output_o\;

io_GPIO_PIN2(1) <= \io_GPIO_PIN2[1]~output_o\;

io_GPIO_PIN2(2) <= \io_GPIO_PIN2[2]~output_o\;

io_GPIO_PIN2(3) <= \io_GPIO_PIN2[3]~output_o\;

io_GPIO_PIN2(4) <= \io_GPIO_PIN2[4]~output_o\;

io_GPIO_PIN2(5) <= \io_GPIO_PIN2[5]~output_o\;

io_GPIO_PIN2(6) <= \io_GPIO_PIN2[6]~output_o\;

io_GPIO_PIN2(7) <= \io_GPIO_PIN2[7]~output_o\;

io_GPIO_PIN3(0) <= \io_GPIO_PIN3[0]~output_o\;

io_GPIO_PIN3(1) <= \io_GPIO_PIN3[1]~output_o\;

io_GPIO_PIN3(2) <= \io_GPIO_PIN3[2]~output_o\;

io_GPIO_PIN3(3) <= \io_GPIO_PIN3[3]~output_o\;

io_GPIO_PIN3(4) <= \io_GPIO_PIN3[4]~output_o\;

io_GPIO_PIN3(5) <= \io_GPIO_PIN3[5]~output_o\;

io_GPIO_PIN3(6) <= \io_GPIO_PIN3[6]~output_o\;

io_GPIO_PIN3(7) <= \io_GPIO_PIN3[7]~output_o\;

io_GPIO_PIN4(0) <= \io_GPIO_PIN4[0]~output_o\;

io_GPIO_PIN4(1) <= \io_GPIO_PIN4[1]~output_o\;

io_GPIO_PIN4(2) <= \io_GPIO_PIN4[2]~output_o\;

io_GPIO_PIN4(3) <= \io_GPIO_PIN4[3]~output_o\;

io_GPIO_PIN4(4) <= \io_GPIO_PIN4[4]~output_o\;

io_GPIO_PIN4(5) <= \io_GPIO_PIN4[5]~output_o\;

io_GPIO_PIN4(6) <= \io_GPIO_PIN4[6]~output_o\;

io_GPIO_PIN4(7) <= \io_GPIO_PIN4[7]~output_o\;

io_GPIO_PIN5(0) <= \io_GPIO_PIN5[0]~output_o\;

io_GPIO_PIN5(1) <= \io_GPIO_PIN5[1]~output_o\;

io_GPIO_PIN5(2) <= \io_GPIO_PIN5[2]~output_o\;

io_GPIO_PIN5(3) <= \io_GPIO_PIN5[3]~output_o\;

io_GPIO_PIN5(4) <= \io_GPIO_PIN5[4]~output_o\;

io_GPIO_PIN5(5) <= \io_GPIO_PIN5[5]~output_o\;

io_GPIO_PIN5(6) <= \io_GPIO_PIN5[6]~output_o\;

io_GPIO_PIN5(7) <= \io_GPIO_PIN5[7]~output_o\;

io_GPIO_PIN6(0) <= \io_GPIO_PIN6[0]~output_o\;

io_GPIO_PIN6(1) <= \io_GPIO_PIN6[1]~output_o\;

io_GPIO_PIN6(2) <= \io_GPIO_PIN6[2]~output_o\;

io_GPIO_PIN6(3) <= \io_GPIO_PIN6[3]~output_o\;

io_GPIO_PIN6(4) <= \io_GPIO_PIN6[4]~output_o\;

io_GPIO_PIN6(5) <= \io_GPIO_PIN6[5]~output_o\;

io_GPIO_PIN6(6) <= \io_GPIO_PIN6[6]~output_o\;

io_GPIO_PIN6(7) <= \io_GPIO_PIN6[7]~output_o\;

io_GPIO_PIN7(0) <= \io_GPIO_PIN7[0]~output_o\;

io_GPIO_PIN7(1) <= \io_GPIO_PIN7[1]~output_o\;

io_GPIO_PIN7(2) <= \io_GPIO_PIN7[2]~output_o\;

io_GPIO_PIN7(3) <= \io_GPIO_PIN7[3]~output_o\;

io_GPIO_PIN7(4) <= \io_GPIO_PIN7[4]~output_o\;

io_GPIO_PIN7(5) <= \io_GPIO_PIN7[5]~output_o\;

io_GPIO_PIN7(6) <= \io_GPIO_PIN7[6]~output_o\;

io_GPIO_PIN7(7) <= \io_GPIO_PIN7[7]~output_o\;
END structure;


