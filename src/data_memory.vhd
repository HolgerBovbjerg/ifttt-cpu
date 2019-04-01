----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:35 03/30/2019 
-- Design Name: 
-- Module Name:    data_memory - Behavioral 
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

entity data_memory is
    Port ( i_CLK : in STD_LOGIC;
			  i_WRITE_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
           i_WRITE_ENABLE : in  STD_LOGIC;
           i_WRITE_DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           o_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
           o_DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end data_memory;

architecture Behavioral of data_memory is
-- define the new type for the 1024x8 RAM 
type RAM_ARRAY is array (0 to 1023 ) of std_logic_vector (7 downto 0);
signal r_DATA_RAM: RAM_ARRAY :=(
		(others => x"00")
	);

begin

	process(i_CLK)
	begin
		if(rising_edge(i_CLK)) then 
			if(i_WRITE_ENABLE = '1') then -- test if write is enabled
				r_DATA_RAM(to_integer(unsigned(i_WRITE_ADDRESS))) <= i_WRITE_DATA; -- Store input in ram address
				-- (RAM address needs to be integer)
			end if;
			o_DATA <= r_DATA_RAM(to_integer(unsigned(o_ADDRESS))); -- Output data from ram address
		end if;
	end process;

end Behavioral;

