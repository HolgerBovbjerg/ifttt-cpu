library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

library work;
use work.constants.all;

entity branch_control is
    Port ( 	i_CLK : in  STD_LOGIC;
				i_PC_REG_ENABLE : in  STD_LOGIC;
           	i_BRANCH_CONTROL : in  STD_LOGIC_VECTOR (2 downto 0);
				i_PC_INTERRUPT_set : in STD_LOGIC;
				o_INTERRUPT_enable : out STD_LOGIC;
				i_SAVE_PC : in STD_LOGIC;
				i_PC_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
				i_ZERO_FLAG : in  STD_LOGIC;
           	i_OVERFLOW_FLAG : in  STD_LOGIC;
           	i_NEGATIVE_FLAG : in  STD_LOGIC;
           	i_CARRY_FLAG : in  STD_LOGIC;
           	i_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
           	o_ADDRESS : out  STD_LOGIC_VECTOR (9 downto 0);
           	o_PC_LOAD : out  STD_LOGIC
           	);
end branch_control;

architecture Behavioral of branch_control is

	signal r_PC_ADDRESS :  STD_LOGIC_VECTOR (9 downto 0) := "0000000000"; 
	signal r_INTERRUPT_set :  STD_LOGIC := '0'; 
	signal r_INTERRUPT_enable :  STD_LOGIC := '1';

begin

	process(i_CLK) 
	begin
		if(rising_edge(i_CLK)) then
			if ((r_INTERRUPT_enable = '1') and (i_PC_INTERRUPT_set = '1') and (r_INTERRUPT_set = '0')) then
				r_INTERRUPT_set <= '1';
				r_INTERRUPT_enable <= '0';
				o_ADDRESS <= INTERRUPT_address;
				o_PC_LOAD <= '1';
				r_PC_ADDRESS <= std_logic_vector(unsigned(i_PC_ADDRESS));
			else
				r_INTERRUPT_set <= '0';
				case i_BRANCH_CONTROL is
					when BRANCH_JUMP =>
						o_ADDRESS <= i_ADDRESS;
						o_PC_LOAD <= '1';
					when BRANCH_ZERO =>
						o_ADDRESS <= i_ADDRESS;
						if i_ZERO_FLAG = '1' then
							o_PC_LOAD <= '1';
						else
							o_PC_LOAD <= '0';
						end if;
					when BRANCH_OVERFLOW =>
						o_ADDRESS <= i_ADDRESS;
						if i_OVERFLOW_FLAG = '1' then
							o_PC_LOAD <= '1';
						else
							o_PC_LOAD <= '0';
						end if;
					when BRANCH_NEGATIVE =>
						o_ADDRESS <= i_ADDRESS;
						if i_NEGATIVE_FLAG = '1' then
							o_PC_LOAD <= '1';
						else
							o_PC_LOAD <= '0';
						end if;
					when BRANCH_CARRY =>
						o_ADDRESS <= i_ADDRESS;
						if i_CARRY_FLAG = '1' then
							o_PC_LOAD <= '1';
						else
							o_PC_LOAD <= '0';
						end if;
					when BRANCH_RETURN =>
						o_ADDRESS <= r_PC_ADDRESS;
						o_PC_LOAD <= '1';
						r_INTERRUPT_enable <= '1';
					when BRANCH_SAVE_STATE =>
						r_PC_ADDRESS <= std_logic_vector(unsigned(i_PC_ADDRESS) + 1);
						o_PC_LOAD <= '0';
					when others =>
						o_PC_LOAD <= '0';
				end case;
				
				if ((i_SAVE_PC and i_PC_REG_ENABLE) = '1' ) then
					r_PC_ADDRESS <= std_logic_vector(unsigned(i_PC_ADDRESS) + 1);
				end if;
				
			end if;
		end if;
	end process;
	
	o_INTERRUPT_enable <= r_INTERRUPT_enable;

end Behavioral;

