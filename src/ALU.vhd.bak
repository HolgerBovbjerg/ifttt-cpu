----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:46 03/22/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity ALU is
	generic ( 
     constant N: natural := 1  -- number of shifted or rotated bits
    );
	 
    Port ( 	i_ALU_clk : in  std_logic;
	   		i_A : in  std_logic_vector (7 downto 0); -- 8-bit input
        	i_B : in  std_logic_vector (7 downto 0); -- 8-bit input
           	i_ALU_sel : in  std_logic_vector (3 downto 0); -- 4-bit function select input
           	o_ALU_out : out  std_logic_vector (7 downto 0); -- 8-bit output
           	o_ALU_carry_flag : out  std_logic; -- output carry flag
	   		o_ALU_overflow_flag : out  std_logic; -- output overflow flag
	   		o_ALU_negative_flag : out  std_logic; -- output negative flag
	   		o_ALU_zero_flag : out  std_logic -- output zero flag
		); 
end ALU;

architecture Behavioral of ALU is

constant ADD : std_logic_vector(3 DOWNTO 0):="0000"; -- Add opcode
constant SUB : std_logic_vector(3 DOWNTO 0):="0001"; -- Subtract opcode
constant MULTIPLY : std_logic_vector(3 DOWNTO 0):="0010"; -- Multiply opcode 

signal ALU_Result : std_logic_vector (7 downto 0); -- Buffer signal for output
signal tmp : std_logic_vector (8 downto 0); -- Buffer for carry flag output

begin
	process(i_ALU_clk, i_A, i_B, i_ALU_Sel)
	begin
		if(rising_edge(i_ALU_clk)) then
			case(i_ALU_Sel) is
				when ADD => -- Add
					ALU_result <= std_logic_vector(unsigned(i_A) + unsigned(i_B));
					if(i_A(7) = i_B(7)) then -- Test for addition overflow
						if(i_A(7) /= ALU_result(7)) then
							o_ALU_overflow_flag <= '1';
						else 
							o_ALU_overflow_flag <= '0';
						end if;
					end if;
				when SUB => -- Subtract
					ALU_result <= std_logic_vector(unsigned(i_A) - unsigned(i_B));
					if(i_A(7) /= i_B(7)) then -- Test for subtraction overflow
						if(i_A(7) /= ALU_result(7)) then
							o_ALU_overflow_flag <= '1';
						else 
							o_ALU_overflow_flag <= '0';
						end if;
					end if;
				when MULTIPLY => -- Multiply
					ALU_result <= std_logic_vector(to_unsigned(to_integer(unsigned(i_A)) * to_integer(unsigned(i_B)),8));
				when "0011" => -- Divide
					ALU_result <= std_logic_vector(to_unsigned(to_integer(unsigned(i_A)) / to_integer(unsigned(i_B)),8));
				when "0100" => -- Logical left shift
					ALU_result <= std_logic_vector(unsigned(i_A) sll N);
				when "0101" => -- Logical right shift
					ALU_result <= std_logic_vector(unsigned(i_A) srl N);
				when "1000" => -- And
					ALU_result <= i_A and i_B;
				when "1001" => -- Or
					ALU_result <= i_A or i_B;
				when "1010" => -- Xor
					ALU_result <= i_A xor i_B;
				when "1011" => -- Nor
					ALU_result <= i_A and i_B;
				when "1100" => -- Nand
					ALU_result <= i_A and i_B;
				when "1101" => -- Xnor
					ALU_result <= i_A and i_B;
				when "1110" => -- Greater than compare
					if(i_A > i_B) then
						ALU_result <= x"01";
					else
						ALU_result <= x"00";
					end if;
				when "1111" => -- Equal than compare
					if(i_A = i_B) then
						ALU_result <= x"01";
					else
						ALU_result <= x"00";
					end if;
				when others => 
					ALU_result <= i_A + i_B;
				-- 14 out of 16 possible ALU function slots used (4-bit -> 16 possible select signals)
			end case;
			
			
			if (signed(unsigned(ALU_result)) < 0) then -- Test for negative flag
				o_ALU_negative_flag <= '1';
			else
				o_ALU_negative_flag <= '0';
			end if;
			
			if (ALU_result="00000000") then -- Test for zero flag
				o_ALU_zero_flag <= '1'; 
			else 
				o_ALU_zero_flag <= '0';
			end if;
		end if;
		end process;
		
		o_ALU_out <= ALU_result; -- result assigned to output
		tmp <= ('0' & i_A) + ('0' & i_B); -- Sum of inputs assigned to tmp
		o_ALU_carry_flag <= tmp(8); -- MSB of tmp assigned to carry flag
end Behavioral;


