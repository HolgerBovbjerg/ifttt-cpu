library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity MEMORY_CONTROL is
    Port ( 	-- Memory controller inputs
				i_MC_clk : in  std_logic;
				i_MC_address : in  std_logic_vector (15 downto 0);-- From control unit
				i_MC_data : in std_logic_vector (7 downto 0); -- From MUX (8 bit data)
				i_MC_enable : in std_logic; -- From control unit
				i_MC_write_enable : in std_logic; -- determines if it reads or write
				-- Memory controller outputs
				o_MC_MUX_data : out std_logic_vector (7 downto 0);
				o_MC_CU_ready : out std_logic;
				
				-- Peripheral device I/O
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
				o_MC_I2c_write_enable : out std_logic
			  );
end MEMORY_CONTROL;

architecture Behavioral of MEMORY_CONTROL is
	
	constant Ram_address 	: std_logic_vector(1 downto 0) := "01";
	constant GPIO_address 	: std_logic_vector(1 downto 0) := "10";
	constant I2C_address 	: std_logic_vector(1 downto 0) := "11";
 
	signal r_MEM_state		: std_logic_vector(1 downto 0) := "00";
	signal r_MC_CU_ready		: std_logic := '1';
	
begin

	process (i_MC_clk, i_MC_enable)
	begin
		if (rising_edge(i_MC_clk) and i_MC_enable = '1') then
			case r_MEM_state is 
				when "00" => -- idle
					r_MC_CU_ready <= '1';
					if (i_MC_write_enable = '1') then
						r_MEM_state <= "01";
					elsif (i_MC_write_enable = '0') then
						r_MEM_state <= "10";
					else 
						r_MEM_state <= "00";
					end if;
				when "01" => -- writing 
					r_MC_CU_ready <= '0';
					case (i_MC_address(15 downto 14)) is
						when RAM_address =>
							o_MC_RAM_write_enable <= '1';
							o_MC_RAM_address <= i_MC_address(13 downto 0);
							o_MC_RAM_data <= i_MC_data;
							r_MEM_state <= "00";
						when GPIO_address =>
							o_MC_GPIO_write_enable <= '1';
							o_MC_GPIO_address <= i_MC_address(3 downto 0);
							o_MC_GPIO_data <= i_MC_data;
							r_MEM_state <= "00";
						when I2C_address =>
							o_MC_I2c_write_enable <= '1';
							o_MC_I2C_address <= i_MC_address(3 downto 0);
							o_MC_I2C_data <= i_MC_data;
							r_MEM_state <= "00";
						when others =>
							r_MEM_state <= "00";
					end case;
				
				when "10" => -- reading
					r_MC_CU_ready <= '0';
					
					case (i_MC_address(15 downto 14)) is
						when RAM_address =>
							o_MC_RAM_write_enable <= '0';
							o_MC_RAM_address <= i_MC_address(13 downto 0);
							o_MC_MUX_data <= i_MC_RAM_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							r_MEM_state <= "00";
						when GPIO_address =>
							o_MC_GPIO_write_enable <= '0';
							o_MC_GPIO_address <= i_MC_address(3 downto 0);
							o_MC_MUX_data <= i_MC_GPIO_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							r_MEM_state <= "00";
						when I2C_address =>
							o_MC_I2c_write_enable <= '0';
							o_MC_I2C_address <= i_MC_address(3 downto 0);
							o_MC_MUX_data <= i_MC_I2C_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							r_MEM_state <= "00";
						when others =>
							r_MEM_state <= "00";
					end case;
				when others =>
					r_MEM_state <= "00";
			end case;
		end if;
	end process;
	
	o_MC_CU_ready <= r_MC_CU_ready;

end Behavioral;



