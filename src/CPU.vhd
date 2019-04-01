----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:01:40 03/26/2019 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
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

entity CPU is
    Port ( i_CLK : in  STD_LOGIC;
           o_DATA : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end CPU;

architecture Behavioral of CPU is

	SIGNAL w_ALU_INPUT_A : std_logic_vector (7 downto 0);
	SIGNAL w_ALU_INPUT_B : std_logic_vector (7 downto 0);
	SIGNAL w_ALU_OUT : std_logic_vector (7 downto 0);
	SIGNAL w_ALU_CARRY : std_logic;
	SIGNAL w_ALU_OVERFLOW : std_logic;
	SIGNAL w_ALU_NEGATIVE : std_logic;
	SIGNAL w_ALU_ZERO : std_logic;
	
	SIGNAL w_PC_OUT : STD_LOGIC_VECTOR (9 downto 0);
	
	SIGNAL w_PROG_MEM_OUT : STD_LOGIC_VECTOR (7 downto 0);
	
	SIGNAL w_DATA_MEM_IN : STD_LOGIC_VECTOR (7 downto 0);
	
	SIGNAL w_DATA_MEM_OUT : STD_LOGIC_VECTOR (7 downto 0);
	
	SIGNAL w_INST_MEM_OUT : STD_LOGIC_VECTOR (31 downto 0);
	
	SIGNAL w_UNASSIGNED : STD_LOGIC_VECTOR (31 downto 0);
	
	
	COMPONENT my_ALU
	PORT(
		i_CLK : IN std_logic;
		i_A : IN std_logic_vector(7 downto 0);
		i_B : IN std_logic_vector(7 downto 0);
		i_ALU_sel : IN std_logic_vector(3 downto 0);          
		o_ALU_out : OUT std_logic_vector(7 downto 0);
		o_ALU_carry_flag : OUT std_logic;
		o_ALU_overflow_flag : OUT std_logic;
		o_ALU_negative_flag : OUT std_logic;
		o_ALU_zero_flag : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT register_32x8
	PORT(
		i_CLK : IN std_logic;
		i_ADDRESS_A : IN std_logic_vector(4 downto 0);
		i_ADDRESS_B : IN std_logic_vector(4 downto 0);
		i_WRITE_ADDRESS : IN std_logic_vector(4 downto 0);
		i_DATA_IN : IN std_logic_vector(7 downto 0);
		i_WRITE_ENABLE : IN std_logic;          
		o_OUT_A : OUT std_logic_vector(7 downto 0);
		o_OUT_B : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT program_memory
	PORT(
		i_CLK : IN std_logic;
		i_READ_ADDRESS : IN std_logic_vector(9 downto 0);          
		o_READ_DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT program_counter
	PORT(
		i_INCREMENT : IN std_logic;
		i_WRITE_ENABLE : IN std_logic;
		i_WRITE_PROG_ADDRESS : IN std_logic_vector(9 downto 0);
		i_CLK : IN std_logic;          
		o_DATA : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
	
	COMPONENT instruction_memory
	PORT(
		i_CLK : IN std_logic;
		i_ADDRESS : IN std_logic_vector(7 downto 0);          
		o_DATA : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT data_memory
	PORT(
		i_CLK : IN std_logic;
		i_WRITE_ADDRESS : IN std_logic_vector(9 downto 0);
		i_WRITE_ENABLE : IN std_logic;
		i_WRITE_DATA : IN std_logic_vector(7 downto 0);
		o_ADDRESS : IN std_logic_vector(9 downto 0);          
		o_DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
begin
	Inst_my_ALU: my_ALU PORT MAP(
		i_CLK => i_CLK,
		i_A => w_ALU_INPUT_A,
		i_B => w_ALU_INPUT_B,
		i_ALU_sel => w_INST_MEM_OUT(10 downto 7),
		o_ALU_out => w_ALU_OUT,
		o_ALU_carry_flag => w_ALU_CARRY,
		o_ALU_overflow_flag => w_ALU_OVERFLOW,
		o_ALU_negative_flag => w_ALU_NEGATIVE,
		o_ALU_zero_flag => w_ALU_ZERO
	);
	
	Inst_register_32x8: register_32x8 PORT MAP(
		i_CLK => i_CLK,
		i_ADDRESS_A => w_INST_MEM_OUT(31 downto 27),
		i_ADDRESS_B => w_INST_MEM_OUT(27 downto 23),
		o_OUT_A => w_ALU_INPUT_A,
		o_OUT_B => w_ALU_INPUT_B,
		i_WRITE_ADDRESS => w_INST_MEM_OUT(23 downto 19),
		i_DATA_IN => w_INST_MEM_OUT(19 downto 12),
		i_WRITE_ENABLE => w_INST_MEM_OUT(11)
	);
	
	Inst_program_counter: program_counter PORT MAP(
		i_INCREMENT => w_INST_MEM_OUT(6),
		i_WRITE_ENABLE => w_INST_MEM_OUT(5),
		i_WRITE_PROG_ADDRESS => w_UNASSIGNED(31 downto 22),
		o_DATA => w_PC_OUT,
		i_CLK => i_CLK
	);
	
	Inst_instruction_memory: instruction_memory PORT MAP(
		i_CLK => i_CLK,
		i_ADDRESS => w_PROG_MEM_OUT,
		o_DATA => w_INST_MEM_OUT
	);

	Inst_program_memory: program_memory PORT MAP(
		i_CLK => i_CLK,
		i_READ_ADDRESS => w_PC_OUT,
		o_READ_DATA => w_PROG_MEM_OUT
	);
	
	Inst_data_memory: data_memory PORT MAP(
		i_CLK => i_CLK,
		i_WRITE_ADDRESS => w_UNASSIGNED(21 downto 12),
		i_WRITE_ENABLE => w_UNASSIGNED(10),
		i_WRITE_DATA => w_DATA_MEM_IN,
		o_ADDRESS => w_UNASSIGNED(9 downto 0),
		o_DATA => w_DATA_MEM_OUT 
	);

	o_DATA <= w_ALU_OUT;

end Behavioral;

