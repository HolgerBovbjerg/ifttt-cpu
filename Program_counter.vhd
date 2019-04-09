library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Program_counter is
	Port ( i_PC_clk : in STD_LOGIC;
			i_PC_write_enable : in STD_LOGIC;
			i_PC_address : in STD_LOGIC_VECTOR (15 DOWNTO 0);
			i_PC_OP : in STD_LOGIC_VECTOR (1 DOWNTO 0);
			o_PC_FLASH_PM_data : out STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
end Program_counter;

architecture Behavioral of Program_counter is

signal r_PROG_COUNT : STD_LOGIC_VECTOR (15 DOWNTO 0) := X"0000";
constant PC_OP_hold : STD_LOGIC_VECTOR (1 DOWNTO 0):="00"; -- Keep the PC same/hold
constant PC_OP_increment : STD_LOGIC_VECTOR (1 DOWNTO 0):="01"; -- increment +1
constant PC_OP_assign : STD_LOGIC_VECTOR (1 DOWNTO 0):="10"; -- sets from external input
constant PC_OP_reset : STD_LOGIC_VECTOR (1 DOWNTO 0):="11"; -- reset PC

begin

	process (i_PC_clk)
		begin
			if(rising_edge(i_PC_clk) and i_PC_write_enable = '1') then 
			case i_PC_OP is
			when PC_OP_hold => -- Keep the PC same/hold
			when PC_OP_increment => -- increment +1
				r_PROG_COUNT <= std_LOGIC_VECTOR(unsigned(r_PROG_COUNT) + 1);
			when PC_OP_assign => -- sets from external input
				r_PROG_COUNT <= i_PC_address;
			when PC_OP_reset => -- reset PC
				r_PROG_COUNT <= X"0000";
			when others =>	
		end case;
	end if;
end process;
	o_PC_FLASH_PM_data <= r_PROG_COUNT;
end Behavioral;
