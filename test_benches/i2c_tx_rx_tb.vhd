LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY i2c_tx_rx_tb  IS 
END ; 
 
ARCHITECTURE i2c_tx_rx_tb_arch OF i2c_tx_rx_tb IS
  SIGNAL i_I2C_reset   :  STD_LOGIC  ; 
  SIGNAL io_I2C_sda   :  STD_LOGIC  ; 
  SIGNAL o_I2C_data_rx   :  STD_LOGIC_VECTOR (7 downto 0)  ;  
  SIGNAL i_I2C_data_tx   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL i_I2C_ready   :  STD_LOGIC  ; 
  SIGNAL i_I2C_rw   :  STD_LOGIC  ; 
  SIGNAL io_I2C_scl   :  STD_LOGIC  ; 
  SIGNAL o_I2C_ack_error   :  STD_LOGIC  ; 
  SIGNAL i_I2C_clk   :  STD_LOGIC  ; 
  COMPONENT I2C_tx_rx  
    PORT ( 
      i_I2C_reset  : in STD_LOGIC ; 
      io_I2C_sda  : inout STD_LOGIC ; 
      o_I2C_data_rx  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      i_I2C_data_tx  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      i_I2C_ready  : in STD_LOGIC ; 
      i_I2C_rw  : in STD_LOGIC ; 
      io_I2C_scl  : inout STD_LOGIC ; 
      o_I2C_ack_error  : out STD_LOGIC ; 
      i_I2C_clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : I2C_tx_rx  
    PORT MAP ( 
      i_I2C_reset   => i_I2C_reset  ,
      io_I2C_sda   => io_I2C_sda  ,
      o_I2C_data_rx   => o_I2C_data_rx  ,
      i_I2C_data_tx   => i_I2C_data_tx  ,
      i_I2C_ready   => i_I2C_ready  ,
      i_I2C_rw   => i_I2C_rw  ,
      io_I2C_scl   => io_I2C_scl  ,
      o_I2C_ack_error   => o_I2C_ack_error  ,
      i_I2C_clk   => i_I2C_clk   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 io_i2c_sda  <= 'H'  ;
	wait for 23000 ns ; -- 23000 ns
	io_i2c_sda  <= '0'  ;
	wait for 2550 ns; -- 25550
	io_i2c_sda  <= 'H'  ;
	wait for 19950 ns ; -- 45500 ns
	io_i2c_sda  <= '0'  ;
	wait for 2550 ns; -- 48050
	io_i2c_sda  <= 'H'  ;
	wait for 19450 ns ; -- 67500 ns
	io_i2c_sda  <= '0'  ;
	wait for 2700 ns; -- 70050 ns
	io_i2c_sda  <= 'H'  ;
	wait for 27450 ns; -- 97500
	io_i2c_sda  <= '0'  ;
	wait for 2550 ns; -- 100050 ns
	io_i2c_sda  <= 'H'  ; -- start of first received bit
	wait for 2500 ns;
	io_i2c_sda  <= '0'  ;
	wait for 2500 ns;
	io_i2c_sda  <= 'H'  ;
	wait for 2500 ns;
	io_i2c_sda  <= '0'  ;
	wait for 2500 ns;
	io_i2c_sda  <= 'H'  ;
	wait for 2500 ns;
	io_i2c_sda  <= '0'  ;
	wait for 2500 ns;
	io_i2c_sda  <= 'H'  ;
	wait for 2500 ns;
	io_i2c_sda  <= '0'  ;
	wait for 2500 ns;
	io_i2c_sda  <= 'H'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= '0'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= 'H'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= '0'  ;
--	io_i2c_sda  <= 'H'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= '0'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= 'H'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= '0'  ;
--	wait for 2500 ns;
--	io_i2c_sda  <= 'H'  ;

-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 io_i2c_scl  <= 'H'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 i_i2c_rw  <= '0'  ;
	wait for 74000 ns ;
	i_i2c_rw  <= '1'  ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 ms, Period = 20 ns
  Process
	Begin
	 i_i2c_clk  <= '0'  ;
	wait for 10 ns ;
	
	for z in 1 to 100000
	loop
		i_i2C_clk <= '1';
		wait for 10 ns;
		i_i2C_clk <= '0';
		wait for 10 ns;
		end loop;
		wait for 10 ns;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 i_i2c_ready  <= '1'  ;
	wait for 500 ns ;
	i_i2C_ready <= '0';
	wait for 10000 ns ;
	i_i2C_ready <= '1';
	wait for 64500 ns ;
	i_i2C_ready <= '0';
	wait for 10000 ns ;
	i_i2C_ready <= '1';
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 i_i2c_reset  <= '1'  ;
	wait for 50 ns ;
	i_i2C_reset <= '0';
	wait for 50 ns ;
	 i_i2c_reset  <= '1'  ;
	 	wait for 74400 ns ;
	i_i2C_reset <= '0';
	wait for 50 ns ;
	 i_i2c_reset  <= '1' ; 
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 i_i2c_data_tx  <= "11000011"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
