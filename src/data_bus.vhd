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
begin
	
	
	process(i_Select,	i_MEMORY, i_ALU) is
	begin
		case i_Select is
			when "00" =>
				o_REGISTER <= i_ALU;
			when "01" =>
				o_MEMORY <= i_ALU;
			when "10" =>
				o_REGISTER <=	i_MEMORY;
			when "11" =>
				o_MEMORY <=	i_MEMORY;
			when others =>
				o_REGISTER <= i_ALU;
		end case;
	end process;
	
				
end behaviour;