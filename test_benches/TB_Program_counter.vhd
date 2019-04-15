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
  COMPONENT Program_counter  
    PORT ( 
			i_PC_clk : in STD_LOGIC;
			i_PC_enable : in STD_LOGIC;
			i_PC_write_enable : in STD_LOGIC;
			i_PC_address : in STD_LOGIC_VECTOR (9 DOWNTO 0);
			i_PC_reset : in STD_LOGIC;
			o_PC_PM_address : out STD_LOGIC_VECTOR (9 DOWNTO 0)
			);
  END COMPONENT ; 
	
	
	-- Input
  	SIGNAL i_PC_address   		:  STD_LOGIC_VECTOR (9 downto 0) := (others => '0'); 
	SIGNAL i_PC_clk   			:  STD_LOGIC := '0';
	SIGNAL i_PC_enable   		:  STD_LOGIC := '0'; 
	SIGNAL i_PC_reset   			:  STD_LOGIC := '0'; 
	SIGNAL i_PC_write_enable	:  STD_LOGIC := '0';
	
	-- Output
	SIGNAL o_PC_PM_address   	:  STD_LOGIC_VECTOR (9 downto 0); 
	
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
  
BEGIN
		DUT  : Program_counter  PORT MAP ( 
			i_PC_address   		=> i_PC_address,
			i_PC_clk   				=> i_PC_clk,
			i_PC_reset   			=> i_PC_reset,
			i_PC_enable 			=> i_PC_enable,
			i_PC_write_enable   	=> i_PC_write_enable,
			o_PC_PM_address   	=> o_PC_PM_address
		); 

	-- Clock process definitions
   clk_process :process
   begin
		i_PC_clk <= '0';
		wait for c_clk_period/2;
		i_PC_clk <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stimu_process :process
   begin
		-- Reset state
		i_PC_reset <= '1';
		wait for c_clk_period*10;
		i_PC_reset <= '0';
		i_PC_enable <= '1';
		i_PC_address <= "0110011001";
		wait for c_clk_period*10;
		i_PC_write_enable <= '1';
		wait for c_clk_period*10;
		i_PC_reset <= '1';
		wait;
   end process;
END;
