library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_tx_rx is
	port(
		--io ports
		io_I2C_sda					: inout std_logic;							-- SDA in/out tri-state port
		io_I2C_scl					: inout std_logic;							-- SCL in/out tri-state port
		
		--inputs
		i_I2C_clk					: in std_logic;								-- I2C main clock
		i_I2C_data_tx				: in std_logic_vector (7 downto 0);		-- Register input
		i_I2C_write_enable		: in std_logic;								-- I2C registers we = '1'
		i_I2C_write_regaddr_tx  : in std_logic_vector (1 downto 0);		-- I2C registers address select
		
		--outputs
		o_I2C_busy					: out std_logic;								-- Busy flag. Set is '1'. Clear is '0'
		o_I2C_data_rx				: out std_logic_vector (7 downto 0);	-- Data received from I2C device
		o_I2C_ack_error			: out std_logic								-- Error flag 'high' if error during transaction
		);
end entity;

architecture rtl of I2C_tx_rx is
	signal r_i_I2C_sda_txrx	: std_logic;							-- Tri-state buffer SDA input wire
	signal r_i_I2C_scl_txrx : std_logic;							-- Tri-state buffer SCL input wire
	signal r_o_I2C_sda_txrx	: std_logic;							-- Tristate buffer SDA output wire
	signal r_o_I2C_scl_txrx	: std_logic;							-- Tristate buffer SCL output wire
	signal r_I2C_scl_enable : std_logic;							-- SCL enable wire
	signal r_I2C_data_rx		: std_logic_vector (7 downto 0);	-- Signal from I2C handler to register
	signal r_I2C_slv_addr	: std_logic_vector (7 downto 0);	-- Signal for slave address + rw bit
	signal r_I2C_setup		: std_logic_vector (7 downto 0);	-- Signal for slave setup
	signal r_I2C_slv_data_tx: std_logic_vector (7 downto 0);	-- signal 
	
	
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

COMPONENT I2C_input_reg
	PORT
	(
		i_I2C_clk					: IN STD_LOGIC;
		i_I2C_data_tx				: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_I2C_data_rx				: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_I2C_write_regaddr_tx	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		i_I2C_write_enable		: IN STD_LOGIC;
		o_I2C_slv_addr				: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_I2C_slv_data_tx			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_I2C_slv_data_rx			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_I2C_setup					: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;	
	
begin
	
	inst_I2C_handler2 : I2C_handler2 port map(
		i_I2C_clk			=> i_I2C_clk,
		i_I2C_sda_txrx		=> r_i_I2C_sda_txrx,
		i_I2C_ready			=> r_I2C_setup (2),
		i_I2C_reset			=> r_I2C_setup (1),
		i_I2C_addr			=> r_I2C_slv_addr (6 downto 0),
		i_I2C_data_tx		=> r_I2C_slv_data_tx,
		i_I2C_rw				=> r_I2C_setup (0),
		i_I2C_reg_tx		=> x"00",						-- Slave Register
		i_I2C_scl_txrx		=> r_i_I2C_scl_txrx,
		o_I2C_busy			=> o_I2C_busy,
		o_I2C_scl_enable	=> r_I2C_scl_enable,
		o_I2C_ack_error	=> o_I2C_ack_error,
		o_I2C_data_rx		=> r_I2C_data_rx,
		o_I2C_scl_txrx		=> r_o_I2C_scl_txrx,
		o_I2C_sda_txrx		=> r_o_I2C_sda_txrx
	);
		
	inst_I2C_input_reg : I2C_input_reg port map(
		i_I2C_clk					=> i_I2C_clk,
		i_I2C_data_tx				=> i_I2C_data_tx,
		i_I2C_data_rx				=> r_I2C_data_rx,
		i_I2C_write_regaddr_tx	=> i_I2C_write_regaddr_tx,
		i_I2C_write_enable		=>	i_I2C_write_enable,
		o_I2C_slv_addr				=>	r_I2C_slv_addr,
		o_I2C_slv_data_tx			=>	r_I2C_slv_data_tx,
		o_I2C_slv_data_rx			=> o_I2C_data_rx,
		o_I2C_setup					=> r_I2C_setup
	);

-- Tri-state buffer for SDA and SCL
	io_I2C_sda <= '0' 	when (r_o_I2C_sda_txrx = '0') else 'Z';
	io_I2C_scl <= '0' 	when (r_o_I2C_scl_txrx = '0' and r_I2C_scl_enable = '1') else 'Z';
	r_i_I2C_sda_txrx <= io_I2C_sda;
	r_i_I2C_scl_txrx <= io_I2C_scl;
end architecture rtl;
		
		