LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_DATA_RAM  IS 
END ; 
 
ARCHITECTURE tb_DATA_RAM_arch OF tb_DATA_RAM IS
  SIGNAL o_RAM_MUX_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_RAM_write_enable   :  STD_LOGIC  ; 
  SIGNAL i_RAM_clk   :  STD_LOGIC  ; 
  SIGNAL i_RAM_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_RAM_address   :  std_logic_vector (14 downto 0)  ; 
  COMPONENT DATA_RAM  
    PORT ( 
      o_RAM_MUX_data  : out std_logic_vector (7 downto 0) ; 
      i_RAM_write_enable  : in STD_LOGIC ; 
      i_RAM_clk  : in STD_LOGIC ; 
      i_RAM_data  : in std_logic_vector (7 downto 0) ; 
      i_RAM_address  : in std_logic_vector (14 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : DATA_RAM  
    PORT MAP ( 
      o_RAM_MUX_data   => o_RAM_MUX_data  ,
      i_RAM_write_enable   => i_RAM_write_enable  ,
      i_RAM_clk   => i_RAM_clk  ,
      i_RAM_data   => i_RAM_data  ,
      i_RAM_address   => i_RAM_address   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_ram_address  <= "000000000000000"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000001"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000010"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000011"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000100"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000000"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000001"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000010"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000011"  ;
	wait for 100 ns ;
	 i_ram_address  <= "000000000000100"  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_ram_data  <= "11111111"  ;
	wait for 100 ns ;
	 i_ram_data  <= "01111110"  ;
	wait for 100 ns ;
	 i_ram_data  <= "10111101"  ;
	wait for 100 ns ;
	 i_ram_data  <= "11011011"  ;
	wait for 100 ns ;
	 i_ram_data  <= "11100111"  ;
	wait for 100 ns ;
	 i_ram_data  <= "11111111"  ;
	wait for 100 ns ;
	 i_ram_data  <= "01111110"  ;
	wait for 100 ns ;
	 i_ram_data  <= "10111101"  ;
	wait for 100 ns ;
	 i_ram_data  <= "11011011"  ;
	wait for 100 ns ;
	 i_ram_data  <= "11100111"  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_ram_write_enable  <= '1'  ;
	wait for 500 ns ;
	 i_ram_write_enable  <= '0'  ;
	wait for 500 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 i_ram_clk  <= '0'  ;
	wait for 25 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 19
	loop
	    i_ram_clk  <= '1'  ;
	   wait for 25 ns ;
	    i_ram_clk  <= '0'  ;
	   wait for 25 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 i_ram_clk  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 if o_ram_mux_data  /= ("00000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
