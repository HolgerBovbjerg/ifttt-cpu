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

-- DATE "05/23/2019 16:24:42"

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

ENTITY 	DATA_RAM IS
    PORT (
	i_RAM_address : IN std_logic_vector(13 DOWNTO 0);
	i_RAM_data : IN std_logic_vector(7 DOWNTO 0);
	i_RAM_write_enable : IN std_logic;
	i_RAM_clk : IN std_logic;
	o_RAM_MC_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END DATA_RAM;

-- Design Ports Information
-- o_RAM_MC_data[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RAM_MC_data[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_write_enable	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[9]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_address[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RAM_data[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DATA_RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_RAM_address : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_i_RAM_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_RAM_write_enable : std_logic;
SIGNAL ww_i_RAM_clk : std_logic;
SIGNAL ww_o_RAM_MC_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i_RAM_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_RAM_MC_data[0]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[1]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[2]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[3]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[4]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[5]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[6]~output_o\ : std_logic;
SIGNAL \o_RAM_MC_data[7]~output_o\ : std_logic;
SIGNAL \i_RAM_address[13]~input_o\ : std_logic;
SIGNAL \i_RAM_write_enable~input_o\ : std_logic;
SIGNAL \i_RAM_clk~input_o\ : std_logic;
SIGNAL \i_RAM_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RAM_data[0]~input_o\ : std_logic;
SIGNAL \i_RAM_address[0]~input_o\ : std_logic;
SIGNAL \i_RAM_address[1]~input_o\ : std_logic;
SIGNAL \i_RAM_address[2]~input_o\ : std_logic;
SIGNAL \i_RAM_address[3]~input_o\ : std_logic;
SIGNAL \i_RAM_address[4]~input_o\ : std_logic;
SIGNAL \i_RAM_address[5]~input_o\ : std_logic;
SIGNAL \i_RAM_address[6]~input_o\ : std_logic;
SIGNAL \i_RAM_address[7]~input_o\ : std_logic;
SIGNAL \i_RAM_address[8]~input_o\ : std_logic;
SIGNAL \i_RAM_address[9]~input_o\ : std_logic;
SIGNAL \i_RAM_address[10]~input_o\ : std_logic;
SIGNAL \i_RAM_address[11]~input_o\ : std_logic;
SIGNAL \i_RAM_address[12]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ : std_logic;
SIGNAL \i_RAM_data[1]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[1]~1_combout\ : std_logic;
SIGNAL \i_RAM_data[2]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[2]~2_combout\ : std_logic;
SIGNAL \i_RAM_data[3]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[3]~3_combout\ : std_logic;
SIGNAL \i_RAM_data[4]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[4]~4_combout\ : std_logic;
SIGNAL \i_RAM_data[5]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[5]~5_combout\ : std_logic;
SIGNAL \i_RAM_data[6]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[6]~6_combout\ : std_logic;
SIGNAL \i_RAM_data[7]~input_o\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|mux3|result_node[7]~7_combout\ : std_logic;
SIGNAL \MEMORY_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEMORY_rtl_0|auto_generated|decode2|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_i_RAM_write_enable~input_o\ : std_logic;

BEGIN

ww_i_RAM_address <= i_RAM_address;
ww_i_RAM_data <= i_RAM_data;
ww_i_RAM_write_enable <= i_RAM_write_enable;
ww_i_RAM_clk <= i_RAM_clk;
o_RAM_MC_data <= ww_o_RAM_MC_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \i_RAM_data[0]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \i_RAM_data[0]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \i_RAM_data[1]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \i_RAM_data[1]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \i_RAM_data[2]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \i_RAM_data[2]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \i_RAM_data[3]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \i_RAM_data[3]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \i_RAM_data[4]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \i_RAM_data[4]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \i_RAM_data[5]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \i_RAM_data[5]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \i_RAM_data[6]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \i_RAM_data[6]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \i_RAM_data[7]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \i_RAM_data[7]~input_o\;

\MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\i_RAM_address[12]~input_o\ & \i_RAM_address[11]~input_o\ & \i_RAM_address[10]~input_o\ & \i_RAM_address[9]~input_o\ & \i_RAM_address[8]~input_o\ & \i_RAM_address[7]~input_o\ & 
\i_RAM_address[6]~input_o\ & \i_RAM_address[5]~input_o\ & \i_RAM_address[4]~input_o\ & \i_RAM_address[3]~input_o\ & \i_RAM_address[2]~input_o\ & \i_RAM_address[1]~input_o\ & \i_RAM_address[0]~input_o\);

\MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\i_RAM_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RAM_clk~input_o\);
\ALT_INV_i_RAM_write_enable~input_o\ <= NOT \i_RAM_write_enable~input_o\;

-- Location: IOOBUF_X9_Y0_N16
\o_RAM_MC_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\o_RAM_MC_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\o_RAM_MC_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[2]~2_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_RAM_MC_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_RAM_MC_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[4]~4_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_RAM_MC_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[5]~5_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\o_RAM_MC_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\o_RAM_MC_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORY_rtl_0|auto_generated|mux3|result_node[7]~7_combout\,
	devoe => ww_devoe,
	o => \o_RAM_MC_data[7]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\i_RAM_address[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(13),
	o => \i_RAM_address[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\i_RAM_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_write_enable,
	o => \i_RAM_write_enable~input_o\);

-- Location: LCCOMB_X14_Y4_N26
\MEMORY_rtl_0|auto_generated|decode2|eq_node[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0) = (!\i_RAM_address[13]~input_o\ & \i_RAM_write_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RAM_address[13]~input_o\,
	datad => \i_RAM_write_enable~input_o\,
	combout => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0));

-- Location: IOIBUF_X0_Y14_N1
\i_RAM_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_clk,
	o => \i_RAM_clk~input_o\);

-- Location: CLKCTRL_G4
\i_RAM_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_RAM_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_RAM_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y8_N15
\i_RAM_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(0),
	o => \i_RAM_data[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\i_RAM_address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(0),
	o => \i_RAM_address[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\i_RAM_address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(1),
	o => \i_RAM_address[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\i_RAM_address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(2),
	o => \i_RAM_address[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_RAM_address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(3),
	o => \i_RAM_address[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\i_RAM_address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(4),
	o => \i_RAM_address[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\i_RAM_address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(5),
	o => \i_RAM_address[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\i_RAM_address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(6),
	o => \i_RAM_address[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\i_RAM_address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(7),
	o => \i_RAM_address[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_RAM_address[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(8),
	o => \i_RAM_address[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\i_RAM_address[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(9),
	o => \i_RAM_address[9]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_RAM_address[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(10),
	o => \i_RAM_address[10]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\i_RAM_address[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(11),
	o => \i_RAM_address[11]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\i_RAM_address[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_address(12),
	o => \i_RAM_address[12]~input_o\);

-- Location: M9K_X13_Y9_N0
\MEMORY_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N16
\MEMORY_rtl_0|auto_generated|decode2|eq_node[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1) = (\i_RAM_address[13]~input_o\ & \i_RAM_write_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RAM_address[13]~input_o\,
	datad => \i_RAM_write_enable~input_o\,
	combout => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1));

-- Location: M9K_X25_Y7_N0
\MEMORY_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: FF_X14_Y4_N25
\MEMORY_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_RAM_clk~inputclkctrl_outclk\,
	asdata => \i_RAM_address[13]~input_o\,
	sload => VCC,
	ena => \ALT_INV_i_RAM_write_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORY_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X14_Y4_N18
\MEMORY_rtl_0|auto_generated|mux3|result_node[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & ((\MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[0]~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\i_RAM_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(1),
	o => \i_RAM_data[1]~input_o\);

-- Location: M9K_X13_Y6_N0
\MEMORY_rtl_0|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y5_N0
\MEMORY_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N4
\MEMORY_rtl_0|auto_generated|mux3|result_node[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[1]~1_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[1]~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\i_RAM_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(2),
	o => \i_RAM_data[2]~input_o\);

-- Location: M9K_X13_Y2_N0
\MEMORY_rtl_0|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y4_N0
\MEMORY_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N22
\MEMORY_rtl_0|auto_generated|mux3|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[2]~2_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[2]~2_combout\);

-- Location: IOIBUF_X26_Y0_N1
\i_RAM_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(3),
	o => \i_RAM_data[3]~input_o\);

-- Location: M9K_X25_Y6_N0
\MEMORY_rtl_0|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y5_N0
\MEMORY_rtl_0|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N8
\MEMORY_rtl_0|auto_generated|mux3|result_node[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[3]~3_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[3]~3_combout\);

-- Location: IOIBUF_X9_Y0_N8
\i_RAM_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(4),
	o => \i_RAM_data[4]~input_o\);

-- Location: M9K_X13_Y7_N0
\MEMORY_rtl_0|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y8_N0
\MEMORY_rtl_0|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N10
\MEMORY_rtl_0|auto_generated|mux3|result_node[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[4]~4_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[4]~4_combout\);

-- Location: IOIBUF_X26_Y0_N22
\i_RAM_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(5),
	o => \i_RAM_data[5]~input_o\);

-- Location: M9K_X25_Y2_N0
\MEMORY_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y4_N0
\MEMORY_rtl_0|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N12
\MEMORY_rtl_0|auto_generated|mux3|result_node[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[5]~5_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datac => \MEMORY_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[5]~5_combout\);

-- Location: IOIBUF_X11_Y0_N15
\i_RAM_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(6),
	o => \i_RAM_data[6]~input_o\);

-- Location: M9K_X13_Y1_N0
\MEMORY_rtl_0|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y3_N0
\MEMORY_rtl_0|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N14
\MEMORY_rtl_0|auto_generated|mux3|result_node[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[6]~6_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datab => \MEMORY_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[6]~6_combout\);

-- Location: IOIBUF_X26_Y0_N29
\i_RAM_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RAM_data(7),
	o => \i_RAM_data[7]~input_o\);

-- Location: M9K_X25_Y1_N0
\MEMORY_rtl_0|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(1),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y3_N0
\MEMORY_rtl_0|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DATA_RAM.ram0_DATA_RAM_24acaa6a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:MEMORY_rtl_0|altsyncram_dti1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	portbre => VCC,
	clk0 => \i_RAM_clk~inputclkctrl_outclk\,
	clk1 => \i_RAM_clk~inputclkctrl_outclk\,
	ena0 => \MEMORY_rtl_0|auto_generated|decode2|eq_node\(0),
	ena1 => \ALT_INV_i_RAM_write_enable~input_o\,
	portadatain => \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORY_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N24
\MEMORY_rtl_0|auto_generated|mux3|result_node[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEMORY_rtl_0|auto_generated|mux3|result_node[7]~7_combout\ = (\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & (\MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\)) # (!\MEMORY_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \MEMORY_rtl_0|auto_generated|address_reg_b\(0),
	datad => \MEMORY_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	combout => \MEMORY_rtl_0|auto_generated|mux3|result_node[7]~7_combout\);

ww_o_RAM_MC_data(0) <= \o_RAM_MC_data[0]~output_o\;

ww_o_RAM_MC_data(1) <= \o_RAM_MC_data[1]~output_o\;

ww_o_RAM_MC_data(2) <= \o_RAM_MC_data[2]~output_o\;

ww_o_RAM_MC_data(3) <= \o_RAM_MC_data[3]~output_o\;

ww_o_RAM_MC_data(4) <= \o_RAM_MC_data[4]~output_o\;

ww_o_RAM_MC_data(5) <= \o_RAM_MC_data[5]~output_o\;

ww_o_RAM_MC_data(6) <= \o_RAM_MC_data[6]~output_o\;

ww_o_RAM_MC_data(7) <= \o_RAM_MC_data[7]~output_o\;
END structure;


