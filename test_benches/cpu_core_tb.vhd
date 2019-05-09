LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity cpu_core_tb is
end cpu_core_tb;

ARCHITECTURE behavior OF cpu_core_tb IS 

	-- Component Declaration for the Unit Under Test (UUT)
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
	
	-- Inputs
   signal i_clk : std_logic := '0';
	signal i_reset : std_logic := '0';
	
	-- Outputs 
	signal o_DATA  : STD_LOGIC_VECTOR(7 downto 0);
	signal o_STATE  : STD_LOGIC_VECTOR(6 downto 0); 
	
	
	-- MEMORY
	signal i_MC_GPIO_data : STD_LOGIC_VECTOR(7 downto 0) := x"00";
	signal o_MC_GPIO_address : std_logic_vector (3 downto 0); 
	signal o_MC_GPIO_write_enable : std_logic;
	signal o_MC_GPIO_data : STD_LOGIC_VECTOR(7 downto 0);
	signal i_MC_I2C_data : STD_LOGIC_VECTOR(7 downto 0) := x"00";
	signal i_MC_I2C_busy : STD_LOGIC := '0';
	signal o_MC_I2C_address : std_logic_vector (3 downto 0); 
	signal o_MC_I2C_write_enable : std_logic;
	signal o_MC_I2C_data : STD_LOGIC_VECTOR(7 downto 0);
	
	--Interrupts
	signal i_INTERRUPT_request : std_logic := '0';
	signal o_INTERRUPT_ack : std_logic;
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
	
begin
	
	-- Instantiate the Unit Under Test (UUT)
	uut: cpu_core PORT MAP (
			i_CORE_CLK => i_CLK,
         i_CORE_RESET => i_reset,
			i_CORE_HALT => '0',
			o_DATA  => o_DATA, 
			o_STATE => o_STATE,
			i_MC_GPIO_data => i_MC_I2C_data,
			o_MC_GPIO_address => o_MC_GPIO_address,
			o_MC_GPIO_write_enable => o_MC_GPIO_write_enable,
			o_MC_GPIO_data => o_MC_GPIO_data,	
			i_MC_I2C_data => i_MC_I2C_data,
			i_MC_I2C_busy => i_MC_I2C_busy,
			o_MC_I2C_address => o_MC_I2C_address, 
			o_MC_I2C_write_enable => o_MC_I2C_write_enable,
			o_MC_I2C_data => o_MC_I2C_data,
			i_INTERRUPT_request => i_INTERRUPT_request,
			o_INTERRUPT_ack => o_INTERRUPT_ack
			);
			
	-- Clock process definitions
   clk_process :process
   begin
		i_clk <= '0';
		wait for c_clk_period/2;
		i_clk <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stimu_process :process
   begin
		i_RESET <= '1';
		wait for c_clk_period*10;
		i_RESET <= '0';
		wait for c_clk_period*200;
		-- i_INTERRUPT_request <= '1';
		wait for c_clk_period*20;
	   i_INTERRUPT_request <= '0';
		wait;
   end process;
	
end;