library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity control_unit is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
				o_STATE : out  STD_LOGIC_VECTOR (6 downto 0) -- State output used for enabling blocks depending on state 
			 );
end control_unit;

architecture Behavioral of control_unit is

	signal r_state: STD_LOGIC_VECTOR(6 downto 0) := "0000001"; -- Current state
	
begin

	process(i_CLK)
	begin
		if rising_edge(i_CLK) then
			if i_RESET = '1' then -- Check for reset 
				r_state <= "0000001"; -- Reset state
			else
				case r_state is -- Check current state
					when "0000001" => -- fetch state
								r_state <= "0000010"; -- Set state to "decode" state
					when "0000010" => -- decode
						r_state <= "0000100"; -- Set state to "regread" state
					when "0000100" => -- regread
						r_state <= "0001000"; -- Set state to execute state
					when "0001000" => -- execute
						if (i_OPCODE(3 downto 0) = "1100" or i_OPCODE(3 downto 0) = "1101") then -- Check if a memory has to be accessed, 
														--Write opcode							--Read opcode
							r_state <= "0010000"; --  Set state to "memory" state
						else -- If memory does not have to be accessed 
							r_state <= "0100000"; -- Set state to "writeback" state
						end if;
					when "0010000" => -- Memory state
								r_state <= "0100000"; -- Set state to "writeback" state
					when "0100000" => -- Writeback state
							r_state <= "0000001"; --Set state to "fetch" state
					when others =>
							r_state <= "0000001"; --Set state to "fetch" state
				end case;
			end if;
		end if;
	end process;

	o_STATE <= r_state; -- Set state signal to output state


end Behavioral;