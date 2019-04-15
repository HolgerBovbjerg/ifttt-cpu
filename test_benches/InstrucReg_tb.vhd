LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY InstrucReg_tb  IS 
END ; 
 
ARCHITECTURE InstrucReg_tb_arch OF InstrucReg_tb IS
  SIGNAL i_IR_data   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL i_IR_write_enable   :  std_logic  ; 
  SIGNAL i_IR_clk   :  STD_LOGIC  ; 
  SIGNAL o_IR_CU_data   :  std_logic_vector (31 downto 0)  ; 
  COMPONENT InstrucReg  
    PORT ( 
      i_IR_data  : in std_logic_vector (31 downto 0) ; 
      i_IR_write_enable  : in std_logic ; 
      i_IR_clk  : in STD_LOGIC ; 
      o_IR_CU_data  : out std_logic_vector (31 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : InstrucReg  
    PORT MAP ( 
      i_IR_data   => i_IR_data  ,
      i_IR_write_enable   => i_IR_write_enable  ,
      i_IR_clk   => i_IR_clk  ,
      o_IR_CU_data   => o_IR_CU_data   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 i_IR_clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    i_IR_clk  <= '1'  ;
	   wait for 50 ns ;
	    i_IR_clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 i_IR_clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	i_IR_write_enable  <= '1'  ;
	wait for 500 ns ;
i_IR_write_enable  <= '0'  ;
	wait for 500 ns ;
	
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	i_ir_data  <= x"11111111"  ;
	wait for 100 ns ;
	i_ir_data  <= x"22222222"  ;
	wait for 100 ns ;
	i_ir_data  <= x"44444444"  ;
	wait for 100 ns ;
	i_ir_data  <= x"55555555"  ;
	wait for 100 ns ;
	i_ir_data  <= x"88888888"  ;
	wait for 100 ns ;
	i_ir_data  <= x"55555555"  ;
	wait for 100 ns ;
	i_ir_data  <= x"44444444"  ;
	wait for 100 ns ;
	i_ir_data  <= x"22222222"  ;
	wait for 100 ns ;
	i_ir_data  <= x"11111111"  ;
	wait for 100 ns ;
	i_ir_data  <= x"00000000"  ;
	wait for 100 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  --Process
	--Begin
	 --o_ir_cu_data <= x"00000000" 
	--wait for 1 ns ;
-- dumped values till 1 ns
	--wait;
 --End Process;
END;