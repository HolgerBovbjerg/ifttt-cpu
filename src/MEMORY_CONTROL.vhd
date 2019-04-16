
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity MEMORY_CONTROL is
    Port ( i_MC_clk : in  std_logic;
			  i_MC_address : in  std_logic_vector (15 downto 0);-- From control unit
			  i_MC_data : in std_logic_vector (7 downto 0); -- From MUX (8 bit data)
			  i_MC_enable : in std_logic; -- From control unit
			  i_MC_write_enable : in std_logic; -- determines if it reads or write
			  ------------------RAM (DATA_MEMORY)---------------------------------
			  o_MC_RAM_address : out std_logic_vector (13 downto 0); -- 16 bit output to RAM 
			  i_MC_RAM_data : in std_logic_vector (7 downto 0);
			  o_MC_RAM_data : out std_logic_vector (7 downto 0);
			  o_MC_RAM_write_enable : out std_logic;
			  ------------------GPIO----------------------------------------------
			  o_MC_GPIO_address : out std_logic_vector (3 downto 0); -- 16 bit output to GPIO
			  i_MC_GPIO_data : in std_logic_vector (7 downto 0);
			  o_MC_GPIO_data : out std_logic_vector (7 downto 0);
			  o_MC_GPIO_write_enable : out std_logic;
			  ------------------I2C-----------------------------------------------
			  o_MC_I2C_address : out std_logic_vector (3 downto 0); -- 16 bit output to I2C
			  i_MC_I2C_data : in std_logic_vector (7 downto 0);
			  o_MC_I2C_data : out std_logic_vector (7 downto 0);
			  o_MC_I2c_write_enable : out std_logic;
			  ------------------MUX-----------------------------------------------
			  o_MC_MUX_address : out std_logic_vector (15 downto 0); -- To MUX
			  o_MC_MUX_data : out std_logic_vector (7 downto 0);
			  o_MC_MUX_enable : out std_logic
			  
--			  
			  );
end MEMORY_CONTROL;

architecture Behavioral of MEMORY_CONTROL is
	
	--signal unsigned_i_MC_address : unsigned(15 downto 0);
	signal Ram_address : std_logic_vector(15 downto 14) := "01";
	signal GPIO_address : std_logic_vector(15 downto 14) := "10";
	signal I2C_address : std_logic_vector(15 downto 14) := "11";
	--signal MUX_address : std_logic_vector(15 downto 14) := "00";
	
begin

	process (i_MC_clk)
	begin
			if (rising_edge(i_MC_clk) and i_MC_enable = '1')
			then
					
					------------------DATA_MEMORY---------------------------------------
					if ((i_MC_address(15 downto 14) = RAM_address) and i_MC_write_enable = '1') 
					then
					o_MC_RAM_write_enable <= '1';
					o_MC_RAM_address <= i_MC_address(13 downto 0);
					o_MC_RAM_data <= i_MC_data;
					
					elsif ((i_MC_address(15 downto 14) = RAM_address) and i_MC_write_enable = '0') 
					then
					o_MC_RAM_write_enable <= '0';
					o_MC_RAM_address <= i_MC_address(13 downto 0);
					o_MC_MUX_data <= i_MC_RAM_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
					------------------GPIO----------------------------------------------
					elsif ((i_MC_address(15 downto 14) = GPIO_address) and i_MC_write_enable = '1') 
					then 
					o_MC_GPIO_write_enable <= '1';
					o_MC_GPIO_address <= i_MC_address(3 downto 0);
					o_MC_GPIO_data <= i_MC_data;
				
					elsif ((i_MC_address(15 downto 14) = GPIO_address) and i_MC_write_enable = '0')
					then 
					o_MC_GPIO_write_enable <= '0';
					o_MC_GPIO_address <= i_MC_address(3 downto 0);
					o_MC_MUX_data <= i_MC_GPIO_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
					------------------I2C-----------------------------------------------
					elsif ((i_MC_address(15 downto 14) = I2C_address) and i_MC_write_enable = '1')
					then 
					o_MC_I2c_write_enable <= '1';
					o_MC_I2C_address <= i_MC_address(3 downto 0);
					o_MC_I2C_data <= i_MC_data;
					
					elsif ((i_MC_address(15 downto 14) = I2C_address) and i_MC_write_enable = '0')
					then
					o_MC_I2c_write_enable <= '0';
					o_MC_I2C_address <= i_MC_address(3 downto 0);
					o_MC_MUX_data <= i_MC_I2C_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
					
					end if;
				
			end if;
			
	end process;

end Behavioral;



