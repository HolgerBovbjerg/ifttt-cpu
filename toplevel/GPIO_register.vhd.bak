library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GPIO_register is
	Port (
		-- Clock and enable
		i_GPIO_clk					: in STD_LOGIC;
		
		--Address inputs
		i_GPIO_address 			: in STD_LOGIC_VECTOR (2 downto 0);
		
		--Data input
		i_GPIO_data					: in STD_LOGIC_VECTOR (7 downto 0);
		
		-- Data Output
		o_GPIO_data 				: out STD_LOGIC_VECTOR (7 downto 0);
		
		-- GPIO I/O
		io_GPIO_PIN0 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN1 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN2 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN3 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN4 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN5 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN6 				: inout STD_LOGIC_VECTOR (7 downto 0);
		io_GPIO_PIN7 				: inout STD_LOGIC_VECTOR (7 downto 0);
		
		-- Misc.
		i_GPIO_write_enable	: in STD_LOGIC;
		i_GPIO_config_enable	: in STD_LOGIC
	); 
end GPIO_register;
		
architecture behaviour of GPIO_register is

-- IO registers
type MEM is array (7 downto 0) of std_logic_vector (7 downto 0); 
	signal r_IO_REG_IN : MEM :=(
	others => x"00"
	);
	
	signal r_IO_REG_OUT : MEM :=(
	others => x"00"
	);

--GPIO pin config register
signal r_CONFIG_REGISTER : STD_LOGIC_VECTOR(7 downto 0) := x"00";

COMPONENT bidir_bus 
    PORT(
        io_bidir_port   : INOUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        i_OUT_enable 	: IN STD_LOGIC;
		  i_CLK 				: IN STD_LOGIC;
        i_DATA_in     	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        o_DATA_out    	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		  );
END COMPONENT;

begin
	
	-- Bidirectional bus instantiation
	INST_bidir_bus1 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN0,
        i_OUT_enable 	=> r_CONFIG_REGISTER(0),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(0),
        o_DATA_out    	=> r_IO_REG_IN(0)
	);
	
	INST_bidir_bus2 : bidir_bus 
   Port map(
        io_bidir_port   	=> io_GPIO_PIN1,
        i_OUT_enable 	=> r_CONFIG_REGISTER(1),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(1),
        o_DATA_out    	=> r_IO_REG_IN(1)
	);
	
	INST_bidir_bus3 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN2,
        i_OUT_enable 	=> r_CONFIG_REGISTER(2),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(2),
        o_DATA_out    	=> r_IO_REG_IN(2)
	);
	
	INST_bidir_bus4 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN3,
        i_OUT_enable 	=> r_CONFIG_REGISTER(3),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(3),
        o_DATA_out    	=> r_IO_REG_IN(3)
	);
	
	INST_bidir_bus5 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN4,
        i_OUT_enable 	=> r_CONFIG_REGISTER(4),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(4),
        o_DATA_out    	=> r_IO_REG_IN(4)
	);
	
	INST_bidir_bus6 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN5,
        i_OUT_enable 	=> r_CONFIG_REGISTER(5),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(5),
        o_DATA_out    	=> r_IO_REG_IN(5)
	);
	
	INST_bidir_bus7 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN6,
        i_OUT_enable 	=> r_CONFIG_REGISTER(6),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(6),
        o_DATA_out    	=> r_IO_REG_IN(6)
	);
	
	INST_bidir_bus8 : bidir_bus 
   Port map(
        io_bidir_port   => io_GPIO_PIN7,
        i_OUT_enable 	=> r_CONFIG_REGISTER(7),
		  i_CLK 				=> i_GPIO_clk,
        i_DATA_in     	=> r_IO_REG_OUT(7),
        o_DATA_out    	=> r_IO_REG_IN(7)
	);
	
	process(i_GPIO_clk)
	begin	
		if(rising_edge(i_GPIO_clk)) then -- At rising edge of clock	
			if(i_GPIO_write_enable = '1') then -- if memory write 
				if (i_GPIO_config_enable = '1') then -- If configuration bit is set
					r_CONFIG_REGISTER <= i_GPIO_data; -- configure pins (0 for input, 1 for output)
				else
					if (r_CONFIG_REGISTER(to_integer(unsigned(i_GPIO_address))) = '1') then -- If PIN at address configured as output
						r_IO_REG_OUT(to_integer(unsigned(i_GPIO_address))) <= i_GPIO_data; -- Write value to IO pin register at address
					end if;
				end if;
			elsif (i_GPIO_write_enable = '0') then -- If memory read
				if (r_CONFIG_REGISTER(to_integer(unsigned(i_GPIO_address))) = '0') then -- If PIN at address configured as input
					o_GPIO_data <= r_IO_REG_IN(to_integer(unsigned(i_GPIO_address)));-- Read value from IO pin register at address
				end if;	
			else -- else do nothing
				r_CONFIG_REGISTER <= r_CONFIG_REGISTER; 
			end if;
		end if;
	end process;
	
end behaviour;