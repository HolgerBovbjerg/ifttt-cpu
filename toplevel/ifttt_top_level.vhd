



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity ifttt_top_level is
	Port ( 	i_CLK : in  STD_LOGIC;
				i_RESET : in  STD_LOGIC;
				i_HALT : in  STD_LOGIC;
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0);
				o_STATE : out STD_LOGIC_VECTOR(6 downto 0);
				
				-- Interrupt interface ---------------
				i_INTERRUPT_request : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC;
				
				-- GPIO I/O
				io_GPIO_PIN0 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN1 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN2 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN3 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN4 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN5 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN6 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN7 				: inout STD_LOGIC_VECTOR (7 downto 0);
				
				-- I2C
				io_I2C_scl					: inout STD_LOGIC;
				io_I2C_sda					: inout STD_LOGIC
			);
end ifttt_top_level;



architecture behavioural of ifttt_top_level is
	COMPONENT cpu_core 
    Port ( 	i_CORE_CLK : in  STD_LOGIC;
				i_CORE_RESET : in  STD_LOGIC;
				i_CORE_HALT : in  STD_LOGIC;
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0);
				o_STATE : out STD_LOGIC_VECTOR(6 downto 0);
				
				-- Memory interface ---------------
				-- GPIO
				i_MC_GPIO_data : in STD_LOGIC_VECTOR(7 downto 0);
				o_MC_GPIO_address : out std_logic_vector (3 downto 0); 
				o_MC_GPIO_write_enable : out std_logic;
				o_MC_GPIO_data : out STD_LOGIC_VECTOR(7 downto 0);
				
				-- I2C
				i_MC_I2C_data : in STD_LOGIC_VECTOR(7 downto 0);
				i_MC_I2C_busy : in STD_LOGIC;
				o_MC_I2C_address : out std_logic_vector (3 downto 0); 
				o_MC_I2C_write_enable : out std_logic;
				o_MC_I2C_data : out STD_LOGIC_VECTOR(7 downto 0);
				
				-- Interrupt interface ---------------
				i_INTERRUPT_request : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC
			);
	end COMPONENT;
	
	COMPONENT GPIO_register 
	Port (
		-- Clock and enable
		i_GPIO_clk					: in STD_LOGIC;
		
		--Address inputs
		i_GPIO_address 			: in STD_LOGIC_VECTOR (2 downto 0);
		
		--Data input
		i_GPIO_data					: in STD_LOGIC_VECTOR (7 downto 0);
		
		-- Data Output
		o_GPIO_data 				: out STD_LOGIC_VECTOR (7 downto 0);
		
		-- GPIO I/O
		io_GPIO_PIN0 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN1 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN2 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN3 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN4 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN5 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN6 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN7 				: inout STD_LOGIC_VECTOR (7 downto 0);
		
		-- Misc.
		i_GPIO_write_enable	: in STD_LOGIC;
		i_GPIO_config_enable	: in STD_LOGIC
	); 
	end COMPONENT;
	
	COMPONENT I2C_tx_rx 
	port(
		--io ports
		io_I2C_sda					: inout std_logic;							-- SDA in/out tri-state port
		io_I2C_scl					: inout std_logic;							-- SCL in/out tri-state port
		
		-- inputs
		i_I2C_clk					: in std_logic;								-- I2C main clock
		i_I2C_data_tx				: in std_logic_vector (7 downto 0);		-- Register input
		i_I2C_write_enable		: in std_logic;								-- I2C registers we = '1'
		i_I2C_write_regaddr_tx  : in std_logic_vector (1 downto 0);		-- I2C registers address select
		
		--outputs
		o_I2C_busy					: out std_logic;								-- Busy flag. Set is '1'. Clear is '0'
		o_I2C_data_rx				: out std_logic_vector (7 downto 0);	-- Data received from I2C device
		o_I2C_ack_error			: out std_logic								-- Error flag 'high' if error during transaction
		);
	end COMPONENT;

	
	-- CPU outputs
	signal w_MC_GPIO_address : STD_LOGIC_VECTOR(3 downto 0);
	signal w_MC_GPIO_data : STD_LOGIC_VECTOR(7 downto 0);
	signal w_MC_GPIO_write_enable : STD_LOGIC;
	signal w_MC_I2C_address : STD_LOGIC_VECTOR(3 downto 0);
	signal w_MC_I2C_data : STD_LOGIC_VECTOR(7 downto 0);
	signal w_MC_I2C_write_enable : STD_LOGIC;
	
	-- I2C outputs
	signal w_I2C_busy	: std_logic;								
	signal w_I2C_data_rx	: std_logic_vector (7 downto 0);	
	signal w_I2C_ack_error	: std_logic;	
	
	-- GPIO outputs
	signal w_GPIO_data : STD_LOGIC_VECTOR(7 downto 0);
	
	-- Divided clock
	signal r_CLK_divided : STD_LOGIC_VECTOR(23 downto 0);

begin 

	INST_cpu_core : cpu_core PORT MAP (
		i_CORE_CLK => r_CLK_divided(20),
		i_CORE_RESET => i_RESET,
		i_CORE_HALT => i_HALT,
		o_DATA => o_DATA,
		o_STATE => o_STATE,
		i_MC_GPIO_data => w_GPIO_data,
		o_MC_GPIO_address => w_MC_GPIO_address, 
		o_MC_GPIO_write_enable => w_MC_GPIO_write_enable,
		o_MC_GPIO_data => w_MC_GPIO_data,
		i_MC_I2C_data => w_I2C_data_rx,
		i_MC_I2C_busy => w_I2C_busy,
		o_MC_I2C_address => w_MC_I2C_address,
		o_MC_I2C_write_enable => w_MC_I2C_write_enable,
		o_MC_I2C_data => w_MC_I2C_data,
		i_INTERRUPT_request => i_INTERRUPT_request,
		o_INTERRUPT_ack => o_INTERRUPT_ack
	);
	
	INST_GPIO_register : GPIO_register PORT MAP (
		i_GPIO_clk					=> r_CLK_divided(20),
		i_GPIO_address 			=> w_MC_GPIO_address(2 downto 0),
		i_GPIO_data					=> w_MC_GPIO_data,
		o_GPIO_data 				=> w_GPIO_data,
		io_GPIO_PIN0 				=> io_GPIO_PIN0,
		io_GPIO_PIN1 				=> io_GPIO_PIN1,
		io_GPIO_PIN2 				=> io_GPIO_PIN2,
		io_GPIO_PIN3 				=> io_GPIO_PIN3,
		io_GPIO_PIN4 				=> io_GPIO_PIN4,
		io_GPIO_PIN5 				=> io_GPIO_PIN5,
		io_GPIO_PIN6 				=> io_GPIO_PIN6,
		io_GPIO_PIN7 				=> io_GPIO_PIN7,
		i_GPIO_write_enable	=> w_MC_GPIO_write_enable,
		i_GPIO_config_enable	=> w_MC_GPIO_address(3)
	);
	
	
	INST_I2C_tx_rx : I2C_tx_rx PORT MAP (
		io_I2C_sda					=> io_I2C_sda,
		io_I2C_scl					=> io_I2C_scl,
		i_I2C_clk					=> i_CLK,
		i_I2C_data_tx				=> w_MC_I2C_data,
		i_I2C_write_enable		=> w_MC_I2C_write_enable,
		i_I2C_write_regaddr_tx  => w_MC_I2C_address(1 downto 0),
		o_I2C_busy					=> w_I2C_busy,
		o_I2C_data_rx				=> w_I2C_data_rx,
		o_I2C_ack_error			=> w_I2C_ack_error
		);

	
	process(i_CLK)
	begin
		if (rising_edge(i_CLK)) then
		r_CLK_divided <= STD_LOGIC_VECTOR(unsigned(r_CLK_divided) + 1);
		end if;
	end process;
	
end behavioural;