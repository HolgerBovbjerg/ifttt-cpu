----------------------------------------------------------------------------------
-- Company: Group 414 Aalborg University
-- Engineer: Holger Severin Bvbjerg
-- 
-- Create Date:    18:10:46 03/22/2019 
-- Design Name: ALU
-- Module Name:    ALU - Behavioral 

-- Additional Comments: 
--	ALU with three inputs, and five output.
-- Two inputs are for 8-bit data and one input is a 4-bit value for operation selection
-- One output is the 8-bit ALU result and four are 1-bit ALU flags for carry, overflow, negative and zero.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.constants.all;

entity ALU is
    Port ( 	i_CLK : in  std_logic; -- Clock signal
				i_ENABLE : in std_logic; -- Enable signal
				i_ALU_A : in  std_logic_vector (7 downto 0); -- 8-bit input
				i_ALU_B : in  std_logic_vector (7 downto 0); -- 8-bit input
				i_ALU_sel : in  std_logic_vector (3 downto 0); -- 4-bit function select input
				i_ALU_signed : in std_logic; -- Sign select (1 for signed and 0 for unsigned arithmetic)
				o_ALU_out : out  std_logic_vector (7 downto 0); -- 8-bit output
				o_ALU_carry_flag : out  std_logic; -- output carry flag
				o_ALU_overflow_flag : out  std_logic; -- output overflow flag
				o_ALU_negative_flag : out  std_logic; -- output negative flag
				o_ALU_zero_flag : out  std_logic -- output zero flag
			 ); -- output overflow flag
end ALU;

architecture Behavioral of ALU is

signal r_ALU_Result : std_logic_vector (7 downto 0); -- Buffer signal for output
signal r_ALU_carry_flag : std_logic; -- Buffer signal for carry
signal r_ALU_overflow_flag : std_logic; -- Buffer signal for carry
signal r_ALU_negative_flag : std_logic; -- Buffer signal for carry
signal r_ALU_zero_flag : std_logic; -- Buffer signal for carry

signal tmp : std_logic_vector (8 downto 0); -- Buffer for carry flag output

begin
	process(i_CLK, i_ENABLE)
	begin
		if(rising_edge(i_CLK) and i_ENABLE ='1') then
			case(i_ALU_Sel) is
				when OPCODE_ADD => -- Add
					if (i_ALU_signed = '1') then
						r_ALU_Result <= std_logic_vector(signed(i_ALU_A) + signed(i_ALU_B));
					else
						r_ALU_Result <= std_logic_vector(unsigned(i_ALU_A) + unsigned(i_ALU_B));
					end if;
				when OPCODE_SUB => -- Subtract
					if (i_ALU_signed = '1') then
						r_ALU_Result <= std_logic_vector(signed(i_ALU_A) - signed(i_ALU_B));			
					else
						r_ALU_Result <= std_logic_vector(unsigned(i_ALU_A) - unsigned(i_ALU_B));		
					end if;
					
				when OPCODE_OR => -- Or
					r_ALU_Result <= i_ALU_A or i_ALU_B;
				when OPCODE_XOR => -- Xor
					r_ALU_Result <= i_ALU_A xor i_ALU_B;
				when OPCODE_AND => -- And
					r_ALU_Result <= i_ALU_A and i_ALU_B;
				when OPCODE_NOT => -- Not
					r_ALU_Result <= not i_ALU_A;
				when OPCODE_READ => -- Read
					r_ALU_Result <= r_ALU_Result;
				when OPCODE_WRITE => -- Write
					r_ALU_Result <= i_ALU_A;
				when OPCODE_LOAD => -- Load
					r_ALU_Result <= r_ALU_Result;
				when OPCODE_COMPARE => -- Compare
					if(i_ALU_A = i_ALU_B) then
						r_ALU_Result(7) <= '1';
					else
						r_ALU_Result(7) <= '0';
					end if;
					
					if(i_ALU_A > i_ALU_B) then
						r_ALU_Result(6) <= '1';
					else
						r_ALU_Result(6) <= '0';
					end if;
					
					if(i_ALU_A < i_ALU_B) then
						r_ALU_Result(5) <= '1';
					else
						r_ALU_Result(5) <= '0';
					end if;
					
					if(i_ALU_A = x"00") then
						r_ALU_Result(4) <= '1';
					else
						r_ALU_Result(4) <= '0';
					end if;
					
					if(i_ALU_B = x"00") then
						r_ALU_Result(3) <= '1';
					else
						r_ALU_Result(3) <= '0';
					end if;
	
					r_ALU_Result(2 downto 0) <= "000";
					
				when OPCODE_BSL => -- Bit shift left
					r_ALU_Result <= std_logic_vector(unsigned(i_ALU_A) sll to_integer(unsigned(i_ALU_B)));
				when OPCODE_BSR => -- Bit shift right
					r_ALU_Result <= std_logic_vector(unsigned(i_ALU_A) srl to_integer(unsigned(i_ALU_B)));
				when OPCODE_BRANCH => -- Branch
					r_ALU_Result <= r_ALU_Result;
				when OPCODE_JUMPEQ => -- Jumpeq
					r_ALU_Result <= (not i_ALU_A) and i_ALU_B; -- If result is zero the two input are equal
				when OPCODE_SPECIAL => -- Special opcode
					r_ALU_Result <= r_ALU_Result;
				when others => 
					r_ALU_Result <= r_ALU_Result;
			end case;
			
			-- Carry flag
			case(i_ALU_sel) is 
				when OPCODE_ADD =>
					tmp <= ('0' & i_ALU_A) + ('0' & i_ALU_B); -- Sum of inputs assigned to tmp
					r_ALU_carry_flag <= tmp(8); -- MSB of tmp assigned to carry flag
				when OPCODE_BSL =>
					tmp <= std_logic_vector(unsigned('0' & i_ALU_A) sll to_integer(unsigned('0' & i_ALU_B)));
					r_ALU_carry_flag <= tmp(8);
				when OPCODE_BRANCH =>
					r_ALU_carry_flag <= r_ALU_carry_flag;
				when others =>
					r_ALU_carry_flag <= '0';
			end case;
			
			-- Overflow flag
			case(i_ALU_sel) is 
				when OPCODE_ADD =>
					if(i_ALU_A(7) = i_ALU_B(7)) then -- Test for subtraction overflow
						if(i_ALU_A(7) /= r_ALU_Result(7)) then
							r_ALU_overflow_flag <= '1';
						end if;
					else 
						r_ALU_overflow_flag <= '0';
						
					end if;
				when OPCODE_SUB =>
					if(i_ALU_A(7) /= i_ALU_B(7)) then -- Test for addition overflow
						if(i_ALU_A(7) /= r_ALU_Result(7)) then
							r_ALU_overflow_flag <= '1';
						end if;
					else 
						r_ALU_overflow_flag <= '0';
					end if;
				when OPCODE_BRANCH =>
					r_ALU_overflow_flag <= r_ALU_overflow_flag;
				when others =>
					r_ALU_overflow_flag <= '0';
			end case;
			
			-- Negative flag
			case(i_ALU_sel) is 
				when OPCODE_ADD =>
					if(i_ALU_signed = '1') then 
						if (r_ALU_Result(7) = '1') then
							r_ALU_negative_flag <= '1';
						else
							r_ALU_negative_flag <= '0';
						end if;
					else 
						r_ALU_negative_flag <= '0';
					end if;
				when OPCODE_SUB =>
					if(i_ALU_signed = '1') then 
						if (r_ALU_Result(7) = '1') then
							r_ALU_negative_flag <= '1';
						else
							r_ALU_negative_flag <= '0';
						end if;
					else 
						if (unsigned(i_ALU_A) < unsigned(i_ALU_B)) then
							r_ALU_negative_flag <= '1';
						else
							r_ALU_negative_flag <= '0';
						end if;
					end if;
				when OPCODE_BRANCH =>
					r_ALU_negative_flag <= r_ALU_negative_flag;
				when others =>
					r_ALU_negative_flag <= '0';
			end case;
			
			-- Zero flag 
			if (r_ALU_Result="00000000") then 
				r_ALU_zero_flag <= '1'; 
			else 
				r_ALU_zero_flag <= '0';
			end if;
			
		end if;
		
	end process;
	
	-- buffers assigned to output
	o_ALU_out <= r_ALU_Result; 
	o_ALU_carry_flag <= r_ALU_carry_flag; 
	o_ALU_overflow_flag <= r_ALU_overflow_flag;
	o_ALU_negative_flag <= r_ALU_negative_flag;
	o_ALU_zero_flag <= r_ALU_zero_flag;
	
end Behavioral;