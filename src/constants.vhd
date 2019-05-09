--
--	Package File
--
--	Purpose: This package defines constants for use in the ifttt CPU

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package constants is

-- Declare constants

-- Opcodes
constant OPCODE_NOP:    	std_logic_vector(3 downto 0) :=  "0000";	-- No operation
constant OPCODE_ADD:    	std_logic_vector(3 downto 0) :=  "0001";	-- Add
constant OPCODE_SUB:    	std_logic_vector(3 downto 0) :=  "0010";	-- Subtract 
constant OPCODE_BSL:   		std_logic_vector(3 downto 0) :=  "0011";	-- Bitshift Left 
constant OPCODE_BSR:  		std_logic_vector(3 downto 0) :=  "0100";	-- Bitshift Right 
constant OPCODE_OR:    		std_logic_vector(3 downto 0) :=  "0101";	-- Or 
constant OPCODE_XOR:     	std_logic_vector(3 downto 0) :=  "0110";	-- Xor 
constant OPCODE_AND:    	std_logic_vector(3 downto 0) :=  "0111";	-- And
constant OPCODE_NOT:    	std_logic_vector(3 downto 0) :=  "1000";  -- Not
constant OPCODE_COMPARE:   std_logic_vector(3 downto 0) :=  "1001";	-- Compare 
constant OPCODE_LOAD:    	std_logic_vector(3 downto 0) :=  "1010";	-- Load 
constant OPCODE_READ:    	std_logic_vector(3 downto 0) :=  "1011";	-- Read 
constant OPCODE_WRITE:    	std_logic_vector(3 downto 0) :=  "1100";	-- Write
constant OPCODE_BRANCH:   	std_logic_vector(3 downto 0) :=  "1101";	-- Branch 
constant OPCODE_JUMPEQ:    std_logic_vector(3 downto 0) :=  "1110";	-- Jumpeq 
constant OPCODE_SPECIAL:   std_logic_vector(3 downto 0) :=  "1111";	-- Special 

-- Special opcodes
constant OP_SPEC_RETURN: 	std_logic_vector(2 downto 0) :=  "001"; 	-- Return
constant OP_SPEC_POP: 		std_logic_vector(2 downto 0) :=  "010"; 	-- POP
constant OP_SPEC_PUSH: 		std_logic_vector(2 downto 0) :=  "011"; 	-- PUSH

-- Memory controller constants
constant Ram_address: 		std_logic_vector(1 downto 0) := 	"01";		-- Ram address
constant GPIO_address: 		std_logic_vector(1 downto 0) := 	"10";		-- GPIO address
constant I2C_address: 		std_logic_vector(1 downto 0) := 	"11";		-- I2C address

constant MEM_IDLE: 			std_logic_vector(1 downto 0) := 	"00";		-- Memory idle
constant MEM_FETCH: 			std_logic_vector(1 downto 0) := 	"01";		-- Memory fetch
constant MEM_DATA_READY: 	std_logic_vector(1 downto 0) := 	"10";		-- Memory data ready

-- Branch control 
constant BRANCH_JUMP: 		std_logic_vector(2 downto 0) :=  "001";	-- Branch jump
constant BRANCH_ZERO: 		std_logic_vector(2 downto 0) :=  "010";	-- Branch if zero flag set
constant BRANCH_OVERFLOW: 	std_logic_vector(2 downto 0) :=  "011";	-- Branch if overflow flag set
constant BRANCH_NEGATIVE: 	std_logic_vector(2 downto 0) :=  "100";	-- Branch if negative flag set
constant BRANCH_CARRY: 		std_logic_vector(2 downto 0) :=  "101";	-- Branch if carry flag set
constant BRANCH_RETURN: 	std_logic_vector(2 downto 0) :=  "110";	-- Restore PC to saved address
constant BRANCH_SAVE_STATE:std_logic_vector(2 downto 0) :=  "111";	-- Save PC and flags

-- Interrupt constants
constant INTERRUPT_address:std_logic_vector(9 downto 0) := "1111110000";

-- Stack constants 
constant STACK_BEGIN:std_logic_vector(15 downto 0) := "1111111111111111";

end constants;

package body constants is
 
end constants;
