LIBRARY ieee;  
USE ieee.NUMERIC_STD.all; 
USE ieee.std_logic_1164.all; 

ENTITY instruction_decoder_tb  IS 
END instruction_decoder_tb; 

ARCHITECTURE behavior OF instruction_decoder_tb IS

	COMPONENT instruction_decoder 
	PORT(
		i_CLK : in  STD_LOGIC; -- Clock input
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
		o_MEM_access : out STD_LOGIC;
		o_MEM_write_enable : out  STD_LOGIC;
		o_BRANCH_CONTROL : out  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
		o_Signed : out  STD_LOGIC; -- Bit for signed or unsigned arithmetic
		o_carry : out std_logic; -- Carry select (1 for carry and 0 for no carry)
		o_SAVE_PC : out STD_LOGIC; -- Output for enabling saving of address currently pointed at by program counter
		o_IMM_enable : out  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
		o_BUS_select : out  STD_LOGIC_VECTOR (1 downto 0) -- BUS select output
		);
	END COMPONENT;
	
	-- Inputs
	signal i_CLK : STD_LOGIC := '0';
	signal i_ENABLE : STD_LOGIC := '0';
	signal i_INSTRUCTION : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
	
	-- Outputs
	signal o_OPCODE : STD_LOGIC_VECTOR(3 downto 0);
	signal o_REGISTER_A : STD_LOGIC_VECTOR(4 downto 0);
	signal o_REGISTER_B : STD_LOGIC_VECTOR(4 downto 0);
	signal o_REGISTER_C : STD_LOGIC_VECTOR(4 downto 0);
	signal o_REGISTER_C_WRITE_ENABLE : STD_LOGIC;
	signal o_DATA_IMM : STD_LOGIC_VECTOR(7 downto 0);
	signal o_ADDRESS_PROG : STD_LOGIC_VECTOR(9 downto 0);
	signal o_ADDRESS_MEM : STD_LOGIC_VECTOR(15 downto 0);
	signal o_MEM_access : STD_LOGIC;
	signal o_MEM_write_enable : STD_LOGIC;
	signal o_BRANCH_CONTROL : STD_LOGIC_VECTOR(2 downto 0);
	signal o_Signed : STD_LOGIC;
	signal o_carry : std_logic; -- Carry select (1 for carry and 0 for no carry)
	signal o_SAVE_PC : STD_LOGIC;
	signal o_IMM_enable : STD_LOGIC;
	signal o_BUS_select : STD_LOGIC_VECTOR (1 downto 0);
	
	-- Clock period definitions
  constant i_CLK_period : time := 10 ns;

begin
	-- UUT
	INST_instruction_decoder : instruction_decoder 
	PORT MAP (	
			i_CLK => i_CLK,
			i_ENABLE => i_ENABLE,
			i_INSTRUCTION => i_INSTRUCTION, 
			o_OPCODE => o_OPCODE,
			o_REGISTER_A => o_REGISTER_A,
			o_REGISTER_B => o_REGISTER_B,
			o_REGISTER_C => o_REGISTER_C,
			o_REGISTER_C_WRITE_ENABLE => o_REGISTER_C_WRITE_ENABLE,
			o_DATA_IMM => o_DATA_IMM,
			o_Address_PROG => o_Address_PROG,
			o_Address_MEM => o_ADDRESS_MEM,
			o_MEM_access => o_MEM_access,
			o_MEM_write_enable => o_MEM_write_enable,
			o_BRANCH_CONTROL => o_BRANCH_CONTROL,
			o_Signed => o_Signed,
			o_IMM_enable => o_IMM_enable,
			o_carry => o_carry,
			o_SAVE_PC => o_SAVE_PC,
			o_BUS_select => o_BUS_select
	);
	
	-- Clock process definitions
   i_CLK_process :process
   begin
		i_CLK <= '0';
		wait for i_CLK_period/2;
		i_CLK <= '1';
		wait for i_CLK_period/2;
   end process;
	
	-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		i_ENABLE <= '1';
		i_INSTRUCTION <= "00010001100001000100000000000010";
		wait for i_CLK_period*6;
		i_ENABLE <= '0';
		i_INSTRUCTION <= "00100011000001000000000011000101";
		wait for i_CLK_period*10;
		i_ENABLE <= '1';
		wait for i_CLK_period*10;
		i_INSTRUCTION <= "11110111100000011000000000000000";
		wait for i_CLK_period*10;
		i_INSTRUCTION <= "11010000000000000000000000000001";
		wait for i_CLK_period*10;
		i_INSTRUCTION <= "10100000000000000001111111100001";
		wait for i_CLK_period*10;
		i_INSTRUCTION <= "11110000000001010000000000000000";
		wait for i_CLK_period*10;
		i_INSTRUCTION <= "00000000000000000000000000000000";
		wait;
		
   end process;
END;
	

