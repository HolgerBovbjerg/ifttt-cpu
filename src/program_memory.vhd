----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:22 03/27/2019 
-- Design Name: 
-- Module Name:    program_memory - Behavioral 
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

entity program_memory is
    Port ( i_CLK : in  STD_LOGIC;
           
			  --i_RESET : in  STD_LOGIC;
			  i_READ_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
           o_READ_DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end program_memory;

architecture Behavioral of program_memory is

type RAM_ARRAY is array (0 to 1023) of std_logic_vector (7 downto 0);

signal PROG_MEM: RAM_ARRAY :=(
others => x"FF"
); 

begin

	process(i_CLK)
	begin 
		if(rising_edge(i_CLK)) then 
			--if(i_RESET = '1') then
				--PROG_MEM <= (others => x"00");
			--else
				o_READ_DATA <= PROG_MEM(to_integer(unsigned(i_READ_ADDRESS))); -- Output data from ram address
			--end if;
		end if;
	end process;

end Behavioral;

