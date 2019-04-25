library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstrucReg is
	port (	i_IR_clk 				: in STD_LOGIC;
				i_IR_enable 			: in STD_LOGIC;
				i_IR_data				: in STD_LOGIC_VECTOR (31 downto 0);
				o_IR_instruction		: out STD_LOGIC_VECTOR (31 downto 0)
				);
end InstrucReg;

architecture behaviour of InstrucReg is

signal r_register 		: STD_LOGIC_VECTOR (31 downto 0) :=(others => '0');

begin

	process(i_IR_clk, i_IR_enable)
	begin
		if(rising_edge(i_IR_clk) and i_IR_enable = '1') then
			r_register <= i_IR_data;
		end if;
	end process;
	
	o_IR_instruction <= r_register;
	
end behaviour;