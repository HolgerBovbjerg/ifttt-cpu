library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity cpu_core is
    Port ( 	i_CORE_CLK : in  STD_LOGIC;
				i_CORE_RESET : in  STD_LOGIC;
				i_CORE_HALT : in  STD_LOGIC;
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0);
				o_STATE : out STD_LOGIC_VECTOR(6 downto 0);
				
				-- Memory interface ---------------
				
				-- Display driver
				o_MC_DISPLAY_data : out std_logic_vector (7 downto 0);
				o_MC_DISPLAY_write_enable : out std_logic;
				
				-- GPIO
				i_MC_GPIO_data : in STD_LOGIC_VECTOR(7 downto 0);
				o_MC_GPIO_address : out std_logic_vector (3 downto 0); 
				o_MC_GPIO_write_enable : out std_logic;
				o_MC_GPIO_data : out STD_LOGIC_VECTOR(7 downto 0);
				
				-- I2C
				i_MC_I2C_data : in STD_LOGIC_VECTOR(7 downto 0);
				i_MC_I2C_busy	: in std_logic;
				o_MC_I2C_address : out std_logic_vector (3 downto 0); 
				o_MC_I2C_write_enable : out std_logic;
				o_MC_I2C_data : out STD_LOGIC_VECTOR(7 downto 0);
				
				-- Interrupt interface ---------------
				i_INTERRUPT_request : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC
			);
end cpu_core;

ARCHITECTURE behavior OF cpu_core IS

	COMPONENT PROGRAM_MEMORY 
	Port (	i_FLASH_PM_address: in std_logic_vector(9 downto 0); -- Address to read in memory 
				i_FLASH_PM_clk: in std_logic; -- clock input for FLASH_PM
				o_FLASH_PM_IR_data: out std_logic_vector(31 downto 0) -- Data output of FLASH_PM
				);
	end COMPONENT;
	
	COMPONENT mega_prog_mem
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

	COMPONENT InstrucReg 
	Port (	i_IR_clk 				: in STD_LOGIC;
				i_IR_enable 			: in STD_LOGIC;
				i_IR_data				: in STD_LOGIC_VECTOR (31 downto 0);
				o_IR_instruction		: out STD_LOGIC_VECTOR (31 downto 0)
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
				o_MEM_write_enable : out  STD_LOGIC;
				o_MEM_access : out STD_LOGIC;
				o_BRANCH_CONTROL : out  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
				o_carry : out  STD_LOGIC; -- Bit for carry arithmetic
				o_SAVE_PC : out STD_LOGIC; -- Output for enabling saving of address currently pointed at by program counter
				o_Signed : out  STD_LOGIC; -- Bit for signed or unsigned arithmetic
				o_IMM_enable : out  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
				o_BUS_select : out  STD_LOGIC_VECTOR (1 downto 0) -- BUS select output
				);
	end COMPONENT;
	
	COMPONENT control_unit 
    Port ( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_HALT : in  STD_LOGIC; -- Halt input
				i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
				i_MEM_state : in STD_LOGIC_VECTOR (1 downto 0);
				i_MEM_access : in STD_LOGIC;
				o_STATE : out  STD_LOGIC_VECTOR (6 downto 0); -- State output used for enabling blocks depending on state 
				i_INTERRUPT_request : in STD_LOGIC;
				i_INTERRUPT_enable : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC;
				o_INTERRUPT_PC_set : out STD_LOGIC
				);
	end COMPONENT;
	
	COMPONENT register32x8 
	Port (	-- Clock input
				i_GPR_clk 				: in STD_LOGIC;
				i_GPR_enable			: in STD_LOGIC;
				i_GPR_reset				: in STD_LOGIC;
				
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
				i_ALU_carry : in std_logic; -- Carry select (1 for carry and 0 for no carry)
				o_ALU_out : out  std_logic_vector (7 downto 0); -- 8-bit output
				o_ALU_carry_flag : out  std_logic; -- output carry flag
				o_ALU_overflow_flag : out  std_logic; -- output overflow flag
				o_ALU_negative_flag : out  std_logic; -- output negative flag
				o_ALU_zero_flag : out  std_logic -- output zero flag
				); 
	end COMPONENT;	
	
	COMPONENT data_bus 
	PORT (
				i_SELECT : in  std_logic_vector(1 downto 0);
				i_MEMORY  : in  std_logic_vector(7 downto 0);
				i_ALU  : in  std_logic_vector(7 downto 0);
				o_MEMORY   : out std_logic_vector(7 downto 0);
				o_REGISTER   : out std_logic_vector(7 downto 0)
				);
	end COMPONENT;
	
	COMPONENT MEMORY_CONTROL is
	Port ( 	-- Memory controller inputs
				i_MC_clk : in  std_logic;
				i_MC_address : in  std_logic_vector (15 downto 0);-- From control unit
				i_MC_data : in std_logic_vector (7 downto 0); -- From MUX (8 bit data)
				i_MC_enable : in std_logic; -- From control unit
				i_MC_write_enable : in std_logic; -- determines if it reads or write
				-- Memory controller outputs
				o_MC_MUX_data : out std_logic_vector (7 downto 0);
				o_MC_MEM_state : out std_logic_vector(1 downto 0);
				
				-- Peripheral device I/O
				------------------RAM (DATA_MEMORY)---------------------------------
				o_MC_RAM_address : out std_logic_vector (13 downto 0); -- Address output to RAM 
				i_MC_RAM_data : in std_logic_vector (7 downto 0);
				o_MC_RAM_data : out std_logic_vector (7 downto 0);
				o_MC_RAM_write_enable : out std_logic;
				------------------Display driver------------------------------------
				o_MC_DISPLAY_data : out std_logic_vector (7 downto 0);
				o_MC_DISPLAY_write_enable : out std_logic;
				------------------GPIO----------------------------------------------
				o_MC_GPIO_address : out std_logic_vector (3 downto 0); -- Address output to GPIO
				i_MC_GPIO_data : in std_logic_vector (7 downto 0);
				o_MC_GPIO_data : out std_logic_vector (7 downto 0);
				o_MC_GPIO_write_enable : out std_logic;
				------------------I2C-----------------------------------------------
				o_MC_I2C_address : out std_logic_vector (3 downto 0); -- Address output to I2C
				i_MC_I2C_busy	: in std_logic;
				i_MC_I2C_data : in std_logic_vector (7 downto 0);
				o_MC_I2C_data : out std_logic_vector (7 downto 0);
				o_MC_I2c_write_enable : out std_logic
				);
	end COMPONENT;
	
	COMPONENT branch_control 
	Port ( 	i_CLK : in  STD_LOGIC;
				i_PC_REG_ENABLE : in  STD_LOGIC;
				i_BRANCH_CONTROL : in  STD_LOGIC_VECTOR (2 downto 0);
				i_PC_ADDRESS : in  STD_LOGIC_VECTOR (9 downto 0);
				i_PC_INTERRUPT_set : in STD_LOGIC;
				o_INTERRUPT_enable : out STD_LOGIC;
				i_SAVE_PC : in STD_LOGIC;
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
	
	COMPONENT DATA_RAM 
	Port(		i_RAM_address: in std_logic_vector(13 downto 0); -- Address to write/read RAM
				i_RAM_data: in std_logic_vector(7 downto 0); -- Data to write to the RAM
				i_RAM_write_enable: in std_logic; -- Write enable 
				i_RAM_clk: in std_logic; -- clock input for RAM
				o_RAM_MC_data: out std_logic_vector(7 downto 0) -- Data output of RAM
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
	signal w_MEM_write_enable :  STD_LOGIC;
	signal w_MEM_access : STD_LOGIC;
	signal w_BRANCH_CONTROL :  STD_LOGIC_VECTOR (2 downto 0); -- Branch control output
	signal w_signed :  STD_LOGIC; -- Bit for signed or unsigned arithmetic
	signal w_carry : STD_LOGIC;
	signal w_SAVE_PC : STD_LOGIC;
	signal w_IMM_enable :  STD_LOGIC; -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
	signal w_BUS_select :  STD_LOGIC_VECTOR (1 downto 0); -- Bit for choosing immidiate value (0 for B register and 1 for immidiate value)
	

	-- Control unit outputs
	signal w_STATE : STD_LOGIC_VECTOR (6 downto 0); -- State output used for enabling blocks depending on state
	signal w_INTERRUPT_PC_set : STD_LOGIC; 
	
	-- Branch control outputs
	signal w_BRANCH_ADDRESS : STD_LOGIC_VECTOR (9 downto 0);
   signal w_PC_LOAD : STD_LOGIC;
	signal w_INTERRUPT_enable : STD_LOGIC;
	
	-- GP register outputs
	signal w_GPR_data_A 	: STD_LOGIC_VECTOR (7 downto 0);
	signal w_GPR_data_B	: STD_LOGIC_VECTOR (7 downto 0);
	
	-- B/Imm multiplexer outputs 
	signal w_DATA_B_Imm :  STD_LOGIC_VECTOR(7 downto 0);
	
	-- ALU outputs
	signal w_ALU_out : std_logic_vector (7 downto 0); -- 8-bit output
	signal w_ALU_carry_flag : std_logic; -- output carry flag
	signal w_ALU_overflow_flag : std_logic; -- output overflow flag
	signal w_ALU_negative_flag : std_logic; -- output negative flag
	signal w_ALU_zero_flag : std_logic; -- output zero flag

	-- Data bus outputs 
	signal w_BUS_memory : std_logic_vector (7 downto 0); -- 8-bit output
	signal w_BUS_register : std_logic_vector (7 downto 0); -- 8-bit output
	
	-- Memory controller outputs
	signal w_MC_RAM_address : std_logic_vector (13 downto 0); 
	signal w_MC_RAM_data : std_logic_vector (7 downto 0);
	signal w_MC_RAM_write_enable : std_logic;
	
--	signal w_MC_DISPLAY_data : std_logic_vector (7 downto 0);
--	signal w_MC_DISPLAY_write_enable : std_logic;
--
--	signal w_MC_GPIO_address : std_logic_vector (3 downto 0); 
--	signal w_MC_GPIO_data : std_logic_vector (7 downto 0);
--	signal w_MC_GPIO_write_enable : std_logic;
--	
--	signal w_MC_I2C_address :std_logic_vector (3 downto 0); 
--	signal w_MC_I2C_data : std_logic_vector (7 downto 0);
--	signal w_MC_I2c_write_enable : std_logic;
			
	signal w_MC_MUX_data : std_logic_vector (7 downto 0);
	signal w_MC_MEM_state : std_logic_vector(1 downto 0);
	
	-- Program counter outputs
	signal w_PC_PM_address : STD_LOGIC_VECTOR(9 downto 0);
	
	-- Data memory outputs
	signal w_RAM_MC_data : std_logic_vector (7 downto 0);
	
	-- Misc. signals
	signal r_register_enable : std_logic := '0';
	signal r_register_write_enable : std_logic := '0';
	
	signal r_MEM_write_enable : std_logic := '0'; 
	
	signal r_enable_fetch  : std_logic := '0';
	signal r_enable_decode  : std_logic := '0';
	signal r_enable_register_read  : std_logic := '0';
	signal r_enable_alu  : std_logic := '0';
	signal r_enable_memory  : std_logic := '0';
	signal r_enable_register_write  : std_logic := '0';
	signal r_enable_PC  : std_logic := '0';
	
begin

------- For use with own program memory --------

--	INST_PROGRAM_MEMORY : PROGRAM_MEMORY PORT MAP (
--		i_FLASH_PM_address 			=> w_PC_PM_address,
--		i_FLASH_PM_clk 				=> i_CORE_CLK,
--		o_FLASH_PM_IR_data 			=> w_FLASH_PM_IR_data 
--	);

------- For use with .mif file --------

	mega_prog_mem_inst : mega_prog_mem PORT MAP (
		address	 => w_PC_PM_address,
		clock	 => i_CORE_CLK,
		q	 => w_FLASH_PM_IR_data
	);

---------------------------------------
	
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
		o_MEM_access 					=> w_MEM_access,
		o_MEM_write_enable			=> w_MEM_write_enable,
		o_BRANCH_CONTROL 				=> w_BRANCH_CONTROL,
		o_Signed 						=> w_Signed,
		o_carry							=> w_carry,
		o_SAVE_PC 						=> w_SAVE_PC,
		o_IMM_enable 					=> w_IMM_enable,
		o_BUS_select					=> w_BUS_select
	);
	
	INST_control_unit : control_unit PORT MAP ( 	
		i_CLK 							=> i_CORE_CLK,
		i_RESET 							=> i_CORE_RESET,
		i_HALT							=> i_CORE_HALT,
		i_OPCODE 						=> w_OPCODE,
		i_MEM_state						=> w_MC_MEM_state,
		i_MEM_access 					=> w_MEM_access,
		o_STATE 							=> w_STATE,
		i_INTERRUPT_request 			=> i_INTERRUPT_request,
		i_INTERRUPT_enable			=> w_INTERRUPT_enable,
		o_INTERRUPT_ack				=> o_INTERRUPT_ack, 
		o_INTERRUPT_PC_set 			=> w_INTERRUPT_PC_set
	);
	
	INST_GPR : register32x8 PORT MAP (
		i_GPR_clk 						=> i_CORE_CLK,
		i_GPR_enable					=> r_register_enable,
		i_GPR_reset						=> i_CORE_RESET,
		i_GPR_address_A 				=> w_REGISTER_A,
		i_GPR_address_B 				=> w_REGISTER_B,
		i_GPR_data						=> w_BUS_register, 
		i_GPR_write_address			=> w_REGISTER_C,
		i_GPR_write_enable			=> r_register_write_enable, 
		o_GPR_ALU_data_A 				=> w_GPR_data_A,
		o_GPR_ALU_data_B 				=> w_GPR_data_B
	);
		
	INST_B_imm_multiplexer : B_imm_multiplexer PORT MAP (
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
		i_ALU_signed 					=> w_signed,
		i_ALU_carry						=> w_carry,
		o_ALU_out 						=> w_ALU_out,
		o_ALU_carry_flag 				=> w_ALU_carry_flag,
		o_ALU_overflow_flag 			=> w_ALU_overflow_flag,
		o_ALU_negative_flag			=> w_ALU_negative_flag,
		o_ALU_zero_flag 				=> w_ALU_zero_flag
	);
	
	INST_data_bus : data_bus PORT MAP ( 
		i_SELECT 						=> w_BUS_select,
		i_ALU  							=> w_ALU_out,
		i_MEMORY  						=> w_MC_MUX_data,
		o_MEMORY  						=> w_BUS_memory,
		o_REGISTER  					=> w_BUS_register
   );
	 
	INST_MEMORY_CONTROL : MEMORY_CONTROL PORT MAP (
		i_MC_clk 						=> i_CORE_CLK,
		i_MC_address 					=> w_address_MEM,
		i_MC_data 						=> w_BUS_memory,
		i_MC_enable 					=> r_enable_memory,
		i_MC_write_enable 			=> r_MEM_write_enable,
		------------------RAM (DATA_MEMORY)---------------------------------
		o_MC_RAM_address 				=> w_MC_RAM_address,
		i_MC_RAM_data 					=> w_RAM_MC_data,
		o_MC_RAM_data 					=> w_MC_RAM_data,
		o_MC_RAM_write_enable 		=> w_MC_RAM_write_enable,
		------------------Display-------------------------------------------
		o_MC_DISPLAY_data 				=> o_MC_DISPLAY_data,
		o_MC_DISPLAY_write_enable 	=> o_MC_DISPLAY_write_enable,
		------------------GPIO----------------------------------------------
		o_MC_GPIO_address 			=> o_MC_GPIO_address,
		i_MC_GPIO_data 				=> i_MC_GPIO_data,
		o_MC_GPIO_data 				=> o_MC_GPIO_data,
		o_MC_GPIO_write_enable 		=> o_MC_GPIO_write_enable,
		------------------I2C-----------------------------------------------
		o_MC_I2C_address 				=> o_MC_I2C_address,
		i_MC_I2C_busy					=> i_MC_I2C_busy,
		i_MC_I2C_data 					=> i_MC_I2C_data,
		o_MC_I2C_data 					=> o_MC_I2C_data,
		o_MC_I2c_write_enable 		=> o_MC_I2C_write_enable,
		------------------MUX-----------------------------------------------
		o_MC_MUX_data 					=> w_MC_MUX_data,
		------------------Control unit--------------------------------------
		o_MC_MEM_state 				=> w_MC_MEM_state
	);

	INST_branch_control : branch_control PORT MAP ( 
		i_CLK 							=> i_CORE_CLK,
		i_BRANCH_CONTROL 				=> w_BRANCH_CONTROL,
		i_PC_REG_ENABLE 				=> r_enable_register_read,
		i_PC_ADDRESS					=> w_PC_PM_address,
		i_SAVE_PC 						=> w_SAVE_PC,
		i_PC_INTERRUPT_set			=> w_INTERRUPT_PC_set,
		o_INTERRUPT_enable			=> w_INTERRUPT_enable,
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
		i_PC_enable 					=> r_enable_PC,
		i_PC_write_enable 			=> w_PC_LOAD,
		i_PC_address 					=> w_BRANCH_ADDRESS,
		i_PC_reset 						=> i_CORE_RESET,
		o_PC_PM_address 				=> w_PC_PM_address
	);
	
	INST_DATA_RAM : DATA_RAM PORT MAP (
		i_RAM_address 					=> w_MC_RAM_address,
		i_RAM_data 						=> w_MC_RAM_DATA,
		i_RAM_write_enable 			=> w_MC_RAM_write_enable,
		i_RAM_clk 						=> i_CORE_CLK,
		o_RAM_MC_data					=>	w_RAM_MC_data
	);
	
	r_register_enable <= r_enable_register_read or r_enable_register_write; -- Register is enabled if theres a read or write to it
	r_register_write_enable <= w_REGISTER_C_WRITE_ENABLE and r_enable_register_write; -- Write enable only if both write enable and register write state
	
	r_MEM_write_enable <= w_MEM_write_enable and r_enable_memory; -- Memory write enable only if meory enablke and memory write enable
	
	r_enable_fetch <= w_STATE(0); -- First state is fetch
	r_enable_decode <= w_STATE(1); -- Second state is decode
	r_enable_register_read <= w_STATE(2); -- Third state is register read
	r_enable_alu <= w_STATE(3); -- Fourth state is ALU operation
	r_enable_memory <= w_STATE(4); -- Fifth state is memory access
	r_enable_register_write <= w_STATE(5); -- Sixth state is register writeback
	r_enable_PC <= w_STATE(6); -- Seventh state is stall (Processor does nothing)
	
	o_DATA <= w_ALU_out;
	o_STATE <= w_STATE;
	
end;