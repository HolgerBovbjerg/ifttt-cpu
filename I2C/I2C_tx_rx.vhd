library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_tx_rx is
	port(
		--io ports
		io_I2C_sda		: inout std_logic;							-- SDA in/out tri-state port
		io_I2C_scl		: inout std_logic;							-- SCL in/out tri-state port
		
		--inputs
		i_I2C_rw			: in std_logic;								-- 0 is transmit, 1 is receive
		i_I2C_clk		: in std_logic;								-- I2C main clock
		i_I2C_ready		: in std_logic;								-- Ready trigger to start Read/Write function
		i_I2C_reset		: in std_logic;								-- Reset trigger 
		i_I2C_data_tx	: in std_logic_vector (7 downto 0);		-- Data transmitted
		
		--outputs
		o_I2C_busy		: out std_logic;								-- Busy flag. Set is '1'. Clear is '0'
		o_I2C_data_rx	: out std_logic_vector (7 downto 0);	-- Data received from I2C device
		o_I2C_ack_error: out std_logic								-- Error flag 'high' if error during transaction
		);
end entity;

architecture rtl of I2C_tx_rx is
	signal w_i_I2C_sda_txrx	: std_logic;							-- Tri-state buffer SDA input wire
	signal w_i_I2C_scl_txrx : std_logic;							-- Tri-state buffer SCL input wire
	signal w_o_I2C_sda_txrx	: std_logic;							-- Tristate buffer SDA output wire
	signal w_o_I2C_scl_txrx	: std_logic;							-- Tristate buffer SCL output wire
	signal w_I2C_scl_enable : std_logic;							-- SCL enable wire
	
	
	component I2C_handler2
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

begin
	
	inst : I2C_handler2 port map(
		i_I2C_clk			=> i_I2C_clk,
		i_I2C_sda_txrx		=> w_i_I2C_sda_txrx,
		i_I2C_ready			=> i_I2C_ready,
		i_I2C_reset			=> i_I2C_reset,
		i_I2C_addr			=> "1100100",					-- 7 bit address input w_I2C_addr -- address 100
		i_I2C_data_tx		=> i_I2C_data_tx,
		i_I2C_rw				=> i_I2C_rw,
		i_I2C_reg_tx		=> x"00",						-- Slave Register
		i_I2C_scl_txrx		=> w_i_I2C_scl_txrx,
		o_I2C_busy			=> o_I2C_busy,
		o_I2C_scl_enable	=> w_I2C_scl_enable,
		o_I2C_ack_error	=> o_I2C_ack_error,
		o_I2C_data_rx		=> o_I2C_data_rx,
		o_I2C_scl_txrx		=> w_o_I2C_scl_txrx,
		o_I2C_sda_txrx		=> w_o_I2C_sda_txrx
		);

-- Tri-state buffer for SDA and SCL
	io_I2C_sda <= '0' 	when (w_o_I2C_sda_txrx = '0') else 'Z';
	io_I2C_scl <= '0' 	when (w_o_I2C_scl_txrx = '0' and w_I2C_scl_enable = '1') else 'Z';
	w_i_I2C_sda_txrx <= io_I2C_sda;
	w_i_I2C_scl_txrx <= io_I2C_scl;
end architecture rtl;
		
		