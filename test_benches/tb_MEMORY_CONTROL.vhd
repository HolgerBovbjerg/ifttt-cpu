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
  COMPONENT MEMORY_CONTROL  
  PORT ( 	-- Memory controller inputs
				i_MC_clk : in  std_logic;
				i_MC_address : in  std_logic_vector (15 downto 0);-- From control unit
				i_MC_data : in std_logic_vector (7 downto 0); -- From MUX (8 bit data)
				i_MC_enable : in std_logic; -- From control unit
				i_MC_write_enable : in std_logic; -- determines if it reads or write
				-- Memory controller outputs
				o_MC_MUX_data : out std_logic_vector (7 downto 0);
				o_MC_MEM_state : out std_logic_vector(1 downto 0);
				
				-- Peripheral device I/O
				------------------RAM (DATA_MEMORY)---------------------------------
				o_MC_RAM_address : out std_logic_vector (13 downto 0); -- 16 bit output to RAM 
				i_MC_RAM_data : in std_logic_vector (7 downto 0);
				o_MC_RAM_data : out std_logic_vector (7 downto 0);
				o_MC_RAM_write_enable : out std_logic;
				------------------Display driver------------------------------------
				o_MC_DISPLAY_data : out std_logic_vector (7 downto 0);
				o_MC_DISPLAY_write_enable : out std_logic;
				------------------GPIO----------------------------------------------
				o_MC_GPIO_address : out std_logic_vector (3 downto 0); -- 16 bit output to GPIO
				i_MC_GPIO_data : in std_logic_vector (7 downto 0);
				o_MC_GPIO_data : out std_logic_vector (7 downto 0);
				o_MC_GPIO_write_enable : out std_logic;
				------------------I2C-----------------------------------------------
				o_MC_I2C_address : out std_logic_vector (3 downto 0); -- 16 bit output to I2C
				i_MC_I2C_data : in std_logic_vector (7 downto 0);
				i_MC_I2C_busy	: in std_logic;
				o_MC_I2C_data : out std_logic_vector (7 downto 0);
				o_MC_I2c_write_enable : out std_logic
		); 
  END COMPONENT;
  
	-- Inputs
	SIGNAL i_MC_write_enable   :  STD_LOGIC := '0'; 
	SIGNAL i_MC_data   :  std_logic_vector (7 downto 0) := x"00"; 
	SIGNAL i_MC_enable   :  STD_LOGIC := '0'; 
	SIGNAL i_MC_clk   :  STD_LOGIC := '0'; 
	SIGNAL i_MC_address   :  std_logic_vector (15 downto 0) := x"0000"; 
	SIGNAL i_MC_I2C_data   :  std_logic_vector (7 downto 0) := x"00";
	SIGNAL i_MC_I2C_busy	: std_logic := '0';	
	SIGNAL i_MC_RAM_data   :  std_logic_vector (7 downto 0) := x"00"; 
	SIGNAL i_MC_GPIO_data   :  std_logic_vector (7 downto 0) := x"00"; 
	
	SIGNAL o_MC_MEM_state : std_logic_vector(1 downto 0);
	SIGNAL o_MC_MUX_data   :  std_logic_vector (7 downto 0); 
	
	SIGNAL o_MC_GPIO_write_enable   :  STD_LOGIC ;   
	SIGNAL o_MC_GPIO_address   :  std_logic_vector (3 downto 0); 
	SIGNAL o_MC_GPIO_data   :  std_logic_vector (7 downto 0);
	
	SIGNAL o_MC_RAM_write_enable   :  STD_LOGIC  ; 
	SIGNAL o_MC_RAM_data   :  std_logic_vector (7 downto 0);
	SIGNAL o_MC_RAM_address   :  std_logic_vector (13 downto 0); 
	
	SIGNAL o_MC_I2c_write_enable   :  STD_LOGIC ; 
	SIGNAL o_MC_I2C_data   :  std_logic_vector (7 downto 0); 
	SIGNAL o_MC_I2C_address : std_logic_vector (3 downto 0);
	 
	SIGNAL o_MC_DISPLAY_data : std_logic_vector (7 downto 0);
	SIGNAL o_MC_DISPLAY_write_enable : std_logic;
	
	
  
  -- Clock period definitions
   constant c_clk_period : time := 10 ns;
  
BEGIN
  DUT  : MEMORY_CONTROL  
    PORT MAP ( 
			i_MC_write_enable   => i_MC_write_enable,
			i_MC_data   => i_MC_data,
			o_MC_GPIO_address   => o_MC_GPIO_address,
			o_MC_RAM_address   => o_MC_RAM_address,
			o_MC_I2c_write_enable   => o_MC_I2c_write_enable,
			o_MC_I2C_data   => o_MC_I2C_data,
			o_MC_GPIO_write_enable   => o_MC_GPIO_write_enable,
			o_MC_GPIO_data   => o_MC_GPIO_data,
			o_MC_MUX_data   => o_MC_MUX_data,
			o_MC_I2C_address   => o_MC_I2C_address,
			i_MC_RAM_data   => i_MC_RAM_data,
			i_MC_clk   => i_MC_clk,
			i_MC_address   => i_MC_address,
			o_MC_RAM_write_enable   => o_MC_RAM_write_enable,
			i_MC_I2C_data   => i_MC_I2C_data,
			i_MC_enable   => i_MC_enable,
			o_MC_RAM_data   => o_MC_RAM_data,
			i_MC_GPIO_data   => i_MC_GPIO_data,
			o_MC_DISPLAY_data  => o_MC_DISPLAY_data,
			o_MC_DISPLAY_write_enable => o_MC_DISPLAY_write_enable,
			o_MC_MEM_state => o_MC_MEM_state,
			i_MC_I2C_busy => i_MC_I2C_busy
		); 


	-- Clock process definitions
   i_MC_clk_process :process
   begin
		i_MC_clk <= '0';
		wait for c_clk_period/2;
		i_MC_clk <= '1';
		wait for c_clk_period/2;
   end process;


	-- Stimulus process
	stim_proc: process
	Begin
	i_MC_enable  <= '0';
   wait for 100 ns;
	i_MC_enable  <= '1';
	i_MC_address  <= "0000000011001010";
	i_MC_write_enable  <= '0';
	i_MC_data <= x"90";
	i_MC_ram_data  <= "11111111";
	i_MC_gpio_data  <= "11110000";
	i_MC_i2c_data  <= "00001111";
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	wait for c_clk_period;
	i_MC_enable  <= '1';
	i_MC_write_enable  <= '1';
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	i_MC_write_enable  <= '0';
   wait for c_clk_period*10;
	i_MC_enable  <= '1';
	i_MC_address  <= "0100000000010101";
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	wait for c_clk_period;
	i_MC_enable  <= '1';
	i_MC_write_enable  <= '1';
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	i_MC_write_enable  <= '0';
   wait for 100 ns;
	i_MC_enable  <= '1';
	i_MC_address  <= "1000000000000011";
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	wait for c_clk_period;
	i_MC_enable  <= '1';
	i_MC_write_enable  <= '1';
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	i_MC_write_enable  <= '0';
   wait for 100 ns;
	i_MC_enable  <= '1';
	i_MC_address  <= "1100000000001100";
	wait for c_clk_period*10;
	i_MC_enable  <= '0';
	wait for c_clk_period;
	i_MC_enable  <= '1';
	i_MC_write_enable  <= '1';
	wait for c_clk_period*10;
	wait;
	end Process;
 
 
END;
