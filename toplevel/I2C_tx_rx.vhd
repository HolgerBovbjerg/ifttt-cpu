library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_tx_rx is
	port(
		--io ports
		io_I2C_sda		: inout std_logic;							-- SDA in/out port
		io_I2C_scl		: inout std_logic;							-- SCL in/out port
		
		--inputs
		i_I2C_txrx		: in std_logic;								-- 0 is transmit, 1 is receive
		i_I2C_clk		: in std_logic;								-- I2C main clock
		i_I2C_ready		: in std_logic;								-- ready trigger to start Tx/Rx function
		i_I2C_data_tx	: in std_logic_vector (7 downto 0);		-- Data transmitted
		
		--outputs
		o_I2C_data_rx	: out std_logic_vector (7 downto 0)		-- Data received from I2C device
		);
end entity;

architecture rtl of I2C_tx_rx is
	signal w_i_I2C_sda_txrx	: std_logic;							-- Tristate buffer SDA input wire
	signal w_o_I2C_sda_txrx	: std_logic;							-- Tristate buffer SDA output wire
	signal w_i_I2C_scl_txrx	: std_logic;							-- Tristate buffer SCL input wire
	signal w_o_I2C_scl_txrx	: std_logic;							-- Tristate buffer SCL output wire
--signal w_I2C_txrx			: std_logic;							-- Transmit/receive wire
--signal w_I2C_addr			: std_logic_vector (7 downto 0) := x"FE";	-- Address wire + read/write bit
--signal w_I2C_clk			: std_logic;							-- I2C main clock (50 MHz)
--signal w_I2C_data_rx		: std_logic_vector (7 downto 0);	-- Data rx wire
--signal w_I2C_data_tx		: std_logic_vector (7 downto 0);	-- Data tx wire
	
	
	component I2C_handler
		port(
		--inputs
		i_I2C_clk		: in std_logic;
		i_I2C_scl_txrx	: in std_logic;
		i_I2C_sda_txrx	: in std_logic;
		i_I2C_ready		: in std_logic;
		i_I2C_addr		: in std_logic_vector (7 downto 0);
		i_I2C_data_tx	: in std_logic_vector (7 downto 0);
		i_I2C_txrx		: in std_logic;
		
		--outputs
		o_I2C_data_rx	: out std_logic_vector (7 downto 0);
		o_I2C_scl_txrx	: out std_logic;
		o_I2C_sda_txrx	: out std_logic
		);
	end component;

begin
	
	inst : I2C_handler port map(
		i_I2C_clk			=> i_I2C_clk,
		i_I2C_scl_txrx		=> w_i_I2C_scl_txrx,
		i_I2C_sda_txrx		=> w_i_I2C_sda_txrx,
		i_I2C_ready			=> i_I2C_ready,
		i_I2C_addr			=> x"C8",					--w_I2C_addr
		i_I2C_data_tx		=> i_I2C_data_tx,
		i_I2C_txrx			=> i_I2C_txrx,
		o_I2C_data_rx		=> o_I2C_data_rx,
		o_I2C_scl_txrx		=> w_o_I2C_scl_txrx,
		o_I2C_sda_txrx		=> w_o_I2C_sda_txrx
		);
	
	io_I2C_sda <= '0' 	when (w_o_I2C_sda_txrx = '0') 	else 'Z';
	io_I2C_scl <= '0' 	when (w_o_I2C_scl_txrx = '0') 	else 'Z';
	w_i_I2C_sda_txrx <= io_I2C_sda;
	w_i_I2C_scl_txrx <= io_I2C_scl;
		
		
end architecture rtl;
		
		