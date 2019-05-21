library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.constants.all;

entity instruction_decoder is
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_ENABLE : in  STD_LOGIC; -- Enable input
				i_INSTRUCTION : in  STD_LOGIC_VECTOR (31 downto 0); -- Instruction input 
				o_OPCODE : out  STD_LOGIC_VECTOR (3 downto 0); -- Opcode output
				o_REGISTER_A : out  STD_LOGIC_VECTOR (4 downto 0); -- Register A select output
				o_REGISTER_B : out  STD_LOGIC_VECTOR (4 downto 0); -- Register B select output
				o_REGISTER_C : out  STD_LOGIC_VECTOR (4 downto 0); -- Register C select output (Write)
				o_REGISTER_C_WRITE_ENABLE : out  STD_LOGIC; 			-- Register C write enable output
				o_DATA_IMM : out STD_LOGIC_VECTOR (7 downto 0); 	-- Immidiate data output
				o_Address_PROG : out STD_LOGIC_VECTOR (9 downto 0); -- Program memory address output 
				o_Address_MEM : out STD_LOGIC_VECTOR (15 downto 0); -- Address output for accessing data memory and peripherals
				o_MEM_write_enable : out  STD_LOGIC;
				o_BRANCH_CONTROL : out  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
				o_Signed : out  STD_LOGIC; -- Bit for signed or unsigned arithmetic
				o_carry : out std_logic; -- Carry select (1 for carry and 0 for no carry)
				o_SAVE_PC : out STD_LOGIC; -- Output for enabling saving of address currently pointed at by program counter
				o_IMM_enable : out  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
				o_BUS_select : out  STD_LOGIC_VECTOR (1 downto 0) -- BUS select output
			);
end instruction_decoder;

architecture Behavioral of instruction_decoder is

	signal r_STACK_POINTER : STD_LOGIC_VECTOR(15 downto 0) := STACK_BEGIN;

begin

	process (i_CLK, i_ENABLE)
	begin
	
		if (rising_edge(i_CLK) and i_ENABLE = '1') then
			-- Opcode			  
			o_OPCODE <= i_INSTRUCTION(31 downto 28);
			-- Register selection
			o_REGISTER_A <= i_INSTRUCTION(22 downto 18);
			o_REGISTER_B <= i_INSTRUCTION(17 downto 13);
			o_REGISTER_C <= i_INSTRUCTION(27 downto 23);
			-- Immidiate data 
			o_DATA_IMM <= i_INSTRUCTION(12 downto 5);
			-- Carry enable
			o_carry <= i_INSTRUCTION(2);
			-- Signed bit
			o_Signed <= i_INSTRUCTION(1);
			-- Immidiate enable
			o_IMM_enable <= i_INSTRUCTION(0);
			-- Program address
			o_Address_prog <= i_INSTRUCTION(12 downto 3);
			
			-- Case for resolving register write enable
			case i_INSTRUCTION(31 downto 28) is
				when OPCODE_WRITE => -- Write
					o_REGISTER_C_WRITE_ENABLE <= '0';
				when OPCODE_BRANCH => -- Branch
					o_REGISTER_C_WRITE_ENABLE <= '0';
				when OPCODE_JUMPEQ => -- Jumpeq
					o_REGISTER_C_WRITE_ENABLE <= '0';
				when OPCODE_NOP => -- NOP
					o_REGISTER_C_WRITE_ENABLE <= '0';
				when OPCODE_SPECIAL =>
					case (i_INSTRUCTION(17 downto 15)) is
						when OP_SPEC_POP => -- POP from stack
							o_REGISTER_C_WRITE_ENABLE <= '1';
						when others =>
							o_REGISTER_C_WRITE_ENABLE <= '0';
					end case;
				when others =>
					o_REGISTER_C_WRITE_ENABLE <= '1';
			end case;
			
			-- Case for resolving data bus input and output
			case i_INSTRUCTION(31 downto 28) is
				when OPCODE_WRITE => -- Write
					o_BUS_select <= "01";
				when OPCODE_READ => -- Read
					o_BUS_select <= "10";
				when others =>
					o_BUS_select <= "00";
			end case;
			
			-- Case for resolving memory write enable
			case i_INSTRUCTION(31 downto 28) is
				when OPCODE_WRITE => -- Write
					o_MEM_write_enable <= '1';
				when OPCODE_SPECIAL => -- Special opcode
					case i_INSTRUCTION(17 downto 15) is
						when OP_SPEC_PUSH =>
							o_MEM_write_enable <= '1';
						when others =>
							o_MEM_write_enable <= '0';
						end case;
				when others =>
					o_MEM_write_enable <= '0';
			end case;
			
			-- Case for resolving branch control
			case i_INSTRUCTION(31 downto 28) is
				when OPCODE_BRANCH => -- Branch
					o_SAVE_PC <= '1'; -- Save PC
					o_BRANCH_CONTROL <= i_INSTRUCTION(2 downto 0);
				when OPCODE_JUMPEQ => -- Jumpeq
					o_SAVE_PC <= '1'; -- Save PC
					o_BRANCH_CONTROL <= "010";
				when OPCODE_SPECIAL => -- Special opcode
					case i_INSTRUCTION(17 downto 15) is
						when OP_SPEC_RETURN =>
							o_BRANCH_CONTROL <= "110";
							o_SAVE_PC <= '0'; 
						when others =>
							o_BRANCH_CONTROL <= "000";
							o_SAVE_PC <= '0'; 
					end case;
				when others =>
					o_BRANCH_CONTROL <= "000";
					o_SAVE_PC <= '0'; 
			end case;
			
			-- Case for resolving memory address
			case (i_INSTRUCTION(31 downto 28)) is
				when (OPCODE_SPECIAL) =>
					case (i_INSTRUCTION(17 downto 15)) is 
						when OP_SPEC_PUSH => 
							o_Address_mem <= STD_LOGIC_VECTOR(unsigned(r_STACK_POINTER) - 1);
							r_STACK_POINTER <= STD_LOGIC_VECTOR(unsigned(r_STACK_POINTER) - 1);
						when OP_SPEC_POP => 
							o_Address_mem <= r_STACK_POINTER;
							r_STACK_POINTER <= STD_LOGIC_VECTOR(unsigned(r_STACK_POINTER) + 1);
						when others =>
							o_Address_mem <= i_INSTRUCTION(17 downto 2);
					end case;
				when others =>
					o_Address_mem <= i_INSTRUCTION(17 downto 2);
			end case;	
		end if;
		
	end process;


end Behavioral;

