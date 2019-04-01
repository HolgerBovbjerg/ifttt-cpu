--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:46:54 03/23/2019
-- Design Name:   
-- Module Name:   C:/Users/holge/OneDrive/AAU - Elektronik og IT/4. semester/Digital Design/digital-design/papilio-pro-projects/ALU/ALU_tb.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         i_A : IN  std_logic_vector(7 downto 0);
         i_B : IN  std_logic_vector(7 downto 0);
         i_ALU_sel : IN  std_logic_vector(3 downto 0);
         o_ALU_out : OUT  std_logic_vector(7 downto 0);
         o_ALU_carry_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_A : std_logic_vector(7 downto 0) := (others => '0');
   signal i_B : std_logic_vector(7 downto 0) := (others => '0');
   signal i_ALU_sel : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal o_ALU_out : std_logic_vector(7 downto 0);
   signal o_ALU_carry_flag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   signal i:integer;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          i_A => i_A,
          i_B => i_B,
          i_ALU_sel => i_ALU_sel,
          o_ALU_out => o_ALU_out,
          o_ALU_carry_flag => o_ALU_carry_flag
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		i_A <= x"0A";
		i_B <= x"02";
		i_ALU_sel <= x"0";
		
		for i in 0 to 15 loop
			i_ALU_sel <= std_logic_vector(unsigned(i_ALU_sel) + 1);
			wait for 100 ns;
		end loop;
		
		i_A <= x"F6";
		i_B <= x"0A";
      
		wait;
   end process;

END;