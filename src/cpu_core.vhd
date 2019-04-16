library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity cpu_core is
    Port ( 	i_CORE_CLK : in  STD_LOGIC;
				i_CORE_RESET : in  STD_LOGIC;
				i_CORE_HALT : in  STD_LOGIC;
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0)
			);
end cpu_core;

ARCHITECTURE behavior OF cpu_core IS

	COMPONENT PROGRAM_MEMORY 
	Port (	i_FLASH_PM_address: in std_logic_vector(9 downto 0); -- Address to read in memory 
				i_FLASH_PM_clk: in std_logic; -- clock input for FLASH_PM
				o_FLASH_PM_IR_data: out std_logic_vector(31 downto 0) -- Data output of FLASH_PM
				);
	end COMPONENT;

	COMPONENT InstrucReg 
	Port (	i_IR_clk 				: in STD_LOGIC;
				i_IR_enable 			: in STD_LOGIC;
				i_IR_data				: in STD_LOGIC_VECTOR (31 downto 0);
				o_IR_instruction			: out STD_LOGIC_VECTOR (31 downto 0)
				);
	end COMPONENT;

	COMPONENT instruction_decoder 
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
				o_BRANCH_CONTROL : out  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
				o_Signed : out  STD_LOGIC; -- Bit for signed or unsigned arithmetic
				o_IMM_enable : out  STD_LOGIC -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
				);
	end COMPONENT;
	
	COMPONENT control_unit 
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
				o_STATE : out  STD_LOGIC_VECTOR (6 downto 0) -- State output used for enabling blocks depending on state 
				);
	end COMPONENT;
	
	COMPONENT register32x8 
	Port (	-- Clock input
				i_GPR_clk 				: in STD_LOGIC;
				i_GPR_enable			: in STD_LOGIC;
				
				-- Address inputs
				i_GPR_address_A 		: in STD_LOGIC_VECTOR (4 downto 0);
				i_GPR_address_B 		: in STD_LOGIC_VECTOR (4 downto 0);
				
				-- Data Output
				o_GPR_ALU_data_A 		: out STD_LOGIC_VECTOR (7 downto 0);
				o_GPR_ALU_data_B		: out STD_LOGIC_VECTOR (7 downto 0);
				
				-- Data input
				i_GPR_data				: in STD_LOGIC_VECTOR (7 downto 0);
				
				-- Misc
				i_GPR_write_address	: in STD_LOGIC_VECTOR (4 downto 0);
				i_GPR_write_enable	: in STD_LOGIC
					); 
	end COMPONENT;
	
	COMPONENT B_imm_multiplexer 
	Port (	-- i_CLK : in STD_LOGIC;
				i_B_imm_sel : in STD_LOGIC;
				i_DATA_B : in STD_LOGIC_VECTOR(7 downto 0);
				i_DATA_Imm : in STD_LOGIC_VECTOR(7 downto 0);
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0)
				);
	end COMPONENT;
	
	COMPONENT ALU 
	Port ( 	i_CLK : in  std_logic; -- Clock signal
				i_ENABLE : in std_logic; -- Enable signal
				i_ALU_A : in  std_logic_vector (7 downto 0); -- 8-bit input
				i_ALU_B : in  std_logic_vector (7 downto 0); -- 8-bit input
				i_ALU_sel : in  std_logic_vector (3 downto 0); -- 4-bit function select input
				i_ALU_signed : in std_logic; -- Sign select (1 for signed and 0 for unsigned arithmetic)
				o_ALU_out : out  std_logic_vector (7 downto 0); -- 8-bit output
				o_ALU_carry_flag : out  std_logic; -- output carry flag
				o_ALU_overflow_flag : out  std_logic; -- output overflow flag
				o_ALU_negative_flag : out  std_logic; -- output negative flag
				o_ALU_zero_flag : out  std_logic -- output zero flag
				); 
	end COMPONENT;	
	
	COMPONENT branch_control 
	Port ( 	i_CLK : in  STD_LOGIC;
				i_BRANCH_CONTROL : in  STD_LOGIC_VECTOR (2 downto 0);
				i_ZERO_FLAG : in  STD_LOGIC;
				i_OVERFLOW_FLAG : in  STD_LOGIC;
				i_NEGATIVE_FLAG : in  STD_LOGIC;
				i_CARRY_FLAG : in  STD_LOGIC;
				i_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
				o_ADDRESS : out  STD_LOGIC_VECTOR (9 downto 0);
				o_PC_LOAD : out  STD_LOGIC
				);
	end COMPONENT;
	
	COMPONENT Program_counter 
	Port ( 	i_PC_clk : in STD_LOGIC;
				i_PC_enable : in STD_LOGIC;
				i_PC_write_enable : in STD_LOGIC;
				i_PC_address : in STD_LOGIC_VECTOR (9 DOWNTO 0);
				i_PC_reset : in STD_LOGIC;
				o_PC_PM_address : out STD_LOGIC_VECTOR (9 DOWNTO 0)
				);
	end COMPONENT;
	
	-- Program memory outputs
	signal w_FLASH_PM_IR_data		: std_logic_vector(31 downto 0); -- Data output of FLASH_PM
	
	-- Instruction register outputs
	signal w_IR_instruction			: STD_LOGIC_VECTOR (31 downto 0);
	
	-- Instruction decoder outputs
	signal w_OPCODE :  STD_LOGIC_VECTOR (3 downto 0); -- Opcode output
	signal w_REGISTER_A :  STD_LOGIC_VECTOR (4 downto 0); -- Register A select output
	signal w_REGISTER_B :  STD_LOGIC_VECTOR (4 downto 0); -- Register B select output
	signal w_REGISTER_C :  STD_LOGIC_VECTOR (4 downto 0); -- Register C select output (Write)
	signal w_REGISTER_C_WRITE_ENABLE :  STD_LOGIC; 			-- Register C write enable output
	signal w_DATA_IMM : STD_LOGIC_VECTOR (7 downto 0); 	-- Immidiate data output
	signal w_Address_PROG : STD_LOGIC_VECTOR (9 downto 0); -- Program memory address output 
	signal w_Address_MEM : STD_LOGIC_VECTOR (15 downto 0); -- Address output for accessing data memory and peripherals
	signal w_BRANCH_CONTROL :  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
	signal w_Signed :  STD_LOGIC; -- Bit for signed or unsigned arithmetic
	signal w_IMM_enable :  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)

	-- Control unit outputs
	signal w_STATE : STD_LOGIC_VECTOR (6 downto 0); -- State output used for enabling blocks depending on state 
	
	-- Branch control outputs
	signal w_BRANCH_ADDRESS : STD_LOGIC_VECTOR (9 downto 0);
   signal w_PC_LOAD : STD_LOGIC;
	
	-- GP register outputs
	signal w_GPR_data_A 	: STD_LOGIC_VECTOR (7 downto 0);
	signal w_GPR_data_B	: STD_LOGIC_VECTOR (7 downto 0);
	
	-- ALU input multiplexer outputs 
	signal w_DATA_B_Imm :  STD_LOGIC_VECTOR(7 downto 0);
	
	-- ALU outputs
	signal w_ALU_out : std_logic_vector (7 downto 0); -- 8-bit output
	signal w_ALU_carry_flag : std_logic; -- output carry flag
	signal w_ALU_overflow_flag : std_logic; -- output overflow flag
	signal w_ALU_negative_flag : std_logic; -- output negative flag
	signal w_ALU_zero_flag : std_logic; -- output zero flag

	-- Data bus outputs 
	
	
	-- Memory controller outputs
	
	
	-- Program counter outputs
	signal w_PC_PM_address : STD_LOGIC_VECTOR(9 downto 0);
	
	-- Misc. signals
	signal r_register_enable : std_logic := '0';
	signal r_register_write_enable : std_logic := '0';
	
	signal r_enable_fetch  : std_logic := '0';
	signal r_enable_decode  : std_logic := '0';
	signal r_enable_register_read  : std_logic := '0';
	signal r_enable_alu  : std_logic := '0';
	signal r_enable_memory  : std_logic := '0';
	signal r_enable_register_write  : std_logic := '0';
	signal r_enable_stall  : std_logic := '0';
	
begin

	INST_PROGRAM_MEMORY : PROGRAM_MEMORY PORT MAP (
			i_FLASH_PM_address 			=> w_PC_PM_address,
			i_FLASH_PM_clk 				=> i_CORE_CLK,
			o_FLASH_PM_IR_data 			=> w_FLASH_PM_IR_data 
	);

	INST_InstrucReg : InstrucReg PORT MAP (	
			i_IR_clk 						=> i_CORE_CLK,
			i_IR_enable 					=> r_enable_fetch,
			i_IR_data						=> w_FLASH_PM_IR_data,
			o_IR_instruction 				=> w_IR_instruction
	);
	
	INST_instruction_decoder : instruction_decoder PORT MAP (
			i_CLK 							=> i_CORE_CLK,
			i_ENABLE 						=> r_enable_decode,
			i_INSTRUCTION 					=> w_IR_instruction, 
			o_OPCODE 						=> w_OPCODE,
			o_REGISTER_A 					=> w_REGISTER_A,
			o_REGISTER_B 					=> w_REGISTER_B,
			o_REGISTER_C 					=> w_REGISTER_C,
			o_REGISTER_C_WRITE_ENABLE 	=> w_REGISTER_C_WRITE_ENABLE,
			o_DATA_IMM 						=> w_DATA_IMM,
			o_Address_PROG 				=> w_Address_PROG,
			o_Address_MEM 					=> w_Address_MEM,
			o_BRANCH_CONTROL 				=> w_BRANCH_CONTROL,
			o_Signed 						=> w_Signed,
			o_IMM_enable 					=> w_IMM_enable
	);
	
	INST_control_unit : control_unit PORT MAP ( 	
			i_CLK 							=> i_CORE_CLK,
			i_RESET 							=> i_CORE_RESET,
			i_OPCODE 						=> w_OPCODE,
			o_STATE 							=> w_STATE
	);
	
	INST_GPR : register32x8 PORT MAP (
			i_GPR_clk 						=> i_CORE_CLK,
			i_GPR_enable					=> r_register_enable,
			i_GPR_address_A 				=> w_REGISTER_A,
			i_GPR_address_B 				=> w_REGISTER_B,
			i_GPR_data						=> w_ALU_out, -- Change when data bus is added
			i_GPR_write_address			=> w_REGISTER_C,
			i_GPR_write_enable			=> r_register_write_enable, 
			o_GPR_ALU_data_A 				=> w_GPR_data_A,
			o_GPR_ALU_data_B 				=> w_GPR_data_B
	);
		
	INST_B_imm_multiplexer : B_imm_multiplexer PORT MAP (
			--i_CLK 							=> i_CORE_CLK,
			i_B_imm_sel 					=> w_IMM_enable,
			i_DATA_B 						=> w_GPR_data_B,
			i_DATA_Imm 						=> w_DATA_IMM,
			o_DATA 							=> w_DATA_B_Imm
	);

	INST_ALU : ALU PORT MAP (
         i_CLK 							=> i_CORE_CLK,
			i_ENABLE 						=> r_enable_alu,
         i_ALU_A 							=> w_GPR_data_A,
         i_ALU_B 							=> w_DATA_B_Imm,
         i_ALU_sel 						=> w_OPCODE,
			i_ALU_signed 					=> w_Signed,
         o_ALU_out 						=> w_ALU_out,
         o_ALU_carry_flag 				=> w_ALU_carry_flag,
         o_ALU_overflow_flag 			=> w_ALU_overflow_flag,
         o_ALU_negative_flag			=> w_ALU_negative_flag,
         o_ALU_zero_flag 				=> w_ALU_zero_flag
	);

	INST_branch_control : branch_control PORT MAP ( 
			i_CLK 							=> i_CORE_CLK,
			i_BRANCH_CONTROL 				=> w_BRANCH_CONTROL,
			i_ZERO_FLAG 					=> w_ALU_zero_flag,
			i_OVERFLOW_FLAG 				=> w_ALU_overflow_flag,
			i_NEGATIVE_FLAG 				=> w_ALU_negative_flag,
			i_CARRY_FLAG 					=> w_ALU_carry_flag,
			i_ADDRESS 						=> w_Address_PROG,
			o_ADDRESS 						=> w_BRANCH_ADDRESS,
			o_PC_LOAD 						=> w_PC_LOAD
	);
	
	INST_Program_counter : Program_counter PORT MAP( 
			i_PC_clk 						=> i_CORE_CLK,
			i_PC_enable 					=> r_enable_register_write,
			i_PC_write_enable 				=> w_PC_LOAD,
			i_PC_address 					=> w_BRANCH_ADDRESS,
			i_PC_reset 						=> i_CORE_RESET,
			o_PC_PM_address 				=> w_PC_PM_address
	);
	
	r_register_enable <= r_enable_register_read or r_enable_register_write;
	r_register_write_enable <= w_REGISTER_C_WRITE_ENABLE and r_enable_register_write;
	
	r_enable_fetch <= w_STATE(0);
	r_enable_decode <= w_STATE(1);
	r_enable_register_read <= w_STATE(2);
	r_enable_alu <= w_STATE(3);
	r_enable_memory <= w_STATE(4);
	r_enable_register_write <= w_STATE(5);
	r_enable_stall <= w_STATE(6);
	
	o_DATA <= w_ALU_out;
	
end;