LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.ALL;
USE std.textio.all  ; 
ENTITY data_bus_tb  IS 
END data_bus_tb; 
 
ARCHITECTURE behavior OF data_bus_tb IS
	
	COMPONENT data_bus  
	PORT ( 
		o_MEMORY  : out std_logic_vector (7 downto 0) ; 
		i_SELECT  : in std_logic_vector (1 downto 0) ; 
		o_REGISTER  : out std_logic_vector (7 downto 0) ; 
		i_MEMORY  : in std_logic_vector (7 downto 0) ; 
		i_ALU  : in std_logic_vector (7 downto 0) 
		); 
	END COMPONENT ; 
	  
	-- Inputs
	SIGNAL i_SELECT   :  std_logic_vector (1 downto 0) := "00";
	SIGNAL i_MEMORY   :  std_logic_vector (7 downto 0) := "00000000"; 
	SIGNAL i_ALU   :  std_logic_vector (7 downto 0) := "00000000"; 
	  
	-- Outputs 
	SIGNAL	o_MEMORY   :  std_logic_vector (7 downto 0);
	SIGNAL o_REGISTER   :  std_logic_vector (7 downto 0);
	  
BEGIN

	uut  : data_bus  
   PORT MAP ( 
		o_MEMORY   		=>	o_MEMORY,
      i_SELECT   	=> i_SELECT,
      o_REGISTER   		=> o_REGISTER,
      i_MEMORY   		=> i_MEMORY,
      i_ALU   		=> i_ALU   
		); 

	-- Stimulus process
	stimu_process : process
   begin
	
		i_MEMORY  <= "01010101";
		i_ALU  <= "11110000";
		
		for i in 0 to 2 loop
			wait for 10 ns;
			i_SELECT <= std_logic_vector(unsigned(i_SELECT) + 1);
		end loop;
		
		for i in 0 to 2 loop
			wait for 10 ns;
			i_SELECT <= std_logic_vector(unsigned(i_SELECT) - 1);
		end loop;
		
		wait;
   end process;
	
end;