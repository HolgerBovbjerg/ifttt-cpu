library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GPIO_register_tb is
end GPIO_register_tb;
		
architecture behaviour of GPIO_register_tb is

	COMPONENT GPIO_register Port (
			i_GPIO_clk					: in STD_LOGIC;	-- Clock and enable
			i_GPIO_address 			: in STD_LOGIC_VECTOR (2 downto 0); --Address input
			i_GPIO_data					: in STD_LOGIC_VECTOR (7 downto 0); --Data input
			o_GPIO_data 				: out STD_LOGIC_VECTOR (7 downto 0);-- Data Output
			-- GPIO I/O pins ------------------------------
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
	
	-- Inputs
	signal i_GPIO_CLK : std_logic := '0';
	signal i_GPIO_address : std_logic_vector(2 downto 0) := (others => '0');
	signal i_GPIO_data : std_logic_vector(7 downto 0) := (others => '0');	
	
	signal i_GPIO_write_enable : std_logic := '0';
	signal i_GPIO_config_enable : std_logic := '0';
	
	-- Output
	signal o_GPIO_data : std_logic_vector(7 downto 0);
	
	-- I/O
	signal io_GPIO_PIN0 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN1 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN2 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN3 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN4 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN5 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN6 : STD_LOGIC_VECTOR (7 downto 0);
	signal io_GPIO_PIN7 : STD_LOGIC_VECTOR (7 downto 0);
	
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
		
begin

	-- Instantiate the Unit Under Test (UUT)
	uut : GPIO_register Port map (
		i_GPIO_clk					=> i_GPIO_CLK,
		i_GPIO_address 			=> i_GPIO_address,
		i_GPIO_data					=> i_GPIO_data,
		o_GPIO_data 				=> o_GPIO_data,
		-- GPIO I/O pins ------------------------------
		io_GPIO_PIN0 				=> io_GPIO_PIN0,
		io_GPIO_PIN1 				=> io_GPIO_PIN1,
		io_GPIO_PIN2 				=> io_GPIO_PIN2,
		io_GPIO_PIN3 				=> io_GPIO_PIN3,
		io_GPIO_PIN4 				=> io_GPIO_PIN4,
		io_GPIO_PIN5 				=> io_GPIO_PIN5,
		io_GPIO_PIN6 				=> io_GPIO_PIN6,
		io_GPIO_PIN7 				=> io_GPIO_PIN7,
		-- Misc. --------------------------------------
		i_GPIO_write_enable		=> i_GPIO_write_enable,
		i_GPIO_config_enable		=> i_GPIO_config_enable
	); 
	
	
	-- Clock process definitions
   i_GPIO_clk_process :process
   begin
		i_GPIO_CLK <= '0';
		wait for c_clk_period/2;
		i_GPIO_CLK <= '1';
		wait for c_clk_period/2;
   end process;

	-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		-- Setup for output
		i_GPIO_address <= "000";
		i_GPIO_data <= "11111111";
		i_GPIO_write_enable <= '1';
		i_GPIO_config_enable <= '1';
		
		io_GPIO_PIN0 <= "ZZZZZZZZ";
		io_GPIO_PIN1 <= "ZZZZZZZZ";
		io_GPIO_PIN2 <= "ZZZZZZZZ";
		io_GPIO_PIN3 <= "ZZZZZZZZ";
		io_GPIO_PIN4 <= "ZZZZZZZZ";
		io_GPIO_PIN5 <= "ZZZZZZZZ";
		io_GPIO_PIN6 <= "ZZZZZZZZ";
		io_GPIO_PIN7 <= "ZZZZZZZZ";
		i_GPIO_address <= "000";
		
		wait for c_clk_period*10;
		
		i_GPIO_config_enable <= '0';
		i_GPIO_data <= "00000001";
		
		for i in 0 to 7 loop
			wait for c_clk_period*10;
			i_GPIO_address <= std_logic_vector(unsigned(i_GPIO_address) + 1);
			i_GPIO_data <= std_logic_vector(unsigned(i_GPIO_data) + 1);
		end loop;
		
		-- Setup for input
		wait for 100 ns;
		i_GPIO_address <= "000";
		i_GPIO_data <= "00000000";
		i_GPIO_write_enable <= '1';
		i_GPIO_config_enable <= '1';
		
		io_GPIO_PIN0 <= x"0f";
		io_GPIO_PIN1 <= x"ff";
		io_GPIO_PIN2 <= x"00";
		io_GPIO_PIN3 <= x"11";
		io_GPIO_PIN4 <= x"43";
		io_GPIO_PIN5 <= x"12";
		io_GPIO_PIN6 <= x"f0";
		io_GPIO_PIN7 <= x"11";
		i_GPIO_address <= "000";
		
		wait for c_clk_period*10;
		i_GPIO_config_enable <= '0';
		i_GPIO_data <= "00000000";
		for i in 0 to 7 loop
			wait for c_clk_period*10;
			i_GPIO_address <= std_logic_vector(unsigned(i_GPIO_address) + 1);
			i_GPIO_data <= std_logic_vector(unsigned(i_GPIO_data) + 1);
		end loop;
		
		i_GPIO_write_enable <= '0';
		for i in 0 to 7 loop
			wait for c_clk_period*10;
			i_GPIO_address <= std_logic_vector(unsigned(i_GPIO_address) + 1);
		end loop;
		wait;
  end process;
end behaviour;