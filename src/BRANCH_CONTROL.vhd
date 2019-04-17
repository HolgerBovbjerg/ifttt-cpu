----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:14:23 04/01/2019 
-- Design Name: 
-- Module Name:    branch_control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity branch_control is
    Port ( 
			  i_BRANCH_CONTROL_clk : in  STD_LOGIC;
           i_BRANCH_CONTROL_funct_sel : in  STD_LOGIC_VECTOR (2 downto 0);
			  i_BRANCH_CONTROL_ZERO : in  STD_LOGIC;
           i_BRANCH_CONTROL_overflow : in  STD_LOGIC;
           i_BRANCH_CONTROL_negative : in  STD_LOGIC;
           i_BRANCH_CONTROL_carry : in  STD_LOGIC;
           i_BRANCH_CONTROL_address : in  STD_LOGIC_VECTOR (9 downto 0);
           o_BRANCH_CONTROL_PC_address : out  STD_LOGIC_VECTOR (9 downto 0);
           o_BRANCH_CONTROL_PC_write_enable : out  STD_LOGIC
           );
end branch_control;

architecture Behavioral of branch_control is



begin

	process(i_BRANCH_CONTROL_clk) 
	begin
	
		if(rising_edge(i_BRANCH_CONTROL_clk)) then
		
			case i_BRANCH_CONTROL_funct_sel is
				when "001" => -- Jump
					
					o_BRANCH_CONTROL_PC_write_enable <= '1';
				when "010" => -- Zero branch
					if i_BRANCH_CONTROL_ZERO  = '1' then
					
						o_BRANCH_CONTROL_PC_write_enable <= '1';
					else
						o_BRANCH_CONTROL_PC_write_enable <= '0';
					end if;
				when "011" => -- Overflow branch
					if i_BRANCH_CONTROL_overflow = '1' then
						
						o_BRANCH_CONTROL_PC_write_enable <= '1';
					else
						o_BRANCH_CONTROL_PC_write_enable <= '0';
					end if;
				when "100" => -- Negative branch
					if i_BRANCH_CONTROL_negative = '1' then
						
						o_BRANCH_CONTROL_PC_write_enable <= '1';
					else
						o_BRANCH_CONTROL_PC_write_enable <= '0';
					end if;
				when "101" => -- Carry branch
					if i_BRANCH_CONTROL_carry = '1' then
						
						o_BRANCH_CONTROL_PC_write_enable <= '1';
					else
						o_BRANCH_CONTROL_PC_write_enable <= '0';
					end if;
				when others => -- Increment PC
					o_BRANCH_CONTROL_PC_write_enable <= '0';
			end case;
	
			o_BRANCH_CONTROL_PC_address <= i_BRANCH_CONTROL_address;
			
			
		end if;
		
	end process;
end Behavioral;

