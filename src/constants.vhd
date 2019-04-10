--
--	Package File
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package constants is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants

-- Opcodes
constant OPCODE_ADD:    	std_logic_vector(3 downto 0) :=  "0000";	-- Add
constant OPCODE_SUB:    	std_logic_vector(3 downto 0) :=  "0001";	-- Subtract 
constant OPCODE_OR:    		std_logic_vector(3 downto 0) :=  "0010";	-- Or 
constant OPCODE_XOR:     	std_logic_vector(3 downto 0) :=  "0011";	-- Xor 
constant OPCODE_AND:    	std_logic_vector(3 downto 0) :=  "0100";	-- And
constant OPCODE_NOT:    	std_logic_vector(3 downto 0) :=  "0101";  -- Not
constant OPCODE_READ:    	std_logic_vector(3 downto 0) :=  "0110";	-- Read 
constant OPCODE_WRITE:    	std_logic_vector(3 downto 0) :=  "0111";	-- Write 
constant OPCODE_LOAD:    	std_logic_vector(3 downto 0) :=  "1000";	-- Load 
constant OPCODE_COMPARE:   std_logic_vector(3 downto 0) :=  "1001";	-- Compare 
constant OPCODE_BSL:   		std_logic_vector(3 downto 0) :=  "1010";	-- Bitshift Left 
constant OPCODE_BSR:  		std_logic_vector(3 downto 0) :=  "1011";	-- Bitshift Right 
constant OPCODE_BRANCH:   	std_logic_vector(3 downto 0) :=  "1100";	-- Jump 
constant OPCODE_JUMPEQ:    std_logic_vector(3 downto 0) :=  "1101";	-- Branch 
constant OPCODE_SPECIAL:   std_logic_vector(3 downto 0) :=  "1110";	-- Special 

-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end constants;

package body constants is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end constants;