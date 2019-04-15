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
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_ENABLE : in  STD_LOGIC; -- Enable input
				i_INSTRUCTION : in  STD_LOGIC_VECTOR (31 downto 0); -- Instruction input 
				o_ALU_OP_SEL : out  STD_LOGIC_VECTOR (3 downto 0); -- Opcode output
				o_REGISTER_A : out  STD_LOGIC_VECTOR (4 downto 0); -- Register A select output
				o_REGISTER_B : out  STD_LOGIC_VECTOR (4 downto 0); -- Register B select output
				o_REGISTER_C : out  STD_LOGIC_VECTOR (4 downto 0); -- Register C select output (Write)
				o_REGISTER_C_WRITE_ENABLE : out  STD_LOGIC; 			-- Register C write enable output
				o_DATA_IMM : out STD_LOGIC_VECTOR (7 downto 0); 	-- Immidiate data output
				o_Address_PROG : out STD_LOGIC_VECTOR (9 downto 0); -- Program memory address output 
				o_Address_MEM : out STD_LOGIC_VECTOR (15 downto 0); -- Address output for accessing data memory and peripherals
				o_BRANCH_CONTROL : out  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
				o_Signed : out  STD_LOGIC; -- Bit for signed or unsigned arithmetic
				o_IMM_enable : out  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
				o_SAVE_op : out STD_LOGIC -- Bit for deciding save operation (0 for saving PC and 1 for saving state)
			  );
end instruction_decoder;

architecture Behavioral of instruction_decoder is

begin

	process (i_CLK, i_ENABLE)
	begin
	
		if (rising_edge(i_CLK) and i_ENABLE = '1') then
			-- Opcode			  
			o_ALU_OP_SEL <= i_INSTRUCTION(31 downto 28);
			-- Register selection
			o_REGISTER_A <= i_INSTRUCTION(19 downto 15);
			o_REGISTER_B <= i_INSTRUCTION(14 downto 10);
			o_REGISTER_C <= i_INSTRUCTION(27 downto 23);
			-- Immidiate data 
			o_DATA_IMM <= i_INSTRUCTION(9 downto 2);
			-- Signed bit
			o_Signed <= i_INSTRUCTION(1);
			-- Program memory address
			o_Address_prog <= i_INSTRUCTION(9 downto 0);
			-- Memory space address
			o_Address_mem <= i_INSTRUCTION(15 downto 0);
			-- Immidiate enable
			o_IMM_enable <= i_INSTRUCTION(0);
			-- Save opcode
			o_SAVE_op <=  i_INSTRUCTION(0);
			
			-- Case for resolving whether write enable for register should be asserted or not
			case i_INSTRUCTION(31 downto 28) is
				when "0111" => -- Write
					o_REGISTER_C_WRITE_ENABLE <= '0';
					o_BRANCH_CONTROL <= "000";
				when "1100" => -- Jump
					o_REGISTER_C_WRITE_ENABLE <= '0';
					o_BRANCH_CONTROL <= i_INSTRUCTION(2 downto 0);
				when "1101" => -- Branch
					o_REGISTER_C_WRITE_ENABLE <= '0';
					o_BRANCH_CONTROL <= i_INSTRUCTION(2 downto 0);
				when others =>
					o_REGISTER_C_WRITE_ENABLE <= '1';
					o_BRANCH_CONTROL <= "000";
			end case;
			
		end if;
		
	end process;


end Behavioral;

