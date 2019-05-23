LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY InstrucReg_tb  IS 
END ; 
 
ARCHITECTURE InstrucReg_tb_arch OF InstrucReg_tb IS 
  COMPONENT InstrucReg  
    PORT ( 
      i_IR_data  : in std_logic_vector (31 downto 0); 
      i_IR_enable  : in std_logic; 
      i_IR_clk  : in STD_LOGIC; 
      o_IR_instruction  : out std_logic_vector (31 downto 0) 
		); 
  END COMPONENT ; 
	
	-- Inputs
	SIGNAL i_IR_data   :  std_logic_vector (31 downto 0) := x"00000000"; 
	SIGNAL i_IR_enable   :  std_logic  := '0'; 
	SIGNAL i_IR_clk   :  STD_LOGIC  := '0'; 

	-- Outputs
	SIGNAL o_IR_instruction   :  std_logic_vector (31 downto 0);
	
	 -- Clock period definitions
   constant c_clk_period : time := 10 ns;
  
BEGIN
  DUT  : InstrucReg  
    PORT MAP ( 
      i_IR_data   => i_IR_data,
      i_IR_enable   => i_IR_enable,
      i_IR_clk   => i_IR_clk,
      o_IR_instruction   => o_IR_instruction   
	); 
	
	
	-- Clock process definitions
   clk_process : process
   begin
		i_IR_clk <= '0';
		wait for c_clk_period/2;
		i_IR_clk <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stim_proc: process
   begin	
	wait for c_clk_period;
	i_IR_enable <= '0';
	i_IR_data <= x"1b10a010";
	wait for c_clk_period;
	i_IR_enable <= '1';
	wait for c_clk_period;
	i_IR_enable <= '0';
	i_IR_data <= x"ff115110";
	wait for c_clk_period;
	i_IR_enable <= '1';
	wait for c_clk_period;
	i_IR_enable <= '0';
	i_IR_data <= x"725a4314";
	wait for c_clk_period;
	i_IR_enable <= '1';
	wait for c_clk_period;
	i_IR_enable <= '0';
	i_IR_data <= x"00000000";
	wait for c_clk_period;
	i_IR_enable <= '1';
	wait for c_clk_period;
	wait;
	
	end Process;
	
	
	
END;
