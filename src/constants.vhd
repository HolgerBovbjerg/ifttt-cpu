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
constant OPCODE_LOAD:    	std_logic_vector(3 downto 0) :=  "1001";	-- Load 
constant OPCODE_COMPARE:   std_logic_vector(3 downto 0) :=  "1010";	-- Compare 
constant OPCODE_READ:    	std_logic_vector(3 downto 0) :=  "1011";	-- Read 
constant OPCODE_WRITE:    	std_logic_vector(3 downto 0) :=  "1100";	-- Write
constant OPCODE_BRANCH:   	std_logic_vector(3 downto 0) :=  "1101";	-- Branch 
constant OPCODE_JUMPEQ:    std_logic_vector(3 downto 0) :=  "1110";	-- Jumpeq 
constant OPCODE_SPECIAL:   std_logic_vector(3 downto 0) :=  "1111";	-- Special 

-- Special opcodes
constant OP_SPEC_RETURN: 	std_logic_vector(2 downto 0) :=  "010";

-- Branch control 
constant BRANCH_JUMP: 		std_logic_vector(2 downto 0) :=  "001";
constant BRANCH_ZERO: 		std_logic_vector(2 downto 0) :=  "010";
constant BRANCH_OVERFLOW: 	std_logic_vector(2 downto 0) :=  "011";
constant BRANCH_NEGATIVE: 	std_logic_vector(2 downto 0) :=  "100";
constant BRANCH_CARRY: 		std_logic_vector(2 downto 0) :=  "101";
constant BRANCH_RETURN: 	std_logic_vector(2 downto 0) :=  "110";
constant BRANCH_SAVE_STATE:std_logic_vector(2 downto 0) :=  "111";


end constants;

package body constants is
 
end constants;
