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

-- DATE "05/23/2019 12:58:22"

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

ENTITY 	Display_driver IS
    PORT (
	io_I2C_sda : BUFFER std_logic;
	io_I2C_scl : BUFFER std_logic;
	i_I2C_clk : IN std_logic;
	i_I2C_reset : IN std_logic;
	i_I2C_display_enable : IN std_logic;
	i_display_write_enable : IN std_logic;
	i_I2C_display_input : IN std_logic_vector(7 DOWNTO 0);
	o_I2C_ack_error : BUFFER std_logic
	);
END Display_driver;

-- Design Ports Information
-- i_I2C_display_enable	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_I2C_ack_error	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_I2C_sda	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io_I2C_scl	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_reset	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_display_write_enable	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2C_display_input[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Display_driver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_io_I2C_sda : std_logic;
SIGNAL ww_io_I2C_scl : std_logic;
SIGNAL ww_i_I2C_clk : std_logic;
SIGNAL ww_i_I2C_reset : std_logic;
SIGNAL ww_i_I2C_display_enable : std_logic;
SIGNAL ww_i_display_write_enable : std_logic;
SIGNAL ww_i_I2C_display_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_I2C_ack_error : std_logic;
SIGNAL \i_I2C_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_I2C_display_enable~input_o\ : std_logic;
SIGNAL \io_I2C_sda~output_o\ : std_logic;
SIGNAL \io_I2C_scl~output_o\ : std_logic;
SIGNAL \o_I2C_ack_error~output_o\ : std_logic;
SIGNAL \i_I2C_clk~input_o\ : std_logic;
SIGNAL \i_I2C_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \io_I2C_scl~input_o\ : std_logic;
SIGNAL \inst|count~6_combout\ : std_logic;
SIGNAL \disp|Add0~0_combout\ : std_logic;
SIGNAL \disp|Add0~3\ : std_logic;
SIGNAL \disp|Add0~4_combout\ : std_logic;
SIGNAL \disp|Add0~22_combout\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|w_data_bit_cnt[0]~2_combout\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|state~30_combout\ : std_logic;
SIGNAL \io_I2C_sda~input_o\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \disp|Add0~7\ : std_logic;
SIGNAL \disp|Add0~8_combout\ : std_logic;
SIGNAL \disp|Add0~19_combout\ : std_logic;
SIGNAL \disp|Add0~9\ : std_logic;
SIGNAL \disp|Add0~10_combout\ : std_logic;
SIGNAL \disp|Add0~20_combout\ : std_logic;
SIGNAL \disp|Add0~11\ : std_logic;
SIGNAL \disp|Add0~12_combout\ : std_logic;
SIGNAL \disp|Add0~21_combout\ : std_logic;
SIGNAL \disp|LessThan2~0_combout\ : std_logic;
SIGNAL \disp|Add0~13\ : std_logic;
SIGNAL \disp|Add0~14_combout\ : std_logic;
SIGNAL \disp|delay_cnt[7]~3_combout\ : std_logic;
SIGNAL \disp|LessThan5~0_combout\ : std_logic;
SIGNAL \disp|Add0~15\ : std_logic;
SIGNAL \disp|Add0~16_combout\ : std_logic;
SIGNAL \disp|delay_cnt[8]~4_combout\ : std_logic;
SIGNAL \disp|process_0~5_combout\ : std_logic;
SIGNAL \i_I2C_reset~input_o\ : std_logic;
SIGNAL \disp|delay_cnt[0]~0_combout\ : std_logic;
SIGNAL \disp|o_display_ready~q\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|state.ready~q\ : std_logic;
SIGNAL \inst|state~31_combout\ : std_logic;
SIGNAL \inst|state.error~q\ : std_logic;
SIGNAL \inst|state~26_combout\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|state.start~q\ : std_logic;
SIGNAL \inst|state~27_combout\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|state.slv_ack2~q\ : std_logic;
SIGNAL \inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst|state~29_combout\ : std_logic;
SIGNAL \inst|state.slv_ack1~q\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|Selector12~1_combout\ : std_logic;
SIGNAL \inst|state.exe_cmd~q\ : std_logic;
SIGNAL \inst|w_data_bit_cnt[2]~1_combout\ : std_logic;
SIGNAL \inst|w_data_bit_cnt~0_combout\ : std_logic;
SIGNAL \inst|w_data_bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|state~28_combout\ : std_logic;
SIGNAL \inst|state.slv_ack3~q\ : std_logic;
SIGNAL \inst|state.stop~0_combout\ : std_logic;
SIGNAL \inst|state.stop~q\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|w_busy~q\ : std_logic;
SIGNAL \disp|trans_cnt[0]~32_combout\ : std_logic;
SIGNAL \disp|trans_cnt[24]~38_combout\ : std_logic;
SIGNAL \disp|print_ptr[0]~33_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[0]~34_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~98_combout\ : std_logic;
SIGNAL \disp|print_ptr[14]~32_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~103_combout\ : std_logic;
SIGNAL \i_display_write_enable~input_o\ : std_logic;
SIGNAL \disp|state~15_combout\ : std_logic;
SIGNAL \disp|state.ready~q\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~101_combout\ : std_logic;
SIGNAL \disp|Equal2~8_combout\ : std_logic;
SIGNAL \disp|Equal2~9_combout\ : std_logic;
SIGNAL \disp|Equal2~5_combout\ : std_logic;
SIGNAL \disp|Equal2~6_combout\ : std_logic;
SIGNAL \disp|Equal2~1_combout\ : std_logic;
SIGNAL \disp|Equal2~0_combout\ : std_logic;
SIGNAL \disp|Equal2~3_combout\ : std_logic;
SIGNAL \disp|Equal2~2_combout\ : std_logic;
SIGNAL \disp|Equal2~4_combout\ : std_logic;
SIGNAL \disp|Equal2~7_combout\ : std_logic;
SIGNAL \disp|Add2~0_combout\ : std_logic;
SIGNAL \disp|Equal2~10_combout\ : std_logic;
SIGNAL \disp|LessThan7~0_combout\ : std_logic;
SIGNAL \disp|begin_init~12_combout\ : std_logic;
SIGNAL \disp|Add4~1\ : std_logic;
SIGNAL \disp|Add4~3\ : std_logic;
SIGNAL \disp|Add4~5\ : std_logic;
SIGNAL \disp|Add4~7\ : std_logic;
SIGNAL \disp|Add4~8_combout\ : std_logic;
SIGNAL \disp|Add4~9\ : std_logic;
SIGNAL \disp|Add4~10_combout\ : std_logic;
SIGNAL \disp|Add4~4_combout\ : std_logic;
SIGNAL \i_I2C_display_input[6]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~93_combout\ : std_logic;
SIGNAL \disp|Decoder0~4_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~53_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][7]~74_combout\ : std_logic;
SIGNAL \disp|r_buffer[21][7]~83_combout\ : std_logic;
SIGNAL \disp|r_buffer[21][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[26][7]~76_combout\ : std_logic;
SIGNAL \disp|r_buffer[29][3]~82_combout\ : std_logic;
SIGNAL \disp|r_buffer[29][6]~q\ : std_logic;
SIGNAL \disp|Add4~6_combout\ : std_logic;
SIGNAL \disp|Decoder0~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[17][5]~117_combout\ : std_logic;
SIGNAL \disp|r_buffer[17][5]~81_combout\ : std_logic;
SIGNAL \disp|r_buffer[17][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[25][3]~80_combout\ : std_logic;
SIGNAL \disp|r_buffer[25][6]~q\ : std_logic;
SIGNAL \disp|Mux15~0_combout\ : std_logic;
SIGNAL \disp|Mux15~1_combout\ : std_logic;
SIGNAL \disp|Add4~0_combout\ : std_logic;
SIGNAL \disp|Decoder0~7_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][6]~122_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][6]~89_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][4]~91_combout\ : std_logic;
SIGNAL \disp|r_buffer[31][6]~q\ : std_logic;
SIGNAL \disp|Decoder0~3_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][6]~121_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][6]~88_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][7]~123_combout\ : std_logic;
SIGNAL \disp|r_buffer[19][7]~90_combout\ : std_logic;
SIGNAL \disp|r_buffer[19][6]~q\ : std_logic;
SIGNAL \disp|Mux15~7_combout\ : std_logic;
SIGNAL \disp|Mux15~8_combout\ : std_logic;
SIGNAL \disp|Add4~2_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][6]~feeder_combout\ : std_logic;
SIGNAL \disp|Decoder0~0_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][7]~114_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][7]~77_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][6]~q\ : std_logic;
SIGNAL \disp|Decoder0~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[30][3]~116_combout\ : std_logic;
SIGNAL \disp|r_buffer[30][3]~79_combout\ : std_logic;
SIGNAL \disp|r_buffer[30][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[22][7]~113_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][7]~75_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][4]~115_combout\ : std_logic;
SIGNAL \disp|r_buffer[18][4]~78_combout\ : std_logic;
SIGNAL \disp|r_buffer[18][6]~q\ : std_logic;
SIGNAL \disp|Mux15~2_combout\ : std_logic;
SIGNAL \disp|Mux15~3_combout\ : std_logic;
SIGNAL \disp|Decoder0~2_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][3]~119_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][3]~85_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][6]~q\ : std_logic;
SIGNAL \disp|Decoder0~6_combout\ : std_logic;
SIGNAL \disp|r_buffer[28][3]~87_combout\ : std_logic;
SIGNAL \disp|r_buffer[28][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[20][7]~118_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][7]~84_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][6]~120_combout\ : std_logic;
SIGNAL \disp|r_buffer[16][6]~86_combout\ : std_logic;
SIGNAL \disp|r_buffer[16][6]~q\ : std_logic;
SIGNAL \disp|Mux15~4_combout\ : std_logic;
SIGNAL \disp|Mux15~5_combout\ : std_logic;
SIGNAL \disp|Mux15~6_combout\ : std_logic;
SIGNAL \disp|Mux15~9_combout\ : std_logic;
SIGNAL \i_I2C_display_input[3]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~95_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[27][3]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][3]~q\ : std_logic;
SIGNAL \disp|Mux18~7_combout\ : std_logic;
SIGNAL \disp|Mux18~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[29][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[25][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][3]~q\ : std_logic;
SIGNAL \disp|Mux18~0_combout\ : std_logic;
SIGNAL \disp|Mux18~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[20][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][3]~q\ : std_logic;
SIGNAL \disp|Mux18~4_combout\ : std_logic;
SIGNAL \disp|Mux18~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[22][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][3]~q\ : std_logic;
SIGNAL \disp|Mux18~2_combout\ : std_logic;
SIGNAL \disp|Mux18~3_combout\ : std_logic;
SIGNAL \disp|Mux18~6_combout\ : std_logic;
SIGNAL \disp|Mux18~9_combout\ : std_logic;
SIGNAL \i_I2C_display_input[7]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~92_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[26][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][7]~q\ : std_logic;
SIGNAL \disp|Mux14~0_combout\ : std_logic;
SIGNAL \disp|Mux14~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[19][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[23][7]~q\ : std_logic;
SIGNAL \disp|Mux14~7_combout\ : std_logic;
SIGNAL \disp|r_buffer[31][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[27][7]~q\ : std_logic;
SIGNAL \disp|Mux14~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[24][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][7]~q\ : std_logic;
SIGNAL \disp|Mux14~4_combout\ : std_logic;
SIGNAL \disp|Mux14~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[25][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[29][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][7]~q\ : std_logic;
SIGNAL \disp|Mux14~2_combout\ : std_logic;
SIGNAL \disp|Mux14~3_combout\ : std_logic;
SIGNAL \disp|Mux14~6_combout\ : std_logic;
SIGNAL \disp|Mux14~9_combout\ : std_logic;
SIGNAL \i_I2C_display_input[2]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~94_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][2]~q\ : std_logic;
SIGNAL \disp|Mux19~7_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][2]~q\ : std_logic;
SIGNAL \disp|Mux19~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[26][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][2]~q\ : std_logic;
SIGNAL \disp|Mux19~0_combout\ : std_logic;
SIGNAL \disp|Mux19~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[24][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][2]~q\ : std_logic;
SIGNAL \disp|Mux19~4_combout\ : std_logic;
SIGNAL \disp|Mux19~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[25][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[29][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][2]~q\ : std_logic;
SIGNAL \disp|Mux19~2_combout\ : std_logic;
SIGNAL \disp|Mux19~3_combout\ : std_logic;
SIGNAL \disp|Mux19~6_combout\ : std_logic;
SIGNAL \disp|Mux19~9_combout\ : std_logic;
SIGNAL \disp|begin_init~3_combout\ : std_logic;
SIGNAL \disp|r_buffer[8][5]~100_combout\ : std_logic;
SIGNAL \disp|r_buffer[8][5]~56_combout\ : std_logic;
SIGNAL \disp|r_buffer[8][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[9][3]~99_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][3]~55_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][7]~q\ : std_logic;
SIGNAL \disp|Mux14~10_combout\ : std_logic;
SIGNAL \disp|r_buffer[11][3]~101_combout\ : std_logic;
SIGNAL \disp|r_buffer[11][3]~57_combout\ : std_logic;
SIGNAL \disp|r_buffer[11][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][3]~98_combout\ : std_logic;
SIGNAL \disp|r_buffer[10][3]~54_combout\ : std_logic;
SIGNAL \disp|r_buffer[10][7]~q\ : std_logic;
SIGNAL \disp|Mux14~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][0]~108_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][0]~67_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][3]~111_combout\ : std_logic;
SIGNAL \disp|r_buffer[15][3]~70_combout\ : std_logic;
SIGNAL \disp|r_buffer[15][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[14][2]~109_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][2]~68_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][7]~110_combout\ : std_logic;
SIGNAL \disp|r_buffer[12][7]~69_combout\ : std_logic;
SIGNAL \disp|r_buffer[12][7]~q\ : std_logic;
SIGNAL \disp|Mux14~17_combout\ : std_logic;
SIGNAL \disp|Mux14~18_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][7]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][3]~102_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][3]~59_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~58_combout\ : std_logic;
SIGNAL \disp|r_buffer[7][3]~62_combout\ : std_logic;
SIGNAL \disp|r_buffer[7][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[6][7]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][3]~103_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][3]~60_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][6]~104_combout\ : std_logic;
SIGNAL \disp|r_buffer[4][6]~61_combout\ : std_logic;
SIGNAL \disp|r_buffer[4][7]~q\ : std_logic;
SIGNAL \disp|Mux14~12_combout\ : std_logic;
SIGNAL \disp|Mux14~13_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][7]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][6]~105_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][6]~63_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][3]~107_combout\ : std_logic;
SIGNAL \disp|r_buffer[3][3]~66_combout\ : std_logic;
SIGNAL \disp|r_buffer[3][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[1][7]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][4]~106_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][4]~64_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][0]~65_combout\ : std_logic;
SIGNAL \disp|r_buffer[0][7]~q\ : std_logic;
SIGNAL \disp|Mux14~14_combout\ : std_logic;
SIGNAL \disp|Mux14~15_combout\ : std_logic;
SIGNAL \disp|Mux14~16_combout\ : std_logic;
SIGNAL \disp|Mux14~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[10][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[9][2]~q\ : std_logic;
SIGNAL \disp|Mux19~10_combout\ : std_logic;
SIGNAL \disp|Mux19~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[3][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[2][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[1][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][2]~q\ : std_logic;
SIGNAL \disp|Mux19~14_combout\ : std_logic;
SIGNAL \disp|Mux19~15_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[7][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[6][2]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][2]~q\ : std_logic;
SIGNAL \disp|Mux19~12_combout\ : std_logic;
SIGNAL \disp|Mux19~13_combout\ : std_logic;
SIGNAL \disp|Mux19~16_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[14][2]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][2]~q\ : std_logic;
SIGNAL \disp|Mux19~17_combout\ : std_logic;
SIGNAL \disp|Mux19~18_combout\ : std_logic;
SIGNAL \disp|Mux19~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[13][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][6]~q\ : std_logic;
SIGNAL \disp|Mux15~17_combout\ : std_logic;
SIGNAL \disp|Mux15~18_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][6]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][6]~q\ : std_logic;
SIGNAL \disp|Mux15~10_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][6]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[7][6]~q\ : std_logic;
SIGNAL \disp|Mux15~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][6]~q\ : std_logic;
SIGNAL \disp|Mux15~12_combout\ : std_logic;
SIGNAL \disp|Mux15~13_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][6]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[2][6]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][6]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][6]~q\ : std_logic;
SIGNAL \disp|Mux15~14_combout\ : std_logic;
SIGNAL \disp|Mux15~15_combout\ : std_logic;
SIGNAL \disp|Mux15~16_combout\ : std_logic;
SIGNAL \disp|Mux15~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][3]~q\ : std_logic;
SIGNAL \disp|Mux18~10_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[7][3]~q\ : std_logic;
SIGNAL \disp|Mux18~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[2][3]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][3]~q\ : std_logic;
SIGNAL \disp|Mux18~14_combout\ : std_logic;
SIGNAL \disp|Mux18~15_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][3]~q\ : std_logic;
SIGNAL \disp|Mux18~12_combout\ : std_logic;
SIGNAL \disp|Mux18~13_combout\ : std_logic;
SIGNAL \disp|Mux18~16_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[13][3]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][3]~q\ : std_logic;
SIGNAL \disp|Mux18~17_combout\ : std_logic;
SIGNAL \disp|Mux18~18_combout\ : std_logic;
SIGNAL \disp|Mux18~19_combout\ : std_logic;
SIGNAL \disp|begin_init~4_combout\ : std_logic;
SIGNAL \disp|begin_init~5_combout\ : std_logic;
SIGNAL \i_I2C_display_input[4]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~96_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~71_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~112_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~72_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][4]~q\ : std_logic;
SIGNAL \i_I2C_display_input[5]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~97_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[32][3]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][3]~q\ : std_logic;
SIGNAL \disp|begin_init~9_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][7]~q\ : std_logic;
SIGNAL \disp|r_buffer[32][2]~q\ : std_logic;
SIGNAL \disp|r_buffer[32][6]~q\ : std_logic;
SIGNAL \disp|begin_init~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[21][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[29][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[25][5]~q\ : std_logic;
SIGNAL \disp|Mux16~10_combout\ : std_logic;
SIGNAL \disp|Mux16~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[22][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][5]~q\ : std_logic;
SIGNAL \disp|Mux16~12_combout\ : std_logic;
SIGNAL \disp|Mux16~13_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[20][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][5]~q\ : std_logic;
SIGNAL \disp|Mux16~14_combout\ : std_logic;
SIGNAL \disp|Mux16~15_combout\ : std_logic;
SIGNAL \disp|Mux16~16_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][5]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[27][5]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][5]~q\ : std_logic;
SIGNAL \disp|Mux16~17_combout\ : std_logic;
SIGNAL \disp|Mux16~18_combout\ : std_logic;
SIGNAL \disp|Mux16~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[5][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][5]~q\ : std_logic;
SIGNAL \disp|Mux16~0_combout\ : std_logic;
SIGNAL \disp|r_buffer[7][5]~q\ : std_logic;
SIGNAL \disp|Mux16~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[13][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][5]~q\ : std_logic;
SIGNAL \disp|Mux16~7_combout\ : std_logic;
SIGNAL \disp|Mux16~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][5]~q\ : std_logic;
SIGNAL \disp|Mux16~2_combout\ : std_logic;
SIGNAL \disp|Mux16~3_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[2][5]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][5]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][5]~q\ : std_logic;
SIGNAL \disp|Mux16~4_combout\ : std_logic;
SIGNAL \disp|Mux16~5_combout\ : std_logic;
SIGNAL \disp|Mux16~6_combout\ : std_logic;
SIGNAL \disp|Mux16~9_combout\ : std_logic;
SIGNAL \disp|begin_init~7_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[23][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][4]~q\ : std_logic;
SIGNAL \disp|Mux17~17_combout\ : std_logic;
SIGNAL \disp|Mux17~18_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[24][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][4]~q\ : std_logic;
SIGNAL \disp|Mux17~14_combout\ : std_logic;
SIGNAL \disp|Mux17~15_combout\ : std_logic;
SIGNAL \disp|r_buffer[25][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[29][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][4]~q\ : std_logic;
SIGNAL \disp|Mux17~12_combout\ : std_logic;
SIGNAL \disp|Mux17~13_combout\ : std_logic;
SIGNAL \disp|Mux17~16_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[26][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][4]~q\ : std_logic;
SIGNAL \disp|Mux17~10_combout\ : std_logic;
SIGNAL \disp|Mux17~11_combout\ : std_logic;
SIGNAL \disp|Mux17~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[12][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[14][4]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][4]~q\ : std_logic;
SIGNAL \disp|Mux17~7_combout\ : std_logic;
SIGNAL \disp|r_buffer[15][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[13][4]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][4]~q\ : std_logic;
SIGNAL \disp|Mux17~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[10][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[9][4]~q\ : std_logic;
SIGNAL \disp|Mux17~0_combout\ : std_logic;
SIGNAL \disp|Mux17~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[1][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][4]~q\ : std_logic;
SIGNAL \disp|Mux17~4_combout\ : std_logic;
SIGNAL \disp|Mux17~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[7][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[6][4]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[6][4]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][4]~q\ : std_logic;
SIGNAL \disp|Mux17~2_combout\ : std_logic;
SIGNAL \disp|Mux17~3_combout\ : std_logic;
SIGNAL \disp|Mux17~6_combout\ : std_logic;
SIGNAL \disp|Mux17~9_combout\ : std_logic;
SIGNAL \disp|begin_init~6_combout\ : std_logic;
SIGNAL \disp|begin_init~10_combout\ : std_logic;
SIGNAL \i_I2C_display_input[0]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~52_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][0]~q\ : std_logic;
SIGNAL \i_I2C_display_input[1]~input_o\ : std_logic;
SIGNAL \disp|r_buffer~73_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[32][1]~q\ : std_logic;
SIGNAL \disp|begin_init~0_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[14][0]~q\ : std_logic;
SIGNAL \disp|Mux21~7_combout\ : std_logic;
SIGNAL \disp|Mux21~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[11][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[9][0]~q\ : std_logic;
SIGNAL \disp|Mux21~0_combout\ : std_logic;
SIGNAL \disp|Mux21~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[5][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[7][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[6][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][0]~q\ : std_logic;
SIGNAL \disp|Mux21~2_combout\ : std_logic;
SIGNAL \disp|Mux21~3_combout\ : std_logic;
SIGNAL \disp|r_buffer[2][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[1][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][0]~q\ : std_logic;
SIGNAL \disp|Mux21~4_combout\ : std_logic;
SIGNAL \disp|Mux21~5_combout\ : std_logic;
SIGNAL \disp|Mux21~6_combout\ : std_logic;
SIGNAL \disp|Mux21~9_combout\ : std_logic;
SIGNAL \disp|r_buffer[27][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[23][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][0]~q\ : std_logic;
SIGNAL \disp|Mux21~17_combout\ : std_logic;
SIGNAL \disp|Mux21~18_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[22][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[26][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][0]~q\ : std_logic;
SIGNAL \disp|Mux21~10_combout\ : std_logic;
SIGNAL \disp|Mux21~11_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[24][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][0]~q\ : std_logic;
SIGNAL \disp|Mux21~14_combout\ : std_logic;
SIGNAL \disp|Mux21~15_combout\ : std_logic;
SIGNAL \disp|r_buffer[25][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[29][0]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[29][0]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][0]~q\ : std_logic;
SIGNAL \disp|Mux21~12_combout\ : std_logic;
SIGNAL \disp|Mux21~13_combout\ : std_logic;
SIGNAL \disp|Mux21~16_combout\ : std_logic;
SIGNAL \disp|Mux21~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[14][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[15][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[13][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[13][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[12][1]~q\ : std_logic;
SIGNAL \disp|Mux20~17_combout\ : std_logic;
SIGNAL \disp|Mux20~18_combout\ : std_logic;
SIGNAL \disp|r_buffer[1][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[3][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[2][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[0][1]~q\ : std_logic;
SIGNAL \disp|Mux20~14_combout\ : std_logic;
SIGNAL \disp|Mux20~15_combout\ : std_logic;
SIGNAL \disp|r_buffer[9][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[11][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[8][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[10][1]~q\ : std_logic;
SIGNAL \disp|Mux20~12_combout\ : std_logic;
SIGNAL \disp|Mux20~13_combout\ : std_logic;
SIGNAL \disp|Mux20~16_combout\ : std_logic;
SIGNAL \disp|r_buffer[7][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[6][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[5][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[4][1]~q\ : std_logic;
SIGNAL \disp|Mux20~10_combout\ : std_logic;
SIGNAL \disp|Mux20~11_combout\ : std_logic;
SIGNAL \disp|Mux20~19_combout\ : std_logic;
SIGNAL \disp|r_buffer[29][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[21][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[25][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[17][1]~q\ : std_logic;
SIGNAL \disp|Mux20~0_combout\ : std_logic;
SIGNAL \disp|Mux20~1_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[23][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[31][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[27][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[19][1]~q\ : std_logic;
SIGNAL \disp|Mux20~7_combout\ : std_logic;
SIGNAL \disp|Mux20~8_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[24][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[28][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[20][1]~feeder_combout\ : std_logic;
SIGNAL \disp|r_buffer[20][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[16][1]~q\ : std_logic;
SIGNAL \disp|Mux20~4_combout\ : std_logic;
SIGNAL \disp|Mux20~5_combout\ : std_logic;
SIGNAL \disp|r_buffer[26][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[30][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[22][1]~q\ : std_logic;
SIGNAL \disp|r_buffer[18][1]~q\ : std_logic;
SIGNAL \disp|Mux20~2_combout\ : std_logic;
SIGNAL \disp|Mux20~3_combout\ : std_logic;
SIGNAL \disp|Mux20~6_combout\ : std_logic;
SIGNAL \disp|Mux20~9_combout\ : std_logic;
SIGNAL \disp|begin_init~1_combout\ : std_logic;
SIGNAL \disp|begin_init~2_combout\ : std_logic;
SIGNAL \disp|begin_init~11_combout\ : std_logic;
SIGNAL \disp|begin_init~13_combout\ : std_logic;
SIGNAL \disp|begin_init~q\ : std_logic;
SIGNAL \disp|Selector11~0_combout\ : std_logic;
SIGNAL \disp|read_cnt[30]~0_combout\ : std_logic;
SIGNAL \disp|read_cnt[30]~0_wirecell_combout\ : std_logic;
SIGNAL \disp|state.receive~q\ : std_logic;
SIGNAL \disp|read_cnt[30]~1_combout\ : std_logic;
SIGNAL \disp|Add2~45\ : std_logic;
SIGNAL \disp|Add2~46_combout\ : std_logic;
SIGNAL \disp|read_cnt[0]~3_combout\ : std_logic;
SIGNAL \disp|Add2~47\ : std_logic;
SIGNAL \disp|Add2~48_combout\ : std_logic;
SIGNAL \disp|Add2~49\ : std_logic;
SIGNAL \disp|Add2~50_combout\ : std_logic;
SIGNAL \disp|Add2~51\ : std_logic;
SIGNAL \disp|Add2~52_combout\ : std_logic;
SIGNAL \disp|Add2~53\ : std_logic;
SIGNAL \disp|Add2~54_combout\ : std_logic;
SIGNAL \disp|Add2~55\ : std_logic;
SIGNAL \disp|Add2~56_combout\ : std_logic;
SIGNAL \disp|Add2~57\ : std_logic;
SIGNAL \disp|Add2~58_combout\ : std_logic;
SIGNAL \disp|Add2~59\ : std_logic;
SIGNAL \disp|Add2~60_combout\ : std_logic;
SIGNAL \disp|Add2~61\ : std_logic;
SIGNAL \disp|Add2~62_combout\ : std_logic;
SIGNAL \disp|process_0~11_combout\ : std_logic;
SIGNAL \disp|process_0~12_combout\ : std_logic;
SIGNAL \disp|process_0~7_combout\ : std_logic;
SIGNAL \disp|process_0~9_combout\ : std_logic;
SIGNAL \disp|process_0~8_combout\ : std_logic;
SIGNAL \disp|process_0~6_combout\ : std_logic;
SIGNAL \disp|process_0~10_combout\ : std_logic;
SIGNAL \disp|read_cnt[30]~2_combout\ : std_logic;
SIGNAL \disp|Selector342~0_combout\ : std_logic;
SIGNAL \disp|Add2~1\ : std_logic;
SIGNAL \disp|Add2~2_combout\ : std_logic;
SIGNAL \disp|Selector341~0_combout\ : std_logic;
SIGNAL \disp|Add2~3\ : std_logic;
SIGNAL \disp|Add2~4_combout\ : std_logic;
SIGNAL \disp|Add2~5\ : std_logic;
SIGNAL \disp|Add2~6_combout\ : std_logic;
SIGNAL \disp|Add2~7\ : std_logic;
SIGNAL \disp|Add2~8_combout\ : std_logic;
SIGNAL \disp|Add2~9\ : std_logic;
SIGNAL \disp|Add2~10_combout\ : std_logic;
SIGNAL \disp|Add2~11\ : std_logic;
SIGNAL \disp|Add2~12_combout\ : std_logic;
SIGNAL \disp|Add2~13\ : std_logic;
SIGNAL \disp|Add2~14_combout\ : std_logic;
SIGNAL \disp|Add2~15\ : std_logic;
SIGNAL \disp|Add2~16_combout\ : std_logic;
SIGNAL \disp|Add2~17\ : std_logic;
SIGNAL \disp|Add2~18_combout\ : std_logic;
SIGNAL \disp|Add2~19\ : std_logic;
SIGNAL \disp|Add2~20_combout\ : std_logic;
SIGNAL \disp|Add2~21\ : std_logic;
SIGNAL \disp|Add2~22_combout\ : std_logic;
SIGNAL \disp|Add2~23\ : std_logic;
SIGNAL \disp|Add2~24_combout\ : std_logic;
SIGNAL \disp|Add2~25\ : std_logic;
SIGNAL \disp|Add2~26_combout\ : std_logic;
SIGNAL \disp|Add2~27\ : std_logic;
SIGNAL \disp|Add2~28_combout\ : std_logic;
SIGNAL \disp|Add2~29\ : std_logic;
SIGNAL \disp|Add2~30_combout\ : std_logic;
SIGNAL \disp|Add2~31\ : std_logic;
SIGNAL \disp|Add2~32_combout\ : std_logic;
SIGNAL \disp|Add2~33\ : std_logic;
SIGNAL \disp|Add2~34_combout\ : std_logic;
SIGNAL \disp|Add2~35\ : std_logic;
SIGNAL \disp|Add2~36_combout\ : std_logic;
SIGNAL \disp|Add2~37\ : std_logic;
SIGNAL \disp|Add2~38_combout\ : std_logic;
SIGNAL \disp|Add2~39\ : std_logic;
SIGNAL \disp|Add2~40_combout\ : std_logic;
SIGNAL \disp|Add2~41\ : std_logic;
SIGNAL \disp|Add2~42_combout\ : std_logic;
SIGNAL \disp|Add2~43\ : std_logic;
SIGNAL \disp|Add2~44_combout\ : std_logic;
SIGNAL \disp|process_0~14_combout\ : std_logic;
SIGNAL \disp|process_0~13_combout\ : std_logic;
SIGNAL \disp|process_0~15_combout\ : std_logic;
SIGNAL \disp|process_0~18_combout\ : std_logic;
SIGNAL \disp|process_0~17_combout\ : std_logic;
SIGNAL \disp|process_0~19_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~99_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~100_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~102_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[0]~35\ : std_logic;
SIGNAL \disp|buffer_ptr[1]~36_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[1]~37\ : std_logic;
SIGNAL \disp|buffer_ptr[2]~38_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[2]~39\ : std_logic;
SIGNAL \disp|buffer_ptr[3]~40_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[3]~41\ : std_logic;
SIGNAL \disp|buffer_ptr[4]~42_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[4]~43\ : std_logic;
SIGNAL \disp|buffer_ptr[5]~44_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[5]~45\ : std_logic;
SIGNAL \disp|buffer_ptr[6]~46_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[6]~47\ : std_logic;
SIGNAL \disp|buffer_ptr[7]~48_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[7]~49\ : std_logic;
SIGNAL \disp|buffer_ptr[8]~50_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[8]~51\ : std_logic;
SIGNAL \disp|buffer_ptr[9]~52_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[9]~53\ : std_logic;
SIGNAL \disp|buffer_ptr[10]~54_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[10]~55\ : std_logic;
SIGNAL \disp|buffer_ptr[11]~56_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[11]~57\ : std_logic;
SIGNAL \disp|buffer_ptr[12]~58_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[12]~59\ : std_logic;
SIGNAL \disp|buffer_ptr[13]~60_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[13]~61\ : std_logic;
SIGNAL \disp|buffer_ptr[14]~62_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[14]~63\ : std_logic;
SIGNAL \disp|buffer_ptr[15]~64_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[15]~65\ : std_logic;
SIGNAL \disp|buffer_ptr[16]~66_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[16]~67\ : std_logic;
SIGNAL \disp|buffer_ptr[17]~68_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[17]~69\ : std_logic;
SIGNAL \disp|buffer_ptr[18]~70_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[18]~71\ : std_logic;
SIGNAL \disp|buffer_ptr[19]~72_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[19]~73\ : std_logic;
SIGNAL \disp|buffer_ptr[20]~74_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[20]~75\ : std_logic;
SIGNAL \disp|buffer_ptr[21]~76_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[21]~77\ : std_logic;
SIGNAL \disp|buffer_ptr[22]~78_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[22]~79\ : std_logic;
SIGNAL \disp|buffer_ptr[23]~80_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[23]~81\ : std_logic;
SIGNAL \disp|buffer_ptr[24]~82_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[24]~83\ : std_logic;
SIGNAL \disp|buffer_ptr[25]~84_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[25]~85\ : std_logic;
SIGNAL \disp|buffer_ptr[26]~86_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[26]~87\ : std_logic;
SIGNAL \disp|buffer_ptr[27]~88_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[27]~89\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~90_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~91\ : std_logic;
SIGNAL \disp|buffer_ptr[29]~92_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[29]~93\ : std_logic;
SIGNAL \disp|buffer_ptr[30]~95\ : std_logic;
SIGNAL \disp|buffer_ptr[31]~96_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~32_combout\ : std_logic;
SIGNAL \disp|process_0~20_combout\ : std_logic;
SIGNAL \disp|process_0~16_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[28]~33_combout\ : std_logic;
SIGNAL \disp|buffer_ptr[30]~94_combout\ : std_logic;
SIGNAL \disp|Add4~11\ : std_logic;
SIGNAL \disp|Add4~13\ : std_logic;
SIGNAL \disp|Add4~15\ : std_logic;
SIGNAL \disp|Add4~17\ : std_logic;
SIGNAL \disp|Add4~19\ : std_logic;
SIGNAL \disp|Add4~21\ : std_logic;
SIGNAL \disp|Add4~23\ : std_logic;
SIGNAL \disp|Add4~25\ : std_logic;
SIGNAL \disp|Add4~27\ : std_logic;
SIGNAL \disp|Add4~29\ : std_logic;
SIGNAL \disp|Add4~31\ : std_logic;
SIGNAL \disp|Add4~33\ : std_logic;
SIGNAL \disp|Add4~35\ : std_logic;
SIGNAL \disp|Add4~37\ : std_logic;
SIGNAL \disp|Add4~39\ : std_logic;
SIGNAL \disp|Add4~41\ : std_logic;
SIGNAL \disp|Add4~43\ : std_logic;
SIGNAL \disp|Add4~45\ : std_logic;
SIGNAL \disp|Add4~47\ : std_logic;
SIGNAL \disp|Add4~49\ : std_logic;
SIGNAL \disp|Add4~51\ : std_logic;
SIGNAL \disp|Add4~53\ : std_logic;
SIGNAL \disp|Add4~55\ : std_logic;
SIGNAL \disp|Add4~57\ : std_logic;
SIGNAL \disp|Add4~59\ : std_logic;
SIGNAL \disp|Add4~60_combout\ : std_logic;
SIGNAL \disp|Add4~61\ : std_logic;
SIGNAL \disp|Add4~62_combout\ : std_logic;
SIGNAL \disp|Equal5~19_combout\ : std_logic;
SIGNAL \disp|Add4~52_combout\ : std_logic;
SIGNAL \disp|Add4~54_combout\ : std_logic;
SIGNAL \disp|Equal5~0_combout\ : std_logic;
SIGNAL \disp|Add4~56_combout\ : std_logic;
SIGNAL \disp|Add4~24_combout\ : std_logic;
SIGNAL \disp|Add4~26_combout\ : std_logic;
SIGNAL \disp|Equal5~8_combout\ : std_logic;
SIGNAL \disp|Add4~22_combout\ : std_logic;
SIGNAL \disp|Add4~20_combout\ : std_logic;
SIGNAL \disp|Equal5~7_combout\ : std_logic;
SIGNAL \disp|Add4~30_combout\ : std_logic;
SIGNAL \disp|Add4~28_combout\ : std_logic;
SIGNAL \disp|Equal5~9_combout\ : std_logic;
SIGNAL \disp|Add4~18_combout\ : std_logic;
SIGNAL \disp|Add4~16_combout\ : std_logic;
SIGNAL \disp|Equal5~6_combout\ : std_logic;
SIGNAL \disp|Equal5~10_combout\ : std_logic;
SIGNAL \disp|Equal5~2_combout\ : std_logic;
SIGNAL \disp|Equal5~1_combout\ : std_logic;
SIGNAL \disp|Add4~12_combout\ : std_logic;
SIGNAL \disp|Add4~14_combout\ : std_logic;
SIGNAL \disp|Equal5~4_combout\ : std_logic;
SIGNAL \disp|Equal5~3_combout\ : std_logic;
SIGNAL \disp|Equal5~5_combout\ : std_logic;
SIGNAL \disp|Equal5~11_combout\ : std_logic;
SIGNAL \disp|Add4~58_combout\ : std_logic;
SIGNAL \disp|Add4~48_combout\ : std_logic;
SIGNAL \disp|Add4~50_combout\ : std_logic;
SIGNAL \disp|Equal5~17_combout\ : std_logic;
SIGNAL \disp|Add4~36_combout\ : std_logic;
SIGNAL \disp|Add4~38_combout\ : std_logic;
SIGNAL \disp|Equal5~13_combout\ : std_logic;
SIGNAL \disp|Add4~32_combout\ : std_logic;
SIGNAL \disp|Add4~34_combout\ : std_logic;
SIGNAL \disp|Equal5~12_combout\ : std_logic;
SIGNAL \disp|Add4~40_combout\ : std_logic;
SIGNAL \disp|Add4~42_combout\ : std_logic;
SIGNAL \disp|Equal5~14_combout\ : std_logic;
SIGNAL \disp|Add4~44_combout\ : std_logic;
SIGNAL \disp|Add4~46_combout\ : std_logic;
SIGNAL \disp|Equal5~15_combout\ : std_logic;
SIGNAL \disp|Equal5~16_combout\ : std_logic;
SIGNAL \disp|Equal5~18_combout\ : std_logic;
SIGNAL \disp|Equal5~20_combout\ : std_logic;
SIGNAL \disp|print_ptr[14]~97_combout\ : std_logic;
SIGNAL \disp|o_display_data[3]~4_combout\ : std_logic;
SIGNAL \disp|print_ptr[14]~98_combout\ : std_logic;
SIGNAL \disp|print_ptr[0]~34\ : std_logic;
SIGNAL \disp|print_ptr[1]~35_combout\ : std_logic;
SIGNAL \disp|print_ptr[1]~36\ : std_logic;
SIGNAL \disp|print_ptr[2]~37_combout\ : std_logic;
SIGNAL \disp|print_ptr[2]~38\ : std_logic;
SIGNAL \disp|print_ptr[3]~39_combout\ : std_logic;
SIGNAL \disp|print_ptr[3]~40\ : std_logic;
SIGNAL \disp|print_ptr[4]~41_combout\ : std_logic;
SIGNAL \disp|print_ptr[4]~42\ : std_logic;
SIGNAL \disp|print_ptr[5]~43_combout\ : std_logic;
SIGNAL \disp|print_ptr[5]~44\ : std_logic;
SIGNAL \disp|print_ptr[6]~45_combout\ : std_logic;
SIGNAL \disp|print_ptr[6]~46\ : std_logic;
SIGNAL \disp|print_ptr[7]~47_combout\ : std_logic;
SIGNAL \disp|print_ptr[7]~48\ : std_logic;
SIGNAL \disp|print_ptr[8]~49_combout\ : std_logic;
SIGNAL \disp|print_ptr[8]~50\ : std_logic;
SIGNAL \disp|print_ptr[9]~51_combout\ : std_logic;
SIGNAL \disp|print_ptr[9]~52\ : std_logic;
SIGNAL \disp|print_ptr[10]~53_combout\ : std_logic;
SIGNAL \disp|print_ptr[10]~54\ : std_logic;
SIGNAL \disp|print_ptr[11]~55_combout\ : std_logic;
SIGNAL \disp|print_ptr[11]~56\ : std_logic;
SIGNAL \disp|print_ptr[12]~57_combout\ : std_logic;
SIGNAL \disp|print_ptr[12]~58\ : std_logic;
SIGNAL \disp|print_ptr[13]~59_combout\ : std_logic;
SIGNAL \disp|print_ptr[13]~60\ : std_logic;
SIGNAL \disp|print_ptr[14]~61_combout\ : std_logic;
SIGNAL \disp|print_ptr[14]~62\ : std_logic;
SIGNAL \disp|print_ptr[15]~63_combout\ : std_logic;
SIGNAL \disp|print_ptr[15]~64\ : std_logic;
SIGNAL \disp|print_ptr[16]~65_combout\ : std_logic;
SIGNAL \disp|print_ptr[16]~66\ : std_logic;
SIGNAL \disp|print_ptr[17]~67_combout\ : std_logic;
SIGNAL \disp|print_ptr[17]~68\ : std_logic;
SIGNAL \disp|print_ptr[18]~69_combout\ : std_logic;
SIGNAL \disp|print_ptr[18]~70\ : std_logic;
SIGNAL \disp|print_ptr[19]~71_combout\ : std_logic;
SIGNAL \disp|print_ptr[19]~72\ : std_logic;
SIGNAL \disp|print_ptr[20]~73_combout\ : std_logic;
SIGNAL \disp|print_ptr[20]~74\ : std_logic;
SIGNAL \disp|print_ptr[21]~75_combout\ : std_logic;
SIGNAL \disp|print_ptr[21]~76\ : std_logic;
SIGNAL \disp|print_ptr[22]~77_combout\ : std_logic;
SIGNAL \disp|print_ptr[22]~78\ : std_logic;
SIGNAL \disp|print_ptr[23]~79_combout\ : std_logic;
SIGNAL \disp|print_ptr[23]~80\ : std_logic;
SIGNAL \disp|print_ptr[24]~81_combout\ : std_logic;
SIGNAL \disp|print_ptr[24]~82\ : std_logic;
SIGNAL \disp|print_ptr[25]~83_combout\ : std_logic;
SIGNAL \disp|print_ptr[25]~84\ : std_logic;
SIGNAL \disp|print_ptr[26]~85_combout\ : std_logic;
SIGNAL \disp|print_ptr[26]~86\ : std_logic;
SIGNAL \disp|print_ptr[27]~87_combout\ : std_logic;
SIGNAL \disp|print_ptr[27]~88\ : std_logic;
SIGNAL \disp|print_ptr[28]~89_combout\ : std_logic;
SIGNAL \disp|print_ptr[28]~90\ : std_logic;
SIGNAL \disp|print_ptr[29]~91_combout\ : std_logic;
SIGNAL \disp|print_ptr[29]~92\ : std_logic;
SIGNAL \disp|print_ptr[30]~93_combout\ : std_logic;
SIGNAL \disp|print_ptr[30]~94\ : std_logic;
SIGNAL \disp|print_ptr[31]~95_combout\ : std_logic;
SIGNAL \disp|LessThan9~1_cout\ : std_logic;
SIGNAL \disp|LessThan9~3_cout\ : std_logic;
SIGNAL \disp|LessThan9~5_cout\ : std_logic;
SIGNAL \disp|LessThan9~7_cout\ : std_logic;
SIGNAL \disp|LessThan9~9_cout\ : std_logic;
SIGNAL \disp|LessThan9~11_cout\ : std_logic;
SIGNAL \disp|LessThan9~13_cout\ : std_logic;
SIGNAL \disp|LessThan9~15_cout\ : std_logic;
SIGNAL \disp|LessThan9~17_cout\ : std_logic;
SIGNAL \disp|LessThan9~19_cout\ : std_logic;
SIGNAL \disp|LessThan9~21_cout\ : std_logic;
SIGNAL \disp|LessThan9~23_cout\ : std_logic;
SIGNAL \disp|LessThan9~25_cout\ : std_logic;
SIGNAL \disp|LessThan9~27_cout\ : std_logic;
SIGNAL \disp|LessThan9~29_cout\ : std_logic;
SIGNAL \disp|LessThan9~31_cout\ : std_logic;
SIGNAL \disp|LessThan9~33_cout\ : std_logic;
SIGNAL \disp|LessThan9~35_cout\ : std_logic;
SIGNAL \disp|LessThan9~37_cout\ : std_logic;
SIGNAL \disp|LessThan9~39_cout\ : std_logic;
SIGNAL \disp|LessThan9~41_cout\ : std_logic;
SIGNAL \disp|LessThan9~43_cout\ : std_logic;
SIGNAL \disp|LessThan9~45_cout\ : std_logic;
SIGNAL \disp|LessThan9~47_cout\ : std_logic;
SIGNAL \disp|LessThan9~49_cout\ : std_logic;
SIGNAL \disp|LessThan9~51_cout\ : std_logic;
SIGNAL \disp|LessThan9~53_cout\ : std_logic;
SIGNAL \disp|LessThan9~55_cout\ : std_logic;
SIGNAL \disp|LessThan9~57_cout\ : std_logic;
SIGNAL \disp|LessThan9~59_cout\ : std_logic;
SIGNAL \disp|LessThan9~61_cout\ : std_logic;
SIGNAL \disp|LessThan9~62_combout\ : std_logic;
SIGNAL \disp|trans_cnt[24]~39_combout\ : std_logic;
SIGNAL \disp|trans_cnt[0]~33\ : std_logic;
SIGNAL \disp|trans_cnt[1]~34_combout\ : std_logic;
SIGNAL \disp|trans_cnt[1]~35\ : std_logic;
SIGNAL \disp|trans_cnt[2]~36_combout\ : std_logic;
SIGNAL \disp|trans_cnt[2]~37\ : std_logic;
SIGNAL \disp|trans_cnt[3]~40_combout\ : std_logic;
SIGNAL \disp|trans_cnt[3]~41\ : std_logic;
SIGNAL \disp|trans_cnt[4]~42_combout\ : std_logic;
SIGNAL \disp|trans_cnt[4]~43\ : std_logic;
SIGNAL \disp|trans_cnt[5]~44_combout\ : std_logic;
SIGNAL \disp|trans_cnt[5]~45\ : std_logic;
SIGNAL \disp|trans_cnt[6]~46_combout\ : std_logic;
SIGNAL \disp|trans_cnt[6]~47\ : std_logic;
SIGNAL \disp|trans_cnt[7]~48_combout\ : std_logic;
SIGNAL \disp|trans_cnt[7]~49\ : std_logic;
SIGNAL \disp|trans_cnt[8]~50_combout\ : std_logic;
SIGNAL \disp|trans_cnt[8]~51\ : std_logic;
SIGNAL \disp|trans_cnt[9]~52_combout\ : std_logic;
SIGNAL \disp|trans_cnt[9]~53\ : std_logic;
SIGNAL \disp|trans_cnt[10]~54_combout\ : std_logic;
SIGNAL \disp|trans_cnt[10]~55\ : std_logic;
SIGNAL \disp|trans_cnt[11]~56_combout\ : std_logic;
SIGNAL \disp|trans_cnt[11]~57\ : std_logic;
SIGNAL \disp|trans_cnt[12]~58_combout\ : std_logic;
SIGNAL \disp|trans_cnt[12]~59\ : std_logic;
SIGNAL \disp|trans_cnt[13]~60_combout\ : std_logic;
SIGNAL \disp|trans_cnt[13]~61\ : std_logic;
SIGNAL \disp|trans_cnt[14]~62_combout\ : std_logic;
SIGNAL \disp|trans_cnt[14]~63\ : std_logic;
SIGNAL \disp|trans_cnt[15]~64_combout\ : std_logic;
SIGNAL \disp|trans_cnt[15]~65\ : std_logic;
SIGNAL \disp|trans_cnt[16]~66_combout\ : std_logic;
SIGNAL \disp|trans_cnt[16]~67\ : std_logic;
SIGNAL \disp|trans_cnt[17]~68_combout\ : std_logic;
SIGNAL \disp|trans_cnt[17]~69\ : std_logic;
SIGNAL \disp|trans_cnt[18]~70_combout\ : std_logic;
SIGNAL \disp|trans_cnt[18]~71\ : std_logic;
SIGNAL \disp|trans_cnt[19]~72_combout\ : std_logic;
SIGNAL \disp|Equal4~5_combout\ : std_logic;
SIGNAL \disp|trans_cnt[19]~73\ : std_logic;
SIGNAL \disp|trans_cnt[20]~74_combout\ : std_logic;
SIGNAL \disp|trans_cnt[20]~75\ : std_logic;
SIGNAL \disp|trans_cnt[21]~76_combout\ : std_logic;
SIGNAL \disp|trans_cnt[21]~77\ : std_logic;
SIGNAL \disp|trans_cnt[22]~78_combout\ : std_logic;
SIGNAL \disp|trans_cnt[22]~79\ : std_logic;
SIGNAL \disp|trans_cnt[23]~80_combout\ : std_logic;
SIGNAL \disp|Equal4~6_combout\ : std_logic;
SIGNAL \disp|trans_cnt[23]~81\ : std_logic;
SIGNAL \disp|trans_cnt[24]~82_combout\ : std_logic;
SIGNAL \disp|trans_cnt[24]~83\ : std_logic;
SIGNAL \disp|trans_cnt[25]~84_combout\ : std_logic;
SIGNAL \disp|trans_cnt[25]~85\ : std_logic;
SIGNAL \disp|trans_cnt[26]~86_combout\ : std_logic;
SIGNAL \disp|trans_cnt[26]~87\ : std_logic;
SIGNAL \disp|trans_cnt[27]~88_combout\ : std_logic;
SIGNAL \disp|trans_cnt[27]~89\ : std_logic;
SIGNAL \disp|trans_cnt[28]~90_combout\ : std_logic;
SIGNAL \disp|trans_cnt[28]~91\ : std_logic;
SIGNAL \disp|trans_cnt[29]~92_combout\ : std_logic;
SIGNAL \disp|trans_cnt[29]~93\ : std_logic;
SIGNAL \disp|trans_cnt[30]~94_combout\ : std_logic;
SIGNAL \disp|trans_cnt[30]~95\ : std_logic;
SIGNAL \disp|trans_cnt[31]~96_combout\ : std_logic;
SIGNAL \disp|Equal4~8_combout\ : std_logic;
SIGNAL \disp|Equal4~7_combout\ : std_logic;
SIGNAL \disp|Equal4~9_combout\ : std_logic;
SIGNAL \disp|Equal4~1_combout\ : std_logic;
SIGNAL \disp|Equal4~2_combout\ : std_logic;
SIGNAL \disp|Equal4~3_combout\ : std_logic;
SIGNAL \disp|Equal4~0_combout\ : std_logic;
SIGNAL \disp|Equal4~4_combout\ : std_logic;
SIGNAL \disp|Equal4~10_combout\ : std_logic;
SIGNAL \disp|Selector14~6_combout\ : std_logic;
SIGNAL \disp|init_ptr[0]~32_combout\ : std_logic;
SIGNAL \disp|init_ptr[8]~49\ : std_logic;
SIGNAL \disp|init_ptr[9]~50_combout\ : std_logic;
SIGNAL \disp|init_ptr[9]~51\ : std_logic;
SIGNAL \disp|init_ptr[10]~52_combout\ : std_logic;
SIGNAL \disp|init_ptr[10]~53\ : std_logic;
SIGNAL \disp|init_ptr[11]~54_combout\ : std_logic;
SIGNAL \disp|init_ptr[11]~55\ : std_logic;
SIGNAL \disp|init_ptr[12]~56_combout\ : std_logic;
SIGNAL \disp|init_ptr[12]~57\ : std_logic;
SIGNAL \disp|init_ptr[13]~58_combout\ : std_logic;
SIGNAL \disp|init_ptr[13]~59\ : std_logic;
SIGNAL \disp|init_ptr[14]~60_combout\ : std_logic;
SIGNAL \disp|init_ptr[14]~61\ : std_logic;
SIGNAL \disp|init_ptr[15]~62_combout\ : std_logic;
SIGNAL \disp|init_ptr[15]~63\ : std_logic;
SIGNAL \disp|init_ptr[16]~64_combout\ : std_logic;
SIGNAL \disp|init_ptr[16]~65\ : std_logic;
SIGNAL \disp|init_ptr[17]~66_combout\ : std_logic;
SIGNAL \disp|init_ptr[17]~67\ : std_logic;
SIGNAL \disp|init_ptr[18]~68_combout\ : std_logic;
SIGNAL \disp|init_ptr[18]~69\ : std_logic;
SIGNAL \disp|init_ptr[19]~70_combout\ : std_logic;
SIGNAL \disp|init_ptr[19]~71\ : std_logic;
SIGNAL \disp|init_ptr[20]~72_combout\ : std_logic;
SIGNAL \disp|init_ptr[20]~73\ : std_logic;
SIGNAL \disp|init_ptr[21]~74_combout\ : std_logic;
SIGNAL \disp|init_ptr[21]~75\ : std_logic;
SIGNAL \disp|init_ptr[22]~76_combout\ : std_logic;
SIGNAL \disp|init_ptr[22]~77\ : std_logic;
SIGNAL \disp|init_ptr[23]~78_combout\ : std_logic;
SIGNAL \disp|init_ptr[23]~79\ : std_logic;
SIGNAL \disp|init_ptr[24]~80_combout\ : std_logic;
SIGNAL \disp|init_ptr[24]~81\ : std_logic;
SIGNAL \disp|init_ptr[25]~82_combout\ : std_logic;
SIGNAL \disp|init_ptr[25]~83\ : std_logic;
SIGNAL \disp|init_ptr[26]~84_combout\ : std_logic;
SIGNAL \disp|init_ptr[26]~85\ : std_logic;
SIGNAL \disp|init_ptr[27]~86_combout\ : std_logic;
SIGNAL \disp|init_ptr[27]~87\ : std_logic;
SIGNAL \disp|init_ptr[28]~88_combout\ : std_logic;
SIGNAL \disp|init_ptr[28]~89\ : std_logic;
SIGNAL \disp|init_ptr[29]~90_combout\ : std_logic;
SIGNAL \disp|init_ptr[29]~91\ : std_logic;
SIGNAL \disp|init_ptr[30]~92_combout\ : std_logic;
SIGNAL \disp|init_ptr[30]~93\ : std_logic;
SIGNAL \disp|init_ptr[31]~94_combout\ : std_logic;
SIGNAL \disp|LessThan8~7_combout\ : std_logic;
SIGNAL \disp|LessThan8~5_combout\ : std_logic;
SIGNAL \disp|LessThan8~6_combout\ : std_logic;
SIGNAL \disp|LessThan8~8_combout\ : std_logic;
SIGNAL \disp|LessThan8~9_combout\ : std_logic;
SIGNAL \disp|Selector343~0_combout\ : std_logic;
SIGNAL \disp|init_flag~q\ : std_logic;
SIGNAL \disp|Selector11~1_combout\ : std_logic;
SIGNAL \disp|Equal0~0_combout\ : std_logic;
SIGNAL \disp|Equal0~1_combout\ : std_logic;
SIGNAL \disp|process_0~3_combout\ : std_logic;
SIGNAL \disp|process_0~4_combout\ : std_logic;
SIGNAL \disp|Selector11~2_combout\ : std_logic;
SIGNAL \disp|state.init~q\ : std_logic;
SIGNAL \disp|init_ptr[10]~96_combout\ : std_logic;
SIGNAL \disp|init_ptr[0]~33\ : std_logic;
SIGNAL \disp|init_ptr[1]~34_combout\ : std_logic;
SIGNAL \disp|init_ptr[1]~35\ : std_logic;
SIGNAL \disp|init_ptr[2]~36_combout\ : std_logic;
SIGNAL \disp|init_ptr[2]~37\ : std_logic;
SIGNAL \disp|init_ptr[3]~38_combout\ : std_logic;
SIGNAL \disp|init_ptr[3]~39\ : std_logic;
SIGNAL \disp|init_ptr[4]~40_combout\ : std_logic;
SIGNAL \disp|init_ptr[4]~41\ : std_logic;
SIGNAL \disp|init_ptr[5]~42_combout\ : std_logic;
SIGNAL \disp|init_ptr[5]~43\ : std_logic;
SIGNAL \disp|init_ptr[6]~44_combout\ : std_logic;
SIGNAL \disp|init_ptr[6]~45\ : std_logic;
SIGNAL \disp|init_ptr[7]~46_combout\ : std_logic;
SIGNAL \disp|init_ptr[7]~47\ : std_logic;
SIGNAL \disp|init_ptr[8]~48_combout\ : std_logic;
SIGNAL \disp|LessThan8~1_combout\ : std_logic;
SIGNAL \disp|LessThan8~2_combout\ : std_logic;
SIGNAL \disp|LessThan8~3_combout\ : std_logic;
SIGNAL \disp|LessThan8~0_combout\ : std_logic;
SIGNAL \disp|LessThan8~4_combout\ : std_logic;
SIGNAL \disp|Selector14~3_combout\ : std_logic;
SIGNAL \disp|Selector14~4_combout\ : std_logic;
SIGNAL \disp|Selector14~5_combout\ : std_logic;
SIGNAL \disp|state.reset~q\ : std_logic;
SIGNAL \disp|Selector12~1_combout\ : std_logic;
SIGNAL \disp|Selector12~0_combout\ : std_logic;
SIGNAL \disp|Selector12~2_combout\ : std_logic;
SIGNAL \disp|state.CharSelect~q\ : std_logic;
SIGNAL \disp|Selector358~0_combout\ : std_logic;
SIGNAL \disp|start~q\ : std_logic;
SIGNAL \disp|Selector13~2_combout\ : std_logic;
SIGNAL \disp|Selector13~3_combout\ : std_logic;
SIGNAL \disp|state.transmit~q\ : std_logic;
SIGNAL \disp|Selector344~0_combout\ : std_logic;
SIGNAL \disp|Selector344~1_combout\ : std_logic;
SIGNAL \disp|transmit_flag~q\ : std_logic;
SIGNAL \disp|delay_cnt[7]~1_combout\ : std_logic;
SIGNAL \disp|LessThan0~0_combout\ : std_logic;
SIGNAL \disp|delay_cnt[0]~2_combout\ : std_logic;
SIGNAL \disp|Add0~5\ : std_logic;
SIGNAL \disp|Add0~6_combout\ : std_logic;
SIGNAL \disp|Add0~18_combout\ : std_logic;
SIGNAL \disp|LessThan6~0_combout\ : std_logic;
SIGNAL \disp|process_0~2_combout\ : std_logic;
SIGNAL \disp|state~14_combout\ : std_logic;
SIGNAL \disp|Add0~23_combout\ : std_logic;
SIGNAL \disp|Add0~1\ : std_logic;
SIGNAL \disp|Add0~2_combout\ : std_logic;
SIGNAL \disp|Add0~24_combout\ : std_logic;
SIGNAL \disp|LessThan2~1_combout\ : std_logic;
SIGNAL \disp|LessThan2~2_combout\ : std_logic;
SIGNAL \disp|o_display_reset~q\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|w_clock_stretch~0_combout\ : std_logic;
SIGNAL \inst|w_clock_stretch~q\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|count~4_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|count~8_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|count~5_combout\ : std_logic;
SIGNAL \inst|count~7_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|w_data_clk~0_combout\ : std_logic;
SIGNAL \inst|w_data_clk~q\ : std_logic;
SIGNAL \inst|w_data_clk_prev~feeder_combout\ : std_logic;
SIGNAL \inst|w_data_clk_prev~q\ : std_logic;
SIGNAL \inst|w_scl_enable~0_combout\ : std_logic;
SIGNAL \disp|char_ptr~11_combout\ : std_logic;
SIGNAL \disp|Mux4~7_combout\ : std_logic;
SIGNAL \disp|Mux4~8_combout\ : std_logic;
SIGNAL \disp|Mux4~2_combout\ : std_logic;
SIGNAL \disp|Mux4~3_combout\ : std_logic;
SIGNAL \disp|Mux4~4_combout\ : std_logic;
SIGNAL \disp|Mux4~5_combout\ : std_logic;
SIGNAL \disp|Mux4~6_combout\ : std_logic;
SIGNAL \disp|Mux4~0_combout\ : std_logic;
SIGNAL \disp|Mux4~1_combout\ : std_logic;
SIGNAL \disp|Mux4~9_combout\ : std_logic;
SIGNAL \disp|Mux4~17_combout\ : std_logic;
SIGNAL \disp|Mux4~18_combout\ : std_logic;
SIGNAL \disp|Mux4~10_combout\ : std_logic;
SIGNAL \disp|Mux4~11_combout\ : std_logic;
SIGNAL \disp|Mux4~14_combout\ : std_logic;
SIGNAL \disp|Mux4~15_combout\ : std_logic;
SIGNAL \disp|Mux4~12_combout\ : std_logic;
SIGNAL \disp|Mux4~13_combout\ : std_logic;
SIGNAL \disp|Mux4~16_combout\ : std_logic;
SIGNAL \disp|Mux4~19_combout\ : std_logic;
SIGNAL \disp|Mux4~20_combout\ : std_logic;
SIGNAL \disp|char_ptr~25_combout\ : std_logic;
SIGNAL \disp|Mux7~7_combout\ : std_logic;
SIGNAL \disp|Mux7~8_combout\ : std_logic;
SIGNAL \disp|Mux7~2_combout\ : std_logic;
SIGNAL \disp|Mux7~3_combout\ : std_logic;
SIGNAL \disp|Mux7~4_combout\ : std_logic;
SIGNAL \disp|Mux7~5_combout\ : std_logic;
SIGNAL \disp|Mux7~6_combout\ : std_logic;
SIGNAL \disp|Mux7~0_combout\ : std_logic;
SIGNAL \disp|Mux7~1_combout\ : std_logic;
SIGNAL \disp|Mux7~9_combout\ : std_logic;
SIGNAL \disp|Mux7~17_combout\ : std_logic;
SIGNAL \disp|Mux7~18_combout\ : std_logic;
SIGNAL \disp|Mux7~10_combout\ : std_logic;
SIGNAL \disp|Mux7~11_combout\ : std_logic;
SIGNAL \disp|Mux7~12_combout\ : std_logic;
SIGNAL \disp|Mux7~13_combout\ : std_logic;
SIGNAL \disp|Mux7~14_combout\ : std_logic;
SIGNAL \disp|Mux7~15_combout\ : std_logic;
SIGNAL \disp|Mux7~16_combout\ : std_logic;
SIGNAL \disp|Mux7~19_combout\ : std_logic;
SIGNAL \disp|Mux7~20_combout\ : std_logic;
SIGNAL \disp|Mux7~21_combout\ : std_logic;
SIGNAL \disp|Mux2~0_combout\ : std_logic;
SIGNAL \disp|Mux2~1_combout\ : std_logic;
SIGNAL \disp|Mux2~4_combout\ : std_logic;
SIGNAL \disp|Mux2~5_combout\ : std_logic;
SIGNAL \disp|Mux2~2_combout\ : std_logic;
SIGNAL \disp|Mux2~3_combout\ : std_logic;
SIGNAL \disp|Mux2~6_combout\ : std_logic;
SIGNAL \disp|Mux2~7_combout\ : std_logic;
SIGNAL \disp|Mux2~8_combout\ : std_logic;
SIGNAL \disp|Mux2~9_combout\ : std_logic;
SIGNAL \disp|Mux2~17_combout\ : std_logic;
SIGNAL \disp|Mux2~18_combout\ : std_logic;
SIGNAL \disp|Mux2~10_combout\ : std_logic;
SIGNAL \disp|Mux2~11_combout\ : std_logic;
SIGNAL \disp|Mux2~12_combout\ : std_logic;
SIGNAL \disp|Mux2~13_combout\ : std_logic;
SIGNAL \disp|Mux2~14_combout\ : std_logic;
SIGNAL \disp|Mux2~15_combout\ : std_logic;
SIGNAL \disp|Mux2~16_combout\ : std_logic;
SIGNAL \disp|Mux2~19_combout\ : std_logic;
SIGNAL \disp|Mux2~20_combout\ : std_logic;
SIGNAL \disp|Mux2~21_combout\ : std_logic;
SIGNAL \disp|Mux6~2_combout\ : std_logic;
SIGNAL \disp|Mux6~3_combout\ : std_logic;
SIGNAL \disp|Mux6~4_combout\ : std_logic;
SIGNAL \disp|Mux6~5_combout\ : std_logic;
SIGNAL \disp|Mux6~6_combout\ : std_logic;
SIGNAL \disp|Mux6~7_combout\ : std_logic;
SIGNAL \disp|Mux6~8_combout\ : std_logic;
SIGNAL \disp|Mux6~0_combout\ : std_logic;
SIGNAL \disp|Mux6~1_combout\ : std_logic;
SIGNAL \disp|Mux6~9_combout\ : std_logic;
SIGNAL \disp|Mux6~17_combout\ : std_logic;
SIGNAL \disp|Mux6~18_combout\ : std_logic;
SIGNAL \disp|Mux6~14_combout\ : std_logic;
SIGNAL \disp|Mux6~15_combout\ : std_logic;
SIGNAL \disp|Mux6~12_combout\ : std_logic;
SIGNAL \disp|Mux6~13_combout\ : std_logic;
SIGNAL \disp|Mux6~16_combout\ : std_logic;
SIGNAL \disp|Mux6~10_combout\ : std_logic;
SIGNAL \disp|Mux6~11_combout\ : std_logic;
SIGNAL \disp|Mux6~19_combout\ : std_logic;
SIGNAL \disp|Mux6~20_combout\ : std_logic;
SIGNAL \disp|Mux6~21_combout\ : std_logic;
SIGNAL \disp|Mux1~12_combout\ : std_logic;
SIGNAL \disp|Mux1~13_combout\ : std_logic;
SIGNAL \disp|Mux1~14_combout\ : std_logic;
SIGNAL \disp|Mux1~15_combout\ : std_logic;
SIGNAL \disp|Mux1~16_combout\ : std_logic;
SIGNAL \disp|Mux1~10_combout\ : std_logic;
SIGNAL \disp|Mux1~11_combout\ : std_logic;
SIGNAL \disp|Mux1~17_combout\ : std_logic;
SIGNAL \disp|Mux1~18_combout\ : std_logic;
SIGNAL \disp|Mux1~19_combout\ : std_logic;
SIGNAL \disp|Mux1~7_combout\ : std_logic;
SIGNAL \disp|Mux1~8_combout\ : std_logic;
SIGNAL \disp|Mux1~0_combout\ : std_logic;
SIGNAL \disp|Mux1~1_combout\ : std_logic;
SIGNAL \disp|Mux1~2_combout\ : std_logic;
SIGNAL \disp|Mux1~3_combout\ : std_logic;
SIGNAL \disp|Mux1~4_combout\ : std_logic;
SIGNAL \disp|Mux1~5_combout\ : std_logic;
SIGNAL \disp|Mux1~6_combout\ : std_logic;
SIGNAL \disp|Mux1~9_combout\ : std_logic;
SIGNAL \disp|Mux1~20_combout\ : std_logic;
SIGNAL \disp|Mux1~21_combout\ : std_logic;
SIGNAL \disp|Mux3~7_combout\ : std_logic;
SIGNAL \disp|Mux3~8_combout\ : std_logic;
SIGNAL \disp|Mux3~0_combout\ : std_logic;
SIGNAL \disp|Mux3~1_combout\ : std_logic;
SIGNAL \disp|Mux3~2_combout\ : std_logic;
SIGNAL \disp|Mux3~3_combout\ : std_logic;
SIGNAL \disp|Mux3~4_combout\ : std_logic;
SIGNAL \disp|Mux3~5_combout\ : std_logic;
SIGNAL \disp|Mux3~6_combout\ : std_logic;
SIGNAL \disp|Mux3~9_combout\ : std_logic;
SIGNAL \disp|Mux3~10_combout\ : std_logic;
SIGNAL \disp|Mux3~11_combout\ : std_logic;
SIGNAL \disp|Mux3~17_combout\ : std_logic;
SIGNAL \disp|Mux3~18_combout\ : std_logic;
SIGNAL \disp|Mux3~12_combout\ : std_logic;
SIGNAL \disp|Mux3~13_combout\ : std_logic;
SIGNAL \disp|Mux3~14_combout\ : std_logic;
SIGNAL \disp|Mux3~15_combout\ : std_logic;
SIGNAL \disp|Mux3~16_combout\ : std_logic;
SIGNAL \disp|Mux3~19_combout\ : std_logic;
SIGNAL \disp|Mux3~20_combout\ : std_logic;
SIGNAL \disp|Mux3~21_combout\ : std_logic;
SIGNAL \disp|Mux10~5_combout\ : std_logic;
SIGNAL \disp|Mux10~4_combout\ : std_logic;
SIGNAL \disp|Mux10~6_combout\ : std_logic;
SIGNAL \disp|char_ptr~26_combout\ : std_logic;
SIGNAL \disp|Mux4~21_combout\ : std_logic;
SIGNAL \disp|Mux0~14_combout\ : std_logic;
SIGNAL \disp|Mux0~15_combout\ : std_logic;
SIGNAL \disp|Mux0~12_combout\ : std_logic;
SIGNAL \disp|Mux0~13_combout\ : std_logic;
SIGNAL \disp|Mux0~16_combout\ : std_logic;
SIGNAL \disp|Mux0~17_combout\ : std_logic;
SIGNAL \disp|Mux0~18_combout\ : std_logic;
SIGNAL \disp|Mux0~10_combout\ : std_logic;
SIGNAL \disp|Mux0~11_combout\ : std_logic;
SIGNAL \disp|Mux0~19_combout\ : std_logic;
SIGNAL \disp|Mux0~7_combout\ : std_logic;
SIGNAL \disp|Mux0~8_combout\ : std_logic;
SIGNAL \disp|Mux0~0_combout\ : std_logic;
SIGNAL \disp|Mux0~1_combout\ : std_logic;
SIGNAL \disp|Mux0~4_combout\ : std_logic;
SIGNAL \disp|Mux0~5_combout\ : std_logic;
SIGNAL \disp|Mux0~2_combout\ : std_logic;
SIGNAL \disp|Mux0~3_combout\ : std_logic;
SIGNAL \disp|Mux0~6_combout\ : std_logic;
SIGNAL \disp|Mux0~9_combout\ : std_logic;
SIGNAL \disp|Mux0~20_combout\ : std_logic;
SIGNAL \disp|char_ptr~27_combout\ : std_logic;
SIGNAL \disp|char_ptr~6_combout\ : std_logic;
SIGNAL \disp|Add6~0_combout\ : std_logic;
SIGNAL \disp|o_display_data[3]~5_combout\ : std_logic;
SIGNAL \disp|char_ptr[5]~41_combout\ : std_logic;
SIGNAL \disp|Selector389~4_combout\ : std_logic;
SIGNAL \disp|Selector390~0_combout\ : std_logic;
SIGNAL \disp|Selector390~1_combout\ : std_logic;
SIGNAL \disp|Add6~1\ : std_logic;
SIGNAL \disp|Add6~2_combout\ : std_logic;
SIGNAL \disp|Selector389~2_combout\ : std_logic;
SIGNAL \disp|Selector389~3_combout\ : std_logic;
SIGNAL \disp|Add6~3\ : std_logic;
SIGNAL \disp|Add6~4_combout\ : std_logic;
SIGNAL \disp|Mux5~0_combout\ : std_logic;
SIGNAL \disp|Mux5~1_combout\ : std_logic;
SIGNAL \disp|Mux5~7_combout\ : std_logic;
SIGNAL \disp|Mux5~8_combout\ : std_logic;
SIGNAL \disp|Mux5~4_combout\ : std_logic;
SIGNAL \disp|Mux5~5_combout\ : std_logic;
SIGNAL \disp|Mux5~2_combout\ : std_logic;
SIGNAL \disp|Mux5~3_combout\ : std_logic;
SIGNAL \disp|Mux5~6_combout\ : std_logic;
SIGNAL \disp|Mux5~9_combout\ : std_logic;
SIGNAL \disp|Mux5~17_combout\ : std_logic;
SIGNAL \disp|Mux5~18_combout\ : std_logic;
SIGNAL \disp|Mux5~10_combout\ : std_logic;
SIGNAL \disp|Mux5~11_combout\ : std_logic;
SIGNAL \disp|Mux5~12_combout\ : std_logic;
SIGNAL \disp|Mux5~13_combout\ : std_logic;
SIGNAL \disp|Mux5~14_combout\ : std_logic;
SIGNAL \disp|Mux5~15_combout\ : std_logic;
SIGNAL \disp|Mux5~16_combout\ : std_logic;
SIGNAL \disp|Mux5~19_combout\ : std_logic;
SIGNAL \disp|Mux5~20_combout\ : std_logic;
SIGNAL \disp|Mux5~21_combout\ : std_logic;
SIGNAL \disp|char_ptr~15_combout\ : std_logic;
SIGNAL \disp|char_ptr~16_combout\ : std_logic;
SIGNAL \disp|char_ptr~43_combout\ : std_logic;
SIGNAL \disp|Mux13~1_combout\ : std_logic;
SIGNAL \disp|Mux13~0_combout\ : std_logic;
SIGNAL \disp|char_ptr~14_combout\ : std_logic;
SIGNAL \disp|char_ptr~17_combout\ : std_logic;
SIGNAL \disp|char_ptr~18_combout\ : std_logic;
SIGNAL \disp|char_ptr~19_combout\ : std_logic;
SIGNAL \disp|char_ptr[5]~13_combout\ : std_logic;
SIGNAL \disp|Add6~5\ : std_logic;
SIGNAL \disp|Add6~6_combout\ : std_logic;
SIGNAL \disp|char_ptr~20_combout\ : std_logic;
SIGNAL \disp|Mux12~8_combout\ : std_logic;
SIGNAL \disp|char_ptr~21_combout\ : std_logic;
SIGNAL \disp|char_ptr~22_combout\ : std_logic;
SIGNAL \disp|Mux12~5_combout\ : std_logic;
SIGNAL \disp|Mux12~6_combout\ : std_logic;
SIGNAL \disp|Mux12~7_combout\ : std_logic;
SIGNAL \disp|char_ptr~23_combout\ : std_logic;
SIGNAL \disp|Add6~7\ : std_logic;
SIGNAL \disp|Add6~8_combout\ : std_logic;
SIGNAL \disp|Mux11~10_combout\ : std_logic;
SIGNAL \disp|Mux11~6_combout\ : std_logic;
SIGNAL \disp|Mux11~7_combout\ : std_logic;
SIGNAL \disp|Mux11~8_combout\ : std_logic;
SIGNAL \disp|Mux12~4_combout\ : std_logic;
SIGNAL \disp|Mux11~4_combout\ : std_logic;
SIGNAL \disp|Mux11~5_combout\ : std_logic;
SIGNAL \disp|Mux11~9_combout\ : std_logic;
SIGNAL \disp|char_ptr~24_combout\ : std_logic;
SIGNAL \disp|Add6~9\ : std_logic;
SIGNAL \disp|Add6~10_combout\ : std_logic;
SIGNAL \disp|char_ptr~28_combout\ : std_logic;
SIGNAL \disp|char_ptr~29_combout\ : std_logic;
SIGNAL \disp|char_ptr~30_combout\ : std_logic;
SIGNAL \disp|char_ptr~31_combout\ : std_logic;
SIGNAL \disp|char_ptr~32_combout\ : std_logic;
SIGNAL \disp|char_ptr~33_combout\ : std_logic;
SIGNAL \disp|Add6~11\ : std_logic;
SIGNAL \disp|Add6~12_combout\ : std_logic;
SIGNAL \disp|char_ptr~42_combout\ : std_logic;
SIGNAL \disp|char_ptr~8_combout\ : std_logic;
SIGNAL \disp|char_ptr~9_combout\ : std_logic;
SIGNAL \disp|char_ptr~10_combout\ : std_logic;
SIGNAL \disp|Mux10~7_combout\ : std_logic;
SIGNAL \disp|char_ptr~7_combout\ : std_logic;
SIGNAL \disp|char_ptr~12_combout\ : std_logic;
SIGNAL \disp|r_chars~18_combout\ : std_logic;
SIGNAL \disp|char_ptr~35_combout\ : std_logic;
SIGNAL \disp|char_ptr~34_combout\ : std_logic;
SIGNAL \disp|Add6~13\ : std_logic;
SIGNAL \disp|Add6~14_combout\ : std_logic;
SIGNAL \disp|char_ptr~38_combout\ : std_logic;
SIGNAL \disp|Mux8~1_combout\ : std_logic;
SIGNAL \disp|char_ptr~37_combout\ : std_logic;
SIGNAL \disp|Mux8~0_combout\ : std_logic;
SIGNAL \disp|char_ptr~36_combout\ : std_logic;
SIGNAL \disp|char_ptr~39_combout\ : std_logic;
SIGNAL \disp|char_ptr~40_combout\ : std_logic;
SIGNAL \disp|r_chars~19_combout\ : std_logic;
SIGNAL \disp|r_chars~21_combout\ : std_logic;
SIGNAL \disp|r_chars~20_combout\ : std_logic;
SIGNAL \disp|r_chars~22_combout\ : std_logic;
SIGNAL \disp|r_chars~23_combout\ : std_logic;
SIGNAL \disp|r_chars~24_combout\ : std_logic;
SIGNAL \disp|o_display_data[7]~0_combout\ : std_logic;
SIGNAL \disp|r_init~5_combout\ : std_logic;
SIGNAL \disp|o_display_data[7]~6_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|w_data_txrx[7]~0_combout\ : std_logic;
SIGNAL \inst|w_data_txrx[7]~1_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~3_combout\ : std_logic;
SIGNAL \disp|r_chars~8_combout\ : std_logic;
SIGNAL \disp|r_chars~9_combout\ : std_logic;
SIGNAL \disp|r_chars~2_combout\ : std_logic;
SIGNAL \disp|r_chars~10_combout\ : std_logic;
SIGNAL \disp|r_chars~12_combout\ : std_logic;
SIGNAL \disp|r_chars~11_combout\ : std_logic;
SIGNAL \disp|r_chars~13_combout\ : std_logic;
SIGNAL \disp|o_display_data[5]~2_combout\ : std_logic;
SIGNAL \disp|r_init~3_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \disp|r_chars~6_combout\ : std_logic;
SIGNAL \disp|r_chars~7_combout\ : std_logic;
SIGNAL \disp|r_chars~3_combout\ : std_logic;
SIGNAL \disp|r_chars~4_combout\ : std_logic;
SIGNAL \disp|r_chars~5_combout\ : std_logic;
SIGNAL \disp|o_display_data[6]~1_combout\ : std_logic;
SIGNAL \disp|r_init~2_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \disp|r_chars~16_combout\ : std_logic;
SIGNAL \disp|r_chars~17_combout\ : std_logic;
SIGNAL \disp|r_chars~14_combout\ : std_logic;
SIGNAL \disp|r_chars~15_combout\ : std_logic;
SIGNAL \disp|o_display_data[4]~3_combout\ : std_logic;
SIGNAL \disp|r_init~4_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|w_data_txrx[1]~2_combout\ : std_logic;
SIGNAL \disp|r_init~1_combout\ : std_logic;
SIGNAL \disp|r_chars~0_combout\ : std_logic;
SIGNAL \disp|Selector354~0_combout\ : std_logic;
SIGNAL \disp|Selector354~1_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \disp|r_init~0_combout\ : std_logic;
SIGNAL \disp|Selector355~0_combout\ : std_logic;
SIGNAL \disp|Selector355~1_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \disp|Selector14~2_combout\ : std_logic;
SIGNAL \disp|r_chars~1_combout\ : std_logic;
SIGNAL \disp|o_display_data[0]~7_combout\ : std_logic;
SIGNAL \disp|o_display_data[0]~8_combout\ : std_logic;
SIGNAL \disp|o_display_data[0]~9_combout\ : std_logic;
SIGNAL \disp|o_display_data[0]~10_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~0_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~2_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~4_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~5_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~6_combout\ : std_logic;
SIGNAL \inst|o_I2C_sda_txrx~q\ : std_logic;
SIGNAL \inst|w_scl_clk~0_combout\ : std_logic;
SIGNAL \inst|w_scl_clk~q\ : std_logic;
SIGNAL \inst|w_scl_enable~1_combout\ : std_logic;
SIGNAL \inst|w_scl_enable~2_combout\ : std_logic;
SIGNAL \inst|w_scl_enable~3_combout\ : std_logic;
SIGNAL \inst|w_scl_enable~4_combout\ : std_logic;
SIGNAL \inst|w_scl_enable~q\ : std_logic;
SIGNAL \io_I2C_scl~2_combout\ : std_logic;
SIGNAL \inst|o_I2C_ack_error~0_combout\ : std_logic;
SIGNAL \inst|o_I2C_ack_error~q\ : std_logic;
SIGNAL \disp|trans_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \disp|read_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \disp|print_ptr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \disp|o_display_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \disp|init_ptr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \disp|delay_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \disp|char_ptr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \disp|buffer_ptr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|w_data_bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|w_data_txrx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|w_ack_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_i_I2C_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_I2C_reset~input_o\ : std_logic;
SIGNAL \disp|ALT_INV_buffer_ptr[28]~98_combout\ : std_logic;
SIGNAL \inst|ALT_INV_o_I2C_sda_txrx~q\ : std_logic;
SIGNAL \disp|ALT_INV_o_display_reset~q\ : std_logic;
SIGNAL \disp|ALT_INV_state.transmit~q\ : std_logic;

BEGIN

io_I2C_sda <= ww_io_I2C_sda;
io_I2C_scl <= ww_io_I2C_scl;
ww_i_I2C_clk <= i_I2C_clk;
ww_i_I2C_reset <= i_I2C_reset;
ww_i_I2C_display_enable <= i_I2C_display_enable;
ww_i_display_write_enable <= i_display_write_enable;
ww_i_I2C_display_input <= i_I2C_display_input;
o_I2C_ack_error <= ww_o_I2C_ack_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_I2C_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_I2C_clk~input_o\);
\ALT_INV_i_I2C_clk~inputclkctrl_outclk\ <= NOT \i_I2C_clk~inputclkctrl_outclk\;
\ALT_INV_i_I2C_reset~input_o\ <= NOT \i_I2C_reset~input_o\;
\disp|ALT_INV_buffer_ptr[28]~98_combout\ <= NOT \disp|buffer_ptr[28]~98_combout\;
\inst|ALT_INV_o_I2C_sda_txrx~q\ <= NOT \inst|o_I2C_sda_txrx~q\;
\disp|ALT_INV_o_display_reset~q\ <= NOT \disp|o_display_reset~q\;
\disp|ALT_INV_state.transmit~q\ <= NOT \disp|state.transmit~q\;

-- Location: IOOBUF_X21_Y29_N30
\io_I2C_sda~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_o_I2C_sda_txrx~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \io_I2C_sda~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\io_I2C_scl~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \io_I2C_scl~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \io_I2C_scl~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_I2C_ack_error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|o_I2C_ack_error~q\,
	devoe => ww_devoe,
	o => \o_I2C_ack_error~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_I2C_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_clk,
	o => \i_I2C_clk~input_o\);

-- Location: CLKCTRL_G4
\i_I2C_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_I2C_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_I2C_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y29_N15
\io_I2C_scl~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_io_I2C_scl,
	o => \io_I2C_scl~input_o\);

-- Location: LCCOMB_X24_Y21_N0
\inst|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~6_combout\ = (\inst|Add0~12_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|count~6_combout\);

-- Location: LCCOMB_X26_Y22_N12
\disp|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~0_combout\ = \disp|delay_cnt\(0) $ (VCC)
-- \disp|Add0~1\ = CARRY(\disp|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(0),
	datad => VCC,
	combout => \disp|Add0~0_combout\,
	cout => \disp|Add0~1\);

-- Location: LCCOMB_X26_Y22_N14
\disp|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~2_combout\ = (\disp|delay_cnt\(1) & (!\disp|Add0~1\)) # (!\disp|delay_cnt\(1) & ((\disp|Add0~1\) # (GND)))
-- \disp|Add0~3\ = CARRY((!\disp|Add0~1\) # (!\disp|delay_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(1),
	datad => VCC,
	cin => \disp|Add0~1\,
	combout => \disp|Add0~2_combout\,
	cout => \disp|Add0~3\);

-- Location: LCCOMB_X26_Y22_N16
\disp|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~4_combout\ = (\disp|delay_cnt\(2) & (\disp|Add0~3\ $ (GND))) # (!\disp|delay_cnt\(2) & (!\disp|Add0~3\ & VCC))
-- \disp|Add0~5\ = CARRY((\disp|delay_cnt\(2) & !\disp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(2),
	datad => VCC,
	cin => \disp|Add0~3\,
	combout => \disp|Add0~4_combout\,
	cout => \disp|Add0~5\);

-- Location: LCCOMB_X26_Y20_N26
\disp|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~22_combout\ = (\disp|Add0~4_combout\ & \disp|state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add0~4_combout\,
	datad => \disp|state~14_combout\,
	combout => \disp|Add0~22_combout\);

-- Location: LCCOMB_X21_Y21_N0
\inst|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (!\inst|w_data_clk_prev~q\ & \inst|w_data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_clk_prev~q\,
	datad => \inst|w_data_clk~q\,
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X19_Y21_N0
\inst|w_data_bit_cnt[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_bit_cnt[0]~2_combout\ = !\inst|w_data_bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|w_data_bit_cnt\(0),
	combout => \inst|w_data_bit_cnt[0]~2_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|state.slv_ack1~q\) # ((!\inst|state.slv_ack2~q\ & \inst|w_ack_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack1~q\,
	datab => \inst|state.slv_ack2~q\,
	datac => \inst|w_ack_cnt\(0),
	combout => \inst|Selector21~0_combout\);

-- Location: FF_X22_Y21_N27
\inst|w_ack_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector21~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_ack_cnt\(0));

-- Location: LCCOMB_X19_Y21_N10
\inst|state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~30_combout\ = (\inst|Equal1~0_combout\ & (\inst|w_data_bit_cnt[2]~1_combout\ & (!\inst|w_ack_cnt\(1) & \inst|w_ack_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|w_data_bit_cnt[2]~1_combout\,
	datac => \inst|w_ack_cnt\(1),
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|state~30_combout\);

-- Location: IOIBUF_X21_Y29_N29
\io_I2C_sda~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_io_I2C_sda,
	o => \io_I2C_sda~input_o\);

-- Location: LCCOMB_X21_Y21_N26
\inst|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = (\inst|w_data_clk_prev~q\ & !\inst|w_data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_clk_prev~q\,
	datad => \inst|w_data_clk~q\,
	combout => \inst|process_1~1_combout\);

-- Location: LCCOMB_X26_Y22_N18
\disp|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~6_combout\ = (\disp|delay_cnt\(3) & (!\disp|Add0~5\)) # (!\disp|delay_cnt\(3) & ((\disp|Add0~5\) # (GND)))
-- \disp|Add0~7\ = CARRY((!\disp|Add0~5\) # (!\disp|delay_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(3),
	datad => VCC,
	cin => \disp|Add0~5\,
	combout => \disp|Add0~6_combout\,
	cout => \disp|Add0~7\);

-- Location: LCCOMB_X26_Y22_N20
\disp|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~8_combout\ = (\disp|delay_cnt\(4) & (\disp|Add0~7\ $ (GND))) # (!\disp|delay_cnt\(4) & (!\disp|Add0~7\ & VCC))
-- \disp|Add0~9\ = CARRY((\disp|delay_cnt\(4) & !\disp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(4),
	datad => VCC,
	cin => \disp|Add0~7\,
	combout => \disp|Add0~8_combout\,
	cout => \disp|Add0~9\);

-- Location: LCCOMB_X26_Y22_N0
\disp|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~19_combout\ = (\disp|state~14_combout\ & \disp|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state~14_combout\,
	datad => \disp|Add0~8_combout\,
	combout => \disp|Add0~19_combout\);

-- Location: FF_X26_Y22_N1
\disp|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~19_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(4));

-- Location: LCCOMB_X26_Y22_N22
\disp|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~10_combout\ = (\disp|delay_cnt\(5) & (!\disp|Add0~9\)) # (!\disp|delay_cnt\(5) & ((\disp|Add0~9\) # (GND)))
-- \disp|Add0~11\ = CARRY((!\disp|Add0~9\) # (!\disp|delay_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(5),
	datad => VCC,
	cin => \disp|Add0~9\,
	combout => \disp|Add0~10_combout\,
	cout => \disp|Add0~11\);

-- Location: LCCOMB_X26_Y22_N2
\disp|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~20_combout\ = (\disp|Add0~10_combout\ & \disp|state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add0~10_combout\,
	datad => \disp|state~14_combout\,
	combout => \disp|Add0~20_combout\);

-- Location: FF_X26_Y22_N3
\disp|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~20_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(5));

-- Location: LCCOMB_X26_Y22_N24
\disp|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~12_combout\ = (\disp|delay_cnt\(6) & (\disp|Add0~11\ $ (GND))) # (!\disp|delay_cnt\(6) & (!\disp|Add0~11\ & VCC))
-- \disp|Add0~13\ = CARRY((\disp|delay_cnt\(6) & !\disp|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(6),
	datad => VCC,
	cin => \disp|Add0~11\,
	combout => \disp|Add0~12_combout\,
	cout => \disp|Add0~13\);

-- Location: LCCOMB_X26_Y22_N4
\disp|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~21_combout\ = (\disp|state~14_combout\ & \disp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state~14_combout\,
	datad => \disp|Add0~12_combout\,
	combout => \disp|Add0~21_combout\);

-- Location: FF_X26_Y22_N5
\disp|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~21_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(6));

-- Location: LCCOMB_X26_Y22_N10
\disp|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan2~0_combout\ = (\disp|delay_cnt\(3) & (\disp|delay_cnt\(4) & (\disp|delay_cnt\(6) & \disp|delay_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(3),
	datab => \disp|delay_cnt\(4),
	datac => \disp|delay_cnt\(6),
	datad => \disp|delay_cnt\(5),
	combout => \disp|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\disp|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~14_combout\ = (\disp|delay_cnt\(7) & (!\disp|Add0~13\)) # (!\disp|delay_cnt\(7) & ((\disp|Add0~13\) # (GND)))
-- \disp|Add0~15\ = CARRY((!\disp|Add0~13\) # (!\disp|delay_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(7),
	datad => VCC,
	cin => \disp|Add0~13\,
	combout => \disp|Add0~14_combout\,
	cout => \disp|Add0~15\);

-- Location: LCCOMB_X26_Y20_N0
\disp|delay_cnt[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|delay_cnt[7]~3_combout\ = (\disp|delay_cnt[0]~2_combout\ & (\disp|Add0~14_combout\ & ((\disp|state~14_combout\)))) # (!\disp|delay_cnt[0]~2_combout\ & (((\disp|delay_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add0~14_combout\,
	datab => \disp|delay_cnt[0]~2_combout\,
	datac => \disp|delay_cnt\(7),
	datad => \disp|state~14_combout\,
	combout => \disp|delay_cnt[7]~3_combout\);

-- Location: FF_X26_Y20_N1
\disp|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|delay_cnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(7));

-- Location: LCCOMB_X26_Y20_N2
\disp|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan5~0_combout\ = ((!\disp|delay_cnt\(2) & !\disp|delay_cnt\(1))) # (!\disp|delay_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(2),
	datac => \disp|delay_cnt\(1),
	datad => \disp|delay_cnt\(7),
	combout => \disp|LessThan5~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\disp|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~16_combout\ = \disp|delay_cnt\(8) $ (!\disp|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(8),
	cin => \disp|Add0~15\,
	combout => \disp|Add0~16_combout\);

-- Location: LCCOMB_X26_Y22_N8
\disp|delay_cnt[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|delay_cnt[8]~4_combout\ = (\disp|delay_cnt[0]~2_combout\ & (\disp|Add0~16_combout\ & ((\disp|state~14_combout\)))) # (!\disp|delay_cnt[0]~2_combout\ & (((\disp|delay_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt[0]~2_combout\,
	datab => \disp|Add0~16_combout\,
	datac => \disp|delay_cnt\(8),
	datad => \disp|state~14_combout\,
	combout => \disp|delay_cnt[8]~4_combout\);

-- Location: FF_X26_Y22_N9
\disp|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|delay_cnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(8));

-- Location: LCCOMB_X23_Y21_N22
\disp|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~5_combout\ = (!\disp|process_0~2_combout\ & ((\disp|delay_cnt\(8)) # ((\disp|LessThan2~0_combout\ & !\disp|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan2~0_combout\,
	datab => \disp|process_0~2_combout\,
	datac => \disp|LessThan5~0_combout\,
	datad => \disp|delay_cnt\(8),
	combout => \disp|process_0~5_combout\);

-- Location: IOIBUF_X23_Y29_N22
\i_I2C_reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_reset,
	o => \i_I2C_reset~input_o\);

-- Location: LCCOMB_X23_Y21_N28
\disp|delay_cnt[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|delay_cnt[0]~0_combout\ = (!\i_I2C_reset~input_o\ & \disp|state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_I2C_reset~input_o\,
	datad => \disp|state.reset~q\,
	combout => \disp|delay_cnt[0]~0_combout\);

-- Location: FF_X23_Y21_N23
\disp|o_display_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|process_0~5_combout\,
	ena => \disp|delay_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_ready~q\);

-- Location: LCCOMB_X22_Y21_N14
\inst|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst|state.ready~q\) # (\disp|o_display_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ready~q\,
	datad => \disp|o_display_ready~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: FF_X22_Y21_N15
\inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector10~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ready~q\);

-- Location: LCCOMB_X22_Y21_N10
\inst|state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~31_combout\ = (\inst|w_data_clk_prev~q\ & (\inst|state~27_combout\ $ ((!\inst|state.error~q\)))) # (!\inst|w_data_clk_prev~q\ & (!\inst|w_data_clk~q\ & (\inst|state~27_combout\ $ (!\inst|state.error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~27_combout\,
	datab => \inst|w_data_clk_prev~q\,
	datac => \inst|state.error~q\,
	datad => \inst|w_data_clk~q\,
	combout => \inst|state~31_combout\);

-- Location: FF_X22_Y21_N11
\inst|state.error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|state~31_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.error~q\);

-- Location: LCCOMB_X22_Y21_N20
\inst|state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~26_combout\ = (\inst|process_1~1_combout\ & (\inst|state.ready~q\ & (!\inst|state.exe_cmd~q\ & !\inst|state.error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~1_combout\,
	datab => \inst|state.ready~q\,
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|state.error~q\,
	combout => \inst|state~26_combout\);

-- Location: LCCOMB_X22_Y21_N18
\inst|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (!\inst|state.ready~q\ & \disp|o_display_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ready~q\,
	datad => \disp|o_display_ready~q\,
	combout => \inst|Selector11~0_combout\);

-- Location: FF_X22_Y21_N19
\inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector11~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.start~q\);

-- Location: LCCOMB_X22_Y21_N6
\inst|state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~27_combout\ = (((\inst|state.stop~q\) # (\inst|state.start~q\)) # (!\inst|state~26_combout\)) # (!\io_I2C_sda~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_I2C_sda~input_o\,
	datab => \inst|state~26_combout\,
	datac => \inst|state.stop~q\,
	datad => \inst|state.start~q\,
	combout => \inst|state~27_combout\);

-- Location: LCCOMB_X19_Y21_N20
\inst|state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = ((\inst|w_data_clk~q\ & !\inst|w_data_clk_prev~q\)) # (!\inst|state~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|w_data_clk~q\,
	datac => \inst|w_data_clk_prev~q\,
	datad => \inst|state~27_combout\,
	combout => \inst|state~32_combout\);

-- Location: FF_X19_Y21_N11
\inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|state~30_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack2~q\);

-- Location: LCCOMB_X22_Y21_N28
\inst|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector20~0_combout\ = (\inst|state.slv_ack2~q\) # ((!\inst|state.slv_ack1~q\ & \inst|w_ack_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack1~q\,
	datab => \inst|state.slv_ack2~q\,
	datac => \inst|w_ack_cnt\(1),
	combout => \inst|Selector20~0_combout\);

-- Location: FF_X22_Y21_N29
\inst|w_ack_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector20~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_ack_cnt\(1));

-- Location: LCCOMB_X19_Y21_N12
\inst|state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~29_combout\ = (\inst|Equal1~0_combout\ & (\inst|w_data_bit_cnt[2]~1_combout\ & (\inst|w_ack_cnt\(1) $ (!\inst|w_ack_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|w_data_bit_cnt[2]~1_combout\,
	datac => \inst|w_ack_cnt\(1),
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|state~29_combout\);

-- Location: FF_X19_Y21_N13
\inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|state~29_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack1~q\);

-- Location: LCCOMB_X19_Y21_N18
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|w_data_bit_cnt\(2) $ (((\inst|w_data_bit_cnt\(1) & \inst|w_data_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|w_data_bit_cnt\(1),
	datac => \inst|w_data_bit_cnt\(2),
	datad => \inst|w_data_bit_cnt\(0),
	combout => \inst|Add1~0_combout\);

-- Location: FF_X24_Y21_N13
\inst|w_data_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \inst|Add1~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	sload => VCC,
	ena => \inst|w_data_bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_bit_cnt\(2));

-- Location: LCCOMB_X19_Y21_N6
\inst|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\inst|state.exe_cmd~q\ & (((!\inst|w_data_bit_cnt\(1)) # (!\inst|w_data_bit_cnt\(2))) # (!\inst|w_data_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.exe_cmd~q\,
	datab => \inst|w_data_bit_cnt\(0),
	datac => \inst|w_data_bit_cnt\(2),
	datad => \inst|w_data_bit_cnt\(1),
	combout => \inst|Selector12~0_combout\);

-- Location: LCCOMB_X21_Y21_N16
\inst|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector12~1_combout\ = (\inst|state.slv_ack1~q\) # ((\inst|state.slv_ack2~q\) # ((\inst|state.start~q\) # (\inst|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack1~q\,
	datab => \inst|state.slv_ack2~q\,
	datac => \inst|state.start~q\,
	datad => \inst|Selector12~0_combout\,
	combout => \inst|Selector12~1_combout\);

-- Location: FF_X22_Y21_N21
\inst|state.exe_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \inst|Selector12~1_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	sload => VCC,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.exe_cmd~q\);

-- Location: LCCOMB_X19_Y21_N4
\inst|w_data_bit_cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_bit_cnt[2]~1_combout\ = (\inst|state.exe_cmd~q\ & (\inst|w_data_clk~q\ & !\inst|w_data_clk_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.exe_cmd~q\,
	datab => \inst|w_data_clk~q\,
	datac => \inst|w_data_clk_prev~q\,
	combout => \inst|w_data_bit_cnt[2]~1_combout\);

-- Location: FF_X19_Y21_N1
\inst|w_data_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_data_bit_cnt[0]~2_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|w_data_bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_bit_cnt\(0));

-- Location: LCCOMB_X19_Y21_N16
\inst|w_data_bit_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_bit_cnt~0_combout\ = \inst|w_data_bit_cnt\(1) $ (\inst|w_data_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|w_data_bit_cnt\(1),
	datad => \inst|w_data_bit_cnt\(0),
	combout => \inst|w_data_bit_cnt~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\inst|w_data_bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_bit_cnt[1]~feeder_combout\ = \inst|w_data_bit_cnt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|w_data_bit_cnt~0_combout\,
	combout => \inst|w_data_bit_cnt[1]~feeder_combout\);

-- Location: FF_X19_Y21_N3
\inst|w_data_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_data_bit_cnt[1]~feeder_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|w_data_bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_bit_cnt\(1));

-- Location: LCCOMB_X19_Y21_N30
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|w_data_bit_cnt\(1) & (\inst|w_data_bit_cnt\(2) & \inst|w_data_bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|w_data_bit_cnt\(1),
	datac => \inst|w_data_bit_cnt\(2),
	datad => \inst|w_data_bit_cnt\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y21_N8
\inst|state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state~28_combout\ = (\inst|Equal1~0_combout\ & (\inst|w_data_bit_cnt[2]~1_combout\ & (\inst|w_ack_cnt\(1) & !\inst|w_ack_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|w_data_bit_cnt[2]~1_combout\,
	datac => \inst|w_ack_cnt\(1),
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|state~28_combout\);

-- Location: FF_X19_Y21_N9
\inst|state.slv_ack3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|state~28_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.slv_ack3~q\);

-- Location: LCCOMB_X22_Y21_N4
\inst|state.stop~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|state.stop~0_combout\ = (\inst|state.stop~q\) # ((\inst|process_1~0_combout\ & ((\inst|state.slv_ack3~q\) # (\inst|state.error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \inst|state.slv_ack3~q\,
	datac => \inst|state.stop~q\,
	datad => \inst|state.error~q\,
	combout => \inst|state.stop~0_combout\);

-- Location: FF_X22_Y21_N5
\inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|state.stop~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.stop~q\);

-- Location: LCCOMB_X22_Y21_N12
\inst|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|state.ready~q\ & ((\inst|state.stop~q\) # ((\inst|w_busy~q\)))) # (!\inst|state.ready~q\ & (((!\disp|o_display_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.stop~q\,
	datab => \inst|state.ready~q\,
	datac => \inst|w_busy~q\,
	datad => \disp|o_display_ready~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: FF_X22_Y21_N13
\inst|w_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector9~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	ena => \inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_busy~q\);

-- Location: LCCOMB_X16_Y18_N0
\disp|trans_cnt[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[0]~32_combout\ = \disp|trans_cnt\(0) $ (VCC)
-- \disp|trans_cnt[0]~33\ = CARRY(\disp|trans_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(0),
	datad => VCC,
	combout => \disp|trans_cnt[0]~32_combout\,
	cout => \disp|trans_cnt[0]~33\);

-- Location: LCCOMB_X17_Y17_N0
\disp|trans_cnt[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[24]~38_combout\ = (\i_I2C_reset~input_o\) # (\disp|Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal4~10_combout\,
	combout => \disp|trans_cnt[24]~38_combout\);

-- Location: LCCOMB_X27_Y19_N0
\disp|print_ptr[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[0]~33_combout\ = \disp|print_ptr\(0) $ (VCC)
-- \disp|print_ptr[0]~34\ = CARRY(\disp|print_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(0),
	datad => VCC,
	combout => \disp|print_ptr[0]~33_combout\,
	cout => \disp|print_ptr[0]~34\);

-- Location: LCCOMB_X19_Y20_N0
\disp|buffer_ptr[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[0]~34_combout\ = \disp|buffer_ptr\(0) $ (VCC)
-- \disp|buffer_ptr[0]~35\ = CARRY(\disp|buffer_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(0),
	datad => VCC,
	combout => \disp|buffer_ptr[0]~34_combout\,
	cout => \disp|buffer_ptr[0]~35\);

-- Location: LCCOMB_X22_Y22_N4
\disp|buffer_ptr[28]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~98_combout\ = (!\i_I2C_reset~input_o\ & !\disp|state.transmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datad => \disp|state.transmit~q\,
	combout => \disp|buffer_ptr[28]~98_combout\);

-- Location: LCCOMB_X26_Y21_N30
\disp|print_ptr[14]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[14]~32_combout\ = (((!\disp|LessThan9~62_combout\) # (!\disp|Equal4~10_combout\)) # (!\inst|w_busy~q\)) # (!\disp|state.transmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \inst|w_busy~q\,
	datac => \disp|Equal4~10_combout\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|print_ptr[14]~32_combout\);

-- Location: LCCOMB_X22_Y16_N14
\disp|buffer_ptr[28]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~103_combout\ = (!\i_I2C_reset~input_o\ & ((\disp|print_ptr[14]~32_combout\) # (!\disp|Equal5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|buffer_ptr[28]~103_combout\);

-- Location: IOIBUF_X21_Y0_N29
\i_display_write_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_display_write_enable,
	o => \i_display_write_enable~input_o\);

-- Location: LCCOMB_X22_Y15_N20
\disp|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|state~15_combout\ = (\disp|buffer_ptr[28]~103_combout\ & ((\disp|state.ready~q\) # (\i_display_write_enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~103_combout\,
	datac => \disp|state.ready~q\,
	datad => \i_display_write_enable~input_o\,
	combout => \disp|state~15_combout\);

-- Location: FF_X22_Y15_N21
\disp|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.ready~q\);

-- Location: LCCOMB_X21_Y15_N24
\disp|buffer_ptr[28]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~101_combout\ = (!\i_I2C_reset~input_o\ & ((\disp|state.ready~q\) # (!\i_display_write_enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.ready~q\,
	datab => \i_display_write_enable~input_o\,
	datad => \i_I2C_reset~input_o\,
	combout => \disp|buffer_ptr[28]~101_combout\);

-- Location: LCCOMB_X27_Y20_N12
\disp|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~8_combout\ = (!\disp|buffer_ptr\(31) & (!\disp|buffer_ptr\(3) & (!\disp|buffer_ptr\(2) & !\disp|buffer_ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(31),
	datab => \disp|buffer_ptr\(3),
	datac => \disp|buffer_ptr\(2),
	datad => \disp|buffer_ptr\(4),
	combout => \disp|Equal2~8_combout\);

-- Location: LCCOMB_X27_Y20_N14
\disp|Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~9_combout\ = (\disp|buffer_ptr\(5) & (\disp|buffer_ptr\(1) & \disp|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(5),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|Equal2~8_combout\,
	combout => \disp|Equal2~9_combout\);

-- Location: LCCOMB_X19_Y21_N22
\disp|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~5_combout\ = (!\disp|buffer_ptr\(25) & (!\disp|buffer_ptr\(22) & (!\disp|buffer_ptr\(23) & !\disp|buffer_ptr\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(25),
	datab => \disp|buffer_ptr\(22),
	datac => \disp|buffer_ptr\(23),
	datad => \disp|buffer_ptr\(24),
	combout => \disp|Equal2~5_combout\);

-- Location: LCCOMB_X19_Y15_N24
\disp|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~6_combout\ = (!\disp|buffer_ptr\(29) & (!\disp|buffer_ptr\(28) & (!\disp|buffer_ptr\(26) & !\disp|buffer_ptr\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(29),
	datab => \disp|buffer_ptr\(28),
	datac => \disp|buffer_ptr\(26),
	datad => \disp|buffer_ptr\(27),
	combout => \disp|Equal2~6_combout\);

-- Location: LCCOMB_X20_Y15_N30
\disp|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~1_combout\ = (!\disp|buffer_ptr\(13) & (!\disp|buffer_ptr\(10) & (!\disp|buffer_ptr\(12) & !\disp|buffer_ptr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(13),
	datab => \disp|buffer_ptr\(10),
	datac => \disp|buffer_ptr\(12),
	datad => \disp|buffer_ptr\(11),
	combout => \disp|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y15_N20
\disp|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~0_combout\ = (!\disp|buffer_ptr\(7) & (!\disp|buffer_ptr\(6) & (!\disp|buffer_ptr\(9) & !\disp|buffer_ptr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(7),
	datab => \disp|buffer_ptr\(6),
	datac => \disp|buffer_ptr\(9),
	datad => \disp|buffer_ptr\(8),
	combout => \disp|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y15_N4
\disp|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~3_combout\ = (!\disp|buffer_ptr\(20) & (!\disp|buffer_ptr\(19) & (!\disp|buffer_ptr\(18) & !\disp|buffer_ptr\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(20),
	datab => \disp|buffer_ptr\(19),
	datac => \disp|buffer_ptr\(18),
	datad => \disp|buffer_ptr\(21),
	combout => \disp|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y15_N18
\disp|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~2_combout\ = (!\disp|buffer_ptr\(17) & (!\disp|buffer_ptr\(16) & (!\disp|buffer_ptr\(14) & !\disp|buffer_ptr\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(17),
	datab => \disp|buffer_ptr\(16),
	datac => \disp|buffer_ptr\(14),
	datad => \disp|buffer_ptr\(15),
	combout => \disp|Equal2~2_combout\);

-- Location: LCCOMB_X20_Y15_N10
\disp|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~4_combout\ = (\disp|Equal2~1_combout\ & (\disp|Equal2~0_combout\ & (\disp|Equal2~3_combout\ & \disp|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal2~1_combout\,
	datab => \disp|Equal2~0_combout\,
	datac => \disp|Equal2~3_combout\,
	datad => \disp|Equal2~2_combout\,
	combout => \disp|Equal2~4_combout\);

-- Location: LCCOMB_X20_Y15_N16
\disp|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~7_combout\ = (\disp|Equal2~5_combout\ & (\disp|Equal2~6_combout\ & (!\disp|buffer_ptr\(30) & \disp|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal2~5_combout\,
	datab => \disp|Equal2~6_combout\,
	datac => \disp|buffer_ptr\(30),
	datad => \disp|Equal2~4_combout\,
	combout => \disp|Equal2~7_combout\);

-- Location: LCCOMB_X16_Y21_N0
\disp|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~0_combout\ = \disp|read_cnt\(0) $ (VCC)
-- \disp|Add2~1\ = CARRY(\disp|read_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(0),
	datad => VCC,
	combout => \disp|Add2~0_combout\,
	cout => \disp|Add2~1\);

-- Location: LCCOMB_X21_Y17_N0
\disp|Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal2~10_combout\ = (!\disp|buffer_ptr\(0) & \disp|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(0),
	datad => \disp|Equal2~7_combout\,
	combout => \disp|Equal2~10_combout\);

-- Location: LCCOMB_X23_Y15_N28
\disp|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan7~0_combout\ = (!\disp|buffer_ptr\(1) & (!\disp|buffer_ptr\(4) & (!\disp|buffer_ptr\(2) & !\disp|buffer_ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(1),
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(2),
	datad => \disp|buffer_ptr\(3),
	combout => \disp|LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\disp|begin_init~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~12_combout\ = (!\disp|buffer_ptr\(31) & ((\disp|buffer_ptr\(5)) # ((!\disp|Equal2~10_combout\) # (!\disp|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(5),
	datab => \disp|LessThan7~0_combout\,
	datac => \disp|buffer_ptr\(31),
	datad => \disp|Equal2~10_combout\,
	combout => \disp|begin_init~12_combout\);

-- Location: LCCOMB_X20_Y20_N0
\disp|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~0_combout\ = \disp|buffer_ptr\(0) $ (VCC)
-- \disp|Add4~1\ = CARRY(\disp|buffer_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(0),
	datad => VCC,
	combout => \disp|Add4~0_combout\,
	cout => \disp|Add4~1\);

-- Location: LCCOMB_X20_Y20_N2
\disp|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~2_combout\ = (\disp|buffer_ptr\(1) & (\disp|Add4~1\ & VCC)) # (!\disp|buffer_ptr\(1) & (!\disp|Add4~1\))
-- \disp|Add4~3\ = CARRY((!\disp|buffer_ptr\(1) & !\disp|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(1),
	datad => VCC,
	cin => \disp|Add4~1\,
	combout => \disp|Add4~2_combout\,
	cout => \disp|Add4~3\);

-- Location: LCCOMB_X20_Y20_N4
\disp|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~4_combout\ = (\disp|buffer_ptr\(2) & ((GND) # (!\disp|Add4~3\))) # (!\disp|buffer_ptr\(2) & (\disp|Add4~3\ $ (GND)))
-- \disp|Add4~5\ = CARRY((\disp|buffer_ptr\(2)) # (!\disp|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(2),
	datad => VCC,
	cin => \disp|Add4~3\,
	combout => \disp|Add4~4_combout\,
	cout => \disp|Add4~5\);

-- Location: LCCOMB_X20_Y20_N6
\disp|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~6_combout\ = (\disp|buffer_ptr\(3) & (\disp|Add4~5\ & VCC)) # (!\disp|buffer_ptr\(3) & (!\disp|Add4~5\))
-- \disp|Add4~7\ = CARRY((!\disp|buffer_ptr\(3) & !\disp|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(3),
	datad => VCC,
	cin => \disp|Add4~5\,
	combout => \disp|Add4~6_combout\,
	cout => \disp|Add4~7\);

-- Location: LCCOMB_X20_Y20_N8
\disp|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~8_combout\ = (\disp|buffer_ptr\(4) & ((GND) # (!\disp|Add4~7\))) # (!\disp|buffer_ptr\(4) & (\disp|Add4~7\ $ (GND)))
-- \disp|Add4~9\ = CARRY((\disp|buffer_ptr\(4)) # (!\disp|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datad => VCC,
	cin => \disp|Add4~7\,
	combout => \disp|Add4~8_combout\,
	cout => \disp|Add4~9\);

-- Location: LCCOMB_X20_Y20_N10
\disp|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~10_combout\ = (\disp|buffer_ptr\(5) & (\disp|Add4~9\ & VCC)) # (!\disp|buffer_ptr\(5) & (!\disp|Add4~9\))
-- \disp|Add4~11\ = CARRY((!\disp|buffer_ptr\(5) & !\disp|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(5),
	datad => VCC,
	cin => \disp|Add4~9\,
	combout => \disp|Add4~10_combout\,
	cout => \disp|Add4~11\);

-- Location: IOIBUF_X41_Y22_N15
\i_I2C_display_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(6),
	o => \i_I2C_display_input[6]~input_o\);

-- Location: LCCOMB_X22_Y22_N8
\disp|r_buffer~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~93_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[6]~input_o\,
	combout => \disp|r_buffer~93_combout\);

-- Location: LCCOMB_X27_Y20_N26
\disp|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~4_combout\ = (\disp|buffer_ptr\(0) & (\disp|buffer_ptr\(2) & (!\disp|buffer_ptr\(1) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~4_combout\);

-- Location: LCCOMB_X21_Y17_N26
\disp|r_buffer[32][5]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][5]~53_combout\ = (\disp|state.receive~q\ & (((\disp|process_0~19_combout\)))) # (!\disp|state.receive~q\ & (\i_display_write_enable~input_o\ & (!\disp|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.receive~q\,
	datab => \i_display_write_enable~input_o\,
	datac => \disp|state.ready~q\,
	datad => \disp|process_0~19_combout\,
	combout => \disp|r_buffer[32][5]~53_combout\);

-- Location: LCCOMB_X24_Y16_N22
\disp|r_buffer[22][7]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[22][7]~74_combout\ = (\disp|buffer_ptr\(4) & (!\disp|buffer_ptr\(3) & \disp|r_buffer[32][5]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[22][7]~74_combout\);

-- Location: LCCOMB_X23_Y16_N4
\disp|r_buffer[21][7]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[21][7]~83_combout\ = ((\disp|Decoder0~4_combout\ & \disp|r_buffer[22][7]~74_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~103_combout\,
	datab => \disp|Decoder0~4_combout\,
	datad => \disp|r_buffer[22][7]~74_combout\,
	combout => \disp|r_buffer[21][7]~83_combout\);

-- Location: FF_X24_Y16_N17
\disp|r_buffer[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][6]~q\);

-- Location: LCCOMB_X24_Y16_N6
\disp|r_buffer[26][7]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[26][7]~76_combout\ = (\disp|buffer_ptr\(4) & (\disp|buffer_ptr\(3) & \disp|r_buffer[32][5]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[26][7]~76_combout\);

-- Location: LCCOMB_X23_Y16_N6
\disp|r_buffer[29][3]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[29][3]~82_combout\ = ((\disp|Decoder0~4_combout\ & \disp|r_buffer[26][7]~76_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~103_combout\,
	datab => \disp|Decoder0~4_combout\,
	datad => \disp|r_buffer[26][7]~76_combout\,
	combout => \disp|r_buffer[29][3]~82_combout\);

-- Location: FF_X23_Y16_N31
\disp|r_buffer[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][6]~q\);

-- Location: LCCOMB_X27_Y20_N30
\disp|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~1_combout\ = (\disp|buffer_ptr\(0) & (!\disp|buffer_ptr\(2) & (!\disp|buffer_ptr\(1) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\disp|r_buffer[17][5]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[17][5]~117_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~1_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[17][5]~117_combout\);

-- Location: LCCOMB_X22_Y15_N22
\disp|r_buffer[17][5]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[17][5]~81_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[17][5]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[17][5]~117_combout\,
	combout => \disp|r_buffer[17][5]~81_combout\);

-- Location: FF_X23_Y16_N13
\disp|r_buffer[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][6]~q\);

-- Location: LCCOMB_X24_Y16_N4
\disp|r_buffer[25][3]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[25][3]~80_combout\ = ((\disp|r_buffer[26][7]~76_combout\ & \disp|Decoder0~1_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][7]~76_combout\,
	datab => \disp|Decoder0~1_combout\,
	datad => \disp|buffer_ptr[28]~103_combout\,
	combout => \disp|r_buffer[25][3]~80_combout\);

-- Location: FF_X24_Y16_N19
\disp|r_buffer[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][6]~q\);

-- Location: LCCOMB_X23_Y16_N12
\disp|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~0_combout\ = (\disp|Add4~4_combout\ & (\disp|Add4~6_combout\)) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & ((\disp|r_buffer[25][6]~q\))) # (!\disp|Add4~6_combout\ & (\disp|r_buffer[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][6]~q\,
	datad => \disp|r_buffer[25][6]~q\,
	combout => \disp|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\disp|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~1_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux15~0_combout\ & ((\disp|r_buffer[29][6]~q\))) # (!\disp|Mux15~0_combout\ & (\disp|r_buffer[21][6]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[21][6]~q\,
	datac => \disp|r_buffer[29][6]~q\,
	datad => \disp|Mux15~0_combout\,
	combout => \disp|Mux15~1_combout\);

-- Location: LCCOMB_X21_Y19_N16
\disp|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~7_combout\ = (\disp|buffer_ptr\(0) & (\disp|buffer_ptr\(1) & (\disp|buffer_ptr\(2) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(1),
	datac => \disp|buffer_ptr\(2),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y19_N20
\disp|r_buffer[23][6]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[23][6]~122_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~7_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[23][6]~122_combout\);

-- Location: LCCOMB_X24_Y20_N26
\disp|r_buffer[23][6]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[23][6]~89_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[23][6]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|r_buffer[23][6]~122_combout\,
	combout => \disp|r_buffer[23][6]~89_combout\);

-- Location: FF_X24_Y20_N7
\disp|r_buffer[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][6]~q\);

-- Location: LCCOMB_X24_Y16_N28
\disp|r_buffer[31][4]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[31][4]~91_combout\ = ((\disp|r_buffer[26][7]~76_combout\ & \disp|Decoder0~7_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][7]~76_combout\,
	datab => \disp|Decoder0~7_combout\,
	datad => \disp|buffer_ptr[28]~103_combout\,
	combout => \disp|r_buffer[31][4]~91_combout\);

-- Location: FF_X23_Y20_N9
\disp|r_buffer[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][6]~q\);

-- Location: LCCOMB_X27_Y20_N16
\disp|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~3_combout\ = (\disp|buffer_ptr\(0) & (!\disp|buffer_ptr\(2) & (\disp|buffer_ptr\(1) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y19_N18
\disp|r_buffer[27][6]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[27][6]~121_combout\ = (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~3_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~3_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[27][6]~121_combout\);

-- Location: LCCOMB_X24_Y19_N0
\disp|r_buffer[27][6]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[27][6]~88_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[27][6]~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[27][6]~121_combout\,
	combout => \disp|r_buffer[27][6]~88_combout\);

-- Location: FF_X24_Y20_N21
\disp|r_buffer[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][6]~q\);

-- Location: LCCOMB_X24_Y19_N10
\disp|r_buffer[19][7]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[19][7]~123_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~3_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[19][7]~123_combout\);

-- Location: LCCOMB_X24_Y19_N22
\disp|r_buffer[19][7]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[19][7]~90_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[19][7]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[19][7]~123_combout\,
	combout => \disp|r_buffer[19][7]~90_combout\);

-- Location: FF_X23_Y20_N23
\disp|r_buffer[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][6]~q\);

-- Location: LCCOMB_X23_Y20_N22
\disp|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~7_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[27][6]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[19][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[27][6]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][6]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux15~7_combout\);

-- Location: LCCOMB_X23_Y20_N8
\disp|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~8_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux15~7_combout\ & ((\disp|r_buffer[31][6]~q\))) # (!\disp|Mux15~7_combout\ & (\disp|r_buffer[23][6]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][6]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[31][6]~q\,
	datad => \disp|Mux15~7_combout\,
	combout => \disp|Mux15~8_combout\);

-- Location: LCCOMB_X21_Y21_N6
\disp|r_buffer[26][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[26][6]~feeder_combout\ = \disp|r_buffer~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~93_combout\,
	combout => \disp|r_buffer[26][6]~feeder_combout\);

-- Location: LCCOMB_X27_Y20_N4
\disp|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~0_combout\ = (!\disp|buffer_ptr\(0) & (!\disp|buffer_ptr\(2) & (\disp|buffer_ptr\(1) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~0_combout\);

-- Location: LCCOMB_X21_Y21_N14
\disp|r_buffer[26][7]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[26][7]~114_combout\ = (((!\disp|Decoder0~0_combout\) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|buffer_ptr\(3))) # (!\disp|buffer_ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|buffer_ptr\(3),
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|Decoder0~0_combout\,
	combout => \disp|r_buffer[26][7]~114_combout\);

-- Location: LCCOMB_X21_Y21_N8
\disp|r_buffer[26][7]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[26][7]~77_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[26][7]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|r_buffer[26][7]~114_combout\,
	datad => \disp|Equal5~20_combout\,
	combout => \disp|r_buffer[26][7]~77_combout\);

-- Location: FF_X21_Y21_N7
\disp|r_buffer[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[26][6]~feeder_combout\,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][6]~q\);

-- Location: LCCOMB_X21_Y19_N14
\disp|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~5_combout\ = (!\disp|buffer_ptr\(0) & (\disp|buffer_ptr\(1) & (\disp|buffer_ptr\(2) & !\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(1),
	datac => \disp|buffer_ptr\(2),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|Decoder0~5_combout\);

-- Location: LCCOMB_X20_Y17_N30
\disp|r_buffer[30][3]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[30][3]~116_combout\ = (((!\disp|Decoder0~5_combout\) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|buffer_ptr\(4))) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|buffer_ptr\(4),
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|Decoder0~5_combout\,
	combout => \disp|r_buffer[30][3]~116_combout\);

-- Location: LCCOMB_X20_Y17_N26
\disp|r_buffer[30][3]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[30][3]~79_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[30][3]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|r_buffer[30][3]~116_combout\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|r_buffer[30][3]~79_combout\);

-- Location: FF_X21_Y18_N31
\disp|r_buffer[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][6]~q\);

-- Location: LCCOMB_X21_Y19_N20
\disp|r_buffer[22][7]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[22][7]~113_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~5_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[22][7]~113_combout\);

-- Location: LCCOMB_X22_Y18_N14
\disp|r_buffer[22][7]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[22][7]~75_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[22][7]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|r_buffer[22][7]~113_combout\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|r_buffer[22][7]~75_combout\);

-- Location: FF_X22_Y18_N1
\disp|r_buffer[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][6]~q\);

-- Location: LCCOMB_X20_Y17_N4
\disp|r_buffer[18][4]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[18][4]~115_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~0_combout\,
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|buffer_ptr\(4),
	combout => \disp|r_buffer[18][4]~115_combout\);

-- Location: LCCOMB_X20_Y17_N20
\disp|r_buffer[18][4]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[18][4]~78_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[18][4]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|r_buffer[18][4]~115_combout\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|r_buffer[18][4]~78_combout\);

-- Location: FF_X21_Y18_N15
\disp|r_buffer[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][6]~q\);

-- Location: LCCOMB_X21_Y18_N16
\disp|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~2_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[22][6]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[18][6]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][6]~q\,
	datab => \disp|r_buffer[18][6]~q\,
	datac => \disp|Add4~4_combout\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux15~2_combout\);

-- Location: LCCOMB_X21_Y18_N30
\disp|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~3_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux15~2_combout\ & ((\disp|r_buffer[30][6]~q\))) # (!\disp|Mux15~2_combout\ & (\disp|r_buffer[26][6]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][6]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[30][6]~q\,
	datad => \disp|Mux15~2_combout\,
	combout => \disp|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y15_N12
\disp|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~2_combout\ = (!\disp|buffer_ptr\(1) & (!\disp|buffer_ptr\(2) & (!\disp|buffer_ptr\(5) & !\disp|buffer_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(1),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(5),
	datad => \disp|buffer_ptr\(0),
	combout => \disp|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y15_N8
\disp|r_buffer[24][3]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[24][3]~119_combout\ = (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(3))) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Decoder0~2_combout\,
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[24][3]~119_combout\);

-- Location: LCCOMB_X24_Y15_N30
\disp|r_buffer[24][3]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[24][3]~85_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[24][3]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[24][3]~119_combout\,
	combout => \disp|r_buffer[24][3]~85_combout\);

-- Location: FF_X24_Y15_N13
\disp|r_buffer[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][6]~q\);

-- Location: LCCOMB_X23_Y15_N30
\disp|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Decoder0~6_combout\ = (!\disp|buffer_ptr\(1) & (\disp|buffer_ptr\(2) & (!\disp|buffer_ptr\(5) & !\disp|buffer_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(1),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(5),
	datad => \disp|buffer_ptr\(0),
	combout => \disp|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y16_N2
\disp|r_buffer[28][3]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[28][3]~87_combout\ = ((\disp|r_buffer[26][7]~76_combout\ & \disp|Decoder0~6_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][7]~76_combout\,
	datab => \disp|Decoder0~6_combout\,
	datad => \disp|buffer_ptr[28]~103_combout\,
	combout => \disp|r_buffer[28][3]~87_combout\);

-- Location: FF_X24_Y17_N21
\disp|r_buffer[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][6]~q\);

-- Location: LCCOMB_X22_Y15_N2
\disp|r_buffer[20][7]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[20][7]~118_combout\ = (\disp|buffer_ptr\(3)) # (((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~6_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[20][7]~118_combout\);

-- Location: LCCOMB_X22_Y15_N4
\disp|r_buffer[20][7]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[20][7]~84_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[20][7]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[20][7]~118_combout\,
	combout => \disp|r_buffer[20][7]~84_combout\);

-- Location: FF_X24_Y15_N27
\disp|r_buffer[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][6]~q\);

-- Location: LCCOMB_X23_Y15_N6
\disp|r_buffer[16][6]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[16][6]~120_combout\ = (((\disp|buffer_ptr\(3)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|buffer_ptr\(4))) # (!\disp|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Decoder0~2_combout\,
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[16][6]~120_combout\);

-- Location: LCCOMB_X23_Y15_N24
\disp|r_buffer[16][6]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[16][6]~86_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[16][6]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|r_buffer[16][6]~120_combout\,
	combout => \disp|r_buffer[16][6]~86_combout\);

-- Location: FF_X24_Y17_N11
\disp|r_buffer[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][6]~q\);

-- Location: LCCOMB_X24_Y17_N10
\disp|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~4_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[20][6]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][6]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[16][6]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux15~4_combout\);

-- Location: LCCOMB_X24_Y17_N20
\disp|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~5_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux15~4_combout\ & ((\disp|r_buffer[28][6]~q\))) # (!\disp|Mux15~4_combout\ & (\disp|r_buffer[24][6]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][6]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[28][6]~q\,
	datad => \disp|Mux15~4_combout\,
	combout => \disp|Mux15~5_combout\);

-- Location: LCCOMB_X24_Y17_N6
\disp|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~6_combout\ = (\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\) # ((\disp|Mux15~3_combout\)))) # (!\disp|Add4~2_combout\ & (!\disp|Add4~0_combout\ & ((\disp|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux15~3_combout\,
	datad => \disp|Mux15~5_combout\,
	combout => \disp|Mux15~6_combout\);

-- Location: LCCOMB_X24_Y17_N12
\disp|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~9_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux15~6_combout\ & ((\disp|Mux15~8_combout\))) # (!\disp|Mux15~6_combout\ & (\disp|Mux15~1_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux15~1_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux15~8_combout\,
	datad => \disp|Mux15~6_combout\,
	combout => \disp|Mux15~9_combout\);

-- Location: IOIBUF_X23_Y29_N15
\i_I2C_display_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(3),
	o => \i_I2C_display_input[3]~input_o\);

-- Location: LCCOMB_X22_Y22_N28
\disp|r_buffer~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~95_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[3]~input_o\,
	combout => \disp|r_buffer~95_combout\);

-- Location: FF_X24_Y20_N11
\disp|r_buffer[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][3]~q\);

-- Location: FF_X23_Y20_N5
\disp|r_buffer[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][3]~q\);

-- Location: LCCOMB_X24_Y19_N16
\disp|r_buffer[27][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[27][3]~feeder_combout\ = \disp|r_buffer~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~95_combout\,
	combout => \disp|r_buffer[27][3]~feeder_combout\);

-- Location: FF_X24_Y19_N17
\disp|r_buffer[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[27][3]~feeder_combout\,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][3]~q\);

-- Location: FF_X23_Y20_N11
\disp|r_buffer[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][3]~q\);

-- Location: LCCOMB_X23_Y20_N10
\disp|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~7_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[27][3]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[19][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[27][3]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][3]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux18~7_combout\);

-- Location: LCCOMB_X23_Y20_N4
\disp|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~8_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux18~7_combout\ & ((\disp|r_buffer[31][3]~q\))) # (!\disp|Mux18~7_combout\ & (\disp|r_buffer[23][3]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][3]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[31][3]~q\,
	datad => \disp|Mux18~7_combout\,
	combout => \disp|Mux18~8_combout\);

-- Location: FF_X23_Y16_N7
\disp|r_buffer[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][3]~q\);

-- Location: FF_X24_Y16_N13
\disp|r_buffer[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][3]~q\);

-- Location: FF_X24_Y16_N31
\disp|r_buffer[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][3]~q\);

-- Location: FF_X23_Y16_N9
\disp|r_buffer[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][3]~q\);

-- Location: LCCOMB_X23_Y16_N8
\disp|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~0_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[25][3]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[17][3]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][3]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][3]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux18~0_combout\);

-- Location: LCCOMB_X23_Y16_N20
\disp|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~1_combout\ = (\disp|Mux18~0_combout\ & ((\disp|r_buffer[29][3]~q\) # ((!\disp|Add4~4_combout\)))) # (!\disp|Mux18~0_combout\ & (((\disp|r_buffer[21][3]~q\ & \disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[29][3]~q\,
	datab => \disp|r_buffer[21][3]~q\,
	datac => \disp|Mux18~0_combout\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux18~1_combout\);

-- Location: FF_X24_Y15_N17
\disp|r_buffer[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][3]~q\);

-- Location: FF_X24_Y17_N31
\disp|r_buffer[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][3]~q\);

-- Location: FF_X24_Y15_N23
\disp|r_buffer[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][3]~q\);

-- Location: FF_X24_Y17_N25
\disp|r_buffer[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][3]~q\);

-- Location: LCCOMB_X24_Y17_N24
\disp|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~4_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[20][3]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][3]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[16][3]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux18~4_combout\);

-- Location: LCCOMB_X24_Y17_N30
\disp|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~5_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux18~4_combout\ & ((\disp|r_buffer[28][3]~q\))) # (!\disp|Mux18~4_combout\ & (\disp|r_buffer[24][3]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][3]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[28][3]~q\,
	datad => \disp|Mux18~4_combout\,
	combout => \disp|Mux18~5_combout\);

-- Location: FF_X22_Y18_N19
\disp|r_buffer[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][3]~q\);

-- Location: FF_X21_Y17_N23
\disp|r_buffer[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][3]~q\);

-- Location: FF_X22_Y18_N5
\disp|r_buffer[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][3]~q\);

-- Location: FF_X20_Y17_N9
\disp|r_buffer[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][3]~q\);

-- Location: LCCOMB_X20_Y17_N8
\disp|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~2_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[22][3]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][3]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][3]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux18~2_combout\);

-- Location: LCCOMB_X21_Y17_N22
\disp|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~3_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux18~2_combout\ & ((\disp|r_buffer[30][3]~q\))) # (!\disp|Mux18~2_combout\ & (\disp|r_buffer[26][3]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|r_buffer[26][3]~q\,
	datac => \disp|r_buffer[30][3]~q\,
	datad => \disp|Mux18~2_combout\,
	combout => \disp|Mux18~3_combout\);

-- Location: LCCOMB_X22_Y17_N6
\disp|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~6_combout\ = (\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\) # ((\disp|Mux18~3_combout\)))) # (!\disp|Add4~2_combout\ & (!\disp|Add4~0_combout\ & (\disp|Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux18~5_combout\,
	datad => \disp|Mux18~3_combout\,
	combout => \disp|Mux18~6_combout\);

-- Location: LCCOMB_X22_Y17_N8
\disp|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~9_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux18~6_combout\ & (\disp|Mux18~8_combout\)) # (!\disp|Mux18~6_combout\ & ((\disp|Mux18~1_combout\))))) # (!\disp|Add4~0_combout\ & (((\disp|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux18~8_combout\,
	datab => \disp|Mux18~1_combout\,
	datac => \disp|Add4~0_combout\,
	datad => \disp|Mux18~6_combout\,
	combout => \disp|Mux18~9_combout\);

-- Location: IOIBUF_X16_Y29_N15
\i_I2C_display_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(7),
	o => \i_I2C_display_input[7]~input_o\);

-- Location: LCCOMB_X21_Y21_N18
\disp|r_buffer~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~92_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_I2C_reset~input_o\,
	datac => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[7]~input_o\,
	combout => \disp|r_buffer~92_combout\);

-- Location: FF_X22_Y18_N9
\disp|r_buffer[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][7]~q\);

-- Location: FF_X20_Y17_N23
\disp|r_buffer[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][7]~q\);

-- Location: FF_X22_Y18_N27
\disp|r_buffer[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][7]~q\);

-- Location: FF_X20_Y17_N1
\disp|r_buffer[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][7]~q\);

-- Location: LCCOMB_X20_Y17_N0
\disp|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~0_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[26][7]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[18][7]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][7]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][7]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux14~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\disp|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~1_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux14~0_combout\ & ((\disp|r_buffer[30][7]~q\))) # (!\disp|Mux14~0_combout\ & (\disp|r_buffer[22][7]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[22][7]~q\,
	datac => \disp|r_buffer[30][7]~q\,
	datad => \disp|Mux14~0_combout\,
	combout => \disp|Mux14~1_combout\);

-- Location: FF_X23_Y20_N15
\disp|r_buffer[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][7]~q\);

-- Location: FF_X24_Y20_N17
\disp|r_buffer[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][7]~q\);

-- Location: LCCOMB_X23_Y20_N14
\disp|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~7_combout\ = (\disp|Add4~6_combout\ & (\disp|Add4~4_combout\)) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & ((\disp|r_buffer[23][7]~q\))) # (!\disp|Add4~4_combout\ & (\disp|r_buffer[19][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][7]~q\,
	datad => \disp|r_buffer[23][7]~q\,
	combout => \disp|Mux14~7_combout\);

-- Location: FF_X23_Y20_N13
\disp|r_buffer[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][7]~q\);

-- Location: FF_X24_Y19_N3
\disp|r_buffer[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][7]~q\);

-- Location: LCCOMB_X23_Y20_N12
\disp|Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~8_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux14~7_combout\ & (\disp|r_buffer[31][7]~q\)) # (!\disp|Mux14~7_combout\ & ((\disp|r_buffer[27][7]~q\))))) # (!\disp|Add4~6_combout\ & (\disp|Mux14~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Mux14~7_combout\,
	datac => \disp|r_buffer[31][7]~q\,
	datad => \disp|r_buffer[27][7]~q\,
	combout => \disp|Mux14~8_combout\);

-- Location: FF_X24_Y15_N1
\disp|r_buffer[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][7]~q\);

-- Location: FF_X24_Y17_N23
\disp|r_buffer[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][7]~q\);

-- Location: FF_X24_Y15_N19
\disp|r_buffer[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][7]~q\);

-- Location: FF_X24_Y17_N1
\disp|r_buffer[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][7]~q\);

-- Location: LCCOMB_X24_Y17_N0
\disp|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~4_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[24][7]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[16][7]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][7]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[16][7]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux14~4_combout\);

-- Location: LCCOMB_X24_Y17_N22
\disp|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~5_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux14~4_combout\ & ((\disp|r_buffer[28][7]~q\))) # (!\disp|Mux14~4_combout\ & (\disp|r_buffer[20][7]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[20][7]~q\,
	datac => \disp|r_buffer[28][7]~q\,
	datad => \disp|Mux14~4_combout\,
	combout => \disp|Mux14~5_combout\);

-- Location: FF_X24_Y16_N21
\disp|r_buffer[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][7]~q\);

-- Location: FF_X23_Y16_N23
\disp|r_buffer[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][7]~q\);

-- Location: FF_X24_Y16_N11
\disp|r_buffer[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][7]~q\);

-- Location: FF_X23_Y16_N17
\disp|r_buffer[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][7]~q\);

-- Location: LCCOMB_X23_Y16_N16
\disp|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~2_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[21][7]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[17][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[21][7]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][7]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux14~2_combout\);

-- Location: LCCOMB_X23_Y16_N22
\disp|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~3_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux14~2_combout\ & ((\disp|r_buffer[29][7]~q\))) # (!\disp|Mux14~2_combout\ & (\disp|r_buffer[25][7]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][7]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[29][7]~q\,
	datad => \disp|Mux14~2_combout\,
	combout => \disp|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y17_N16
\disp|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~6_combout\ = (\disp|Add4~2_combout\ & (\disp|Add4~0_combout\)) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & ((\disp|Mux14~3_combout\))) # (!\disp|Add4~0_combout\ & (\disp|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux14~5_combout\,
	datad => \disp|Mux14~3_combout\,
	combout => \disp|Mux14~6_combout\);

-- Location: LCCOMB_X22_Y17_N14
\disp|Mux14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~9_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux14~6_combout\ & ((\disp|Mux14~8_combout\))) # (!\disp|Mux14~6_combout\ & (\disp|Mux14~1_combout\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Mux14~1_combout\,
	datac => \disp|Mux14~8_combout\,
	datad => \disp|Mux14~6_combout\,
	combout => \disp|Mux14~9_combout\);

-- Location: IOIBUF_X23_Y29_N8
\i_I2C_display_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(2),
	o => \i_I2C_display_input[2]~input_o\);

-- Location: LCCOMB_X22_Y22_N14
\disp|r_buffer~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~94_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[2]~input_o\,
	combout => \disp|r_buffer~94_combout\);

-- Location: FF_X24_Y20_N5
\disp|r_buffer[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][2]~q\);

-- Location: FF_X23_Y20_N7
\disp|r_buffer[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][2]~q\);

-- Location: LCCOMB_X23_Y20_N6
\disp|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~7_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[23][2]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[19][2]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][2]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][2]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux19~7_combout\);

-- Location: FF_X24_Y20_N23
\disp|r_buffer[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][2]~q\);

-- Location: FF_X23_Y20_N1
\disp|r_buffer[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][2]~q\);

-- Location: LCCOMB_X23_Y20_N0
\disp|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~8_combout\ = (\disp|Mux19~7_combout\ & (((\disp|r_buffer[31][2]~q\) # (!\disp|Add4~6_combout\)))) # (!\disp|Mux19~7_combout\ & (\disp|r_buffer[27][2]~q\ & ((\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux19~7_combout\,
	datab => \disp|r_buffer[27][2]~q\,
	datac => \disp|r_buffer[31][2]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux19~8_combout\);

-- Location: FF_X22_Y18_N31
\disp|r_buffer[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][2]~q\);

-- Location: FF_X20_Y17_N15
\disp|r_buffer[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][2]~q\);

-- Location: FF_X22_Y18_N29
\disp|r_buffer[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][2]~q\);

-- Location: FF_X20_Y17_N17
\disp|r_buffer[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][2]~q\);

-- Location: LCCOMB_X20_Y17_N16
\disp|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~0_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[26][2]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[18][2]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][2]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][2]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux19~0_combout\);

-- Location: LCCOMB_X20_Y17_N14
\disp|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~1_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux19~0_combout\ & ((\disp|r_buffer[30][2]~q\))) # (!\disp|Mux19~0_combout\ & (\disp|r_buffer[22][2]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[22][2]~q\,
	datac => \disp|r_buffer[30][2]~q\,
	datad => \disp|Mux19~0_combout\,
	combout => \disp|Mux19~1_combout\);

-- Location: FF_X24_Y15_N25
\disp|r_buffer[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][2]~q\);

-- Location: FF_X24_Y17_N5
\disp|r_buffer[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][2]~q\);

-- Location: FF_X24_Y15_N11
\disp|r_buffer[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][2]~q\);

-- Location: FF_X24_Y17_N3
\disp|r_buffer[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][2]~q\);

-- Location: LCCOMB_X24_Y17_N2
\disp|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~4_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[24][2]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[16][2]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][2]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[16][2]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux19~4_combout\);

-- Location: LCCOMB_X24_Y17_N4
\disp|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~5_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux19~4_combout\ & ((\disp|r_buffer[28][2]~q\))) # (!\disp|Mux19~4_combout\ & (\disp|r_buffer[20][2]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[20][2]~q\,
	datac => \disp|r_buffer[28][2]~q\,
	datad => \disp|Mux19~4_combout\,
	combout => \disp|Mux19~5_combout\);

-- Location: FF_X24_Y16_N25
\disp|r_buffer[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][2]~q\);

-- Location: FF_X23_Y16_N15
\disp|r_buffer[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][2]~q\);

-- Location: FF_X24_Y16_N3
\disp|r_buffer[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][2]~q\);

-- Location: FF_X23_Y16_N25
\disp|r_buffer[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][2]~q\);

-- Location: LCCOMB_X23_Y16_N24
\disp|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~2_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[21][2]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[17][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[21][2]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][2]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux19~2_combout\);

-- Location: LCCOMB_X23_Y16_N14
\disp|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~3_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux19~2_combout\ & ((\disp|r_buffer[29][2]~q\))) # (!\disp|Mux19~2_combout\ & (\disp|r_buffer[25][2]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][2]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[29][2]~q\,
	datad => \disp|Mux19~2_combout\,
	combout => \disp|Mux19~3_combout\);

-- Location: LCCOMB_X24_Y17_N26
\disp|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~6_combout\ = (\disp|Add4~2_combout\ & (\disp|Add4~0_combout\)) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & ((\disp|Mux19~3_combout\))) # (!\disp|Add4~0_combout\ & (\disp|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux19~5_combout\,
	datad => \disp|Mux19~3_combout\,
	combout => \disp|Mux19~6_combout\);

-- Location: LCCOMB_X22_Y17_N20
\disp|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~9_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux19~6_combout\ & (\disp|Mux19~8_combout\)) # (!\disp|Mux19~6_combout\ & ((\disp|Mux19~1_combout\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Mux19~8_combout\,
	datac => \disp|Mux19~1_combout\,
	datad => \disp|Mux19~6_combout\,
	combout => \disp|Mux19~9_combout\);

-- Location: LCCOMB_X22_Y17_N22
\disp|begin_init~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~3_combout\ = (\disp|Mux15~9_combout\) # ((\disp|Mux18~9_combout\) # ((\disp|Mux14~9_combout\) # (\disp|Mux19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux15~9_combout\,
	datab => \disp|Mux18~9_combout\,
	datac => \disp|Mux14~9_combout\,
	datad => \disp|Mux19~9_combout\,
	combout => \disp|begin_init~3_combout\);

-- Location: LCCOMB_X21_Y17_N10
\disp|r_buffer[8][5]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[8][5]~100_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~2_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~2_combout\,
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|buffer_ptr\(4),
	combout => \disp|r_buffer[8][5]~100_combout\);

-- Location: LCCOMB_X20_Y17_N10
\disp|r_buffer[8][5]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[8][5]~56_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[8][5]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal5~20_combout\,
	datac => \disp|r_buffer[8][5]~100_combout\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|r_buffer[8][5]~56_combout\);

-- Location: FF_X21_Y20_N5
\disp|r_buffer[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][7]~q\);

-- Location: LCCOMB_X22_Y19_N18
\disp|r_buffer[9][3]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[9][3]~99_combout\ = ((\disp|buffer_ptr\(4)) # ((!\disp|Decoder0~1_combout\) # (!\disp|r_buffer[32][5]~53_combout\))) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|buffer_ptr\(4),
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|Decoder0~1_combout\,
	combout => \disp|r_buffer[9][3]~99_combout\);

-- Location: LCCOMB_X22_Y19_N2
\disp|r_buffer[9][3]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[9][3]~55_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[9][3]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[9][3]~99_combout\,
	combout => \disp|r_buffer[9][3]~55_combout\);

-- Location: FF_X22_Y20_N1
\disp|r_buffer[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][7]~q\);

-- Location: LCCOMB_X21_Y20_N4
\disp|Mux14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~10_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|r_buffer[9][7]~q\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][7]~q\,
	datad => \disp|r_buffer[9][7]~q\,
	combout => \disp|Mux14~10_combout\);

-- Location: LCCOMB_X22_Y19_N20
\disp|r_buffer[11][3]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[11][3]~101_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~3_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~3_combout\,
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|buffer_ptr\(4),
	combout => \disp|r_buffer[11][3]~101_combout\);

-- Location: LCCOMB_X22_Y19_N4
\disp|r_buffer[11][3]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[11][3]~57_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[11][3]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|r_buffer[11][3]~101_combout\,
	combout => \disp|r_buffer[11][3]~57_combout\);

-- Location: FF_X21_Y20_N11
\disp|r_buffer[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][7]~q\);

-- Location: LCCOMB_X22_Y19_N0
\disp|r_buffer[10][3]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[10][3]~98_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~0_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~0_combout\,
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|buffer_ptr\(4),
	combout => \disp|r_buffer[10][3]~98_combout\);

-- Location: LCCOMB_X22_Y20_N26
\disp|r_buffer[10][3]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[10][3]~54_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[10][3]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \disp|Equal5~20_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|r_buffer[10][3]~98_combout\,
	combout => \disp|r_buffer[10][3]~54_combout\);

-- Location: FF_X22_Y20_N7
\disp|r_buffer[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][7]~q\);

-- Location: LCCOMB_X21_Y20_N10
\disp|Mux14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~11_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux14~10_combout\ & (\disp|r_buffer[11][7]~q\)) # (!\disp|Mux14~10_combout\ & ((\disp|r_buffer[10][7]~q\))))) # (!\disp|Add4~2_combout\ & (\disp|Mux14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|Mux14~10_combout\,
	datac => \disp|r_buffer[11][7]~q\,
	datad => \disp|r_buffer[10][7]~q\,
	combout => \disp|Mux14~11_combout\);

-- Location: LCCOMB_X22_Y15_N0
\disp|r_buffer[13][0]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[13][0]~108_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~4_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~4_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[13][0]~108_combout\);

-- Location: LCCOMB_X22_Y16_N16
\disp|r_buffer[13][0]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[13][0]~67_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[13][0]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[13][0]~108_combout\,
	combout => \disp|r_buffer[13][0]~67_combout\);

-- Location: FF_X19_Y16_N23
\disp|r_buffer[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][7]~q\);

-- Location: LCCOMB_X21_Y19_N26
\disp|r_buffer[15][3]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[15][3]~111_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~7_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~7_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[15][3]~111_combout\);

-- Location: LCCOMB_X21_Y16_N26
\disp|r_buffer[15][3]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[15][3]~70_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[15][3]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|r_buffer[15][3]~111_combout\,
	combout => \disp|r_buffer[15][3]~70_combout\);

-- Location: FF_X20_Y16_N23
\disp|r_buffer[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][7]~q\);

-- Location: LCCOMB_X22_Y15_N18
\disp|r_buffer[14][2]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[14][2]~109_combout\ = (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~5_combout\)) # (!\disp|buffer_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~5_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[14][2]~109_combout\);

-- Location: LCCOMB_X22_Y15_N12
\disp|r_buffer[14][2]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[14][2]~68_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[14][2]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[14][2]~109_combout\,
	combout => \disp|r_buffer[14][2]~68_combout\);

-- Location: FF_X21_Y15_N19
\disp|r_buffer[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][7]~q\);

-- Location: LCCOMB_X21_Y15_N26
\disp|r_buffer[12][7]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[12][7]~110_combout\ = ((\disp|buffer_ptr\(4)) # ((!\disp|r_buffer[32][5]~53_combout\) # (!\disp|buffer_ptr\(3)))) # (!\disp|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Decoder0~6_combout\,
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[12][7]~110_combout\);

-- Location: LCCOMB_X21_Y15_N2
\disp|r_buffer[12][7]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[12][7]~69_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[12][7]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|r_buffer[12][7]~110_combout\,
	datad => \disp|Equal5~20_combout\,
	combout => \disp|r_buffer[12][7]~69_combout\);

-- Location: FF_X20_Y16_N17
\disp|r_buffer[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][7]~q\);

-- Location: LCCOMB_X20_Y16_N16
\disp|Mux14~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~17_combout\ = (\disp|Add4~2_combout\ & ((\disp|r_buffer[14][7]~q\) # ((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & (((\disp|r_buffer[12][7]~q\ & !\disp|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][7]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][7]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux14~17_combout\);

-- Location: LCCOMB_X20_Y16_N22
\disp|Mux14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~18_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux14~17_combout\ & ((\disp|r_buffer[15][7]~q\))) # (!\disp|Mux14~17_combout\ & (\disp|r_buffer[13][7]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][7]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[15][7]~q\,
	datad => \disp|Mux14~17_combout\,
	combout => \disp|Mux14~18_combout\);

-- Location: LCCOMB_X23_Y18_N16
\disp|r_buffer[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[5][7]~feeder_combout\ = \disp|r_buffer~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~92_combout\,
	combout => \disp|r_buffer[5][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N2
\disp|r_buffer[5][3]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[5][3]~102_combout\ = (\disp|buffer_ptr\(4)) # (((\disp|buffer_ptr\(3)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|Decoder0~4_combout\,
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[5][3]~102_combout\);

-- Location: LCCOMB_X23_Y18_N24
\disp|r_buffer[5][3]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[5][3]~59_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[5][3]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|r_buffer[5][3]~102_combout\,
	combout => \disp|r_buffer[5][3]~59_combout\);

-- Location: FF_X23_Y18_N17
\disp|r_buffer[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[5][7]~feeder_combout\,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][7]~q\);

-- Location: LCCOMB_X21_Y15_N12
\disp|r_buffer[32][5]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][5]~58_combout\ = (!\disp|buffer_ptr\(3) & (!\disp|buffer_ptr\(4) & \disp|r_buffer[32][5]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[32][5]~58_combout\);

-- Location: LCCOMB_X21_Y15_N16
\disp|r_buffer[7][3]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[7][3]~62_combout\ = ((\disp|r_buffer[32][5]~58_combout\ & \disp|Decoder0~7_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][5]~58_combout\,
	datac => \disp|Decoder0~7_combout\,
	datad => \disp|buffer_ptr[28]~103_combout\,
	combout => \disp|r_buffer[7][3]~62_combout\);

-- Location: FF_X20_Y18_N25
\disp|r_buffer[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][7]~q\);

-- Location: LCCOMB_X22_Y16_N24
\disp|r_buffer[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][7]~feeder_combout\ = \disp|r_buffer~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~92_combout\,
	combout => \disp|r_buffer[6][7]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N10
\disp|r_buffer[6][3]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][3]~103_combout\ = (\disp|buffer_ptr\(3)) # ((\disp|buffer_ptr\(4)) # ((!\disp|Decoder0~5_combout\) # (!\disp|r_buffer[32][5]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|buffer_ptr\(4),
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|Decoder0~5_combout\,
	combout => \disp|r_buffer[6][3]~103_combout\);

-- Location: LCCOMB_X22_Y19_N30
\disp|r_buffer[6][3]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][3]~60_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[6][3]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|r_buffer[6][3]~103_combout\,
	combout => \disp|r_buffer[6][3]~60_combout\);

-- Location: FF_X22_Y16_N25
\disp|r_buffer[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[6][7]~feeder_combout\,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][7]~q\);

-- Location: LCCOMB_X21_Y15_N22
\disp|r_buffer[4][6]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[4][6]~104_combout\ = ((\disp|buffer_ptr\(4)) # ((\disp|buffer_ptr\(3)) # (!\disp|r_buffer[32][5]~53_combout\))) # (!\disp|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Decoder0~6_combout\,
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[4][6]~104_combout\);

-- Location: LCCOMB_X21_Y15_N6
\disp|r_buffer[4][6]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[4][6]~61_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[4][6]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|r_buffer[4][6]~104_combout\,
	datad => \disp|Equal5~20_combout\,
	combout => \disp|r_buffer[4][6]~61_combout\);

-- Location: FF_X20_Y18_N7
\disp|r_buffer[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][7]~q\);

-- Location: LCCOMB_X20_Y18_N6
\disp|Mux14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~12_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[6][7]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][7]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[4][7]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux14~12_combout\);

-- Location: LCCOMB_X20_Y18_N24
\disp|Mux14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~13_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux14~12_combout\ & ((\disp|r_buffer[7][7]~q\))) # (!\disp|Mux14~12_combout\ & (\disp|r_buffer[5][7]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][7]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[7][7]~q\,
	datad => \disp|Mux14~12_combout\,
	combout => \disp|Mux14~13_combout\);

-- Location: LCCOMB_X20_Y15_N18
\disp|r_buffer[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][7]~feeder_combout\ = \disp|r_buffer~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~92_combout\,
	combout => \disp|r_buffer[2][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N14
\disp|r_buffer[2][6]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][6]~105_combout\ = ((\disp|buffer_ptr\(4)) # ((\disp|buffer_ptr\(3)) # (!\disp|r_buffer[32][5]~53_combout\))) # (!\disp|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Decoder0~0_combout\,
	datab => \disp|buffer_ptr\(4),
	datac => \disp|buffer_ptr\(3),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[2][6]~105_combout\);

-- Location: LCCOMB_X20_Y15_N28
\disp|r_buffer[2][6]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][6]~63_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[2][6]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|r_buffer[2][6]~105_combout\,
	combout => \disp|r_buffer[2][6]~63_combout\);

-- Location: FF_X20_Y15_N19
\disp|r_buffer[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[2][7]~feeder_combout\,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][7]~q\);

-- Location: LCCOMB_X22_Y15_N30
\disp|r_buffer[3][3]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[3][3]~107_combout\ = (\disp|buffer_ptr\(3)) # (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~3_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[3][3]~107_combout\);

-- Location: LCCOMB_X21_Y16_N0
\disp|r_buffer[3][3]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[3][3]~66_combout\ = (\i_I2C_reset~input_o\) # (((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\)) # (!\disp|r_buffer[3][3]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|print_ptr[14]~32_combout\,
	datac => \disp|r_buffer[3][3]~107_combout\,
	datad => \disp|Equal5~20_combout\,
	combout => \disp|r_buffer[3][3]~66_combout\);

-- Location: FF_X21_Y16_N31
\disp|r_buffer[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][7]~q\);

-- Location: LCCOMB_X20_Y15_N24
\disp|r_buffer[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[1][7]~feeder_combout\ = \disp|r_buffer~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~92_combout\,
	combout => \disp|r_buffer[1][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N28
\disp|r_buffer[1][4]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[1][4]~106_combout\ = (\disp|buffer_ptr\(3)) # (((\disp|buffer_ptr\(4)) # (!\disp|r_buffer[32][5]~53_combout\)) # (!\disp|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|Decoder0~1_combout\,
	datac => \disp|buffer_ptr\(4),
	datad => \disp|r_buffer[32][5]~53_combout\,
	combout => \disp|r_buffer[1][4]~106_combout\);

-- Location: LCCOMB_X20_Y15_N22
\disp|r_buffer[1][4]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[1][4]~64_combout\ = (\i_I2C_reset~input_o\) # (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|r_buffer[1][4]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \i_I2C_reset~input_o\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|r_buffer[1][4]~106_combout\,
	combout => \disp|r_buffer[1][4]~64_combout\);

-- Location: FF_X20_Y15_N25
\disp|r_buffer[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[1][7]~feeder_combout\,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][7]~q\);

-- Location: LCCOMB_X21_Y15_N0
\disp|r_buffer[0][0]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[0][0]~65_combout\ = ((\disp|r_buffer[32][5]~58_combout\ & \disp|Decoder0~2_combout\)) # (!\disp|buffer_ptr[28]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][5]~58_combout\,
	datab => \disp|Decoder0~2_combout\,
	datad => \disp|buffer_ptr[28]~103_combout\,
	combout => \disp|r_buffer[0][0]~65_combout\);

-- Location: FF_X21_Y16_N29
\disp|r_buffer[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][7]~q\);

-- Location: LCCOMB_X21_Y16_N28
\disp|Mux14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~14_combout\ = (\disp|Add4~0_combout\ & ((\disp|r_buffer[1][7]~q\) # ((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|r_buffer[0][7]~q\ & !\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[1][7]~q\,
	datac => \disp|r_buffer[0][7]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux14~14_combout\);

-- Location: LCCOMB_X21_Y16_N30
\disp|Mux14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~15_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux14~14_combout\ & ((\disp|r_buffer[3][7]~q\))) # (!\disp|Mux14~14_combout\ & (\disp|r_buffer[2][7]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[2][7]~q\,
	datac => \disp|r_buffer[3][7]~q\,
	datad => \disp|Mux14~14_combout\,
	combout => \disp|Mux14~15_combout\);

-- Location: LCCOMB_X20_Y17_N2
\disp|Mux14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~16_combout\ = (\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\) # ((\disp|Mux14~13_combout\)))) # (!\disp|Add4~4_combout\ & (!\disp|Add4~6_combout\ & ((\disp|Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux14~13_combout\,
	datad => \disp|Mux14~15_combout\,
	combout => \disp|Mux14~16_combout\);

-- Location: LCCOMB_X20_Y17_N24
\disp|Mux14~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux14~19_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux14~16_combout\ & ((\disp|Mux14~18_combout\))) # (!\disp|Mux14~16_combout\ & (\disp|Mux14~11_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Mux14~11_combout\,
	datac => \disp|Mux14~18_combout\,
	datad => \disp|Mux14~16_combout\,
	combout => \disp|Mux14~19_combout\);

-- Location: FF_X22_Y20_N3
\disp|r_buffer[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][2]~q\);

-- Location: FF_X21_Y20_N7
\disp|r_buffer[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][2]~q\);

-- Location: FF_X21_Y20_N13
\disp|r_buffer[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][2]~q\);

-- Location: FF_X22_Y20_N29
\disp|r_buffer[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][2]~q\);

-- Location: LCCOMB_X21_Y20_N12
\disp|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~10_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|r_buffer[9][2]~q\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][2]~q\,
	datad => \disp|r_buffer[9][2]~q\,
	combout => \disp|Mux19~10_combout\);

-- Location: LCCOMB_X21_Y20_N6
\disp|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~11_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux19~10_combout\ & ((\disp|r_buffer[11][2]~q\))) # (!\disp|Mux19~10_combout\ & (\disp|r_buffer[10][2]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[10][2]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[11][2]~q\,
	datad => \disp|Mux19~10_combout\,
	combout => \disp|Mux19~11_combout\);

-- Location: FF_X21_Y16_N25
\disp|r_buffer[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][2]~q\);

-- Location: FF_X19_Y15_N29
\disp|r_buffer[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][2]~q\);

-- Location: FF_X19_Y15_N19
\disp|r_buffer[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][2]~q\);

-- Location: FF_X19_Y17_N21
\disp|r_buffer[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][2]~q\);

-- Location: LCCOMB_X19_Y17_N20
\disp|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~14_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[1][2]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[1][2]~q\,
	datac => \disp|r_buffer[0][2]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux19~14_combout\);

-- Location: LCCOMB_X19_Y17_N30
\disp|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~15_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux19~14_combout\ & (\disp|r_buffer[3][2]~q\)) # (!\disp|Mux19~14_combout\ & ((\disp|r_buffer[2][2]~q\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[3][2]~q\,
	datac => \disp|r_buffer[2][2]~q\,
	datad => \disp|Mux19~14_combout\,
	combout => \disp|Mux19~15_combout\);

-- Location: FF_X23_Y18_N11
\disp|r_buffer[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][2]~q\);

-- Location: FF_X20_Y18_N29
\disp|r_buffer[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][2]~q\);

-- Location: LCCOMB_X19_Y18_N12
\disp|r_buffer[6][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][2]~feeder_combout\ = \disp|r_buffer~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~94_combout\,
	combout => \disp|r_buffer[6][2]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\disp|r_buffer[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[6][2]~feeder_combout\,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][2]~q\);

-- Location: FF_X20_Y18_N19
\disp|r_buffer[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][2]~q\);

-- Location: LCCOMB_X20_Y18_N18
\disp|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~12_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[6][2]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][2]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[4][2]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux19~12_combout\);

-- Location: LCCOMB_X20_Y18_N28
\disp|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~13_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux19~12_combout\ & ((\disp|r_buffer[7][2]~q\))) # (!\disp|Mux19~12_combout\ & (\disp|r_buffer[5][2]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][2]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[7][2]~q\,
	datad => \disp|Mux19~12_combout\,
	combout => \disp|Mux19~13_combout\);

-- Location: LCCOMB_X19_Y17_N8
\disp|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~16_combout\ = (\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\) # ((\disp|Mux19~13_combout\)))) # (!\disp|Add4~4_combout\ & (!\disp|Add4~6_combout\ & (\disp|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux19~15_combout\,
	datad => \disp|Mux19~13_combout\,
	combout => \disp|Mux19~16_combout\);

-- Location: FF_X19_Y16_N31
\disp|r_buffer[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][2]~q\);

-- Location: FF_X20_Y16_N31
\disp|r_buffer[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][2]~q\);

-- Location: LCCOMB_X22_Y16_N10
\disp|r_buffer[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[14][2]~feeder_combout\ = \disp|r_buffer~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~94_combout\,
	combout => \disp|r_buffer[14][2]~feeder_combout\);

-- Location: FF_X22_Y16_N11
\disp|r_buffer[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[14][2]~feeder_combout\,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][2]~q\);

-- Location: FF_X20_Y16_N29
\disp|r_buffer[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][2]~q\);

-- Location: LCCOMB_X20_Y16_N28
\disp|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~17_combout\ = (\disp|Add4~2_combout\ & ((\disp|r_buffer[14][2]~q\) # ((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & (((\disp|r_buffer[12][2]~q\ & !\disp|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][2]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][2]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux19~17_combout\);

-- Location: LCCOMB_X20_Y16_N30
\disp|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~18_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux19~17_combout\ & ((\disp|r_buffer[15][2]~q\))) # (!\disp|Mux19~17_combout\ & (\disp|r_buffer[13][2]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][2]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[15][2]~q\,
	datad => \disp|Mux19~17_combout\,
	combout => \disp|Mux19~18_combout\);

-- Location: LCCOMB_X19_Y17_N10
\disp|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux19~19_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux19~16_combout\ & ((\disp|Mux19~18_combout\))) # (!\disp|Mux19~16_combout\ & (\disp|Mux19~11_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Mux19~11_combout\,
	datac => \disp|Mux19~16_combout\,
	datad => \disp|Mux19~18_combout\,
	combout => \disp|Mux19~19_combout\);

-- Location: FF_X21_Y15_N1
\disp|r_buffer[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][6]~q\);

-- Location: FF_X20_Y16_N3
\disp|r_buffer[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][6]~q\);

-- Location: FF_X19_Y16_N29
\disp|r_buffer[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][6]~q\);

-- Location: FF_X20_Y16_N21
\disp|r_buffer[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][6]~q\);

-- Location: LCCOMB_X20_Y16_N20
\disp|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~17_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[13][6]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][6]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][6]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux15~17_combout\);

-- Location: LCCOMB_X20_Y16_N2
\disp|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~18_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux15~17_combout\ & ((\disp|r_buffer[15][6]~q\))) # (!\disp|Mux15~17_combout\ & (\disp|r_buffer[14][6]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][6]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[15][6]~q\,
	datad => \disp|Mux15~17_combout\,
	combout => \disp|Mux15~18_combout\);

-- Location: LCCOMB_X19_Y18_N30
\disp|r_buffer[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[5][6]~feeder_combout\ = \disp|r_buffer~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~93_combout\,
	combout => \disp|r_buffer[5][6]~feeder_combout\);

-- Location: FF_X19_Y18_N31
\disp|r_buffer[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[5][6]~feeder_combout\,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][6]~q\);

-- Location: FF_X20_Y18_N11
\disp|r_buffer[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][6]~q\);

-- Location: LCCOMB_X20_Y18_N10
\disp|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~10_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[5][6]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[5][6]~q\,
	datac => \disp|r_buffer[4][6]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux15~10_combout\);

-- Location: LCCOMB_X19_Y18_N20
\disp|r_buffer[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][6]~feeder_combout\ = \disp|r_buffer~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~93_combout\,
	combout => \disp|r_buffer[6][6]~feeder_combout\);

-- Location: FF_X19_Y18_N21
\disp|r_buffer[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[6][6]~feeder_combout\,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][6]~q\);

-- Location: FF_X20_Y18_N9
\disp|r_buffer[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][6]~q\);

-- Location: LCCOMB_X20_Y18_N8
\disp|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~11_combout\ = (\disp|Mux15~10_combout\ & (((\disp|r_buffer[7][6]~q\) # (!\disp|Add4~2_combout\)))) # (!\disp|Mux15~10_combout\ & (\disp|r_buffer[6][6]~q\ & ((\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux15~10_combout\,
	datab => \disp|r_buffer[6][6]~q\,
	datac => \disp|r_buffer[7][6]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux15~11_combout\);

-- Location: FF_X22_Y20_N15
\disp|r_buffer[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][6]~q\);

-- Location: FF_X21_Y20_N27
\disp|r_buffer[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][6]~q\);

-- Location: FF_X21_Y20_N17
\disp|r_buffer[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][6]~q\);

-- Location: FF_X22_Y20_N17
\disp|r_buffer[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][6]~q\);

-- Location: LCCOMB_X21_Y20_N16
\disp|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~12_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[10][6]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][6]~q\,
	datad => \disp|r_buffer[10][6]~q\,
	combout => \disp|Mux15~12_combout\);

-- Location: LCCOMB_X21_Y20_N26
\disp|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~13_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux15~12_combout\ & ((\disp|r_buffer[11][6]~q\))) # (!\disp|Mux15~12_combout\ & (\disp|r_buffer[9][6]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[9][6]~q\,
	datac => \disp|r_buffer[11][6]~q\,
	datad => \disp|Mux15~12_combout\,
	combout => \disp|Mux15~13_combout\);

-- Location: LCCOMB_X19_Y15_N16
\disp|r_buffer[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[1][6]~feeder_combout\ = \disp|r_buffer~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~93_combout\,
	combout => \disp|r_buffer[1][6]~feeder_combout\);

-- Location: FF_X19_Y15_N17
\disp|r_buffer[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[1][6]~feeder_combout\,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][6]~q\);

-- Location: FF_X19_Y17_N19
\disp|r_buffer[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][6]~q\);

-- Location: LCCOMB_X19_Y15_N22
\disp|r_buffer[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][6]~feeder_combout\ = \disp|r_buffer~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~93_combout\,
	combout => \disp|r_buffer[2][6]~feeder_combout\);

-- Location: FF_X19_Y15_N23
\disp|r_buffer[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[2][6]~feeder_combout\,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][6]~q\);

-- Location: FF_X19_Y17_N1
\disp|r_buffer[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][6]~q\);

-- Location: LCCOMB_X19_Y17_N0
\disp|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~14_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[2][6]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[2][6]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[0][6]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux15~14_combout\);

-- Location: LCCOMB_X19_Y17_N18
\disp|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~15_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux15~14_combout\ & ((\disp|r_buffer[3][6]~q\))) # (!\disp|Mux15~14_combout\ & (\disp|r_buffer[1][6]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[1][6]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[3][6]~q\,
	datad => \disp|Mux15~14_combout\,
	combout => \disp|Mux15~15_combout\);

-- Location: LCCOMB_X19_Y17_N28
\disp|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~16_combout\ = (\disp|Add4~4_combout\ & (\disp|Add4~6_combout\)) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|Mux15~13_combout\)) # (!\disp|Add4~6_combout\ & ((\disp|Mux15~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux15~13_combout\,
	datad => \disp|Mux15~15_combout\,
	combout => \disp|Mux15~16_combout\);

-- Location: LCCOMB_X19_Y17_N2
\disp|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux15~19_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux15~16_combout\ & (\disp|Mux15~18_combout\)) # (!\disp|Mux15~16_combout\ & ((\disp|Mux15~11_combout\))))) # (!\disp|Add4~4_combout\ & (((\disp|Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Mux15~18_combout\,
	datac => \disp|Mux15~11_combout\,
	datad => \disp|Mux15~16_combout\,
	combout => \disp|Mux15~19_combout\);

-- Location: FF_X23_Y18_N13
\disp|r_buffer[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][3]~q\);

-- Location: FF_X20_Y18_N27
\disp|r_buffer[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][3]~q\);

-- Location: LCCOMB_X20_Y18_N26
\disp|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~10_combout\ = (\disp|Add4~0_combout\ & ((\disp|r_buffer[5][3]~q\) # ((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|r_buffer[4][3]~q\ & !\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][3]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[4][3]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux18~10_combout\);

-- Location: FF_X22_Y16_N29
\disp|r_buffer[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][3]~q\);

-- Location: FF_X20_Y18_N21
\disp|r_buffer[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][3]~q\);

-- Location: LCCOMB_X20_Y18_N20
\disp|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~11_combout\ = (\disp|Mux18~10_combout\ & (((\disp|r_buffer[7][3]~q\) # (!\disp|Add4~2_combout\)))) # (!\disp|Mux18~10_combout\ & (\disp|r_buffer[6][3]~q\ & ((\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux18~10_combout\,
	datab => \disp|r_buffer[6][3]~q\,
	datac => \disp|r_buffer[7][3]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux18~11_combout\);

-- Location: FF_X19_Y16_N13
\disp|r_buffer[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][3]~q\);

-- Location: FF_X19_Y17_N7
\disp|r_buffer[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][3]~q\);

-- Location: LCCOMB_X19_Y15_N12
\disp|r_buffer[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][3]~feeder_combout\ = \disp|r_buffer~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~95_combout\,
	combout => \disp|r_buffer[2][3]~feeder_combout\);

-- Location: FF_X19_Y15_N13
\disp|r_buffer[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[2][3]~feeder_combout\,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][3]~q\);

-- Location: FF_X19_Y17_N25
\disp|r_buffer[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][3]~q\);

-- Location: LCCOMB_X19_Y17_N24
\disp|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~14_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[2][3]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[2][3]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[0][3]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux18~14_combout\);

-- Location: LCCOMB_X19_Y17_N6
\disp|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~15_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux18~14_combout\ & ((\disp|r_buffer[3][3]~q\))) # (!\disp|Mux18~14_combout\ & (\disp|r_buffer[1][3]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[1][3]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[3][3]~q\,
	datad => \disp|Mux18~14_combout\,
	combout => \disp|Mux18~15_combout\);

-- Location: FF_X22_Y20_N11
\disp|r_buffer[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][3]~q\);

-- Location: FF_X21_Y20_N31
\disp|r_buffer[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][3]~q\);

-- Location: FF_X21_Y20_N1
\disp|r_buffer[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][3]~q\);

-- Location: FF_X22_Y20_N25
\disp|r_buffer[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][3]~q\);

-- Location: LCCOMB_X21_Y20_N0
\disp|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~12_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[10][3]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][3]~q\,
	datad => \disp|r_buffer[10][3]~q\,
	combout => \disp|Mux18~12_combout\);

-- Location: LCCOMB_X21_Y20_N30
\disp|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~13_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux18~12_combout\ & ((\disp|r_buffer[11][3]~q\))) # (!\disp|Mux18~12_combout\ & (\disp|r_buffer[9][3]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[9][3]~q\,
	datac => \disp|r_buffer[11][3]~q\,
	datad => \disp|Mux18~12_combout\,
	combout => \disp|Mux18~13_combout\);

-- Location: LCCOMB_X19_Y17_N4
\disp|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~16_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & ((\disp|Mux18~13_combout\))) # (!\disp|Add4~6_combout\ & (\disp|Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux18~15_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Add4~6_combout\,
	datad => \disp|Mux18~13_combout\,
	combout => \disp|Mux18~16_combout\);

-- Location: FF_X22_Y16_N19
\disp|r_buffer[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][3]~q\);

-- Location: FF_X20_Y16_N19
\disp|r_buffer[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][3]~q\);

-- Location: FF_X17_Y16_N17
\disp|r_buffer[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][3]~q\);

-- Location: FF_X20_Y16_N9
\disp|r_buffer[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~95_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][3]~q\);

-- Location: LCCOMB_X20_Y16_N8
\disp|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~17_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[13][3]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][3]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][3]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux18~17_combout\);

-- Location: LCCOMB_X20_Y16_N18
\disp|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~18_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux18~17_combout\ & ((\disp|r_buffer[15][3]~q\))) # (!\disp|Mux18~17_combout\ & (\disp|r_buffer[14][3]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][3]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[15][3]~q\,
	datad => \disp|Mux18~17_combout\,
	combout => \disp|Mux18~18_combout\);

-- Location: LCCOMB_X19_Y17_N14
\disp|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux18~19_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux18~16_combout\ & ((\disp|Mux18~18_combout\))) # (!\disp|Mux18~16_combout\ & (\disp|Mux18~11_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux18~11_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Mux18~16_combout\,
	datad => \disp|Mux18~18_combout\,
	combout => \disp|Mux18~19_combout\);

-- Location: LCCOMB_X22_Y17_N28
\disp|begin_init~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~4_combout\ = (\disp|Mux14~19_combout\) # ((\disp|Mux19~19_combout\) # ((\disp|Mux15~19_combout\) # (\disp|Mux18~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux14~19_combout\,
	datab => \disp|Mux19~19_combout\,
	datac => \disp|Mux15~19_combout\,
	datad => \disp|Mux18~19_combout\,
	combout => \disp|begin_init~4_combout\);

-- Location: LCCOMB_X22_Y17_N26
\disp|begin_init~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~5_combout\ = (\disp|Add4~10_combout\) # ((\disp|Add4~8_combout\ & (!\disp|begin_init~3_combout\)) # (!\disp|Add4~8_combout\ & ((!\disp|begin_init~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~8_combout\,
	datab => \disp|Add4~10_combout\,
	datac => \disp|begin_init~3_combout\,
	datad => \disp|begin_init~4_combout\,
	combout => \disp|begin_init~5_combout\);

-- Location: IOIBUF_X21_Y29_N1
\i_I2C_display_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(4),
	o => \i_I2C_display_input[4]~input_o\);

-- Location: LCCOMB_X22_Y22_N26
\disp|r_buffer~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~96_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datac => \i_I2C_display_input[4]~input_o\,
	combout => \disp|r_buffer~96_combout\);

-- Location: LCCOMB_X27_Y20_N0
\disp|r_buffer[32][5]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][5]~71_combout\ = (\disp|buffer_ptr\(0)) # ((\disp|buffer_ptr\(2)) # ((\disp|buffer_ptr\(1)) # (!\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(0),
	datab => \disp|buffer_ptr\(2),
	datac => \disp|buffer_ptr\(1),
	datad => \disp|buffer_ptr\(5),
	combout => \disp|r_buffer[32][5]~71_combout\);

-- Location: LCCOMB_X21_Y21_N28
\disp|r_buffer[32][5]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][5]~112_combout\ = (\disp|buffer_ptr\(4)) # ((\disp|buffer_ptr\(3)) # ((\disp|r_buffer[32][5]~71_combout\) # (!\disp|r_buffer[32][5]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|buffer_ptr\(3),
	datac => \disp|r_buffer[32][5]~53_combout\,
	datad => \disp|r_buffer[32][5]~71_combout\,
	combout => \disp|r_buffer[32][5]~112_combout\);

-- Location: LCCOMB_X21_Y21_N30
\disp|r_buffer[32][5]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][5]~72_combout\ = ((\i_I2C_reset~input_o\) # ((!\disp|print_ptr[14]~32_combout\ & \disp|Equal5~20_combout\))) # (!\disp|r_buffer[32][5]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr[14]~32_combout\,
	datab => \disp|r_buffer[32][5]~112_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|Equal5~20_combout\,
	combout => \disp|r_buffer[32][5]~72_combout\);

-- Location: FF_X22_Y22_N27
\disp|r_buffer[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer~96_combout\,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][4]~q\);

-- Location: IOIBUF_X41_Y22_N1
\i_I2C_display_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(5),
	o => \i_I2C_display_input[5]~input_o\);

-- Location: LCCOMB_X22_Y22_N20
\disp|r_buffer~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~97_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[5]~input_o\,
	combout => \disp|r_buffer~97_combout\);

-- Location: FF_X22_Y22_N21
\disp|r_buffer[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer~97_combout\,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][5]~q\);

-- Location: LCCOMB_X22_Y22_N24
\disp|r_buffer[32][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][3]~feeder_combout\ = \disp|r_buffer~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~95_combout\,
	combout => \disp|r_buffer[32][3]~feeder_combout\);

-- Location: FF_X22_Y22_N25
\disp|r_buffer[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[32][3]~feeder_combout\,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][3]~q\);

-- Location: LCCOMB_X22_Y22_N22
\disp|begin_init~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~9_combout\ = ((!\disp|r_buffer[32][4]~q\ & (!\disp|r_buffer[32][5]~q\ & !\disp|r_buffer[32][3]~q\))) # (!\disp|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][4]~q\,
	datab => \disp|r_buffer[32][5]~q\,
	datac => \disp|Add4~10_combout\,
	datad => \disp|r_buffer[32][3]~q\,
	combout => \disp|begin_init~9_combout\);

-- Location: FF_X21_Y21_N5
\disp|r_buffer[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~92_combout\,
	sload => VCC,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][7]~q\);

-- Location: FF_X22_Y22_N17
\disp|r_buffer[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~94_combout\,
	sload => VCC,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][2]~q\);

-- Location: FF_X22_Y22_N7
\disp|r_buffer[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~93_combout\,
	sload => VCC,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][6]~q\);

-- Location: LCCOMB_X22_Y22_N2
\disp|begin_init~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~8_combout\ = ((!\disp|r_buffer[32][7]~q\ & (!\disp|r_buffer[32][2]~q\ & !\disp|r_buffer[32][6]~q\))) # (!\disp|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][7]~q\,
	datab => \disp|r_buffer[32][2]~q\,
	datac => \disp|Add4~10_combout\,
	datad => \disp|r_buffer[32][6]~q\,
	combout => \disp|begin_init~8_combout\);

-- Location: FF_X24_Y16_N9
\disp|r_buffer[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][5]~q\);

-- Location: FF_X23_Y16_N5
\disp|r_buffer[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][5]~q\);

-- Location: FF_X23_Y16_N11
\disp|r_buffer[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][5]~q\);

-- Location: FF_X23_Y18_N7
\disp|r_buffer[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][5]~q\);

-- Location: LCCOMB_X23_Y16_N10
\disp|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~10_combout\ = (\disp|Add4~4_combout\ & (\disp|Add4~6_combout\)) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & ((\disp|r_buffer[25][5]~q\))) # (!\disp|Add4~6_combout\ & (\disp|r_buffer[17][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][5]~q\,
	datad => \disp|r_buffer[25][5]~q\,
	combout => \disp|Mux16~10_combout\);

-- Location: LCCOMB_X23_Y16_N2
\disp|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~11_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux16~10_combout\ & ((\disp|r_buffer[29][5]~q\))) # (!\disp|Mux16~10_combout\ & (\disp|r_buffer[21][5]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[21][5]~q\,
	datac => \disp|r_buffer[29][5]~q\,
	datad => \disp|Mux16~10_combout\,
	combout => \disp|Mux16~11_combout\);

-- Location: FF_X22_Y18_N11
\disp|r_buffer[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][5]~q\);

-- Location: FF_X20_Y17_N29
\disp|r_buffer[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][5]~q\);

-- Location: FF_X22_Y18_N13
\disp|r_buffer[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][5]~q\);

-- Location: FF_X20_Y17_N19
\disp|r_buffer[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][5]~q\);

-- Location: LCCOMB_X20_Y17_N18
\disp|Mux16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~12_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[22][5]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][5]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][5]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux16~12_combout\);

-- Location: LCCOMB_X20_Y17_N28
\disp|Mux16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~13_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux16~12_combout\ & ((\disp|r_buffer[30][5]~q\))) # (!\disp|Mux16~12_combout\ & (\disp|r_buffer[26][5]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][5]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[30][5]~q\,
	datad => \disp|Mux16~12_combout\,
	combout => \disp|Mux16~13_combout\);

-- Location: FF_X24_Y15_N9
\disp|r_buffer[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][5]~q\);

-- Location: FF_X23_Y17_N19
\disp|r_buffer[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][5]~q\);

-- Location: FF_X23_Y15_N11
\disp|r_buffer[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][5]~q\);

-- Location: FF_X23_Y17_N17
\disp|r_buffer[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][5]~q\);

-- Location: LCCOMB_X23_Y17_N16
\disp|Mux16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~14_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[20][5]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[16][5]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][5]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[16][5]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux16~14_combout\);

-- Location: LCCOMB_X23_Y17_N18
\disp|Mux16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~15_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux16~14_combout\ & ((\disp|r_buffer[28][5]~q\))) # (!\disp|Mux16~14_combout\ & (\disp|r_buffer[24][5]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|r_buffer[24][5]~q\,
	datac => \disp|r_buffer[28][5]~q\,
	datad => \disp|Mux16~14_combout\,
	combout => \disp|Mux16~15_combout\);

-- Location: LCCOMB_X23_Y17_N4
\disp|Mux16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~16_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|Mux16~13_combout\)) # (!\disp|Add4~2_combout\ & ((\disp|Mux16~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|Mux16~13_combout\,
	datad => \disp|Mux16~15_combout\,
	combout => \disp|Mux16~16_combout\);

-- Location: LCCOMB_X24_Y20_N8
\disp|r_buffer[23][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[23][5]~feeder_combout\ = \disp|r_buffer~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~97_combout\,
	combout => \disp|r_buffer[23][5]~feeder_combout\);

-- Location: FF_X24_Y20_N9
\disp|r_buffer[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[23][5]~feeder_combout\,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][5]~q\);

-- Location: FF_X24_Y18_N9
\disp|r_buffer[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][5]~q\);

-- Location: LCCOMB_X24_Y19_N30
\disp|r_buffer[27][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[27][5]~feeder_combout\ = \disp|r_buffer~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~97_combout\,
	combout => \disp|r_buffer[27][5]~feeder_combout\);

-- Location: FF_X24_Y19_N31
\disp|r_buffer[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[27][5]~feeder_combout\,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][5]~q\);

-- Location: FF_X24_Y18_N29
\disp|r_buffer[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][5]~q\);

-- Location: LCCOMB_X24_Y18_N6
\disp|Mux16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~17_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[27][5]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[19][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[27][5]~q\,
	datab => \disp|r_buffer[19][5]~q\,
	datac => \disp|Add4~4_combout\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux16~17_combout\);

-- Location: LCCOMB_X24_Y18_N8
\disp|Mux16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~18_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux16~17_combout\ & ((\disp|r_buffer[31][5]~q\))) # (!\disp|Mux16~17_combout\ & (\disp|r_buffer[23][5]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[23][5]~q\,
	datac => \disp|r_buffer[31][5]~q\,
	datad => \disp|Mux16~17_combout\,
	combout => \disp|Mux16~18_combout\);

-- Location: LCCOMB_X23_Y17_N10
\disp|Mux16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~19_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux16~16_combout\ & ((\disp|Mux16~18_combout\))) # (!\disp|Mux16~16_combout\ & (\disp|Mux16~11_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux16~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux16~11_combout\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|Mux16~16_combout\,
	datad => \disp|Mux16~18_combout\,
	combout => \disp|Mux16~19_combout\);

-- Location: FF_X19_Y18_N17
\disp|r_buffer[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][5]~q\);

-- Location: FF_X23_Y18_N1
\disp|r_buffer[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][5]~q\);

-- Location: FF_X20_Y18_N15
\disp|r_buffer[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][5]~q\);

-- Location: LCCOMB_X20_Y18_N14
\disp|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~0_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[5][5]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[5][5]~q\,
	datac => \disp|r_buffer[4][5]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux16~0_combout\);

-- Location: FF_X20_Y18_N13
\disp|r_buffer[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][5]~q\);

-- Location: LCCOMB_X20_Y18_N12
\disp|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~1_combout\ = (\disp|Mux16~0_combout\ & (((\disp|r_buffer[7][5]~q\) # (!\disp|Add4~2_combout\)))) # (!\disp|Mux16~0_combout\ & (\disp|r_buffer[6][5]~q\ & ((\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][5]~q\,
	datab => \disp|Mux16~0_combout\,
	datac => \disp|r_buffer[7][5]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux16~1_combout\);

-- Location: FF_X21_Y15_N15
\disp|r_buffer[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][5]~q\);

-- Location: FF_X20_Y16_N27
\disp|r_buffer[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][5]~q\);

-- Location: FF_X19_Y16_N15
\disp|r_buffer[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][5]~q\);

-- Location: FF_X20_Y16_N25
\disp|r_buffer[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][5]~q\);

-- Location: LCCOMB_X20_Y16_N24
\disp|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~7_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[13][5]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][5]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][5]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux16~7_combout\);

-- Location: LCCOMB_X20_Y16_N26
\disp|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~8_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux16~7_combout\ & ((\disp|r_buffer[15][5]~q\))) # (!\disp|Mux16~7_combout\ & (\disp|r_buffer[14][5]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][5]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[15][5]~q\,
	datad => \disp|Mux16~7_combout\,
	combout => \disp|Mux16~8_combout\);

-- Location: FF_X22_Y20_N19
\disp|r_buffer[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][5]~q\);

-- Location: FF_X21_Y20_N29
\disp|r_buffer[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][5]~q\);

-- Location: FF_X21_Y20_N3
\disp|r_buffer[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][5]~q\);

-- Location: FF_X22_Y20_N9
\disp|r_buffer[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][5]~q\);

-- Location: LCCOMB_X21_Y20_N2
\disp|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~2_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[10][5]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][5]~q\,
	datad => \disp|r_buffer[10][5]~q\,
	combout => \disp|Mux16~2_combout\);

-- Location: LCCOMB_X21_Y20_N28
\disp|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~3_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux16~2_combout\ & ((\disp|r_buffer[11][5]~q\))) # (!\disp|Mux16~2_combout\ & (\disp|r_buffer[9][5]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[9][5]~q\,
	datac => \disp|r_buffer[11][5]~q\,
	datad => \disp|Mux16~2_combout\,
	combout => \disp|Mux16~3_combout\);

-- Location: FF_X19_Y16_N9
\disp|r_buffer[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][5]~q\);

-- Location: FF_X21_Y16_N7
\disp|r_buffer[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][5]~q\);

-- Location: LCCOMB_X19_Y15_N0
\disp|r_buffer[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[2][5]~feeder_combout\ = \disp|r_buffer~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~97_combout\,
	combout => \disp|r_buffer[2][5]~feeder_combout\);

-- Location: FF_X19_Y15_N1
\disp|r_buffer[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[2][5]~feeder_combout\,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][5]~q\);

-- Location: FF_X21_Y16_N15
\disp|r_buffer[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~97_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][5]~q\);

-- Location: LCCOMB_X21_Y16_N20
\disp|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~4_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[2][5]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[2][5]~q\,
	datab => \disp|r_buffer[0][5]~q\,
	datac => \disp|Add4~0_combout\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux16~4_combout\);

-- Location: LCCOMB_X21_Y16_N6
\disp|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~5_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux16~4_combout\ & ((\disp|r_buffer[3][5]~q\))) # (!\disp|Mux16~4_combout\ & (\disp|r_buffer[1][5]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[1][5]~q\,
	datac => \disp|r_buffer[3][5]~q\,
	datad => \disp|Mux16~4_combout\,
	combout => \disp|Mux16~5_combout\);

-- Location: LCCOMB_X21_Y18_N0
\disp|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~6_combout\ = (\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\) # ((\disp|Mux16~3_combout\)))) # (!\disp|Add4~6_combout\ & (!\disp|Add4~4_combout\ & ((\disp|Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Mux16~3_combout\,
	datad => \disp|Mux16~5_combout\,
	combout => \disp|Mux16~6_combout\);

-- Location: LCCOMB_X21_Y18_N6
\disp|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux16~9_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux16~6_combout\ & ((\disp|Mux16~8_combout\))) # (!\disp|Mux16~6_combout\ & (\disp|Mux16~1_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux16~1_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Mux16~8_combout\,
	datad => \disp|Mux16~6_combout\,
	combout => \disp|Mux16~9_combout\);

-- Location: LCCOMB_X22_Y17_N30
\disp|begin_init~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~7_combout\ = (\disp|Add4~10_combout\) # ((\disp|Add4~8_combout\ & (!\disp|Mux16~19_combout\)) # (!\disp|Add4~8_combout\ & ((!\disp|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~8_combout\,
	datab => \disp|Add4~10_combout\,
	datac => \disp|Mux16~19_combout\,
	datad => \disp|Mux16~9_combout\,
	combout => \disp|begin_init~7_combout\);

-- Location: FF_X24_Y20_N29
\disp|r_buffer[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][4]~q\);

-- Location: FF_X23_Y20_N21
\disp|r_buffer[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][4]~q\);

-- Location: FF_X24_Y20_N3
\disp|r_buffer[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][4]~q\);

-- Location: FF_X23_Y20_N3
\disp|r_buffer[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][4]~q\);

-- Location: LCCOMB_X23_Y20_N2
\disp|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~17_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[23][4]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[19][4]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][4]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][4]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux17~17_combout\);

-- Location: LCCOMB_X23_Y20_N20
\disp|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~18_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux17~17_combout\ & ((\disp|r_buffer[31][4]~q\))) # (!\disp|Mux17~17_combout\ & (\disp|r_buffer[27][4]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|r_buffer[27][4]~q\,
	datac => \disp|r_buffer[31][4]~q\,
	datad => \disp|Mux17~17_combout\,
	combout => \disp|Mux17~18_combout\);

-- Location: FF_X24_Y15_N21
\disp|r_buffer[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][4]~q\);

-- Location: FF_X23_Y17_N23
\disp|r_buffer[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][4]~q\);

-- Location: FF_X24_Y15_N15
\disp|r_buffer[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][4]~q\);

-- Location: FF_X23_Y17_N1
\disp|r_buffer[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][4]~q\);

-- Location: LCCOMB_X23_Y17_N0
\disp|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~14_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[24][4]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][4]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[16][4]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux17~14_combout\);

-- Location: LCCOMB_X23_Y17_N22
\disp|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~15_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux17~14_combout\ & ((\disp|r_buffer[28][4]~q\))) # (!\disp|Mux17~14_combout\ & (\disp|r_buffer[20][4]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][4]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[28][4]~q\,
	datad => \disp|Mux17~14_combout\,
	combout => \disp|Mux17~15_combout\);

-- Location: FF_X24_Y16_N1
\disp|r_buffer[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][4]~q\);

-- Location: FF_X23_Y16_N29
\disp|r_buffer[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][4]~q\);

-- Location: FF_X24_Y16_N15
\disp|r_buffer[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][4]~q\);

-- Location: FF_X23_Y16_N19
\disp|r_buffer[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][4]~q\);

-- Location: LCCOMB_X23_Y16_N18
\disp|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~12_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[21][4]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[17][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[21][4]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[17][4]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux17~12_combout\);

-- Location: LCCOMB_X23_Y16_N28
\disp|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~13_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux17~12_combout\ & ((\disp|r_buffer[29][4]~q\))) # (!\disp|Mux17~12_combout\ & (\disp|r_buffer[25][4]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][4]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[29][4]~q\,
	datad => \disp|Mux17~12_combout\,
	combout => \disp|Mux17~13_combout\);

-- Location: LCCOMB_X23_Y17_N8
\disp|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~16_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|Mux17~13_combout\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|Mux17~15_combout\,
	datad => \disp|Mux17~13_combout\,
	combout => \disp|Mux17~16_combout\);

-- Location: FF_X22_Y18_N3
\disp|r_buffer[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][4]~q\);

-- Location: FF_X20_Y17_N13
\disp|r_buffer[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][4]~q\);

-- Location: FF_X22_Y18_N25
\disp|r_buffer[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][4]~q\);

-- Location: FF_X20_Y17_N7
\disp|r_buffer[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][4]~q\);

-- Location: LCCOMB_X20_Y17_N6
\disp|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~10_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[26][4]~q\) # ((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[18][4]~q\ & !\disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][4]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][4]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux17~10_combout\);

-- Location: LCCOMB_X20_Y17_N12
\disp|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~11_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux17~10_combout\ & ((\disp|r_buffer[30][4]~q\))) # (!\disp|Mux17~10_combout\ & (\disp|r_buffer[22][4]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[22][4]~q\,
	datac => \disp|r_buffer[30][4]~q\,
	datad => \disp|Mux17~10_combout\,
	combout => \disp|Mux17~11_combout\);

-- Location: LCCOMB_X23_Y17_N14
\disp|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~19_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux17~16_combout\ & (\disp|Mux17~18_combout\)) # (!\disp|Mux17~16_combout\ & ((\disp|Mux17~11_combout\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux17~18_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|Mux17~16_combout\,
	datad => \disp|Mux17~11_combout\,
	combout => \disp|Mux17~19_combout\);

-- Location: FF_X20_Y16_N5
\disp|r_buffer[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][4]~q\);

-- Location: LCCOMB_X22_Y16_N8
\disp|r_buffer[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[14][4]~feeder_combout\ = \disp|r_buffer~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~96_combout\,
	combout => \disp|r_buffer[14][4]~feeder_combout\);

-- Location: FF_X22_Y16_N9
\disp|r_buffer[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[14][4]~feeder_combout\,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][4]~q\);

-- Location: LCCOMB_X20_Y16_N4
\disp|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~7_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[14][4]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][4]~q\,
	datad => \disp|r_buffer[14][4]~q\,
	combout => \disp|Mux17~7_combout\);

-- Location: FF_X20_Y16_N15
\disp|r_buffer[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][4]~q\);

-- Location: LCCOMB_X19_Y16_N18
\disp|r_buffer[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[13][4]~feeder_combout\ = \disp|r_buffer~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~96_combout\,
	combout => \disp|r_buffer[13][4]~feeder_combout\);

-- Location: FF_X19_Y16_N19
\disp|r_buffer[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[13][4]~feeder_combout\,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][4]~q\);

-- Location: LCCOMB_X20_Y16_N14
\disp|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~8_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux17~7_combout\ & (\disp|r_buffer[15][4]~q\)) # (!\disp|Mux17~7_combout\ & ((\disp|r_buffer[13][4]~q\))))) # (!\disp|Add4~0_combout\ & (\disp|Mux17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Mux17~7_combout\,
	datac => \disp|r_buffer[15][4]~q\,
	datad => \disp|r_buffer[13][4]~q\,
	combout => \disp|Mux17~8_combout\);

-- Location: FF_X22_Y20_N31
\disp|r_buffer[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][4]~q\);

-- Location: FF_X22_Y19_N13
\disp|r_buffer[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][4]~q\);

-- Location: FF_X21_Y20_N9
\disp|r_buffer[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][4]~q\);

-- Location: FF_X22_Y20_N13
\disp|r_buffer[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][4]~q\);

-- Location: LCCOMB_X21_Y20_N8
\disp|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~0_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|r_buffer[9][4]~q\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][4]~q\,
	datad => \disp|r_buffer[9][4]~q\,
	combout => \disp|Mux17~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\disp|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~1_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux17~0_combout\ & ((\disp|r_buffer[11][4]~q\))) # (!\disp|Mux17~0_combout\ & (\disp|r_buffer[10][4]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[10][4]~q\,
	datac => \disp|r_buffer[11][4]~q\,
	datad => \disp|Mux17~0_combout\,
	combout => \disp|Mux17~1_combout\);

-- Location: FF_X19_Y15_N11
\disp|r_buffer[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][4]~q\);

-- Location: FF_X21_Y16_N5
\disp|r_buffer[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][4]~q\);

-- Location: FF_X20_Y15_N15
\disp|r_buffer[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][4]~q\);

-- Location: FF_X21_Y16_N3
\disp|r_buffer[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][4]~q\);

-- Location: LCCOMB_X21_Y16_N2
\disp|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~4_combout\ = (\disp|Add4~0_combout\ & ((\disp|r_buffer[1][4]~q\) # ((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|r_buffer[0][4]~q\ & !\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[1][4]~q\,
	datac => \disp|r_buffer[0][4]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux17~4_combout\);

-- Location: LCCOMB_X21_Y16_N4
\disp|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~5_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux17~4_combout\ & ((\disp|r_buffer[3][4]~q\))) # (!\disp|Mux17~4_combout\ & (\disp|r_buffer[2][4]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[2][4]~q\,
	datac => \disp|r_buffer[3][4]~q\,
	datad => \disp|Mux17~4_combout\,
	combout => \disp|Mux17~5_combout\);

-- Location: FF_X23_Y18_N15
\disp|r_buffer[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][4]~q\);

-- Location: FF_X20_Y18_N5
\disp|r_buffer[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][4]~q\);

-- Location: LCCOMB_X19_Y18_N14
\disp|r_buffer[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[6][4]~feeder_combout\ = \disp|r_buffer~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~96_combout\,
	combout => \disp|r_buffer[6][4]~feeder_combout\);

-- Location: FF_X19_Y18_N15
\disp|r_buffer[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[6][4]~feeder_combout\,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][4]~q\);

-- Location: FF_X20_Y18_N3
\disp|r_buffer[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~96_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][4]~q\);

-- Location: LCCOMB_X20_Y18_N2
\disp|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~2_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[6][4]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][4]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[4][4]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux17~2_combout\);

-- Location: LCCOMB_X20_Y18_N4
\disp|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~3_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux17~2_combout\ & ((\disp|r_buffer[7][4]~q\))) # (!\disp|Mux17~2_combout\ & (\disp|r_buffer[5][4]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][4]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[7][4]~q\,
	datad => \disp|Mux17~2_combout\,
	combout => \disp|Mux17~3_combout\);

-- Location: LCCOMB_X21_Y16_N18
\disp|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~6_combout\ = (\disp|Add4~6_combout\ & (\disp|Add4~4_combout\)) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & ((\disp|Mux17~3_combout\))) # (!\disp|Add4~4_combout\ & (\disp|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Mux17~5_combout\,
	datad => \disp|Mux17~3_combout\,
	combout => \disp|Mux17~6_combout\);

-- Location: LCCOMB_X21_Y16_N12
\disp|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux17~9_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux17~6_combout\ & (\disp|Mux17~8_combout\)) # (!\disp|Mux17~6_combout\ & ((\disp|Mux17~1_combout\))))) # (!\disp|Add4~6_combout\ & (((\disp|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux17~8_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux17~1_combout\,
	datad => \disp|Mux17~6_combout\,
	combout => \disp|Mux17~9_combout\);

-- Location: LCCOMB_X22_Y17_N12
\disp|begin_init~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~6_combout\ = (\disp|Add4~10_combout\) # ((\disp|Add4~8_combout\ & (!\disp|Mux17~19_combout\)) # (!\disp|Add4~8_combout\ & ((!\disp|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~8_combout\,
	datab => \disp|Add4~10_combout\,
	datac => \disp|Mux17~19_combout\,
	datad => \disp|Mux17~9_combout\,
	combout => \disp|begin_init~6_combout\);

-- Location: LCCOMB_X22_Y17_N4
\disp|begin_init~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~10_combout\ = (\disp|begin_init~9_combout\ & (\disp|begin_init~8_combout\ & (\disp|begin_init~7_combout\ & \disp|begin_init~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|begin_init~9_combout\,
	datab => \disp|begin_init~8_combout\,
	datac => \disp|begin_init~7_combout\,
	datad => \disp|begin_init~6_combout\,
	combout => \disp|begin_init~10_combout\);

-- Location: IOIBUF_X19_Y29_N29
\i_I2C_display_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(0),
	o => \i_I2C_display_input[0]~input_o\);

-- Location: LCCOMB_X21_Y21_N4
\disp|r_buffer~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~52_combout\ = (!\disp|state.transmit~q\ & (!\i_I2C_reset~input_o\ & \i_I2C_display_input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \i_I2C_reset~input_o\,
	datad => \i_I2C_display_input[0]~input_o\,
	combout => \disp|r_buffer~52_combout\);

-- Location: LCCOMB_X22_Y19_N26
\disp|r_buffer[32][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[32][0]~feeder_combout\);

-- Location: FF_X22_Y19_N27
\disp|r_buffer[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[32][0]~feeder_combout\,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][0]~q\);

-- Location: IOIBUF_X21_Y29_N8
\i_I2C_display_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_input(1),
	o => \i_I2C_display_input[1]~input_o\);

-- Location: LCCOMB_X22_Y22_N6
\disp|r_buffer~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer~73_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|state.transmit~q\ & \i_I2C_display_input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|state.transmit~q\,
	datad => \i_I2C_display_input[1]~input_o\,
	combout => \disp|r_buffer~73_combout\);

-- Location: LCCOMB_X22_Y19_N8
\disp|r_buffer[32][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[32][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[32][1]~feeder_combout\);

-- Location: FF_X22_Y19_N9
\disp|r_buffer[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[32][1]~feeder_combout\,
	ena => \disp|r_buffer[32][5]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[32][1]~q\);

-- Location: LCCOMB_X22_Y19_N22
\disp|begin_init~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~0_combout\ = (\disp|Add4~10_combout\ & (\disp|r_buffer[32][0]~q\ & (\disp|r_buffer[32][1]~q\))) # (!\disp|Add4~10_combout\ & (((\disp|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][0]~q\,
	datab => \disp|r_buffer[32][1]~q\,
	datac => \disp|Add4~8_combout\,
	datad => \disp|Add4~10_combout\,
	combout => \disp|begin_init~0_combout\);

-- Location: FF_X19_Y16_N7
\disp|r_buffer[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][0]~q\);

-- Location: FF_X20_Y16_N11
\disp|r_buffer[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][0]~q\);

-- Location: FF_X20_Y16_N1
\disp|r_buffer[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][0]~q\);

-- Location: FF_X22_Y16_N27
\disp|r_buffer[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][0]~q\);

-- Location: LCCOMB_X20_Y16_N0
\disp|Mux21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~7_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[14][0]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][0]~q\,
	datad => \disp|r_buffer[14][0]~q\,
	combout => \disp|Mux21~7_combout\);

-- Location: LCCOMB_X20_Y16_N10
\disp|Mux21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~8_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux21~7_combout\ & ((\disp|r_buffer[15][0]~q\))) # (!\disp|Mux21~7_combout\ & (\disp|r_buffer[13][0]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[13][0]~q\,
	datac => \disp|r_buffer[15][0]~q\,
	datad => \disp|Mux21~7_combout\,
	combout => \disp|Mux21~8_combout\);

-- Location: FF_X21_Y20_N23
\disp|r_buffer[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][0]~q\);

-- Location: FF_X22_Y20_N21
\disp|r_buffer[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][0]~q\);

-- Location: FF_X21_Y20_N21
\disp|r_buffer[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][0]~q\);

-- Location: FF_X21_Y17_N25
\disp|r_buffer[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][0]~q\);

-- Location: LCCOMB_X21_Y20_N20
\disp|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~0_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|r_buffer[9][0]~q\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][0]~q\,
	datad => \disp|r_buffer[9][0]~q\,
	combout => \disp|Mux21~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\disp|Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~1_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux21~0_combout\ & (\disp|r_buffer[11][0]~q\)) # (!\disp|Mux21~0_combout\ & ((\disp|r_buffer[10][0]~q\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[11][0]~q\,
	datac => \disp|r_buffer[10][0]~q\,
	datad => \disp|Mux21~0_combout\,
	combout => \disp|Mux21~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\disp|r_buffer[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[5][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[5][0]~feeder_combout\);

-- Location: FF_X23_Y18_N9
\disp|r_buffer[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[5][0]~feeder_combout\,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][0]~q\);

-- Location: FF_X20_Y18_N23
\disp|r_buffer[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][0]~q\);

-- Location: FF_X22_Y16_N5
\disp|r_buffer[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][0]~q\);

-- Location: FF_X20_Y18_N17
\disp|r_buffer[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][0]~q\);

-- Location: LCCOMB_X20_Y18_N16
\disp|Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~2_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[6][0]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][0]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[4][0]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux21~2_combout\);

-- Location: LCCOMB_X20_Y18_N22
\disp|Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~3_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux21~2_combout\ & ((\disp|r_buffer[7][0]~q\))) # (!\disp|Mux21~2_combout\ & (\disp|r_buffer[5][0]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][0]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[7][0]~q\,
	datad => \disp|Mux21~2_combout\,
	combout => \disp|Mux21~3_combout\);

-- Location: FF_X19_Y15_N3
\disp|r_buffer[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][0]~q\);

-- Location: FF_X19_Y17_N23
\disp|r_buffer[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][0]~q\);

-- Location: FF_X19_Y16_N5
\disp|r_buffer[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][0]~q\);

-- Location: FF_X19_Y17_N17
\disp|r_buffer[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][0]~q\);

-- Location: LCCOMB_X19_Y17_N16
\disp|Mux21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~4_combout\ = (\disp|Add4~0_combout\ & ((\disp|r_buffer[1][0]~q\) # ((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|r_buffer[0][0]~q\ & !\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[1][0]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[0][0]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux21~4_combout\);

-- Location: LCCOMB_X19_Y17_N22
\disp|Mux21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~5_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux21~4_combout\ & ((\disp|r_buffer[3][0]~q\))) # (!\disp|Mux21~4_combout\ & (\disp|r_buffer[2][0]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[2][0]~q\,
	datac => \disp|r_buffer[3][0]~q\,
	datad => \disp|Mux21~4_combout\,
	combout => \disp|Mux21~5_combout\);

-- Location: LCCOMB_X24_Y17_N28
\disp|Mux21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~6_combout\ = (\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\) # ((\disp|Mux21~3_combout\)))) # (!\disp|Add4~4_combout\ & (!\disp|Add4~6_combout\ & ((\disp|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux21~3_combout\,
	datad => \disp|Mux21~5_combout\,
	combout => \disp|Mux21~6_combout\);

-- Location: LCCOMB_X24_Y17_N14
\disp|Mux21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~9_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux21~6_combout\ & (\disp|Mux21~8_combout\)) # (!\disp|Mux21~6_combout\ & ((\disp|Mux21~1_combout\))))) # (!\disp|Add4~6_combout\ & (((\disp|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux21~8_combout\,
	datab => \disp|Mux21~1_combout\,
	datac => \disp|Add4~6_combout\,
	datad => \disp|Mux21~6_combout\,
	combout => \disp|Mux21~9_combout\);

-- Location: FF_X24_Y19_N27
\disp|r_buffer[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][0]~q\);

-- Location: FF_X23_Y20_N31
\disp|r_buffer[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][0]~q\);

-- Location: LCCOMB_X24_Y20_N12
\disp|r_buffer[23][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[23][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[23][0]~feeder_combout\);

-- Location: FF_X24_Y20_N13
\disp|r_buffer[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[23][0]~feeder_combout\,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][0]~q\);

-- Location: FF_X23_Y20_N17
\disp|r_buffer[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][0]~q\);

-- Location: LCCOMB_X23_Y20_N16
\disp|Mux21~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~17_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[23][0]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[19][0]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][0]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][0]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux21~17_combout\);

-- Location: LCCOMB_X23_Y20_N28
\disp|Mux21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~18_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux21~17_combout\ & ((\disp|r_buffer[31][0]~q\))) # (!\disp|Mux21~17_combout\ & (\disp|r_buffer[27][0]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux21~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|r_buffer[27][0]~q\,
	datac => \disp|r_buffer[31][0]~q\,
	datad => \disp|Mux21~17_combout\,
	combout => \disp|Mux21~18_combout\);

-- Location: LCCOMB_X22_Y18_N16
\disp|r_buffer[22][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[22][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[22][0]~feeder_combout\);

-- Location: FF_X22_Y18_N17
\disp|r_buffer[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[22][0]~feeder_combout\,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][0]~q\);

-- Location: FF_X21_Y18_N25
\disp|r_buffer[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][0]~q\);

-- Location: LCCOMB_X22_Y18_N6
\disp|r_buffer[26][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[26][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[26][0]~feeder_combout\);

-- Location: FF_X22_Y18_N7
\disp|r_buffer[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[26][0]~feeder_combout\,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][0]~q\);

-- Location: FF_X21_Y18_N9
\disp|r_buffer[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][0]~q\);

-- Location: LCCOMB_X21_Y18_N2
\disp|Mux21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~10_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[26][0]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[18][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][0]~q\,
	datab => \disp|r_buffer[18][0]~q\,
	datac => \disp|Add4~4_combout\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux21~10_combout\);

-- Location: LCCOMB_X21_Y18_N24
\disp|Mux21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~11_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux21~10_combout\ & ((\disp|r_buffer[30][0]~q\))) # (!\disp|Mux21~10_combout\ & (\disp|r_buffer[22][0]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][0]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[30][0]~q\,
	datad => \disp|Mux21~10_combout\,
	combout => \disp|Mux21~11_combout\);

-- Location: LCCOMB_X23_Y15_N22
\disp|r_buffer[20][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[20][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[20][0]~feeder_combout\);

-- Location: FF_X23_Y15_N23
\disp|r_buffer[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[20][0]~feeder_combout\,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][0]~q\);

-- Location: FF_X23_Y17_N27
\disp|r_buffer[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][0]~q\);

-- Location: LCCOMB_X24_Y15_N28
\disp|r_buffer[24][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[24][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[24][0]~feeder_combout\);

-- Location: FF_X24_Y15_N29
\disp|r_buffer[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[24][0]~feeder_combout\,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][0]~q\);

-- Location: FF_X23_Y17_N25
\disp|r_buffer[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][0]~q\);

-- Location: LCCOMB_X23_Y17_N24
\disp|Mux21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~14_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[24][0]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][0]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[16][0]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux21~14_combout\);

-- Location: LCCOMB_X23_Y17_N26
\disp|Mux21~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~15_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux21~14_combout\ & ((\disp|r_buffer[28][0]~q\))) # (!\disp|Mux21~14_combout\ & (\disp|r_buffer[20][0]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][0]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[28][0]~q\,
	datad => \disp|Mux21~14_combout\,
	combout => \disp|Mux21~15_combout\);

-- Location: FF_X24_Y16_N5
\disp|r_buffer[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][0]~q\);

-- Location: FF_X23_Y16_N1
\disp|r_buffer[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][0]~q\);

-- Location: LCCOMB_X23_Y16_N26
\disp|r_buffer[29][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[29][0]~feeder_combout\ = \disp|r_buffer~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~52_combout\,
	combout => \disp|r_buffer[29][0]~feeder_combout\);

-- Location: FF_X23_Y16_N27
\disp|r_buffer[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[29][0]~feeder_combout\,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][0]~q\);

-- Location: FF_X24_Y16_N27
\disp|r_buffer[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~52_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][0]~q\);

-- Location: LCCOMB_X24_Y16_N26
\disp|Mux21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~12_combout\ = (\disp|Add4~6_combout\ & ((\disp|r_buffer[29][0]~q\) # ((!\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & (((\disp|r_buffer[21][0]~q\ & \disp|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[29][0]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[21][0]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux21~12_combout\);

-- Location: LCCOMB_X23_Y16_N0
\disp|Mux21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~13_combout\ = (\disp|Add4~4_combout\ & (((\disp|Mux21~12_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Mux21~12_combout\ & (\disp|r_buffer[25][0]~q\)) # (!\disp|Mux21~12_combout\ & ((\disp|r_buffer[17][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][0]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[17][0]~q\,
	datad => \disp|Mux21~12_combout\,
	combout => \disp|Mux21~13_combout\);

-- Location: LCCOMB_X23_Y17_N28
\disp|Mux21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~16_combout\ = (\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\) # ((\disp|Mux21~13_combout\)))) # (!\disp|Add4~0_combout\ & (!\disp|Add4~2_combout\ & (\disp|Mux21~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|Mux21~15_combout\,
	datad => \disp|Mux21~13_combout\,
	combout => \disp|Mux21~16_combout\);

-- Location: LCCOMB_X23_Y17_N30
\disp|Mux21~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux21~19_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux21~16_combout\ & (\disp|Mux21~18_combout\)) # (!\disp|Mux21~16_combout\ & ((\disp|Mux21~11_combout\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux21~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux21~18_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|Mux21~11_combout\,
	datad => \disp|Mux21~16_combout\,
	combout => \disp|Mux21~19_combout\);

-- Location: LCCOMB_X23_Y15_N0
\disp|r_buffer[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[14][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[14][1]~feeder_combout\);

-- Location: FF_X23_Y15_N1
\disp|r_buffer[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[14][1]~feeder_combout\,
	ena => \disp|r_buffer[14][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[14][1]~q\);

-- Location: FF_X20_Y16_N7
\disp|r_buffer[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[15][1]~q\);

-- Location: LCCOMB_X19_Y16_N0
\disp|r_buffer[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[13][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[13][1]~feeder_combout\);

-- Location: FF_X19_Y16_N1
\disp|r_buffer[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[13][1]~feeder_combout\,
	ena => \disp|r_buffer[13][0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[13][1]~q\);

-- Location: FF_X20_Y16_N13
\disp|r_buffer[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[12][7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[12][1]~q\);

-- Location: LCCOMB_X20_Y16_N12
\disp|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~17_combout\ = (\disp|Add4~2_combout\ & (((\disp|Add4~0_combout\)))) # (!\disp|Add4~2_combout\ & ((\disp|Add4~0_combout\ & (\disp|r_buffer[13][1]~q\)) # (!\disp|Add4~0_combout\ & ((\disp|r_buffer[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][1]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[12][1]~q\,
	datad => \disp|Add4~0_combout\,
	combout => \disp|Mux20~17_combout\);

-- Location: LCCOMB_X20_Y16_N6
\disp|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~18_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux20~17_combout\ & ((\disp|r_buffer[15][1]~q\))) # (!\disp|Mux20~17_combout\ & (\disp|r_buffer[14][1]~q\)))) # (!\disp|Add4~2_combout\ & (((\disp|Mux20~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][1]~q\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[15][1]~q\,
	datad => \disp|Mux20~17_combout\,
	combout => \disp|Mux20~18_combout\);

-- Location: FF_X19_Y15_N5
\disp|r_buffer[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[1][4]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[1][1]~q\);

-- Location: FF_X19_Y17_N27
\disp|r_buffer[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[3][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[3][1]~q\);

-- Location: FF_X19_Y15_N27
\disp|r_buffer[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[2][6]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[2][1]~q\);

-- Location: FF_X19_Y17_N13
\disp|r_buffer[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[0][1]~q\);

-- Location: LCCOMB_X19_Y17_N12
\disp|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~14_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & (\disp|r_buffer[2][1]~q\)) # (!\disp|Add4~2_combout\ & ((\disp|r_buffer[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[2][1]~q\,
	datac => \disp|r_buffer[0][1]~q\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux20~14_combout\);

-- Location: LCCOMB_X19_Y17_N26
\disp|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~15_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux20~14_combout\ & ((\disp|r_buffer[3][1]~q\))) # (!\disp|Mux20~14_combout\ & (\disp|r_buffer[1][1]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[1][1]~q\,
	datab => \disp|Add4~0_combout\,
	datac => \disp|r_buffer[3][1]~q\,
	datad => \disp|Mux20~14_combout\,
	combout => \disp|Mux20~15_combout\);

-- Location: FF_X22_Y20_N23
\disp|r_buffer[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[9][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[9][1]~q\);

-- Location: FF_X21_Y20_N19
\disp|r_buffer[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[11][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[11][1]~q\);

-- Location: FF_X21_Y20_N25
\disp|r_buffer[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[8][5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[8][1]~q\);

-- Location: FF_X22_Y20_N5
\disp|r_buffer[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[10][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[10][1]~q\);

-- Location: LCCOMB_X21_Y20_N24
\disp|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~12_combout\ = (\disp|Add4~0_combout\ & (\disp|Add4~2_combout\)) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|r_buffer[10][1]~q\))) # (!\disp|Add4~2_combout\ & (\disp|r_buffer[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Add4~2_combout\,
	datac => \disp|r_buffer[8][1]~q\,
	datad => \disp|r_buffer[10][1]~q\,
	combout => \disp|Mux20~12_combout\);

-- Location: LCCOMB_X21_Y20_N18
\disp|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~13_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux20~12_combout\ & ((\disp|r_buffer[11][1]~q\))) # (!\disp|Mux20~12_combout\ & (\disp|r_buffer[9][1]~q\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|r_buffer[9][1]~q\,
	datac => \disp|r_buffer[11][1]~q\,
	datad => \disp|Mux20~12_combout\,
	combout => \disp|Mux20~13_combout\);

-- Location: LCCOMB_X24_Y17_N8
\disp|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~16_combout\ = (\disp|Add4~4_combout\ & (\disp|Add4~6_combout\)) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & ((\disp|Mux20~13_combout\))) # (!\disp|Add4~6_combout\ & (\disp|Mux20~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|Mux20~15_combout\,
	datad => \disp|Mux20~13_combout\,
	combout => \disp|Mux20~16_combout\);

-- Location: FF_X21_Y15_N25
\disp|r_buffer[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[7][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[7][1]~q\);

-- Location: FF_X19_Y18_N1
\disp|r_buffer[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[6][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[6][1]~q\);

-- Location: FF_X23_Y18_N23
\disp|r_buffer[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[5][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[5][1]~q\);

-- Location: FF_X20_Y18_N1
\disp|r_buffer[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[4][6]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[4][1]~q\);

-- Location: LCCOMB_X19_Y18_N10
\disp|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~10_combout\ = (\disp|Add4~0_combout\ & ((\disp|r_buffer[5][1]~q\) # ((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|r_buffer[4][1]~q\ & !\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][1]~q\,
	datab => \disp|r_buffer[4][1]~q\,
	datac => \disp|Add4~0_combout\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Mux20~10_combout\);

-- Location: LCCOMB_X19_Y18_N0
\disp|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~11_combout\ = (\disp|Add4~2_combout\ & ((\disp|Mux20~10_combout\ & (\disp|r_buffer[7][1]~q\)) # (!\disp|Mux20~10_combout\ & ((\disp|r_buffer[6][1]~q\))))) # (!\disp|Add4~2_combout\ & (((\disp|Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~2_combout\,
	datab => \disp|r_buffer[7][1]~q\,
	datac => \disp|r_buffer[6][1]~q\,
	datad => \disp|Mux20~10_combout\,
	combout => \disp|Mux20~11_combout\);

-- Location: LCCOMB_X24_Y17_N18
\disp|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~19_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux20~16_combout\ & (\disp|Mux20~18_combout\)) # (!\disp|Mux20~16_combout\ & ((\disp|Mux20~11_combout\))))) # (!\disp|Add4~4_combout\ & (((\disp|Mux20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux20~18_combout\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|Mux20~16_combout\,
	datad => \disp|Mux20~11_combout\,
	combout => \disp|Mux20~19_combout\);

-- Location: FF_X23_Y19_N29
\disp|r_buffer[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[29][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[29][1]~q\);

-- Location: FF_X24_Y16_N29
\disp|r_buffer[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[21][7]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[21][1]~q\);

-- Location: FF_X24_Y16_N23
\disp|r_buffer[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[25][3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[25][1]~q\);

-- Location: FF_X23_Y19_N25
\disp|r_buffer[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[17][5]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[17][1]~q\);

-- Location: LCCOMB_X23_Y19_N2
\disp|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~0_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[25][1]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][1]~q\,
	datab => \disp|r_buffer[17][1]~q\,
	datac => \disp|Add4~4_combout\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux20~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\disp|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~1_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux20~0_combout\ & (\disp|r_buffer[29][1]~q\)) # (!\disp|Mux20~0_combout\ & ((\disp|r_buffer[21][1]~q\))))) # (!\disp|Add4~4_combout\ & (((\disp|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~4_combout\,
	datab => \disp|r_buffer[29][1]~q\,
	datac => \disp|r_buffer[21][1]~q\,
	datad => \disp|Mux20~0_combout\,
	combout => \disp|Mux20~1_combout\);

-- Location: LCCOMB_X24_Y20_N14
\disp|r_buffer[23][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[23][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[23][1]~feeder_combout\);

-- Location: FF_X24_Y20_N15
\disp|r_buffer[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[23][1]~feeder_combout\,
	ena => \disp|r_buffer[23][6]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[23][1]~q\);

-- Location: FF_X23_Y20_N25
\disp|r_buffer[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[31][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[31][1]~q\);

-- Location: FF_X24_Y19_N9
\disp|r_buffer[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[27][6]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[27][1]~q\);

-- Location: FF_X23_Y20_N19
\disp|r_buffer[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[19][7]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[19][1]~q\);

-- Location: LCCOMB_X23_Y20_N18
\disp|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~7_combout\ = (\disp|Add4~4_combout\ & (((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & ((\disp|Add4~6_combout\ & (\disp|r_buffer[27][1]~q\)) # (!\disp|Add4~6_combout\ & ((\disp|r_buffer[19][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[27][1]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[19][1]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux20~7_combout\);

-- Location: LCCOMB_X23_Y20_N24
\disp|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~8_combout\ = (\disp|Add4~4_combout\ & ((\disp|Mux20~7_combout\ & ((\disp|r_buffer[31][1]~q\))) # (!\disp|Mux20~7_combout\ & (\disp|r_buffer[23][1]~q\)))) # (!\disp|Add4~4_combout\ & (((\disp|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][1]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[31][1]~q\,
	datad => \disp|Mux20~7_combout\,
	combout => \disp|Mux20~8_combout\);

-- Location: LCCOMB_X24_Y15_N2
\disp|r_buffer[24][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[24][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[24][1]~feeder_combout\);

-- Location: FF_X24_Y15_N3
\disp|r_buffer[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[24][1]~feeder_combout\,
	ena => \disp|r_buffer[24][3]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[24][1]~q\);

-- Location: FF_X23_Y17_N3
\disp|r_buffer[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[28][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[28][1]~q\);

-- Location: LCCOMB_X22_Y15_N14
\disp|r_buffer[20][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_buffer[20][1]~feeder_combout\ = \disp|r_buffer~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|r_buffer~73_combout\,
	combout => \disp|r_buffer[20][1]~feeder_combout\);

-- Location: FF_X22_Y15_N15
\disp|r_buffer[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|r_buffer[20][1]~feeder_combout\,
	ena => \disp|r_buffer[20][7]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[20][1]~q\);

-- Location: FF_X23_Y17_N21
\disp|r_buffer[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[16][6]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[16][1]~q\);

-- Location: LCCOMB_X23_Y17_N20
\disp|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~4_combout\ = (\disp|Add4~4_combout\ & ((\disp|r_buffer[20][1]~q\) # ((\disp|Add4~6_combout\)))) # (!\disp|Add4~4_combout\ & (((\disp|r_buffer[16][1]~q\ & !\disp|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][1]~q\,
	datab => \disp|Add4~4_combout\,
	datac => \disp|r_buffer[16][1]~q\,
	datad => \disp|Add4~6_combout\,
	combout => \disp|Mux20~4_combout\);

-- Location: LCCOMB_X23_Y17_N2
\disp|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~5_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux20~4_combout\ & ((\disp|r_buffer[28][1]~q\))) # (!\disp|Mux20~4_combout\ & (\disp|r_buffer[24][1]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~6_combout\,
	datab => \disp|r_buffer[24][1]~q\,
	datac => \disp|r_buffer[28][1]~q\,
	datad => \disp|Mux20~4_combout\,
	combout => \disp|Mux20~5_combout\);

-- Location: FF_X22_Y18_N21
\disp|r_buffer[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[26][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[26][1]~q\);

-- Location: FF_X21_Y18_N21
\disp|r_buffer[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[30][3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[30][1]~q\);

-- Location: FF_X22_Y18_N23
\disp|r_buffer[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[22][7]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[22][1]~q\);

-- Location: FF_X21_Y18_N19
\disp|r_buffer[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|r_buffer~73_combout\,
	sload => VCC,
	ena => \disp|r_buffer[18][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|r_buffer[18][1]~q\);

-- Location: LCCOMB_X21_Y18_N18
\disp|Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~2_combout\ = (\disp|Add4~6_combout\ & (((\disp|Add4~4_combout\)))) # (!\disp|Add4~6_combout\ & ((\disp|Add4~4_combout\ & (\disp|r_buffer[22][1]~q\)) # (!\disp|Add4~4_combout\ & ((\disp|r_buffer[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][1]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[18][1]~q\,
	datad => \disp|Add4~4_combout\,
	combout => \disp|Mux20~2_combout\);

-- Location: LCCOMB_X21_Y18_N20
\disp|Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~3_combout\ = (\disp|Add4~6_combout\ & ((\disp|Mux20~2_combout\ & ((\disp|r_buffer[30][1]~q\))) # (!\disp|Mux20~2_combout\ & (\disp|r_buffer[26][1]~q\)))) # (!\disp|Add4~6_combout\ & (((\disp|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][1]~q\,
	datab => \disp|Add4~6_combout\,
	datac => \disp|r_buffer[30][1]~q\,
	datad => \disp|Mux20~2_combout\,
	combout => \disp|Mux20~3_combout\);

-- Location: LCCOMB_X23_Y17_N12
\disp|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~6_combout\ = (\disp|Add4~0_combout\ & (((\disp|Add4~2_combout\)))) # (!\disp|Add4~0_combout\ & ((\disp|Add4~2_combout\ & ((\disp|Mux20~3_combout\))) # (!\disp|Add4~2_combout\ & (\disp|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Mux20~5_combout\,
	datac => \disp|Add4~2_combout\,
	datad => \disp|Mux20~3_combout\,
	combout => \disp|Mux20~6_combout\);

-- Location: LCCOMB_X23_Y17_N6
\disp|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux20~9_combout\ = (\disp|Add4~0_combout\ & ((\disp|Mux20~6_combout\ & ((\disp|Mux20~8_combout\))) # (!\disp|Mux20~6_combout\ & (\disp|Mux20~1_combout\)))) # (!\disp|Add4~0_combout\ & (((\disp|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~0_combout\,
	datab => \disp|Mux20~1_combout\,
	datac => \disp|Mux20~8_combout\,
	datad => \disp|Mux20~6_combout\,
	combout => \disp|Mux20~9_combout\);

-- Location: LCCOMB_X22_Y17_N18
\disp|begin_init~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~1_combout\ = (\disp|begin_init~0_combout\ & (\disp|Mux21~19_combout\ & ((\disp|Mux20~9_combout\)))) # (!\disp|begin_init~0_combout\ & (((\disp|Mux20~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux21~19_combout\,
	datab => \disp|begin_init~0_combout\,
	datac => \disp|Mux20~19_combout\,
	datad => \disp|Mux20~9_combout\,
	combout => \disp|begin_init~1_combout\);

-- Location: LCCOMB_X22_Y17_N16
\disp|begin_init~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~2_combout\ = (\disp|Add4~10_combout\ & (\disp|begin_init~0_combout\)) # (!\disp|Add4~10_combout\ & (\disp|begin_init~1_combout\ & ((\disp|begin_init~0_combout\) # (\disp|Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|begin_init~0_combout\,
	datab => \disp|Add4~10_combout\,
	datac => \disp|Mux21~9_combout\,
	datad => \disp|begin_init~1_combout\,
	combout => \disp|begin_init~2_combout\);

-- Location: LCCOMB_X22_Y17_N10
\disp|begin_init~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~11_combout\ = (\disp|begin_init~5_combout\ & (!\disp|begin_init~q\ & (\disp|begin_init~10_combout\ & \disp|begin_init~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|begin_init~5_combout\,
	datab => \disp|begin_init~q\,
	datac => \disp|begin_init~10_combout\,
	datad => \disp|begin_init~2_combout\,
	combout => \disp|begin_init~11_combout\);

-- Location: LCCOMB_X22_Y17_N24
\disp|begin_init~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|begin_init~13_combout\ = (\disp|begin_init~12_combout\ & ((\disp|begin_init~11_combout\) # ((\disp|state.ready~q\ & \disp|begin_init~q\)))) # (!\disp|begin_init~12_combout\ & (((\disp|begin_init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.ready~q\,
	datab => \disp|begin_init~12_combout\,
	datac => \disp|begin_init~q\,
	datad => \disp|begin_init~11_combout\,
	combout => \disp|begin_init~13_combout\);

-- Location: FF_X22_Y17_N25
\disp|begin_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|begin_init~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|begin_init~q\);

-- Location: LCCOMB_X21_Y17_N2
\disp|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector11~0_combout\ = (!\disp|process_0~19_combout\ & ((\disp|begin_init~q\) # ((\disp|Equal2~9_combout\ & \disp|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal2~9_combout\,
	datab => \disp|Equal2~10_combout\,
	datac => \disp|begin_init~q\,
	datad => \disp|process_0~19_combout\,
	combout => \disp|Selector11~0_combout\);

-- Location: LCCOMB_X21_Y17_N28
\disp|read_cnt[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|read_cnt[30]~0_combout\ = (\disp|state.receive~q\ & (\disp|Selector11~0_combout\ & ((\disp|state.ready~q\) # (!\i_display_write_enable~input_o\)))) # (!\disp|state.receive~q\ & (((\disp|state.ready~q\)) # (!\i_display_write_enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.receive~q\,
	datab => \i_display_write_enable~input_o\,
	datac => \disp|state.ready~q\,
	datad => \disp|Selector11~0_combout\,
	combout => \disp|read_cnt[30]~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\disp|read_cnt[30]~0_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|read_cnt[30]~0_wirecell_combout\ = !\disp|read_cnt[30]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp|read_cnt[30]~0_combout\,
	combout => \disp|read_cnt[30]~0_wirecell_combout\);

-- Location: FF_X17_Y20_N29
\disp|state.receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|read_cnt[30]~0_wirecell_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.receive~q\);

-- Location: LCCOMB_X17_Y20_N22
\disp|read_cnt[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|read_cnt[30]~1_combout\ = (\disp|read_cnt\(1) & \disp|state.receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|read_cnt\(1),
	datad => \disp|state.receive~q\,
	combout => \disp|read_cnt[30]~1_combout\);

-- Location: LCCOMB_X16_Y20_N12
\disp|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~44_combout\ = (\disp|read_cnt\(22) & (\disp|Add2~43\ $ (GND))) # (!\disp|read_cnt\(22) & (!\disp|Add2~43\ & VCC))
-- \disp|Add2~45\ = CARRY((\disp|read_cnt\(22) & !\disp|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(22),
	datad => VCC,
	cin => \disp|Add2~43\,
	combout => \disp|Add2~44_combout\,
	cout => \disp|Add2~45\);

-- Location: LCCOMB_X16_Y20_N14
\disp|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~46_combout\ = (\disp|read_cnt\(23) & (!\disp|Add2~45\)) # (!\disp|read_cnt\(23) & ((\disp|Add2~45\) # (GND)))
-- \disp|Add2~47\ = CARRY((!\disp|Add2~45\) # (!\disp|read_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(23),
	datad => VCC,
	cin => \disp|Add2~45\,
	combout => \disp|Add2~46_combout\,
	cout => \disp|Add2~47\);

-- Location: LCCOMB_X17_Y20_N10
\disp|read_cnt[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|read_cnt[0]~3_combout\ = (!\i_I2C_reset~input_o\ & !\disp|read_cnt[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_I2C_reset~input_o\,
	datad => \disp|read_cnt[30]~0_combout\,
	combout => \disp|read_cnt[0]~3_combout\);

-- Location: FF_X16_Y20_N15
\disp|read_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~46_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(23));

-- Location: LCCOMB_X16_Y20_N16
\disp|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~48_combout\ = (\disp|read_cnt\(24) & (\disp|Add2~47\ $ (GND))) # (!\disp|read_cnt\(24) & (!\disp|Add2~47\ & VCC))
-- \disp|Add2~49\ = CARRY((\disp|read_cnt\(24) & !\disp|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(24),
	datad => VCC,
	cin => \disp|Add2~47\,
	combout => \disp|Add2~48_combout\,
	cout => \disp|Add2~49\);

-- Location: FF_X16_Y20_N17
\disp|read_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~48_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(24));

-- Location: LCCOMB_X16_Y20_N18
\disp|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~50_combout\ = (\disp|read_cnt\(25) & (!\disp|Add2~49\)) # (!\disp|read_cnt\(25) & ((\disp|Add2~49\) # (GND)))
-- \disp|Add2~51\ = CARRY((!\disp|Add2~49\) # (!\disp|read_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(25),
	datad => VCC,
	cin => \disp|Add2~49\,
	combout => \disp|Add2~50_combout\,
	cout => \disp|Add2~51\);

-- Location: FF_X16_Y20_N19
\disp|read_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~50_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(25));

-- Location: LCCOMB_X16_Y20_N20
\disp|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~52_combout\ = (\disp|read_cnt\(26) & (\disp|Add2~51\ $ (GND))) # (!\disp|read_cnt\(26) & (!\disp|Add2~51\ & VCC))
-- \disp|Add2~53\ = CARRY((\disp|read_cnt\(26) & !\disp|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(26),
	datad => VCC,
	cin => \disp|Add2~51\,
	combout => \disp|Add2~52_combout\,
	cout => \disp|Add2~53\);

-- Location: FF_X16_Y20_N21
\disp|read_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~52_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(26));

-- Location: LCCOMB_X16_Y20_N22
\disp|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~54_combout\ = (\disp|read_cnt\(27) & (!\disp|Add2~53\)) # (!\disp|read_cnt\(27) & ((\disp|Add2~53\) # (GND)))
-- \disp|Add2~55\ = CARRY((!\disp|Add2~53\) # (!\disp|read_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(27),
	datad => VCC,
	cin => \disp|Add2~53\,
	combout => \disp|Add2~54_combout\,
	cout => \disp|Add2~55\);

-- Location: FF_X16_Y20_N23
\disp|read_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~54_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(27));

-- Location: LCCOMB_X16_Y20_N24
\disp|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~56_combout\ = (\disp|read_cnt\(28) & (\disp|Add2~55\ $ (GND))) # (!\disp|read_cnt\(28) & (!\disp|Add2~55\ & VCC))
-- \disp|Add2~57\ = CARRY((\disp|read_cnt\(28) & !\disp|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(28),
	datad => VCC,
	cin => \disp|Add2~55\,
	combout => \disp|Add2~56_combout\,
	cout => \disp|Add2~57\);

-- Location: FF_X16_Y20_N25
\disp|read_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~56_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(28));

-- Location: LCCOMB_X16_Y20_N26
\disp|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~58_combout\ = (\disp|read_cnt\(29) & (!\disp|Add2~57\)) # (!\disp|read_cnt\(29) & ((\disp|Add2~57\) # (GND)))
-- \disp|Add2~59\ = CARRY((!\disp|Add2~57\) # (!\disp|read_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(29),
	datad => VCC,
	cin => \disp|Add2~57\,
	combout => \disp|Add2~58_combout\,
	cout => \disp|Add2~59\);

-- Location: FF_X16_Y20_N27
\disp|read_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~58_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(29));

-- Location: LCCOMB_X16_Y20_N28
\disp|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~60_combout\ = (\disp|read_cnt\(30) & (\disp|Add2~59\ $ (GND))) # (!\disp|read_cnt\(30) & (!\disp|Add2~59\ & VCC))
-- \disp|Add2~61\ = CARRY((\disp|read_cnt\(30) & !\disp|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(30),
	datad => VCC,
	cin => \disp|Add2~59\,
	combout => \disp|Add2~60_combout\,
	cout => \disp|Add2~61\);

-- Location: FF_X16_Y20_N29
\disp|read_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~60_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(30));

-- Location: LCCOMB_X16_Y20_N30
\disp|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~62_combout\ = \disp|read_cnt\(31) $ (\disp|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(31),
	cin => \disp|Add2~61\,
	combout => \disp|Add2~62_combout\);

-- Location: FF_X16_Y20_N31
\disp|read_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~62_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(31));

-- Location: LCCOMB_X17_Y20_N4
\disp|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~11_combout\ = (!\disp|read_cnt\(25) & (!\disp|read_cnt\(27) & (!\disp|read_cnt\(26) & !\disp|read_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(25),
	datab => \disp|read_cnt\(27),
	datac => \disp|read_cnt\(26),
	datad => \disp|read_cnt\(28),
	combout => \disp|process_0~11_combout\);

-- Location: LCCOMB_X17_Y20_N30
\disp|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~12_combout\ = (!\disp|read_cnt\(29) & (!\disp|read_cnt\(31) & (\disp|process_0~11_combout\ & !\disp|read_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(29),
	datab => \disp|read_cnt\(31),
	datac => \disp|process_0~11_combout\,
	datad => \disp|read_cnt\(30),
	combout => \disp|process_0~12_combout\);

-- Location: LCCOMB_X17_Y21_N22
\disp|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~7_combout\ = (!\disp|read_cnt\(6) & (!\disp|read_cnt\(7) & (!\disp|read_cnt\(8) & !\disp|read_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(6),
	datab => \disp|read_cnt\(7),
	datac => \disp|read_cnt\(8),
	datad => \disp|read_cnt\(5),
	combout => \disp|process_0~7_combout\);

-- Location: LCCOMB_X17_Y21_N2
\disp|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~9_combout\ = (!\disp|read_cnt\(16) & (!\disp|read_cnt\(14) & (!\disp|read_cnt\(13) & !\disp|read_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(16),
	datab => \disp|read_cnt\(14),
	datac => \disp|read_cnt\(13),
	datad => \disp|read_cnt\(15),
	combout => \disp|process_0~9_combout\);

-- Location: LCCOMB_X17_Y21_N8
\disp|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~8_combout\ = (!\disp|read_cnt\(12) & (!\disp|read_cnt\(10) & (!\disp|read_cnt\(11) & !\disp|read_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(12),
	datab => \disp|read_cnt\(10),
	datac => \disp|read_cnt\(11),
	datad => \disp|read_cnt\(9),
	combout => \disp|process_0~8_combout\);

-- Location: LCCOMB_X17_Y21_N0
\disp|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~6_combout\ = (!\disp|read_cnt\(4) & (!\disp|read_cnt\(2) & (!\disp|read_cnt\(3) & !\disp|read_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(4),
	datab => \disp|read_cnt\(2),
	datac => \disp|read_cnt\(3),
	datad => \disp|read_cnt\(0),
	combout => \disp|process_0~6_combout\);

-- Location: LCCOMB_X17_Y21_N12
\disp|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~10_combout\ = (\disp|process_0~7_combout\ & (\disp|process_0~9_combout\ & (\disp|process_0~8_combout\ & \disp|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~7_combout\,
	datab => \disp|process_0~9_combout\,
	datac => \disp|process_0~8_combout\,
	datad => \disp|process_0~6_combout\,
	combout => \disp|process_0~10_combout\);

-- Location: LCCOMB_X17_Y20_N20
\disp|read_cnt[30]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|read_cnt[30]~2_combout\ = (\disp|read_cnt[30]~1_combout\ & (\disp|process_0~15_combout\ & (\disp|process_0~12_combout\ & \disp|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt[30]~1_combout\,
	datab => \disp|process_0~15_combout\,
	datac => \disp|process_0~12_combout\,
	datad => \disp|process_0~10_combout\,
	combout => \disp|read_cnt[30]~2_combout\);

-- Location: LCCOMB_X17_Y20_N18
\disp|Selector342~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector342~0_combout\ = (\disp|Add2~0_combout\ & !\disp|read_cnt[30]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add2~0_combout\,
	datad => \disp|read_cnt[30]~2_combout\,
	combout => \disp|Selector342~0_combout\);

-- Location: FF_X17_Y20_N19
\disp|read_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector342~0_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(0));

-- Location: LCCOMB_X16_Y21_N2
\disp|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~2_combout\ = (\disp|read_cnt\(1) & (!\disp|Add2~1\)) # (!\disp|read_cnt\(1) & ((\disp|Add2~1\) # (GND)))
-- \disp|Add2~3\ = CARRY((!\disp|Add2~1\) # (!\disp|read_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(1),
	datad => VCC,
	cin => \disp|Add2~1\,
	combout => \disp|Add2~2_combout\,
	cout => \disp|Add2~3\);

-- Location: LCCOMB_X17_Y20_N8
\disp|Selector341~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector341~0_combout\ = (\disp|Add2~2_combout\ & !\disp|read_cnt[30]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add2~2_combout\,
	datad => \disp|read_cnt[30]~2_combout\,
	combout => \disp|Selector341~0_combout\);

-- Location: FF_X17_Y20_N9
\disp|read_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector341~0_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(1));

-- Location: LCCOMB_X16_Y21_N4
\disp|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~4_combout\ = (\disp|read_cnt\(2) & (\disp|Add2~3\ $ (GND))) # (!\disp|read_cnt\(2) & (!\disp|Add2~3\ & VCC))
-- \disp|Add2~5\ = CARRY((\disp|read_cnt\(2) & !\disp|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(2),
	datad => VCC,
	cin => \disp|Add2~3\,
	combout => \disp|Add2~4_combout\,
	cout => \disp|Add2~5\);

-- Location: FF_X16_Y21_N5
\disp|read_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~4_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(2));

-- Location: LCCOMB_X16_Y21_N6
\disp|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~6_combout\ = (\disp|read_cnt\(3) & (!\disp|Add2~5\)) # (!\disp|read_cnt\(3) & ((\disp|Add2~5\) # (GND)))
-- \disp|Add2~7\ = CARRY((!\disp|Add2~5\) # (!\disp|read_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(3),
	datad => VCC,
	cin => \disp|Add2~5\,
	combout => \disp|Add2~6_combout\,
	cout => \disp|Add2~7\);

-- Location: FF_X16_Y21_N7
\disp|read_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~6_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(3));

-- Location: LCCOMB_X16_Y21_N8
\disp|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~8_combout\ = (\disp|read_cnt\(4) & (\disp|Add2~7\ $ (GND))) # (!\disp|read_cnt\(4) & (!\disp|Add2~7\ & VCC))
-- \disp|Add2~9\ = CARRY((\disp|read_cnt\(4) & !\disp|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(4),
	datad => VCC,
	cin => \disp|Add2~7\,
	combout => \disp|Add2~8_combout\,
	cout => \disp|Add2~9\);

-- Location: FF_X16_Y21_N9
\disp|read_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~8_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(4));

-- Location: LCCOMB_X16_Y21_N10
\disp|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~10_combout\ = (\disp|read_cnt\(5) & (!\disp|Add2~9\)) # (!\disp|read_cnt\(5) & ((\disp|Add2~9\) # (GND)))
-- \disp|Add2~11\ = CARRY((!\disp|Add2~9\) # (!\disp|read_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(5),
	datad => VCC,
	cin => \disp|Add2~9\,
	combout => \disp|Add2~10_combout\,
	cout => \disp|Add2~11\);

-- Location: FF_X16_Y21_N11
\disp|read_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~10_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(5));

-- Location: LCCOMB_X16_Y21_N12
\disp|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~12_combout\ = (\disp|read_cnt\(6) & (\disp|Add2~11\ $ (GND))) # (!\disp|read_cnt\(6) & (!\disp|Add2~11\ & VCC))
-- \disp|Add2~13\ = CARRY((\disp|read_cnt\(6) & !\disp|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(6),
	datad => VCC,
	cin => \disp|Add2~11\,
	combout => \disp|Add2~12_combout\,
	cout => \disp|Add2~13\);

-- Location: FF_X16_Y21_N13
\disp|read_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~12_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(6));

-- Location: LCCOMB_X16_Y21_N14
\disp|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~14_combout\ = (\disp|read_cnt\(7) & (!\disp|Add2~13\)) # (!\disp|read_cnt\(7) & ((\disp|Add2~13\) # (GND)))
-- \disp|Add2~15\ = CARRY((!\disp|Add2~13\) # (!\disp|read_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(7),
	datad => VCC,
	cin => \disp|Add2~13\,
	combout => \disp|Add2~14_combout\,
	cout => \disp|Add2~15\);

-- Location: FF_X16_Y21_N15
\disp|read_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~14_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(7));

-- Location: LCCOMB_X16_Y21_N16
\disp|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~16_combout\ = (\disp|read_cnt\(8) & (\disp|Add2~15\ $ (GND))) # (!\disp|read_cnt\(8) & (!\disp|Add2~15\ & VCC))
-- \disp|Add2~17\ = CARRY((\disp|read_cnt\(8) & !\disp|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(8),
	datad => VCC,
	cin => \disp|Add2~15\,
	combout => \disp|Add2~16_combout\,
	cout => \disp|Add2~17\);

-- Location: FF_X16_Y21_N17
\disp|read_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~16_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(8));

-- Location: LCCOMB_X16_Y21_N18
\disp|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~18_combout\ = (\disp|read_cnt\(9) & (!\disp|Add2~17\)) # (!\disp|read_cnt\(9) & ((\disp|Add2~17\) # (GND)))
-- \disp|Add2~19\ = CARRY((!\disp|Add2~17\) # (!\disp|read_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(9),
	datad => VCC,
	cin => \disp|Add2~17\,
	combout => \disp|Add2~18_combout\,
	cout => \disp|Add2~19\);

-- Location: FF_X16_Y21_N19
\disp|read_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~18_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(9));

-- Location: LCCOMB_X16_Y21_N20
\disp|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~20_combout\ = (\disp|read_cnt\(10) & (\disp|Add2~19\ $ (GND))) # (!\disp|read_cnt\(10) & (!\disp|Add2~19\ & VCC))
-- \disp|Add2~21\ = CARRY((\disp|read_cnt\(10) & !\disp|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(10),
	datad => VCC,
	cin => \disp|Add2~19\,
	combout => \disp|Add2~20_combout\,
	cout => \disp|Add2~21\);

-- Location: FF_X16_Y21_N21
\disp|read_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~20_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(10));

-- Location: LCCOMB_X16_Y21_N22
\disp|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~22_combout\ = (\disp|read_cnt\(11) & (!\disp|Add2~21\)) # (!\disp|read_cnt\(11) & ((\disp|Add2~21\) # (GND)))
-- \disp|Add2~23\ = CARRY((!\disp|Add2~21\) # (!\disp|read_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(11),
	datad => VCC,
	cin => \disp|Add2~21\,
	combout => \disp|Add2~22_combout\,
	cout => \disp|Add2~23\);

-- Location: FF_X16_Y21_N23
\disp|read_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~22_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(11));

-- Location: LCCOMB_X16_Y21_N24
\disp|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~24_combout\ = (\disp|read_cnt\(12) & (\disp|Add2~23\ $ (GND))) # (!\disp|read_cnt\(12) & (!\disp|Add2~23\ & VCC))
-- \disp|Add2~25\ = CARRY((\disp|read_cnt\(12) & !\disp|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(12),
	datad => VCC,
	cin => \disp|Add2~23\,
	combout => \disp|Add2~24_combout\,
	cout => \disp|Add2~25\);

-- Location: FF_X16_Y21_N25
\disp|read_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~24_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(12));

-- Location: LCCOMB_X16_Y21_N26
\disp|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~26_combout\ = (\disp|read_cnt\(13) & (!\disp|Add2~25\)) # (!\disp|read_cnt\(13) & ((\disp|Add2~25\) # (GND)))
-- \disp|Add2~27\ = CARRY((!\disp|Add2~25\) # (!\disp|read_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(13),
	datad => VCC,
	cin => \disp|Add2~25\,
	combout => \disp|Add2~26_combout\,
	cout => \disp|Add2~27\);

-- Location: FF_X16_Y21_N27
\disp|read_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~26_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(13));

-- Location: LCCOMB_X16_Y21_N28
\disp|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~28_combout\ = (\disp|read_cnt\(14) & (\disp|Add2~27\ $ (GND))) # (!\disp|read_cnt\(14) & (!\disp|Add2~27\ & VCC))
-- \disp|Add2~29\ = CARRY((\disp|read_cnt\(14) & !\disp|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(14),
	datad => VCC,
	cin => \disp|Add2~27\,
	combout => \disp|Add2~28_combout\,
	cout => \disp|Add2~29\);

-- Location: FF_X16_Y21_N29
\disp|read_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~28_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(14));

-- Location: LCCOMB_X16_Y21_N30
\disp|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~30_combout\ = (\disp|read_cnt\(15) & (!\disp|Add2~29\)) # (!\disp|read_cnt\(15) & ((\disp|Add2~29\) # (GND)))
-- \disp|Add2~31\ = CARRY((!\disp|Add2~29\) # (!\disp|read_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(15),
	datad => VCC,
	cin => \disp|Add2~29\,
	combout => \disp|Add2~30_combout\,
	cout => \disp|Add2~31\);

-- Location: FF_X16_Y21_N31
\disp|read_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~30_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(15));

-- Location: LCCOMB_X16_Y20_N0
\disp|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~32_combout\ = (\disp|read_cnt\(16) & (\disp|Add2~31\ $ (GND))) # (!\disp|read_cnt\(16) & (!\disp|Add2~31\ & VCC))
-- \disp|Add2~33\ = CARRY((\disp|read_cnt\(16) & !\disp|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(16),
	datad => VCC,
	cin => \disp|Add2~31\,
	combout => \disp|Add2~32_combout\,
	cout => \disp|Add2~33\);

-- Location: FF_X16_Y20_N1
\disp|read_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~32_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(16));

-- Location: LCCOMB_X16_Y20_N2
\disp|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~34_combout\ = (\disp|read_cnt\(17) & (!\disp|Add2~33\)) # (!\disp|read_cnt\(17) & ((\disp|Add2~33\) # (GND)))
-- \disp|Add2~35\ = CARRY((!\disp|Add2~33\) # (!\disp|read_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(17),
	datad => VCC,
	cin => \disp|Add2~33\,
	combout => \disp|Add2~34_combout\,
	cout => \disp|Add2~35\);

-- Location: FF_X16_Y20_N3
\disp|read_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~34_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(17));

-- Location: LCCOMB_X16_Y20_N4
\disp|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~36_combout\ = (\disp|read_cnt\(18) & (\disp|Add2~35\ $ (GND))) # (!\disp|read_cnt\(18) & (!\disp|Add2~35\ & VCC))
-- \disp|Add2~37\ = CARRY((\disp|read_cnt\(18) & !\disp|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(18),
	datad => VCC,
	cin => \disp|Add2~35\,
	combout => \disp|Add2~36_combout\,
	cout => \disp|Add2~37\);

-- Location: FF_X16_Y20_N5
\disp|read_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~36_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(18));

-- Location: LCCOMB_X16_Y20_N6
\disp|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~38_combout\ = (\disp|read_cnt\(19) & (!\disp|Add2~37\)) # (!\disp|read_cnt\(19) & ((\disp|Add2~37\) # (GND)))
-- \disp|Add2~39\ = CARRY((!\disp|Add2~37\) # (!\disp|read_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(19),
	datad => VCC,
	cin => \disp|Add2~37\,
	combout => \disp|Add2~38_combout\,
	cout => \disp|Add2~39\);

-- Location: FF_X16_Y20_N7
\disp|read_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~38_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(19));

-- Location: LCCOMB_X16_Y20_N8
\disp|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~40_combout\ = (\disp|read_cnt\(20) & (\disp|Add2~39\ $ (GND))) # (!\disp|read_cnt\(20) & (!\disp|Add2~39\ & VCC))
-- \disp|Add2~41\ = CARRY((\disp|read_cnt\(20) & !\disp|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|read_cnt\(20),
	datad => VCC,
	cin => \disp|Add2~39\,
	combout => \disp|Add2~40_combout\,
	cout => \disp|Add2~41\);

-- Location: FF_X16_Y20_N9
\disp|read_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~40_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(20));

-- Location: LCCOMB_X16_Y20_N10
\disp|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add2~42_combout\ = (\disp|read_cnt\(21) & (!\disp|Add2~41\)) # (!\disp|read_cnt\(21) & ((\disp|Add2~41\) # (GND)))
-- \disp|Add2~43\ = CARRY((!\disp|Add2~41\) # (!\disp|read_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(21),
	datad => VCC,
	cin => \disp|Add2~41\,
	combout => \disp|Add2~42_combout\,
	cout => \disp|Add2~43\);

-- Location: FF_X16_Y20_N11
\disp|read_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~42_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(21));

-- Location: FF_X16_Y20_N13
\disp|read_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add2~44_combout\,
	ena => \disp|read_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|read_cnt\(22));

-- Location: LCCOMB_X16_Y19_N8
\disp|process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~14_combout\ = (!\disp|read_cnt\(22) & (!\disp|read_cnt\(24) & (!\disp|read_cnt\(21) & !\disp|read_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(22),
	datab => \disp|read_cnt\(24),
	datac => \disp|read_cnt\(21),
	datad => \disp|read_cnt\(23),
	combout => \disp|process_0~14_combout\);

-- Location: LCCOMB_X17_Y20_N12
\disp|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~13_combout\ = (!\disp|read_cnt\(17) & (!\disp|read_cnt\(18) & (!\disp|read_cnt\(19) & !\disp|read_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|read_cnt\(17),
	datab => \disp|read_cnt\(18),
	datac => \disp|read_cnt\(19),
	datad => \disp|read_cnt\(20),
	combout => \disp|process_0~13_combout\);

-- Location: LCCOMB_X17_Y20_N14
\disp|process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~15_combout\ = (\disp|process_0~14_combout\ & \disp|process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~14_combout\,
	datad => \disp|process_0~13_combout\,
	combout => \disp|process_0~15_combout\);

-- Location: LCCOMB_X21_Y17_N30
\disp|process_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~18_combout\ = (\disp|buffer_ptr\(31)) # ((\disp|Equal2~7_combout\ & ((\disp|LessThan7~0_combout\) # (!\disp|buffer_ptr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(5),
	datab => \disp|LessThan7~0_combout\,
	datac => \disp|buffer_ptr\(31),
	datad => \disp|Equal2~7_combout\,
	combout => \disp|process_0~18_combout\);

-- Location: LCCOMB_X21_Y17_N16
\disp|process_0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~17_combout\ = (\disp|process_0~10_combout\ & (\disp|process_0~12_combout\ & (\i_display_write_enable~input_o\ & !\disp|begin_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~10_combout\,
	datab => \disp|process_0~12_combout\,
	datac => \i_display_write_enable~input_o\,
	datad => \disp|begin_init~q\,
	combout => \disp|process_0~17_combout\);

-- Location: LCCOMB_X21_Y17_N12
\disp|process_0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~19_combout\ = (\disp|process_0~15_combout\ & (!\disp|read_cnt\(1) & (\disp|process_0~18_combout\ & \disp|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~15_combout\,
	datab => \disp|read_cnt\(1),
	datac => \disp|process_0~18_combout\,
	datad => \disp|process_0~17_combout\,
	combout => \disp|process_0~19_combout\);

-- Location: LCCOMB_X21_Y17_N6
\disp|buffer_ptr[28]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~99_combout\ = (!\disp|process_0~19_combout\ & (((\disp|buffer_ptr\(0)) # (!\disp|Equal2~7_combout\)) # (!\disp|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal2~9_combout\,
	datab => \disp|buffer_ptr\(0),
	datac => \disp|Equal2~7_combout\,
	datad => \disp|process_0~19_combout\,
	combout => \disp|buffer_ptr[28]~99_combout\);

-- Location: LCCOMB_X21_Y17_N24
\disp|buffer_ptr[28]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~100_combout\ = ((\disp|buffer_ptr[28]~99_combout\ & !\disp|begin_init~q\)) # (!\disp|state.receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~99_combout\,
	datab => \disp|state.receive~q\,
	datad => \disp|begin_init~q\,
	combout => \disp|buffer_ptr[28]~100_combout\);

-- Location: LCCOMB_X21_Y17_N14
\disp|buffer_ptr[28]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~102_combout\ = (((\disp|Equal5~20_combout\ & !\disp|print_ptr[14]~32_combout\)) # (!\disp|buffer_ptr[28]~100_combout\)) # (!\disp|buffer_ptr[28]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \disp|buffer_ptr[28]~101_combout\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|buffer_ptr[28]~100_combout\,
	combout => \disp|buffer_ptr[28]~102_combout\);

-- Location: FF_X20_Y20_N15
\disp|buffer_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|buffer_ptr[0]~34_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	sload => VCC,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(0));

-- Location: LCCOMB_X19_Y20_N2
\disp|buffer_ptr[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[1]~36_combout\ = (\disp|buffer_ptr\(1) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[0]~35\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[0]~35\ & VCC)))) # (!\disp|buffer_ptr\(1) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[0]~35\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[0]~35\))))
-- \disp|buffer_ptr[1]~37\ = CARRY((\disp|buffer_ptr\(1) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[0]~35\)) # (!\disp|buffer_ptr\(1) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[0]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(1),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[0]~35\,
	combout => \disp|buffer_ptr[1]~36_combout\,
	cout => \disp|buffer_ptr[1]~37\);

-- Location: FF_X20_Y20_N23
\disp|buffer_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|buffer_ptr[1]~36_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	sload => VCC,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(1));

-- Location: LCCOMB_X19_Y20_N4
\disp|buffer_ptr[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[2]~38_combout\ = ((\disp|buffer_ptr\(2) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[1]~37\)))) # (GND)
-- \disp|buffer_ptr[2]~39\ = CARRY((\disp|buffer_ptr\(2) & ((!\disp|buffer_ptr[1]~37\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(2) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[1]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(2),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[1]~37\,
	combout => \disp|buffer_ptr[2]~38_combout\,
	cout => \disp|buffer_ptr[2]~39\);

-- Location: FF_X20_Y20_N9
\disp|buffer_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|buffer_ptr[2]~38_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	sload => VCC,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(2));

-- Location: LCCOMB_X19_Y20_N6
\disp|buffer_ptr[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[3]~40_combout\ = (\disp|buffer_ptr\(3) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[2]~39\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[2]~39\ & VCC)))) # (!\disp|buffer_ptr\(3) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[2]~39\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[2]~39\))))
-- \disp|buffer_ptr[3]~41\ = CARRY((\disp|buffer_ptr\(3) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[2]~39\)) # (!\disp|buffer_ptr\(3) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[2]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(3),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[2]~39\,
	combout => \disp|buffer_ptr[3]~40_combout\,
	cout => \disp|buffer_ptr[3]~41\);

-- Location: FF_X20_Y20_N3
\disp|buffer_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \disp|buffer_ptr[3]~40_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	sload => VCC,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(3));

-- Location: LCCOMB_X19_Y20_N8
\disp|buffer_ptr[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[4]~42_combout\ = ((\disp|buffer_ptr\(4) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[3]~41\)))) # (GND)
-- \disp|buffer_ptr[4]~43\ = CARRY((\disp|buffer_ptr\(4) & ((!\disp|buffer_ptr[3]~41\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(4) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[3]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[3]~41\,
	combout => \disp|buffer_ptr[4]~42_combout\,
	cout => \disp|buffer_ptr[4]~43\);

-- Location: FF_X19_Y20_N9
\disp|buffer_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[4]~42_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(4));

-- Location: LCCOMB_X19_Y20_N10
\disp|buffer_ptr[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[5]~44_combout\ = (\disp|buffer_ptr\(5) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[4]~43\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[4]~43\ & VCC)))) # (!\disp|buffer_ptr\(5) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[4]~43\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[4]~43\))))
-- \disp|buffer_ptr[5]~45\ = CARRY((\disp|buffer_ptr\(5) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[4]~43\)) # (!\disp|buffer_ptr\(5) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[4]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(5),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[4]~43\,
	combout => \disp|buffer_ptr[5]~44_combout\,
	cout => \disp|buffer_ptr[5]~45\);

-- Location: FF_X19_Y20_N11
\disp|buffer_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[5]~44_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(5));

-- Location: LCCOMB_X19_Y20_N12
\disp|buffer_ptr[6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[6]~46_combout\ = ((\disp|buffer_ptr\(6) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[5]~45\)))) # (GND)
-- \disp|buffer_ptr[6]~47\ = CARRY((\disp|buffer_ptr\(6) & ((!\disp|buffer_ptr[5]~45\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(6) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[5]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(6),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[5]~45\,
	combout => \disp|buffer_ptr[6]~46_combout\,
	cout => \disp|buffer_ptr[6]~47\);

-- Location: FF_X19_Y20_N13
\disp|buffer_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[6]~46_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(6));

-- Location: LCCOMB_X19_Y20_N14
\disp|buffer_ptr[7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[7]~48_combout\ = (\disp|buffer_ptr\(7) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[6]~47\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[6]~47\ & VCC)))) # (!\disp|buffer_ptr\(7) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[6]~47\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[6]~47\))))
-- \disp|buffer_ptr[7]~49\ = CARRY((\disp|buffer_ptr\(7) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[6]~47\)) # (!\disp|buffer_ptr\(7) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[6]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(7),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[6]~47\,
	combout => \disp|buffer_ptr[7]~48_combout\,
	cout => \disp|buffer_ptr[7]~49\);

-- Location: FF_X19_Y20_N15
\disp|buffer_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[7]~48_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(7));

-- Location: LCCOMB_X19_Y20_N16
\disp|buffer_ptr[8]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[8]~50_combout\ = ((\disp|buffer_ptr\(8) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[7]~49\)))) # (GND)
-- \disp|buffer_ptr[8]~51\ = CARRY((\disp|buffer_ptr\(8) & ((!\disp|buffer_ptr[7]~49\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(8) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[7]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(8),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[7]~49\,
	combout => \disp|buffer_ptr[8]~50_combout\,
	cout => \disp|buffer_ptr[8]~51\);

-- Location: FF_X19_Y20_N17
\disp|buffer_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[8]~50_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(8));

-- Location: LCCOMB_X19_Y20_N18
\disp|buffer_ptr[9]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[9]~52_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(9) & (!\disp|buffer_ptr[8]~51\)) # (!\disp|buffer_ptr\(9) & ((\disp|buffer_ptr[8]~51\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(9) & 
-- (\disp|buffer_ptr[8]~51\ & VCC)) # (!\disp|buffer_ptr\(9) & (!\disp|buffer_ptr[8]~51\))))
-- \disp|buffer_ptr[9]~53\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[8]~51\) # (!\disp|buffer_ptr\(9)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(9) & !\disp|buffer_ptr[8]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(9),
	datad => VCC,
	cin => \disp|buffer_ptr[8]~51\,
	combout => \disp|buffer_ptr[9]~52_combout\,
	cout => \disp|buffer_ptr[9]~53\);

-- Location: FF_X19_Y20_N19
\disp|buffer_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[9]~52_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(9));

-- Location: LCCOMB_X19_Y20_N20
\disp|buffer_ptr[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[10]~54_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(10) $ (\disp|buffer_ptr[9]~53\)))) # (GND)
-- \disp|buffer_ptr[10]~55\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(10) & !\disp|buffer_ptr[9]~53\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(10)) # (!\disp|buffer_ptr[9]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(10),
	datad => VCC,
	cin => \disp|buffer_ptr[9]~53\,
	combout => \disp|buffer_ptr[10]~54_combout\,
	cout => \disp|buffer_ptr[10]~55\);

-- Location: FF_X19_Y20_N21
\disp|buffer_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[10]~54_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(10));

-- Location: LCCOMB_X19_Y20_N22
\disp|buffer_ptr[11]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[11]~56_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(11) & (!\disp|buffer_ptr[10]~55\)) # (!\disp|buffer_ptr\(11) & ((\disp|buffer_ptr[10]~55\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(11) & (\disp|buffer_ptr[10]~55\ & VCC)) # (!\disp|buffer_ptr\(11) & (!\disp|buffer_ptr[10]~55\))))
-- \disp|buffer_ptr[11]~57\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[10]~55\) # (!\disp|buffer_ptr\(11)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(11) & !\disp|buffer_ptr[10]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(11),
	datad => VCC,
	cin => \disp|buffer_ptr[10]~55\,
	combout => \disp|buffer_ptr[11]~56_combout\,
	cout => \disp|buffer_ptr[11]~57\);

-- Location: FF_X19_Y20_N23
\disp|buffer_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[11]~56_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(11));

-- Location: LCCOMB_X19_Y20_N24
\disp|buffer_ptr[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[12]~58_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(12) $ (\disp|buffer_ptr[11]~57\)))) # (GND)
-- \disp|buffer_ptr[12]~59\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(12) & !\disp|buffer_ptr[11]~57\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(12)) # (!\disp|buffer_ptr[11]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(12),
	datad => VCC,
	cin => \disp|buffer_ptr[11]~57\,
	combout => \disp|buffer_ptr[12]~58_combout\,
	cout => \disp|buffer_ptr[12]~59\);

-- Location: FF_X19_Y20_N25
\disp|buffer_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[12]~58_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(12));

-- Location: LCCOMB_X19_Y20_N26
\disp|buffer_ptr[13]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[13]~60_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(13) & (!\disp|buffer_ptr[12]~59\)) # (!\disp|buffer_ptr\(13) & ((\disp|buffer_ptr[12]~59\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(13) & (\disp|buffer_ptr[12]~59\ & VCC)) # (!\disp|buffer_ptr\(13) & (!\disp|buffer_ptr[12]~59\))))
-- \disp|buffer_ptr[13]~61\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[12]~59\) # (!\disp|buffer_ptr\(13)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(13) & !\disp|buffer_ptr[12]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(13),
	datad => VCC,
	cin => \disp|buffer_ptr[12]~59\,
	combout => \disp|buffer_ptr[13]~60_combout\,
	cout => \disp|buffer_ptr[13]~61\);

-- Location: FF_X19_Y20_N27
\disp|buffer_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[13]~60_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(13));

-- Location: LCCOMB_X19_Y20_N28
\disp|buffer_ptr[14]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[14]~62_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(14) $ (\disp|buffer_ptr[13]~61\)))) # (GND)
-- \disp|buffer_ptr[14]~63\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(14) & !\disp|buffer_ptr[13]~61\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(14)) # (!\disp|buffer_ptr[13]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(14),
	datad => VCC,
	cin => \disp|buffer_ptr[13]~61\,
	combout => \disp|buffer_ptr[14]~62_combout\,
	cout => \disp|buffer_ptr[14]~63\);

-- Location: FF_X19_Y20_N29
\disp|buffer_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[14]~62_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(14));

-- Location: LCCOMB_X19_Y20_N30
\disp|buffer_ptr[15]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[15]~64_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(15) & (!\disp|buffer_ptr[14]~63\)) # (!\disp|buffer_ptr\(15) & ((\disp|buffer_ptr[14]~63\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(15) & (\disp|buffer_ptr[14]~63\ & VCC)) # (!\disp|buffer_ptr\(15) & (!\disp|buffer_ptr[14]~63\))))
-- \disp|buffer_ptr[15]~65\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[14]~63\) # (!\disp|buffer_ptr\(15)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(15) & !\disp|buffer_ptr[14]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(15),
	datad => VCC,
	cin => \disp|buffer_ptr[14]~63\,
	combout => \disp|buffer_ptr[15]~64_combout\,
	cout => \disp|buffer_ptr[15]~65\);

-- Location: FF_X19_Y20_N31
\disp|buffer_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[15]~64_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(15));

-- Location: LCCOMB_X19_Y19_N0
\disp|buffer_ptr[16]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[16]~66_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(16) $ (\disp|buffer_ptr[15]~65\)))) # (GND)
-- \disp|buffer_ptr[16]~67\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(16) & !\disp|buffer_ptr[15]~65\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(16)) # (!\disp|buffer_ptr[15]~65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(16),
	datad => VCC,
	cin => \disp|buffer_ptr[15]~65\,
	combout => \disp|buffer_ptr[16]~66_combout\,
	cout => \disp|buffer_ptr[16]~67\);

-- Location: FF_X19_Y19_N1
\disp|buffer_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[16]~66_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(16));

-- Location: LCCOMB_X19_Y19_N2
\disp|buffer_ptr[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[17]~68_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(17) & (!\disp|buffer_ptr[16]~67\)) # (!\disp|buffer_ptr\(17) & ((\disp|buffer_ptr[16]~67\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(17) & (\disp|buffer_ptr[16]~67\ & VCC)) # (!\disp|buffer_ptr\(17) & (!\disp|buffer_ptr[16]~67\))))
-- \disp|buffer_ptr[17]~69\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[16]~67\) # (!\disp|buffer_ptr\(17)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(17) & !\disp|buffer_ptr[16]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(17),
	datad => VCC,
	cin => \disp|buffer_ptr[16]~67\,
	combout => \disp|buffer_ptr[17]~68_combout\,
	cout => \disp|buffer_ptr[17]~69\);

-- Location: FF_X19_Y19_N3
\disp|buffer_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[17]~68_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(17));

-- Location: LCCOMB_X19_Y19_N4
\disp|buffer_ptr[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[18]~70_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(18) $ (\disp|buffer_ptr[17]~69\)))) # (GND)
-- \disp|buffer_ptr[18]~71\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(18) & !\disp|buffer_ptr[17]~69\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(18)) # (!\disp|buffer_ptr[17]~69\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(18),
	datad => VCC,
	cin => \disp|buffer_ptr[17]~69\,
	combout => \disp|buffer_ptr[18]~70_combout\,
	cout => \disp|buffer_ptr[18]~71\);

-- Location: FF_X19_Y19_N5
\disp|buffer_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[18]~70_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(18));

-- Location: LCCOMB_X19_Y19_N6
\disp|buffer_ptr[19]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[19]~72_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(19) & (!\disp|buffer_ptr[18]~71\)) # (!\disp|buffer_ptr\(19) & ((\disp|buffer_ptr[18]~71\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(19) & (\disp|buffer_ptr[18]~71\ & VCC)) # (!\disp|buffer_ptr\(19) & (!\disp|buffer_ptr[18]~71\))))
-- \disp|buffer_ptr[19]~73\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[18]~71\) # (!\disp|buffer_ptr\(19)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(19) & !\disp|buffer_ptr[18]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(19),
	datad => VCC,
	cin => \disp|buffer_ptr[18]~71\,
	combout => \disp|buffer_ptr[19]~72_combout\,
	cout => \disp|buffer_ptr[19]~73\);

-- Location: FF_X19_Y19_N7
\disp|buffer_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[19]~72_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(19));

-- Location: LCCOMB_X19_Y19_N8
\disp|buffer_ptr[20]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[20]~74_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(20) $ (\disp|buffer_ptr[19]~73\)))) # (GND)
-- \disp|buffer_ptr[20]~75\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(20) & !\disp|buffer_ptr[19]~73\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(20)) # (!\disp|buffer_ptr[19]~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(20),
	datad => VCC,
	cin => \disp|buffer_ptr[19]~73\,
	combout => \disp|buffer_ptr[20]~74_combout\,
	cout => \disp|buffer_ptr[20]~75\);

-- Location: FF_X19_Y19_N9
\disp|buffer_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[20]~74_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(20));

-- Location: LCCOMB_X19_Y19_N10
\disp|buffer_ptr[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[21]~76_combout\ = (\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(21) & (!\disp|buffer_ptr[20]~75\)) # (!\disp|buffer_ptr\(21) & ((\disp|buffer_ptr[20]~75\) # (GND))))) # (!\disp|buffer_ptr[28]~33_combout\ & 
-- ((\disp|buffer_ptr\(21) & (\disp|buffer_ptr[20]~75\ & VCC)) # (!\disp|buffer_ptr\(21) & (!\disp|buffer_ptr[20]~75\))))
-- \disp|buffer_ptr[21]~77\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & ((!\disp|buffer_ptr[20]~75\) # (!\disp|buffer_ptr\(21)))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr\(21) & !\disp|buffer_ptr[20]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(21),
	datad => VCC,
	cin => \disp|buffer_ptr[20]~75\,
	combout => \disp|buffer_ptr[21]~76_combout\,
	cout => \disp|buffer_ptr[21]~77\);

-- Location: FF_X19_Y19_N11
\disp|buffer_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[21]~76_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(21));

-- Location: LCCOMB_X19_Y19_N12
\disp|buffer_ptr[22]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[22]~78_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(22) $ (\disp|buffer_ptr[21]~77\)))) # (GND)
-- \disp|buffer_ptr[22]~79\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(22) & !\disp|buffer_ptr[21]~77\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(22)) # (!\disp|buffer_ptr[21]~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(22),
	datad => VCC,
	cin => \disp|buffer_ptr[21]~77\,
	combout => \disp|buffer_ptr[22]~78_combout\,
	cout => \disp|buffer_ptr[22]~79\);

-- Location: FF_X19_Y19_N13
\disp|buffer_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[22]~78_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(22));

-- Location: LCCOMB_X19_Y19_N14
\disp|buffer_ptr[23]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[23]~80_combout\ = (\disp|buffer_ptr\(23) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[22]~79\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[22]~79\ & VCC)))) # (!\disp|buffer_ptr\(23) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[22]~79\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[22]~79\))))
-- \disp|buffer_ptr[23]~81\ = CARRY((\disp|buffer_ptr\(23) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[22]~79\)) # (!\disp|buffer_ptr\(23) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[22]~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(23),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[22]~79\,
	combout => \disp|buffer_ptr[23]~80_combout\,
	cout => \disp|buffer_ptr[23]~81\);

-- Location: FF_X19_Y19_N15
\disp|buffer_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[23]~80_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(23));

-- Location: LCCOMB_X19_Y19_N16
\disp|buffer_ptr[24]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[24]~82_combout\ = ((\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr\(24) $ (\disp|buffer_ptr[23]~81\)))) # (GND)
-- \disp|buffer_ptr[24]~83\ = CARRY((\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr\(24) & !\disp|buffer_ptr[23]~81\)) # (!\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr\(24)) # (!\disp|buffer_ptr[23]~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr[28]~33_combout\,
	datab => \disp|buffer_ptr\(24),
	datad => VCC,
	cin => \disp|buffer_ptr[23]~81\,
	combout => \disp|buffer_ptr[24]~82_combout\,
	cout => \disp|buffer_ptr[24]~83\);

-- Location: FF_X19_Y19_N17
\disp|buffer_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[24]~82_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(24));

-- Location: LCCOMB_X19_Y19_N18
\disp|buffer_ptr[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[25]~84_combout\ = (\disp|buffer_ptr\(25) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[24]~83\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[24]~83\ & VCC)))) # (!\disp|buffer_ptr\(25) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[24]~83\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[24]~83\))))
-- \disp|buffer_ptr[25]~85\ = CARRY((\disp|buffer_ptr\(25) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[24]~83\)) # (!\disp|buffer_ptr\(25) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[24]~83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(25),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[24]~83\,
	combout => \disp|buffer_ptr[25]~84_combout\,
	cout => \disp|buffer_ptr[25]~85\);

-- Location: FF_X19_Y19_N19
\disp|buffer_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[25]~84_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(25));

-- Location: LCCOMB_X19_Y19_N20
\disp|buffer_ptr[26]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[26]~86_combout\ = ((\disp|buffer_ptr\(26) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[25]~85\)))) # (GND)
-- \disp|buffer_ptr[26]~87\ = CARRY((\disp|buffer_ptr\(26) & ((!\disp|buffer_ptr[25]~85\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(26) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[25]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(26),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[25]~85\,
	combout => \disp|buffer_ptr[26]~86_combout\,
	cout => \disp|buffer_ptr[26]~87\);

-- Location: FF_X19_Y19_N21
\disp|buffer_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[26]~86_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(26));

-- Location: LCCOMB_X19_Y19_N22
\disp|buffer_ptr[27]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[27]~88_combout\ = (\disp|buffer_ptr\(27) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[26]~87\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[26]~87\ & VCC)))) # (!\disp|buffer_ptr\(27) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[26]~87\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[26]~87\))))
-- \disp|buffer_ptr[27]~89\ = CARRY((\disp|buffer_ptr\(27) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[26]~87\)) # (!\disp|buffer_ptr\(27) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[26]~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(27),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[26]~87\,
	combout => \disp|buffer_ptr[27]~88_combout\,
	cout => \disp|buffer_ptr[27]~89\);

-- Location: FF_X19_Y19_N23
\disp|buffer_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[27]~88_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(27));

-- Location: LCCOMB_X19_Y19_N24
\disp|buffer_ptr[28]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~90_combout\ = ((\disp|buffer_ptr\(28) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[27]~89\)))) # (GND)
-- \disp|buffer_ptr[28]~91\ = CARRY((\disp|buffer_ptr\(28) & ((!\disp|buffer_ptr[27]~89\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(28) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[27]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(28),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[27]~89\,
	combout => \disp|buffer_ptr[28]~90_combout\,
	cout => \disp|buffer_ptr[28]~91\);

-- Location: FF_X19_Y19_N25
\disp|buffer_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[28]~90_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(28));

-- Location: LCCOMB_X19_Y19_N26
\disp|buffer_ptr[29]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[29]~92_combout\ = (\disp|buffer_ptr\(29) & ((\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[28]~91\)) # (!\disp|buffer_ptr[28]~33_combout\ & (\disp|buffer_ptr[28]~91\ & VCC)))) # (!\disp|buffer_ptr\(29) & 
-- ((\disp|buffer_ptr[28]~33_combout\ & ((\disp|buffer_ptr[28]~91\) # (GND))) # (!\disp|buffer_ptr[28]~33_combout\ & (!\disp|buffer_ptr[28]~91\))))
-- \disp|buffer_ptr[29]~93\ = CARRY((\disp|buffer_ptr\(29) & (\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[28]~91\)) # (!\disp|buffer_ptr\(29) & ((\disp|buffer_ptr[28]~33_combout\) # (!\disp|buffer_ptr[28]~91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(29),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[28]~91\,
	combout => \disp|buffer_ptr[29]~92_combout\,
	cout => \disp|buffer_ptr[29]~93\);

-- Location: FF_X19_Y19_N27
\disp|buffer_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[29]~92_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(29));

-- Location: LCCOMB_X19_Y19_N28
\disp|buffer_ptr[30]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[30]~94_combout\ = ((\disp|buffer_ptr\(30) $ (\disp|buffer_ptr[28]~33_combout\ $ (\disp|buffer_ptr[29]~93\)))) # (GND)
-- \disp|buffer_ptr[30]~95\ = CARRY((\disp|buffer_ptr\(30) & ((!\disp|buffer_ptr[29]~93\) # (!\disp|buffer_ptr[28]~33_combout\))) # (!\disp|buffer_ptr\(30) & (!\disp|buffer_ptr[28]~33_combout\ & !\disp|buffer_ptr[29]~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(30),
	datab => \disp|buffer_ptr[28]~33_combout\,
	datad => VCC,
	cin => \disp|buffer_ptr[29]~93\,
	combout => \disp|buffer_ptr[30]~94_combout\,
	cout => \disp|buffer_ptr[30]~95\);

-- Location: LCCOMB_X19_Y19_N30
\disp|buffer_ptr[31]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[31]~96_combout\ = \disp|buffer_ptr\(31) $ (\disp|buffer_ptr[30]~95\ $ (!\disp|buffer_ptr[28]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(31),
	datad => \disp|buffer_ptr[28]~33_combout\,
	cin => \disp|buffer_ptr[30]~95\,
	combout => \disp|buffer_ptr[31]~96_combout\);

-- Location: FF_X19_Y19_N31
\disp|buffer_ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[31]~96_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(31));

-- Location: LCCOMB_X23_Y15_N20
\disp|buffer_ptr[28]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~32_combout\ = (\disp|Equal2~7_combout\ & ((\disp|LessThan7~0_combout\) # (!\disp|buffer_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(5),
	datac => \disp|Equal2~7_combout\,
	datad => \disp|LessThan7~0_combout\,
	combout => \disp|buffer_ptr[28]~32_combout\);

-- Location: LCCOMB_X21_Y17_N8
\disp|process_0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~20_combout\ = (\disp|process_0~14_combout\ & (\i_display_write_enable~input_o\ & (\disp|process_0~13_combout\ & !\disp|read_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~14_combout\,
	datab => \i_display_write_enable~input_o\,
	datac => \disp|process_0~13_combout\,
	datad => \disp|read_cnt\(1),
	combout => \disp|process_0~20_combout\);

-- Location: LCCOMB_X21_Y17_N20
\disp|process_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~16_combout\ = (\disp|process_0~10_combout\ & (\disp|process_0~12_combout\ & (\disp|process_0~20_combout\ & !\disp|begin_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~10_combout\,
	datab => \disp|process_0~12_combout\,
	datac => \disp|process_0~20_combout\,
	datad => \disp|begin_init~q\,
	combout => \disp|process_0~16_combout\);

-- Location: LCCOMB_X21_Y17_N18
\disp|buffer_ptr[28]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|buffer_ptr[28]~33_combout\ = ((\disp|process_0~16_combout\ & ((\disp|buffer_ptr\(31)) # (\disp|buffer_ptr[28]~32_combout\)))) # (!\disp|state.receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(31),
	datab => \disp|state.receive~q\,
	datac => \disp|buffer_ptr[28]~32_combout\,
	datad => \disp|process_0~16_combout\,
	combout => \disp|buffer_ptr[28]~33_combout\);

-- Location: FF_X19_Y19_N29
\disp|buffer_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|buffer_ptr[30]~94_combout\,
	sclr => \disp|ALT_INV_buffer_ptr[28]~98_combout\,
	ena => \disp|buffer_ptr[28]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|buffer_ptr\(30));

-- Location: LCCOMB_X20_Y20_N12
\disp|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~12_combout\ = (\disp|buffer_ptr\(6) & ((GND) # (!\disp|Add4~11\))) # (!\disp|buffer_ptr\(6) & (\disp|Add4~11\ $ (GND)))
-- \disp|Add4~13\ = CARRY((\disp|buffer_ptr\(6)) # (!\disp|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(6),
	datad => VCC,
	cin => \disp|Add4~11\,
	combout => \disp|Add4~12_combout\,
	cout => \disp|Add4~13\);

-- Location: LCCOMB_X20_Y20_N14
\disp|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~14_combout\ = (\disp|buffer_ptr\(7) & (\disp|Add4~13\ & VCC)) # (!\disp|buffer_ptr\(7) & (!\disp|Add4~13\))
-- \disp|Add4~15\ = CARRY((!\disp|buffer_ptr\(7) & !\disp|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(7),
	datad => VCC,
	cin => \disp|Add4~13\,
	combout => \disp|Add4~14_combout\,
	cout => \disp|Add4~15\);

-- Location: LCCOMB_X20_Y20_N16
\disp|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~16_combout\ = (\disp|buffer_ptr\(8) & ((GND) # (!\disp|Add4~15\))) # (!\disp|buffer_ptr\(8) & (\disp|Add4~15\ $ (GND)))
-- \disp|Add4~17\ = CARRY((\disp|buffer_ptr\(8)) # (!\disp|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(8),
	datad => VCC,
	cin => \disp|Add4~15\,
	combout => \disp|Add4~16_combout\,
	cout => \disp|Add4~17\);

-- Location: LCCOMB_X20_Y20_N18
\disp|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~18_combout\ = (\disp|buffer_ptr\(9) & (\disp|Add4~17\ & VCC)) # (!\disp|buffer_ptr\(9) & (!\disp|Add4~17\))
-- \disp|Add4~19\ = CARRY((!\disp|buffer_ptr\(9) & !\disp|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(9),
	datad => VCC,
	cin => \disp|Add4~17\,
	combout => \disp|Add4~18_combout\,
	cout => \disp|Add4~19\);

-- Location: LCCOMB_X20_Y20_N20
\disp|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~20_combout\ = (\disp|buffer_ptr\(10) & ((GND) # (!\disp|Add4~19\))) # (!\disp|buffer_ptr\(10) & (\disp|Add4~19\ $ (GND)))
-- \disp|Add4~21\ = CARRY((\disp|buffer_ptr\(10)) # (!\disp|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(10),
	datad => VCC,
	cin => \disp|Add4~19\,
	combout => \disp|Add4~20_combout\,
	cout => \disp|Add4~21\);

-- Location: LCCOMB_X20_Y20_N22
\disp|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~22_combout\ = (\disp|buffer_ptr\(11) & (\disp|Add4~21\ & VCC)) # (!\disp|buffer_ptr\(11) & (!\disp|Add4~21\))
-- \disp|Add4~23\ = CARRY((!\disp|buffer_ptr\(11) & !\disp|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(11),
	datad => VCC,
	cin => \disp|Add4~21\,
	combout => \disp|Add4~22_combout\,
	cout => \disp|Add4~23\);

-- Location: LCCOMB_X20_Y20_N24
\disp|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~24_combout\ = (\disp|buffer_ptr\(12) & ((GND) # (!\disp|Add4~23\))) # (!\disp|buffer_ptr\(12) & (\disp|Add4~23\ $ (GND)))
-- \disp|Add4~25\ = CARRY((\disp|buffer_ptr\(12)) # (!\disp|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(12),
	datad => VCC,
	cin => \disp|Add4~23\,
	combout => \disp|Add4~24_combout\,
	cout => \disp|Add4~25\);

-- Location: LCCOMB_X20_Y20_N26
\disp|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~26_combout\ = (\disp|buffer_ptr\(13) & (\disp|Add4~25\ & VCC)) # (!\disp|buffer_ptr\(13) & (!\disp|Add4~25\))
-- \disp|Add4~27\ = CARRY((!\disp|buffer_ptr\(13) & !\disp|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(13),
	datad => VCC,
	cin => \disp|Add4~25\,
	combout => \disp|Add4~26_combout\,
	cout => \disp|Add4~27\);

-- Location: LCCOMB_X20_Y20_N28
\disp|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~28_combout\ = (\disp|buffer_ptr\(14) & ((GND) # (!\disp|Add4~27\))) # (!\disp|buffer_ptr\(14) & (\disp|Add4~27\ $ (GND)))
-- \disp|Add4~29\ = CARRY((\disp|buffer_ptr\(14)) # (!\disp|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(14),
	datad => VCC,
	cin => \disp|Add4~27\,
	combout => \disp|Add4~28_combout\,
	cout => \disp|Add4~29\);

-- Location: LCCOMB_X20_Y20_N30
\disp|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~30_combout\ = (\disp|buffer_ptr\(15) & (\disp|Add4~29\ & VCC)) # (!\disp|buffer_ptr\(15) & (!\disp|Add4~29\))
-- \disp|Add4~31\ = CARRY((!\disp|buffer_ptr\(15) & !\disp|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(15),
	datad => VCC,
	cin => \disp|Add4~29\,
	combout => \disp|Add4~30_combout\,
	cout => \disp|Add4~31\);

-- Location: LCCOMB_X20_Y19_N0
\disp|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~32_combout\ = (\disp|buffer_ptr\(16) & ((GND) # (!\disp|Add4~31\))) # (!\disp|buffer_ptr\(16) & (\disp|Add4~31\ $ (GND)))
-- \disp|Add4~33\ = CARRY((\disp|buffer_ptr\(16)) # (!\disp|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(16),
	datad => VCC,
	cin => \disp|Add4~31\,
	combout => \disp|Add4~32_combout\,
	cout => \disp|Add4~33\);

-- Location: LCCOMB_X20_Y19_N2
\disp|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~34_combout\ = (\disp|buffer_ptr\(17) & (\disp|Add4~33\ & VCC)) # (!\disp|buffer_ptr\(17) & (!\disp|Add4~33\))
-- \disp|Add4~35\ = CARRY((!\disp|buffer_ptr\(17) & !\disp|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(17),
	datad => VCC,
	cin => \disp|Add4~33\,
	combout => \disp|Add4~34_combout\,
	cout => \disp|Add4~35\);

-- Location: LCCOMB_X20_Y19_N4
\disp|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~36_combout\ = (\disp|buffer_ptr\(18) & ((GND) # (!\disp|Add4~35\))) # (!\disp|buffer_ptr\(18) & (\disp|Add4~35\ $ (GND)))
-- \disp|Add4~37\ = CARRY((\disp|buffer_ptr\(18)) # (!\disp|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(18),
	datad => VCC,
	cin => \disp|Add4~35\,
	combout => \disp|Add4~36_combout\,
	cout => \disp|Add4~37\);

-- Location: LCCOMB_X20_Y19_N6
\disp|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~38_combout\ = (\disp|buffer_ptr\(19) & (\disp|Add4~37\ & VCC)) # (!\disp|buffer_ptr\(19) & (!\disp|Add4~37\))
-- \disp|Add4~39\ = CARRY((!\disp|buffer_ptr\(19) & !\disp|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(19),
	datad => VCC,
	cin => \disp|Add4~37\,
	combout => \disp|Add4~38_combout\,
	cout => \disp|Add4~39\);

-- Location: LCCOMB_X20_Y19_N8
\disp|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~40_combout\ = (\disp|buffer_ptr\(20) & ((GND) # (!\disp|Add4~39\))) # (!\disp|buffer_ptr\(20) & (\disp|Add4~39\ $ (GND)))
-- \disp|Add4~41\ = CARRY((\disp|buffer_ptr\(20)) # (!\disp|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(20),
	datad => VCC,
	cin => \disp|Add4~39\,
	combout => \disp|Add4~40_combout\,
	cout => \disp|Add4~41\);

-- Location: LCCOMB_X20_Y19_N10
\disp|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~42_combout\ = (\disp|buffer_ptr\(21) & (\disp|Add4~41\ & VCC)) # (!\disp|buffer_ptr\(21) & (!\disp|Add4~41\))
-- \disp|Add4~43\ = CARRY((!\disp|buffer_ptr\(21) & !\disp|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(21),
	datad => VCC,
	cin => \disp|Add4~41\,
	combout => \disp|Add4~42_combout\,
	cout => \disp|Add4~43\);

-- Location: LCCOMB_X20_Y19_N12
\disp|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~44_combout\ = (\disp|buffer_ptr\(22) & ((GND) # (!\disp|Add4~43\))) # (!\disp|buffer_ptr\(22) & (\disp|Add4~43\ $ (GND)))
-- \disp|Add4~45\ = CARRY((\disp|buffer_ptr\(22)) # (!\disp|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(22),
	datad => VCC,
	cin => \disp|Add4~43\,
	combout => \disp|Add4~44_combout\,
	cout => \disp|Add4~45\);

-- Location: LCCOMB_X20_Y19_N14
\disp|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~46_combout\ = (\disp|buffer_ptr\(23) & (\disp|Add4~45\ & VCC)) # (!\disp|buffer_ptr\(23) & (!\disp|Add4~45\))
-- \disp|Add4~47\ = CARRY((!\disp|buffer_ptr\(23) & !\disp|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(23),
	datad => VCC,
	cin => \disp|Add4~45\,
	combout => \disp|Add4~46_combout\,
	cout => \disp|Add4~47\);

-- Location: LCCOMB_X20_Y19_N16
\disp|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~48_combout\ = (\disp|buffer_ptr\(24) & ((GND) # (!\disp|Add4~47\))) # (!\disp|buffer_ptr\(24) & (\disp|Add4~47\ $ (GND)))
-- \disp|Add4~49\ = CARRY((\disp|buffer_ptr\(24)) # (!\disp|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(24),
	datad => VCC,
	cin => \disp|Add4~47\,
	combout => \disp|Add4~48_combout\,
	cout => \disp|Add4~49\);

-- Location: LCCOMB_X20_Y19_N18
\disp|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~50_combout\ = (\disp|buffer_ptr\(25) & (\disp|Add4~49\ & VCC)) # (!\disp|buffer_ptr\(25) & (!\disp|Add4~49\))
-- \disp|Add4~51\ = CARRY((!\disp|buffer_ptr\(25) & !\disp|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(25),
	datad => VCC,
	cin => \disp|Add4~49\,
	combout => \disp|Add4~50_combout\,
	cout => \disp|Add4~51\);

-- Location: LCCOMB_X20_Y19_N20
\disp|Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~52_combout\ = (\disp|buffer_ptr\(26) & ((GND) # (!\disp|Add4~51\))) # (!\disp|buffer_ptr\(26) & (\disp|Add4~51\ $ (GND)))
-- \disp|Add4~53\ = CARRY((\disp|buffer_ptr\(26)) # (!\disp|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(26),
	datad => VCC,
	cin => \disp|Add4~51\,
	combout => \disp|Add4~52_combout\,
	cout => \disp|Add4~53\);

-- Location: LCCOMB_X20_Y19_N22
\disp|Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~54_combout\ = (\disp|buffer_ptr\(27) & (\disp|Add4~53\ & VCC)) # (!\disp|buffer_ptr\(27) & (!\disp|Add4~53\))
-- \disp|Add4~55\ = CARRY((!\disp|buffer_ptr\(27) & !\disp|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(27),
	datad => VCC,
	cin => \disp|Add4~53\,
	combout => \disp|Add4~54_combout\,
	cout => \disp|Add4~55\);

-- Location: LCCOMB_X20_Y19_N24
\disp|Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~56_combout\ = (\disp|buffer_ptr\(28) & ((GND) # (!\disp|Add4~55\))) # (!\disp|buffer_ptr\(28) & (\disp|Add4~55\ $ (GND)))
-- \disp|Add4~57\ = CARRY((\disp|buffer_ptr\(28)) # (!\disp|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(28),
	datad => VCC,
	cin => \disp|Add4~55\,
	combout => \disp|Add4~56_combout\,
	cout => \disp|Add4~57\);

-- Location: LCCOMB_X20_Y19_N26
\disp|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~58_combout\ = (\disp|buffer_ptr\(29) & (\disp|Add4~57\ & VCC)) # (!\disp|buffer_ptr\(29) & (!\disp|Add4~57\))
-- \disp|Add4~59\ = CARRY((!\disp|buffer_ptr\(29) & !\disp|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(29),
	datad => VCC,
	cin => \disp|Add4~57\,
	combout => \disp|Add4~58_combout\,
	cout => \disp|Add4~59\);

-- Location: LCCOMB_X20_Y19_N28
\disp|Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~60_combout\ = (\disp|buffer_ptr\(30) & ((GND) # (!\disp|Add4~59\))) # (!\disp|buffer_ptr\(30) & (\disp|Add4~59\ $ (GND)))
-- \disp|Add4~61\ = CARRY((\disp|buffer_ptr\(30)) # (!\disp|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|buffer_ptr\(30),
	datad => VCC,
	cin => \disp|Add4~59\,
	combout => \disp|Add4~60_combout\,
	cout => \disp|Add4~61\);

-- Location: LCCOMB_X20_Y19_N30
\disp|Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add4~62_combout\ = \disp|Add4~61\ $ (!\disp|buffer_ptr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \disp|buffer_ptr\(31),
	cin => \disp|Add4~61\,
	combout => \disp|Add4~62_combout\);

-- Location: LCCOMB_X26_Y17_N12
\disp|Equal5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~19_combout\ = (\disp|Add4~60_combout\ & (\disp|print_ptr\(30) & (\disp|print_ptr\(31) $ (!\disp|Add4~62_combout\)))) # (!\disp|Add4~60_combout\ & (!\disp|print_ptr\(30) & (\disp|print_ptr\(31) $ (!\disp|Add4~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~60_combout\,
	datab => \disp|print_ptr\(31),
	datac => \disp|print_ptr\(30),
	datad => \disp|Add4~62_combout\,
	combout => \disp|Equal5~19_combout\);

-- Location: LCCOMB_X24_Y19_N28
\disp|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~0_combout\ = (\disp|print_ptr\(27) & (\disp|Add4~54_combout\ & (\disp|print_ptr\(26) $ (!\disp|Add4~52_combout\)))) # (!\disp|print_ptr\(27) & (!\disp|Add4~54_combout\ & (\disp|print_ptr\(26) $ (!\disp|Add4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(27),
	datab => \disp|print_ptr\(26),
	datac => \disp|Add4~52_combout\,
	datad => \disp|Add4~54_combout\,
	combout => \disp|Equal5~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\disp|Equal5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~8_combout\ = (\disp|print_ptr\(13) & (\disp|Add4~26_combout\ & (\disp|print_ptr\(12) $ (!\disp|Add4~24_combout\)))) # (!\disp|print_ptr\(13) & (!\disp|Add4~26_combout\ & (\disp|print_ptr\(12) $ (!\disp|Add4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(13),
	datab => \disp|print_ptr\(12),
	datac => \disp|Add4~24_combout\,
	datad => \disp|Add4~26_combout\,
	combout => \disp|Equal5~8_combout\);

-- Location: LCCOMB_X26_Y20_N8
\disp|Equal5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~7_combout\ = (\disp|Add4~22_combout\ & (\disp|print_ptr\(11) & (\disp|print_ptr\(10) $ (!\disp|Add4~20_combout\)))) # (!\disp|Add4~22_combout\ & (!\disp|print_ptr\(11) & (\disp|print_ptr\(10) $ (!\disp|Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~22_combout\,
	datab => \disp|print_ptr\(10),
	datac => \disp|print_ptr\(11),
	datad => \disp|Add4~20_combout\,
	combout => \disp|Equal5~7_combout\);

-- Location: LCCOMB_X24_Y19_N24
\disp|Equal5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~9_combout\ = (\disp|print_ptr\(14) & (\disp|Add4~28_combout\ & (\disp|print_ptr\(15) $ (!\disp|Add4~30_combout\)))) # (!\disp|print_ptr\(14) & (!\disp|Add4~28_combout\ & (\disp|print_ptr\(15) $ (!\disp|Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(14),
	datab => \disp|print_ptr\(15),
	datac => \disp|Add4~30_combout\,
	datad => \disp|Add4~28_combout\,
	combout => \disp|Equal5~9_combout\);

-- Location: LCCOMB_X24_Y19_N6
\disp|Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~6_combout\ = (\disp|print_ptr\(9) & (\disp|Add4~18_combout\ & (\disp|print_ptr\(8) $ (!\disp|Add4~16_combout\)))) # (!\disp|print_ptr\(9) & (!\disp|Add4~18_combout\ & (\disp|print_ptr\(8) $ (!\disp|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(9),
	datab => \disp|print_ptr\(8),
	datac => \disp|Add4~18_combout\,
	datad => \disp|Add4~16_combout\,
	combout => \disp|Equal5~6_combout\);

-- Location: LCCOMB_X26_Y17_N4
\disp|Equal5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~10_combout\ = (\disp|Equal5~8_combout\ & (\disp|Equal5~7_combout\ & (\disp|Equal5~9_combout\ & \disp|Equal5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~8_combout\,
	datab => \disp|Equal5~7_combout\,
	datac => \disp|Equal5~9_combout\,
	datad => \disp|Equal5~6_combout\,
	combout => \disp|Equal5~10_combout\);

-- Location: LCCOMB_X21_Y16_N10
\disp|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~2_combout\ = (\disp|print_ptr\(3) & (\disp|Add4~6_combout\ & (\disp|Add4~4_combout\ $ (!\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (!\disp|Add4~6_combout\ & (\disp|Add4~4_combout\ $ (!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|Add4~6_combout\,
	datac => \disp|Add4~4_combout\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Equal5~2_combout\);

-- Location: LCCOMB_X21_Y16_N16
\disp|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~1_combout\ = (\disp|print_ptr\(0) & (\disp|Add4~0_combout\ & (\disp|print_ptr\(1) $ (!\disp|Add4~2_combout\)))) # (!\disp|print_ptr\(0) & (!\disp|Add4~0_combout\ & (\disp|print_ptr\(1) $ (!\disp|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|print_ptr\(1),
	datac => \disp|Add4~0_combout\,
	datad => \disp|Add4~2_combout\,
	combout => \disp|Equal5~1_combout\);

-- Location: LCCOMB_X21_Y16_N8
\disp|Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~4_combout\ = (\disp|Add4~12_combout\ & (\disp|print_ptr\(6) & (\disp|print_ptr\(7) $ (!\disp|Add4~14_combout\)))) # (!\disp|Add4~12_combout\ & (!\disp|print_ptr\(6) & (\disp|print_ptr\(7) $ (!\disp|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~12_combout\,
	datab => \disp|print_ptr\(6),
	datac => \disp|print_ptr\(7),
	datad => \disp|Add4~14_combout\,
	combout => \disp|Equal5~4_combout\);

-- Location: LCCOMB_X22_Y19_N28
\disp|Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~3_combout\ = (\disp|print_ptr\(4) & (\disp|Add4~8_combout\ & (\disp|print_ptr\(5) $ (!\disp|Add4~10_combout\)))) # (!\disp|print_ptr\(4) & (!\disp|Add4~8_combout\ & (\disp|print_ptr\(5) $ (!\disp|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(4),
	datab => \disp|print_ptr\(5),
	datac => \disp|Add4~8_combout\,
	datad => \disp|Add4~10_combout\,
	combout => \disp|Equal5~3_combout\);

-- Location: LCCOMB_X21_Y16_N22
\disp|Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~5_combout\ = (\disp|Equal5~2_combout\ & (\disp|Equal5~1_combout\ & (\disp|Equal5~4_combout\ & \disp|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~2_combout\,
	datab => \disp|Equal5~1_combout\,
	datac => \disp|Equal5~4_combout\,
	datad => \disp|Equal5~3_combout\,
	combout => \disp|Equal5~5_combout\);

-- Location: LCCOMB_X26_Y17_N22
\disp|Equal5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~11_combout\ = (\disp|Equal5~10_combout\ & (\disp|Equal5~5_combout\ & (\disp|Add4~56_combout\ $ (!\disp|print_ptr\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~56_combout\,
	datab => \disp|print_ptr\(28),
	datac => \disp|Equal5~10_combout\,
	datad => \disp|Equal5~5_combout\,
	combout => \disp|Equal5~11_combout\);

-- Location: LCCOMB_X21_Y19_N22
\disp|Equal5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~17_combout\ = (\disp|print_ptr\(25) & (\disp|Add4~50_combout\ & (\disp|print_ptr\(24) $ (!\disp|Add4~48_combout\)))) # (!\disp|print_ptr\(25) & (!\disp|Add4~50_combout\ & (\disp|print_ptr\(24) $ (!\disp|Add4~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(25),
	datab => \disp|print_ptr\(24),
	datac => \disp|Add4~48_combout\,
	datad => \disp|Add4~50_combout\,
	combout => \disp|Equal5~17_combout\);

-- Location: LCCOMB_X21_Y19_N6
\disp|Equal5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~13_combout\ = (\disp|print_ptr\(18) & (\disp|Add4~36_combout\ & (\disp|Add4~38_combout\ $ (!\disp|print_ptr\(19))))) # (!\disp|print_ptr\(18) & (!\disp|Add4~36_combout\ & (\disp|Add4~38_combout\ $ (!\disp|print_ptr\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(18),
	datab => \disp|Add4~36_combout\,
	datac => \disp|Add4~38_combout\,
	datad => \disp|print_ptr\(19),
	combout => \disp|Equal5~13_combout\);

-- Location: LCCOMB_X21_Y19_N4
\disp|Equal5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~12_combout\ = (\disp|print_ptr\(17) & (\disp|Add4~34_combout\ & (\disp|print_ptr\(16) $ (!\disp|Add4~32_combout\)))) # (!\disp|print_ptr\(17) & (!\disp|Add4~34_combout\ & (\disp|print_ptr\(16) $ (!\disp|Add4~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(17),
	datab => \disp|print_ptr\(16),
	datac => \disp|Add4~32_combout\,
	datad => \disp|Add4~34_combout\,
	combout => \disp|Equal5~12_combout\);

-- Location: LCCOMB_X21_Y19_N8
\disp|Equal5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~14_combout\ = (\disp|Add4~40_combout\ & (\disp|print_ptr\(20) & (\disp|print_ptr\(21) $ (!\disp|Add4~42_combout\)))) # (!\disp|Add4~40_combout\ & (!\disp|print_ptr\(20) & (\disp|print_ptr\(21) $ (!\disp|Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~40_combout\,
	datab => \disp|print_ptr\(20),
	datac => \disp|print_ptr\(21),
	datad => \disp|Add4~42_combout\,
	combout => \disp|Equal5~14_combout\);

-- Location: LCCOMB_X21_Y19_N2
\disp|Equal5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~15_combout\ = (\disp|Add4~44_combout\ & (\disp|print_ptr\(22) & (\disp|print_ptr\(23) $ (!\disp|Add4~46_combout\)))) # (!\disp|Add4~44_combout\ & (!\disp|print_ptr\(22) & (\disp|print_ptr\(23) $ (!\disp|Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~44_combout\,
	datab => \disp|print_ptr\(23),
	datac => \disp|print_ptr\(22),
	datad => \disp|Add4~46_combout\,
	combout => \disp|Equal5~15_combout\);

-- Location: LCCOMB_X21_Y19_N0
\disp|Equal5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~16_combout\ = (\disp|Equal5~13_combout\ & (\disp|Equal5~12_combout\ & (\disp|Equal5~14_combout\ & \disp|Equal5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~13_combout\,
	datab => \disp|Equal5~12_combout\,
	datac => \disp|Equal5~14_combout\,
	datad => \disp|Equal5~15_combout\,
	combout => \disp|Equal5~16_combout\);

-- Location: LCCOMB_X21_Y19_N28
\disp|Equal5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~18_combout\ = (\disp|Equal5~17_combout\ & (\disp|Equal5~16_combout\ & (\disp|Add4~58_combout\ $ (!\disp|print_ptr\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add4~58_combout\,
	datab => \disp|print_ptr\(29),
	datac => \disp|Equal5~17_combout\,
	datad => \disp|Equal5~16_combout\,
	combout => \disp|Equal5~18_combout\);

-- Location: LCCOMB_X26_Y17_N30
\disp|Equal5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal5~20_combout\ = (\disp|Equal5~19_combout\ & (\disp|Equal5~0_combout\ & (\disp|Equal5~11_combout\ & \disp|Equal5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~19_combout\,
	datab => \disp|Equal5~0_combout\,
	datac => \disp|Equal5~11_combout\,
	datad => \disp|Equal5~18_combout\,
	combout => \disp|Equal5~20_combout\);

-- Location: LCCOMB_X26_Y17_N0
\disp|print_ptr[14]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[14]~97_combout\ = (\disp|Equal5~20_combout\) # (\i_I2C_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Equal5~20_combout\,
	datad => \i_I2C_reset~input_o\,
	combout => \disp|print_ptr[14]~97_combout\);

-- Location: LCCOMB_X26_Y23_N24
\disp|o_display_data[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[3]~4_combout\ = (\disp|state.transmit~q\ & \disp|Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datac => \disp|Equal4~10_combout\,
	combout => \disp|o_display_data[3]~4_combout\);

-- Location: LCCOMB_X26_Y21_N8
\disp|print_ptr[14]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[14]~98_combout\ = (\i_I2C_reset~input_o\) # ((\disp|o_display_data[3]~4_combout\ & (\disp|LessThan9~62_combout\ & \inst|w_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|o_display_data[3]~4_combout\,
	datab => \disp|LessThan9~62_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \inst|w_busy~q\,
	combout => \disp|print_ptr[14]~98_combout\);

-- Location: FF_X27_Y19_N1
\disp|print_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[0]~33_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(0));

-- Location: LCCOMB_X27_Y19_N2
\disp|print_ptr[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[1]~35_combout\ = (\disp|print_ptr\(1) & (!\disp|print_ptr[0]~34\)) # (!\disp|print_ptr\(1) & ((\disp|print_ptr[0]~34\) # (GND)))
-- \disp|print_ptr[1]~36\ = CARRY((!\disp|print_ptr[0]~34\) # (!\disp|print_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(1),
	datad => VCC,
	cin => \disp|print_ptr[0]~34\,
	combout => \disp|print_ptr[1]~35_combout\,
	cout => \disp|print_ptr[1]~36\);

-- Location: FF_X27_Y19_N3
\disp|print_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[1]~35_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(1));

-- Location: LCCOMB_X27_Y19_N4
\disp|print_ptr[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[2]~37_combout\ = (\disp|print_ptr\(2) & (\disp|print_ptr[1]~36\ $ (GND))) # (!\disp|print_ptr\(2) & (!\disp|print_ptr[1]~36\ & VCC))
-- \disp|print_ptr[2]~38\ = CARRY((\disp|print_ptr\(2) & !\disp|print_ptr[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(2),
	datad => VCC,
	cin => \disp|print_ptr[1]~36\,
	combout => \disp|print_ptr[2]~37_combout\,
	cout => \disp|print_ptr[2]~38\);

-- Location: FF_X27_Y19_N5
\disp|print_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[2]~37_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(2));

-- Location: LCCOMB_X27_Y19_N6
\disp|print_ptr[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[3]~39_combout\ = (\disp|print_ptr\(3) & (!\disp|print_ptr[2]~38\)) # (!\disp|print_ptr\(3) & ((\disp|print_ptr[2]~38\) # (GND)))
-- \disp|print_ptr[3]~40\ = CARRY((!\disp|print_ptr[2]~38\) # (!\disp|print_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datad => VCC,
	cin => \disp|print_ptr[2]~38\,
	combout => \disp|print_ptr[3]~39_combout\,
	cout => \disp|print_ptr[3]~40\);

-- Location: FF_X27_Y19_N7
\disp|print_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[3]~39_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(3));

-- Location: LCCOMB_X27_Y19_N8
\disp|print_ptr[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[4]~41_combout\ = (\disp|print_ptr\(4) & (\disp|print_ptr[3]~40\ $ (GND))) # (!\disp|print_ptr\(4) & (!\disp|print_ptr[3]~40\ & VCC))
-- \disp|print_ptr[4]~42\ = CARRY((\disp|print_ptr\(4) & !\disp|print_ptr[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(4),
	datad => VCC,
	cin => \disp|print_ptr[3]~40\,
	combout => \disp|print_ptr[4]~41_combout\,
	cout => \disp|print_ptr[4]~42\);

-- Location: FF_X27_Y19_N9
\disp|print_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[4]~41_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(4));

-- Location: LCCOMB_X27_Y19_N10
\disp|print_ptr[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[5]~43_combout\ = (\disp|print_ptr\(5) & (!\disp|print_ptr[4]~42\)) # (!\disp|print_ptr\(5) & ((\disp|print_ptr[4]~42\) # (GND)))
-- \disp|print_ptr[5]~44\ = CARRY((!\disp|print_ptr[4]~42\) # (!\disp|print_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datad => VCC,
	cin => \disp|print_ptr[4]~42\,
	combout => \disp|print_ptr[5]~43_combout\,
	cout => \disp|print_ptr[5]~44\);

-- Location: FF_X27_Y19_N11
\disp|print_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[5]~43_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(5));

-- Location: LCCOMB_X27_Y19_N12
\disp|print_ptr[6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[6]~45_combout\ = (\disp|print_ptr\(6) & (\disp|print_ptr[5]~44\ $ (GND))) # (!\disp|print_ptr\(6) & (!\disp|print_ptr[5]~44\ & VCC))
-- \disp|print_ptr[6]~46\ = CARRY((\disp|print_ptr\(6) & !\disp|print_ptr[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(6),
	datad => VCC,
	cin => \disp|print_ptr[5]~44\,
	combout => \disp|print_ptr[6]~45_combout\,
	cout => \disp|print_ptr[6]~46\);

-- Location: FF_X27_Y19_N13
\disp|print_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[6]~45_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(6));

-- Location: LCCOMB_X27_Y19_N14
\disp|print_ptr[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[7]~47_combout\ = (\disp|print_ptr\(7) & (!\disp|print_ptr[6]~46\)) # (!\disp|print_ptr\(7) & ((\disp|print_ptr[6]~46\) # (GND)))
-- \disp|print_ptr[7]~48\ = CARRY((!\disp|print_ptr[6]~46\) # (!\disp|print_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(7),
	datad => VCC,
	cin => \disp|print_ptr[6]~46\,
	combout => \disp|print_ptr[7]~47_combout\,
	cout => \disp|print_ptr[7]~48\);

-- Location: FF_X27_Y19_N15
\disp|print_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[7]~47_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(7));

-- Location: LCCOMB_X27_Y19_N16
\disp|print_ptr[8]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[8]~49_combout\ = (\disp|print_ptr\(8) & (\disp|print_ptr[7]~48\ $ (GND))) # (!\disp|print_ptr\(8) & (!\disp|print_ptr[7]~48\ & VCC))
-- \disp|print_ptr[8]~50\ = CARRY((\disp|print_ptr\(8) & !\disp|print_ptr[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(8),
	datad => VCC,
	cin => \disp|print_ptr[7]~48\,
	combout => \disp|print_ptr[8]~49_combout\,
	cout => \disp|print_ptr[8]~50\);

-- Location: FF_X27_Y19_N17
\disp|print_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[8]~49_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(8));

-- Location: LCCOMB_X27_Y19_N18
\disp|print_ptr[9]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[9]~51_combout\ = (\disp|print_ptr\(9) & (!\disp|print_ptr[8]~50\)) # (!\disp|print_ptr\(9) & ((\disp|print_ptr[8]~50\) # (GND)))
-- \disp|print_ptr[9]~52\ = CARRY((!\disp|print_ptr[8]~50\) # (!\disp|print_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(9),
	datad => VCC,
	cin => \disp|print_ptr[8]~50\,
	combout => \disp|print_ptr[9]~51_combout\,
	cout => \disp|print_ptr[9]~52\);

-- Location: FF_X27_Y19_N19
\disp|print_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[9]~51_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(9));

-- Location: LCCOMB_X27_Y19_N20
\disp|print_ptr[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[10]~53_combout\ = (\disp|print_ptr\(10) & (\disp|print_ptr[9]~52\ $ (GND))) # (!\disp|print_ptr\(10) & (!\disp|print_ptr[9]~52\ & VCC))
-- \disp|print_ptr[10]~54\ = CARRY((\disp|print_ptr\(10) & !\disp|print_ptr[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(10),
	datad => VCC,
	cin => \disp|print_ptr[9]~52\,
	combout => \disp|print_ptr[10]~53_combout\,
	cout => \disp|print_ptr[10]~54\);

-- Location: FF_X27_Y19_N21
\disp|print_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[10]~53_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(10));

-- Location: LCCOMB_X27_Y19_N22
\disp|print_ptr[11]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[11]~55_combout\ = (\disp|print_ptr\(11) & (!\disp|print_ptr[10]~54\)) # (!\disp|print_ptr\(11) & ((\disp|print_ptr[10]~54\) # (GND)))
-- \disp|print_ptr[11]~56\ = CARRY((!\disp|print_ptr[10]~54\) # (!\disp|print_ptr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(11),
	datad => VCC,
	cin => \disp|print_ptr[10]~54\,
	combout => \disp|print_ptr[11]~55_combout\,
	cout => \disp|print_ptr[11]~56\);

-- Location: FF_X27_Y19_N23
\disp|print_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[11]~55_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(11));

-- Location: LCCOMB_X27_Y19_N24
\disp|print_ptr[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[12]~57_combout\ = (\disp|print_ptr\(12) & (\disp|print_ptr[11]~56\ $ (GND))) # (!\disp|print_ptr\(12) & (!\disp|print_ptr[11]~56\ & VCC))
-- \disp|print_ptr[12]~58\ = CARRY((\disp|print_ptr\(12) & !\disp|print_ptr[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(12),
	datad => VCC,
	cin => \disp|print_ptr[11]~56\,
	combout => \disp|print_ptr[12]~57_combout\,
	cout => \disp|print_ptr[12]~58\);

-- Location: FF_X27_Y19_N25
\disp|print_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[12]~57_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(12));

-- Location: LCCOMB_X27_Y19_N26
\disp|print_ptr[13]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[13]~59_combout\ = (\disp|print_ptr\(13) & (!\disp|print_ptr[12]~58\)) # (!\disp|print_ptr\(13) & ((\disp|print_ptr[12]~58\) # (GND)))
-- \disp|print_ptr[13]~60\ = CARRY((!\disp|print_ptr[12]~58\) # (!\disp|print_ptr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(13),
	datad => VCC,
	cin => \disp|print_ptr[12]~58\,
	combout => \disp|print_ptr[13]~59_combout\,
	cout => \disp|print_ptr[13]~60\);

-- Location: FF_X27_Y19_N27
\disp|print_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[13]~59_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(13));

-- Location: LCCOMB_X27_Y19_N28
\disp|print_ptr[14]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[14]~61_combout\ = (\disp|print_ptr\(14) & (\disp|print_ptr[13]~60\ $ (GND))) # (!\disp|print_ptr\(14) & (!\disp|print_ptr[13]~60\ & VCC))
-- \disp|print_ptr[14]~62\ = CARRY((\disp|print_ptr\(14) & !\disp|print_ptr[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(14),
	datad => VCC,
	cin => \disp|print_ptr[13]~60\,
	combout => \disp|print_ptr[14]~61_combout\,
	cout => \disp|print_ptr[14]~62\);

-- Location: FF_X27_Y19_N29
\disp|print_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[14]~61_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(14));

-- Location: LCCOMB_X27_Y19_N30
\disp|print_ptr[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[15]~63_combout\ = (\disp|print_ptr\(15) & (!\disp|print_ptr[14]~62\)) # (!\disp|print_ptr\(15) & ((\disp|print_ptr[14]~62\) # (GND)))
-- \disp|print_ptr[15]~64\ = CARRY((!\disp|print_ptr[14]~62\) # (!\disp|print_ptr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(15),
	datad => VCC,
	cin => \disp|print_ptr[14]~62\,
	combout => \disp|print_ptr[15]~63_combout\,
	cout => \disp|print_ptr[15]~64\);

-- Location: FF_X27_Y19_N31
\disp|print_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[15]~63_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(15));

-- Location: LCCOMB_X27_Y18_N0
\disp|print_ptr[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[16]~65_combout\ = (\disp|print_ptr\(16) & (\disp|print_ptr[15]~64\ $ (GND))) # (!\disp|print_ptr\(16) & (!\disp|print_ptr[15]~64\ & VCC))
-- \disp|print_ptr[16]~66\ = CARRY((\disp|print_ptr\(16) & !\disp|print_ptr[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(16),
	datad => VCC,
	cin => \disp|print_ptr[15]~64\,
	combout => \disp|print_ptr[16]~65_combout\,
	cout => \disp|print_ptr[16]~66\);

-- Location: FF_X27_Y18_N1
\disp|print_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[16]~65_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(16));

-- Location: LCCOMB_X27_Y18_N2
\disp|print_ptr[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[17]~67_combout\ = (\disp|print_ptr\(17) & (!\disp|print_ptr[16]~66\)) # (!\disp|print_ptr\(17) & ((\disp|print_ptr[16]~66\) # (GND)))
-- \disp|print_ptr[17]~68\ = CARRY((!\disp|print_ptr[16]~66\) # (!\disp|print_ptr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(17),
	datad => VCC,
	cin => \disp|print_ptr[16]~66\,
	combout => \disp|print_ptr[17]~67_combout\,
	cout => \disp|print_ptr[17]~68\);

-- Location: FF_X27_Y18_N3
\disp|print_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[17]~67_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(17));

-- Location: LCCOMB_X27_Y18_N4
\disp|print_ptr[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[18]~69_combout\ = (\disp|print_ptr\(18) & (\disp|print_ptr[17]~68\ $ (GND))) # (!\disp|print_ptr\(18) & (!\disp|print_ptr[17]~68\ & VCC))
-- \disp|print_ptr[18]~70\ = CARRY((\disp|print_ptr\(18) & !\disp|print_ptr[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(18),
	datad => VCC,
	cin => \disp|print_ptr[17]~68\,
	combout => \disp|print_ptr[18]~69_combout\,
	cout => \disp|print_ptr[18]~70\);

-- Location: FF_X27_Y18_N5
\disp|print_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[18]~69_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(18));

-- Location: LCCOMB_X27_Y18_N6
\disp|print_ptr[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[19]~71_combout\ = (\disp|print_ptr\(19) & (!\disp|print_ptr[18]~70\)) # (!\disp|print_ptr\(19) & ((\disp|print_ptr[18]~70\) # (GND)))
-- \disp|print_ptr[19]~72\ = CARRY((!\disp|print_ptr[18]~70\) # (!\disp|print_ptr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(19),
	datad => VCC,
	cin => \disp|print_ptr[18]~70\,
	combout => \disp|print_ptr[19]~71_combout\,
	cout => \disp|print_ptr[19]~72\);

-- Location: FF_X27_Y18_N7
\disp|print_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[19]~71_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(19));

-- Location: LCCOMB_X27_Y18_N8
\disp|print_ptr[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[20]~73_combout\ = (\disp|print_ptr\(20) & (\disp|print_ptr[19]~72\ $ (GND))) # (!\disp|print_ptr\(20) & (!\disp|print_ptr[19]~72\ & VCC))
-- \disp|print_ptr[20]~74\ = CARRY((\disp|print_ptr\(20) & !\disp|print_ptr[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(20),
	datad => VCC,
	cin => \disp|print_ptr[19]~72\,
	combout => \disp|print_ptr[20]~73_combout\,
	cout => \disp|print_ptr[20]~74\);

-- Location: FF_X27_Y18_N9
\disp|print_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[20]~73_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(20));

-- Location: LCCOMB_X27_Y18_N10
\disp|print_ptr[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[21]~75_combout\ = (\disp|print_ptr\(21) & (!\disp|print_ptr[20]~74\)) # (!\disp|print_ptr\(21) & ((\disp|print_ptr[20]~74\) # (GND)))
-- \disp|print_ptr[21]~76\ = CARRY((!\disp|print_ptr[20]~74\) # (!\disp|print_ptr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(21),
	datad => VCC,
	cin => \disp|print_ptr[20]~74\,
	combout => \disp|print_ptr[21]~75_combout\,
	cout => \disp|print_ptr[21]~76\);

-- Location: FF_X27_Y18_N11
\disp|print_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[21]~75_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(21));

-- Location: LCCOMB_X27_Y18_N12
\disp|print_ptr[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[22]~77_combout\ = (\disp|print_ptr\(22) & (\disp|print_ptr[21]~76\ $ (GND))) # (!\disp|print_ptr\(22) & (!\disp|print_ptr[21]~76\ & VCC))
-- \disp|print_ptr[22]~78\ = CARRY((\disp|print_ptr\(22) & !\disp|print_ptr[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(22),
	datad => VCC,
	cin => \disp|print_ptr[21]~76\,
	combout => \disp|print_ptr[22]~77_combout\,
	cout => \disp|print_ptr[22]~78\);

-- Location: FF_X27_Y18_N13
\disp|print_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[22]~77_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(22));

-- Location: LCCOMB_X27_Y18_N14
\disp|print_ptr[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[23]~79_combout\ = (\disp|print_ptr\(23) & (!\disp|print_ptr[22]~78\)) # (!\disp|print_ptr\(23) & ((\disp|print_ptr[22]~78\) # (GND)))
-- \disp|print_ptr[23]~80\ = CARRY((!\disp|print_ptr[22]~78\) # (!\disp|print_ptr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(23),
	datad => VCC,
	cin => \disp|print_ptr[22]~78\,
	combout => \disp|print_ptr[23]~79_combout\,
	cout => \disp|print_ptr[23]~80\);

-- Location: FF_X27_Y18_N15
\disp|print_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[23]~79_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(23));

-- Location: LCCOMB_X27_Y18_N16
\disp|print_ptr[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[24]~81_combout\ = (\disp|print_ptr\(24) & (\disp|print_ptr[23]~80\ $ (GND))) # (!\disp|print_ptr\(24) & (!\disp|print_ptr[23]~80\ & VCC))
-- \disp|print_ptr[24]~82\ = CARRY((\disp|print_ptr\(24) & !\disp|print_ptr[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(24),
	datad => VCC,
	cin => \disp|print_ptr[23]~80\,
	combout => \disp|print_ptr[24]~81_combout\,
	cout => \disp|print_ptr[24]~82\);

-- Location: FF_X27_Y18_N17
\disp|print_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[24]~81_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(24));

-- Location: LCCOMB_X27_Y18_N18
\disp|print_ptr[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[25]~83_combout\ = (\disp|print_ptr\(25) & (!\disp|print_ptr[24]~82\)) # (!\disp|print_ptr\(25) & ((\disp|print_ptr[24]~82\) # (GND)))
-- \disp|print_ptr[25]~84\ = CARRY((!\disp|print_ptr[24]~82\) # (!\disp|print_ptr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(25),
	datad => VCC,
	cin => \disp|print_ptr[24]~82\,
	combout => \disp|print_ptr[25]~83_combout\,
	cout => \disp|print_ptr[25]~84\);

-- Location: FF_X27_Y18_N19
\disp|print_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[25]~83_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(25));

-- Location: LCCOMB_X27_Y18_N20
\disp|print_ptr[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[26]~85_combout\ = (\disp|print_ptr\(26) & (\disp|print_ptr[25]~84\ $ (GND))) # (!\disp|print_ptr\(26) & (!\disp|print_ptr[25]~84\ & VCC))
-- \disp|print_ptr[26]~86\ = CARRY((\disp|print_ptr\(26) & !\disp|print_ptr[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(26),
	datad => VCC,
	cin => \disp|print_ptr[25]~84\,
	combout => \disp|print_ptr[26]~85_combout\,
	cout => \disp|print_ptr[26]~86\);

-- Location: FF_X27_Y18_N21
\disp|print_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[26]~85_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(26));

-- Location: LCCOMB_X27_Y18_N22
\disp|print_ptr[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[27]~87_combout\ = (\disp|print_ptr\(27) & (!\disp|print_ptr[26]~86\)) # (!\disp|print_ptr\(27) & ((\disp|print_ptr[26]~86\) # (GND)))
-- \disp|print_ptr[27]~88\ = CARRY((!\disp|print_ptr[26]~86\) # (!\disp|print_ptr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(27),
	datad => VCC,
	cin => \disp|print_ptr[26]~86\,
	combout => \disp|print_ptr[27]~87_combout\,
	cout => \disp|print_ptr[27]~88\);

-- Location: FF_X27_Y18_N23
\disp|print_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[27]~87_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(27));

-- Location: LCCOMB_X27_Y18_N24
\disp|print_ptr[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[28]~89_combout\ = (\disp|print_ptr\(28) & (\disp|print_ptr[27]~88\ $ (GND))) # (!\disp|print_ptr\(28) & (!\disp|print_ptr[27]~88\ & VCC))
-- \disp|print_ptr[28]~90\ = CARRY((\disp|print_ptr\(28) & !\disp|print_ptr[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(28),
	datad => VCC,
	cin => \disp|print_ptr[27]~88\,
	combout => \disp|print_ptr[28]~89_combout\,
	cout => \disp|print_ptr[28]~90\);

-- Location: FF_X27_Y18_N25
\disp|print_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[28]~89_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(28));

-- Location: LCCOMB_X27_Y18_N26
\disp|print_ptr[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[29]~91_combout\ = (\disp|print_ptr\(29) & (!\disp|print_ptr[28]~90\)) # (!\disp|print_ptr\(29) & ((\disp|print_ptr[28]~90\) # (GND)))
-- \disp|print_ptr[29]~92\ = CARRY((!\disp|print_ptr[28]~90\) # (!\disp|print_ptr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(29),
	datad => VCC,
	cin => \disp|print_ptr[28]~90\,
	combout => \disp|print_ptr[29]~91_combout\,
	cout => \disp|print_ptr[29]~92\);

-- Location: FF_X27_Y18_N27
\disp|print_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[29]~91_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(29));

-- Location: LCCOMB_X27_Y18_N28
\disp|print_ptr[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[30]~93_combout\ = (\disp|print_ptr\(30) & (\disp|print_ptr[29]~92\ $ (GND))) # (!\disp|print_ptr\(30) & (!\disp|print_ptr[29]~92\ & VCC))
-- \disp|print_ptr[30]~94\ = CARRY((\disp|print_ptr\(30) & !\disp|print_ptr[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(30),
	datad => VCC,
	cin => \disp|print_ptr[29]~92\,
	combout => \disp|print_ptr[30]~93_combout\,
	cout => \disp|print_ptr[30]~94\);

-- Location: FF_X27_Y18_N29
\disp|print_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[30]~93_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(30));

-- Location: LCCOMB_X27_Y18_N30
\disp|print_ptr[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|print_ptr[31]~95_combout\ = \disp|print_ptr\(31) $ (\disp|print_ptr[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(31),
	cin => \disp|print_ptr[30]~94\,
	combout => \disp|print_ptr[31]~95_combout\);

-- Location: FF_X27_Y18_N31
\disp|print_ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|print_ptr[31]~95_combout\,
	sclr => \disp|print_ptr[14]~97_combout\,
	ena => \disp|print_ptr[14]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|print_ptr\(31));

-- Location: LCCOMB_X26_Y19_N0
\disp|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~1_cout\ = CARRY((!\disp|print_ptr\(0) & \disp|buffer_ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|buffer_ptr\(0),
	datad => VCC,
	cout => \disp|LessThan9~1_cout\);

-- Location: LCCOMB_X26_Y19_N2
\disp|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~3_cout\ = CARRY((\disp|print_ptr\(1) & ((!\disp|LessThan9~1_cout\) # (!\disp|buffer_ptr\(1)))) # (!\disp|print_ptr\(1) & (!\disp|buffer_ptr\(1) & !\disp|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|buffer_ptr\(1),
	datad => VCC,
	cin => \disp|LessThan9~1_cout\,
	cout => \disp|LessThan9~3_cout\);

-- Location: LCCOMB_X26_Y19_N4
\disp|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~5_cout\ = CARRY((\disp|print_ptr\(2) & (\disp|buffer_ptr\(2) & !\disp|LessThan9~3_cout\)) # (!\disp|print_ptr\(2) & ((\disp|buffer_ptr\(2)) # (!\disp|LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|buffer_ptr\(2),
	datad => VCC,
	cin => \disp|LessThan9~3_cout\,
	cout => \disp|LessThan9~5_cout\);

-- Location: LCCOMB_X26_Y19_N6
\disp|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~7_cout\ = CARRY((\disp|print_ptr\(3) & ((!\disp|LessThan9~5_cout\) # (!\disp|buffer_ptr\(3)))) # (!\disp|print_ptr\(3) & (!\disp|buffer_ptr\(3) & !\disp|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|buffer_ptr\(3),
	datad => VCC,
	cin => \disp|LessThan9~5_cout\,
	cout => \disp|LessThan9~7_cout\);

-- Location: LCCOMB_X26_Y19_N8
\disp|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~9_cout\ = CARRY((\disp|buffer_ptr\(4) & ((!\disp|LessThan9~7_cout\) # (!\disp|print_ptr\(4)))) # (!\disp|buffer_ptr\(4) & (!\disp|print_ptr\(4) & !\disp|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(4),
	datab => \disp|print_ptr\(4),
	datad => VCC,
	cin => \disp|LessThan9~7_cout\,
	cout => \disp|LessThan9~9_cout\);

-- Location: LCCOMB_X26_Y19_N10
\disp|LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~11_cout\ = CARRY((\disp|print_ptr\(5) & ((!\disp|LessThan9~9_cout\) # (!\disp|buffer_ptr\(5)))) # (!\disp|print_ptr\(5) & (!\disp|buffer_ptr\(5) & !\disp|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|buffer_ptr\(5),
	datad => VCC,
	cin => \disp|LessThan9~9_cout\,
	cout => \disp|LessThan9~11_cout\);

-- Location: LCCOMB_X26_Y19_N12
\disp|LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~13_cout\ = CARRY((\disp|buffer_ptr\(6) & ((!\disp|LessThan9~11_cout\) # (!\disp|print_ptr\(6)))) # (!\disp|buffer_ptr\(6) & (!\disp|print_ptr\(6) & !\disp|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(6),
	datab => \disp|print_ptr\(6),
	datad => VCC,
	cin => \disp|LessThan9~11_cout\,
	cout => \disp|LessThan9~13_cout\);

-- Location: LCCOMB_X26_Y19_N14
\disp|LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~15_cout\ = CARRY((\disp|buffer_ptr\(7) & (\disp|print_ptr\(7) & !\disp|LessThan9~13_cout\)) # (!\disp|buffer_ptr\(7) & ((\disp|print_ptr\(7)) # (!\disp|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(7),
	datab => \disp|print_ptr\(7),
	datad => VCC,
	cin => \disp|LessThan9~13_cout\,
	cout => \disp|LessThan9~15_cout\);

-- Location: LCCOMB_X26_Y19_N16
\disp|LessThan9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~17_cout\ = CARRY((\disp|print_ptr\(8) & (\disp|buffer_ptr\(8) & !\disp|LessThan9~15_cout\)) # (!\disp|print_ptr\(8) & ((\disp|buffer_ptr\(8)) # (!\disp|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(8),
	datab => \disp|buffer_ptr\(8),
	datad => VCC,
	cin => \disp|LessThan9~15_cout\,
	cout => \disp|LessThan9~17_cout\);

-- Location: LCCOMB_X26_Y19_N18
\disp|LessThan9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~19_cout\ = CARRY((\disp|buffer_ptr\(9) & (\disp|print_ptr\(9) & !\disp|LessThan9~17_cout\)) # (!\disp|buffer_ptr\(9) & ((\disp|print_ptr\(9)) # (!\disp|LessThan9~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(9),
	datab => \disp|print_ptr\(9),
	datad => VCC,
	cin => \disp|LessThan9~17_cout\,
	cout => \disp|LessThan9~19_cout\);

-- Location: LCCOMB_X26_Y19_N20
\disp|LessThan9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~21_cout\ = CARRY((\disp|print_ptr\(10) & (\disp|buffer_ptr\(10) & !\disp|LessThan9~19_cout\)) # (!\disp|print_ptr\(10) & ((\disp|buffer_ptr\(10)) # (!\disp|LessThan9~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(10),
	datab => \disp|buffer_ptr\(10),
	datad => VCC,
	cin => \disp|LessThan9~19_cout\,
	cout => \disp|LessThan9~21_cout\);

-- Location: LCCOMB_X26_Y19_N22
\disp|LessThan9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~23_cout\ = CARRY((\disp|buffer_ptr\(11) & (\disp|print_ptr\(11) & !\disp|LessThan9~21_cout\)) # (!\disp|buffer_ptr\(11) & ((\disp|print_ptr\(11)) # (!\disp|LessThan9~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(11),
	datab => \disp|print_ptr\(11),
	datad => VCC,
	cin => \disp|LessThan9~21_cout\,
	cout => \disp|LessThan9~23_cout\);

-- Location: LCCOMB_X26_Y19_N24
\disp|LessThan9~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~25_cout\ = CARRY((\disp|buffer_ptr\(12) & ((!\disp|LessThan9~23_cout\) # (!\disp|print_ptr\(12)))) # (!\disp|buffer_ptr\(12) & (!\disp|print_ptr\(12) & !\disp|LessThan9~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(12),
	datab => \disp|print_ptr\(12),
	datad => VCC,
	cin => \disp|LessThan9~23_cout\,
	cout => \disp|LessThan9~25_cout\);

-- Location: LCCOMB_X26_Y19_N26
\disp|LessThan9~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~27_cout\ = CARRY((\disp|buffer_ptr\(13) & (\disp|print_ptr\(13) & !\disp|LessThan9~25_cout\)) # (!\disp|buffer_ptr\(13) & ((\disp|print_ptr\(13)) # (!\disp|LessThan9~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(13),
	datab => \disp|print_ptr\(13),
	datad => VCC,
	cin => \disp|LessThan9~25_cout\,
	cout => \disp|LessThan9~27_cout\);

-- Location: LCCOMB_X26_Y19_N28
\disp|LessThan9~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~29_cout\ = CARRY((\disp|buffer_ptr\(14) & ((!\disp|LessThan9~27_cout\) # (!\disp|print_ptr\(14)))) # (!\disp|buffer_ptr\(14) & (!\disp|print_ptr\(14) & !\disp|LessThan9~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(14),
	datab => \disp|print_ptr\(14),
	datad => VCC,
	cin => \disp|LessThan9~27_cout\,
	cout => \disp|LessThan9~29_cout\);

-- Location: LCCOMB_X26_Y19_N30
\disp|LessThan9~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~31_cout\ = CARRY((\disp|print_ptr\(15) & ((!\disp|LessThan9~29_cout\) # (!\disp|buffer_ptr\(15)))) # (!\disp|print_ptr\(15) & (!\disp|buffer_ptr\(15) & !\disp|LessThan9~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(15),
	datab => \disp|buffer_ptr\(15),
	datad => VCC,
	cin => \disp|LessThan9~29_cout\,
	cout => \disp|LessThan9~31_cout\);

-- Location: LCCOMB_X26_Y18_N0
\disp|LessThan9~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~33_cout\ = CARRY((\disp|buffer_ptr\(16) & ((!\disp|LessThan9~31_cout\) # (!\disp|print_ptr\(16)))) # (!\disp|buffer_ptr\(16) & (!\disp|print_ptr\(16) & !\disp|LessThan9~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(16),
	datab => \disp|print_ptr\(16),
	datad => VCC,
	cin => \disp|LessThan9~31_cout\,
	cout => \disp|LessThan9~33_cout\);

-- Location: LCCOMB_X26_Y18_N2
\disp|LessThan9~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~35_cout\ = CARRY((\disp|print_ptr\(17) & ((!\disp|LessThan9~33_cout\) # (!\disp|buffer_ptr\(17)))) # (!\disp|print_ptr\(17) & (!\disp|buffer_ptr\(17) & !\disp|LessThan9~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(17),
	datab => \disp|buffer_ptr\(17),
	datad => VCC,
	cin => \disp|LessThan9~33_cout\,
	cout => \disp|LessThan9~35_cout\);

-- Location: LCCOMB_X26_Y18_N4
\disp|LessThan9~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~37_cout\ = CARRY((\disp|buffer_ptr\(18) & ((!\disp|LessThan9~35_cout\) # (!\disp|print_ptr\(18)))) # (!\disp|buffer_ptr\(18) & (!\disp|print_ptr\(18) & !\disp|LessThan9~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(18),
	datab => \disp|print_ptr\(18),
	datad => VCC,
	cin => \disp|LessThan9~35_cout\,
	cout => \disp|LessThan9~37_cout\);

-- Location: LCCOMB_X26_Y18_N6
\disp|LessThan9~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~39_cout\ = CARRY((\disp|print_ptr\(19) & ((!\disp|LessThan9~37_cout\) # (!\disp|buffer_ptr\(19)))) # (!\disp|print_ptr\(19) & (!\disp|buffer_ptr\(19) & !\disp|LessThan9~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(19),
	datab => \disp|buffer_ptr\(19),
	datad => VCC,
	cin => \disp|LessThan9~37_cout\,
	cout => \disp|LessThan9~39_cout\);

-- Location: LCCOMB_X26_Y18_N8
\disp|LessThan9~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~41_cout\ = CARRY((\disp|buffer_ptr\(20) & ((!\disp|LessThan9~39_cout\) # (!\disp|print_ptr\(20)))) # (!\disp|buffer_ptr\(20) & (!\disp|print_ptr\(20) & !\disp|LessThan9~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(20),
	datab => \disp|print_ptr\(20),
	datad => VCC,
	cin => \disp|LessThan9~39_cout\,
	cout => \disp|LessThan9~41_cout\);

-- Location: LCCOMB_X26_Y18_N10
\disp|LessThan9~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~43_cout\ = CARRY((\disp|buffer_ptr\(21) & (\disp|print_ptr\(21) & !\disp|LessThan9~41_cout\)) # (!\disp|buffer_ptr\(21) & ((\disp|print_ptr\(21)) # (!\disp|LessThan9~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(21),
	datab => \disp|print_ptr\(21),
	datad => VCC,
	cin => \disp|LessThan9~41_cout\,
	cout => \disp|LessThan9~43_cout\);

-- Location: LCCOMB_X26_Y18_N12
\disp|LessThan9~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~45_cout\ = CARRY((\disp|buffer_ptr\(22) & ((!\disp|LessThan9~43_cout\) # (!\disp|print_ptr\(22)))) # (!\disp|buffer_ptr\(22) & (!\disp|print_ptr\(22) & !\disp|LessThan9~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(22),
	datab => \disp|print_ptr\(22),
	datad => VCC,
	cin => \disp|LessThan9~43_cout\,
	cout => \disp|LessThan9~45_cout\);

-- Location: LCCOMB_X26_Y18_N14
\disp|LessThan9~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~47_cout\ = CARRY((\disp|buffer_ptr\(23) & (\disp|print_ptr\(23) & !\disp|LessThan9~45_cout\)) # (!\disp|buffer_ptr\(23) & ((\disp|print_ptr\(23)) # (!\disp|LessThan9~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(23),
	datab => \disp|print_ptr\(23),
	datad => VCC,
	cin => \disp|LessThan9~45_cout\,
	cout => \disp|LessThan9~47_cout\);

-- Location: LCCOMB_X26_Y18_N16
\disp|LessThan9~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~49_cout\ = CARRY((\disp|buffer_ptr\(24) & ((!\disp|LessThan9~47_cout\) # (!\disp|print_ptr\(24)))) # (!\disp|buffer_ptr\(24) & (!\disp|print_ptr\(24) & !\disp|LessThan9~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(24),
	datab => \disp|print_ptr\(24),
	datad => VCC,
	cin => \disp|LessThan9~47_cout\,
	cout => \disp|LessThan9~49_cout\);

-- Location: LCCOMB_X26_Y18_N18
\disp|LessThan9~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~51_cout\ = CARRY((\disp|buffer_ptr\(25) & (\disp|print_ptr\(25) & !\disp|LessThan9~49_cout\)) # (!\disp|buffer_ptr\(25) & ((\disp|print_ptr\(25)) # (!\disp|LessThan9~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(25),
	datab => \disp|print_ptr\(25),
	datad => VCC,
	cin => \disp|LessThan9~49_cout\,
	cout => \disp|LessThan9~51_cout\);

-- Location: LCCOMB_X26_Y18_N20
\disp|LessThan9~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~53_cout\ = CARRY((\disp|print_ptr\(26) & (\disp|buffer_ptr\(26) & !\disp|LessThan9~51_cout\)) # (!\disp|print_ptr\(26) & ((\disp|buffer_ptr\(26)) # (!\disp|LessThan9~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(26),
	datab => \disp|buffer_ptr\(26),
	datad => VCC,
	cin => \disp|LessThan9~51_cout\,
	cout => \disp|LessThan9~53_cout\);

-- Location: LCCOMB_X26_Y18_N22
\disp|LessThan9~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~55_cout\ = CARRY((\disp|buffer_ptr\(27) & (\disp|print_ptr\(27) & !\disp|LessThan9~53_cout\)) # (!\disp|buffer_ptr\(27) & ((\disp|print_ptr\(27)) # (!\disp|LessThan9~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(27),
	datab => \disp|print_ptr\(27),
	datad => VCC,
	cin => \disp|LessThan9~53_cout\,
	cout => \disp|LessThan9~55_cout\);

-- Location: LCCOMB_X26_Y18_N24
\disp|LessThan9~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~57_cout\ = CARRY((\disp|buffer_ptr\(28) & ((!\disp|LessThan9~55_cout\) # (!\disp|print_ptr\(28)))) # (!\disp|buffer_ptr\(28) & (!\disp|print_ptr\(28) & !\disp|LessThan9~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(28),
	datab => \disp|print_ptr\(28),
	datad => VCC,
	cin => \disp|LessThan9~55_cout\,
	cout => \disp|LessThan9~57_cout\);

-- Location: LCCOMB_X26_Y18_N26
\disp|LessThan9~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~59_cout\ = CARRY((\disp|buffer_ptr\(29) & (\disp|print_ptr\(29) & !\disp|LessThan9~57_cout\)) # (!\disp|buffer_ptr\(29) & ((\disp|print_ptr\(29)) # (!\disp|LessThan9~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(29),
	datab => \disp|print_ptr\(29),
	datad => VCC,
	cin => \disp|LessThan9~57_cout\,
	cout => \disp|LessThan9~59_cout\);

-- Location: LCCOMB_X26_Y18_N28
\disp|LessThan9~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~61_cout\ = CARRY((\disp|buffer_ptr\(30) & ((!\disp|LessThan9~59_cout\) # (!\disp|print_ptr\(30)))) # (!\disp|buffer_ptr\(30) & (!\disp|print_ptr\(30) & !\disp|LessThan9~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|buffer_ptr\(30),
	datab => \disp|print_ptr\(30),
	datad => VCC,
	cin => \disp|LessThan9~59_cout\,
	cout => \disp|LessThan9~61_cout\);

-- Location: LCCOMB_X26_Y18_N30
\disp|LessThan9~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan9~62_combout\ = (\disp|print_ptr\(31) & ((\disp|LessThan9~61_cout\) # (!\disp|buffer_ptr\(31)))) # (!\disp|print_ptr\(31) & (\disp|LessThan9~61_cout\ & !\disp|buffer_ptr\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(31),
	datad => \disp|buffer_ptr\(31),
	cin => \disp|LessThan9~61_cout\,
	combout => \disp|LessThan9~62_combout\);

-- Location: LCCOMB_X23_Y21_N2
\disp|trans_cnt[24]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[24]~39_combout\ = (\i_I2C_reset~input_o\) # ((\disp|state.transmit~q\ & (\inst|w_busy~q\ & \disp|LessThan9~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \i_I2C_reset~input_o\,
	datac => \inst|w_busy~q\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|trans_cnt[24]~39_combout\);

-- Location: FF_X16_Y18_N1
\disp|trans_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[0]~32_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(0));

-- Location: LCCOMB_X16_Y18_N2
\disp|trans_cnt[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[1]~34_combout\ = (\disp|trans_cnt\(1) & (!\disp|trans_cnt[0]~33\)) # (!\disp|trans_cnt\(1) & ((\disp|trans_cnt[0]~33\) # (GND)))
-- \disp|trans_cnt[1]~35\ = CARRY((!\disp|trans_cnt[0]~33\) # (!\disp|trans_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(1),
	datad => VCC,
	cin => \disp|trans_cnt[0]~33\,
	combout => \disp|trans_cnt[1]~34_combout\,
	cout => \disp|trans_cnt[1]~35\);

-- Location: FF_X16_Y18_N3
\disp|trans_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[1]~34_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(1));

-- Location: LCCOMB_X16_Y18_N4
\disp|trans_cnt[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[2]~36_combout\ = (\disp|trans_cnt\(2) & (\disp|trans_cnt[1]~35\ $ (GND))) # (!\disp|trans_cnt\(2) & (!\disp|trans_cnt[1]~35\ & VCC))
-- \disp|trans_cnt[2]~37\ = CARRY((\disp|trans_cnt\(2) & !\disp|trans_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(2),
	datad => VCC,
	cin => \disp|trans_cnt[1]~35\,
	combout => \disp|trans_cnt[2]~36_combout\,
	cout => \disp|trans_cnt[2]~37\);

-- Location: FF_X16_Y18_N5
\disp|trans_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[2]~36_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(2));

-- Location: LCCOMB_X16_Y18_N6
\disp|trans_cnt[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[3]~40_combout\ = (\disp|trans_cnt\(3) & (!\disp|trans_cnt[2]~37\)) # (!\disp|trans_cnt\(3) & ((\disp|trans_cnt[2]~37\) # (GND)))
-- \disp|trans_cnt[3]~41\ = CARRY((!\disp|trans_cnt[2]~37\) # (!\disp|trans_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(3),
	datad => VCC,
	cin => \disp|trans_cnt[2]~37\,
	combout => \disp|trans_cnt[3]~40_combout\,
	cout => \disp|trans_cnt[3]~41\);

-- Location: FF_X16_Y18_N7
\disp|trans_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[3]~40_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(3));

-- Location: LCCOMB_X16_Y18_N8
\disp|trans_cnt[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[4]~42_combout\ = (\disp|trans_cnt\(4) & (\disp|trans_cnt[3]~41\ $ (GND))) # (!\disp|trans_cnt\(4) & (!\disp|trans_cnt[3]~41\ & VCC))
-- \disp|trans_cnt[4]~43\ = CARRY((\disp|trans_cnt\(4) & !\disp|trans_cnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(4),
	datad => VCC,
	cin => \disp|trans_cnt[3]~41\,
	combout => \disp|trans_cnt[4]~42_combout\,
	cout => \disp|trans_cnt[4]~43\);

-- Location: FF_X16_Y18_N9
\disp|trans_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[4]~42_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(4));

-- Location: LCCOMB_X16_Y18_N10
\disp|trans_cnt[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[5]~44_combout\ = (\disp|trans_cnt\(5) & (!\disp|trans_cnt[4]~43\)) # (!\disp|trans_cnt\(5) & ((\disp|trans_cnt[4]~43\) # (GND)))
-- \disp|trans_cnt[5]~45\ = CARRY((!\disp|trans_cnt[4]~43\) # (!\disp|trans_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(5),
	datad => VCC,
	cin => \disp|trans_cnt[4]~43\,
	combout => \disp|trans_cnt[5]~44_combout\,
	cout => \disp|trans_cnt[5]~45\);

-- Location: FF_X16_Y18_N11
\disp|trans_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[5]~44_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(5));

-- Location: LCCOMB_X16_Y18_N12
\disp|trans_cnt[6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[6]~46_combout\ = (\disp|trans_cnt\(6) & (\disp|trans_cnt[5]~45\ $ (GND))) # (!\disp|trans_cnt\(6) & (!\disp|trans_cnt[5]~45\ & VCC))
-- \disp|trans_cnt[6]~47\ = CARRY((\disp|trans_cnt\(6) & !\disp|trans_cnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(6),
	datad => VCC,
	cin => \disp|trans_cnt[5]~45\,
	combout => \disp|trans_cnt[6]~46_combout\,
	cout => \disp|trans_cnt[6]~47\);

-- Location: FF_X16_Y18_N13
\disp|trans_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[6]~46_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(6));

-- Location: LCCOMB_X16_Y18_N14
\disp|trans_cnt[7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[7]~48_combout\ = (\disp|trans_cnt\(7) & (!\disp|trans_cnt[6]~47\)) # (!\disp|trans_cnt\(7) & ((\disp|trans_cnt[6]~47\) # (GND)))
-- \disp|trans_cnt[7]~49\ = CARRY((!\disp|trans_cnt[6]~47\) # (!\disp|trans_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(7),
	datad => VCC,
	cin => \disp|trans_cnt[6]~47\,
	combout => \disp|trans_cnt[7]~48_combout\,
	cout => \disp|trans_cnt[7]~49\);

-- Location: FF_X16_Y18_N15
\disp|trans_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[7]~48_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(7));

-- Location: LCCOMB_X16_Y18_N16
\disp|trans_cnt[8]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[8]~50_combout\ = (\disp|trans_cnt\(8) & (\disp|trans_cnt[7]~49\ $ (GND))) # (!\disp|trans_cnt\(8) & (!\disp|trans_cnt[7]~49\ & VCC))
-- \disp|trans_cnt[8]~51\ = CARRY((\disp|trans_cnt\(8) & !\disp|trans_cnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(8),
	datad => VCC,
	cin => \disp|trans_cnt[7]~49\,
	combout => \disp|trans_cnt[8]~50_combout\,
	cout => \disp|trans_cnt[8]~51\);

-- Location: FF_X16_Y18_N17
\disp|trans_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[8]~50_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(8));

-- Location: LCCOMB_X16_Y18_N18
\disp|trans_cnt[9]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[9]~52_combout\ = (\disp|trans_cnt\(9) & (!\disp|trans_cnt[8]~51\)) # (!\disp|trans_cnt\(9) & ((\disp|trans_cnt[8]~51\) # (GND)))
-- \disp|trans_cnt[9]~53\ = CARRY((!\disp|trans_cnt[8]~51\) # (!\disp|trans_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(9),
	datad => VCC,
	cin => \disp|trans_cnt[8]~51\,
	combout => \disp|trans_cnt[9]~52_combout\,
	cout => \disp|trans_cnt[9]~53\);

-- Location: FF_X16_Y18_N19
\disp|trans_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[9]~52_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(9));

-- Location: LCCOMB_X16_Y18_N20
\disp|trans_cnt[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[10]~54_combout\ = (\disp|trans_cnt\(10) & (\disp|trans_cnt[9]~53\ $ (GND))) # (!\disp|trans_cnt\(10) & (!\disp|trans_cnt[9]~53\ & VCC))
-- \disp|trans_cnt[10]~55\ = CARRY((\disp|trans_cnt\(10) & !\disp|trans_cnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(10),
	datad => VCC,
	cin => \disp|trans_cnt[9]~53\,
	combout => \disp|trans_cnt[10]~54_combout\,
	cout => \disp|trans_cnt[10]~55\);

-- Location: FF_X16_Y18_N21
\disp|trans_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[10]~54_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(10));

-- Location: LCCOMB_X16_Y18_N22
\disp|trans_cnt[11]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[11]~56_combout\ = (\disp|trans_cnt\(11) & (!\disp|trans_cnt[10]~55\)) # (!\disp|trans_cnt\(11) & ((\disp|trans_cnt[10]~55\) # (GND)))
-- \disp|trans_cnt[11]~57\ = CARRY((!\disp|trans_cnt[10]~55\) # (!\disp|trans_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(11),
	datad => VCC,
	cin => \disp|trans_cnt[10]~55\,
	combout => \disp|trans_cnt[11]~56_combout\,
	cout => \disp|trans_cnt[11]~57\);

-- Location: FF_X16_Y18_N23
\disp|trans_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[11]~56_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(11));

-- Location: LCCOMB_X16_Y18_N24
\disp|trans_cnt[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[12]~58_combout\ = (\disp|trans_cnt\(12) & (\disp|trans_cnt[11]~57\ $ (GND))) # (!\disp|trans_cnt\(12) & (!\disp|trans_cnt[11]~57\ & VCC))
-- \disp|trans_cnt[12]~59\ = CARRY((\disp|trans_cnt\(12) & !\disp|trans_cnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(12),
	datad => VCC,
	cin => \disp|trans_cnt[11]~57\,
	combout => \disp|trans_cnt[12]~58_combout\,
	cout => \disp|trans_cnt[12]~59\);

-- Location: FF_X16_Y18_N25
\disp|trans_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[12]~58_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(12));

-- Location: LCCOMB_X16_Y18_N26
\disp|trans_cnt[13]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[13]~60_combout\ = (\disp|trans_cnt\(13) & (!\disp|trans_cnt[12]~59\)) # (!\disp|trans_cnt\(13) & ((\disp|trans_cnt[12]~59\) # (GND)))
-- \disp|trans_cnt[13]~61\ = CARRY((!\disp|trans_cnt[12]~59\) # (!\disp|trans_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(13),
	datad => VCC,
	cin => \disp|trans_cnt[12]~59\,
	combout => \disp|trans_cnt[13]~60_combout\,
	cout => \disp|trans_cnt[13]~61\);

-- Location: FF_X16_Y18_N27
\disp|trans_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[13]~60_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(13));

-- Location: LCCOMB_X16_Y18_N28
\disp|trans_cnt[14]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[14]~62_combout\ = (\disp|trans_cnt\(14) & (\disp|trans_cnt[13]~61\ $ (GND))) # (!\disp|trans_cnt\(14) & (!\disp|trans_cnt[13]~61\ & VCC))
-- \disp|trans_cnt[14]~63\ = CARRY((\disp|trans_cnt\(14) & !\disp|trans_cnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(14),
	datad => VCC,
	cin => \disp|trans_cnt[13]~61\,
	combout => \disp|trans_cnt[14]~62_combout\,
	cout => \disp|trans_cnt[14]~63\);

-- Location: FF_X16_Y18_N29
\disp|trans_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[14]~62_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(14));

-- Location: LCCOMB_X16_Y18_N30
\disp|trans_cnt[15]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[15]~64_combout\ = (\disp|trans_cnt\(15) & (!\disp|trans_cnt[14]~63\)) # (!\disp|trans_cnt\(15) & ((\disp|trans_cnt[14]~63\) # (GND)))
-- \disp|trans_cnt[15]~65\ = CARRY((!\disp|trans_cnt[14]~63\) # (!\disp|trans_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(15),
	datad => VCC,
	cin => \disp|trans_cnt[14]~63\,
	combout => \disp|trans_cnt[15]~64_combout\,
	cout => \disp|trans_cnt[15]~65\);

-- Location: FF_X16_Y18_N31
\disp|trans_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[15]~64_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(15));

-- Location: LCCOMB_X16_Y17_N0
\disp|trans_cnt[16]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[16]~66_combout\ = (\disp|trans_cnt\(16) & (\disp|trans_cnt[15]~65\ $ (GND))) # (!\disp|trans_cnt\(16) & (!\disp|trans_cnt[15]~65\ & VCC))
-- \disp|trans_cnt[16]~67\ = CARRY((\disp|trans_cnt\(16) & !\disp|trans_cnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(16),
	datad => VCC,
	cin => \disp|trans_cnt[15]~65\,
	combout => \disp|trans_cnt[16]~66_combout\,
	cout => \disp|trans_cnt[16]~67\);

-- Location: FF_X16_Y17_N1
\disp|trans_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[16]~66_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(16));

-- Location: LCCOMB_X16_Y17_N2
\disp|trans_cnt[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[17]~68_combout\ = (\disp|trans_cnt\(17) & (!\disp|trans_cnt[16]~67\)) # (!\disp|trans_cnt\(17) & ((\disp|trans_cnt[16]~67\) # (GND)))
-- \disp|trans_cnt[17]~69\ = CARRY((!\disp|trans_cnt[16]~67\) # (!\disp|trans_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(17),
	datad => VCC,
	cin => \disp|trans_cnt[16]~67\,
	combout => \disp|trans_cnt[17]~68_combout\,
	cout => \disp|trans_cnt[17]~69\);

-- Location: FF_X16_Y17_N3
\disp|trans_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[17]~68_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(17));

-- Location: LCCOMB_X16_Y17_N4
\disp|trans_cnt[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[18]~70_combout\ = (\disp|trans_cnt\(18) & (\disp|trans_cnt[17]~69\ $ (GND))) # (!\disp|trans_cnt\(18) & (!\disp|trans_cnt[17]~69\ & VCC))
-- \disp|trans_cnt[18]~71\ = CARRY((\disp|trans_cnt\(18) & !\disp|trans_cnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(18),
	datad => VCC,
	cin => \disp|trans_cnt[17]~69\,
	combout => \disp|trans_cnt[18]~70_combout\,
	cout => \disp|trans_cnt[18]~71\);

-- Location: FF_X16_Y17_N5
\disp|trans_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[18]~70_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(18));

-- Location: LCCOMB_X16_Y17_N6
\disp|trans_cnt[19]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[19]~72_combout\ = (\disp|trans_cnt\(19) & (!\disp|trans_cnt[18]~71\)) # (!\disp|trans_cnt\(19) & ((\disp|trans_cnt[18]~71\) # (GND)))
-- \disp|trans_cnt[19]~73\ = CARRY((!\disp|trans_cnt[18]~71\) # (!\disp|trans_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(19),
	datad => VCC,
	cin => \disp|trans_cnt[18]~71\,
	combout => \disp|trans_cnt[19]~72_combout\,
	cout => \disp|trans_cnt[19]~73\);

-- Location: FF_X16_Y17_N7
\disp|trans_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[19]~72_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(19));

-- Location: LCCOMB_X17_Y17_N12
\disp|Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~5_combout\ = (!\disp|trans_cnt\(16) & (!\disp|trans_cnt\(18) & (!\disp|trans_cnt\(19) & !\disp|trans_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(16),
	datab => \disp|trans_cnt\(18),
	datac => \disp|trans_cnt\(19),
	datad => \disp|trans_cnt\(17),
	combout => \disp|Equal4~5_combout\);

-- Location: LCCOMB_X16_Y17_N8
\disp|trans_cnt[20]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[20]~74_combout\ = (\disp|trans_cnt\(20) & (\disp|trans_cnt[19]~73\ $ (GND))) # (!\disp|trans_cnt\(20) & (!\disp|trans_cnt[19]~73\ & VCC))
-- \disp|trans_cnt[20]~75\ = CARRY((\disp|trans_cnt\(20) & !\disp|trans_cnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(20),
	datad => VCC,
	cin => \disp|trans_cnt[19]~73\,
	combout => \disp|trans_cnt[20]~74_combout\,
	cout => \disp|trans_cnt[20]~75\);

-- Location: FF_X16_Y17_N9
\disp|trans_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[20]~74_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(20));

-- Location: LCCOMB_X16_Y17_N10
\disp|trans_cnt[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[21]~76_combout\ = (\disp|trans_cnt\(21) & (!\disp|trans_cnt[20]~75\)) # (!\disp|trans_cnt\(21) & ((\disp|trans_cnt[20]~75\) # (GND)))
-- \disp|trans_cnt[21]~77\ = CARRY((!\disp|trans_cnt[20]~75\) # (!\disp|trans_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(21),
	datad => VCC,
	cin => \disp|trans_cnt[20]~75\,
	combout => \disp|trans_cnt[21]~76_combout\,
	cout => \disp|trans_cnt[21]~77\);

-- Location: FF_X16_Y17_N11
\disp|trans_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[21]~76_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(21));

-- Location: LCCOMB_X16_Y17_N12
\disp|trans_cnt[22]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[22]~78_combout\ = (\disp|trans_cnt\(22) & (\disp|trans_cnt[21]~77\ $ (GND))) # (!\disp|trans_cnt\(22) & (!\disp|trans_cnt[21]~77\ & VCC))
-- \disp|trans_cnt[22]~79\ = CARRY((\disp|trans_cnt\(22) & !\disp|trans_cnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(22),
	datad => VCC,
	cin => \disp|trans_cnt[21]~77\,
	combout => \disp|trans_cnt[22]~78_combout\,
	cout => \disp|trans_cnt[22]~79\);

-- Location: FF_X16_Y17_N13
\disp|trans_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[22]~78_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(22));

-- Location: LCCOMB_X16_Y17_N14
\disp|trans_cnt[23]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[23]~80_combout\ = (\disp|trans_cnt\(23) & (!\disp|trans_cnt[22]~79\)) # (!\disp|trans_cnt\(23) & ((\disp|trans_cnt[22]~79\) # (GND)))
-- \disp|trans_cnt[23]~81\ = CARRY((!\disp|trans_cnt[22]~79\) # (!\disp|trans_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(23),
	datad => VCC,
	cin => \disp|trans_cnt[22]~79\,
	combout => \disp|trans_cnt[23]~80_combout\,
	cout => \disp|trans_cnt[23]~81\);

-- Location: FF_X16_Y17_N15
\disp|trans_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[23]~80_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(23));

-- Location: LCCOMB_X17_Y17_N2
\disp|Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~6_combout\ = (!\disp|trans_cnt\(23) & (!\disp|trans_cnt\(22) & (!\disp|trans_cnt\(20) & !\disp|trans_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(23),
	datab => \disp|trans_cnt\(22),
	datac => \disp|trans_cnt\(20),
	datad => \disp|trans_cnt\(21),
	combout => \disp|Equal4~6_combout\);

-- Location: LCCOMB_X16_Y17_N16
\disp|trans_cnt[24]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[24]~82_combout\ = (\disp|trans_cnt\(24) & (\disp|trans_cnt[23]~81\ $ (GND))) # (!\disp|trans_cnt\(24) & (!\disp|trans_cnt[23]~81\ & VCC))
-- \disp|trans_cnt[24]~83\ = CARRY((\disp|trans_cnt\(24) & !\disp|trans_cnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(24),
	datad => VCC,
	cin => \disp|trans_cnt[23]~81\,
	combout => \disp|trans_cnt[24]~82_combout\,
	cout => \disp|trans_cnt[24]~83\);

-- Location: FF_X16_Y17_N17
\disp|trans_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[24]~82_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(24));

-- Location: LCCOMB_X16_Y17_N18
\disp|trans_cnt[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[25]~84_combout\ = (\disp|trans_cnt\(25) & (!\disp|trans_cnt[24]~83\)) # (!\disp|trans_cnt\(25) & ((\disp|trans_cnt[24]~83\) # (GND)))
-- \disp|trans_cnt[25]~85\ = CARRY((!\disp|trans_cnt[24]~83\) # (!\disp|trans_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(25),
	datad => VCC,
	cin => \disp|trans_cnt[24]~83\,
	combout => \disp|trans_cnt[25]~84_combout\,
	cout => \disp|trans_cnt[25]~85\);

-- Location: FF_X16_Y17_N19
\disp|trans_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[25]~84_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(25));

-- Location: LCCOMB_X16_Y17_N20
\disp|trans_cnt[26]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[26]~86_combout\ = (\disp|trans_cnt\(26) & (\disp|trans_cnt[25]~85\ $ (GND))) # (!\disp|trans_cnt\(26) & (!\disp|trans_cnt[25]~85\ & VCC))
-- \disp|trans_cnt[26]~87\ = CARRY((\disp|trans_cnt\(26) & !\disp|trans_cnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(26),
	datad => VCC,
	cin => \disp|trans_cnt[25]~85\,
	combout => \disp|trans_cnt[26]~86_combout\,
	cout => \disp|trans_cnt[26]~87\);

-- Location: FF_X16_Y17_N21
\disp|trans_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[26]~86_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(26));

-- Location: LCCOMB_X16_Y17_N22
\disp|trans_cnt[27]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[27]~88_combout\ = (\disp|trans_cnt\(27) & (!\disp|trans_cnt[26]~87\)) # (!\disp|trans_cnt\(27) & ((\disp|trans_cnt[26]~87\) # (GND)))
-- \disp|trans_cnt[27]~89\ = CARRY((!\disp|trans_cnt[26]~87\) # (!\disp|trans_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(27),
	datad => VCC,
	cin => \disp|trans_cnt[26]~87\,
	combout => \disp|trans_cnt[27]~88_combout\,
	cout => \disp|trans_cnt[27]~89\);

-- Location: FF_X16_Y17_N23
\disp|trans_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[27]~88_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(27));

-- Location: LCCOMB_X16_Y17_N24
\disp|trans_cnt[28]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[28]~90_combout\ = (\disp|trans_cnt\(28) & (\disp|trans_cnt[27]~89\ $ (GND))) # (!\disp|trans_cnt\(28) & (!\disp|trans_cnt[27]~89\ & VCC))
-- \disp|trans_cnt[28]~91\ = CARRY((\disp|trans_cnt\(28) & !\disp|trans_cnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(28),
	datad => VCC,
	cin => \disp|trans_cnt[27]~89\,
	combout => \disp|trans_cnt[28]~90_combout\,
	cout => \disp|trans_cnt[28]~91\);

-- Location: FF_X16_Y17_N25
\disp|trans_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[28]~90_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(28));

-- Location: LCCOMB_X16_Y17_N26
\disp|trans_cnt[29]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[29]~92_combout\ = (\disp|trans_cnt\(29) & (!\disp|trans_cnt[28]~91\)) # (!\disp|trans_cnt\(29) & ((\disp|trans_cnt[28]~91\) # (GND)))
-- \disp|trans_cnt[29]~93\ = CARRY((!\disp|trans_cnt[28]~91\) # (!\disp|trans_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(29),
	datad => VCC,
	cin => \disp|trans_cnt[28]~91\,
	combout => \disp|trans_cnt[29]~92_combout\,
	cout => \disp|trans_cnt[29]~93\);

-- Location: FF_X16_Y17_N27
\disp|trans_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[29]~92_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(29));

-- Location: LCCOMB_X16_Y17_N28
\disp|trans_cnt[30]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[30]~94_combout\ = (\disp|trans_cnt\(30) & (\disp|trans_cnt[29]~93\ $ (GND))) # (!\disp|trans_cnt\(30) & (!\disp|trans_cnt[29]~93\ & VCC))
-- \disp|trans_cnt[30]~95\ = CARRY((\disp|trans_cnt\(30) & !\disp|trans_cnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|trans_cnt\(30),
	datad => VCC,
	cin => \disp|trans_cnt[29]~93\,
	combout => \disp|trans_cnt[30]~94_combout\,
	cout => \disp|trans_cnt[30]~95\);

-- Location: FF_X16_Y17_N29
\disp|trans_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[30]~94_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(30));

-- Location: LCCOMB_X16_Y17_N30
\disp|trans_cnt[31]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|trans_cnt[31]~96_combout\ = \disp|trans_cnt\(31) $ (\disp|trans_cnt[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(31),
	cin => \disp|trans_cnt[30]~95\,
	combout => \disp|trans_cnt[31]~96_combout\);

-- Location: FF_X16_Y17_N31
\disp|trans_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|trans_cnt[31]~96_combout\,
	sclr => \disp|trans_cnt[24]~38_combout\,
	ena => \disp|trans_cnt[24]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|trans_cnt\(31));

-- Location: LCCOMB_X17_Y17_N10
\disp|Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~8_combout\ = (!\disp|trans_cnt\(30) & (!\disp|trans_cnt\(31) & (!\disp|trans_cnt\(29) & !\disp|trans_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(30),
	datab => \disp|trans_cnt\(31),
	datac => \disp|trans_cnt\(29),
	datad => \disp|trans_cnt\(28),
	combout => \disp|Equal4~8_combout\);

-- Location: LCCOMB_X17_Y17_N4
\disp|Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~7_combout\ = (!\disp|trans_cnt\(24) & !\disp|trans_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|trans_cnt\(24),
	datad => \disp|trans_cnt\(25),
	combout => \disp|Equal4~7_combout\);

-- Location: LCCOMB_X17_Y17_N8
\disp|Equal4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~9_combout\ = (\disp|Equal4~8_combout\ & (!\disp|trans_cnt\(27) & (\disp|Equal4~7_combout\ & !\disp|trans_cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal4~8_combout\,
	datab => \disp|trans_cnt\(27),
	datac => \disp|Equal4~7_combout\,
	datad => \disp|trans_cnt\(26),
	combout => \disp|Equal4~9_combout\);

-- Location: LCCOMB_X17_Y18_N10
\disp|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~1_combout\ = (!\disp|trans_cnt\(6) & (!\disp|trans_cnt\(7) & (!\disp|trans_cnt\(4) & !\disp|trans_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(6),
	datab => \disp|trans_cnt\(7),
	datac => \disp|trans_cnt\(4),
	datad => \disp|trans_cnt\(5),
	combout => \disp|Equal4~1_combout\);

-- Location: LCCOMB_X17_Y18_N8
\disp|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~2_combout\ = (!\disp|trans_cnt\(9) & (!\disp|trans_cnt\(11) & (!\disp|trans_cnt\(8) & !\disp|trans_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(9),
	datab => \disp|trans_cnt\(11),
	datac => \disp|trans_cnt\(8),
	datad => \disp|trans_cnt\(10),
	combout => \disp|Equal4~2_combout\);

-- Location: LCCOMB_X17_Y18_N22
\disp|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~3_combout\ = (!\disp|trans_cnt\(12) & (!\disp|trans_cnt\(14) & (!\disp|trans_cnt\(13) & !\disp|trans_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(12),
	datab => \disp|trans_cnt\(14),
	datac => \disp|trans_cnt\(13),
	datad => \disp|trans_cnt\(15),
	combout => \disp|Equal4~3_combout\);

-- Location: LCCOMB_X17_Y18_N0
\disp|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~0_combout\ = (!\disp|trans_cnt\(0) & (!\disp|trans_cnt\(3) & (\disp|trans_cnt\(2) & !\disp|trans_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|trans_cnt\(0),
	datab => \disp|trans_cnt\(3),
	datac => \disp|trans_cnt\(2),
	datad => \disp|trans_cnt\(1),
	combout => \disp|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\disp|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~4_combout\ = (\disp|Equal4~1_combout\ & (\disp|Equal4~2_combout\ & (\disp|Equal4~3_combout\ & \disp|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal4~1_combout\,
	datab => \disp|Equal4~2_combout\,
	datac => \disp|Equal4~3_combout\,
	datad => \disp|Equal4~0_combout\,
	combout => \disp|Equal4~4_combout\);

-- Location: LCCOMB_X17_Y17_N26
\disp|Equal4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal4~10_combout\ = (\disp|Equal4~5_combout\ & (\disp|Equal4~6_combout\ & (\disp|Equal4~9_combout\ & \disp|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal4~5_combout\,
	datab => \disp|Equal4~6_combout\,
	datac => \disp|Equal4~9_combout\,
	datad => \disp|Equal4~4_combout\,
	combout => \disp|Equal4~10_combout\);

-- Location: LCCOMB_X26_Y21_N26
\disp|Selector14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector14~6_combout\ = (\disp|state.transmit~q\ & (\inst|w_busy~q\ & (!\disp|Equal4~10_combout\ & \disp|LessThan9~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \inst|w_busy~q\,
	datac => \disp|Equal4~10_combout\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|Selector14~6_combout\);

-- Location: LCCOMB_X21_Y23_N0
\disp|init_ptr[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[0]~32_combout\ = \disp|init_ptr\(0) $ (VCC)
-- \disp|init_ptr[0]~33\ = CARRY(\disp|init_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(0),
	datad => VCC,
	combout => \disp|init_ptr[0]~32_combout\,
	cout => \disp|init_ptr[0]~33\);

-- Location: LCCOMB_X21_Y23_N16
\disp|init_ptr[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[8]~48_combout\ = (\disp|init_ptr\(8) & (\disp|init_ptr[7]~47\ $ (GND))) # (!\disp|init_ptr\(8) & (!\disp|init_ptr[7]~47\ & VCC))
-- \disp|init_ptr[8]~49\ = CARRY((\disp|init_ptr\(8) & !\disp|init_ptr[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(8),
	datad => VCC,
	cin => \disp|init_ptr[7]~47\,
	combout => \disp|init_ptr[8]~48_combout\,
	cout => \disp|init_ptr[8]~49\);

-- Location: LCCOMB_X21_Y23_N18
\disp|init_ptr[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[9]~50_combout\ = (\disp|init_ptr\(9) & (!\disp|init_ptr[8]~49\)) # (!\disp|init_ptr\(9) & ((\disp|init_ptr[8]~49\) # (GND)))
-- \disp|init_ptr[9]~51\ = CARRY((!\disp|init_ptr[8]~49\) # (!\disp|init_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(9),
	datad => VCC,
	cin => \disp|init_ptr[8]~49\,
	combout => \disp|init_ptr[9]~50_combout\,
	cout => \disp|init_ptr[9]~51\);

-- Location: FF_X21_Y23_N19
\disp|init_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[9]~50_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(9));

-- Location: LCCOMB_X21_Y23_N20
\disp|init_ptr[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[10]~52_combout\ = (\disp|init_ptr\(10) & (\disp|init_ptr[9]~51\ $ (GND))) # (!\disp|init_ptr\(10) & (!\disp|init_ptr[9]~51\ & VCC))
-- \disp|init_ptr[10]~53\ = CARRY((\disp|init_ptr\(10) & !\disp|init_ptr[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(10),
	datad => VCC,
	cin => \disp|init_ptr[9]~51\,
	combout => \disp|init_ptr[10]~52_combout\,
	cout => \disp|init_ptr[10]~53\);

-- Location: FF_X21_Y23_N21
\disp|init_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[10]~52_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(10));

-- Location: LCCOMB_X21_Y23_N22
\disp|init_ptr[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[11]~54_combout\ = (\disp|init_ptr\(11) & (!\disp|init_ptr[10]~53\)) # (!\disp|init_ptr\(11) & ((\disp|init_ptr[10]~53\) # (GND)))
-- \disp|init_ptr[11]~55\ = CARRY((!\disp|init_ptr[10]~53\) # (!\disp|init_ptr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(11),
	datad => VCC,
	cin => \disp|init_ptr[10]~53\,
	combout => \disp|init_ptr[11]~54_combout\,
	cout => \disp|init_ptr[11]~55\);

-- Location: FF_X21_Y23_N23
\disp|init_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[11]~54_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(11));

-- Location: LCCOMB_X21_Y23_N24
\disp|init_ptr[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[12]~56_combout\ = (\disp|init_ptr\(12) & (\disp|init_ptr[11]~55\ $ (GND))) # (!\disp|init_ptr\(12) & (!\disp|init_ptr[11]~55\ & VCC))
-- \disp|init_ptr[12]~57\ = CARRY((\disp|init_ptr\(12) & !\disp|init_ptr[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(12),
	datad => VCC,
	cin => \disp|init_ptr[11]~55\,
	combout => \disp|init_ptr[12]~56_combout\,
	cout => \disp|init_ptr[12]~57\);

-- Location: FF_X21_Y23_N25
\disp|init_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[12]~56_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(12));

-- Location: LCCOMB_X21_Y23_N26
\disp|init_ptr[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[13]~58_combout\ = (\disp|init_ptr\(13) & (!\disp|init_ptr[12]~57\)) # (!\disp|init_ptr\(13) & ((\disp|init_ptr[12]~57\) # (GND)))
-- \disp|init_ptr[13]~59\ = CARRY((!\disp|init_ptr[12]~57\) # (!\disp|init_ptr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(13),
	datad => VCC,
	cin => \disp|init_ptr[12]~57\,
	combout => \disp|init_ptr[13]~58_combout\,
	cout => \disp|init_ptr[13]~59\);

-- Location: FF_X21_Y23_N27
\disp|init_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[13]~58_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(13));

-- Location: LCCOMB_X21_Y23_N28
\disp|init_ptr[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[14]~60_combout\ = (\disp|init_ptr\(14) & (\disp|init_ptr[13]~59\ $ (GND))) # (!\disp|init_ptr\(14) & (!\disp|init_ptr[13]~59\ & VCC))
-- \disp|init_ptr[14]~61\ = CARRY((\disp|init_ptr\(14) & !\disp|init_ptr[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(14),
	datad => VCC,
	cin => \disp|init_ptr[13]~59\,
	combout => \disp|init_ptr[14]~60_combout\,
	cout => \disp|init_ptr[14]~61\);

-- Location: FF_X21_Y23_N29
\disp|init_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[14]~60_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(14));

-- Location: LCCOMB_X21_Y23_N30
\disp|init_ptr[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[15]~62_combout\ = (\disp|init_ptr\(15) & (!\disp|init_ptr[14]~61\)) # (!\disp|init_ptr\(15) & ((\disp|init_ptr[14]~61\) # (GND)))
-- \disp|init_ptr[15]~63\ = CARRY((!\disp|init_ptr[14]~61\) # (!\disp|init_ptr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(15),
	datad => VCC,
	cin => \disp|init_ptr[14]~61\,
	combout => \disp|init_ptr[15]~62_combout\,
	cout => \disp|init_ptr[15]~63\);

-- Location: FF_X21_Y23_N31
\disp|init_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[15]~62_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(15));

-- Location: LCCOMB_X21_Y22_N0
\disp|init_ptr[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[16]~64_combout\ = (\disp|init_ptr\(16) & (\disp|init_ptr[15]~63\ $ (GND))) # (!\disp|init_ptr\(16) & (!\disp|init_ptr[15]~63\ & VCC))
-- \disp|init_ptr[16]~65\ = CARRY((\disp|init_ptr\(16) & !\disp|init_ptr[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(16),
	datad => VCC,
	cin => \disp|init_ptr[15]~63\,
	combout => \disp|init_ptr[16]~64_combout\,
	cout => \disp|init_ptr[16]~65\);

-- Location: FF_X21_Y22_N1
\disp|init_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[16]~64_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(16));

-- Location: LCCOMB_X21_Y22_N2
\disp|init_ptr[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[17]~66_combout\ = (\disp|init_ptr\(17) & (!\disp|init_ptr[16]~65\)) # (!\disp|init_ptr\(17) & ((\disp|init_ptr[16]~65\) # (GND)))
-- \disp|init_ptr[17]~67\ = CARRY((!\disp|init_ptr[16]~65\) # (!\disp|init_ptr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(17),
	datad => VCC,
	cin => \disp|init_ptr[16]~65\,
	combout => \disp|init_ptr[17]~66_combout\,
	cout => \disp|init_ptr[17]~67\);

-- Location: FF_X21_Y22_N3
\disp|init_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[17]~66_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(17));

-- Location: LCCOMB_X21_Y22_N4
\disp|init_ptr[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[18]~68_combout\ = (\disp|init_ptr\(18) & (\disp|init_ptr[17]~67\ $ (GND))) # (!\disp|init_ptr\(18) & (!\disp|init_ptr[17]~67\ & VCC))
-- \disp|init_ptr[18]~69\ = CARRY((\disp|init_ptr\(18) & !\disp|init_ptr[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(18),
	datad => VCC,
	cin => \disp|init_ptr[17]~67\,
	combout => \disp|init_ptr[18]~68_combout\,
	cout => \disp|init_ptr[18]~69\);

-- Location: FF_X21_Y22_N5
\disp|init_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[18]~68_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(18));

-- Location: LCCOMB_X21_Y22_N6
\disp|init_ptr[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[19]~70_combout\ = (\disp|init_ptr\(19) & (!\disp|init_ptr[18]~69\)) # (!\disp|init_ptr\(19) & ((\disp|init_ptr[18]~69\) # (GND)))
-- \disp|init_ptr[19]~71\ = CARRY((!\disp|init_ptr[18]~69\) # (!\disp|init_ptr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(19),
	datad => VCC,
	cin => \disp|init_ptr[18]~69\,
	combout => \disp|init_ptr[19]~70_combout\,
	cout => \disp|init_ptr[19]~71\);

-- Location: FF_X21_Y22_N7
\disp|init_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[19]~70_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(19));

-- Location: LCCOMB_X21_Y22_N8
\disp|init_ptr[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[20]~72_combout\ = (\disp|init_ptr\(20) & (\disp|init_ptr[19]~71\ $ (GND))) # (!\disp|init_ptr\(20) & (!\disp|init_ptr[19]~71\ & VCC))
-- \disp|init_ptr[20]~73\ = CARRY((\disp|init_ptr\(20) & !\disp|init_ptr[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(20),
	datad => VCC,
	cin => \disp|init_ptr[19]~71\,
	combout => \disp|init_ptr[20]~72_combout\,
	cout => \disp|init_ptr[20]~73\);

-- Location: FF_X21_Y22_N9
\disp|init_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[20]~72_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(20));

-- Location: LCCOMB_X21_Y22_N10
\disp|init_ptr[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[21]~74_combout\ = (\disp|init_ptr\(21) & (!\disp|init_ptr[20]~73\)) # (!\disp|init_ptr\(21) & ((\disp|init_ptr[20]~73\) # (GND)))
-- \disp|init_ptr[21]~75\ = CARRY((!\disp|init_ptr[20]~73\) # (!\disp|init_ptr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(21),
	datad => VCC,
	cin => \disp|init_ptr[20]~73\,
	combout => \disp|init_ptr[21]~74_combout\,
	cout => \disp|init_ptr[21]~75\);

-- Location: FF_X21_Y22_N11
\disp|init_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[21]~74_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(21));

-- Location: LCCOMB_X21_Y22_N12
\disp|init_ptr[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[22]~76_combout\ = (\disp|init_ptr\(22) & (\disp|init_ptr[21]~75\ $ (GND))) # (!\disp|init_ptr\(22) & (!\disp|init_ptr[21]~75\ & VCC))
-- \disp|init_ptr[22]~77\ = CARRY((\disp|init_ptr\(22) & !\disp|init_ptr[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(22),
	datad => VCC,
	cin => \disp|init_ptr[21]~75\,
	combout => \disp|init_ptr[22]~76_combout\,
	cout => \disp|init_ptr[22]~77\);

-- Location: FF_X21_Y22_N13
\disp|init_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[22]~76_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(22));

-- Location: LCCOMB_X21_Y22_N14
\disp|init_ptr[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[23]~78_combout\ = (\disp|init_ptr\(23) & (!\disp|init_ptr[22]~77\)) # (!\disp|init_ptr\(23) & ((\disp|init_ptr[22]~77\) # (GND)))
-- \disp|init_ptr[23]~79\ = CARRY((!\disp|init_ptr[22]~77\) # (!\disp|init_ptr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(23),
	datad => VCC,
	cin => \disp|init_ptr[22]~77\,
	combout => \disp|init_ptr[23]~78_combout\,
	cout => \disp|init_ptr[23]~79\);

-- Location: FF_X21_Y22_N15
\disp|init_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[23]~78_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(23));

-- Location: LCCOMB_X21_Y22_N16
\disp|init_ptr[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[24]~80_combout\ = (\disp|init_ptr\(24) & (\disp|init_ptr[23]~79\ $ (GND))) # (!\disp|init_ptr\(24) & (!\disp|init_ptr[23]~79\ & VCC))
-- \disp|init_ptr[24]~81\ = CARRY((\disp|init_ptr\(24) & !\disp|init_ptr[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(24),
	datad => VCC,
	cin => \disp|init_ptr[23]~79\,
	combout => \disp|init_ptr[24]~80_combout\,
	cout => \disp|init_ptr[24]~81\);

-- Location: FF_X21_Y22_N17
\disp|init_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[24]~80_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(24));

-- Location: LCCOMB_X21_Y22_N18
\disp|init_ptr[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[25]~82_combout\ = (\disp|init_ptr\(25) & (!\disp|init_ptr[24]~81\)) # (!\disp|init_ptr\(25) & ((\disp|init_ptr[24]~81\) # (GND)))
-- \disp|init_ptr[25]~83\ = CARRY((!\disp|init_ptr[24]~81\) # (!\disp|init_ptr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(25),
	datad => VCC,
	cin => \disp|init_ptr[24]~81\,
	combout => \disp|init_ptr[25]~82_combout\,
	cout => \disp|init_ptr[25]~83\);

-- Location: FF_X21_Y22_N19
\disp|init_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[25]~82_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(25));

-- Location: LCCOMB_X21_Y22_N20
\disp|init_ptr[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[26]~84_combout\ = (\disp|init_ptr\(26) & (\disp|init_ptr[25]~83\ $ (GND))) # (!\disp|init_ptr\(26) & (!\disp|init_ptr[25]~83\ & VCC))
-- \disp|init_ptr[26]~85\ = CARRY((\disp|init_ptr\(26) & !\disp|init_ptr[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(26),
	datad => VCC,
	cin => \disp|init_ptr[25]~83\,
	combout => \disp|init_ptr[26]~84_combout\,
	cout => \disp|init_ptr[26]~85\);

-- Location: FF_X21_Y22_N21
\disp|init_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[26]~84_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(26));

-- Location: LCCOMB_X21_Y22_N22
\disp|init_ptr[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[27]~86_combout\ = (\disp|init_ptr\(27) & (!\disp|init_ptr[26]~85\)) # (!\disp|init_ptr\(27) & ((\disp|init_ptr[26]~85\) # (GND)))
-- \disp|init_ptr[27]~87\ = CARRY((!\disp|init_ptr[26]~85\) # (!\disp|init_ptr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(27),
	datad => VCC,
	cin => \disp|init_ptr[26]~85\,
	combout => \disp|init_ptr[27]~86_combout\,
	cout => \disp|init_ptr[27]~87\);

-- Location: FF_X21_Y22_N23
\disp|init_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[27]~86_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(27));

-- Location: LCCOMB_X21_Y22_N24
\disp|init_ptr[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[28]~88_combout\ = (\disp|init_ptr\(28) & (\disp|init_ptr[27]~87\ $ (GND))) # (!\disp|init_ptr\(28) & (!\disp|init_ptr[27]~87\ & VCC))
-- \disp|init_ptr[28]~89\ = CARRY((\disp|init_ptr\(28) & !\disp|init_ptr[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(28),
	datad => VCC,
	cin => \disp|init_ptr[27]~87\,
	combout => \disp|init_ptr[28]~88_combout\,
	cout => \disp|init_ptr[28]~89\);

-- Location: FF_X21_Y22_N25
\disp|init_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[28]~88_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(28));

-- Location: LCCOMB_X21_Y22_N26
\disp|init_ptr[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[29]~90_combout\ = (\disp|init_ptr\(29) & (!\disp|init_ptr[28]~89\)) # (!\disp|init_ptr\(29) & ((\disp|init_ptr[28]~89\) # (GND)))
-- \disp|init_ptr[29]~91\ = CARRY((!\disp|init_ptr[28]~89\) # (!\disp|init_ptr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(29),
	datad => VCC,
	cin => \disp|init_ptr[28]~89\,
	combout => \disp|init_ptr[29]~90_combout\,
	cout => \disp|init_ptr[29]~91\);

-- Location: FF_X21_Y22_N27
\disp|init_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[29]~90_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(29));

-- Location: LCCOMB_X21_Y22_N28
\disp|init_ptr[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[30]~92_combout\ = (\disp|init_ptr\(30) & (\disp|init_ptr[29]~91\ $ (GND))) # (!\disp|init_ptr\(30) & (!\disp|init_ptr[29]~91\ & VCC))
-- \disp|init_ptr[30]~93\ = CARRY((\disp|init_ptr\(30) & !\disp|init_ptr[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(30),
	datad => VCC,
	cin => \disp|init_ptr[29]~91\,
	combout => \disp|init_ptr[30]~92_combout\,
	cout => \disp|init_ptr[30]~93\);

-- Location: FF_X21_Y22_N29
\disp|init_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[30]~92_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(30));

-- Location: LCCOMB_X21_Y22_N30
\disp|init_ptr[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[31]~94_combout\ = \disp|init_ptr\(31) $ (\disp|init_ptr[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(31),
	cin => \disp|init_ptr[30]~93\,
	combout => \disp|init_ptr[31]~94_combout\);

-- Location: FF_X21_Y22_N31
\disp|init_ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[31]~94_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(31));

-- Location: LCCOMB_X20_Y22_N22
\disp|LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~7_combout\ = (!\disp|init_ptr\(29) & (!\disp|init_ptr\(28) & (!\disp|init_ptr\(26) & !\disp|init_ptr\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(29),
	datab => \disp|init_ptr\(28),
	datac => \disp|init_ptr\(26),
	datad => \disp|init_ptr\(27),
	combout => \disp|LessThan8~7_combout\);

-- Location: LCCOMB_X20_Y22_N2
\disp|LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~5_combout\ = (!\disp|init_ptr\(19) & (!\disp|init_ptr\(21) & (!\disp|init_ptr\(20) & !\disp|init_ptr\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(19),
	datab => \disp|init_ptr\(21),
	datac => \disp|init_ptr\(20),
	datad => \disp|init_ptr\(18),
	combout => \disp|LessThan8~5_combout\);

-- Location: LCCOMB_X20_Y22_N4
\disp|LessThan8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~6_combout\ = (!\disp|init_ptr\(25) & (!\disp|init_ptr\(23) & (!\disp|init_ptr\(22) & !\disp|init_ptr\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(25),
	datab => \disp|init_ptr\(23),
	datac => \disp|init_ptr\(22),
	datad => \disp|init_ptr\(24),
	combout => \disp|LessThan8~6_combout\);

-- Location: LCCOMB_X20_Y22_N28
\disp|LessThan8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~8_combout\ = (\disp|LessThan8~7_combout\ & (\disp|LessThan8~5_combout\ & (\disp|LessThan8~6_combout\ & !\disp|init_ptr\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan8~7_combout\,
	datab => \disp|LessThan8~5_combout\,
	datac => \disp|LessThan8~6_combout\,
	datad => \disp|init_ptr\(30),
	combout => \disp|LessThan8~8_combout\);

-- Location: LCCOMB_X20_Y22_N12
\disp|LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~9_combout\ = (\disp|init_ptr\(31)) # ((\disp|LessThan8~4_combout\ & \disp|LessThan8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan8~4_combout\,
	datac => \disp|init_ptr\(31),
	datad => \disp|LessThan8~8_combout\,
	combout => \disp|LessThan8~9_combout\);

-- Location: LCCOMB_X23_Y21_N24
\disp|Selector343~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector343~0_combout\ = (\disp|state.init~q\) # ((!\disp|state.transmit~q\ & \disp|init_flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datac => \disp|init_flag~q\,
	datad => \disp|state.init~q\,
	combout => \disp|Selector343~0_combout\);

-- Location: FF_X23_Y21_N25
\disp|init_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector343~0_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_flag~q\);

-- Location: LCCOMB_X20_Y21_N20
\disp|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector11~1_combout\ = (\disp|state.receive~q\ & ((\disp|Selector11~0_combout\) # ((!\inst|w_busy~q\ & \disp|Selector14~3_combout\)))) # (!\disp|state.receive~q\ & (!\inst|w_busy~q\ & (\disp|Selector14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.receive~q\,
	datab => \inst|w_busy~q\,
	datac => \disp|Selector14~3_combout\,
	datad => \disp|Selector11~0_combout\,
	combout => \disp|Selector11~1_combout\);

-- Location: LCCOMB_X26_Y22_N30
\disp|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal0~0_combout\ = (\disp|delay_cnt\(5) & (\disp|delay_cnt\(6) & \disp|delay_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(5),
	datac => \disp|delay_cnt\(6),
	datad => \disp|delay_cnt\(4),
	combout => \disp|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y21_N10
\disp|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Equal0~1_combout\ = (\disp|delay_cnt\(7) & (\disp|Equal0~0_combout\ & \disp|delay_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(7),
	datac => \disp|Equal0~0_combout\,
	datad => \disp|delay_cnt\(8),
	combout => \disp|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y21_N14
\disp|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~3_combout\ = (!\disp|delay_cnt\(0) & (\disp|delay_cnt\(2) & (!\disp|delay_cnt\(1) & \inst|w_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(0),
	datab => \disp|delay_cnt\(2),
	datac => \disp|delay_cnt\(1),
	datad => \inst|w_busy~q\,
	combout => \disp|process_0~3_combout\);

-- Location: LCCOMB_X27_Y21_N2
\disp|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~4_combout\ = (!\disp|delay_cnt\(3) & (\disp|Equal0~1_combout\ & \disp|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|delay_cnt\(3),
	datac => \disp|Equal0~1_combout\,
	datad => \disp|process_0~3_combout\,
	combout => \disp|process_0~4_combout\);

-- Location: LCCOMB_X23_Y21_N0
\disp|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector11~2_combout\ = (\disp|Selector11~1_combout\) # ((\disp|state.reset~q\ & (\disp|init_flag~q\ & \disp|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.reset~q\,
	datab => \disp|init_flag~q\,
	datac => \disp|Selector11~1_combout\,
	datad => \disp|process_0~4_combout\,
	combout => \disp|Selector11~2_combout\);

-- Location: FF_X23_Y21_N1
\disp|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector11~2_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.init~q\);

-- Location: LCCOMB_X23_Y21_N16
\disp|init_ptr[10]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[10]~96_combout\ = (\i_I2C_reset~input_o\) # ((\disp|state.init~q\ & ((\inst|w_busy~q\) # (!\disp|LessThan8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan8~9_combout\,
	datab => \disp|state.init~q\,
	datac => \inst|w_busy~q\,
	datad => \i_I2C_reset~input_o\,
	combout => \disp|init_ptr[10]~96_combout\);

-- Location: FF_X21_Y23_N1
\disp|init_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[0]~32_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(0));

-- Location: LCCOMB_X21_Y23_N2
\disp|init_ptr[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[1]~34_combout\ = (\disp|init_ptr\(1) & (!\disp|init_ptr[0]~33\)) # (!\disp|init_ptr\(1) & ((\disp|init_ptr[0]~33\) # (GND)))
-- \disp|init_ptr[1]~35\ = CARRY((!\disp|init_ptr[0]~33\) # (!\disp|init_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(1),
	datad => VCC,
	cin => \disp|init_ptr[0]~33\,
	combout => \disp|init_ptr[1]~34_combout\,
	cout => \disp|init_ptr[1]~35\);

-- Location: FF_X21_Y23_N3
\disp|init_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[1]~34_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(1));

-- Location: LCCOMB_X21_Y23_N4
\disp|init_ptr[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[2]~36_combout\ = (\disp|init_ptr\(2) & (\disp|init_ptr[1]~35\ $ (GND))) # (!\disp|init_ptr\(2) & (!\disp|init_ptr[1]~35\ & VCC))
-- \disp|init_ptr[2]~37\ = CARRY((\disp|init_ptr\(2) & !\disp|init_ptr[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(2),
	datad => VCC,
	cin => \disp|init_ptr[1]~35\,
	combout => \disp|init_ptr[2]~36_combout\,
	cout => \disp|init_ptr[2]~37\);

-- Location: FF_X21_Y23_N5
\disp|init_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[2]~36_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(2));

-- Location: LCCOMB_X21_Y23_N6
\disp|init_ptr[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[3]~38_combout\ = (\disp|init_ptr\(3) & (!\disp|init_ptr[2]~37\)) # (!\disp|init_ptr\(3) & ((\disp|init_ptr[2]~37\) # (GND)))
-- \disp|init_ptr[3]~39\ = CARRY((!\disp|init_ptr[2]~37\) # (!\disp|init_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datad => VCC,
	cin => \disp|init_ptr[2]~37\,
	combout => \disp|init_ptr[3]~38_combout\,
	cout => \disp|init_ptr[3]~39\);

-- Location: FF_X21_Y23_N7
\disp|init_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[3]~38_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(3));

-- Location: LCCOMB_X21_Y23_N8
\disp|init_ptr[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[4]~40_combout\ = (\disp|init_ptr\(4) & (\disp|init_ptr[3]~39\ $ (GND))) # (!\disp|init_ptr\(4) & (!\disp|init_ptr[3]~39\ & VCC))
-- \disp|init_ptr[4]~41\ = CARRY((\disp|init_ptr\(4) & !\disp|init_ptr[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(4),
	datad => VCC,
	cin => \disp|init_ptr[3]~39\,
	combout => \disp|init_ptr[4]~40_combout\,
	cout => \disp|init_ptr[4]~41\);

-- Location: FF_X21_Y23_N9
\disp|init_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[4]~40_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(4));

-- Location: LCCOMB_X21_Y23_N10
\disp|init_ptr[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[5]~42_combout\ = (\disp|init_ptr\(5) & (!\disp|init_ptr[4]~41\)) # (!\disp|init_ptr\(5) & ((\disp|init_ptr[4]~41\) # (GND)))
-- \disp|init_ptr[5]~43\ = CARRY((!\disp|init_ptr[4]~41\) # (!\disp|init_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(5),
	datad => VCC,
	cin => \disp|init_ptr[4]~41\,
	combout => \disp|init_ptr[5]~42_combout\,
	cout => \disp|init_ptr[5]~43\);

-- Location: FF_X21_Y23_N11
\disp|init_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[5]~42_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(5));

-- Location: LCCOMB_X21_Y23_N12
\disp|init_ptr[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[6]~44_combout\ = (\disp|init_ptr\(6) & (\disp|init_ptr[5]~43\ $ (GND))) # (!\disp|init_ptr\(6) & (!\disp|init_ptr[5]~43\ & VCC))
-- \disp|init_ptr[6]~45\ = CARRY((\disp|init_ptr\(6) & !\disp|init_ptr[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(6),
	datad => VCC,
	cin => \disp|init_ptr[5]~43\,
	combout => \disp|init_ptr[6]~44_combout\,
	cout => \disp|init_ptr[6]~45\);

-- Location: FF_X21_Y23_N13
\disp|init_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[6]~44_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(6));

-- Location: LCCOMB_X21_Y23_N14
\disp|init_ptr[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|init_ptr[7]~46_combout\ = (\disp|init_ptr\(7) & (!\disp|init_ptr[6]~45\)) # (!\disp|init_ptr\(7) & ((\disp|init_ptr[6]~45\) # (GND)))
-- \disp|init_ptr[7]~47\ = CARRY((!\disp|init_ptr[6]~45\) # (!\disp|init_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|init_ptr\(7),
	datad => VCC,
	cin => \disp|init_ptr[6]~45\,
	combout => \disp|init_ptr[7]~46_combout\,
	cout => \disp|init_ptr[7]~47\);

-- Location: FF_X21_Y23_N15
\disp|init_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[7]~46_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(7));

-- Location: FF_X21_Y23_N17
\disp|init_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|init_ptr[8]~48_combout\,
	sclr => \i_I2C_reset~input_o\,
	ena => \disp|init_ptr[10]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|init_ptr\(8));

-- Location: LCCOMB_X20_Y23_N10
\disp|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~1_combout\ = (!\disp|init_ptr\(8) & (!\disp|init_ptr\(7) & (!\disp|init_ptr\(6) & !\disp|init_ptr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(8),
	datab => \disp|init_ptr\(7),
	datac => \disp|init_ptr\(6),
	datad => \disp|init_ptr\(9),
	combout => \disp|LessThan8~1_combout\);

-- Location: LCCOMB_X20_Y23_N28
\disp|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~2_combout\ = (!\disp|init_ptr\(13) & (!\disp|init_ptr\(12) & (!\disp|init_ptr\(10) & !\disp|init_ptr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(13),
	datab => \disp|init_ptr\(12),
	datac => \disp|init_ptr\(10),
	datad => \disp|init_ptr\(11),
	combout => \disp|LessThan8~2_combout\);

-- Location: LCCOMB_X20_Y23_N26
\disp|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~3_combout\ = (!\disp|init_ptr\(16) & (!\disp|init_ptr\(17) & (!\disp|init_ptr\(15) & !\disp|init_ptr\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(16),
	datab => \disp|init_ptr\(17),
	datac => \disp|init_ptr\(15),
	datad => \disp|init_ptr\(14),
	combout => \disp|LessThan8~3_combout\);

-- Location: LCCOMB_X20_Y23_N12
\disp|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~0_combout\ = (!\disp|init_ptr\(5) & (((!\disp|init_ptr\(2)) # (!\disp|init_ptr\(4))) # (!\disp|init_ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(5),
	datac => \disp|init_ptr\(4),
	datad => \disp|init_ptr\(2),
	combout => \disp|LessThan8~0_combout\);

-- Location: LCCOMB_X20_Y23_N20
\disp|LessThan8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan8~4_combout\ = (\disp|LessThan8~1_combout\ & (\disp|LessThan8~2_combout\ & (\disp|LessThan8~3_combout\ & \disp|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan8~1_combout\,
	datab => \disp|LessThan8~2_combout\,
	datac => \disp|LessThan8~3_combout\,
	datad => \disp|LessThan8~0_combout\,
	combout => \disp|LessThan8~4_combout\);

-- Location: LCCOMB_X20_Y22_N30
\disp|Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector14~3_combout\ = (\disp|state.init~q\ & ((\disp|init_ptr\(31)) # ((\disp|LessThan8~4_combout\ & \disp|LessThan8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan8~4_combout\,
	datab => \disp|LessThan8~8_combout\,
	datac => \disp|init_ptr\(31),
	datad => \disp|state.init~q\,
	combout => \disp|Selector14~3_combout\);

-- Location: LCCOMB_X26_Y21_N0
\disp|Selector14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector14~4_combout\ = (\disp|Selector14~3_combout\ & \inst|w_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Selector14~3_combout\,
	datad => \inst|w_busy~q\,
	combout => \disp|Selector14~4_combout\);

-- Location: LCCOMB_X26_Y21_N12
\disp|Selector14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector14~5_combout\ = (\disp|Selector14~6_combout\) # ((\disp|Selector14~4_combout\) # ((\disp|state~14_combout\ & \disp|state.reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Selector14~6_combout\,
	datab => \disp|state~14_combout\,
	datac => \disp|state.reset~q\,
	datad => \disp|Selector14~4_combout\,
	combout => \disp|Selector14~5_combout\);

-- Location: FF_X26_Y21_N13
\disp|state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector14~5_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.reset~q\);

-- Location: LCCOMB_X23_Y21_N30
\disp|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector12~1_combout\ = (\disp|Equal5~20_combout\ & (\disp|state.init~q\ & ((!\disp|LessThan8~9_combout\)))) # (!\disp|Equal5~20_combout\ & (((\disp|state.init~q\ & !\disp|LessThan8~9_combout\)) # (!\disp|print_ptr[14]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \disp|state.init~q\,
	datac => \disp|print_ptr[14]~32_combout\,
	datad => \disp|LessThan8~9_combout\,
	combout => \disp|Selector12~1_combout\);

-- Location: LCCOMB_X27_Y21_N22
\disp|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector12~0_combout\ = (\disp|process_0~2_combout\ & (!\disp|init_flag~q\ & (\disp|transmit_flag~q\ & \disp|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~2_combout\,
	datab => \disp|init_flag~q\,
	datac => \disp|transmit_flag~q\,
	datad => \disp|process_0~4_combout\,
	combout => \disp|Selector12~0_combout\);

-- Location: LCCOMB_X26_Y21_N16
\disp|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector12~2_combout\ = (\disp|Selector12~1_combout\) # ((\disp|state.reset~q\ & (!\disp|start~q\ & \disp|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.reset~q\,
	datab => \disp|start~q\,
	datac => \disp|Selector12~1_combout\,
	datad => \disp|Selector12~0_combout\,
	combout => \disp|Selector12~2_combout\);

-- Location: FF_X26_Y21_N17
\disp|state.CharSelect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector12~2_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.CharSelect~q\);

-- Location: LCCOMB_X26_Y21_N28
\disp|Selector358~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector358~0_combout\ = (\disp|state.transmit~q\ & (((\disp|start~q\ & \disp|print_ptr[14]~32_combout\)))) # (!\disp|state.transmit~q\ & ((\disp|state.CharSelect~q\) # ((\disp|start~q\ & \disp|print_ptr[14]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|state.CharSelect~q\,
	datac => \disp|start~q\,
	datad => \disp|print_ptr[14]~32_combout\,
	combout => \disp|Selector358~0_combout\);

-- Location: FF_X26_Y21_N29
\disp|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector358~0_combout\,
	ena => \ALT_INV_i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|start~q\);

-- Location: LCCOMB_X26_Y21_N22
\disp|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector13~2_combout\ = (\disp|state.CharSelect~q\) # ((\disp|state.transmit~q\ & ((!\disp|LessThan9~62_combout\) # (!\inst|w_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|state.CharSelect~q\,
	datac => \inst|w_busy~q\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|Selector13~2_combout\);

-- Location: LCCOMB_X26_Y21_N10
\disp|Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector13~3_combout\ = (\disp|Selector13~2_combout\) # ((\disp|state.reset~q\ & (\disp|start~q\ & \disp|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.reset~q\,
	datab => \disp|start~q\,
	datac => \disp|Selector13~2_combout\,
	datad => \disp|Selector12~0_combout\,
	combout => \disp|Selector13~3_combout\);

-- Location: FF_X26_Y21_N11
\disp|state.transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector13~3_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|state.transmit~q\);

-- Location: LCCOMB_X23_Y21_N20
\disp|Selector344~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector344~0_combout\ = (((!\disp|LessThan9~62_combout\) # (!\disp|Equal5~20_combout\)) # (!\inst|w_busy~q\)) # (!\disp|Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal4~10_combout\,
	datab => \inst|w_busy~q\,
	datac => \disp|Equal5~20_combout\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|Selector344~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\disp|Selector344~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector344~1_combout\ = (\disp|state.transmit~q\ & (((\disp|Selector344~0_combout\)))) # (!\disp|state.transmit~q\ & (!\disp|state.init~q\ & (\disp|transmit_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|state.init~q\,
	datac => \disp|transmit_flag~q\,
	datad => \disp|Selector344~0_combout\,
	combout => \disp|Selector344~1_combout\);

-- Location: FF_X23_Y21_N7
\disp|transmit_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector344~1_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|transmit_flag~q\);

-- Location: LCCOMB_X23_Y21_N12
\disp|delay_cnt[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|delay_cnt[7]~1_combout\ = (\disp|process_0~2_combout\ & (((!\disp|transmit_flag~q\ & !\disp|init_flag~q\)) # (!\disp|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|transmit_flag~q\,
	datab => \disp|init_flag~q\,
	datac => \disp|process_0~2_combout\,
	datad => \disp|process_0~4_combout\,
	combout => \disp|delay_cnt[7]~1_combout\);

-- Location: LCCOMB_X26_Y20_N24
\disp|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan0~0_combout\ = (\disp|delay_cnt\(2)) # (\disp|delay_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|delay_cnt\(2),
	datad => \disp|delay_cnt\(3),
	combout => \disp|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\disp|delay_cnt[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|delay_cnt[0]~2_combout\ = (\disp|delay_cnt[0]~0_combout\ & (((!\disp|Equal0~1_combout\) # (!\disp|LessThan0~0_combout\)) # (!\disp|delay_cnt[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt[7]~1_combout\,
	datab => \disp|delay_cnt[0]~0_combout\,
	datac => \disp|LessThan0~0_combout\,
	datad => \disp|Equal0~1_combout\,
	combout => \disp|delay_cnt[0]~2_combout\);

-- Location: FF_X26_Y20_N27
\disp|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~22_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(2));

-- Location: LCCOMB_X26_Y22_N6
\disp|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~18_combout\ = (\disp|state~14_combout\ & \disp|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state~14_combout\,
	datad => \disp|Add0~6_combout\,
	combout => \disp|Add0~18_combout\);

-- Location: FF_X26_Y22_N7
\disp|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~18_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(3));

-- Location: LCCOMB_X26_Y20_N10
\disp|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan6~0_combout\ = (\disp|delay_cnt\(3)) # ((\disp|delay_cnt\(1) & (\disp|delay_cnt\(2) & \disp|delay_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(1),
	datab => \disp|delay_cnt\(3),
	datac => \disp|delay_cnt\(2),
	datad => \disp|delay_cnt\(0),
	combout => \disp|LessThan6~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\disp|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|process_0~2_combout\ = (\disp|delay_cnt\(8) & ((\disp|delay_cnt\(7)) # ((\disp|LessThan6~0_combout\ & \disp|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan6~0_combout\,
	datab => \disp|delay_cnt\(7),
	datac => \disp|Equal0~0_combout\,
	datad => \disp|delay_cnt\(8),
	combout => \disp|process_0~2_combout\);

-- Location: LCCOMB_X27_Y21_N0
\disp|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|state~14_combout\ = (((!\disp|init_flag~q\ & !\disp|transmit_flag~q\)) # (!\disp|process_0~4_combout\)) # (!\disp|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|process_0~2_combout\,
	datab => \disp|init_flag~q\,
	datac => \disp|transmit_flag~q\,
	datad => \disp|process_0~4_combout\,
	combout => \disp|state~14_combout\);

-- Location: LCCOMB_X26_Y20_N12
\disp|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~23_combout\ = (\disp|Add0~0_combout\ & \disp|state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|Add0~0_combout\,
	datad => \disp|state~14_combout\,
	combout => \disp|Add0~23_combout\);

-- Location: FF_X26_Y20_N13
\disp|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~23_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(0));

-- Location: LCCOMB_X26_Y20_N22
\disp|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add0~24_combout\ = (\disp|Add0~2_combout\ & \disp|state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Add0~2_combout\,
	datad => \disp|state~14_combout\,
	combout => \disp|Add0~24_combout\);

-- Location: FF_X26_Y20_N23
\disp|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Add0~24_combout\,
	ena => \disp|delay_cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|delay_cnt\(1));

-- Location: LCCOMB_X26_Y20_N16
\disp|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan2~1_combout\ = (\disp|delay_cnt\(2) & ((\disp|delay_cnt\(1)) # (\disp|delay_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|delay_cnt\(1),
	datac => \disp|delay_cnt\(2),
	datad => \disp|delay_cnt\(0),
	combout => \disp|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y21_N26
\disp|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|LessThan2~2_combout\ = (!\disp|delay_cnt\(7) & (!\disp|delay_cnt\(8) & ((!\disp|LessThan2~0_combout\) # (!\disp|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|LessThan2~1_combout\,
	datab => \disp|delay_cnt\(7),
	datac => \disp|LessThan2~0_combout\,
	datad => \disp|delay_cnt\(8),
	combout => \disp|LessThan2~2_combout\);

-- Location: FF_X23_Y21_N27
\disp|o_display_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|LessThan2~2_combout\,
	ena => \disp|delay_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_reset~q\);

-- Location: FF_X24_Y21_N1
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~6_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X27_Y21_N12
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X27_Y21_N14
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count\(5) & (!\inst|Add0~9\)) # (!\inst|count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X27_Y21_N16
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X27_Y21_N4
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|count\(0) & (\inst|w_clock_stretch~q\ $ (GND))) # (!\inst|count\(0) & (!\inst|w_clock_stretch~q\ & VCC))
-- \inst|Add0~1\ = CARRY((\inst|count\(0) & !\inst|w_clock_stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|w_clock_stretch~q\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X24_Y21_N28
\inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|count~2_combout\) # ((\inst|Add0~0_combout\ & (\inst|count~4_combout\ & \inst|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|count~4_combout\,
	datac => \inst|count~3_combout\,
	datad => \inst|count~2_combout\,
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X27_Y21_N26
\inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|Add0~8_combout\ & (\inst|Add0~12_combout\ & (\inst|Add0~10_combout\ & \inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: FF_X24_Y21_N21
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~1_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X27_Y21_N18
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|count\(7) & (!\inst|Add0~13\)) # (!\inst|count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X24_Y21_N16
\inst|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|Add0~14_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|count~0_combout\);

-- Location: FF_X24_Y21_N27
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \inst|count~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X27_Y21_N20
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = \inst|Add0~15\ $ (!\inst|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(8),
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X24_Y21_N20
\inst|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|Add0~16_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|count~1_combout\);

-- Location: LCCOMB_X27_Y21_N28
\inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|Add0~8_combout\ & (\inst|Add0~12_combout\ & (\inst|Add0~10_combout\ & \inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
\inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (((!\inst|Add0~2_combout\ & !\inst|Add0~4_combout\)) # (!\inst|count~0_combout\)) # (!\inst|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|count~0_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X27_Y21_N24
\inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|count~1_combout\ & ((\inst|process_0~3_combout\) # ((\inst|Add0~14_combout\)))) # (!\inst|count~1_combout\ & (((\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~3_combout\,
	datab => \inst|count~1_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst|w_clock_stretch~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_clock_stretch~0_combout\ = (\inst|process_0~4_combout\ & ((\inst|w_clock_stretch~q\))) # (!\inst|process_0~4_combout\ & (!\io_I2C_scl~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_I2C_scl~input_o\,
	datac => \inst|w_clock_stretch~q\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|w_clock_stretch~0_combout\);

-- Location: FF_X22_Y21_N1
\inst|w_clock_stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_clock_stretch~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_clock_stretch~q\);

-- Location: LCCOMB_X27_Y21_N6
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count\(1) & (!\inst|Add0~1\)) # (!\inst|count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X24_Y21_N4
\inst|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~4_combout\ = (\inst|Add0~2_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|count~4_combout\);

-- Location: FF_X24_Y21_N5
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~4_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X27_Y21_N8
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X24_Y21_N30
\inst|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = (\inst|Add0~4_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|count~3_combout\);

-- Location: FF_X24_Y21_N29
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	asdata => \inst|count~3_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X27_Y21_N10
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count\(3) & (!\inst|Add0~5\)) # (!\inst|count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X23_Y21_N14
\inst|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|Add0~6_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\)) # (!\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|count~2_combout\);

-- Location: FF_X23_Y21_N15
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~2_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X23_Y21_N8
\inst|count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~8_combout\ = (\inst|Add0~8_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\)) # (!\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|count~8_combout\);

-- Location: FF_X23_Y21_N9
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~8_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X24_Y21_N14
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|count\(4) & (\inst|count\(1) & (!\inst|count\(3) & !\inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|count\(1),
	datac => \inst|count\(3),
	datad => \inst|count\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~5_combout\ = (\inst|Add0~0_combout\ & (((!\inst|count\(0)) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|count\(0),
	datad => \inst|Add0~0_combout\,
	combout => \inst|count~5_combout\);

-- Location: FF_X24_Y21_N3
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~5_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X24_Y21_N10
\inst|count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count~7_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(0))) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|count~7_combout\);

-- Location: FF_X24_Y21_N11
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|count~7_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X24_Y21_N26
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|count\(5) & (\inst|count\(6) & (\inst|count\(7) & \inst|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \inst|count\(6),
	datac => \inst|count\(7),
	datad => \inst|count\(8),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|Add0~16_combout\) # ((\inst|Equal0~0_combout\ & (\inst|count\(0) & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(0),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (((!\inst|Add0~2_combout\ & !\inst|Add0~0_combout\)) # (!\inst|process_0~0_combout\)) # (!\inst|count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count~3_combout\,
	datab => \inst|Add0~2_combout\,
	datac => \inst|process_0~0_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (\inst|process_0~0_combout\ & ((\inst|Add0~4_combout\ & ((\inst|Add0~14_combout\))) # (!\inst|Add0~4_combout\ & (\inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add0~14_combout\,
	datac => \inst|process_0~0_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X24_Y21_N22
\inst|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\inst|process_0~6_combout\) # ((\inst|process_0~5_combout\) # ((!\inst|Add0~14_combout\ & \inst|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~6_combout\,
	datab => \inst|Add0~14_combout\,
	datac => \inst|process_0~7_combout\,
	datad => \inst|process_0~5_combout\,
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datad => \inst|count\(0),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y21_N18
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|Equal0~2_combout\ & ((\inst|Add0~14_combout\) # ((\inst|Add0~16_combout\) # (!\inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Add0~14_combout\,
	datac => \inst|process_0~7_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y21_N12
\inst|w_data_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_clk~0_combout\ = (\inst|LessThan1~0_combout\ & ((!\inst|process_0~4_combout\) # (!\inst|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~8_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|w_data_clk~0_combout\);

-- Location: FF_X20_Y21_N13
\inst|w_data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_data_clk~0_combout\,
	ena => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_clk~q\);

-- Location: LCCOMB_X20_Y21_N2
\inst|w_data_clk_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_clk_prev~feeder_combout\ = \inst|w_data_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|w_data_clk~q\,
	combout => \inst|w_data_clk_prev~feeder_combout\);

-- Location: FF_X20_Y21_N3
\inst|w_data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_data_clk_prev~feeder_combout\,
	ena => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_clk_prev~q\);

-- Location: LCCOMB_X21_Y21_N12
\inst|w_scl_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_enable~0_combout\ = (!\inst|w_data_clk_prev~q\ & (!\inst|state.error~q\ & \inst|w_data_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_clk_prev~q\,
	datac => \inst|state.error~q\,
	datad => \inst|w_data_clk~q\,
	combout => \inst|w_scl_enable~0_combout\);

-- Location: LCCOMB_X22_Y23_N10
\disp|char_ptr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~11_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|Equal4~10_combout\ & \disp|state.transmit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal4~10_combout\,
	datad => \disp|state.transmit~q\,
	combout => \disp|char_ptr~11_combout\);

-- Location: LCCOMB_X24_Y20_N10
\disp|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~7_combout\ = (\disp|print_ptr\(2) & (((\disp|r_buffer[23][3]~q\) # (\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[19][3]~q\ & ((!\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[19][3]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[23][3]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux4~7_combout\);

-- Location: LCCOMB_X24_Y20_N24
\disp|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~8_combout\ = (\disp|Mux4~7_combout\ & (((\disp|r_buffer[31][3]~q\) # (!\disp|print_ptr\(3))))) # (!\disp|Mux4~7_combout\ & (\disp|r_buffer[27][3]~q\ & ((\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~7_combout\,
	datab => \disp|r_buffer[27][3]~q\,
	datac => \disp|r_buffer[31][3]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux4~8_combout\);

-- Location: LCCOMB_X24_Y16_N12
\disp|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[21][3]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[17][3]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[21][3]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y16_N30
\disp|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~3_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux4~2_combout\ & (\disp|r_buffer[29][3]~q\)) # (!\disp|Mux4~2_combout\ & ((\disp|r_buffer[25][3]~q\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[29][3]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[25][3]~q\,
	datad => \disp|Mux4~2_combout\,
	combout => \disp|Mux4~3_combout\);

-- Location: LCCOMB_X24_Y15_N16
\disp|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~4_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & ((\disp|r_buffer[24][3]~q\))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[16][3]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[24][3]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\disp|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~5_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux4~4_combout\ & (\disp|r_buffer[28][3]~q\)) # (!\disp|Mux4~4_combout\ & ((\disp|r_buffer[20][3]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|r_buffer[28][3]~q\,
	datac => \disp|r_buffer[20][3]~q\,
	datad => \disp|Mux4~4_combout\,
	combout => \disp|Mux4~5_combout\);

-- Location: LCCOMB_X21_Y15_N30
\disp|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~6_combout\ = (\disp|print_ptr\(1) & (\disp|print_ptr\(0))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & (\disp|Mux4~3_combout\)) # (!\disp|print_ptr\(0) & ((\disp|Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|print_ptr\(0),
	datac => \disp|Mux4~3_combout\,
	datad => \disp|Mux4~5_combout\,
	combout => \disp|Mux4~6_combout\);

-- Location: LCCOMB_X22_Y18_N18
\disp|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[26][3]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[18][3]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][3]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[26][3]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\disp|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~1_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux4~0_combout\ & (\disp|r_buffer[30][3]~q\)) # (!\disp|Mux4~0_combout\ & ((\disp|r_buffer[22][3]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[30][3]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[22][3]~q\,
	datad => \disp|Mux4~0_combout\,
	combout => \disp|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y16_N14
\disp|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~9_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux4~6_combout\ & (\disp|Mux4~8_combout\)) # (!\disp|Mux4~6_combout\ & ((\disp|Mux4~1_combout\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|Mux4~8_combout\,
	datac => \disp|Mux4~6_combout\,
	datad => \disp|Mux4~1_combout\,
	combout => \disp|Mux4~9_combout\);

-- Location: LCCOMB_X17_Y16_N4
\disp|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~17_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[14][3]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[12][3]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[12][3]~q\,
	datac => \disp|r_buffer[14][3]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux4~17_combout\);

-- Location: LCCOMB_X17_Y16_N30
\disp|Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~18_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux4~17_combout\ & ((\disp|r_buffer[15][3]~q\))) # (!\disp|Mux4~17_combout\ & (\disp|r_buffer[13][3]~q\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|r_buffer[13][3]~q\,
	datac => \disp|Mux4~17_combout\,
	datad => \disp|r_buffer[15][3]~q\,
	combout => \disp|Mux4~18_combout\);

-- Location: LCCOMB_X22_Y20_N10
\disp|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[9][3]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[8][3]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[9][3]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux4~10_combout\);

-- Location: LCCOMB_X22_Y20_N24
\disp|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux4~10_combout\ & (\disp|r_buffer[11][3]~q\)) # (!\disp|Mux4~10_combout\ & ((\disp|r_buffer[10][3]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[11][3]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][3]~q\,
	datad => \disp|Mux4~10_combout\,
	combout => \disp|Mux4~11_combout\);

-- Location: LCCOMB_X19_Y16_N12
\disp|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~14_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[1][3]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[0][3]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][3]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[1][3]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux4~14_combout\);

-- Location: LCCOMB_X19_Y16_N10
\disp|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~15_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux4~14_combout\ & ((\disp|r_buffer[3][3]~q\))) # (!\disp|Mux4~14_combout\ & (\disp|r_buffer[2][3]~q\)))) # (!\disp|print_ptr\(1) & (((\disp|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[2][3]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[3][3]~q\,
	datad => \disp|Mux4~14_combout\,
	combout => \disp|Mux4~15_combout\);

-- Location: LCCOMB_X22_Y16_N28
\disp|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~12_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & ((\disp|r_buffer[6][3]~q\))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[4][3]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[6][3]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux4~12_combout\);

-- Location: LCCOMB_X23_Y18_N18
\disp|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~13_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux4~12_combout\ & ((\disp|r_buffer[7][3]~q\))) # (!\disp|Mux4~12_combout\ & (\disp|r_buffer[5][3]~q\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][3]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[7][3]~q\,
	datad => \disp|Mux4~12_combout\,
	combout => \disp|Mux4~13_combout\);

-- Location: LCCOMB_X22_Y16_N20
\disp|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~16_combout\ = (\disp|print_ptr\(3) & (\disp|print_ptr\(2))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|Mux4~13_combout\))) # (!\disp|print_ptr\(2) & (\disp|Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|print_ptr\(2),
	datac => \disp|Mux4~15_combout\,
	datad => \disp|Mux4~13_combout\,
	combout => \disp|Mux4~16_combout\);

-- Location: LCCOMB_X17_Y16_N12
\disp|Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~19_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux4~16_combout\ & (\disp|Mux4~18_combout\)) # (!\disp|Mux4~16_combout\ & ((\disp|Mux4~11_combout\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~18_combout\,
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux4~11_combout\,
	datad => \disp|Mux4~16_combout\,
	combout => \disp|Mux4~19_combout\);

-- Location: LCCOMB_X17_Y16_N22
\disp|Mux4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux4~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux4~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(4),
	datab => \disp|print_ptr\(5),
	datac => \disp|Mux4~9_combout\,
	datad => \disp|Mux4~19_combout\,
	combout => \disp|Mux4~20_combout\);

-- Location: LCCOMB_X23_Y24_N12
\disp|char_ptr~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~25_combout\ = (!\disp|state.transmit~q\ & ((\disp|Mux4~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|print_ptr\(5),
	datac => \disp|Mux4~20_combout\,
	datad => \disp|r_buffer[32][3]~q\,
	combout => \disp|char_ptr~25_combout\);

-- Location: LCCOMB_X24_Y20_N18
\disp|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~7_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & ((\disp|r_buffer[27][0]~q\))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[19][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[19][0]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[27][0]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux7~7_combout\);

-- Location: LCCOMB_X23_Y20_N30
\disp|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~8_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux7~7_combout\ & ((\disp|r_buffer[31][0]~q\))) # (!\disp|Mux7~7_combout\ & (\disp|r_buffer[23][0]~q\)))) # (!\disp|print_ptr\(2) & (((\disp|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[23][0]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[31][0]~q\,
	datad => \disp|Mux7~7_combout\,
	combout => \disp|Mux7~8_combout\);

-- Location: LCCOMB_X21_Y18_N8
\disp|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & (\disp|r_buffer[22][0]~q\)) # (!\disp|print_ptr\(2) & ((\disp|r_buffer[18][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[22][0]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[18][0]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux7~2_combout\);

-- Location: LCCOMB_X21_Y18_N28
\disp|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~3_combout\ = (\disp|Mux7~2_combout\ & (((\disp|r_buffer[30][0]~q\) # (!\disp|print_ptr\(3))))) # (!\disp|Mux7~2_combout\ & (\disp|r_buffer[26][0]~q\ & (\disp|print_ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][0]~q\,
	datab => \disp|Mux7~2_combout\,
	datac => \disp|print_ptr\(3),
	datad => \disp|r_buffer[30][0]~q\,
	combout => \disp|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y15_N16
\disp|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~4_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & (\disp|r_buffer[20][0]~q\)) # (!\disp|print_ptr\(2) & ((\disp|r_buffer[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][0]~q\,
	datab => \disp|r_buffer[16][0]~q\,
	datac => \disp|print_ptr\(3),
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y15_N6
\disp|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~5_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux7~4_combout\ & (\disp|r_buffer[28][0]~q\)) # (!\disp|Mux7~4_combout\ & ((\disp|r_buffer[24][0]~q\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[28][0]~q\,
	datac => \disp|Mux7~4_combout\,
	datad => \disp|r_buffer[24][0]~q\,
	combout => \disp|Mux7~5_combout\);

-- Location: LCCOMB_X21_Y18_N22
\disp|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~6_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & (\disp|Mux7~3_combout\)) # (!\disp|print_ptr\(1) & ((\disp|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|Mux7~3_combout\,
	datac => \disp|print_ptr\(1),
	datad => \disp|Mux7~5_combout\,
	combout => \disp|Mux7~6_combout\);

-- Location: LCCOMB_X22_Y16_N0
\disp|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[25][0]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[17][0]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[17][0]~q\,
	datac => \disp|r_buffer[25][0]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\disp|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~1_combout\ = (\disp|Mux7~0_combout\ & (((\disp|r_buffer[29][0]~q\) # (!\disp|print_ptr\(2))))) # (!\disp|Mux7~0_combout\ & (\disp|r_buffer[21][0]~q\ & (\disp|print_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[21][0]~q\,
	datab => \disp|Mux7~0_combout\,
	datac => \disp|print_ptr\(2),
	datad => \disp|r_buffer[29][0]~q\,
	combout => \disp|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y18_N4
\disp|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~9_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux7~6_combout\ & (\disp|Mux7~8_combout\)) # (!\disp|Mux7~6_combout\ & ((\disp|Mux7~1_combout\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|Mux7~8_combout\,
	datac => \disp|Mux7~6_combout\,
	datad => \disp|Mux7~1_combout\,
	combout => \disp|Mux7~9_combout\);

-- Location: LCCOMB_X19_Y16_N6
\disp|Mux7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~17_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[13][0]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[12][0]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[12][0]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[13][0]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux7~17_combout\);

-- Location: LCCOMB_X22_Y16_N30
\disp|Mux7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~18_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux7~17_combout\ & (\disp|r_buffer[15][0]~q\)) # (!\disp|Mux7~17_combout\ & ((\disp|r_buffer[14][0]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[15][0]~q\,
	datac => \disp|r_buffer[14][0]~q\,
	datad => \disp|Mux7~17_combout\,
	combout => \disp|Mux7~18_combout\);

-- Location: LCCOMB_X23_Y18_N4
\disp|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~10_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[5][0]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[4][0]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[4][0]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[5][0]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux7~10_combout\);

-- Location: LCCOMB_X22_Y16_N12
\disp|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux7~10_combout\ & (\disp|r_buffer[7][0]~q\)) # (!\disp|Mux7~10_combout\ & ((\disp|r_buffer[6][0]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[7][0]~q\,
	datac => \disp|r_buffer[6][0]~q\,
	datad => \disp|Mux7~10_combout\,
	combout => \disp|Mux7~11_combout\);

-- Location: LCCOMB_X21_Y18_N10
\disp|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~12_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & ((\disp|r_buffer[10][0]~q\))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|r_buffer[8][0]~q\,
	datac => \disp|print_ptr\(1),
	datad => \disp|r_buffer[10][0]~q\,
	combout => \disp|Mux7~12_combout\);

-- Location: LCCOMB_X21_Y20_N22
\disp|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~13_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux7~12_combout\ & ((\disp|r_buffer[11][0]~q\))) # (!\disp|Mux7~12_combout\ & (\disp|r_buffer[9][0]~q\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|r_buffer[9][0]~q\,
	datac => \disp|r_buffer[11][0]~q\,
	datad => \disp|Mux7~12_combout\,
	combout => \disp|Mux7~13_combout\);

-- Location: LCCOMB_X19_Y15_N2
\disp|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~14_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[2][0]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[0][0]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][0]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[2][0]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux7~14_combout\);

-- Location: LCCOMB_X19_Y16_N4
\disp|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~15_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux7~14_combout\ & (\disp|r_buffer[3][0]~q\)) # (!\disp|Mux7~14_combout\ & ((\disp|r_buffer[1][0]~q\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][0]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[1][0]~q\,
	datad => \disp|Mux7~14_combout\,
	combout => \disp|Mux7~15_combout\);

-- Location: LCCOMB_X21_Y20_N14
\disp|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~16_combout\ = (\disp|print_ptr\(3) & ((\disp|print_ptr\(2)) # ((\disp|Mux7~13_combout\)))) # (!\disp|print_ptr\(3) & (!\disp|print_ptr\(2) & ((\disp|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|print_ptr\(2),
	datac => \disp|Mux7~13_combout\,
	datad => \disp|Mux7~15_combout\,
	combout => \disp|Mux7~16_combout\);

-- Location: LCCOMB_X21_Y18_N12
\disp|Mux7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~19_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux7~16_combout\ & (\disp|Mux7~18_combout\)) # (!\disp|Mux7~16_combout\ & ((\disp|Mux7~11_combout\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux7~18_combout\,
	datab => \disp|print_ptr\(2),
	datac => \disp|Mux7~11_combout\,
	datad => \disp|Mux7~16_combout\,
	combout => \disp|Mux7~19_combout\);

-- Location: LCCOMB_X21_Y18_N26
\disp|Mux7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux7~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux7~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(4),
	datab => \disp|Mux7~9_combout\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux7~19_combout\,
	combout => \disp|Mux7~20_combout\);

-- Location: LCCOMB_X23_Y22_N2
\disp|Mux7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux7~21_combout\ = (\disp|Mux7~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(5),
	datac => \disp|r_buffer[32][0]~q\,
	datad => \disp|Mux7~20_combout\,
	combout => \disp|Mux7~21_combout\);

-- Location: LCCOMB_X22_Y18_N10
\disp|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[26][5]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[18][5]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][5]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[26][5]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\disp|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~1_combout\ = (\disp|Mux2~0_combout\ & ((\disp|r_buffer[30][5]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux2~0_combout\ & (((\disp|r_buffer[22][5]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~0_combout\,
	datab => \disp|r_buffer[30][5]~q\,
	datac => \disp|r_buffer[22][5]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\disp|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~4_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[24][5]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[16][5]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[16][5]~q\,
	datac => \disp|r_buffer[24][5]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux2~4_combout\);

-- Location: LCCOMB_X23_Y15_N26
\disp|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~5_combout\ = (\disp|Mux2~4_combout\ & (((\disp|r_buffer[28][5]~q\) # (!\disp|print_ptr\(2))))) # (!\disp|Mux2~4_combout\ & (\disp|r_buffer[20][5]~q\ & ((\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[20][5]~q\,
	datab => \disp|r_buffer[28][5]~q\,
	datac => \disp|Mux2~4_combout\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux2~5_combout\);

-- Location: LCCOMB_X24_Y16_N8
\disp|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[21][5]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[17][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[17][5]~q\,
	datac => \disp|r_buffer[21][5]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y16_N2
\disp|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~3_combout\ = (\disp|Mux2~2_combout\ & ((\disp|r_buffer[29][5]~q\) # ((!\disp|print_ptr\(3))))) # (!\disp|Mux2~2_combout\ & (((\disp|r_buffer[25][5]~q\ & \disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~2_combout\,
	datab => \disp|r_buffer[29][5]~q\,
	datac => \disp|r_buffer[25][5]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux2~3_combout\);

-- Location: LCCOMB_X23_Y19_N4
\disp|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~6_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|Mux2~3_combout\))) # (!\disp|print_ptr\(0) & (\disp|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~5_combout\,
	datab => \disp|print_ptr\(1),
	datac => \disp|print_ptr\(0),
	datad => \disp|Mux2~3_combout\,
	combout => \disp|Mux2~6_combout\);

-- Location: LCCOMB_X24_Y18_N26
\disp|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~7_combout\ = (\disp|print_ptr\(3) & (\disp|print_ptr\(2))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[23][5]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[19][5]~q\,
	datad => \disp|r_buffer[23][5]~q\,
	combout => \disp|Mux2~7_combout\);

-- Location: LCCOMB_X24_Y18_N20
\disp|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~8_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux2~7_combout\ & ((\disp|r_buffer[31][5]~q\))) # (!\disp|Mux2~7_combout\ & (\disp|r_buffer[27][5]~q\)))) # (!\disp|print_ptr\(3) & (\disp|Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|Mux2~7_combout\,
	datac => \disp|r_buffer[27][5]~q\,
	datad => \disp|r_buffer[31][5]~q\,
	combout => \disp|Mux2~8_combout\);

-- Location: LCCOMB_X23_Y19_N14
\disp|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~9_combout\ = (\disp|Mux2~6_combout\ & (((\disp|Mux2~8_combout\) # (!\disp|print_ptr\(1))))) # (!\disp|Mux2~6_combout\ & (\disp|Mux2~1_combout\ & (\disp|print_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~1_combout\,
	datab => \disp|Mux2~6_combout\,
	datac => \disp|print_ptr\(1),
	datad => \disp|Mux2~8_combout\,
	combout => \disp|Mux2~9_combout\);

-- Location: LCCOMB_X21_Y15_N8
\disp|Mux2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~17_combout\ = (\disp|print_ptr\(1) & ((\disp|r_buffer[14][5]~q\) # ((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (((\disp|r_buffer[12][5]~q\ & !\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[14][5]~q\,
	datac => \disp|r_buffer[12][5]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux2~17_combout\);

-- Location: LCCOMB_X21_Y15_N10
\disp|Mux2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~18_combout\ = (\disp|Mux2~17_combout\ & (((\disp|r_buffer[15][5]~q\) # (!\disp|print_ptr\(0))))) # (!\disp|Mux2~17_combout\ & (\disp|r_buffer[13][5]~q\ & ((\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][5]~q\,
	datab => \disp|r_buffer[15][5]~q\,
	datac => \disp|Mux2~17_combout\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux2~18_combout\);

-- Location: LCCOMB_X22_Y20_N18
\disp|Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[9][5]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[8][5]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[9][5]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux2~10_combout\);

-- Location: LCCOMB_X22_Y20_N8
\disp|Mux2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux2~10_combout\ & (\disp|r_buffer[11][5]~q\)) # (!\disp|Mux2~10_combout\ & ((\disp|r_buffer[10][5]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[11][5]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][5]~q\,
	datad => \disp|Mux2~10_combout\,
	combout => \disp|Mux2~11_combout\);

-- Location: LCCOMB_X19_Y18_N6
\disp|Mux2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~12_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & (\disp|r_buffer[6][5]~q\)) # (!\disp|print_ptr\(1) & ((\disp|r_buffer[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][5]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[4][5]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux2~12_combout\);

-- Location: LCCOMB_X20_Y18_N30
\disp|Mux2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~13_combout\ = (\disp|Mux2~12_combout\ & ((\disp|r_buffer[7][5]~q\) # ((!\disp|print_ptr\(0))))) # (!\disp|Mux2~12_combout\ & (((\disp|r_buffer[5][5]~q\ & \disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[7][5]~q\,
	datab => \disp|r_buffer[5][5]~q\,
	datac => \disp|Mux2~12_combout\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux2~13_combout\);

-- Location: LCCOMB_X19_Y16_N8
\disp|Mux2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~14_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[1][5]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[0][5]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][5]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[1][5]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux2~14_combout\);

-- Location: LCCOMB_X19_Y16_N24
\disp|Mux2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~15_combout\ = (\disp|Mux2~14_combout\ & ((\disp|r_buffer[3][5]~q\) # ((!\disp|print_ptr\(1))))) # (!\disp|Mux2~14_combout\ & (((\disp|r_buffer[2][5]~q\ & \disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][5]~q\,
	datab => \disp|r_buffer[2][5]~q\,
	datac => \disp|Mux2~14_combout\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux2~15_combout\);

-- Location: LCCOMB_X23_Y19_N16
\disp|Mux2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~16_combout\ = (\disp|print_ptr\(2) & ((\disp|print_ptr\(3)) # ((\disp|Mux2~13_combout\)))) # (!\disp|print_ptr\(2) & (!\disp|print_ptr\(3) & ((\disp|Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux2~13_combout\,
	datad => \disp|Mux2~15_combout\,
	combout => \disp|Mux2~16_combout\);

-- Location: LCCOMB_X23_Y19_N10
\disp|Mux2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~19_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux2~16_combout\ & (\disp|Mux2~18_combout\)) # (!\disp|Mux2~16_combout\ & ((\disp|Mux2~11_combout\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~18_combout\,
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux2~11_combout\,
	datad => \disp|Mux2~16_combout\,
	combout => \disp|Mux2~19_combout\);

-- Location: LCCOMB_X23_Y19_N20
\disp|Mux2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux2~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux2~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|Mux2~9_combout\,
	datac => \disp|print_ptr\(4),
	datad => \disp|Mux2~19_combout\,
	combout => \disp|Mux2~20_combout\);

-- Location: LCCOMB_X23_Y19_N26
\disp|Mux2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux2~21_combout\ = (\disp|Mux2~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|r_buffer[32][5]~q\,
	datad => \disp|Mux2~20_combout\,
	combout => \disp|Mux2~21_combout\);

-- Location: LCCOMB_X23_Y19_N24
\disp|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & (\disp|r_buffer[21][1]~q\)) # (!\disp|print_ptr\(2) & ((\disp|r_buffer[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[21][1]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[17][1]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y19_N12
\disp|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~3_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux6~2_combout\ & ((\disp|r_buffer[29][1]~q\))) # (!\disp|Mux6~2_combout\ & (\disp|r_buffer[25][1]~q\)))) # (!\disp|print_ptr\(3) & (((\disp|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[25][1]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux6~2_combout\,
	datad => \disp|r_buffer[29][1]~q\,
	combout => \disp|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y15_N4
\disp|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~4_combout\ = (\disp|print_ptr\(3) & ((\disp|r_buffer[24][1]~q\) # ((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (((\disp|r_buffer[16][1]~q\ & !\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[24][1]~q\,
	datab => \disp|r_buffer[16][1]~q\,
	datac => \disp|print_ptr\(3),
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y15_N26
\disp|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~5_combout\ = (\disp|Mux6~4_combout\ & (((\disp|r_buffer[28][1]~q\)) # (!\disp|print_ptr\(2)))) # (!\disp|Mux6~4_combout\ & (\disp|print_ptr\(2) & (\disp|r_buffer[20][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~4_combout\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[20][1]~q\,
	datad => \disp|r_buffer[28][1]~q\,
	combout => \disp|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y19_N30
\disp|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~6_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux6~3_combout\) # ((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (((!\disp|print_ptr\(1) & \disp|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~3_combout\,
	datab => \disp|print_ptr\(0),
	datac => \disp|print_ptr\(1),
	datad => \disp|Mux6~5_combout\,
	combout => \disp|Mux6~6_combout\);

-- Location: LCCOMB_X24_Y20_N30
\disp|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~7_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[23][1]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[19][1]~q\,
	datac => \disp|r_buffer[23][1]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux6~7_combout\);

-- Location: LCCOMB_X24_Y19_N12
\disp|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~8_combout\ = (\disp|Mux6~7_combout\ & (((\disp|r_buffer[31][1]~q\) # (!\disp|print_ptr\(3))))) # (!\disp|Mux6~7_combout\ & (\disp|r_buffer[27][1]~q\ & ((\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~7_combout\,
	datab => \disp|r_buffer[27][1]~q\,
	datac => \disp|r_buffer[31][1]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux6~8_combout\);

-- Location: LCCOMB_X22_Y18_N20
\disp|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[26][1]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[18][1]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[18][1]~q\,
	datac => \disp|r_buffer[26][1]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\disp|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~1_combout\ = (\disp|Mux6~0_combout\ & ((\disp|r_buffer[30][1]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux6~0_combout\ & (((\disp|r_buffer[22][1]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[30][1]~q\,
	datab => \disp|Mux6~0_combout\,
	datac => \disp|r_buffer[22][1]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\disp|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~9_combout\ = (\disp|Mux6~6_combout\ & (((\disp|Mux6~8_combout\)) # (!\disp|print_ptr\(1)))) # (!\disp|Mux6~6_combout\ & (\disp|print_ptr\(1) & ((\disp|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~6_combout\,
	datab => \disp|print_ptr\(1),
	datac => \disp|Mux6~8_combout\,
	datad => \disp|Mux6~1_combout\,
	combout => \disp|Mux6~9_combout\);

-- Location: LCCOMB_X19_Y16_N16
\disp|Mux6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~17_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & ((\disp|r_buffer[14][1]~q\))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[12][1]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[14][1]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux6~17_combout\);

-- Location: LCCOMB_X19_Y16_N2
\disp|Mux6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~18_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux6~17_combout\ & (\disp|r_buffer[15][1]~q\)) # (!\disp|Mux6~17_combout\ & ((\disp|r_buffer[13][1]~q\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[15][1]~q\,
	datab => \disp|r_buffer[13][1]~q\,
	datac => \disp|print_ptr\(0),
	datad => \disp|Mux6~17_combout\,
	combout => \disp|Mux6~18_combout\);

-- Location: LCCOMB_X19_Y15_N4
\disp|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~14_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[1][1]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][1]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[1][1]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux6~14_combout\);

-- Location: LCCOMB_X19_Y15_N26
\disp|Mux6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~15_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux6~14_combout\ & (\disp|r_buffer[3][1]~q\)) # (!\disp|Mux6~14_combout\ & ((\disp|r_buffer[2][1]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][1]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[2][1]~q\,
	datad => \disp|Mux6~14_combout\,
	combout => \disp|Mux6~15_combout\);

-- Location: LCCOMB_X20_Y18_N0
\disp|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~12_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & (\disp|r_buffer[6][1]~q\)) # (!\disp|print_ptr\(1) & ((\disp|r_buffer[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][1]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[4][1]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux6~12_combout\);

-- Location: LCCOMB_X19_Y18_N8
\disp|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~13_combout\ = (\disp|Mux6~12_combout\ & (((\disp|r_buffer[7][1]~q\) # (!\disp|print_ptr\(0))))) # (!\disp|Mux6~12_combout\ & (\disp|r_buffer[5][1]~q\ & ((\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[5][1]~q\,
	datab => \disp|r_buffer[7][1]~q\,
	datac => \disp|Mux6~12_combout\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux6~13_combout\);

-- Location: LCCOMB_X22_Y15_N16
\disp|Mux6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~16_combout\ = (\disp|print_ptr\(2) & (((\disp|Mux6~13_combout\) # (\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & (\disp|Mux6~15_combout\ & ((!\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~15_combout\,
	datab => \disp|print_ptr\(2),
	datac => \disp|Mux6~13_combout\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux6~16_combout\);

-- Location: LCCOMB_X22_Y20_N22
\disp|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[9][1]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[8][1]~q\,
	datac => \disp|r_buffer[9][1]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux6~10_combout\);

-- Location: LCCOMB_X22_Y20_N4
\disp|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~11_combout\ = (\disp|Mux6~10_combout\ & (((\disp|r_buffer[11][1]~q\)) # (!\disp|print_ptr\(1)))) # (!\disp|Mux6~10_combout\ & (\disp|print_ptr\(1) & (\disp|r_buffer[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~10_combout\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][1]~q\,
	datad => \disp|r_buffer[11][1]~q\,
	combout => \disp|Mux6~11_combout\);

-- Location: LCCOMB_X23_Y19_N18
\disp|Mux6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~19_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux6~16_combout\ & (\disp|Mux6~18_combout\)) # (!\disp|Mux6~16_combout\ & ((\disp|Mux6~11_combout\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux6~18_combout\,
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux6~16_combout\,
	datad => \disp|Mux6~11_combout\,
	combout => \disp|Mux6~19_combout\);

-- Location: LCCOMB_X23_Y19_N0
\disp|Mux6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux6~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux6~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|Mux6~9_combout\,
	datac => \disp|print_ptr\(4),
	datad => \disp|Mux6~19_combout\,
	combout => \disp|Mux6~20_combout\);

-- Location: LCCOMB_X23_Y22_N14
\disp|Mux6~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux6~21_combout\ = (\disp|Mux6~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(5),
	datac => \disp|r_buffer[32][1]~q\,
	datad => \disp|Mux6~20_combout\,
	combout => \disp|Mux6~21_combout\);

-- Location: LCCOMB_X22_Y20_N16
\disp|Mux1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~12_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[10][6]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[8][6]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[8][6]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][6]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux1~12_combout\);

-- Location: LCCOMB_X22_Y20_N14
\disp|Mux1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~13_combout\ = (\disp|Mux1~12_combout\ & ((\disp|r_buffer[11][6]~q\) # ((!\disp|print_ptr\(0))))) # (!\disp|Mux1~12_combout\ & (((\disp|r_buffer[9][6]~q\ & \disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[11][6]~q\,
	datab => \disp|Mux1~12_combout\,
	datac => \disp|r_buffer[9][6]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux1~13_combout\);

-- Location: LCCOMB_X19_Y15_N14
\disp|Mux1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~14_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[2][6]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[0][6]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][6]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[2][6]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux1~14_combout\);

-- Location: LCCOMB_X19_Y15_N8
\disp|Mux1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~15_combout\ = (\disp|Mux1~14_combout\ & ((\disp|r_buffer[3][6]~q\) # ((!\disp|print_ptr\(0))))) # (!\disp|Mux1~14_combout\ & (((\disp|r_buffer[1][6]~q\ & \disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][6]~q\,
	datab => \disp|r_buffer[1][6]~q\,
	datac => \disp|Mux1~14_combout\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux1~15_combout\);

-- Location: LCCOMB_X19_Y18_N24
\disp|Mux1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~16_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & (\disp|Mux1~13_combout\)) # (!\disp|print_ptr\(3) & ((\disp|Mux1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|Mux1~13_combout\,
	datac => \disp|Mux1~15_combout\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux1~16_combout\);

-- Location: LCCOMB_X19_Y18_N28
\disp|Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~10_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[5][6]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[4][6]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[4][6]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[5][6]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux1~10_combout\);

-- Location: LCCOMB_X19_Y18_N22
\disp|Mux1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux1~10_combout\ & (\disp|r_buffer[7][6]~q\)) # (!\disp|Mux1~10_combout\ & ((\disp|r_buffer[6][6]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[7][6]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[6][6]~q\,
	datad => \disp|Mux1~10_combout\,
	combout => \disp|Mux1~11_combout\);

-- Location: LCCOMB_X19_Y16_N28
\disp|Mux1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~17_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[13][6]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[12][6]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[12][6]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[13][6]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux1~17_combout\);

-- Location: LCCOMB_X21_Y15_N20
\disp|Mux1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~18_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux1~17_combout\ & ((\disp|r_buffer[15][6]~q\))) # (!\disp|Mux1~17_combout\ & (\disp|r_buffer[14][6]~q\)))) # (!\disp|print_ptr\(1) & (((\disp|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[14][6]~q\,
	datac => \disp|r_buffer[15][6]~q\,
	datad => \disp|Mux1~17_combout\,
	combout => \disp|Mux1~18_combout\);

-- Location: LCCOMB_X19_Y18_N2
\disp|Mux1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~19_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux1~16_combout\ & ((\disp|Mux1~18_combout\))) # (!\disp|Mux1~16_combout\ & (\disp|Mux1~11_combout\)))) # (!\disp|print_ptr\(2) & (\disp|Mux1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|Mux1~16_combout\,
	datac => \disp|Mux1~11_combout\,
	datad => \disp|Mux1~18_combout\,
	combout => \disp|Mux1~19_combout\);

-- Location: LCCOMB_X24_Y20_N20
\disp|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~7_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[27][6]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[19][6]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[19][6]~q\,
	datac => \disp|r_buffer[27][6]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux1~7_combout\);

-- Location: LCCOMB_X24_Y20_N6
\disp|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~8_combout\ = (\disp|Mux1~7_combout\ & ((\disp|r_buffer[31][6]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux1~7_combout\ & (((\disp|r_buffer[23][6]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[31][6]~q\,
	datab => \disp|Mux1~7_combout\,
	datac => \disp|r_buffer[23][6]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux1~8_combout\);

-- Location: LCCOMB_X24_Y16_N18
\disp|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[25][6]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[17][6]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[17][6]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[25][6]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\disp|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~1_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux1~0_combout\ & (\disp|r_buffer[29][6]~q\)) # (!\disp|Mux1~0_combout\ & ((\disp|r_buffer[21][6]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|r_buffer[29][6]~q\,
	datac => \disp|r_buffer[21][6]~q\,
	datad => \disp|Mux1~0_combout\,
	combout => \disp|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y18_N0
\disp|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[22][6]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[18][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][6]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[22][6]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y19_N16
\disp|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~3_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux1~2_combout\ & ((\disp|r_buffer[30][6]~q\))) # (!\disp|Mux1~2_combout\ & (\disp|r_buffer[26][6]~q\)))) # (!\disp|print_ptr\(3) & (((\disp|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[26][6]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[30][6]~q\,
	datad => \disp|Mux1~2_combout\,
	combout => \disp|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y15_N26
\disp|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~4_combout\ = (\disp|print_ptr\(2) & (((\disp|r_buffer[20][6]~q\) # (\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[16][6]~q\ & ((!\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[16][6]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[20][6]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\disp|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~5_combout\ = (\disp|Mux1~4_combout\ & ((\disp|r_buffer[28][6]~q\) # ((!\disp|print_ptr\(3))))) # (!\disp|Mux1~4_combout\ & (((\disp|r_buffer[24][6]~q\ & \disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux1~4_combout\,
	datab => \disp|r_buffer[28][6]~q\,
	datac => \disp|r_buffer[24][6]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y19_N6
\disp|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~6_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux1~3_combout\) # ((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (((!\disp|print_ptr\(0) & \disp|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|Mux1~3_combout\,
	datac => \disp|print_ptr\(0),
	datad => \disp|Mux1~5_combout\,
	combout => \disp|Mux1~6_combout\);

-- Location: LCCOMB_X17_Y18_N2
\disp|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~9_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux1~6_combout\ & (\disp|Mux1~8_combout\)) # (!\disp|Mux1~6_combout\ & ((\disp|Mux1~1_combout\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux1~8_combout\,
	datab => \disp|print_ptr\(0),
	datac => \disp|Mux1~1_combout\,
	datad => \disp|Mux1~6_combout\,
	combout => \disp|Mux1~9_combout\);

-- Location: LCCOMB_X19_Y18_N4
\disp|Mux1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & ((\disp|Mux1~9_combout\))) # (!\disp|print_ptr\(4) & (\disp|Mux1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|Mux1~19_combout\,
	datac => \disp|print_ptr\(4),
	datad => \disp|Mux1~9_combout\,
	combout => \disp|Mux1~20_combout\);

-- Location: LCCOMB_X22_Y22_N18
\disp|Mux1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux1~21_combout\ = (\disp|Mux1~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datac => \disp|Mux1~20_combout\,
	datad => \disp|r_buffer[32][6]~q\,
	combout => \disp|Mux1~21_combout\);

-- Location: LCCOMB_X24_Y20_N28
\disp|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~7_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & ((\disp|r_buffer[27][4]~q\))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[19][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[19][4]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[27][4]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux3~7_combout\);

-- Location: LCCOMB_X24_Y20_N2
\disp|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~8_combout\ = (\disp|Mux3~7_combout\ & ((\disp|r_buffer[31][4]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux3~7_combout\ & (((\disp|r_buffer[23][4]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[31][4]~q\,
	datab => \disp|Mux3~7_combout\,
	datac => \disp|r_buffer[23][4]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux3~8_combout\);

-- Location: LCCOMB_X24_Y16_N0
\disp|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~0_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & ((\disp|r_buffer[25][4]~q\))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|r_buffer[17][4]~q\,
	datac => \disp|r_buffer[25][4]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\disp|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~1_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux3~0_combout\ & (\disp|r_buffer[29][4]~q\)) # (!\disp|Mux3~0_combout\ & ((\disp|r_buffer[21][4]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|r_buffer[29][4]~q\,
	datac => \disp|r_buffer[21][4]~q\,
	datad => \disp|Mux3~0_combout\,
	combout => \disp|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y18_N2
\disp|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[22][4]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][4]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[22][4]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y18_N24
\disp|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~3_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux3~2_combout\ & (\disp|r_buffer[30][4]~q\)) # (!\disp|Mux3~2_combout\ & ((\disp|r_buffer[26][4]~q\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[30][4]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[26][4]~q\,
	datad => \disp|Mux3~2_combout\,
	combout => \disp|Mux3~3_combout\);

-- Location: LCCOMB_X24_Y15_N20
\disp|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~4_combout\ = (\disp|print_ptr\(2) & (((\disp|r_buffer[20][4]~q\) # (\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[16][4]~q\ & ((!\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[16][4]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[20][4]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux3~4_combout\);

-- Location: LCCOMB_X24_Y15_N14
\disp|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~5_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux3~4_combout\ & (\disp|r_buffer[28][4]~q\)) # (!\disp|Mux3~4_combout\ & ((\disp|r_buffer[24][4]~q\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[28][4]~q\,
	datac => \disp|r_buffer[24][4]~q\,
	datad => \disp|Mux3~4_combout\,
	combout => \disp|Mux3~5_combout\);

-- Location: LCCOMB_X17_Y16_N18
\disp|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~6_combout\ = (\disp|print_ptr\(0) & (\disp|print_ptr\(1))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & (\disp|Mux3~3_combout\)) # (!\disp|print_ptr\(1) & ((\disp|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|print_ptr\(1),
	datac => \disp|Mux3~3_combout\,
	datad => \disp|Mux3~5_combout\,
	combout => \disp|Mux3~6_combout\);

-- Location: LCCOMB_X17_Y16_N8
\disp|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~9_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux3~6_combout\ & (\disp|Mux3~8_combout\)) # (!\disp|Mux3~6_combout\ & ((\disp|Mux3~1_combout\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|Mux3~8_combout\,
	datac => \disp|Mux3~1_combout\,
	datad => \disp|Mux3~6_combout\,
	combout => \disp|Mux3~9_combout\);

-- Location: LCCOMB_X23_Y18_N14
\disp|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[5][4]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[4][4]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[5][4]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux3~10_combout\);

-- Location: LCCOMB_X19_Y18_N26
\disp|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux3~10_combout\ & ((\disp|r_buffer[7][4]~q\))) # (!\disp|Mux3~10_combout\ & (\disp|r_buffer[6][4]~q\)))) # (!\disp|print_ptr\(1) & (((\disp|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[6][4]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|Mux3~10_combout\,
	datad => \disp|r_buffer[7][4]~q\,
	combout => \disp|Mux3~11_combout\);

-- Location: LCCOMB_X19_Y16_N26
\disp|Mux3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~17_combout\ = (\disp|print_ptr\(0) & ((\disp|r_buffer[13][4]~q\) # ((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (((\disp|r_buffer[12][4]~q\ & !\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][4]~q\,
	datab => \disp|r_buffer[12][4]~q\,
	datac => \disp|print_ptr\(0),
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux3~17_combout\);

-- Location: LCCOMB_X17_Y16_N0
\disp|Mux3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~18_combout\ = (\disp|Mux3~17_combout\ & (((\disp|r_buffer[15][4]~q\) # (!\disp|print_ptr\(1))))) # (!\disp|Mux3~17_combout\ & (\disp|r_buffer[14][4]~q\ & (\disp|print_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[14][4]~q\,
	datab => \disp|Mux3~17_combout\,
	datac => \disp|print_ptr\(1),
	datad => \disp|r_buffer[15][4]~q\,
	combout => \disp|Mux3~18_combout\);

-- Location: LCCOMB_X22_Y20_N30
\disp|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~12_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[10][4]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[8][4]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[8][4]~q\,
	datac => \disp|r_buffer[10][4]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux3~12_combout\);

-- Location: LCCOMB_X22_Y20_N12
\disp|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~13_combout\ = (\disp|Mux3~12_combout\ & ((\disp|r_buffer[11][4]~q\) # ((!\disp|print_ptr\(0))))) # (!\disp|Mux3~12_combout\ & (((\disp|r_buffer[9][4]~q\ & \disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~12_combout\,
	datab => \disp|r_buffer[11][4]~q\,
	datac => \disp|r_buffer[9][4]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux3~13_combout\);

-- Location: LCCOMB_X19_Y15_N10
\disp|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~14_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[2][4]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[0][4]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][4]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[2][4]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux3~14_combout\);

-- Location: LCCOMB_X20_Y15_N0
\disp|Mux3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~15_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux3~14_combout\ & ((\disp|r_buffer[3][4]~q\))) # (!\disp|Mux3~14_combout\ & (\disp|r_buffer[1][4]~q\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|r_buffer[1][4]~q\,
	datac => \disp|r_buffer[3][4]~q\,
	datad => \disp|Mux3~14_combout\,
	combout => \disp|Mux3~15_combout\);

-- Location: LCCOMB_X17_Y16_N6
\disp|Mux3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~16_combout\ = (\disp|print_ptr\(2) & (\disp|print_ptr\(3))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & (\disp|Mux3~13_combout\)) # (!\disp|print_ptr\(3) & ((\disp|Mux3~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux3~13_combout\,
	datad => \disp|Mux3~15_combout\,
	combout => \disp|Mux3~16_combout\);

-- Location: LCCOMB_X17_Y16_N2
\disp|Mux3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~19_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux3~16_combout\ & ((\disp|Mux3~18_combout\))) # (!\disp|Mux3~16_combout\ & (\disp|Mux3~11_combout\)))) # (!\disp|print_ptr\(2) & (((\disp|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~11_combout\,
	datab => \disp|Mux3~18_combout\,
	datac => \disp|print_ptr\(2),
	datad => \disp|Mux3~16_combout\,
	combout => \disp|Mux3~19_combout\);

-- Location: LCCOMB_X17_Y16_N24
\disp|Mux3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux3~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux3~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(4),
	datab => \disp|print_ptr\(5),
	datac => \disp|Mux3~9_combout\,
	datad => \disp|Mux3~19_combout\,
	combout => \disp|Mux3~20_combout\);

-- Location: LCCOMB_X22_Y22_N16
\disp|Mux3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux3~21_combout\ = (\disp|Mux3~20_combout\) # ((\disp|r_buffer[32][4]~q\ & \disp|print_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][4]~q\,
	datab => \disp|print_ptr\(5),
	datad => \disp|Mux3~20_combout\,
	combout => \disp|Mux3~21_combout\);

-- Location: LCCOMB_X23_Y24_N26
\disp|Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux10~5_combout\ = (\disp|Mux2~21_combout\ & (((!\disp|Mux1~21_combout\ & \disp|Mux3~21_combout\)))) # (!\disp|Mux2~21_combout\ & ((\disp|Mux6~21_combout\ & (!\disp|Mux1~21_combout\ & !\disp|Mux3~21_combout\)) # (!\disp|Mux6~21_combout\ & 
-- (\disp|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datab => \disp|Mux6~21_combout\,
	datac => \disp|Mux1~21_combout\,
	datad => \disp|Mux3~21_combout\,
	combout => \disp|Mux10~5_combout\);

-- Location: LCCOMB_X23_Y24_N20
\disp|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux10~4_combout\ = (\disp|Mux2~21_combout\ & (!\disp|Mux1~21_combout\ & \disp|Mux7~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datac => \disp|Mux1~21_combout\,
	datad => \disp|Mux7~21_combout\,
	combout => \disp|Mux10~4_combout\);

-- Location: LCCOMB_X23_Y24_N24
\disp|Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux10~6_combout\ = (\disp|Mux3~21_combout\ & (!\disp|Mux6~21_combout\ & \disp|Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux10~4_combout\,
	combout => \disp|Mux10~6_combout\);

-- Location: LCCOMB_X23_Y24_N30
\disp|char_ptr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~26_combout\ = (\disp|char_ptr~25_combout\ & (!\disp|Mux10~6_combout\ & ((\disp|Mux7~21_combout\) # (!\disp|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~25_combout\,
	datab => \disp|Mux7~21_combout\,
	datac => \disp|Mux10~5_combout\,
	datad => \disp|Mux10~6_combout\,
	combout => \disp|char_ptr~26_combout\);

-- Location: LCCOMB_X23_Y24_N8
\disp|Mux4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux4~21_combout\ = (\disp|Mux4~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|print_ptr\(5),
	datac => \disp|Mux4~20_combout\,
	datad => \disp|r_buffer[32][3]~q\,
	combout => \disp|Mux4~21_combout\);

-- Location: LCCOMB_X20_Y15_N8
\disp|Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~14_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[1][7]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[0][7]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|r_buffer[0][7]~q\,
	datac => \disp|r_buffer[1][7]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux0~14_combout\);

-- Location: LCCOMB_X20_Y15_N6
\disp|Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~15_combout\ = (\disp|Mux0~14_combout\ & ((\disp|r_buffer[3][7]~q\) # ((!\disp|print_ptr\(1))))) # (!\disp|Mux0~14_combout\ & (((\disp|r_buffer[2][7]~q\ & \disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][7]~q\,
	datab => \disp|r_buffer[2][7]~q\,
	datac => \disp|Mux0~14_combout\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux0~15_combout\);

-- Location: LCCOMB_X21_Y15_N4
\disp|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~12_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[6][7]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[4][7]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[4][7]~q\,
	datac => \disp|r_buffer[6][7]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux0~12_combout\);

-- Location: LCCOMB_X23_Y18_N28
\disp|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~13_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux0~12_combout\ & (\disp|r_buffer[7][7]~q\)) # (!\disp|Mux0~12_combout\ & ((\disp|r_buffer[5][7]~q\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[7][7]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|Mux0~12_combout\,
	datad => \disp|r_buffer[5][7]~q\,
	combout => \disp|Mux0~13_combout\);

-- Location: LCCOMB_X23_Y18_N30
\disp|Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~16_combout\ = (\disp|print_ptr\(2) & ((\disp|print_ptr\(3)) # ((\disp|Mux0~13_combout\)))) # (!\disp|print_ptr\(2) & (!\disp|print_ptr\(3) & (\disp|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux0~15_combout\,
	datad => \disp|Mux0~13_combout\,
	combout => \disp|Mux0~16_combout\);

-- Location: LCCOMB_X21_Y15_N18
\disp|Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~17_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[14][7]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[12][7]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[12][7]~q\,
	datac => \disp|r_buffer[14][7]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux0~17_combout\);

-- Location: LCCOMB_X19_Y16_N20
\disp|Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~18_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux0~17_combout\ & ((\disp|r_buffer[15][7]~q\))) # (!\disp|Mux0~17_combout\ & (\disp|r_buffer[13][7]~q\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[13][7]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[15][7]~q\,
	datad => \disp|Mux0~17_combout\,
	combout => \disp|Mux0~18_combout\);

-- Location: LCCOMB_X22_Y20_N0
\disp|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[9][7]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|r_buffer[8][7]~q\,
	datac => \disp|r_buffer[9][7]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux0~10_combout\);

-- Location: LCCOMB_X22_Y20_N6
\disp|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux0~10_combout\ & (\disp|r_buffer[11][7]~q\)) # (!\disp|Mux0~10_combout\ & ((\disp|r_buffer[10][7]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[11][7]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][7]~q\,
	datad => \disp|Mux0~10_combout\,
	combout => \disp|Mux0~11_combout\);

-- Location: LCCOMB_X23_Y18_N20
\disp|Mux0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~19_combout\ = (\disp|Mux0~16_combout\ & (((\disp|Mux0~18_combout\)) # (!\disp|print_ptr\(3)))) # (!\disp|Mux0~16_combout\ & (\disp|print_ptr\(3) & ((\disp|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux0~16_combout\,
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux0~18_combout\,
	datad => \disp|Mux0~11_combout\,
	combout => \disp|Mux0~19_combout\);

-- Location: LCCOMB_X24_Y20_N16
\disp|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~7_combout\ = (\disp|print_ptr\(2) & (((\disp|r_buffer[23][7]~q\) # (\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[19][7]~q\ & ((!\disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[19][7]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[23][7]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux0~7_combout\);

-- Location: LCCOMB_X23_Y20_N26
\disp|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~8_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux0~7_combout\ & ((\disp|r_buffer[31][7]~q\))) # (!\disp|Mux0~7_combout\ & (\disp|r_buffer[27][7]~q\)))) # (!\disp|print_ptr\(3) & (((\disp|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[27][7]~q\,
	datac => \disp|Mux0~7_combout\,
	datad => \disp|r_buffer[31][7]~q\,
	combout => \disp|Mux0~8_combout\);

-- Location: LCCOMB_X22_Y18_N26
\disp|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[26][7]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[18][7]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][7]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[26][7]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\disp|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~1_combout\ = (\disp|Mux0~0_combout\ & ((\disp|r_buffer[30][7]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux0~0_combout\ & (((\disp|r_buffer[22][7]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux0~0_combout\,
	datab => \disp|r_buffer[30][7]~q\,
	datac => \disp|r_buffer[22][7]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\disp|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~4_combout\ = (\disp|print_ptr\(2) & (((\disp|print_ptr\(3))))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & ((\disp|r_buffer[24][7]~q\))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|r_buffer[16][7]~q\,
	datac => \disp|r_buffer[24][7]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y15_N0
\disp|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~5_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux0~4_combout\ & (\disp|r_buffer[28][7]~q\)) # (!\disp|Mux0~4_combout\ & ((\disp|r_buffer[20][7]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[28][7]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[20][7]~q\,
	datad => \disp|Mux0~4_combout\,
	combout => \disp|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y16_N10
\disp|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[21][7]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[17][7]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[21][7]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\disp|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~3_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux0~2_combout\ & (\disp|r_buffer[29][7]~q\)) # (!\disp|Mux0~2_combout\ & ((\disp|r_buffer[25][7]~q\))))) # (!\disp|print_ptr\(3) & (((\disp|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[29][7]~q\,
	datac => \disp|r_buffer[25][7]~q\,
	datad => \disp|Mux0~2_combout\,
	combout => \disp|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y16_N20
\disp|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~6_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1)) # (\disp|Mux0~3_combout\)))) # (!\disp|print_ptr\(0) & (\disp|Mux0~5_combout\ & (!\disp|print_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(0),
	datab => \disp|Mux0~5_combout\,
	datac => \disp|print_ptr\(1),
	datad => \disp|Mux0~3_combout\,
	combout => \disp|Mux0~6_combout\);

-- Location: LCCOMB_X22_Y16_N22
\disp|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~9_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux0~6_combout\ & (\disp|Mux0~8_combout\)) # (!\disp|Mux0~6_combout\ & ((\disp|Mux0~1_combout\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(1),
	datab => \disp|Mux0~8_combout\,
	datac => \disp|Mux0~1_combout\,
	datad => \disp|Mux0~6_combout\,
	combout => \disp|Mux0~9_combout\);

-- Location: LCCOMB_X23_Y18_N26
\disp|Mux0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux0~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & ((\disp|Mux0~9_combout\))) # (!\disp|print_ptr\(4) & (\disp|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|Mux0~19_combout\,
	datac => \disp|print_ptr\(4),
	datad => \disp|Mux0~9_combout\,
	combout => \disp|Mux0~20_combout\);

-- Location: LCCOMB_X22_Y22_N0
\disp|char_ptr~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~27_combout\ = (!\disp|state.transmit~q\ & ((\disp|Mux0~20_combout\) # ((\disp|r_buffer[32][7]~q\ & \disp|print_ptr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][7]~q\,
	datab => \disp|state.transmit~q\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux0~20_combout\,
	combout => \disp|char_ptr~27_combout\);

-- Location: LCCOMB_X22_Y22_N12
\disp|char_ptr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~6_combout\ = (\disp|buffer_ptr[28]~98_combout\ & (!\disp|Mux0~20_combout\ & ((!\disp|print_ptr\(5)) # (!\disp|r_buffer[32][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][7]~q\,
	datab => \disp|print_ptr\(5),
	datac => \disp|buffer_ptr[28]~98_combout\,
	datad => \disp|Mux0~20_combout\,
	combout => \disp|char_ptr~6_combout\);

-- Location: LCCOMB_X26_Y23_N4
\disp|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~0_combout\ = \disp|char_ptr\(0) $ (VCC)
-- \disp|Add6~1\ = CARRY(\disp|char_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(0),
	datad => VCC,
	combout => \disp|Add6~0_combout\,
	cout => \disp|Add6~1\);

-- Location: LCCOMB_X26_Y21_N24
\disp|o_display_data[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[3]~5_combout\ = (((\disp|Equal4~10_combout\ & !\disp|Equal5~20_combout\)) # (!\inst|w_busy~q\)) # (!\disp|LessThan9~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal4~10_combout\,
	datab => \disp|LessThan9~62_combout\,
	datac => \disp|Equal5~20_combout\,
	datad => \inst|w_busy~q\,
	combout => \disp|o_display_data[3]~5_combout\);

-- Location: LCCOMB_X26_Y20_N4
\disp|char_ptr[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr[5]~41_combout\ = (\disp|o_display_data[3]~5_combout\ & \disp|state.transmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp|o_display_data[3]~5_combout\,
	datad => \disp|state.transmit~q\,
	combout => \disp|char_ptr[5]~41_combout\);

-- Location: LCCOMB_X26_Y20_N6
\disp|Selector389~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector389~4_combout\ = (!\disp|Equal4~10_combout\ & (!\disp|o_display_data[3]~5_combout\ & \disp|state.transmit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Equal4~10_combout\,
	datac => \disp|o_display_data[3]~5_combout\,
	datad => \disp|state.transmit~q\,
	combout => \disp|Selector389~4_combout\);

-- Location: LCCOMB_X26_Y20_N18
\disp|Selector390~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector390~0_combout\ = (\disp|Add6~0_combout\ & ((\disp|Selector389~4_combout\) # ((\disp|char_ptr\(0) & \disp|char_ptr[5]~41_combout\)))) # (!\disp|Add6~0_combout\ & (\disp|char_ptr\(0) & (\disp|char_ptr[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add6~0_combout\,
	datab => \disp|char_ptr\(0),
	datac => \disp|char_ptr[5]~41_combout\,
	datad => \disp|Selector389~4_combout\,
	combout => \disp|Selector390~0_combout\);

-- Location: LCCOMB_X26_Y20_N28
\disp|Selector390~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector390~1_combout\ = (\disp|Selector390~0_combout\) # ((!\disp|state.CharSelect~q\ & (!\disp|state.transmit~q\ & \disp|char_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.CharSelect~q\,
	datab => \disp|state.transmit~q\,
	datac => \disp|char_ptr\(0),
	datad => \disp|Selector390~0_combout\,
	combout => \disp|Selector390~1_combout\);

-- Location: FF_X26_Y20_N29
\disp|char_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector390~1_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(0));

-- Location: LCCOMB_X26_Y23_N6
\disp|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~2_combout\ = (\disp|char_ptr\(1) & (!\disp|Add6~1\)) # (!\disp|char_ptr\(1) & ((\disp|Add6~1\) # (GND)))
-- \disp|Add6~3\ = CARRY((!\disp|Add6~1\) # (!\disp|char_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|char_ptr\(1),
	datad => VCC,
	cin => \disp|Add6~1\,
	combout => \disp|Add6~2_combout\,
	cout => \disp|Add6~3\);

-- Location: LCCOMB_X26_Y20_N20
\disp|Selector389~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector389~2_combout\ = (\disp|Add6~2_combout\ & ((\disp|Selector389~4_combout\) # ((\disp|char_ptr\(1) & \disp|char_ptr[5]~41_combout\)))) # (!\disp|Add6~2_combout\ & (\disp|char_ptr\(1) & (\disp|char_ptr[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Add6~2_combout\,
	datab => \disp|char_ptr\(1),
	datac => \disp|char_ptr[5]~41_combout\,
	datad => \disp|Selector389~4_combout\,
	combout => \disp|Selector389~2_combout\);

-- Location: LCCOMB_X26_Y20_N14
\disp|Selector389~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector389~3_combout\ = (\disp|Selector389~2_combout\) # ((!\disp|state.CharSelect~q\ & (!\disp|state.transmit~q\ & \disp|char_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.CharSelect~q\,
	datab => \disp|state.transmit~q\,
	datac => \disp|char_ptr\(1),
	datad => \disp|Selector389~2_combout\,
	combout => \disp|Selector389~3_combout\);

-- Location: FF_X26_Y20_N15
\disp|char_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector389~3_combout\,
	sclr => \i_I2C_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(1));

-- Location: LCCOMB_X26_Y23_N8
\disp|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~4_combout\ = (\disp|char_ptr\(2) & (\disp|Add6~3\ $ (GND))) # (!\disp|char_ptr\(2) & (!\disp|Add6~3\ & VCC))
-- \disp|Add6~5\ = CARRY((\disp|char_ptr\(2) & !\disp|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|char_ptr\(2),
	datad => VCC,
	cin => \disp|Add6~3\,
	combout => \disp|Add6~4_combout\,
	cout => \disp|Add6~5\);

-- Location: LCCOMB_X24_Y16_N24
\disp|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~0_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[25][2]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[17][2]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[17][2]~q\,
	datac => \disp|r_buffer[25][2]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\disp|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~1_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux5~0_combout\ & (\disp|r_buffer[29][2]~q\)) # (!\disp|Mux5~0_combout\ & ((\disp|r_buffer[21][2]~q\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[29][2]~q\,
	datab => \disp|print_ptr\(2),
	datac => \disp|Mux5~0_combout\,
	datad => \disp|r_buffer[21][2]~q\,
	combout => \disp|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\disp|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~7_combout\ = (\disp|print_ptr\(3) & (((\disp|r_buffer[27][2]~q\) # (\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & (\disp|r_buffer[19][2]~q\ & ((!\disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|r_buffer[19][2]~q\,
	datac => \disp|r_buffer[27][2]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux5~7_combout\);

-- Location: LCCOMB_X24_Y20_N4
\disp|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~8_combout\ = (\disp|Mux5~7_combout\ & ((\disp|r_buffer[31][2]~q\) # ((!\disp|print_ptr\(2))))) # (!\disp|Mux5~7_combout\ & (((\disp|r_buffer[23][2]~q\ & \disp|print_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[31][2]~q\,
	datab => \disp|Mux5~7_combout\,
	datac => \disp|r_buffer[23][2]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux5~8_combout\);

-- Location: LCCOMB_X24_Y15_N24
\disp|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~4_combout\ = (\disp|print_ptr\(3) & (\disp|print_ptr\(2))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & (\disp|r_buffer[20][2]~q\)) # (!\disp|print_ptr\(2) & ((\disp|r_buffer[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|print_ptr\(2),
	datac => \disp|r_buffer[20][2]~q\,
	datad => \disp|r_buffer[16][2]~q\,
	combout => \disp|Mux5~4_combout\);

-- Location: LCCOMB_X24_Y15_N4
\disp|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~5_combout\ = (\disp|print_ptr\(3) & ((\disp|Mux5~4_combout\ & ((\disp|r_buffer[28][2]~q\))) # (!\disp|Mux5~4_combout\ & (\disp|r_buffer[24][2]~q\)))) # (!\disp|print_ptr\(3) & (\disp|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(3),
	datab => \disp|Mux5~4_combout\,
	datac => \disp|r_buffer[24][2]~q\,
	datad => \disp|r_buffer[28][2]~q\,
	combout => \disp|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y18_N30
\disp|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~2_combout\ = (\disp|print_ptr\(3) & (((\disp|print_ptr\(2))))) # (!\disp|print_ptr\(3) & ((\disp|print_ptr\(2) & ((\disp|r_buffer[22][2]~q\))) # (!\disp|print_ptr\(2) & (\disp|r_buffer[18][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[18][2]~q\,
	datab => \disp|print_ptr\(3),
	datac => \disp|r_buffer[22][2]~q\,
	datad => \disp|print_ptr\(2),
	combout => \disp|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\disp|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~3_combout\ = (\disp|Mux5~2_combout\ & ((\disp|r_buffer[30][2]~q\) # ((!\disp|print_ptr\(3))))) # (!\disp|Mux5~2_combout\ & (((\disp|r_buffer[26][2]~q\ & \disp|print_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~2_combout\,
	datab => \disp|r_buffer[30][2]~q\,
	datac => \disp|r_buffer[26][2]~q\,
	datad => \disp|print_ptr\(3),
	combout => \disp|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y19_N6
\disp|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~6_combout\ = (\disp|print_ptr\(0) & (((\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & ((\disp|print_ptr\(1) & ((\disp|Mux5~3_combout\))) # (!\disp|print_ptr\(1) & (\disp|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~5_combout\,
	datab => \disp|print_ptr\(0),
	datac => \disp|print_ptr\(1),
	datad => \disp|Mux5~3_combout\,
	combout => \disp|Mux5~6_combout\);

-- Location: LCCOMB_X22_Y19_N24
\disp|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~9_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux5~6_combout\ & ((\disp|Mux5~8_combout\))) # (!\disp|Mux5~6_combout\ & (\disp|Mux5~1_combout\)))) # (!\disp|print_ptr\(0) & (((\disp|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~1_combout\,
	datab => \disp|print_ptr\(0),
	datac => \disp|Mux5~8_combout\,
	datad => \disp|Mux5~6_combout\,
	combout => \disp|Mux5~9_combout\);

-- Location: LCCOMB_X19_Y16_N30
\disp|Mux5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~17_combout\ = (\disp|print_ptr\(0) & (((\disp|r_buffer[13][2]~q\) # (\disp|print_ptr\(1))))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[12][2]~q\ & ((!\disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[12][2]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[13][2]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux5~17_combout\);

-- Location: LCCOMB_X20_Y15_N26
\disp|Mux5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~18_combout\ = (\disp|Mux5~17_combout\ & ((\disp|r_buffer[15][2]~q\) # ((!\disp|print_ptr\(1))))) # (!\disp|Mux5~17_combout\ & (((\disp|r_buffer[14][2]~q\ & \disp|print_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[15][2]~q\,
	datab => \disp|Mux5~17_combout\,
	datac => \disp|r_buffer[14][2]~q\,
	datad => \disp|print_ptr\(1),
	combout => \disp|Mux5~18_combout\);

-- Location: LCCOMB_X23_Y18_N10
\disp|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~10_combout\ = (\disp|print_ptr\(1) & (((\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & ((\disp|print_ptr\(0) & ((\disp|r_buffer[5][2]~q\))) # (!\disp|print_ptr\(0) & (\disp|r_buffer[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[4][2]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[5][2]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux5~10_combout\);

-- Location: LCCOMB_X19_Y18_N18
\disp|Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~11_combout\ = (\disp|print_ptr\(1) & ((\disp|Mux5~10_combout\ & (\disp|r_buffer[7][2]~q\)) # (!\disp|Mux5~10_combout\ & ((\disp|r_buffer[6][2]~q\))))) # (!\disp|print_ptr\(1) & (((\disp|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[7][2]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[6][2]~q\,
	datad => \disp|Mux5~10_combout\,
	combout => \disp|Mux5~11_combout\);

-- Location: LCCOMB_X22_Y20_N2
\disp|Mux5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~12_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[10][2]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[8][2]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[8][2]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[10][2]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux5~12_combout\);

-- Location: LCCOMB_X22_Y20_N28
\disp|Mux5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~13_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux5~12_combout\ & (\disp|r_buffer[11][2]~q\)) # (!\disp|Mux5~12_combout\ & ((\disp|r_buffer[9][2]~q\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[11][2]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[9][2]~q\,
	datad => \disp|Mux5~12_combout\,
	combout => \disp|Mux5~13_combout\);

-- Location: LCCOMB_X19_Y15_N28
\disp|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~14_combout\ = (\disp|print_ptr\(1) & (((\disp|r_buffer[2][2]~q\) # (\disp|print_ptr\(0))))) # (!\disp|print_ptr\(1) & (\disp|r_buffer[0][2]~q\ & ((!\disp|print_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[0][2]~q\,
	datab => \disp|print_ptr\(1),
	datac => \disp|r_buffer[2][2]~q\,
	datad => \disp|print_ptr\(0),
	combout => \disp|Mux5~14_combout\);

-- Location: LCCOMB_X19_Y15_N6
\disp|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~15_combout\ = (\disp|print_ptr\(0) & ((\disp|Mux5~14_combout\ & (\disp|r_buffer[3][2]~q\)) # (!\disp|Mux5~14_combout\ & ((\disp|r_buffer[1][2]~q\))))) # (!\disp|print_ptr\(0) & (((\disp|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[3][2]~q\,
	datab => \disp|print_ptr\(0),
	datac => \disp|r_buffer[1][2]~q\,
	datad => \disp|Mux5~14_combout\,
	combout => \disp|Mux5~15_combout\);

-- Location: LCCOMB_X19_Y15_N20
\disp|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~16_combout\ = (\disp|print_ptr\(2) & (\disp|print_ptr\(3))) # (!\disp|print_ptr\(2) & ((\disp|print_ptr\(3) & (\disp|Mux5~13_combout\)) # (!\disp|print_ptr\(3) & ((\disp|Mux5~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|print_ptr\(3),
	datac => \disp|Mux5~13_combout\,
	datad => \disp|Mux5~15_combout\,
	combout => \disp|Mux5~16_combout\);

-- Location: LCCOMB_X19_Y15_N30
\disp|Mux5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~19_combout\ = (\disp|print_ptr\(2) & ((\disp|Mux5~16_combout\ & (\disp|Mux5~18_combout\)) # (!\disp|Mux5~16_combout\ & ((\disp|Mux5~11_combout\))))) # (!\disp|print_ptr\(2) & (((\disp|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(2),
	datab => \disp|Mux5~18_combout\,
	datac => \disp|Mux5~11_combout\,
	datad => \disp|Mux5~16_combout\,
	combout => \disp|Mux5~19_combout\);

-- Location: LCCOMB_X22_Y19_N14
\disp|Mux5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~20_combout\ = (!\disp|print_ptr\(5) & ((\disp|print_ptr\(4) & (\disp|Mux5~9_combout\)) # (!\disp|print_ptr\(4) & ((\disp|Mux5~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(4),
	datab => \disp|Mux5~9_combout\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux5~19_combout\,
	combout => \disp|Mux5~20_combout\);

-- Location: LCCOMB_X22_Y22_N30
\disp|Mux5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux5~21_combout\ = (\disp|Mux5~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datac => \disp|Mux5~20_combout\,
	datad => \disp|r_buffer[32][2]~q\,
	combout => \disp|Mux5~21_combout\);

-- Location: LCCOMB_X23_Y23_N10
\disp|char_ptr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~15_combout\ = (!\disp|Mux5~21_combout\ & (!\disp|Mux6~21_combout\ & !\disp|Mux7~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux7~21_combout\,
	combout => \disp|char_ptr~15_combout\);

-- Location: LCCOMB_X23_Y23_N12
\disp|char_ptr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~16_combout\ = (!\disp|Mux3~21_combout\ & (!\disp|Mux4~21_combout\ & \disp|char_ptr~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux3~21_combout\,
	datac => \disp|Mux4~21_combout\,
	datad => \disp|char_ptr~15_combout\,
	combout => \disp|char_ptr~16_combout\);

-- Location: LCCOMB_X23_Y23_N14
\disp|char_ptr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~43_combout\ = (\disp|char_ptr~6_combout\ & (\disp|Mux2~21_combout\ & (!\disp|Mux1~21_combout\ & \disp|char_ptr~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~6_combout\,
	datab => \disp|Mux2~21_combout\,
	datac => \disp|Mux1~21_combout\,
	datad => \disp|char_ptr~16_combout\,
	combout => \disp|char_ptr~43_combout\);

-- Location: LCCOMB_X23_Y23_N18
\disp|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux13~1_combout\ = (\disp|Mux3~21_combout\ & (\disp|Mux4~21_combout\ & ((\disp|Mux5~21_combout\) # (\disp|Mux6~21_combout\)))) # (!\disp|Mux3~21_combout\ & ((\disp|Mux5~21_combout\) # ((\disp|Mux6~21_combout\) # (\disp|Mux4~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~21_combout\,
	datab => \disp|Mux3~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux4~21_combout\,
	combout => \disp|Mux13~1_combout\);

-- Location: LCCOMB_X23_Y23_N26
\disp|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux13~0_combout\ = (\disp|Mux4~21_combout\ & (((!\disp|Mux3~21_combout\)) # (!\disp|Mux5~21_combout\))) # (!\disp|Mux4~21_combout\ & ((\disp|Mux5~21_combout\) # ((\disp|Mux6~21_combout\) # (\disp|Mux3~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~21_combout\,
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux3~21_combout\,
	combout => \disp|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y23_N8
\disp|char_ptr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~14_combout\ = (\disp|char_ptr~6_combout\ & (\disp|Mux2~21_combout\ $ (\disp|Mux1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datac => \disp|Mux1~21_combout\,
	datad => \disp|char_ptr~6_combout\,
	combout => \disp|char_ptr~14_combout\);

-- Location: LCCOMB_X23_Y23_N4
\disp|char_ptr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~17_combout\ = (!\disp|Mux2~21_combout\ & (!\disp|Mux7~21_combout\ & (\disp|Mux13~0_combout\ & \disp|char_ptr~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datab => \disp|Mux7~21_combout\,
	datac => \disp|Mux13~0_combout\,
	datad => \disp|char_ptr~14_combout\,
	combout => \disp|char_ptr~17_combout\);

-- Location: LCCOMB_X23_Y23_N0
\disp|char_ptr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~18_combout\ = (\disp|char_ptr~17_combout\) # ((\disp|char_ptr~6_combout\ & (!\disp|Mux13~1_combout\ & \disp|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~6_combout\,
	datab => \disp|Mux13~1_combout\,
	datac => \disp|char_ptr~17_combout\,
	datad => \disp|Mux10~4_combout\,
	combout => \disp|char_ptr~18_combout\);

-- Location: LCCOMB_X23_Y23_N24
\disp|char_ptr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~19_combout\ = (\disp|char_ptr~43_combout\) # ((\disp|char_ptr~18_combout\) # ((\disp|char_ptr~11_combout\ & \disp|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~11_combout\,
	datab => \disp|Add6~4_combout\,
	datac => \disp|char_ptr~43_combout\,
	datad => \disp|char_ptr~18_combout\,
	combout => \disp|char_ptr~19_combout\);

-- Location: LCCOMB_X26_Y21_N20
\disp|char_ptr[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr[5]~13_combout\ = (\i_I2C_reset~input_o\) # ((\disp|state.transmit~q\ & ((!\disp|o_display_data[3]~5_combout\))) # (!\disp|state.transmit~q\ & (\disp|state.CharSelect~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|state.CharSelect~q\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|o_display_data[3]~5_combout\,
	combout => \disp|char_ptr[5]~13_combout\);

-- Location: FF_X23_Y23_N25
\disp|char_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~19_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(2));

-- Location: LCCOMB_X26_Y23_N10
\disp|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~6_combout\ = (\disp|char_ptr\(3) & (!\disp|Add6~5\)) # (!\disp|char_ptr\(3) & ((\disp|Add6~5\) # (GND)))
-- \disp|Add6~7\ = CARRY((!\disp|Add6~5\) # (!\disp|char_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datad => VCC,
	cin => \disp|Add6~5\,
	combout => \disp|Add6~6_combout\,
	cout => \disp|Add6~7\);

-- Location: LCCOMB_X22_Y23_N16
\disp|char_ptr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~20_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|Equal4~10_combout\ & (\disp|Add6~6_combout\ & \disp|state.transmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|Equal4~10_combout\,
	datac => \disp|Add6~6_combout\,
	datad => \disp|state.transmit~q\,
	combout => \disp|char_ptr~20_combout\);

-- Location: LCCOMB_X23_Y24_N16
\disp|Mux12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux12~8_combout\ = (\disp|Mux3~21_combout\ & ((\disp|Mux4~20_combout\) # ((\disp|r_buffer[32][3]~q\ & \disp|print_ptr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~20_combout\,
	datab => \disp|r_buffer[32][3]~q\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux3~21_combout\,
	combout => \disp|Mux12~8_combout\);

-- Location: LCCOMB_X23_Y22_N8
\disp|char_ptr~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~21_combout\ = (\disp|Mux2~21_combout\ & (!\disp|Mux5~21_combout\ & (\disp|Mux12~8_combout\ & !\disp|Mux7~21_combout\))) # (!\disp|Mux2~21_combout\ & (((!\disp|Mux12~8_combout\ & \disp|Mux7~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux12~8_combout\,
	datad => \disp|Mux7~21_combout\,
	combout => \disp|char_ptr~21_combout\);

-- Location: LCCOMB_X23_Y22_N26
\disp|char_ptr~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~22_combout\ = (\disp|char_ptr~20_combout\) # ((\disp|Mux6~21_combout\ & (\disp|char_ptr~21_combout\ & \disp|char_ptr~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~20_combout\,
	datab => \disp|Mux6~21_combout\,
	datac => \disp|char_ptr~21_combout\,
	datad => \disp|char_ptr~14_combout\,
	combout => \disp|char_ptr~22_combout\);

-- Location: LCCOMB_X23_Y23_N22
\disp|Mux12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux12~5_combout\ = (\disp|Mux3~21_combout\ & (\disp|Mux5~21_combout\ & \disp|Mux4~21_combout\)) # (!\disp|Mux3~21_combout\ & ((\disp|Mux5~21_combout\) # (\disp|Mux4~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux3~21_combout\,
	datac => \disp|Mux5~21_combout\,
	datad => \disp|Mux4~21_combout\,
	combout => \disp|Mux12~5_combout\);

-- Location: LCCOMB_X23_Y23_N20
\disp|Mux12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux12~6_combout\ = (\disp|Mux2~21_combout\ & (!\disp|Mux12~5_combout\ & ((\disp|Mux3~21_combout\) # (\disp|Mux7~21_combout\)))) # (!\disp|Mux2~21_combout\ & (!\disp|Mux7~21_combout\ & (\disp|Mux3~21_combout\ $ (\disp|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datab => \disp|Mux3~21_combout\,
	datac => \disp|Mux12~5_combout\,
	datad => \disp|Mux7~21_combout\,
	combout => \disp|Mux12~6_combout\);

-- Location: LCCOMB_X23_Y22_N12
\disp|Mux12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux12~7_combout\ = (\disp|Mux12~6_combout\ & (\disp|Mux1~21_combout\ $ (\disp|Mux2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux2~21_combout\,
	datad => \disp|Mux12~6_combout\,
	combout => \disp|Mux12~7_combout\);

-- Location: LCCOMB_X23_Y22_N0
\disp|char_ptr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~23_combout\ = (\disp|char_ptr~22_combout\) # ((\disp|char_ptr~6_combout\ & (!\disp|Mux6~21_combout\ & \disp|Mux12~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~6_combout\,
	datab => \disp|Mux6~21_combout\,
	datac => \disp|char_ptr~22_combout\,
	datad => \disp|Mux12~7_combout\,
	combout => \disp|char_ptr~23_combout\);

-- Location: FF_X23_Y22_N1
\disp|char_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~23_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(3));

-- Location: LCCOMB_X26_Y23_N12
\disp|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~8_combout\ = (\disp|char_ptr\(4) & (\disp|Add6~7\ $ (GND))) # (!\disp|char_ptr\(4) & (!\disp|Add6~7\ & VCC))
-- \disp|Add6~9\ = CARRY((\disp|char_ptr\(4) & !\disp|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(4),
	datad => VCC,
	cin => \disp|Add6~7\,
	combout => \disp|Add6~8_combout\,
	cout => \disp|Add6~9\);

-- Location: LCCOMB_X23_Y22_N22
\disp|Mux11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~10_combout\ = (\disp|Mux6~21_combout\) # ((\disp|Mux7~20_combout\) # ((\disp|r_buffer[32][0]~q\ & \disp|print_ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_buffer[32][0]~q\,
	datab => \disp|print_ptr\(5),
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux7~20_combout\,
	combout => \disp|Mux11~10_combout\);

-- Location: LCCOMB_X23_Y22_N28
\disp|Mux11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~6_combout\ = (\disp|Mux5~21_combout\ & (\disp|Mux11~10_combout\ & ((!\disp|Mux4~21_combout\) # (!\disp|Mux3~21_combout\)))) # (!\disp|Mux5~21_combout\ & (!\disp|Mux11~10_combout\ & ((\disp|Mux3~21_combout\) # (\disp|Mux4~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux11~10_combout\,
	datad => \disp|Mux4~21_combout\,
	combout => \disp|Mux11~6_combout\);

-- Location: LCCOMB_X23_Y22_N6
\disp|Mux11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~7_combout\ = (\disp|Mux1~21_combout\ & (!\disp|Mux2~21_combout\ & \disp|Mux11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux2~21_combout\,
	datad => \disp|Mux11~6_combout\,
	combout => \disp|Mux11~7_combout\);

-- Location: LCCOMB_X23_Y22_N24
\disp|Mux11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~8_combout\ = (\disp|Mux3~21_combout\ & (\disp|Mux6~21_combout\ $ (\disp|Mux5~21_combout\))) # (!\disp|Mux3~21_combout\ & (!\disp|Mux6~21_combout\ & !\disp|Mux5~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux5~21_combout\,
	combout => \disp|Mux11~8_combout\);

-- Location: LCCOMB_X23_Y22_N4
\disp|Mux12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux12~4_combout\ = (!\disp|Mux1~21_combout\ & (\disp|Mux2~21_combout\ & !\disp|Mux4~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux2~21_combout\,
	datad => \disp|Mux4~21_combout\,
	combout => \disp|Mux12~4_combout\);

-- Location: LCCOMB_X23_Y24_N10
\disp|Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~4_combout\ = (!\disp|Mux7~21_combout\ & (!\disp|Mux5~21_combout\ & (\disp|Mux3~21_combout\ $ (!\disp|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datab => \disp|Mux2~21_combout\,
	datac => \disp|Mux7~21_combout\,
	datad => \disp|Mux5~21_combout\,
	combout => \disp|Mux11~4_combout\);

-- Location: LCCOMB_X23_Y22_N18
\disp|Mux11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~5_combout\ = (\disp|Mux4~21_combout\ & (!\disp|Mux1~21_combout\ & (\disp|Mux6~21_combout\ & \disp|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~21_combout\,
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux11~4_combout\,
	combout => \disp|Mux11~5_combout\);

-- Location: LCCOMB_X23_Y22_N10
\disp|Mux11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux11~9_combout\ = (\disp|Mux11~7_combout\) # ((\disp|Mux11~5_combout\) # ((\disp|Mux11~8_combout\ & \disp|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux11~7_combout\,
	datab => \disp|Mux11~8_combout\,
	datac => \disp|Mux12~4_combout\,
	datad => \disp|Mux11~5_combout\,
	combout => \disp|Mux11~9_combout\);

-- Location: LCCOMB_X23_Y22_N30
\disp|char_ptr~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~24_combout\ = (\disp|char_ptr~6_combout\ & ((\disp|Mux11~9_combout\) # ((\disp|char_ptr~11_combout\ & \disp|Add6~8_combout\)))) # (!\disp|char_ptr~6_combout\ & (\disp|char_ptr~11_combout\ & (\disp|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~6_combout\,
	datab => \disp|char_ptr~11_combout\,
	datac => \disp|Add6~8_combout\,
	datad => \disp|Mux11~9_combout\,
	combout => \disp|char_ptr~24_combout\);

-- Location: FF_X23_Y22_N31
\disp|char_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~24_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(4));

-- Location: LCCOMB_X26_Y23_N14
\disp|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~10_combout\ = (\disp|char_ptr\(5) & (!\disp|Add6~9\)) # (!\disp|char_ptr\(5) & ((\disp|Add6~9\) # (GND)))
-- \disp|Add6~11\ = CARRY((!\disp|Add6~9\) # (!\disp|char_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \disp|char_ptr\(5),
	datad => VCC,
	cin => \disp|Add6~9\,
	combout => \disp|Add6~10_combout\,
	cout => \disp|Add6~11\);

-- Location: LCCOMB_X23_Y24_N28
\disp|char_ptr~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~28_combout\ = (\disp|Mux5~21_combout\ & ((\disp|Mux4~20_combout\) # ((\disp|r_buffer[32][3]~q\ & \disp|print_ptr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~20_combout\,
	datab => \disp|r_buffer[32][3]~q\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux5~21_combout\,
	combout => \disp|char_ptr~28_combout\);

-- Location: LCCOMB_X22_Y23_N26
\disp|char_ptr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~29_combout\ = (\disp|char_ptr~27_combout\) # ((\disp|state.transmit~q\ & (\disp|Add6~10_combout\)) # (!\disp|state.transmit~q\ & ((\disp|char_ptr~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|char_ptr~27_combout\,
	datac => \disp|Add6~10_combout\,
	datad => \disp|char_ptr~28_combout\,
	combout => \disp|char_ptr~29_combout\);

-- Location: LCCOMB_X23_Y23_N30
\disp|char_ptr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~30_combout\ = (\disp|Mux2~21_combout\ & ((\disp|Mux5~21_combout\ & ((!\disp|Mux3~21_combout\) # (!\disp|Mux6~21_combout\))) # (!\disp|Mux5~21_combout\ & ((\disp|Mux6~21_combout\) # (\disp|Mux3~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux2~21_combout\,
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux6~21_combout\,
	datad => \disp|Mux3~21_combout\,
	combout => \disp|char_ptr~30_combout\);

-- Location: LCCOMB_X23_Y23_N16
\disp|char_ptr~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~31_combout\ = (\disp|char_ptr~30_combout\) # ((\disp|Mux1~21_combout\ & ((\disp|Mux2~21_combout\) # (\disp|char_ptr~15_combout\))) # (!\disp|Mux1~21_combout\ & (!\disp|Mux2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux1~21_combout\,
	datab => \disp|Mux2~21_combout\,
	datac => \disp|char_ptr~30_combout\,
	datad => \disp|char_ptr~15_combout\,
	combout => \disp|char_ptr~31_combout\);

-- Location: LCCOMB_X22_Y23_N0
\disp|char_ptr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~32_combout\ = (\disp|char_ptr~29_combout\) # ((!\disp|state.transmit~q\ & (!\disp|Mux4~21_combout\ & \disp|char_ptr~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|Mux4~21_combout\,
	datac => \disp|char_ptr~29_combout\,
	datad => \disp|char_ptr~31_combout\,
	combout => \disp|char_ptr~32_combout\);

-- Location: LCCOMB_X22_Y23_N12
\disp|char_ptr~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~33_combout\ = (!\i_I2C_reset~input_o\ & (!\disp|o_display_data[3]~4_combout\ & ((\disp|char_ptr~26_combout\) # (\disp|char_ptr~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|o_display_data[3]~4_combout\,
	datac => \disp|char_ptr~26_combout\,
	datad => \disp|char_ptr~32_combout\,
	combout => \disp|char_ptr~33_combout\);

-- Location: FF_X22_Y23_N13
\disp|char_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~33_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(5));

-- Location: LCCOMB_X26_Y23_N16
\disp|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~12_combout\ = (\disp|char_ptr\(6) & (\disp|Add6~11\ $ (GND))) # (!\disp|char_ptr\(6) & (!\disp|Add6~11\ & VCC))
-- \disp|Add6~13\ = CARRY((\disp|char_ptr\(6) & !\disp|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(6),
	datad => VCC,
	cin => \disp|Add6~11\,
	combout => \disp|Add6~12_combout\,
	cout => \disp|Add6~13\);

-- Location: LCCOMB_X23_Y24_N14
\disp|char_ptr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~42_combout\ = (!\disp|Mux4~20_combout\ & (\disp|Mux3~21_combout\ & ((!\disp|print_ptr\(5)) # (!\disp|r_buffer[32][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux4~20_combout\,
	datab => \disp|r_buffer[32][3]~q\,
	datac => \disp|print_ptr\(5),
	datad => \disp|Mux3~21_combout\,
	combout => \disp|char_ptr~42_combout\);

-- Location: LCCOMB_X23_Y24_N22
\disp|char_ptr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~8_combout\ = (\disp|char_ptr~6_combout\ & (\disp|Mux1~21_combout\ & !\disp|Mux2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~6_combout\,
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux2~21_combout\,
	combout => \disp|char_ptr~8_combout\);

-- Location: LCCOMB_X23_Y24_N0
\disp|char_ptr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~9_combout\ = (\disp|Mux7~21_combout\ & ((\disp|char_ptr~42_combout\) # ((!\disp|Mux6~21_combout\ & \disp|Mux12~8_combout\)))) # (!\disp|Mux7~21_combout\ & ((\disp|Mux12~8_combout\) # ((\disp|Mux6~21_combout\ & \disp|char_ptr~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux7~21_combout\,
	datab => \disp|Mux6~21_combout\,
	datac => \disp|char_ptr~42_combout\,
	datad => \disp|Mux12~8_combout\,
	combout => \disp|char_ptr~9_combout\);

-- Location: LCCOMB_X23_Y24_N2
\disp|char_ptr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~10_combout\ = (\disp|char_ptr~8_combout\ & ((\disp|Mux5~21_combout\ & (\disp|char_ptr~42_combout\)) # (!\disp|Mux5~21_combout\ & ((\disp|char_ptr~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~21_combout\,
	datab => \disp|char_ptr~42_combout\,
	datac => \disp|char_ptr~8_combout\,
	datad => \disp|char_ptr~9_combout\,
	combout => \disp|char_ptr~10_combout\);

-- Location: LCCOMB_X23_Y22_N20
\disp|Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux10~7_combout\ = (\disp|Mux5~21_combout\ & ((\disp|Mux6~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|Mux5~21_combout\,
	datac => \disp|r_buffer[32][1]~q\,
	datad => \disp|Mux6~20_combout\,
	combout => \disp|Mux10~7_combout\);

-- Location: LCCOMB_X23_Y22_N16
\disp|char_ptr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~7_combout\ = (\disp|Mux3~21_combout\ & (!\disp|Mux10~7_combout\ & (\disp|Mux12~4_combout\ & \disp|char_ptr~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datab => \disp|Mux10~7_combout\,
	datac => \disp|Mux12~4_combout\,
	datad => \disp|char_ptr~6_combout\,
	combout => \disp|char_ptr~7_combout\);

-- Location: LCCOMB_X24_Y23_N8
\disp|char_ptr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~12_combout\ = (\disp|char_ptr~10_combout\) # ((\disp|char_ptr~7_combout\) # ((\disp|char_ptr~11_combout\ & \disp|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~11_combout\,
	datab => \disp|Add6~12_combout\,
	datac => \disp|char_ptr~10_combout\,
	datad => \disp|char_ptr~7_combout\,
	combout => \disp|char_ptr~12_combout\);

-- Location: FF_X24_Y23_N9
\disp|char_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~12_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(6));

-- Location: LCCOMB_X27_Y23_N0
\disp|r_chars~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~18_combout\ = (!\disp|char_ptr\(5) & (!\disp|char_ptr\(2) & (!\disp|char_ptr\(3) & \disp|char_ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(3),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~18_combout\);

-- Location: LCCOMB_X22_Y22_N10
\disp|char_ptr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~35_combout\ = (!\disp|state.transmit~q\ & ((\disp|Mux1~20_combout\) # ((\disp|print_ptr\(5) & \disp|r_buffer[32][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|print_ptr\(5),
	datab => \disp|state.transmit~q\,
	datac => \disp|Mux1~20_combout\,
	datad => \disp|r_buffer[32][6]~q\,
	combout => \disp|char_ptr~35_combout\);

-- Location: LCCOMB_X26_Y23_N0
\disp|char_ptr~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~34_combout\ = (!\i_I2C_reset~input_o\ & ((!\disp|state.transmit~q\) # (!\disp|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_I2C_reset~input_o\,
	datac => \disp|Equal4~10_combout\,
	datad => \disp|state.transmit~q\,
	combout => \disp|char_ptr~34_combout\);

-- Location: LCCOMB_X26_Y23_N18
\disp|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Add6~14_combout\ = \disp|Add6~13\ $ (\disp|char_ptr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \disp|char_ptr\(7),
	cin => \disp|Add6~13\,
	combout => \disp|Add6~14_combout\);

-- Location: LCCOMB_X26_Y23_N22
\disp|char_ptr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~38_combout\ = (\disp|state.transmit~q\ & \disp|Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datad => \disp|Add6~14_combout\,
	combout => \disp|char_ptr~38_combout\);

-- Location: LCCOMB_X22_Y23_N18
\disp|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux8~1_combout\ = (\disp|Mux3~21_combout\ & (!\disp|Mux4~21_combout\ & ((!\disp|Mux6~21_combout\) # (!\disp|Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux3~21_combout\,
	datab => \disp|Mux5~21_combout\,
	datac => \disp|Mux4~21_combout\,
	datad => \disp|Mux6~21_combout\,
	combout => \disp|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y23_N4
\disp|char_ptr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~37_combout\ = (!\disp|state.transmit~q\ & (!\disp|Mux1~21_combout\ & ((!\disp|Mux8~1_combout\) # (!\disp|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|Mux1~21_combout\,
	datac => \disp|Mux2~21_combout\,
	datad => \disp|Mux8~1_combout\,
	combout => \disp|char_ptr~37_combout\);

-- Location: LCCOMB_X23_Y23_N6
\disp|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Mux8~0_combout\ = (\disp|Mux4~21_combout\ & ((\disp|Mux5~21_combout\) # ((\disp|Mux6~21_combout\ & \disp|Mux7~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Mux5~21_combout\,
	datab => \disp|Mux6~21_combout\,
	datac => \disp|Mux4~21_combout\,
	datad => \disp|Mux7~21_combout\,
	combout => \disp|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y23_N28
\disp|char_ptr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~36_combout\ = (\disp|char_ptr~35_combout\ & ((\disp|Mux2~21_combout\) # ((\disp|Mux3~21_combout\ & \disp|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~35_combout\,
	datab => \disp|Mux3~21_combout\,
	datac => \disp|Mux2~21_combout\,
	datad => \disp|Mux8~0_combout\,
	combout => \disp|char_ptr~36_combout\);

-- Location: LCCOMB_X22_Y23_N6
\disp|char_ptr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~39_combout\ = (\disp|char_ptr~38_combout\) # ((\disp|char_ptr~27_combout\) # ((\disp|char_ptr~37_combout\) # (\disp|char_ptr~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~38_combout\,
	datab => \disp|char_ptr~27_combout\,
	datac => \disp|char_ptr~37_combout\,
	datad => \disp|char_ptr~36_combout\,
	combout => \disp|char_ptr~39_combout\);

-- Location: LCCOMB_X23_Y23_N2
\disp|char_ptr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|char_ptr~40_combout\ = (\disp|char_ptr~34_combout\ & ((\disp|char_ptr~39_combout\) # ((\disp|char_ptr~35_combout\ & \disp|char_ptr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr~35_combout\,
	datab => \disp|char_ptr~34_combout\,
	datac => \disp|char_ptr~39_combout\,
	datad => \disp|char_ptr~16_combout\,
	combout => \disp|char_ptr~40_combout\);

-- Location: FF_X23_Y23_N3
\disp|char_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|char_ptr~40_combout\,
	ena => \disp|char_ptr[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|char_ptr\(7));

-- Location: LCCOMB_X26_Y23_N30
\disp|r_chars~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~19_combout\ = (!\disp|char_ptr\(6) & (\disp|r_chars~18_combout\ & \disp|char_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(6),
	datac => \disp|r_chars~18_combout\,
	datad => \disp|char_ptr\(7),
	combout => \disp|r_chars~19_combout\);

-- Location: LCCOMB_X27_Y23_N4
\disp|r_chars~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~21_combout\ = \disp|char_ptr\(5) $ (((\disp|char_ptr\(2) & (\disp|char_ptr\(3) & \disp|char_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(3),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~21_combout\);

-- Location: LCCOMB_X27_Y23_N2
\disp|r_chars~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~20_combout\ = (\disp|char_ptr\(5) & (!\disp|char_ptr\(2) & (!\disp|char_ptr\(3) & !\disp|char_ptr\(4)))) # (!\disp|char_ptr\(5) & (\disp|char_ptr\(3) & ((!\disp|char_ptr\(4)) # (!\disp|char_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(3),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~20_combout\);

-- Location: LCCOMB_X27_Y23_N22
\disp|r_chars~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~22_combout\ = (!\disp|char_ptr\(6) & ((\disp|char_ptr\(7) & ((\disp|r_chars~20_combout\))) # (!\disp|char_ptr\(7) & (\disp|r_chars~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(6),
	datab => \disp|char_ptr\(7),
	datac => \disp|r_chars~21_combout\,
	datad => \disp|r_chars~20_combout\,
	combout => \disp|r_chars~22_combout\);

-- Location: LCCOMB_X27_Y23_N12
\disp|r_chars~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~23_combout\ = (\disp|char_ptr\(5) & (((!\disp|char_ptr\(3) & !\disp|char_ptr\(4))))) # (!\disp|char_ptr\(5) & (\disp|char_ptr\(2) & (\disp|char_ptr\(3) & \disp|char_ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(3),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~23_combout\);

-- Location: LCCOMB_X27_Y23_N6
\disp|r_chars~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~24_combout\ = (\disp|r_chars~22_combout\) # ((\disp|char_ptr\(6) & (!\disp|char_ptr\(7) & \disp|r_chars~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(6),
	datab => \disp|char_ptr\(7),
	datac => \disp|r_chars~22_combout\,
	datad => \disp|r_chars~23_combout\,
	combout => \disp|r_chars~24_combout\);

-- Location: LCCOMB_X26_Y23_N28
\disp|o_display_data[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[7]~0_combout\ = (\disp|char_ptr\(1) & ((\disp|r_chars~24_combout\))) # (!\disp|char_ptr\(1) & (\disp|r_chars~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_chars~19_combout\,
	datab => \disp|char_ptr\(1),
	datad => \disp|r_chars~24_combout\,
	combout => \disp|o_display_data[7]~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\disp|r_init~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~5_combout\ = (\disp|init_ptr\(3) & (!\disp|init_ptr\(1) & ((!\disp|init_ptr\(4)) # (!\disp|init_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~5_combout\);

-- Location: LCCOMB_X26_Y21_N6
\disp|o_display_data[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[7]~6_combout\ = (!\i_I2C_reset~input_o\ & ((\disp|Selector14~4_combout\) # ((\disp|state.transmit~q\ & !\disp|o_display_data[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \disp|Selector14~4_combout\,
	datac => \i_I2C_reset~input_o\,
	datad => \disp|o_display_data[3]~5_combout\,
	combout => \disp|o_display_data[7]~6_combout\);

-- Location: FF_X26_Y23_N29
\disp|o_display_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|o_display_data[7]~0_combout\,
	asdata => \disp|r_init~5_combout\,
	sclr => \disp|o_display_data[3]~4_combout\,
	sload => \disp|ALT_INV_state.transmit~q\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(7));

-- Location: LCCOMB_X19_Y22_N30
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|w_ack_cnt\(0) & (\disp|o_display_data\(7) & (\inst|state.exe_cmd~q\ & !\inst|w_ack_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(0),
	datab => \disp|o_display_data\(7),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(1),
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\inst|w_data_txrx[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_txrx[7]~0_combout\ = (\inst|state.exe_cmd~q\ & (\inst|Equal1~0_combout\ & ((\inst|w_ack_cnt\(0)) # (!\inst|w_ack_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.exe_cmd~q\,
	datab => \inst|w_ack_cnt\(1),
	datac => \inst|Equal1~0_combout\,
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|w_data_txrx[7]~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst|w_data_txrx[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_txrx[7]~1_combout\ = (\inst|process_1~0_combout\ & (!\disp|o_display_reset~q\ & ((\inst|w_data_txrx[7]~0_combout\) # (\inst|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx[7]~0_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \disp|o_display_reset~q\,
	datad => \inst|Selector11~0_combout\,
	combout => \inst|w_data_txrx[7]~1_combout\);

-- Location: FF_X19_Y22_N31
\inst|w_data_txrx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(7));

-- Location: LCCOMB_X21_Y21_N10
\inst|o_I2C_sda_txrx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~3_combout\ = (\inst|state.stop~q\) # ((\inst|w_data_txrx\(7) & ((\inst|state.start~q\) # (\inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.stop~q\,
	datab => \inst|w_data_txrx\(7),
	datac => \inst|state.start~q\,
	datad => \inst|state.slv_ack2~q\,
	combout => \inst|o_I2C_sda_txrx~3_combout\);

-- Location: LCCOMB_X24_Y22_N18
\disp|r_chars~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~8_combout\ = (\disp|char_ptr\(3) & (!\disp|char_ptr\(6) & (!\disp|char_ptr\(2)))) # (!\disp|char_ptr\(3) & ((\disp|char_ptr\(2)) # ((\disp|char_ptr\(6) & \disp|char_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datab => \disp|char_ptr\(6),
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~8_combout\);

-- Location: LCCOMB_X24_Y22_N28
\disp|r_chars~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~9_combout\ = (\disp|char_ptr\(5) & (\disp|r_chars~8_combout\)) # (!\disp|char_ptr\(5) & ((\disp|char_ptr\(2) $ (\disp|char_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|r_chars~8_combout\,
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(3),
	combout => \disp|r_chars~9_combout\);

-- Location: LCCOMB_X24_Y22_N2
\disp|r_chars~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~2_combout\ = ((!\disp|char_ptr\(3) & !\disp|char_ptr\(4))) # (!\disp|char_ptr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datab => \disp|char_ptr\(6),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~2_combout\);

-- Location: LCCOMB_X24_Y22_N6
\disp|r_chars~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~10_combout\ = (\disp|char_ptr\(1) & (\disp|r_chars~9_combout\)) # (!\disp|char_ptr\(1) & (((\disp|char_ptr\(5) & !\disp|r_chars~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(1),
	datab => \disp|r_chars~9_combout\,
	datac => \disp|char_ptr\(5),
	datad => \disp|r_chars~2_combout\,
	combout => \disp|r_chars~10_combout\);

-- Location: LCCOMB_X24_Y22_N30
\disp|r_chars~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~12_combout\ = (\disp|char_ptr\(4) & ((\disp|char_ptr\(2) & (\disp|char_ptr\(1))) # (!\disp|char_ptr\(2) & ((!\disp|char_ptr\(3)))))) # (!\disp|char_ptr\(4) & (\disp|char_ptr\(1) & ((\disp|char_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(1),
	datab => \disp|char_ptr\(4),
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(3),
	combout => \disp|r_chars~12_combout\);

-- Location: LCCOMB_X24_Y22_N16
\disp|r_chars~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~11_combout\ = (\disp|char_ptr\(5) & (!\disp|char_ptr\(4) & (!\disp|char_ptr\(2) & !\disp|char_ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(4),
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(3),
	combout => \disp|r_chars~11_combout\);

-- Location: LCCOMB_X24_Y22_N20
\disp|r_chars~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~13_combout\ = (!\disp|char_ptr\(6) & ((\disp|r_chars~11_combout\) # ((!\disp|char_ptr\(5) & !\disp|r_chars~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(6),
	datac => \disp|r_chars~12_combout\,
	datad => \disp|r_chars~11_combout\,
	combout => \disp|r_chars~13_combout\);

-- Location: LCCOMB_X24_Y23_N20
\disp|o_display_data[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[5]~2_combout\ = (\disp|char_ptr\(7) & ((\disp|r_chars~13_combout\))) # (!\disp|char_ptr\(7) & (\disp|r_chars~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_chars~10_combout\,
	datab => \disp|r_chars~13_combout\,
	datad => \disp|char_ptr\(7),
	combout => \disp|o_display_data[5]~2_combout\);

-- Location: LCCOMB_X24_Y23_N26
\disp|r_init~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~3_combout\ = (!\disp|init_ptr\(3) & (((!\disp|init_ptr\(1) & \disp|init_ptr\(2))) # (!\disp|init_ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~3_combout\);

-- Location: FF_X24_Y23_N21
\disp|o_display_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|o_display_data[5]~2_combout\,
	asdata => \disp|r_init~3_combout\,
	sclr => \disp|o_display_data[3]~4_combout\,
	sload => \disp|ALT_INV_state.transmit~q\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(5));

-- Location: LCCOMB_X19_Y22_N12
\inst|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|w_ack_cnt\(0) & (\disp|o_display_data\(5) & (\inst|state.exe_cmd~q\ & !\inst|w_ack_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(0),
	datab => \disp|o_display_data\(5),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(1),
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X19_Y22_N13
\inst|w_data_txrx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(5));

-- Location: LCCOMB_X24_Y22_N26
\disp|r_chars~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~6_combout\ = (\disp|char_ptr\(4) & (!\disp|char_ptr\(5) & (!\disp|char_ptr\(2) & !\disp|char_ptr\(1)))) # (!\disp|char_ptr\(4) & (\disp|char_ptr\(1) & ((!\disp|char_ptr\(2)) # (!\disp|char_ptr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(4),
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(1),
	combout => \disp|r_chars~6_combout\);

-- Location: LCCOMB_X24_Y22_N24
\disp|r_chars~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~7_combout\ = (!\disp|char_ptr\(6) & (\disp|r_chars~6_combout\ & !\disp|char_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp|char_ptr\(6),
	datac => \disp|r_chars~6_combout\,
	datad => \disp|char_ptr\(3),
	combout => \disp|r_chars~7_combout\);

-- Location: LCCOMB_X24_Y22_N0
\disp|r_chars~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~3_combout\ = (\disp|char_ptr\(5) & ((\disp|char_ptr\(6)) # (!\disp|char_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(6),
	datad => \disp|char_ptr\(1),
	combout => \disp|r_chars~3_combout\);

-- Location: LCCOMB_X24_Y22_N22
\disp|r_chars~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~4_combout\ = (\disp|char_ptr\(3) & (\disp|char_ptr\(4) $ (((\disp|char_ptr\(2) & !\disp|r_chars~3_combout\))))) # (!\disp|char_ptr\(3) & (\disp|char_ptr\(4) & ((!\disp|r_chars~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datab => \disp|char_ptr\(4),
	datac => \disp|char_ptr\(2),
	datad => \disp|r_chars~3_combout\,
	combout => \disp|r_chars~4_combout\);

-- Location: LCCOMB_X24_Y22_N12
\disp|r_chars~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~5_combout\ = (\disp|char_ptr\(1) & (((\disp|r_chars~4_combout\)))) # (!\disp|char_ptr\(1) & ((\disp|r_chars~2_combout\) # ((!\disp|r_chars~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(1),
	datab => \disp|r_chars~2_combout\,
	datac => \disp|r_chars~4_combout\,
	datad => \disp|r_chars~3_combout\,
	combout => \disp|r_chars~5_combout\);

-- Location: LCCOMB_X24_Y22_N4
\disp|o_display_data[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[6]~1_combout\ = (\disp|char_ptr\(7) & (\disp|r_chars~7_combout\)) # (!\disp|char_ptr\(7) & ((\disp|r_chars~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(7),
	datab => \disp|r_chars~7_combout\,
	datad => \disp|r_chars~5_combout\,
	combout => \disp|o_display_data[6]~1_combout\);

-- Location: LCCOMB_X24_Y23_N12
\disp|r_init~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~2_combout\ = (!\disp|init_ptr\(1) & (\disp|init_ptr\(2) & (\disp|init_ptr\(3) $ (\disp|init_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~2_combout\);

-- Location: FF_X24_Y22_N5
\disp|o_display_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|o_display_data[6]~1_combout\,
	asdata => \disp|r_init~2_combout\,
	sclr => \disp|o_display_data[3]~4_combout\,
	sload => \disp|ALT_INV_state.transmit~q\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(6));

-- Location: LCCOMB_X19_Y22_N6
\inst|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = ((!\inst|w_ack_cnt\(1) & (\disp|o_display_data\(6) & \inst|w_ack_cnt\(0)))) # (!\inst|state.exe_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(1),
	datab => \disp|o_display_data\(6),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X19_Y22_N7
\inst|w_data_txrx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector2~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(6));

-- Location: LCCOMB_X19_Y22_N14
\inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst|w_data_bit_cnt\(1) & (((\inst|w_data_txrx\(7))) # (!\inst|w_data_bit_cnt\(0)))) # (!\inst|w_data_bit_cnt\(1) & (!\inst|w_data_bit_cnt\(0) & ((\inst|w_data_txrx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_bit_cnt\(1),
	datab => \inst|w_data_bit_cnt\(0),
	datac => \inst|w_data_txrx\(7),
	datad => \inst|w_data_txrx\(6),
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y22_N14
\disp|r_chars~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~16_combout\ = (\disp|char_ptr\(4) & ((\disp|char_ptr\(1) $ (\disp|char_ptr\(2))) # (!\disp|char_ptr\(3)))) # (!\disp|char_ptr\(4) & (\disp|char_ptr\(1) & (!\disp|char_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(1),
	datab => \disp|char_ptr\(4),
	datac => \disp|char_ptr\(2),
	datad => \disp|char_ptr\(3),
	combout => \disp|r_chars~16_combout\);

-- Location: LCCOMB_X24_Y22_N8
\disp|r_chars~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~17_combout\ = (!\disp|char_ptr\(6) & ((\disp|r_chars~11_combout\) # ((!\disp|char_ptr\(5) & !\disp|r_chars~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(5),
	datab => \disp|char_ptr\(6),
	datac => \disp|r_chars~16_combout\,
	datad => \disp|r_chars~11_combout\,
	combout => \disp|r_chars~17_combout\);

-- Location: LCCOMB_X24_Y23_N24
\disp|r_chars~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~14_combout\ = (\disp|char_ptr\(5) & ((\disp|char_ptr\(3) & ((\disp|char_ptr\(6)) # (\disp|char_ptr\(4)))) # (!\disp|char_ptr\(3) & (\disp|char_ptr\(6) & \disp|char_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datab => \disp|char_ptr\(6),
	datac => \disp|char_ptr\(5),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~14_combout\);

-- Location: LCCOMB_X24_Y23_N2
\disp|r_chars~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~15_combout\ = (\disp|char_ptr\(1) & (\disp|char_ptr\(2) $ (((!\disp|r_chars~14_combout\) # (!\disp|char_ptr\(6)))))) # (!\disp|char_ptr\(1) & ((\disp|char_ptr\(6)) # ((\disp|char_ptr\(2) & \disp|r_chars~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(1),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(6),
	datad => \disp|r_chars~14_combout\,
	combout => \disp|r_chars~15_combout\);

-- Location: LCCOMB_X24_Y23_N30
\disp|o_display_data[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[4]~3_combout\ = (\disp|char_ptr\(7) & (\disp|r_chars~17_combout\)) # (!\disp|char_ptr\(7) & ((\disp|r_chars~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(7),
	datab => \disp|r_chars~17_combout\,
	datad => \disp|r_chars~15_combout\,
	combout => \disp|o_display_data[4]~3_combout\);

-- Location: LCCOMB_X24_Y23_N4
\disp|r_init~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~4_combout\ = (!\disp|init_ptr\(3) & (!\disp|init_ptr\(2) & ((!\disp|init_ptr\(4)) # (!\disp|init_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~4_combout\);

-- Location: FF_X24_Y23_N31
\disp|o_display_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|o_display_data[4]~3_combout\,
	asdata => \disp|r_init~4_combout\,
	sclr => \disp|o_display_data[3]~4_combout\,
	sload => \disp|ALT_INV_state.transmit~q\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(4));

-- Location: LCCOMB_X19_Y22_N18
\inst|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst|w_ack_cnt\(1) & (\disp|o_display_data\(4) & (\inst|state.exe_cmd~q\ & \inst|w_ack_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(1),
	datab => \disp|o_display_data\(4),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X19_Y22_N19
\inst|w_data_txrx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(4));

-- Location: LCCOMB_X19_Y22_N8
\inst|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|w_data_bit_cnt~0_combout\ & ((\inst|Mux0~2_combout\ & ((\inst|w_data_txrx\(4)))) # (!\inst|Mux0~2_combout\ & (\inst|w_data_txrx\(5))))) # (!\inst|w_data_bit_cnt~0_combout\ & (((\inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(5),
	datab => \inst|w_data_bit_cnt~0_combout\,
	datac => \inst|Mux0~2_combout\,
	datad => \inst|w_data_txrx\(4),
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y22_N10
\inst|w_data_txrx[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_data_txrx[1]~2_combout\ = !\inst|state.exe_cmd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.exe_cmd~q\,
	combout => \inst|w_data_txrx[1]~2_combout\);

-- Location: FF_X19_Y22_N11
\inst|w_data_txrx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_data_txrx[1]~2_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(1));

-- Location: LCCOMB_X24_Y23_N22
\disp|r_init~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~1_combout\ = (\disp|init_ptr\(4) & ((\disp|init_ptr\(3) & ((!\disp|init_ptr\(2)))) # (!\disp|init_ptr\(3) & (\disp|init_ptr\(1) & \disp|init_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~1_combout\);

-- Location: LCCOMB_X24_Y23_N10
\disp|r_chars~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~0_combout\ = (\disp|char_ptr\(5) & ((\disp|char_ptr\(3)) # ((\disp|char_ptr\(2)) # (\disp|char_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(3),
	datab => \disp|char_ptr\(2),
	datac => \disp|char_ptr\(5),
	datad => \disp|char_ptr\(4),
	combout => \disp|r_chars~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\disp|Selector354~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector354~0_combout\ = (\disp|state.transmit~q\ & (((!\disp|r_chars~0_combout\ & !\disp|char_ptr\(6))) # (!\disp|char_ptr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_chars~0_combout\,
	datab => \disp|state.transmit~q\,
	datac => \disp|char_ptr\(6),
	datad => \disp|char_ptr\(7),
	combout => \disp|Selector354~0_combout\);

-- Location: LCCOMB_X24_Y23_N14
\disp|Selector354~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector354~1_combout\ = (\disp|state.transmit~q\ & (((!\disp|Equal4~10_combout\ & \disp|Selector354~0_combout\)))) # (!\disp|state.transmit~q\ & ((\disp|r_init~1_combout\) # ((\disp|Selector354~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|r_init~1_combout\,
	datab => \disp|state.transmit~q\,
	datac => \disp|Equal4~10_combout\,
	datad => \disp|Selector354~0_combout\,
	combout => \disp|Selector354~1_combout\);

-- Location: FF_X24_Y23_N15
\disp|o_display_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector354~1_combout\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(3));

-- Location: LCCOMB_X19_Y22_N26
\inst|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = ((!\inst|w_ack_cnt\(1) & (\disp|o_display_data\(3) & \inst|w_ack_cnt\(0)))) # (!\inst|state.exe_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(1),
	datab => \disp|o_display_data\(3),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(0),
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X19_Y22_N27
\inst|w_data_txrx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(3));

-- Location: LCCOMB_X24_Y23_N16
\disp|r_init~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_init~0_combout\ = (\disp|init_ptr\(2) & (\disp|init_ptr\(4) & ((\disp|init_ptr\(3)) # (\disp|init_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(3),
	datab => \disp|init_ptr\(1),
	datac => \disp|init_ptr\(2),
	datad => \disp|init_ptr\(4),
	combout => \disp|r_init~0_combout\);

-- Location: LCCOMB_X24_Y23_N6
\disp|Selector355~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector355~0_combout\ = (!\disp|init_ptr\(0) & (!\disp|state.transmit~q\ & !\disp|r_init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|init_ptr\(0),
	datac => \disp|state.transmit~q\,
	datad => \disp|r_init~0_combout\,
	combout => \disp|Selector355~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\disp|Selector355~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector355~1_combout\ = (!\disp|o_display_data[3]~4_combout\ & ((\disp|Selector355~0_combout\) # ((!\disp|char_ptr\(0) & \disp|Selector354~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Selector355~0_combout\,
	datab => \disp|char_ptr\(0),
	datac => \disp|o_display_data[3]~4_combout\,
	datad => \disp|Selector354~0_combout\,
	combout => \disp|Selector355~1_combout\);

-- Location: FF_X24_Y23_N29
\disp|o_display_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|Selector355~1_combout\,
	ena => \disp|o_display_data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(2));

-- Location: LCCOMB_X19_Y22_N28
\inst|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = ((\inst|w_ack_cnt\(0) & (\disp|o_display_data\(2) & !\inst|w_ack_cnt\(1)))) # (!\inst|state.exe_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(0),
	datab => \disp|o_display_data\(2),
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|w_ack_cnt\(1),
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X19_Y22_N29
\inst|w_data_txrx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector6~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(2));

-- Location: LCCOMB_X19_Y22_N22
\inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|w_data_bit_cnt\(0) & (\inst|w_data_txrx\(3) & (\inst|w_data_bit_cnt\(1)))) # (!\inst|w_data_bit_cnt\(0) & (((\inst|w_data_bit_cnt\(1)) # (\inst|w_data_txrx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(3),
	datab => \inst|w_data_bit_cnt\(0),
	datac => \inst|w_data_bit_cnt\(1),
	datad => \inst|w_data_txrx\(2),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y23_N2
\disp|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|Selector14~2_combout\ = (\disp|state.transmit~q\ & !\disp|Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datac => \disp|Equal4~10_combout\,
	combout => \disp|Selector14~2_combout\);

-- Location: LCCOMB_X26_Y23_N26
\disp|r_chars~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|r_chars~1_combout\ = (\disp|char_ptr\(3) & (((\disp|char_ptr\(5))))) # (!\disp|char_ptr\(3) & ((\disp|char_ptr\(2) & ((\disp|char_ptr\(5)))) # (!\disp|char_ptr\(2) & (\disp|char_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(4),
	datab => \disp|char_ptr\(5),
	datac => \disp|char_ptr\(3),
	datad => \disp|char_ptr\(2),
	combout => \disp|r_chars~1_combout\);

-- Location: LCCOMB_X26_Y23_N20
\disp|o_display_data[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[0]~7_combout\ = (\disp|Selector14~2_combout\ & (((!\disp|char_ptr\(6) & !\disp|r_chars~1_combout\)) # (!\disp|char_ptr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|char_ptr\(6),
	datab => \disp|Selector14~2_combout\,
	datac => \disp|r_chars~1_combout\,
	datad => \disp|char_ptr\(7),
	combout => \disp|o_display_data[0]~7_combout\);

-- Location: LCCOMB_X26_Y21_N4
\disp|o_display_data[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[0]~8_combout\ = (\inst|w_busy~q\ & ((\disp|state.transmit~q\ & ((\disp|LessThan9~62_combout\))) # (!\disp|state.transmit~q\ & (\disp|Selector14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|state.transmit~q\,
	datab => \inst|w_busy~q\,
	datac => \disp|Selector14~3_combout\,
	datad => \disp|LessThan9~62_combout\,
	combout => \disp|o_display_data[0]~8_combout\);

-- Location: LCCOMB_X26_Y21_N18
\disp|o_display_data[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[0]~9_combout\ = (\i_I2C_reset~input_o\ & (((\disp|o_display_data\(0))))) # (!\i_I2C_reset~input_o\ & ((\disp|o_display_data[0]~8_combout\ & (\disp|o_display_data[0]~7_combout\)) # (!\disp|o_display_data[0]~8_combout\ & 
-- ((\disp|o_display_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_I2C_reset~input_o\,
	datab => \disp|o_display_data[0]~7_combout\,
	datac => \disp|o_display_data[0]~8_combout\,
	datad => \disp|o_display_data\(0),
	combout => \disp|o_display_data[0]~9_combout\);

-- Location: LCCOMB_X26_Y21_N2
\disp|o_display_data[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \disp|o_display_data[0]~10_combout\ = (\disp|o_display_data[0]~9_combout\) # ((!\disp|Equal5~20_combout\ & (\disp|o_display_data[3]~4_combout\ & \disp|o_display_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp|Equal5~20_combout\,
	datab => \disp|o_display_data[3]~4_combout\,
	datac => \disp|o_display_data\(0),
	datad => \disp|o_display_data[0]~9_combout\,
	combout => \disp|o_display_data[0]~10_combout\);

-- Location: FF_X26_Y21_N3
\disp|o_display_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \disp|o_display_data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp|o_display_data\(0));

-- Location: LCCOMB_X20_Y21_N10
\inst|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst|w_ack_cnt\(1) & (\inst|w_ack_cnt\(0) & (\disp|o_display_data\(0) & \inst|state.exe_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_ack_cnt\(1),
	datab => \inst|w_ack_cnt\(0),
	datac => \disp|o_display_data\(0),
	datad => \inst|state.exe_cmd~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: FF_X20_Y21_N11
\inst|w_data_txrx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|Selector8~0_combout\,
	ena => \inst|w_data_txrx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_data_txrx\(0));

-- Location: LCCOMB_X19_Y22_N24
\inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|w_data_bit_cnt~0_combout\ & ((\inst|Mux0~0_combout\ & ((\inst|w_data_txrx\(0)))) # (!\inst|Mux0~0_combout\ & (\inst|w_data_txrx\(1))))) # (!\inst|w_data_bit_cnt~0_combout\ & (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(1),
	datab => \inst|w_data_bit_cnt~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst|w_data_txrx\(0),
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y21_N24
\inst|o_I2C_sda_txrx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~1_combout\ = (\inst|Equal1~0_combout\) # ((\inst|Add1~0_combout\ & ((\inst|Mux0~1_combout\))) # (!\inst|Add1~0_combout\ & (\inst|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Mux0~3_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|o_I2C_sda_txrx~1_combout\);

-- Location: LCCOMB_X19_Y22_N4
\inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|w_data_bit_cnt\(0) & (((\inst|w_data_bit_cnt\(1) & \inst|w_data_txrx\(0))))) # (!\inst|w_data_bit_cnt\(0) & ((\inst|w_data_txrx\(1)) # ((!\inst|w_data_bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(1),
	datab => \inst|w_data_bit_cnt\(0),
	datac => \inst|w_data_bit_cnt\(1),
	datad => \inst|w_data_txrx\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y22_N20
\inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux1~0_combout\ & ((\inst|w_data_txrx\(3)) # ((\inst|w_data_bit_cnt\(1))))) # (!\inst|Mux1~0_combout\ & (((!\inst|w_data_bit_cnt\(1) & \inst|w_data_txrx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(3),
	datab => \inst|Mux1~0_combout\,
	datac => \inst|w_data_bit_cnt\(1),
	datad => \inst|w_data_txrx\(2),
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y22_N0
\inst|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|w_data_bit_cnt\(0) & (((\inst|w_data_bit_cnt\(1) & \inst|w_data_txrx\(4))))) # (!\inst|w_data_bit_cnt\(0) & ((\inst|w_data_txrx\(5)) # ((!\inst|w_data_bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_txrx\(5),
	datab => \inst|w_data_bit_cnt\(0),
	datac => \inst|w_data_bit_cnt\(1),
	datad => \inst|w_data_txrx\(4),
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y22_N16
\inst|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|w_data_bit_cnt\(1) & (\inst|Mux1~2_combout\)) # (!\inst|w_data_bit_cnt\(1) & ((\inst|Mux1~2_combout\ & (\inst|w_data_txrx\(7))) # (!\inst|Mux1~2_combout\ & ((\inst|w_data_txrx\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_bit_cnt\(1),
	datab => \inst|Mux1~2_combout\,
	datac => \inst|w_data_txrx\(7),
	datad => \inst|w_data_txrx\(6),
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y21_N28
\inst|o_I2C_sda_txrx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~0_combout\ = (\inst|state.slv_ack1~q\ & ((\inst|w_data_bit_cnt\(2) & (\inst|Mux1~1_combout\)) # (!\inst|w_data_bit_cnt\(2) & ((\inst|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|w_data_bit_cnt\(2),
	datad => \inst|Mux1~3_combout\,
	combout => \inst|o_I2C_sda_txrx~0_combout\);

-- Location: LCCOMB_X19_Y21_N26
\inst|o_I2C_sda_txrx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~2_combout\ = (\inst|o_I2C_sda_txrx~0_combout\) # ((\inst|o_I2C_sda_txrx~1_combout\ & \inst|state.exe_cmd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|o_I2C_sda_txrx~1_combout\,
	datac => \inst|state.exe_cmd~q\,
	datad => \inst|o_I2C_sda_txrx~0_combout\,
	combout => \inst|o_I2C_sda_txrx~2_combout\);

-- Location: LCCOMB_X21_Y21_N20
\inst|o_I2C_sda_txrx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~4_combout\ = (\inst|process_1~0_combout\ & ((\inst|o_I2C_sda_txrx~3_combout\) # ((\inst|o_I2C_sda_txrx~2_combout\) # (!\inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|o_I2C_sda_txrx~3_combout\,
	datab => \inst|o_I2C_sda_txrx~2_combout\,
	datac => \inst|Selector10~0_combout\,
	datad => \inst|process_1~0_combout\,
	combout => \inst|o_I2C_sda_txrx~4_combout\);

-- Location: LCCOMB_X21_Y21_N22
\inst|o_I2C_sda_txrx~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~5_combout\ = (!\inst|w_data_clk~q\ & (\inst|w_data_clk_prev~q\ & \inst|state.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_clk~q\,
	datac => \inst|w_data_clk_prev~q\,
	datad => \inst|state.stop~q\,
	combout => \inst|o_I2C_sda_txrx~5_combout\);

-- Location: LCCOMB_X22_Y21_N16
\inst|o_I2C_sda_txrx~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_sda_txrx~6_combout\ = (!\inst|o_I2C_sda_txrx~4_combout\ & (!\inst|o_I2C_sda_txrx~5_combout\ & ((\inst|w_scl_enable~0_combout\) # (\inst|o_I2C_sda_txrx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_scl_enable~0_combout\,
	datab => \inst|o_I2C_sda_txrx~4_combout\,
	datac => \inst|o_I2C_sda_txrx~q\,
	datad => \inst|o_I2C_sda_txrx~5_combout\,
	combout => \inst|o_I2C_sda_txrx~6_combout\);

-- Location: FF_X22_Y21_N17
\inst|o_I2C_sda_txrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|o_I2C_sda_txrx~6_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|o_I2C_sda_txrx~q\);

-- Location: LCCOMB_X20_Y21_N0
\inst|w_scl_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_clk~0_combout\ = (\inst|LessThan1~0_combout\ & \inst|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|process_0~8_combout\,
	combout => \inst|w_scl_clk~0_combout\);

-- Location: FF_X20_Y21_N1
\inst|w_scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_scl_clk~0_combout\,
	ena => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_scl_clk~q\);

-- Location: LCCOMB_X22_Y21_N22
\inst|w_scl_enable~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_enable~1_combout\ = (!\io_I2C_sda~input_o\ & ((\inst|state.slv_ack3~q\) # ((\inst|state.slv_ack1~q\) # (\inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.slv_ack3~q\,
	datab => \inst|state.slv_ack1~q\,
	datac => \inst|state.slv_ack2~q\,
	datad => \io_I2C_sda~input_o\,
	combout => \inst|w_scl_enable~1_combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst|w_scl_enable~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_enable~2_combout\ = (\inst|w_scl_enable~q\ & ((\inst|w_scl_enable~1_combout\) # (!\inst|state~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state~26_combout\,
	datac => \inst|w_scl_enable~1_combout\,
	datad => \inst|w_scl_enable~q\,
	combout => \inst|w_scl_enable~2_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst|w_scl_enable~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_enable~3_combout\ = (!\inst|process_1~0_combout\ & ((\inst|w_scl_enable~2_combout\) # ((\inst|process_1~1_combout\ & \inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~1_combout\,
	datab => \inst|w_scl_enable~2_combout\,
	datac => \inst|process_1~0_combout\,
	datad => \inst|state.start~q\,
	combout => \inst|w_scl_enable~3_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst|w_scl_enable~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|w_scl_enable~4_combout\ = (\inst|w_scl_enable~3_combout\) # ((\inst|w_scl_enable~0_combout\ & (!\inst|state.stop~q\ & \inst|w_scl_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_scl_enable~0_combout\,
	datab => \inst|state.stop~q\,
	datac => \inst|w_scl_enable~q\,
	datad => \inst|w_scl_enable~3_combout\,
	combout => \inst|w_scl_enable~4_combout\);

-- Location: FF_X22_Y21_N31
\inst|w_scl_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|w_scl_enable~4_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|w_scl_enable~q\);

-- Location: LCCOMB_X20_Y22_N20
\io_I2C_scl~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \io_I2C_scl~2_combout\ = (\inst|w_scl_clk~q\) # (!\inst|w_scl_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|w_scl_clk~q\,
	datac => \inst|w_scl_enable~q\,
	combout => \io_I2C_scl~2_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst|o_I2C_ack_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|o_I2C_ack_error~0_combout\ = (\inst|o_I2C_ack_error~q\) # ((\inst|w_data_clk~q\ & (!\inst|w_data_clk_prev~q\ & \inst|state.error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|w_data_clk~q\,
	datab => \inst|w_data_clk_prev~q\,
	datac => \inst|o_I2C_ack_error~q\,
	datad => \inst|state.error~q\,
	combout => \inst|o_I2C_ack_error~0_combout\);

-- Location: FF_X22_Y21_N25
\inst|o_I2C_ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_I2C_clk~inputclkctrl_outclk\,
	d => \inst|o_I2C_ack_error~0_combout\,
	clrn => \disp|ALT_INV_o_display_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|o_I2C_ack_error~q\);

-- Location: IOIBUF_X35_Y0_N22
\i_I2C_display_enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2C_display_enable,
	o => \i_I2C_display_enable~input_o\);

ww_o_I2C_ack_error <= \o_I2C_ack_error~output_o\;

ww_io_I2C_sda <= \io_I2C_sda~output_o\;

ww_io_I2C_scl <= \io_I2C_scl~output_o\;
END structure;


