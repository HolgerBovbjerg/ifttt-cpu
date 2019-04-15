LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_PROGRAM_MEMORY  IS 
END ; 
 
ARCHITECTURE tb_PROGRAM_MEMORY_arch OF tb_PROGRAM_MEMORY IS
  SIGNAL o_FLASH_PM_IR_data   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL i_FLASH_PM_clk   :  STD_LOGIC  ; 
  SIGNAL i_FLASH_PM_address   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT PROGRAM_MEMORY  
    PORT ( 
      o_FLASH_PM_IR_data  : out std_logic_vector (31 downto 0) ; 
      i_FLASH_PM_clk  : in STD_LOGIC ; 
      i_FLASH_PM_address  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : PROGRAM_MEMORY  
    PORT MAP ( 
      o_FLASH_PM_IR_data   => o_FLASH_PM_IR_data  ,
      i_FLASH_PM_clk   => i_FLASH_PM_clk  ,
      i_FLASH_PM_address   => i_FLASH_PM_address   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_flash_pm_address  <= "00000000"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000001"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000010"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000011"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000000"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000001"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000010"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000011"  ;
	wait for 100 ns ; 
	i_flash_pm_address  <= "00000000"  ;
	wait for 100 ns ;
	 i_flash_pm_address  <= "00000001"  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 i_flash_pm_clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    i_flash_pm_clk  <= '1'  ;
	   wait for 50 ns ;
	    i_flash_pm_clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 i_flash_pm_clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;

-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 if o_flash_pm_ir_data  /= ("00000000000000000000000000000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
