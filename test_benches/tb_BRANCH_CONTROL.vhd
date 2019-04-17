LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_BRANCH_CONTROL  IS 
END ; 
 
ARCHITECTURE tb_BRANCH_CONTROL_arch OF tb_BRANCH_CONTROL IS
  SIGNAL i_BRANCH_CONTROL_negative   :  STD_LOGIC  ; 
  SIGNAL i_BRANCH_CONTROL_funct_sel   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL i_BRANCH_CONTROL_overflow   :  STD_LOGIC  ; 
  SIGNAL i_BRANCH_CONTROL_ZERO   :  STD_LOGIC  ; 
  SIGNAL o_BRANCH_CONTROL_PC_write_enable   :  STD_LOGIC  ; 
  SIGNAL i_BRANCH_CONTROL_carry   :  STD_LOGIC  ; 
  SIGNAL o_BRANCH_CONTROL_PC_address   :  std_logic_vector (9 downto 0)  ; 
  SIGNAL i_BRANCH_CONTROL_address   :  std_logic_vector (9 downto 0)  ; 
  SIGNAL i_BRANCH_CONTROL_clk   :  STD_LOGIC  ; 
  COMPONENT branch_control  
    PORT ( 
      i_BRANCH_CONTROL_negative  : in STD_LOGIC ; 
      i_BRANCH_CONTROL_funct_sel  : in std_logic_vector (2 downto 0) ; 
      i_BRANCH_CONTROL_overflow  : in STD_LOGIC ; 
      i_BRANCH_CONTROL_ZERO  : in STD_LOGIC ; 
      o_BRANCH_CONTROL_PC_write_enable  : out STD_LOGIC ; 
      i_BRANCH_CONTROL_carry  : in STD_LOGIC ; 
      o_BRANCH_CONTROL_PC_address  : out std_logic_vector (9 downto 0) ; 
      i_BRANCH_CONTROL_address  : in std_logic_vector (9 downto 0) ; 
      i_BRANCH_CONTROL_clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : branch_control  
    PORT MAP ( 
      i_BRANCH_CONTROL_negative   => i_BRANCH_CONTROL_negative  ,
      i_BRANCH_CONTROL_funct_sel   => i_BRANCH_CONTROL_funct_sel  ,
      i_BRANCH_CONTROL_overflow   => i_BRANCH_CONTROL_overflow  ,
      i_BRANCH_CONTROL_ZERO   => i_BRANCH_CONTROL_ZERO  ,
      o_BRANCH_CONTROL_PC_write_enable   => o_BRANCH_CONTROL_PC_write_enable  ,
      i_BRANCH_CONTROL_carry   => i_BRANCH_CONTROL_carry  ,
      o_BRANCH_CONTROL_PC_address   => o_BRANCH_CONTROL_PC_address  ,
      i_BRANCH_CONTROL_address   => i_BRANCH_CONTROL_address  ,
      i_BRANCH_CONTROL_clk   => i_BRANCH_CONTROL_clk   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 i_branch_control_clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    i_branch_control_clk  <= '1'  ;
	   wait for 50 ns ;
	    i_branch_control_clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 i_branch_control_clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_branch_control_funct_sel  <= "001"  ;
	wait for 150 ns ;
	 i_branch_control_funct_sel  <= "010"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "010"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "011"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "011"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "100"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "100"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "101"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "101"  ;
	wait for 100 ns ;
	 i_branch_control_funct_sel  <= "000"  ;
	wait for 49 ns ;
	 i_branch_control_funct_sel  <= "111"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_branch_control_zero  <= '0'  ;
	wait for 200 ns ;
	i_branch_control_zero  <= '1'  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_branch_control_overflow  <= '0'  ;
	wait for 400 ns ;
	 i_branch_control_overflow  <= '1'  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_BRANCH_CONTROL_negative  <= '0'  ;
	wait for 600 ns ;
	 i_BRANCH_CONTROL_negative  <= '1'  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_branch_control_carry  <= '0'  ;
	wait for 800 ns ;
	 i_branch_control_carry  <= '1'  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_branch_control_address  <= "0000000000"  ;
	wait for 150 ns ;
	 i_branch_control_address  <= "0000000011"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0000001100"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0000110000"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0011000000"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "1100000000"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0000001111"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0000111100"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "0011110000"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "1111000000"  ;
	wait for 100 ns ;
	 i_branch_control_address  <= "1111111111"  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
