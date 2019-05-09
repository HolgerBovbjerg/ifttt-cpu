library ieee;
use ieee.std_logic_1164.all;
 
entity data_bus is
  port (
		i_SELECT : in  std_logic_vector(1 downto 0);
		i_MEMORY  : in  std_logic_vector(7 downto 0);
		i_ALU  : in  std_logic_vector(7 downto 0);
		o_MEMORY   : out std_logic_vector(7 downto 0);
	 	o_REGISTER   : out std_logic_vector(7 downto 0)
    );
end entity data_bus;

architecture behaviour of data_bus is
	signal w_INPUT : std_logic_vector(7 downto 0);

begin
	with i_Select select 
		w_INPUT 		<= i_ALU when "00",
							i_ALU when "01",
							i_MEMORY when "10",
							i_MEMORY when "11",
							x"00"	when others;
	with i_Select select 
		o_MEMORY 	<=	w_INPUT when "01",
							w_INPUT when "11",
							x"00"	when others;
	with i_Select select 
		o_REGISTER 	<=	w_INPUT when "00",
							w_INPUT when "10",
							x"00"	when others;			
end behaviour;