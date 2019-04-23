library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

library work;
use work.constants.all;

-- 256x32 PROGRAM_MEMORY in VHDL
entity PROGRAM_MEMORY is
port(
	 i_FLASH_PM_address: in std_logic_vector(9 downto 0); -- Address to read in memory 
	 i_FLASH_PM_clk: in std_logic; -- clock input for FLASH_PM
	 o_FLASH_PM_IR_data: out std_logic_vector(31 downto 0) := x"00000000" -- Data output of FLASH_PM
);
end PROGRAM_MEMORY;

architecture Behavioral of PROGRAM_MEMORY is
 
	type RAM_ARRAY is array (0 to 1023) of std_logic_vector (31 downto 0);

	signal RAM: RAM_ARRAY :=(
	-- Input in HEXADECIMAL
	--Opcode & Reg C & Reg A & Reg B & Immidiate & Unused & signed & Imm enable
	OPCODE_LOAD & "00000" & "00000" & "00000" & "00010101" & "000" & '0' & '1', -- Address 0
	OPCODE_LOAD & "00001" & "00000" & "00000" & "00001010" & "000" & '0' & '1', -- Address 1
	OPCODE_ADD & "00010" & "00000" & "00001" & "00000000" & "000" & '0' & '0', -- Address 2
	OPCODE_ADD & "00011" & "00001" & "00010" & "00000000" & "000" & '0' & '0', -- Address 3
	OPCODE_ADD & "00100" & "00010" & "00011" & "00000000" & "000" & '0' & '0', -- Address 4
	OPCODE_WRITE & "00000" & "00000" & "0100000000000001" & "00", -- Address 5
	OPCODE_WRITE & "00000" & "00001" & "0100000000000010" & "00", -- Address 6
	OPCODE_WRITE & "00000" & "00010" & "0100000000000011" & "00", -- Address 7
	OPCODE_READ & "00000" & "00000" & "0100000000000001" & "00", -- Address 8
	OPCODE_READ & "00000" & "00000" & "0100000000000010" & "00",-- Address 9 
	OPCODE_READ & "00000" & "00010" & "0100000000000011" & "00", -- Address 10
	OPCODE_LOAD & "00000" & "00000" & "00000" & "00000111" & "000" & '0' & '1', -- Address 11
	OPCODE_LOAD & "00001" & "00000" & "00000" & "00000010" & "000" & '0' & '1', -- Address 12
	OPCODE_ADD & "00010" & "00000" & "00001" & "00000000" & "000" & '0' & '0', -- Address 13
	OPCODE_ADD & "00011" & "00001" & "00010" & "00000000" & "000" & '0' & '0', -- Address 14
	OPCODE_ADD & "00100" & "00010" & "00011" & "00000000" & "000" & '0' & '0', -- Address 15
	OPCODE_WRITE & "00000" & "00000" & "0100000000000000" & "00", -- Address 16
	OPCODE_WRITE & "00000" & "00001" & "0100000000000010" & "00", -- Address 17
	OPCODE_WRITE & "00000" & "00010" & "0100000000000100" & "00", -- Address 18
	OPCODE_READ & "00000" & "00000" & "0100000000000001" & "00", -- Address 19
	OPCODE_READ & "00000" & "00000" & "0100000000000010" & "00",-- Address 20
	OPCODE_READ & "00000" & "00010" & "0100000000000100" & "00", -- Address 21
	OPCODE_BRANCH & "00000" & "00000" & "00000" & "0000011111" & "001", -- Address 22 -- branch to address 31
	OPCODE_BRANCH & "00000" & "00000" & "00000" & "0000000010" & "001", -- Address 23 -- branch to address 2
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_NOP & "0000000000000000000000000000",
	OPCODE_LOAD & "00000" & "00000" & "00000" & "00010101" & "000" & '0' & '1', -- Address 31
	OPCODE_LOAD & "00001" & "00000" & "00000" & "00001010" & "000" & '0' & '1',
	OPCODE_ADD & "00010" & "00000" & "00001" & "00000000" & "000" & '0' & '0', 
	OPCODE_ADD & "00011" & "00001" & "00010" & "00000000" & "000" & '0' & '0', 
	OPCODE_ADD & "00100" & "00010" & "00011" & "00000000" & "000" & '0' & '0',
	OPCODE_SPECIAL & OP_SPEC_RETURN & "0000000000000000000000000",
	others => x"00000000"
	); 

begin
process(i_FLASH_PM_clk)
	begin
		if(rising_edge(i_FLASH_PM_clk)) then
			o_FLASH_PM_IR_data <= RAM(to_integer(unsigned(i_FLASH_PM_address)));
		end if;
	end process;
end Behavioral;

