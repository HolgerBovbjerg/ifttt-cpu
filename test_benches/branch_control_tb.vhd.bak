--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:28:01 04/01/2019
-- Design Name:   
-- Module Name:   C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/Digital Design/digital-design/papilio-pro-projects/branch_control/branch_control_tb.vhd
-- Project Name:  branch_control
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: branch_control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY branch_control_tb IS
END branch_control_tb;
 
ARCHITECTURE behavior OF branch_control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT branch_control
    PORT(
         i_CLK : IN  std_logic;
         i_BRANCH_CONTROL : IN  std_logic_vector(2 downto 0);
         i_ZERO_FLAG : IN  std_logic;
         i_OVERFLOW_FLAG : IN  std_logic;
         i_NEGATIVE_FLAG : IN  std_logic;
         i_CARRY_FLAG : IN  std_logic;
         i_ADDRESS : IN  std_logic_vector(15 downto 0);
         o_ADDRESS : OUT  std_logic_vector(15 downto 0);
         o_PC_LOAD : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_CLK : std_logic := '0';
   signal i_BRANCH_CONTROL : std_logic_vector(2 downto 0) := (others => '0');
   signal i_ZERO_FLAG : std_logic := '0';
   signal i_OVERFLOW_FLAG : std_logic := '0';
   signal i_NEGATIVE_FLAG : std_logic := '0';
   signal i_CARRY_FLAG : std_logic := '0';
   signal i_ADDRESS : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal o_ADDRESS : std_logic_vector(15 downto 0);
   signal o_PC_LOAD : std_logic;

   -- Clock period definitions
   constant i_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: branch_control PORT MAP (
          i_CLK => i_CLK,
          i_BRANCH_CONTROL => i_BRANCH_CONTROL,
          i_ZERO_FLAG => i_ZERO_FLAG,
          i_OVERFLOW_FLAG => i_OVERFLOW_FLAG,
          i_NEGATIVE_FLAG => i_NEGATIVE_FLAG,
          i_CARRY_FLAG => i_CARRY_FLAG,
          i_ADDRESS => i_ADDRESS,
          o_ADDRESS => o_ADDRESS,
          o_PC_LOAD => o_PC_LOAD
        );

   -- Clock process definitions
   i_CLK_process :process
   begin
		i_CLK <= '0';
		wait for i_CLK_period/2;
		i_CLK <= '1';
		wait for i_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 
		
		-- Test no action
		i_ADDRESS <= x"f00f";
		i_BRANCH_CONTROL <= "000";
		wait for i_CLK_period*10;
		
		-- Test jump 
		i_ADDRESS <= x"000f";
		i_BRANCH_CONTROL <= "001";
		wait for i_CLK_period*10;
		i_BRANCH_CONTROL <= "000";
		wait for i_CLK_period*10;
		
		-- Test zero branch
		i_ADDRESS <= x"00f0";
		i_BRANCH_CONTROL <= "010";
		wait for i_CLK_period*10;
		i_ZERO_FLAG <= '1';
		wait for i_CLK_period*10;
		i_ZERO_FLAG <= '0';
		wait for i_CLK_period*10;
		
		-- Test overflow branch
		i_ADDRESS <= x"0f00";
		i_BRANCH_CONTROL <= "011";
		wait for i_CLK_period*10;
		i_OVERFLOW_FLAG <= '1';
		wait for i_CLK_period*10;
		i_OVERFLOW_FLAG <= '0';
		wait for i_CLK_period*10;
		
		-- Test negative branch
		i_ADDRESS <= x"f000"; 
		i_BRANCH_CONTROL <= "100";
		wait for i_CLK_period*10;
		i_NEGATIVE_FLAG <= '1';
		wait for i_CLK_period*10;
		i_NEGATIVE_FLAG <= '0';
		wait for i_CLK_period*10;
		
		-- Test carry branch
		i_ADDRESS <= x"ffff";
		i_BRANCH_CONTROL <= "101";
		wait for i_CLK_period*10;
		i_CARRY_FLAG <= '1';
		wait for i_CLK_period*10;
		i_CARRY_FLAG <= '0';
		wait for i_CLK_period*10;

      wait;
   end process;

END;
