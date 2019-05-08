library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library work;
use work.constants.all;


entity MEMORY_CONTROL is
    Port ( 	-- Memory controller inputs
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
end MEMORY_CONTROL;

architecture Behavioral of MEMORY_CONTROL is
 
	signal r_MEM_state		: std_logic_vector(1 downto 0) := "00";
	signal r_MC_CU_ready		: std_logic := '1';
	
begin

	process (i_MC_clk, i_MC_enable)
	begin
		if (rising_edge(i_MC_clk)) then
			case (r_MEM_state) is 
				when MEM_IDLE => --idle
					if (i_MC_enable = '1') then 
						r_MEM_state <= "01";
					end if;
				when MEM_FETCH => -- fetching data
					case (i_MC_address(15 downto 14)) is
						when RAM_address =>
							if (i_MC_write_enable = '1') then
								o_MC_RAM_write_enable <= '1';
								o_MC_RAM_address <= i_MC_address(13 downto 0);
								o_MC_RAM_data <= i_MC_data;
							elsif (i_MC_write_enable = '0') then
								o_MC_RAM_write_enable <= '0';
								o_MC_RAM_address <= i_MC_address(13 downto 0);
								o_MC_MUX_data <= i_MC_RAM_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							end if;
							r_MEM_state <= "10";
						when GPIO_address =>
							if (i_MC_write_enable = '1') then
								o_MC_GPIO_write_enable <= '1';
								o_MC_GPIO_address <= i_MC_address(3 downto 0);
								o_MC_GPIO_data <= i_MC_data;
							elsif (i_MC_write_enable = '0') then
								o_MC_GPIO_write_enable <= '0';
								o_MC_GPIO_address <= i_MC_address(3 downto 0);
								o_MC_MUX_data <= i_MC_GPIO_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							end if;
							r_MEM_state <= "10";
						when I2C_address =>
							if (i_MC_write_enable = '1') then
								o_MC_I2c_write_enable <= '1';
								o_MC_I2C_address <= i_MC_address(3 downto 0);
								o_MC_I2C_data <= i_MC_data;
							elsif (i_MC_write_enable = '0') then
								o_MC_I2c_write_enable <= '0';
								o_MC_I2C_address <= i_MC_address(3 downto 0);
								o_MC_MUX_data <= i_MC_I2C_data;-- Output on MUX is there until a new one is put there, this can be changed if needed.
							end if;	
							if (i_MC_I2C_busy = '0') then
								r_MEM_state <= "10";
							end if;
						when others =>
							o_MC_MUX_data <= x"00";
					end case;
				when MEM_DATA_READY => -- Data ready
					if (i_MC_enable = '0') then 
						r_MEM_state <= "00";
					end if;
				when others =>
					r_MEM_state <= "00";
			end case;
		end if;
	end process;
	
	o_MC_MEM_state<= r_MEM_state;

end Behavioral;



