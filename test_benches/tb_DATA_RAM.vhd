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
  COMPONENT DATA_RAM  
    PORT ( 
      o_RAM_MC_data  : out std_logic_vector (7 downto 0) ; 
      i_RAM_write_enable  : in STD_LOGIC ; 
      i_RAM_clk  : in STD_LOGIC ; 
      i_RAM_data  : in std_logic_vector (7 downto 0) ; 
      i_RAM_address  : in std_logic_vector (13 downto 0) ); 
  END COMPONENT ; 
	
	-- Inputs 
	SIGNAL i_RAM_write_enable : STD_LOGIC := '0'; 
	SIGNAL i_RAM_clk   :  STD_LOGIC := '0'; 
	SIGNAL i_RAM_data   :  std_logic_vector (7 downto 0) := x"00"; 
	SIGNAL i_RAM_address   :  std_logic_vector (13 downto 0) := "00000000000000";
	
	-- Outputs
	SIGNAL o_RAM_MC_data   :  std_logic_vector (7 downto 0);

   -- Clock period definitions
   constant c_clk_period : time := 10 ns;
  
BEGIN
  DUT  : DATA_RAM  
    PORT MAP ( 
      o_RAM_MC_data   => o_RAM_MC_data,
      i_RAM_write_enable   => i_RAM_write_enable,
      i_RAM_clk   => i_RAM_clk,
      i_RAM_data   => i_RAM_data,
      i_RAM_address   => i_RAM_address
		); 



	-- Clock process definitions
   clk_process :process
   begin
		i_RAM_clk <= '0';
		wait for c_clk_period/2;
		i_RAM_clk <= '1';
		wait for c_clk_period/2;
   end process;

	-- Stimulus process
   stim_proc: process
   begin
		wait for c_clk_period*10;
		i_RAM_write_enable <= '1';
		i_RAM_data  <= x"41";
		i_RAM_address  <= "00000000000000";
		wait for c_clk_period;
		i_RAM_data  <= x"11";
		i_RAM_address  <= "00000100100010";
		wait for c_clk_period;
		i_RAM_data  <= x"01";
		i_RAM_address  <= "00101001000000";
		wait for c_clk_period;
		i_RAM_data  <= x"f0";
		i_RAM_address  <= "11111111111111";
		wait for c_clk_period;
		i_RAM_write_enable <= '0';
		i_RAM_data  <= x"ff";
		i_RAM_address  <= "00000000000000";
		wait for c_clk_period;
		i_RAM_address  <= "00000100100010";
		wait for c_clk_period;
		i_RAM_address  <= "00101001000000";
		wait for c_clk_period;
		i_RAM_address  <= "11111111111111";
		wait for c_clk_period;

		wait;
		
   end process;
END;
