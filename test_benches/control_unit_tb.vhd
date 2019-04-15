LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned vcontrol_unites
USE ieee.numeric_std.ALL;
 
ENTITY control_unit_tb IS
END control_unit_tb;
 
ARCHITECTURE behavior OF control_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         i_CLK : in  STD_LOGIC; -- Clock input
			i_RESET : in  STD_LOGIC; -- Reset input
			i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
			o_STATE : out  STD_LOGIC_VECTOR (6 downto 0) -- State output used for enabling blocks depending on state 
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
	signal i_reset : std_logic := '0';
   signal i_OPCODE : std_logic_vector(3 downto 0) := (others => '0');
  
 	--Outputs
   signal o_STATE : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant c_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          i_CLK => i_clk,
			 i_RESET => i_RESET,
          i_OPCODE => i_OPCODE,
          O_STATE => o_STATE
        );

   -- Clock process definitions
   i_clk_process :process
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
		i_RESET <= '1';
      wait for 100 ns;
		
		-- Stimulus
		i_RESET <= '0';
		i_OPCODE <= "0000"; 
		wait for 100 ns;
		i_OPCODE <= "1100"; 
		wait for 100 ns;
		i_OPCODE <= "1101"; 
		wait for 100 ns;
		i_OPCODE <= "0101"; 
		wait for 100 ns;
		
		i_RESET <= '1';
		wait;
   end process;

END;