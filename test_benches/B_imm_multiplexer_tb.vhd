LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY B_imm_multiplexer_tb IS
END B_imm_multiplexer_tb;

architecture behavior of B_imm_multiplexer_tb is

	COMPONENT B_imm_multiplexer is 
	Port (	i_CLK : in STD_LOGIC;
				i_B_imm_sel : in STD_LOGIC;
				i_DATA_B : in STD_LOGIC_VECTOR(7 downto 0);
				i_DATA_Imm : in STD_LOGIC_VECTOR(7 downto 0);
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0)
		);
	end COMPONENT;
	
	--Inputs 
	signal i_CLK : std_logic := '0';
	signal i_B_imm_sel : std_logic := '0';
   signal i_DATA_B : std_logic_vector(7 downto 0) := (others => '0');
   signal i_DATA_Imm : std_logic_vector(7 downto 0) := (others => '0');
	
	-- Outputs
   signal o_DATA : std_logic_vector(7 downto 0);
	
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
	
begin

-- Instantiate the Unit Under Test (UUT)
   uut: B_imm_multiplexer PORT MAP (
				i_CLK => i_CLK,
				i_B_imm_sel => i_B_imm_sel,
				i_DATA_B => i_DATA_B,
				i_DATA_Imm => i_DATA_Imm,
				o_DATA => o_DATA
        );

   -- Clock process definitions
   i_ALU_clk_process :process
   begin
		i_clk <= '0';
		wait for c_clk_period/2;
		i_clk <= '1';
		wait for c_clk_period/2;
   end process;

	-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;		
		i_B_imm_sel <= '0';
		i_DATA_B   <= "01010101";
		i_DATA_Imm <= "11110000";
		wait for c_clk_period*10;
		i_B_imm_sel <= '1';
		wait for c_clk_period*10;
		i_B_imm_sel <= '0';
		i_DATA_B   <= "11111111";
		i_DATA_Imm <= "00000000";
		wait for c_clk_period*10;
		i_B_imm_sel <= '1';
		wait for c_clk_period*10;
		
		wait;
  end process;


end behavior;