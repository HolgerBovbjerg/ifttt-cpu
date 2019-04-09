LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY TB_Program_counter  IS 
END ; 
 
ARCHITECTURE TB_Program_counter_arch OF TB_Program_counter IS
  SIGNAL i_PC_address   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL i_PC_clk   :  STD_LOGIC  ; 
  SIGNAL i_PC_OP   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL o_PC_FLASH_PM_data   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL i_PC_write_enable   :  STD_LOGIC  ; 
  COMPONENT Program_counter  
    PORT ( 
      i_PC_address  : in std_logic_vector (15 downto 0) ; 
      i_PC_clk  : in STD_LOGIC ; 
      i_PC_OP  : in std_logic_vector (1 downto 0) ; 
      o_PC_FLASH_PM_data  : out std_logic_vector (15 downto 0) ; 
      i_PC_write_enable  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Program_counter  
    PORT MAP ( 
      i_PC_address   => i_PC_address  ,
      i_PC_clk   => i_PC_clk  ,
      i_PC_OP   => i_PC_OP  ,
      o_PC_FLASH_PM_data   => o_PC_FLASH_PM_data  ,
      i_PC_write_enable   => i_PC_write_enable   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 2 us, Period = 100 ns
  Process
	Begin
	 i_pc_clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    i_pc_clk  <= '1'  ;
	   wait for 50 ns ;
	    i_pc_clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 i_pc_clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '0'  ;
	wait for 50 ns ;
	 i_pc_write_enable  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_pc_address  <= "0000000000000000"  ;
	wait for 50 ns ;
	 i_pc_address  <= "0000000000001111"  ;
	wait for 50 ns ;
	 i_pc_address  <= "0000000011110000"  ;
	wait for 50 ns ;
	 i_pc_address  <= "0000111100000000"  ;
	wait for 50 ns ;
	 i_pc_address  <= "1111000000000000"  ;
	wait for 50 ns ;
	 i_pc_address  <= "1111111100000000"  ;
	wait for 50 ns ;
	 i_pc_address  <= "0000000011111111"  ;
	wait for 50 ns ;
	 i_pc_address  <= "1111111111111111"  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_pc_op  <= "00"  ;
	wait for 150 ns ;
	i_pc_op  <= "01"  ;
	wait for 100 ns ;
	i_pc_op  <= "10"  ;
	wait for 100 ns ;
	i_pc_op  <= "11"  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 if o_pc_flash_pm_data  /= ("0000000000000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
