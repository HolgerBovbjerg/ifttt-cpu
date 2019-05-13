library ieee;
use ieee.std_logic_1164.all;

entity ifttt_top_level_tb is
			
end ifttt_top_level_tb;

architecture behavioural of ifttt_top_level_tb is
	COMPONENT ifttt_top_level 
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
	end COMPONENT;
	
	signal i_CLK : STD_LOGIC := '1';
	signal i_RESET : STD_LOGIC := '0';
	signal i_HALT : STD_LOGIC := '0';
	signal o_DATA : STD_LOGIC_VECTOR(7 downto 0) := x"00";
	signal o_STATE : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
	signal i_INTERRUPT_request : STD_LOGIC := '0';
	signal o_INTERRUPT_ack : STD_LOGIC := '0';
	signal io_GPIO_PIN0 : STD_LOGIC_VECTOR(7 downto 0):= x"00"; 
	signal io_GPIO_PIN1 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN2 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN3 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN4 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN5 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN6 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_GPIO_PIN7 : STD_LOGIC_VECTOR(7 downto 0):= x"00";
	signal io_I2C_scl : STD_LOGIC := '0';
	signal io_I2C_sda : STD_LOGIC := '0';
	
	   -- Clock period definitions
   constant c_CLK_period : time := 20 ns;
	
	
	BEGIN
	
		DUT : ifttt_top_level Port map ( 	
			i_CLK => i_CLK,
			i_RESET => i_RESET,
			i_HALT => i_HALT, 
			o_STATE => o_STATE, 
			i_INTERRUPT_request => i_INTERRUPT_request,
			o_INTERRUPT_ack => o_INTERRUPT_ack,
			io_GPIO_PIN0 				=> io_GPIO_PIN0,
			io_GPIO_PIN1 				=> io_GPIO_PIN1,
			io_GPIO_PIN2 				=> io_GPIO_PIN2,
			io_GPIO_PIN3 				=> io_GPIO_PIN3,
			io_GPIO_PIN4 				=> io_GPIO_PIN4,
			io_GPIO_PIN5 				=> io_GPIO_PIN5,
			io_GPIO_PIN6 				=> io_GPIO_PIN6,
			io_GPIO_PIN7 				=> io_GPIO_PIN7,
			io_I2C_scl					=> io_I2C_scl,
			io_I2C_sda					=> io_I2C_sda
		);
		
		
		   -- Clock process definitions
   CLK :process
   begin
		i_CLK <= '0';
		wait for c_CLK_period/2;
		i_CLK <= '1';
		wait for c_CLK_period/2;
   end process;
	
	
	-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      i_RESET <= '1';
		wait for 100 ns;	
		i_RESET <= '0';
		wait;
		
   end process;
	
	END behavioural;