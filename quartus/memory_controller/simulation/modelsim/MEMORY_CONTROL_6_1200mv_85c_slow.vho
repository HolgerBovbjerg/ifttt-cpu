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

-- DATE "04/18/2019 14:25:25"

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

ENTITY 	MEMORY_CONTROL IS
    PORT (
	i_MC_clk : IN std_logic;
	i_MC_address : IN std_logic_vector(15 DOWNTO 0);
	i_MC_data : IN std_logic_vector(7 DOWNTO 0);
	i_MC_enable : IN std_logic;
	i_MC_write_enable : IN std_logic;
	o_MC_MUX_data : OUT std_logic_vector(7 DOWNTO 0);
	o_MC_CU_ready : OUT std_logic;
	o_MC_RAM_address : OUT std_logic_vector(13 DOWNTO 0);
	i_MC_RAM_data : IN std_logic_vector(7 DOWNTO 0);
	o_MC_RAM_data : OUT std_logic_vector(7 DOWNTO 0);
	o_MC_RAM_write_enable : OUT std_logic;
	o_MC_GPIO_address : OUT std_logic_vector(3 DOWNTO 0);
	i_MC_GPIO_data : IN std_logic_vector(7 DOWNTO 0);
	o_MC_GPIO_data : OUT std_logic_vector(7 DOWNTO 0);
	o_MC_GPIO_write_enable : OUT std_logic;
	o_MC_I2C_address : OUT std_logic_vector(3 DOWNTO 0);
	i_MC_I2C_data : IN std_logic_vector(7 DOWNTO 0);
	o_MC_I2C_data : OUT std_logic_vector(7 DOWNTO 0);
	o_MC_I2c_write_enable : OUT std_logic
	);
END MEMORY_CONTROL;

-- Design Ports Information
-- o_MC_MUX_data[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_MUX_data[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_CU_ready	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[11]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[12]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_address[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_data[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_RAM_write_enable	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_address[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_data[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_GPIO_write_enable	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_address[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2C_data[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_MC_I2c_write_enable	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_enable	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_GPIO_data[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_I2C_data[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_RAM_data[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[3]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[10]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_address[13]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_data[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MC_write_enable	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MEMORY_CONTROL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_MC_clk : std_logic;
SIGNAL ww_i_MC_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_MC_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_MC_enable : std_logic;
SIGNAL ww_i_MC_write_enable : std_logic;
SIGNAL ww_o_MC_MUX_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_CU_ready : std_logic;
SIGNAL ww_o_MC_RAM_address : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_i_MC_RAM_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_RAM_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_RAM_write_enable : std_logic;
SIGNAL ww_o_MC_GPIO_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_MC_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_GPIO_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_GPIO_write_enable : std_logic;
SIGNAL ww_o_MC_I2C_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_MC_I2C_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_I2C_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_MC_I2c_write_enable : std_logic;
SIGNAL \i_MC_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_MC_MUX_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_MUX_data[7]~output_o\ : std_logic;
SIGNAL \o_MC_CU_ready~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[0]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[1]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[2]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[3]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[4]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[5]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[6]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[7]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[8]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[9]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[10]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[11]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[12]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_address[13]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_data[7]~output_o\ : std_logic;
SIGNAL \o_MC_RAM_write_enable~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[1]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[2]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_address[3]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_data[7]~output_o\ : std_logic;
SIGNAL \o_MC_GPIO_write_enable~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[0]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[1]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[2]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_address[3]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[0]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[1]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[2]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[3]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[4]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[5]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[6]~output_o\ : std_logic;
SIGNAL \o_MC_I2C_data[7]~output_o\ : std_logic;
SIGNAL \o_MC_I2c_write_enable~output_o\ : std_logic;
SIGNAL \i_MC_clk~input_o\ : std_logic;
SIGNAL \i_MC_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_MC_address[14]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[0]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[0]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[0]~0_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[0]~input_o\ : std_logic;
SIGNAL \i_MC_address[15]~input_o\ : std_logic;
SIGNAL \i_MC_enable~input_o\ : std_logic;
SIGNAL \i_MC_write_enable~input_o\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[0]~8_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[0]~9_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[0]~reg0_q\ : std_logic;
SIGNAL \i_MC_I2C_data[1]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[1]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[1]~1_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[1]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[1]~reg0_q\ : std_logic;
SIGNAL \i_MC_I2C_data[2]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[2]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[2]~2_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[2]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[2]~reg0_q\ : std_logic;
SIGNAL \i_MC_GPIO_data[3]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[3]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[3]~3_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[3]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[3]~reg0_q\ : std_logic;
SIGNAL \i_MC_GPIO_data[4]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[4]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[4]~4_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[4]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[4]~reg0_q\ : std_logic;
SIGNAL \i_MC_I2C_data[5]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[5]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[5]~5_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[5]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[5]~reg0_q\ : std_logic;
SIGNAL \i_MC_GPIO_data[6]~input_o\ : std_logic;
SIGNAL \i_MC_I2C_data[6]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[6]~6_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[6]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[6]~reg0_q\ : std_logic;
SIGNAL \i_MC_I2C_data[7]~input_o\ : std_logic;
SIGNAL \i_MC_GPIO_data[7]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[7]~7_combout\ : std_logic;
SIGNAL \o_MC_MUX_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \i_MC_RAM_data[7]~input_o\ : std_logic;
SIGNAL \o_MC_MUX_data[7]~reg0_q\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \o_MC_CU_ready~reg0_q\ : std_logic;
SIGNAL \i_MC_address[0]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_write_enable~0_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[0]~0_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[0]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[1]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[1]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[2]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[2]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[3]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[3]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[4]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[4]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[5]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[5]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[6]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[6]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[7]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[7]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[8]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[8]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[9]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[9]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[10]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[10]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[11]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[11]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[11]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[12]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[12]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[12]~reg0_q\ : std_logic;
SIGNAL \i_MC_address[13]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_address[13]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_address[13]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[0]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[0]~0_combout\ : std_logic;
SIGNAL \o_MC_RAM_data[0]~1_combout\ : std_logic;
SIGNAL \o_MC_RAM_data[0]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[1]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_data[1]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[2]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_data[2]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[3]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[3]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[4]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[4]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[5]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[5]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[6]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[6]~reg0_q\ : std_logic;
SIGNAL \i_MC_data[7]~input_o\ : std_logic;
SIGNAL \o_MC_RAM_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_RAM_data[7]~reg0_q\ : std_logic;
SIGNAL \o_MC_RAM_write_enable~1_combout\ : std_logic;
SIGNAL \o_MC_RAM_write_enable~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~0_combout\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~1_combout\ : std_logic;
SIGNAL \o_MC_GPIO_address[0]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_address[1]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_address[2]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_address[3]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[0]~0_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[0]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[1]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[2]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[3]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[4]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[5]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[6]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_GPIO_data[7]~reg0_q\ : std_logic;
SIGNAL \o_MC_GPIO_write_enable~0_combout\ : std_logic;
SIGNAL \o_MC_GPIO_write_enable~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_I2c_write_enable~0_combout\ : std_logic;
SIGNAL \o_MC_I2C_address[0]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_address[1]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_address[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_I2C_address[2]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_address[3]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[0]~0_combout\ : std_logic;
SIGNAL \o_MC_I2C_data[0]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_I2C_data[1]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_MC_I2C_data[2]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[3]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[4]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[5]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[6]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2C_data[7]~reg0_q\ : std_logic;
SIGNAL \o_MC_I2c_write_enable~1_combout\ : std_logic;
SIGNAL \o_MC_I2c_write_enable~reg0_q\ : std_logic;
SIGNAL r_MEM_state : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_i_MC_address[15]~input_o\ : std_logic;

BEGIN

ww_i_MC_clk <= i_MC_clk;
ww_i_MC_address <= i_MC_address;
ww_i_MC_data <= i_MC_data;
ww_i_MC_enable <= i_MC_enable;
ww_i_MC_write_enable <= i_MC_write_enable;
o_MC_MUX_data <= ww_o_MC_MUX_data;
o_MC_CU_ready <= ww_o_MC_CU_ready;
o_MC_RAM_address <= ww_o_MC_RAM_address;
ww_i_MC_RAM_data <= i_MC_RAM_data;
o_MC_RAM_data <= ww_o_MC_RAM_data;
o_MC_RAM_write_enable <= ww_o_MC_RAM_write_enable;
o_MC_GPIO_address <= ww_o_MC_GPIO_address;
ww_i_MC_GPIO_data <= i_MC_GPIO_data;
o_MC_GPIO_data <= ww_o_MC_GPIO_data;
o_MC_GPIO_write_enable <= ww_o_MC_GPIO_write_enable;
o_MC_I2C_address <= ww_o_MC_I2C_address;
ww_i_MC_I2C_data <= i_MC_I2C_data;
o_MC_I2C_data <= ww_o_MC_I2C_data;
o_MC_I2c_write_enable <= ww_o_MC_I2c_write_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_MC_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_MC_clk~input_o\);
\ALT_INV_i_MC_address[15]~input_o\ <= NOT \i_MC_address[15]~input_o\;

-- Location: IOOBUF_X23_Y29_N9
\o_MC_MUX_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\o_MC_MUX_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_MC_MUX_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\o_MC_MUX_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\o_MC_MUX_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\o_MC_MUX_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\o_MC_MUX_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_MC_MUX_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_MUX_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_MUX_data[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\o_MC_CU_ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_CU_ready~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_CU_ready~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_MC_RAM_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_MC_RAM_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_MC_RAM_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\o_MC_RAM_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_MC_RAM_address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\o_MC_RAM_address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_MC_RAM_address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\o_MC_RAM_address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\o_MC_RAM_address[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[8]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\o_MC_RAM_address[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[9]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[9]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\o_MC_RAM_address[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[10]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[10]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\o_MC_RAM_address[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[11]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_MC_RAM_address[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[12]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[12]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\o_MC_RAM_address[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_address[13]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_address[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_MC_RAM_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\o_MC_RAM_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[1]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\o_MC_RAM_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[2]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\o_MC_RAM_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[3]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\o_MC_RAM_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\o_MC_RAM_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\o_MC_RAM_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\o_MC_RAM_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_data[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_MC_RAM_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_RAM_write_enable~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_RAM_write_enable~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_MC_GPIO_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_MC_GPIO_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_MC_GPIO_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_MC_GPIO_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_address[3]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\o_MC_GPIO_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[0]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\o_MC_GPIO_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[1]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\o_MC_GPIO_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[2]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\o_MC_GPIO_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\o_MC_GPIO_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\o_MC_GPIO_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[5]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\o_MC_GPIO_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\o_MC_GPIO_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_data[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\o_MC_GPIO_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_GPIO_write_enable~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_GPIO_write_enable~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_MC_I2C_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_address[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_MC_I2C_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_address[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\o_MC_I2C_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_address[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_MC_I2C_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_address[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_MC_I2C_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[0]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\o_MC_I2C_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\o_MC_I2C_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\o_MC_I2C_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\o_MC_I2C_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[4]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\o_MC_I2C_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[5]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\o_MC_I2C_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[6]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\o_MC_I2C_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2C_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2C_data[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\o_MC_I2c_write_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_MC_I2c_write_enable~reg0_q\,
	devoe => ww_devoe,
	o => \o_MC_I2c_write_enable~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_MC_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_clk,
	o => \i_MC_clk~input_o\);

-- Location: CLKCTRL_G4
\i_MC_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_MC_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_MC_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y29_N15
\i_MC_address[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(14),
	o => \i_MC_address[14]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\i_MC_I2C_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(0),
	o => \i_MC_I2C_data[0]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\i_MC_GPIO_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(0),
	o => \i_MC_GPIO_data[0]~input_o\);

-- Location: LCCOMB_X26_Y25_N8
\o_MC_MUX_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[0]~0_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_I2C_data[0]~input_o\)) # (!\i_MC_address[14]~input_o\ & ((\i_MC_GPIO_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_address[14]~input_o\,
	datac => \i_MC_I2C_data[0]~input_o\,
	datad => \i_MC_GPIO_data[0]~input_o\,
	combout => \o_MC_MUX_data[0]~0_combout\);

-- Location: LCCOMB_X27_Y13_N4
\o_MC_MUX_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[0]~reg0feeder_combout\ = \o_MC_MUX_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[0]~0_combout\,
	combout => \o_MC_MUX_data[0]~reg0feeder_combout\);

-- Location: IOIBUF_X35_Y29_N1
\i_MC_RAM_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(0),
	o => \i_MC_RAM_data[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\i_MC_address[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(15),
	o => \i_MC_address[15]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\i_MC_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_enable,
	o => \i_MC_enable~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\i_MC_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_write_enable,
	o => \i_MC_write_enable~input_o\);

-- Location: LCCOMB_X27_Y10_N20
\Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!r_MEM_state(0) & (!r_MEM_state(1) & !\i_MC_write_enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(0),
	datac => r_MEM_state(1),
	datad => \i_MC_write_enable~input_o\,
	combout => \Mux61~0_combout\);

-- Location: FF_X27_Y10_N21
\r_MEM_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \Mux61~0_combout\,
	ena => \i_MC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_MEM_state(1));

-- Location: LCCOMB_X27_Y10_N14
\Mux62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!r_MEM_state(1) & (!r_MEM_state(0) & \i_MC_write_enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(1),
	datac => r_MEM_state(0),
	datad => \i_MC_write_enable~input_o\,
	combout => \Mux62~0_combout\);

-- Location: FF_X27_Y10_N15
\r_MEM_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \Mux62~0_combout\,
	ena => \i_MC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_MEM_state(0));

-- Location: LCCOMB_X27_Y10_N24
\o_MC_MUX_data[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[0]~8_combout\ = (!r_MEM_state(0) & (r_MEM_state(1) & ((\i_MC_address[15]~input_o\) # (\i_MC_address[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_address[15]~input_o\,
	datab => \i_MC_address[14]~input_o\,
	datac => r_MEM_state(0),
	datad => r_MEM_state(1),
	combout => \o_MC_MUX_data[0]~8_combout\);

-- Location: LCCOMB_X27_Y13_N12
\o_MC_MUX_data[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[0]~9_combout\ = (\i_MC_enable~input_o\ & \o_MC_MUX_data[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_MC_enable~input_o\,
	datad => \o_MC_MUX_data[0]~8_combout\,
	combout => \o_MC_MUX_data[0]~9_combout\);

-- Location: FF_X27_Y13_N5
\o_MC_MUX_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[0]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[0]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[0]~reg0_q\);

-- Location: IOIBUF_X7_Y29_N8
\i_MC_I2C_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(1),
	o => \i_MC_I2C_data[1]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\i_MC_GPIO_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(1),
	o => \i_MC_GPIO_data[1]~input_o\);

-- Location: LCCOMB_X26_Y25_N26
\o_MC_MUX_data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[1]~1_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_I2C_data[1]~input_o\)) # (!\i_MC_address[14]~input_o\ & ((\i_MC_GPIO_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_I2C_data[1]~input_o\,
	datac => \i_MC_GPIO_data[1]~input_o\,
	datad => \i_MC_address[14]~input_o\,
	combout => \o_MC_MUX_data[1]~1_combout\);

-- Location: LCCOMB_X27_Y13_N18
\o_MC_MUX_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[1]~reg0feeder_combout\ = \o_MC_MUX_data[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[1]~1_combout\,
	combout => \o_MC_MUX_data[1]~reg0feeder_combout\);

-- Location: IOIBUF_X32_Y29_N29
\i_MC_RAM_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(1),
	o => \i_MC_RAM_data[1]~input_o\);

-- Location: FF_X27_Y13_N19
\o_MC_MUX_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[1]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[1]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[1]~reg0_q\);

-- Location: IOIBUF_X11_Y29_N29
\i_MC_I2C_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(2),
	o => \i_MC_I2C_data[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\i_MC_GPIO_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(2),
	o => \i_MC_GPIO_data[2]~input_o\);

-- Location: LCCOMB_X26_Y25_N28
\o_MC_MUX_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[2]~2_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_I2C_data[2]~input_o\)) # (!\i_MC_address[14]~input_o\ & ((\i_MC_GPIO_data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[2]~input_o\,
	datac => \i_MC_GPIO_data[2]~input_o\,
	datad => \i_MC_address[14]~input_o\,
	combout => \o_MC_MUX_data[2]~2_combout\);

-- Location: LCCOMB_X27_Y13_N0
\o_MC_MUX_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[2]~reg0feeder_combout\ = \o_MC_MUX_data[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[2]~2_combout\,
	combout => \o_MC_MUX_data[2]~reg0feeder_combout\);

-- Location: IOIBUF_X41_Y13_N15
\i_MC_RAM_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(2),
	o => \i_MC_RAM_data[2]~input_o\);

-- Location: FF_X27_Y13_N1
\o_MC_MUX_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[2]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[2]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[2]~reg0_q\);

-- Location: IOIBUF_X9_Y29_N1
\i_MC_GPIO_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(3),
	o => \i_MC_GPIO_data[3]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\i_MC_I2C_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(3),
	o => \i_MC_I2C_data[3]~input_o\);

-- Location: LCCOMB_X26_Y25_N22
\o_MC_MUX_data[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[3]~3_combout\ = (\i_MC_address[14]~input_o\ & ((\i_MC_I2C_data[3]~input_o\))) # (!\i_MC_address[14]~input_o\ & (\i_MC_GPIO_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_GPIO_data[3]~input_o\,
	datac => \i_MC_I2C_data[3]~input_o\,
	datad => \i_MC_address[14]~input_o\,
	combout => \o_MC_MUX_data[3]~3_combout\);

-- Location: LCCOMB_X27_Y13_N22
\o_MC_MUX_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[3]~reg0feeder_combout\ = \o_MC_MUX_data[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[3]~3_combout\,
	combout => \o_MC_MUX_data[3]~reg0feeder_combout\);

-- Location: IOIBUF_X32_Y29_N22
\i_MC_RAM_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(3),
	o => \i_MC_RAM_data[3]~input_o\);

-- Location: FF_X27_Y13_N23
\o_MC_MUX_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[3]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[3]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[3]~reg0_q\);

-- Location: IOIBUF_X41_Y27_N15
\i_MC_GPIO_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(4),
	o => \i_MC_GPIO_data[4]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\i_MC_I2C_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(4),
	o => \i_MC_I2C_data[4]~input_o\);

-- Location: LCCOMB_X30_Y27_N4
\o_MC_MUX_data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[4]~4_combout\ = (\i_MC_address[14]~input_o\ & ((\i_MC_I2C_data[4]~input_o\))) # (!\i_MC_address[14]~input_o\ & (\i_MC_GPIO_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_GPIO_data[4]~input_o\,
	datac => \i_MC_address[14]~input_o\,
	datad => \i_MC_I2C_data[4]~input_o\,
	combout => \o_MC_MUX_data[4]~4_combout\);

-- Location: LCCOMB_X27_Y13_N24
\o_MC_MUX_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[4]~reg0feeder_combout\ = \o_MC_MUX_data[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[4]~4_combout\,
	combout => \o_MC_MUX_data[4]~reg0feeder_combout\);

-- Location: IOIBUF_X32_Y29_N8
\i_MC_RAM_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(4),
	o => \i_MC_RAM_data[4]~input_o\);

-- Location: FF_X27_Y13_N25
\o_MC_MUX_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[4]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[4]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[4]~reg0_q\);

-- Location: IOIBUF_X14_Y29_N22
\i_MC_I2C_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(5),
	o => \i_MC_I2C_data[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\i_MC_GPIO_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(5),
	o => \i_MC_GPIO_data[5]~input_o\);

-- Location: LCCOMB_X26_Y25_N4
\o_MC_MUX_data[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[5]~5_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_I2C_data[5]~input_o\)) # (!\i_MC_address[14]~input_o\ & ((\i_MC_GPIO_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[5]~input_o\,
	datac => \i_MC_GPIO_data[5]~input_o\,
	datad => \i_MC_address[14]~input_o\,
	combout => \o_MC_MUX_data[5]~5_combout\);

-- Location: LCCOMB_X27_Y13_N10
\o_MC_MUX_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[5]~reg0feeder_combout\ = \o_MC_MUX_data[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[5]~5_combout\,
	combout => \o_MC_MUX_data[5]~reg0feeder_combout\);

-- Location: IOIBUF_X19_Y29_N1
\i_MC_RAM_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(5),
	o => \i_MC_RAM_data[5]~input_o\);

-- Location: FF_X27_Y13_N11
\o_MC_MUX_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[5]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[5]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[5]~reg0_q\);

-- Location: IOIBUF_X19_Y29_N8
\i_MC_GPIO_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(6),
	o => \i_MC_GPIO_data[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\i_MC_I2C_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(6),
	o => \i_MC_I2C_data[6]~input_o\);

-- Location: LCCOMB_X26_Y25_N18
\o_MC_MUX_data[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[6]~6_combout\ = (\i_MC_address[14]~input_o\ & ((\i_MC_I2C_data[6]~input_o\))) # (!\i_MC_address[14]~input_o\ & (\i_MC_GPIO_data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_address[14]~input_o\,
	datac => \i_MC_GPIO_data[6]~input_o\,
	datad => \i_MC_I2C_data[6]~input_o\,
	combout => \o_MC_MUX_data[6]~6_combout\);

-- Location: LCCOMB_X27_Y13_N20
\o_MC_MUX_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[6]~reg0feeder_combout\ = \o_MC_MUX_data[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[6]~6_combout\,
	combout => \o_MC_MUX_data[6]~reg0feeder_combout\);

-- Location: IOIBUF_X35_Y29_N8
\i_MC_RAM_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(6),
	o => \i_MC_RAM_data[6]~input_o\);

-- Location: FF_X27_Y13_N21
\o_MC_MUX_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[6]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[6]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[6]~reg0_q\);

-- Location: IOIBUF_X7_Y29_N29
\i_MC_I2C_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_I2C_data(7),
	o => \i_MC_I2C_data[7]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\i_MC_GPIO_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_GPIO_data(7),
	o => \i_MC_GPIO_data[7]~input_o\);

-- Location: LCCOMB_X26_Y25_N12
\o_MC_MUX_data[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[7]~7_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_I2C_data[7]~input_o\)) # (!\i_MC_address[14]~input_o\ & ((\i_MC_GPIO_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_I2C_data[7]~input_o\,
	datac => \i_MC_GPIO_data[7]~input_o\,
	datad => \i_MC_address[14]~input_o\,
	combout => \o_MC_MUX_data[7]~7_combout\);

-- Location: LCCOMB_X27_Y13_N30
\o_MC_MUX_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_MUX_data[7]~reg0feeder_combout\ = \o_MC_MUX_data[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \o_MC_MUX_data[7]~7_combout\,
	combout => \o_MC_MUX_data[7]~reg0feeder_combout\);

-- Location: IOIBUF_X37_Y29_N1
\i_MC_RAM_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_RAM_data(7),
	o => \i_MC_RAM_data[7]~input_o\);

-- Location: FF_X27_Y13_N31
\o_MC_MUX_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_MUX_data[7]~reg0feeder_combout\,
	asdata => \i_MC_RAM_data[7]~input_o\,
	sload => \ALT_INV_i_MC_address[15]~input_o\,
	ena => \o_MC_MUX_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_MUX_data[7]~reg0_q\);

-- Location: LCCOMB_X27_Y10_N8
\Mux60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (r_MEM_state(1) & (\o_MC_CU_ready~reg0_q\ & r_MEM_state(0))) # (!r_MEM_state(1) & ((!r_MEM_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(1),
	datac => \o_MC_CU_ready~reg0_q\,
	datad => r_MEM_state(0),
	combout => \Mux60~0_combout\);

-- Location: FF_X27_Y10_N9
\o_MC_CU_ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \Mux60~0_combout\,
	ena => \i_MC_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_CU_ready~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\i_MC_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(0),
	o => \i_MC_address[0]~input_o\);

-- Location: LCCOMB_X26_Y10_N12
\o_MC_RAM_address[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[0]~reg0feeder_combout\ = \i_MC_address[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[0]~input_o\,
	combout => \o_MC_RAM_address[0]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y10_N6
\o_MC_RAM_write_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_write_enable~0_combout\ = (\i_MC_enable~input_o\ & (r_MEM_state(0) $ (r_MEM_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_enable~input_o\,
	datac => r_MEM_state(0),
	datad => r_MEM_state(1),
	combout => \o_MC_RAM_write_enable~0_combout\);

-- Location: LCCOMB_X27_Y10_N28
\o_MC_RAM_address[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[0]~0_combout\ = (\i_MC_address[14]~input_o\ & (!\i_MC_address[15]~input_o\ & \o_MC_RAM_write_enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_address[14]~input_o\,
	datac => \i_MC_address[15]~input_o\,
	datad => \o_MC_RAM_write_enable~0_combout\,
	combout => \o_MC_RAM_address[0]~0_combout\);

-- Location: FF_X26_Y10_N13
\o_MC_RAM_address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[0]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[0]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N8
\i_MC_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(1),
	o => \i_MC_address[1]~input_o\);

-- Location: FF_X26_Y10_N11
\o_MC_RAM_address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[1]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[1]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N22
\i_MC_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(2),
	o => \i_MC_address[2]~input_o\);

-- Location: LCCOMB_X26_Y10_N4
\o_MC_RAM_address[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[2]~reg0feeder_combout\ = \i_MC_address[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[2]~input_o\,
	combout => \o_MC_RAM_address[2]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N5
\o_MC_RAM_address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[2]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[2]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N29
\i_MC_address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(3),
	o => \i_MC_address[3]~input_o\);

-- Location: FF_X26_Y10_N19
\o_MC_RAM_address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[3]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[3]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N29
\i_MC_address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(4),
	o => \i_MC_address[4]~input_o\);

-- Location: LCCOMB_X26_Y10_N24
\o_MC_RAM_address[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[4]~reg0feeder_combout\ = \i_MC_address[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[4]~input_o\,
	combout => \o_MC_RAM_address[4]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N25
\o_MC_RAM_address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[4]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[4]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N29
\i_MC_address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(5),
	o => \i_MC_address[5]~input_o\);

-- Location: LCCOMB_X26_Y10_N30
\o_MC_RAM_address[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[5]~reg0feeder_combout\ = \i_MC_address[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[5]~input_o\,
	combout => \o_MC_RAM_address[5]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N31
\o_MC_RAM_address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[5]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[5]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N29
\i_MC_address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(6),
	o => \i_MC_address[6]~input_o\);

-- Location: LCCOMB_X26_Y10_N16
\o_MC_RAM_address[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[6]~reg0feeder_combout\ = \i_MC_address[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[6]~input_o\,
	combout => \o_MC_RAM_address[6]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N17
\o_MC_RAM_address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[6]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[6]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\i_MC_address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(7),
	o => \i_MC_address[7]~input_o\);

-- Location: FF_X26_Y10_N15
\o_MC_RAM_address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[7]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[7]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\i_MC_address[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(8),
	o => \i_MC_address[8]~input_o\);

-- Location: FF_X26_Y10_N9
\o_MC_RAM_address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[8]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[8]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\i_MC_address[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(9),
	o => \i_MC_address[9]~input_o\);

-- Location: FF_X26_Y10_N3
\o_MC_RAM_address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[9]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[9]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N8
\i_MC_address[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(10),
	o => \i_MC_address[10]~input_o\);

-- Location: FF_X27_Y7_N1
\o_MC_RAM_address[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[10]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[10]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N29
\i_MC_address[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(11),
	o => \i_MC_address[11]~input_o\);

-- Location: LCCOMB_X26_Y10_N0
\o_MC_RAM_address[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[11]~reg0feeder_combout\ = \i_MC_address[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[11]~input_o\,
	combout => \o_MC_RAM_address[11]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N1
\o_MC_RAM_address[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[11]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[11]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N1
\i_MC_address[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(12),
	o => \i_MC_address[12]~input_o\);

-- Location: LCCOMB_X26_Y10_N6
\o_MC_RAM_address[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[12]~reg0feeder_combout\ = \i_MC_address[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[12]~input_o\,
	combout => \o_MC_RAM_address[12]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N7
\o_MC_RAM_address[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[12]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[12]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N22
\i_MC_address[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_address(13),
	o => \i_MC_address[13]~input_o\);

-- Location: LCCOMB_X26_Y10_N28
\o_MC_RAM_address[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_address[13]~reg0feeder_combout\ = \i_MC_address[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[13]~input_o\,
	combout => \o_MC_RAM_address[13]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N29
\o_MC_RAM_address[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_address[13]~reg0feeder_combout\,
	ena => \o_MC_RAM_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_address[13]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N15
\i_MC_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(0),
	o => \i_MC_data[0]~input_o\);

-- Location: LCCOMB_X27_Y10_N30
\o_MC_RAM_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_data[0]~0_combout\ = (\i_MC_enable~input_o\ & (r_MEM_state(0) & !r_MEM_state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_enable~input_o\,
	datac => r_MEM_state(0),
	datad => r_MEM_state(1),
	combout => \o_MC_RAM_data[0]~0_combout\);

-- Location: LCCOMB_X28_Y10_N8
\o_MC_RAM_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_data[0]~1_combout\ = (!\i_MC_address[15]~input_o\ & (\i_MC_address[14]~input_o\ & \o_MC_RAM_data[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_address[15]~input_o\,
	datab => \i_MC_address[14]~input_o\,
	datad => \o_MC_RAM_data[0]~0_combout\,
	combout => \o_MC_RAM_data[0]~1_combout\);

-- Location: FF_X28_Y10_N9
\o_MC_RAM_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[0]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[0]~reg0_q\);

-- Location: IOIBUF_X41_Y19_N1
\i_MC_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(1),
	o => \i_MC_data[1]~input_o\);

-- Location: LCCOMB_X28_Y10_N26
\o_MC_RAM_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_data[1]~reg0feeder_combout\ = \i_MC_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[1]~input_o\,
	combout => \o_MC_RAM_data[1]~reg0feeder_combout\);

-- Location: FF_X28_Y10_N27
\o_MC_RAM_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_data[1]~reg0feeder_combout\,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[1]~reg0_q\);

-- Location: IOIBUF_X41_Y10_N1
\i_MC_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(2),
	o => \i_MC_data[2]~input_o\);

-- Location: LCCOMB_X28_Y10_N16
\o_MC_RAM_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_data[2]~reg0feeder_combout\ = \i_MC_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[2]~input_o\,
	combout => \o_MC_RAM_data[2]~reg0feeder_combout\);

-- Location: FF_X28_Y10_N17
\o_MC_RAM_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_data[2]~reg0feeder_combout\,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[2]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N8
\i_MC_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(3),
	o => \i_MC_data[3]~input_o\);

-- Location: FF_X28_Y10_N19
\o_MC_RAM_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[3]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[3]~reg0_q\);

-- Location: IOIBUF_X41_Y15_N1
\i_MC_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(4),
	o => \i_MC_data[4]~input_o\);

-- Location: FF_X28_Y10_N13
\o_MC_RAM_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[4]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[4]~reg0_q\);

-- Location: IOIBUF_X41_Y9_N15
\i_MC_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(5),
	o => \i_MC_data[5]~input_o\);

-- Location: FF_X28_Y10_N23
\o_MC_RAM_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[5]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[5]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N1
\i_MC_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(6),
	o => \i_MC_data[6]~input_o\);

-- Location: FF_X28_Y10_N21
\o_MC_RAM_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[6]~input_o\,
	sload => VCC,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[6]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N29
\i_MC_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MC_data(7),
	o => \i_MC_data[7]~input_o\);

-- Location: LCCOMB_X28_Y10_N10
\o_MC_RAM_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_data[7]~reg0feeder_combout\ = \i_MC_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[7]~input_o\,
	combout => \o_MC_RAM_data[7]~reg0feeder_combout\);

-- Location: FF_X28_Y10_N11
\o_MC_RAM_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_data[7]~reg0feeder_combout\,
	ena => \o_MC_RAM_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_data[7]~reg0_q\);

-- Location: LCCOMB_X27_Y10_N26
\o_MC_RAM_write_enable~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_RAM_write_enable~1_combout\ = (\o_MC_RAM_address[0]~0_combout\ & (!r_MEM_state(1))) # (!\o_MC_RAM_address[0]~0_combout\ & ((\o_MC_RAM_write_enable~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(1),
	datac => \o_MC_RAM_write_enable~reg0_q\,
	datad => \o_MC_RAM_address[0]~0_combout\,
	combout => \o_MC_RAM_write_enable~1_combout\);

-- Location: FF_X27_Y10_N27
\o_MC_RAM_write_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_RAM_write_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_RAM_write_enable~reg0_q\);

-- Location: LCCOMB_X26_Y7_N28
\o_MC_GPIO_address[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_address[0]~reg0feeder_combout\ = \i_MC_address[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[0]~input_o\,
	combout => \o_MC_GPIO_address[0]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y10_N16
\o_MC_GPIO_address[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_address[0]~0_combout\ = (!\i_MC_address[14]~input_o\ & \i_MC_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_address[14]~input_o\,
	datad => \i_MC_enable~input_o\,
	combout => \o_MC_GPIO_address[0]~0_combout\);

-- Location: LCCOMB_X27_Y10_N18
\o_MC_GPIO_address[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_address[0]~1_combout\ = (\i_MC_address[15]~input_o\ & (\o_MC_GPIO_address[0]~0_combout\ & (r_MEM_state(1) $ (r_MEM_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_address[15]~input_o\,
	datab => \o_MC_GPIO_address[0]~0_combout\,
	datac => r_MEM_state(1),
	datad => r_MEM_state(0),
	combout => \o_MC_GPIO_address[0]~1_combout\);

-- Location: FF_X26_Y7_N29
\o_MC_GPIO_address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_address[0]~reg0feeder_combout\,
	ena => \o_MC_GPIO_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_address[0]~reg0_q\);

-- Location: LCCOMB_X26_Y7_N6
\o_MC_GPIO_address[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_address[1]~reg0feeder_combout\ = \i_MC_address[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[1]~input_o\,
	combout => \o_MC_GPIO_address[1]~reg0feeder_combout\);

-- Location: FF_X26_Y7_N7
\o_MC_GPIO_address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_address[1]~reg0feeder_combout\,
	ena => \o_MC_GPIO_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_address[1]~reg0_q\);

-- Location: LCCOMB_X26_Y7_N16
\o_MC_GPIO_address[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_address[2]~reg0feeder_combout\ = \i_MC_address[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[2]~input_o\,
	combout => \o_MC_GPIO_address[2]~reg0feeder_combout\);

-- Location: FF_X26_Y7_N17
\o_MC_GPIO_address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_address[2]~reg0feeder_combout\,
	ena => \o_MC_GPIO_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_address[2]~reg0_q\);

-- Location: FF_X26_Y7_N27
\o_MC_GPIO_address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[3]~input_o\,
	sload => VCC,
	ena => \o_MC_GPIO_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_address[3]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N24
\o_MC_GPIO_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[0]~reg0feeder_combout\ = \i_MC_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[0]~input_o\,
	combout => \o_MC_GPIO_data[0]~reg0feeder_combout\);

-- Location: LCCOMB_X32_Y10_N12
\o_MC_GPIO_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[0]~0_combout\ = (\o_MC_GPIO_address[0]~0_combout\ & (\i_MC_address[15]~input_o\ & (!r_MEM_state(1) & r_MEM_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_MC_GPIO_address[0]~0_combout\,
	datab => \i_MC_address[15]~input_o\,
	datac => r_MEM_state(1),
	datad => r_MEM_state(0),
	combout => \o_MC_GPIO_data[0]~0_combout\);

-- Location: FF_X32_Y10_N25
\o_MC_GPIO_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[0]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[0]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N14
\o_MC_GPIO_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[1]~reg0feeder_combout\ = \i_MC_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[1]~input_o\,
	combout => \o_MC_GPIO_data[1]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N15
\o_MC_GPIO_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[1]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[1]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N4
\o_MC_GPIO_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[2]~reg0feeder_combout\ = \i_MC_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[2]~input_o\,
	combout => \o_MC_GPIO_data[2]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N5
\o_MC_GPIO_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[2]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[2]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N10
\o_MC_GPIO_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[3]~reg0feeder_combout\ = \i_MC_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[3]~input_o\,
	combout => \o_MC_GPIO_data[3]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N11
\o_MC_GPIO_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[3]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[3]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N0
\o_MC_GPIO_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[4]~reg0feeder_combout\ = \i_MC_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[4]~input_o\,
	combout => \o_MC_GPIO_data[4]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N1
\o_MC_GPIO_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[4]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[4]~reg0_q\);

-- Location: FF_X32_Y10_N19
\o_MC_GPIO_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[5]~input_o\,
	sload => VCC,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[5]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N20
\o_MC_GPIO_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[6]~reg0feeder_combout\ = \i_MC_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[6]~input_o\,
	combout => \o_MC_GPIO_data[6]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N21
\o_MC_GPIO_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[6]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[6]~reg0_q\);

-- Location: LCCOMB_X32_Y10_N26
\o_MC_GPIO_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_data[7]~reg0feeder_combout\ = \i_MC_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[7]~input_o\,
	combout => \o_MC_GPIO_data[7]~reg0feeder_combout\);

-- Location: FF_X32_Y10_N27
\o_MC_GPIO_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_data[7]~reg0feeder_combout\,
	ena => \o_MC_GPIO_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_data[7]~reg0_q\);

-- Location: LCCOMB_X27_Y10_N4
\o_MC_GPIO_write_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_GPIO_write_enable~0_combout\ = (\o_MC_GPIO_address[0]~1_combout\ & (!r_MEM_state(1))) # (!\o_MC_GPIO_address[0]~1_combout\ & ((\o_MC_GPIO_write_enable~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(1),
	datac => \o_MC_GPIO_write_enable~reg0_q\,
	datad => \o_MC_GPIO_address[0]~1_combout\,
	combout => \o_MC_GPIO_write_enable~0_combout\);

-- Location: FF_X27_Y10_N5
\o_MC_GPIO_write_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_GPIO_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_GPIO_write_enable~reg0_q\);

-- Location: LCCOMB_X26_Y7_N8
\o_MC_I2C_address[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2C_address[0]~reg0feeder_combout\ = \i_MC_address[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[0]~input_o\,
	combout => \o_MC_I2C_address[0]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y10_N12
\o_MC_I2c_write_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2c_write_enable~0_combout\ = (\i_MC_address[14]~input_o\ & (\i_MC_address[15]~input_o\ & \o_MC_RAM_write_enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_MC_address[14]~input_o\,
	datac => \i_MC_address[15]~input_o\,
	datad => \o_MC_RAM_write_enable~0_combout\,
	combout => \o_MC_I2c_write_enable~0_combout\);

-- Location: FF_X26_Y7_N9
\o_MC_I2C_address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_I2C_address[0]~reg0feeder_combout\,
	ena => \o_MC_I2c_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_address[0]~reg0_q\);

-- Location: FF_X26_Y10_N23
\o_MC_I2C_address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[1]~input_o\,
	sload => VCC,
	ena => \o_MC_I2c_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_address[1]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N20
\o_MC_I2C_address[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2C_address[2]~reg0feeder_combout\ = \i_MC_address[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_address[2]~input_o\,
	combout => \o_MC_I2C_address[2]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N21
\o_MC_I2C_address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_I2C_address[2]~reg0feeder_combout\,
	ena => \o_MC_I2c_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_address[2]~reg0_q\);

-- Location: FF_X26_Y10_N27
\o_MC_I2C_address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_address[3]~input_o\,
	sload => VCC,
	ena => \o_MC_I2c_write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_address[3]~reg0_q\);

-- Location: LCCOMB_X28_Y10_N6
\o_MC_I2C_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2C_data[0]~0_combout\ = (\i_MC_address[15]~input_o\ & (\i_MC_address[14]~input_o\ & \o_MC_RAM_data[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MC_address[15]~input_o\,
	datab => \i_MC_address[14]~input_o\,
	datad => \o_MC_RAM_data[0]~0_combout\,
	combout => \o_MC_I2C_data[0]~0_combout\);

-- Location: FF_X28_Y10_N25
\o_MC_I2C_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[0]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[0]~reg0_q\);

-- Location: LCCOMB_X28_Y10_N14
\o_MC_I2C_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2C_data[1]~reg0feeder_combout\ = \i_MC_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[1]~input_o\,
	combout => \o_MC_I2C_data[1]~reg0feeder_combout\);

-- Location: FF_X28_Y10_N15
\o_MC_I2C_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_I2C_data[1]~reg0feeder_combout\,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[1]~reg0_q\);

-- Location: LCCOMB_X28_Y10_N28
\o_MC_I2C_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2C_data[2]~reg0feeder_combout\ = \i_MC_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_MC_data[2]~input_o\,
	combout => \o_MC_I2C_data[2]~reg0feeder_combout\);

-- Location: FF_X28_Y10_N29
\o_MC_I2C_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_I2C_data[2]~reg0feeder_combout\,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[2]~reg0_q\);

-- Location: FF_X28_Y10_N3
\o_MC_I2C_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[3]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[3]~reg0_q\);

-- Location: FF_X28_Y10_N1
\o_MC_I2C_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[4]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[4]~reg0_q\);

-- Location: FF_X28_Y10_N31
\o_MC_I2C_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[5]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[5]~reg0_q\);

-- Location: FF_X28_Y10_N5
\o_MC_I2C_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[6]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[6]~reg0_q\);

-- Location: FF_X28_Y10_N7
\o_MC_I2C_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	asdata => \i_MC_data[7]~input_o\,
	sload => VCC,
	ena => \o_MC_I2C_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2C_data[7]~reg0_q\);

-- Location: LCCOMB_X27_Y10_N22
\o_MC_I2c_write_enable~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_MC_I2c_write_enable~1_combout\ = (\o_MC_I2c_write_enable~0_combout\ & (!r_MEM_state(1))) # (!\o_MC_I2c_write_enable~0_combout\ & ((\o_MC_I2c_write_enable~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_MEM_state(1),
	datac => \o_MC_I2c_write_enable~reg0_q\,
	datad => \o_MC_I2c_write_enable~0_combout\,
	combout => \o_MC_I2c_write_enable~1_combout\);

-- Location: FF_X27_Y10_N23
\o_MC_I2c_write_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_MC_clk~inputclkctrl_outclk\,
	d => \o_MC_I2c_write_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_MC_I2c_write_enable~reg0_q\);

ww_o_MC_MUX_data(0) <= \o_MC_MUX_data[0]~output_o\;

ww_o_MC_MUX_data(1) <= \o_MC_MUX_data[1]~output_o\;

ww_o_MC_MUX_data(2) <= \o_MC_MUX_data[2]~output_o\;

ww_o_MC_MUX_data(3) <= \o_MC_MUX_data[3]~output_o\;

ww_o_MC_MUX_data(4) <= \o_MC_MUX_data[4]~output_o\;

ww_o_MC_MUX_data(5) <= \o_MC_MUX_data[5]~output_o\;

ww_o_MC_MUX_data(6) <= \o_MC_MUX_data[6]~output_o\;

ww_o_MC_MUX_data(7) <= \o_MC_MUX_data[7]~output_o\;

ww_o_MC_CU_ready <= \o_MC_CU_ready~output_o\;

ww_o_MC_RAM_address(0) <= \o_MC_RAM_address[0]~output_o\;

ww_o_MC_RAM_address(1) <= \o_MC_RAM_address[1]~output_o\;

ww_o_MC_RAM_address(2) <= \o_MC_RAM_address[2]~output_o\;

ww_o_MC_RAM_address(3) <= \o_MC_RAM_address[3]~output_o\;

ww_o_MC_RAM_address(4) <= \o_MC_RAM_address[4]~output_o\;

ww_o_MC_RAM_address(5) <= \o_MC_RAM_address[5]~output_o\;

ww_o_MC_RAM_address(6) <= \o_MC_RAM_address[6]~output_o\;

ww_o_MC_RAM_address(7) <= \o_MC_RAM_address[7]~output_o\;

ww_o_MC_RAM_address(8) <= \o_MC_RAM_address[8]~output_o\;

ww_o_MC_RAM_address(9) <= \o_MC_RAM_address[9]~output_o\;

ww_o_MC_RAM_address(10) <= \o_MC_RAM_address[10]~output_o\;

ww_o_MC_RAM_address(11) <= \o_MC_RAM_address[11]~output_o\;

ww_o_MC_RAM_address(12) <= \o_MC_RAM_address[12]~output_o\;

ww_o_MC_RAM_address(13) <= \o_MC_RAM_address[13]~output_o\;

ww_o_MC_RAM_data(0) <= \o_MC_RAM_data[0]~output_o\;

ww_o_MC_RAM_data(1) <= \o_MC_RAM_data[1]~output_o\;

ww_o_MC_RAM_data(2) <= \o_MC_RAM_data[2]~output_o\;

ww_o_MC_RAM_data(3) <= \o_MC_RAM_data[3]~output_o\;

ww_o_MC_RAM_data(4) <= \o_MC_RAM_data[4]~output_o\;

ww_o_MC_RAM_data(5) <= \o_MC_RAM_data[5]~output_o\;

ww_o_MC_RAM_data(6) <= \o_MC_RAM_data[6]~output_o\;

ww_o_MC_RAM_data(7) <= \o_MC_RAM_data[7]~output_o\;

ww_o_MC_RAM_write_enable <= \o_MC_RAM_write_enable~output_o\;

ww_o_MC_GPIO_address(0) <= \o_MC_GPIO_address[0]~output_o\;

ww_o_MC_GPIO_address(1) <= \o_MC_GPIO_address[1]~output_o\;

ww_o_MC_GPIO_address(2) <= \o_MC_GPIO_address[2]~output_o\;

ww_o_MC_GPIO_address(3) <= \o_MC_GPIO_address[3]~output_o\;

ww_o_MC_GPIO_data(0) <= \o_MC_GPIO_data[0]~output_o\;

ww_o_MC_GPIO_data(1) <= \o_MC_GPIO_data[1]~output_o\;

ww_o_MC_GPIO_data(2) <= \o_MC_GPIO_data[2]~output_o\;

ww_o_MC_GPIO_data(3) <= \o_MC_GPIO_data[3]~output_o\;

ww_o_MC_GPIO_data(4) <= \o_MC_GPIO_data[4]~output_o\;

ww_o_MC_GPIO_data(5) <= \o_MC_GPIO_data[5]~output_o\;

ww_o_MC_GPIO_data(6) <= \o_MC_GPIO_data[6]~output_o\;

ww_o_MC_GPIO_data(7) <= \o_MC_GPIO_data[7]~output_o\;

ww_o_MC_GPIO_write_enable <= \o_MC_GPIO_write_enable~output_o\;

ww_o_MC_I2C_address(0) <= \o_MC_I2C_address[0]~output_o\;

ww_o_MC_I2C_address(1) <= \o_MC_I2C_address[1]~output_o\;

ww_o_MC_I2C_address(2) <= \o_MC_I2C_address[2]~output_o\;

ww_o_MC_I2C_address(3) <= \o_MC_I2C_address[3]~output_o\;

ww_o_MC_I2C_data(0) <= \o_MC_I2C_data[0]~output_o\;

ww_o_MC_I2C_data(1) <= \o_MC_I2C_data[1]~output_o\;

ww_o_MC_I2C_data(2) <= \o_MC_I2C_data[2]~output_o\;

ww_o_MC_I2C_data(3) <= \o_MC_I2C_data[3]~output_o\;

ww_o_MC_I2C_data(4) <= \o_MC_I2C_data[4]~output_o\;

ww_o_MC_I2C_data(5) <= \o_MC_I2C_data[5]~output_o\;

ww_o_MC_I2C_data(6) <= \o_MC_I2C_data[6]~output_o\;

ww_o_MC_I2C_data(7) <= \o_MC_I2C_data[7]~output_o\;

ww_o_MC_I2c_write_enable <= \o_MC_I2c_write_enable~output_o\;
END structure;


