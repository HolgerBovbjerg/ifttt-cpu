----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:31:27 03/28/2019 
-- Design Name: 
-- Module Name:    instruction_memory - Behavioral 
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

entity instruction_memory is
    Port ( 	i_CLK : in STD_LOGIC;
				i_ADDRESS : in  STD_LOGIC_VECTOR (7 downto 0);
				o_DATA : out  STD_LOGIC_VECTOR (31 downto 0)
				);
end instruction_memory;

architecture Behavioral of instruction_memory is
type RAM_ARRAY is array (0 to 31) of std_logic_vector(31 downto 0);
signal r_INST_MEM: RAM_ARRAY :=(
	x"00000001",x"00000002",x"00000003",x"00000004",-- 0x00: x'00
   x"00000099",x"000000ff",x"00000078",x"00000011",-- 0x04: 
	others => x"00000000"); 

begin
 
process(i_CLK)

	begin
		if(rising_edge(i_CLK)) then
			o_DATA <= r_INST_MEM(to_integer(unsigned(i_ADDRESS)));
		end if;
	end process;

end Behavioral;

