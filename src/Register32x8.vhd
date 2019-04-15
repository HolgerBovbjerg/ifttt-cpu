library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register32x8 is
	Port (
		-- Clock and enable
		i_GPR_clk 				: in STD_LOGIC;
		i_GPR_enable			: in STD_LOGIC;
		
		--Address inputs
		i_GPR_address_A 		: in STD_LOGIC_VECTOR (4 downto 0);
		i_GPR_address_B 		: in STD_LOGIC_VECTOR (4 downto 0);
		
		-- Data Output
		o_GPR_ALU_data_A 		: out STD_LOGIC_VECTOR (7 downto 0);
		o_GPR_ALU_data_B		: out STD_LOGIC_VECTOR (7 downto 0);
		
		--Data input
		i_GPR_data				: in STD_LOGIC_VECTOR (7 downto 0);
		
		--Misc
		i_GPR_write_address	: in STD_LOGIC_VECTOR (4 downto 0);
		i_GPR_write_enable	: in STD_LOGIC); 
end register32x8;
		
architecture behaviour of register32x8 is
type RAM_ARRAY is array (0 to 31) of std_logic_vector(7 downto 0);

signal r_REGISTER: RAM_ARRAY := (others => x"00");
begin

process(i_GPR_clk, i_GPR_enable)
	begin
		if(rising_edge(i_GPR_clk) and i_GPR_enable = '1') then
			
			if(i_GPR_write_enable = '1') then
				r_REGISTER(to_integer(unsigned(i_GPR_write_address))) <= i_GPR_data;
			end if;
			
			o_GPR_ALU_data_A <= r_REGISTER(to_integer(unsigned(i_GPR_address_A)));
			o_GPR_ALU_data_B <= r_REGISTER(to_integer(unsigned(i_GPR_address_B)));
			
		end if;
	end process;
end behaviour;