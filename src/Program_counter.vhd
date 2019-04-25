library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Program_counter is
	Port ( 	i_PC_clk : in STD_LOGIC;
			i_PC_enable : in STD_LOGIC;
			i_PC_write_enable : in STD_LOGIC;
			i_PC_address : in STD_LOGIC_VECTOR (9 DOWNTO 0);
			i_PC_reset : in STD_LOGIC;
			o_PC_PM_address : out STD_LOGIC_VECTOR (9 DOWNTO 0)
			);
end Program_counter;

architecture Behavioral of Program_counter is

signal r_PROG_COUNT : STD_LOGIC_VECTOR (9 DOWNTO 0) := (others => '0');

begin

	process (i_PC_clk, i_PC_enable)
		begin
			if(rising_edge(i_PC_clk)) then 
				if (i_PC_reset = '1') then
					r_PROG_COUNT <= (others => '0');
				elsif (i_PC_enable = '1') then 
					if (i_PC_write_enable = '1') then
						r_PROG_COUNT <= i_PC_address;
					else 
						r_PROG_COUNT <= STD_LOGIC_VECTOR(unsigned(r_PROG_COUNT)+1);
					end if;
				end if;
			end if;
	end process;
	o_PC_PM_address <= r_PROG_COUNT;
end Behavioral;
