LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Register32x8_tb  IS 
END ; 
 
ARCHITECTURE Register32x8_tb_arch OF Register32x8_tb IS

	COMPONENT register32x8  
	PORT ( 
      i_GPR_write_address  : in std_logic_vector (4 downto 0) ; 
      i_GPR_write_enable  : in STD_LOGIC ; 
      o_GPR_ALU_data_A  : out std_logic_vector (7 downto 0) ; 
      i_GPR_data  : in std_logic_vector (7 downto 0) ; 
      o_GPR_ALU_data_B  : out std_logic_vector (7 downto 0) ; 
		i_GPR_address_A  : in std_logic_vector (4 downto 0) ; 
		i_GPR_enable			: in STD_LOGIC;
      i_GPR_clk  : in STD_LOGIC ; 
      i_GPR_address_B  : in std_logic_vector (4 downto 0) ); 
	END COMPONENT ; 

	-- Inputs
	SIGNAL i_GPR_write_address   :  std_logic_vector (4 downto 0) := "00000"; 
	SIGNAL i_GPR_write_enable   :  STD_LOGIC := '0'; 
	SIGNAL i_GPR_data   :  std_logic_vector (7 downto 0) := x"00"; 
	SIGNAL i_GPR_address_A   :  std_logic_vector (4 downto 0) := "00000"; 
	SIGNAL i_GPR_clk   :  STD_LOGIC := '0'; 
	SIGNAL i_GPR_enable   :  STD_LOGIC := '0';
	SIGNAL i_GPR_address_B   :  std_logic_vector (4 downto 0) := "00000"; 
	
	-- Outputs 
	SIGNAL o_GPR_ALU_data_A   :  std_logic_vector (7 downto 0); 
	SIGNAL o_GPR_ALU_data_B   :  std_logic_vector (7 downto 0); 
  
  -- Clock period definitions
   constant c_clk_period : time := 10 ns;
  
	BEGIN
	DUT  : register32x8  
   PORT MAP ( 
		i_GPR_enable => i_GPR_enable,
      i_GPR_write_address   => i_GPR_write_address,
      i_GPR_write_enable   => i_GPR_write_enable,
      o_GPR_ALU_data_A   => o_GPR_ALU_data_A,
      i_GPR_data   => i_GPR_data,
      o_GPR_ALU_data_B   => o_GPR_ALU_data_B,
      i_GPR_address_A   => i_GPR_address_A,
      i_GPR_clk   => i_GPR_clk,
      i_GPR_address_B   => i_GPR_address_B
		); 


	-- Clock process definitions
   clk_process : process
   begin
		i_GPR_clk <= '0';
		wait for c_clk_period/2;
		i_GPR_clk <= '1';
		wait for c_clk_period/2;
   end process;
		
	-- Stimulus process
	stim_proc: process
   begin	
	i_GPR_enable <= '1';
	i_GPR_write_enable <= '1';
	wait for c_clk_period;
	for i in 0 to 31 loop
		i_GPR_write_address <= std_logic_vector(unsigned(i_GPR_write_address) + 1);
		i_GPR_data  <= std_logic_vector(unsigned(i_GPR_data) + 5);
		wait for c_clk_period;
	end loop;
	i_GPR_write_enable <= '0';
	i_GPR_data <= x"00";
	i_GPR_enable <= '0';
	wait for c_clk_period*5;
	i_GPR_enable <= '1';
	wait for c_clk_period;
	for i in 0 to 31 loop
		i_GPR_address_A <=  std_logic_vector(unsigned(i_GPR_address_A) + 1);
		i_GPR_address_B <= std_logic_vector(unsigned(i_GPR_address_B) + 1);
		i_GPR_data  <= std_logic_vector(unsigned(i_GPR_data) + 5);
		wait for c_clk_period;
	end loop;
	
	wait;
	
	end Process;
END;
