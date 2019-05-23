LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         i_CLK : in  std_logic;
			i_ENABLE : in std_logic;
			i_ALU_A : in  std_logic_vector (7 downto 0); -- 8-bit input
			i_ALU_B : in  std_logic_vector (7 downto 0); -- 8-bit input
			i_ALU_sel : in  std_logic_vector (3 downto 0); -- 4-bit function select input
			i_ALU_signed : in std_logic; -- Sign select (1 for signed and 0 for unsigned arithmetic)
			i_ALU_carry : in std_logic; -- Carry select (1 for carry and 0 for no carry)
			o_ALU_out : out  std_logic_vector (7 downto 0); -- 8-bit output
			o_ALU_carry_flag : out  std_logic; -- output carry flag
			o_ALU_overflow_flag : out  std_logic;
			o_ALU_negative_flag : out  std_logic;
			o_ALU_zero_flag : out  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_ALU_clk : std_logic := '0';
	signal i_ALU_enable : std_logic := '0';
   signal i_ALU_A : std_logic_vector(7 downto 0) := (others => '0');
   signal i_ALU_B : std_logic_vector(7 downto 0) := (others => '0');
   signal i_ALU_sel : std_logic_vector(3 downto 0) := (others => '0');
	signal i_ALU_signed : std_logic := '0';
	signal i_ALU_carry : std_logic := '0';

 	--Outputs
   signal o_ALU_out : std_logic_vector(7 downto 0);
   signal o_ALU_carry_flag : std_logic;
   signal o_ALU_overflow_flag : std_logic;
   signal o_ALU_negative_flag : std_logic;
   signal o_ALU_zero_flag : std_logic;

   -- Clock period definitions
   constant c_ALU_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          i_CLK => i_ALU_clk,
			 i_ENABLE => i_ALU_enable,
          i_ALU_A => i_ALU_A,
          i_ALU_B => i_ALU_B,
          i_ALU_sel => i_ALU_sel,
			 i_ALU_signed => i_ALU_signed,
			 i_ALU_carry => i_ALU_carry,
          o_ALU_out => o_ALU_out,
          o_ALU_carry_flag => o_ALU_carry_flag,
          o_ALU_overflow_flag => o_ALU_overflow_flag,
          o_ALU_negative_flag => o_ALU_negative_flag,
          o_ALU_zero_flag => o_ALU_zero_flag
        );

   -- Clock process definitions
   i_ALU_clk_process :process
   begin
		i_ALU_clk <= '0';
		wait for c_ALU_clk_period/2;
		i_ALU_clk <= '1';
		wait for c_ALU_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i_ALU_enable <= '1'; 
		i_ALU_A <= x"ff";
		i_ALU_B <= x"d1";
		i_ALU_sel <= x"1";
		i_ALU_signed <= '0';
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_signed <= '1';
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_signed <= '0';
		i_ALU_carry <= '1';
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_carry <= '0';
		i_ALU_sel <= x"2";
		i_ALU_signed <= '0';
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_signed <= '1';
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_A <= x"00";
		i_ALU_B <= x"00";
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_sel <= x"1";
		i_ALU_A <= x"90";
		i_ALU_B <= x"90";
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		i_ALU_signed <= '0';
		i_ALU_A <= x"31";
		i_ALU_B <= x"03";
		i_ALU_sel <= x"0";
		wait for c_ALU_clk_period;
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*6;
		i_ALU_enable <= '1'; 
		
		for i in 0 to 15 loop
			i_ALU_sel <= std_logic_vector(unsigned(i_ALU_sel) + 1);
			wait for c_ALU_clk_period;
			i_ALU_enable <= '0';
			wait for c_ALU_clk_period*6;
			i_ALU_enable <= '1'; 
		end loop;
		
		i_ALU_A <= x"00";
		i_ALU_B <= x"00";
		-- hold reset state for 100 ns.
		i_ALU_enable <= '0';
		wait for c_ALU_clk_period*10;
		
		wait;
		
   end process;

END;