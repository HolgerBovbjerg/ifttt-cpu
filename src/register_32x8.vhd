----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:41 03/26/2019 
-- Design Name: 
-- Module Name:    register_32x8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_32x8 is
    Port ( 	i_CLK : in STD_LOGIC;
				i_ADDRESS_A : in  STD_LOGIC_VECTOR (4 downto 0);
				i_ADDRESS_B : in  STD_LOGIC_VECTOR (4 downto 0);
				o_OUT_A : out  STD_LOGIC_VECTOR (7 downto 0);
				o_OUT_B : out  STD_LOGIC_VECTOR (7 downto 0);
				i_WRITE_ADDRESS : in  STD_LOGIC_VECTOR (4 downto 0);
				i_DATA_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				i_WRITE_ENABLE : in  STD_LOGIC);
end register_32x8;

architecture Behavioral of register_32x8 is
type RAM_ARRAY is array (0 to 31) of std_logic_vector(7 downto 0);

signal r_REGISTER: RAM_ARRAY :=(
	x"01",x"02",x"03",x"04",-- 0x00: x'00
   x"99",x"ff",x"78",x"11",-- 0x04: 
	others => x"00"); 

begin
 
process(i_CLK)
	begin
		if(rising_edge(i_CLK)) then 
			if(i_WRITE_ENABLE = '1') then -- test if write is enabled
				r_REGISTER(to_integer(unsigned(i_WRITE_ADDRESS))) <= i_DATA_IN; -- Store input in ram address
				-- (RAM address needs to be integer)
			end if;
			
			o_OUT_A <= r_REGISTER(to_integer(unsigned(i_ADDRESS_A)));
			o_OUT_B <= r_REGISTER(to_integer(unsigned(i_ADDRESS_B)));
			
		end if;
	end process;

end Behavioral;

