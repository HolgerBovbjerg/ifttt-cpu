 
library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 32768x8 RAM in VHDL
entity DATA_RAM is
port(
 i_RAM_address: in std_logic_vector(14 downto 0); -- Address to write/read RAM
 i_RAM_data: in std_logic_vector(7 downto 0); -- Data to write to the RAM
 i_RAM_write_enable: in std_logic; -- Write enable 
 i_RAM_clk: in std_logic; -- clock input for RAM
 o_RAM_MUX_data: out std_logic_vector(7 downto 0) -- Data output of RAM
);
end DATA_RAM;

architecture Behavioral of DATA_RAM is  
	type MEM is array (32767 downto 0) of std_logic_vector (7 downto 0); -- initial values in the RAM
	signal MEMORY : MEM;
	signal ADDR : INTEGER RANGE 0 TO 32767;		-- The addresses are ordered from 1 and up.
	begin
		process (i_RAM_address, i_RAM_data, i_RAM_write_enable, i_RAM_clk)
			begin
         ADDR<=CONV_INTEGER(i_RAM_address);
			if(rising_edge(i_RAM_clk)) then			-- Data is read/written at the rising edges of the clock cycle
         if(i_RAM_write_enable='1') then
         MEMORY(ADDR)<=i_RAM_data;					-- When i_RAM_write_enable = 1 data is written to the address
         ELSIF(i_RAM_write_enable='0')THEN
         o_RAM_MUX_data<=MEMORY(ADDR);				-- When i_RAM_write_enable = 0 data is read from the address
         END IF;
			end if;
         END PROCESS;
  END Behavioral;
                
