LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb  IS 
END ; 
 
ARCHITECTURE tb_arch OF tb IS
  SIGNAL o_GPR_ALU_data_A   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL i_GPR_write_enable   :  STD_LOGIC  ; 
  SIGNAL o_GPR_ALU_data_B   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL i_GPR_A_B_data_sel   :  STD_LOGIC  ; 
  SIGNAL i_GPR_CLK   :  STD_LOGIC  ; 
  SIGNAL i_GPR_data   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL i_GPR_address   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  COMPONENT GP_registers_32x8  
    PORT ( 
      o_GPR_ALU_data_A  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      i_GPR_write_enable  : in STD_LOGIC ; 
      o_GPR_ALU_data_B  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      i_GPR_A_B_data_sel  : in STD_LOGIC ; 
      i_GPR_CLK  : in STD_LOGIC ; 
      i_GPR_data  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      i_GPR_address  : in STD_LOGIC_VECTOR (4 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : GP_registers_32x8  
    PORT MAP ( 
      o_GPR_ALU_data_A   => o_GPR_ALU_data_A  ,
      i_GPR_write_enable   => i_GPR_write_enable  ,
      o_GPR_ALU_data_B   => o_GPR_ALU_data_B  ,
      i_GPR_A_B_data_sel   => i_GPR_A_B_data_sel  ,
      i_GPR_CLK   => i_GPR_CLK  ,
      i_GPR_data   => i_GPR_data  ,
      i_GPR_address   => i_GPR_address   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_write_enable  <= '0'  ;
	wait for 105 ns ;
	i_gpr_write_enable  <= '1'  ;
	wait for 60 ns ;
	i_gpr_write_enable  <= '0'  ;
-- dumped values till 1 us
	wait;
 End Process;
 
 -- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_data  <= "00000000" ;
	 wait for 105 ns;
	 i_gpr_data  <= "11111111"  ;
	 wait for 20 ns;
	 i_gpr_data  <= "10001111"  ;
	 wait for 20 ns;
	 i_gpr_data  <= "11110001"  ;
	 wait for 20 ns;
	 i_gpr_data  <= "00000000" ;
-- dumped values till 1 us
	wait;
 End Process;
 
 -- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_address  <= "00000"  ;
	 wait for 25 ns;
	 i_gpr_address  <= "00001"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00010"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00011"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00100"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00101"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00110"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00111"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00101"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00110"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00111"  ;
	 wait for 20 ns;
	 i_gpr_address  <= "00100"  ;
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 i_gpr_clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    i_gpr_clk  <= '1'  ;
	   wait for 10 ns ;
	    i_gpr_clk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 i_gpr_clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	i_gpr_a_b_data_sel  <= '0'  ;
	wait for 25 ns ;
	i_gpr_a_b_data_sel  <= '1'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '0'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '1'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '0'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '1'  ;
	wait for 80 ns ;
	i_gpr_a_b_data_sel  <= '0'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '1'  ;
	wait for 20 ns ;
	i_gpr_a_b_data_sel  <= '0'  ;
-- dumped values till 1 us
	wait;
 End Process;
END;
