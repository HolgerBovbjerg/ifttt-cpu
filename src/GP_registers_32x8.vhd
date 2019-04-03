----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:04 03/23/2019 
-- Design Name: 
-- Module Name:    my_single_port_RAM - Behavioral 
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

-- A 32x8 single-port RAM in VHDL
entity GP_registers_32x8 is
    Port ( i_GPR_address : in  STD_LOGIC_VECTOR (4 downto 0); --Address to read from or write to
           i_GPR_data : in  STD_LOGIC_VECTOR (7 downto 0); -- Data to write to RAM
           i_GPR_write_enable : in  STD_LOGIC; -- Write enable 
           i_GPR_CLK : in  STD_LOGIC; -- Clock input
			  i_GPR_A_B_data_sel: in STD_LOGIC; --Read register A or B and send to ALU
           o_GPR_ALU_data_A : out  STD_LOGIC_VECTOR (7 downto 0); -- Data output to ALU
			  o_GPR_ALU_data_B : out  STD_LOGIC_VECTOR (7 downto 0)); -- Data output to ALU
end GP_registers_32x8;

architecture rtl of GP_registers_32x8 is
-- define the new type for the 128x8 RAM 
type RAM_ARRAY is array (0 to 31 ) of std_logic_vector (7 downto 0);

-- creates signal "RAM" of type "RAM_ARRAY" 
-- and initialise with values in the RAM.
signal RAM: RAM_ARRAY :=(  -- RAM adress
   x"00",x"00",x"00",x"00",-- 0x00: 
   x"00",x"00",x"00",x"00",-- 0x04: 
   x"00",x"00",x"00",x"00",-- 0x08: 
   x"00",x"00",x"00",x"00",-- 0x0C: 
   x"00",x"00",x"00",x"00",-- 0x10: 
   x"00",x"00",x"00",x"00",-- 0x14: 
   x"00",x"00",x"00",x"00",-- 0x18: 
   x"00",x"00",x"00",x"00" -- 0x1C: 
   );

begin

	process(all)
	begin
		if(rising_edge(i_GPR_CLK)) then 
			if(i_GPR_write_enable = '1') then -- test if write is enabled
				RAM(to_integer(unsigned(i_GPR_address))) <= i_GPR_data; -- Store input in ram address
			end if;																 -- (RAM address needs to be integer)
				if(i_GPR_A_B_data_sel = '1') then
				o_GPR_ALU_data_A <= RAM(to_integer(unsigned(i_GPR_address))); -- Output data from ram address
				elsif (i_GPR_A_B_data_sel = '0') then
				o_GPR_ALU_data_B <= RAM(to_integer(unsigned(i_GPR_address))); -- Output data from ram address
				end if;
				--o_GPR_ALU_data_A <= (others => '0');
				--o_GPR_ALU_data_B <= (others => '0');
		end if;
	end process;

end rtl;

