library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_input_reg is

port (
		-- inputs
		i_I2C_clk					: in std_logic;
		i_I2C_data_tx				: in std_logic_vector (7 downto 0);
		i_I2C_data_rx				: in std_logic_vector (7 downto 0);
		i_I2C_write_regaddr_tx	: in std_logic_vector (2 downto 0);
		i_I2C_write_enable		: in std_logic;
		
		-- outputs
		o_I2C_slv_addr				: out std_logic_vector (7 downto 0);
		o_I2C_slv_data_tx			: out std_logic_vector (7 downto 0);
		o_I2C_slv_data_rx			: out std_logic_vector (7 downto 0);
		o_I2C_setup					: out std_logic_vector (7 downto 0);
		o_I2C_slave_reg			: out std_logic_vector (7 downto 0)
		);

end entity;

architecture behavioural of I2C_input_reg is

type reg_array is array (0 to 4) of std_logic_vector (7 downto 0);

signal r_register					: reg_array := (others => x"00");
constant c_I2C_slv_addr			: std_logic_vector (2 downto 0) := "000";
constant c_I2C_slv_data_tx		: std_logic_vector (2 downto 0) := "001";
constant c_I2C_slv_data_rx		: std_logic_vector (2 downto 0) := "010";
constant c_I2C_setup				: std_logic_vector (2 downto 0) := "011";
constant c_I2C_slave_reg		: std_logic_vector (2 downto 0) := "100";

begin

process (all)

begin
	if (rising_edge(i_I2C_clk)) then
		if (i_I2C_write_enable = '1') then
			r_register(to_integer(unsigned(i_I2C_write_regaddr_tx))) <= i_I2C_data_tx; -- Store addr, data, setup
		else
			r_register(to_integer(unsigned(c_I2C_slv_data_rx))) <= i_I2C_data_rx;		-- Store slave data
		end if;
	end if;
	
end process;

o_I2C_slv_addr		<= r_register(to_integer(unsigned(c_I2C_slv_addr)));					-- Output slave address
o_I2C_slv_data_tx	<= r_register(to_integer(unsigned(c_I2C_slv_data_tx)));				-- Output data to slave
o_I2C_slv_data_rx <= r_register(to_integer(unsigned(c_I2C_slv_data_rx)));				-- Output data from slave
o_I2C_setup 		<= r_register(to_integer(unsigned(c_I2C_setup)));						-- Output setup to I2C handler
o_I2C_slave_reg	<= r_register(to_integer(unsigned(c_I2C_slave_reg)));					-- Output slave register address

end architecture behavioural;