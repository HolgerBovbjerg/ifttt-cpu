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
					i_PROG_ADDRESS : in STD_LOGIC_VECTOR(7 downto 0)
				);
	end COMPONENT;
	
	--Inputs
   signal i_clk : std_logic := '0';
	signal i_reset : std_logic := '0';
	signal r_PROG_ADDRESS : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
	
begin
	
	-- Instantiate the Unit Under Test (UUT)
	uut: cpu_core PORT MAP (
          i_CORE_CLK => i_CLK,
          i_CORE_RESET => i_reset,
			 i_CORE_HALT => '0',
			 i_PROG_ADDRESS => r_PROG_ADDRESS
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
		r_PROG_ADDRESS <= STD_LOGIC_VECTOR(unsigned(r_PROG_ADDRESS) + 1);
		wait for c_clk_period*5;
   end process;
	
end;