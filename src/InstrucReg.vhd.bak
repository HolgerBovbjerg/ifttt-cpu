library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstrucReg is
	port (	i_IR_clk 				: in STD_LOGIC;
				i_IR_write_enable 	: in STD_LOGIC;
				i_IR_data				: in STD_LOGIC_VECTOR (31 downto 0);
				o_IR_CU_data			: out STD_LOGIC_VECTOR (31 downto 0)
				);
end InstrucReg;

architecture behaviour of InstrucReg is

signal r_register 		: STD_LOGIC_VECTOR (31 downto 0) :=(others => '0');
--signal w_write_enable	: STD_LOGIC => i_IR_write_enable;

begin

process(i_IR_clk, i_IR_write_enable)
	begin
		if(rising_edge(i_IR_clk)) then
			if(i_IR_write_enable = '1') then
				r_register <= i_IR_data;
			end if;
				o_IR_CU_data <= r_register;
		end if;
	end process;
end behaviour;