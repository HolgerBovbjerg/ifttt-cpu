



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
				
						-- GPIO I/O
				io_GPIO_PIN0 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN1 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN2 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN3 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN4 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN5 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN6 				: inout STD_LOGIC_VECTOR (7 downto 0);
				io_GPIO_PIN7 				: inout STD_LOGIC_VECTOR (7 downto 0)
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
				o_MC_I2C_address : out std_logic_vector (3 downto 0); 
				o_MC_I2C_write_enable : out std_logic;
				o_MC_I2C_data : out STD_LOGIC_VECTOR(7 downto 0)
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
	
	-- CPU outputs
	signal w_MC_GPIO_address : STD_LOGIC_VECTOR(3 downto 0);
	signal w_MC_GPIO_data : STD_LOGIC_VECTOR(7 downto 0);
	signal w_MC_GPIO_write_enable : STD_LOGIC;
	
	-- GPIO outputs
	signal w_GPIO_data : STD_LOGIC_VECTOR(7 downto 0);
	
	-- Divided clock
	signal r_CLK_divided : STD_LOGIC_VECTOR(23 downto 0);

begin 

	INST_cpu_core : cpu_core PORT MAP (
		i_CORE_CLK => r_CLK_divided(23),
		i_CORE_RESET => i_RESET,
		i_CORE_HALT => i_HALT,
		o_DATA => o_DATA,
		o_STATE => o_STATE,
		i_MC_GPIO_data => w_GPIO_data,
		o_MC_GPIO_address => w_MC_GPIO_address, 
		o_MC_GPIO_write_enable => w_MC_GPIO_write_enable,
		o_MC_GPIO_data => w_MC_GPIO_data,
		i_MC_I2C_data => x"00",
		o_MC_I2C_address => open,
		o_MC_I2C_write_enable => open,
		o_MC_I2C_data => open	
	);
	
	INST_GPIO_register : GPIO_register PORT MAP (
		i_GPIO_clk					=> r_CLK_divided(23),
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
	
	process(i_CLK)
	begin
		if (rising_edge(i_CLK)) then
		r_CLK_divided <= STD_LOGIC_VECTOR(unsigned(r_CLK_divided) + 1);
		end if;
	end process;
	
end behavioural;