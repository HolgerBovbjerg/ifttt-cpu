LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_MEMORY_CONTROL  IS 
END ; 
 
ARCHITECTURE tb_MEMORY_CONTROL_arch OF tb_MEMORY_CONTROL IS
  SIGNAL i_MC_write_enable   :  STD_LOGIC  ; 
  SIGNAL i_MC_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL o_MC_GPIO_address   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL o_MC_RAM_address   :  std_logic_vector (13 downto 0)  ; 
  SIGNAL o_MC_I2c_write_enable   :  STD_LOGIC  ; 
  SIGNAL o_MC_I2C_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL o_MC_GPIO_write_enable   :  STD_LOGIC  ; 
  SIGNAL o_MC_MUX_enable   :  STD_LOGIC  ; 
  SIGNAL o_MC_GPIO_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL o_MC_MUX_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL o_MC_I2C_address   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL i_MC_RAM_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_MC_clk   :  STD_LOGIC  ; 
  SIGNAL o_MC_MUX_address   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL i_MC_address   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL o_MC_RAM_write_enable   :  STD_LOGIC  ; 
  SIGNAL i_MC_I2C_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_MC_enable   :  STD_LOGIC  ; 
  SIGNAL o_MC_RAM_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_MC_GPIO_data   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT MEMORY_CONTROL  
    PORT ( 
      i_MC_write_enable  : in STD_LOGIC ; 
      i_MC_data  : in std_logic_vector (7 downto 0) ; 
      o_MC_GPIO_address  : out std_logic_vector (3 downto 0) ; 
      o_MC_RAM_address  : out std_logic_vector (13 downto 0) ; 
      o_MC_I2c_write_enable  : out STD_LOGIC ; 
      o_MC_I2C_data  : out std_logic_vector (7 downto 0) ; 
      o_MC_GPIO_write_enable  : out STD_LOGIC ; 
      o_MC_MUX_enable  : out STD_LOGIC ; 
      o_MC_GPIO_data  : out std_logic_vector (7 downto 0) ; 
      o_MC_MUX_data  : out std_logic_vector (7 downto 0) ; 
      o_MC_I2C_address  : out std_logic_vector (3 downto 0) ; 
      i_MC_RAM_data  : in std_logic_vector (7 downto 0) ; 
      i_MC_clk  : in STD_LOGIC ; 
      o_MC_MUX_address  : out std_logic_vector (15 downto 0) ; 
      i_MC_address  : in std_logic_vector (15 downto 0) ; 
      o_MC_RAM_write_enable  : out STD_LOGIC ; 
      i_MC_I2C_data  : in std_logic_vector (7 downto 0) ; 
      i_MC_enable  : in STD_LOGIC ; 
      o_MC_RAM_data  : out std_logic_vector (7 downto 0) ; 
      i_MC_GPIO_data  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : MEMORY_CONTROL  
    PORT MAP ( 
      i_MC_write_enable   => i_MC_write_enable  ,
      i_MC_data   => i_MC_data  ,
      o_MC_GPIO_address   => o_MC_GPIO_address  ,
      o_MC_RAM_address   => o_MC_RAM_address  ,
      o_MC_I2c_write_enable   => o_MC_I2c_write_enable  ,
      o_MC_I2C_data   => o_MC_I2C_data  ,
      o_MC_GPIO_write_enable   => o_MC_GPIO_write_enable  ,
      o_MC_MUX_enable   => o_MC_MUX_enable  ,
      o_MC_GPIO_data   => o_MC_GPIO_data  ,
      o_MC_MUX_data   => o_MC_MUX_data  ,
      o_MC_I2C_address   => o_MC_I2C_address  ,
      i_MC_RAM_data   => i_MC_RAM_data  ,
      i_MC_clk   => i_MC_clk  ,
      o_MC_MUX_address   => o_MC_MUX_address  ,
      i_MC_address   => i_MC_address  ,
      o_MC_RAM_write_enable   => o_MC_RAM_write_enable  ,
      i_MC_I2C_data   => i_MC_I2C_data  ,
      i_MC_enable   => i_MC_enable  ,
      o_MC_RAM_data   => o_MC_RAM_data  ,
      i_MC_GPIO_data   => i_MC_GPIO_data   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 100 ns
  Process
	Begin
	 i_mc_clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 99
	loop
	    i_mc_clk  <= '1'  ;
	   wait for 50 ns ;
	    i_mc_clk  <= '0'  ;
	   wait for 50 ns ;
-- 9950 ns, repeat pattern in loop.
	end  loop;
	 i_mc_clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	i_mc_address  <= "0100000000010101"  ;
	wait for 3050 ns ;
	i_mc_address  <= "1000000000000011"  ;
	wait for 3450 ns ;
	i_mc_address  <= "1100000000001100"  ;
	wait for 3500 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_data  <= "00111100"  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_enable  <= '0'  ;
	wait for 1050 ns ;
	i_mc_enable  <= '1'  ;
	wait for 2000 ns ;
	i_mc_enable  <= '0'  ;
	wait for 1000 ns ;
	i_mc_enable  <= '1'  ;
	wait for 2500 ns ;
	i_mc_enable  <= '0'  ;
	wait for 1000 ns ;
	i_mc_enable  <= '1'  ;
	wait for 2500 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_write_enable  <= '1'  ;
	wait for 2050 ns ;
	i_mc_write_enable  <= '0'  ;
	wait for 1000 ns ;
	i_mc_write_enable  <= '1'  ;
	wait for 2500 ns ;
	i_mc_write_enable  <= '0'  ;
	wait for 1000 ns ;
	i_mc_write_enable  <= '1'  ;
	wait for 2500 ns ;
	i_mc_write_enable  <= '0'  ;
	wait for 1000 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_ram_address  /= ("00000000000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_ram_data  <= "11111111"  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_ram_data  /= ("00000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_ram_write_enable  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_gpio_address  /= ("0000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_gpio_data  <= "11110000"  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_gpio_data  /= ("00000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_gpio_write_enable  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_i2c_address  /= ("0000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 i_mc_i2c_data  <= "00001111"  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_i2c_data  /= ("00000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_i2c_write_enable  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_mux_address  /= ("0000000000000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_mux_data  /= ("00000000"  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 if o_mc_mux_enable  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;
END;
