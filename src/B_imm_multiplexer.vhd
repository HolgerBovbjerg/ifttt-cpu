library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity B_imm_multiplexer is 
	Port (	--i_CLK : in STD_LOGIC; -- Clock input
				i_B_imm_sel : in STD_LOGIC; -- Input for selecting B register or immidiate value
				i_DATA_B : in STD_LOGIC_VECTOR(7 downto 0); -- Data from B register
				i_DATA_Imm : in STD_LOGIC_VECTOR(7 downto 0); -- Immidiate data
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0) -- Output data
		);
end B_imm_multiplexer;


architecture Behavioral of B_imm_multiplexer is

Begin
	with (i_B_imm_sel) select 
		o_DATA <= 	i_DATA_Imm 	when '0',
						i_DATA_B 	when '1',
						x"00"			when others;
end Behavioral;