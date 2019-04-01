----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:26 03/31/2019 
-- Design Name: 
-- Module Name:    instruction_decoder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_decoder is
    Port ( i_INSTRUCTION : in  STD_LOGIC;
           o_ALU_FUNCTION_SEL : out  STD_LOGIC_VECTOR (4 downto 0);
           o_REGISTER_SEL : out  STD_LOGIC;
           o_DATA_MEM_WRITE_ENABLE : out  STD_LOGIC;
           o_ALU_OUT_SEL : in  STD_LOGIC;
           o_DATA_MEM_OUT_SEL : in  STD_LOGIC;
           o_REGISTER_OUT_SEL : in  STD_LOGIC;
           o_PC_SEL : in  STD_LOGIC;
           o_DATA_MEM_OUT_SEL : in  STD_LOGIC);
end instruction_decoder;

architecture Behavioral of instruction_decoder is

begin


end Behavioral;

