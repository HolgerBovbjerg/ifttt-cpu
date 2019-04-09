LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_multiplex  IS 
END ; 
 
ARCHITECTURE tb_multiplex_arch OF tb_multiplex IS
  SIGNAL o_B0   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_Select   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL o_B1   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_A0   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL i_A1   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT multiplex  
    PORT ( 
      o_B0  : out std_logic_vector (7 downto 0) ; 
      i_Select  : in std_logic_vector (1 downto 0) ; 
      o_B1  : out std_logic_vector (7 downto 0) ; 
      i_A0  : in std_logic_vector (7 downto 0) ; 
      i_A1  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : multiplex  
    PORT MAP ( 
      o_B0   => o_B0  ,
      i_Select   => i_Select  ,
      o_B1   => o_B1  ,
      i_A0   => i_A0  ,
      i_A1   => i_A1   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 20 ns, Period = 50 ns
  Process
	Begin
	 i_Select  <= "00"  ;
	wait for 10 ns ;
-- dumped values till 1 ns
	i_Select <= "01";
	wait for 10 ns ;
	i_Select <= "10";
	wait for 10 ns ;
	i_Select <= "11";
	wait for 10 ns ;
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 10 ns, Period = 0 ps
  Process
	Begin
	 i_A0  <= "00000000"  ;
	wait for 10 ns ;
-- dumped values till 1 ns
i_A0  <= "00001111"  ;
	wait for 10 ns ;
	i_A0  <= "11110000"  ;
	wait for 10 ns ;
	i_A0  <= "11111111"  ;
	wait for 10 ns ;
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 10 ns, Period = 0 ps
  Process
	Begin
	 i_A1  <= "11111111"  ;
	wait for 10 ns ;
-- dumped values till 1 ns
i_A1  <= "11110000"  ;
	wait for 10 ns ;
	i_A1  <= "00001111"  ;
	wait for 10 ns ;
	i_A1  <= "00000000"  ;
	wait for 10 ns ;
	wait;
 End Process;
END;
