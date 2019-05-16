library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Display_driver is
	port(
		--io ports
		io_I2C_sda		: inout std_logic;							-- SDA in/out tri-state port
		io_I2C_scl		: inout std_logic;							-- SCL in/out tri-state port
		
		--inputs
		i_I2C_rw					: in std_logic;								-- 0 is transmit, 1 is receive
		i_I2C_clk				: in std_logic;								-- I2C main clock
		i_I2C_reset				: in std_logic;								-- Reset trigger 
		i_I2C_display_enable	: in std_logic;
		i_display_writeenable : in std_logic;
		i_I2C_display_input	: in std_logic_vector (7 downto 0);
		
		--outputs
		o_I2C_data_rx	: out std_logic_vector (7 downto 0);	-- Data received from I2C device
		o_I2C_ack_error: out std_logic								-- Error flag 'high' if error during transaction
		);
end entity;

architecture behaviour of Display_driver is
	signal w_i_I2C_sda_txrx			: std_logic;							-- Tri-state buffer SDA input wire
	signal w_i_I2C_scl_txrx 		: std_logic;							-- Tri-state buffer SCL input wire
	signal w_o_I2C_sda_txrx			: std_logic;							-- Tristate buffer SDA output wire
	signal w_o_I2C_scl_txrx			: std_logic;							-- Tristate buffer SCL output wire
	signal w_I2C_scl_enable 		: std_logic;							-- SCL enable wire
	signal w_I2C_busy					: std_logic;							-- Wire to pause display while handler is busy
	signal w_I2C_handler_reset		: std_logic;							-- Wire to reset handler
	signal w_I2C_handler_ready		: std_logic;							-- Wire to set handler ready
	signal w_I2C_display_data		: std_logic_vector (7 downto 0);	-- Wire to transfer data from display to handler
	
	component Display_I2C_handler
		port(
		--inputs
		i_I2C_clk		: in std_logic;
		i_I2C_sda_txrx	: in std_logic;
		i_I2C_ready		: in std_logic;
		i_I2C_reset		: in std_logic;
		i_I2C_addr		: in std_logic_vector (6 downto 0);
		i_I2C_data_tx	: in std_logic_vector (7 downto 0);
		i_I2C_rw			: in std_logic;
		i_I2C_reg_tx	: in std_logic_vector (7 downto 0);
		i_I2C_scl_txrx : in std_logic;
		
		--outputs
		o_I2C_busy			: out std_logic;
		o_I2C_scl_enable	: out std_logic;
		o_I2C_ack_error	: out std_logic;
		o_I2C_data_rx		: out std_logic_vector (7 downto 0);
		o_I2C_scl_txrx		: out std_logic;
		o_I2C_sda_txrx		: out std_logic
		);
	end component;

	component I2C_display
		port(
		-- Inputs
		i_display_enable			: in std_logic;
		i_display_write_enable	: in std_logic;
		i_display_clock			: in std_logic;
		i_display_data				: in std_logic_vector (7 downto 0);
		i_display_busy				: in std_logic;
		i_display_reset			: in std_logic;
	
		-- Outputs
		o_display_reset		: out std_logic;								
		o_display_ready		: out std_logic;	
		o_display_data			: out std_logic_vector (7 downto 0)
		);	
	end component;
begin
	
	inst : Display_I2C_handler port map(
		i_I2C_clk			=> i_I2C_clk,
		i_I2C_sda_txrx		=> w_i_I2C_sda_txrx,
		i_I2C_ready			=> w_I2C_handler_ready,		-- Gets ready signal from display handler						
		i_I2C_reset			=> w_I2C_handler_reset,		-- Get reset signal from display handler							
		i_I2C_addr			=> "0100111",					-- Fixed slave address of x"27"
		i_I2C_data_tx		=> w_I2C_display_data,		-- Gets data from display file
		i_I2C_rw				=> '0',    						-- Always set to write
		i_I2C_reg_tx		=> x"00",						-- Slave Register, set to 0 
		i_I2C_scl_txrx		=> w_i_I2C_scl_txrx,			
		o_I2C_busy			=> w_I2C_busy,					-- Sends busy signal to display handler
		o_I2C_scl_enable	=> w_I2C_scl_enable,
		o_I2C_ack_error	=> o_I2C_ack_error,
		o_I2C_data_rx		=> o_I2C_data_rx,
		o_I2C_scl_txrx		=> w_o_I2C_scl_txrx,
		o_I2C_sda_txrx		=> w_o_I2C_sda_txrx
		);

	disp : I2C_display port map(
		-- Inputs
		i_display_enable			=> '1',							-- Display always set high
		i_display_write_enable	=> i_display_writeenable,	
		i_display_clock			=> i_I2C_clk,
		i_display_data				=> i_I2C_display_input,		-- Display handler gets data input from CPU
		i_display_busy				=> w_I2C_busy,					-- Display handler gets busy signal from I2C handler
		i_display_reset			=> i_I2C_reset,				-- Display handler gets reset signal from CPU to completely reset itself
	
		-- Outputs
		o_display_reset			=> w_I2C_handler_reset,		-- Display handler sends reset signal to I2C handler as part of transmitting data
		o_display_ready			=> w_I2C_handler_ready,		-- Display handler sends ready signal to I2C handler as part of transmitting data
		o_display_data				=> w_I2C_display_data		-- Display handler outputs data to the I2C handler
		);
			
-- Tri-state buffer for SDA and SCL
	io_I2C_sda <= '0' 	when (w_o_I2C_sda_txrx = '0') else 'Z';
	io_I2C_scl <= '0' 	when (w_o_I2C_scl_txrx = '0' and w_I2C_scl_enable = '1') else 'Z';
	w_i_I2C_sda_txrx <= io_I2C_sda;
	w_i_I2C_scl_txrx <= io_I2C_scl;
end architecture behaviour;
		
		