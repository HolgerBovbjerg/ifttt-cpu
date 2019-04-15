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
  SIGNAL i_GPR_write_address   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL i_GPR_write_enable   :  STD_LOGIC  ; 
  SIGNAL o_GPR_ALU_data_A   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_GPR_data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL o_GPR_ALU_data_B   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_GPR_address_A   :  std_logic_vector (4 downto 0)  ; 
	SIGNAL i_GPR_clk   :  STD_LOGIC  ; 
	SIGNAL i_GPR_enable   :  STD_LOGIC  ;
  SIGNAL i_GPR_address_B   :  std_logic_vector (4 downto 0)  ; 
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
BEGIN
  DUT  : register32x8  
    PORT MAP ( 
			i_GPR_enable => i_GPR_enable,
      i_GPR_write_address   => i_GPR_write_address  ,
      i_GPR_write_enable   => i_GPR_write_enable  ,
      o_GPR_ALU_data_A   => o_GPR_ALU_data_A  ,
      i_GPR_data   => i_GPR_data  ,
      o_GPR_ALU_data_B   => o_GPR_ALU_data_B  ,
      i_GPR_address_A   => i_GPR_address_A  ,
      i_GPR_clk   => i_GPR_clk  ,
      i_GPR_address_B   => i_GPR_address_B   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	-- i_gpr_clk  <= '0'  ;
	--wait for 50 ns ;
-- 50 ns, single loop till start period.
	--for Z in 1 to 9
	--loop
	--    i_gpr_clk  <= '1'  ;
	--   wait for 50 ns ;
	--    i_gpr_clk  <= '0'  ;
	--   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	--end  loop;
	-- i_gpr_clk  <= '1'  ;
	--wait for 50 ns ;
-- dumped values till 1 us
	--wait;
	i_gpr_clk <= '0';
	wait for 50 ns;
	i_gpr_clk <= '1';
	wait for 50 ns;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	i_GPR_enable <= '1';
	wait for 100 ns ;
	 i_gpr_address_a  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00100"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_address_a  <= "00100"  ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	wait for 100 ns ;
	 i_gpr_address_b  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00100"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_address_b  <= "00100"  ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
--  Process
--	Begin
--	 if o_gpr_alu_data_a  /= ("00000000"  ) then 
--		report " test case failed" severity error; end if;
--	wait for 1 us ;
-- dumped values till 1 us
--	wait;
-- End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
--  Process
--	Begin
--	 if o_gpr_alu_data_b  /= ("00000000"  ) then 
--		report " test case failed" severity error; end if;
--	wait for 1 us ;
-- dumped values till 1 us
--	wait;
-- End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_data  <= "00000001"  ;
	 wait for 100 ns;
	 i_gpr_data  <= "00000010"	;
	 wait for 100 ns;
	 i_gpr_data  <= "00000011"  ;
	 wait for 100 ns;
	 i_gpr_data  <= "00000100"  ;
	 wait for 100 ns;
	 i_gpr_data  <= "00000101"  ;
	 wait for 100 ns;
	 i_gpr_data  <= "00000000" ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_write_address  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00100"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00000"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00001"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00010"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00011"  ;
	wait for 100 ns ;
	 i_gpr_write_address  <= "00100"  ;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 i_gpr_write_enable  <= '1'  ;
	wait for 500 ns ;
	 i_gpr_write_enable  <= '0'  ;
	wait for 500 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
