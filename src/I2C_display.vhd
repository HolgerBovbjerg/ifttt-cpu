library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;
use work.display_constants.all;

entity I2C_display is
	generic(
	char_scalar				: integer := 4;
	input_clk				: integer := 50000000;
	trigger_clk				: integer := 100000
	);
	
	port(
	-- Inputs
	i_display_enable			: in std_logic;
	i_display_write_enable	: in std_logic;
	i_display_clock			: in std_logic;
	i_display_data				: in std_logic_vector (7 downto 0);
	i_display_busy				: in std_logic;
	i_display_reset			: in std_logic;
	
	-- Outputs
	o_display_reset		: out std_logic				:= '1';								
	o_display_ready		: out std_logic            := '1';	
	o_display_data			: out std_logic_vector (7 downto 0)	:= x"00"	
	);
end entity;

architecture rtl of I2C_display is
type init_array is array (0 to 27) of std_logic_vector(7 downto 0); -- Initialisation data.
type char_array is array (0 to 155) of std_logic_vector(7 downto 0); -- Stores data that represents the 28 letters (uppercase only so far) in the alphabet + numbers 0-9.
type data_array is array (0 to 32) of std_logic_vector(7 downto 0); -- Stores the input data that is to be printed.
type machine is (ready, receive, init, transmit, reset); 

signal r_init : init_array :=(
	x"34", x"30", x"34", x"30",
	x"24", x"20", x"24", x"20", x"84", x"80", x"04", x"00", x"C4", x"C0", x"04", x"00", x"14", x"10",
	x"04", x"00", x"64", x"60", x"08", x"08", x"8C", x"88", x"0C", x"08"
	);

signal r_chars : char_array :=(
	x"4D", x"49", x"1D", x"19", -- A 0-3
	x"4D", x"49", x"2D", x"29", -- B 4-7
	x"4D", x"49", x"3D", x"39", -- C 8-11
	x"4D", x"49", x"4D", x"49", -- D 12-15
	x"4D", x"49", x"5D", x"59", -- E 16-19
	x"4D", x"49", x"6D", x"69", -- F 20-23
	x"4D", x"49", x"7D", x"79", -- G 24-27
	x"4D", x"49", x"8D", x"89", -- H 28-31
	x"4D", x"49", x"9D", x"99", -- I 32-35
	x"4D", x"49", x"AD", x"A9", -- J 36-39
	x"4D", x"49", x"BD", x"B9", -- K 40-43
	x"4D", x"49", x"CD", x"C9", -- L 44-47
	x"4D", x"49", x"DD", x"D9", -- M 48-51
	x"4D", x"49", x"ED", x"E9", -- N 52-55
	x"4D", x"49", x"FD", x"F9", -- O 56-59
	x"5D", x"59", x"0D", x"09", -- P 60-63
	x"5D", x"59", x"1D", x"19", -- Q 64-67
	x"5D", x"59", x"2D", x"29", -- R 68-71
	x"5D", x"59", x"3D", x"39", -- S 72-75
	x"5D", x"59", x"4D", x"49", -- T 76-79
	x"5D", x"59", x"5D", x"59", -- U 80-83
	x"5D", x"59", x"6D", x"69", -- V 84-87
	x"5D", x"59", x"7D", x"79", -- W 88-91
	x"5D", x"59", x"8D", x"89", -- X 92-95
	x"5D", x"59", x"9D", x"99", -- Y 96-99
	x"5D", x"59", x"AD", x"A9", -- Z 100-103
	x"3D", x"39", x"0D", x"09", -- 0 104-107
	x"3D", x"39", x"1D", x"19", -- 1 108-111
	x"3D", x"39", x"2D", x"29", -- 2 112-115
	x"3D", x"39", x"3D", x"39", -- 3 116-119
	x"3D", x"39", x"4D", x"49", -- 4 120-123
	x"3D", x"39", x"5D", x"59", -- 5 124-127
	x"3D", x"39", x"6D", x"69", -- 6 128-131
	x"3D", x"39", x"7D", x"79", -- 7 132-135
	x"3D", x"39", x"8D", x"89", -- 8 136-139
	x"3D", x"39", x"9D", x"99", -- 9 140-143
	x"CC", x"C8", x"0C", x"08", -- New line (hex 1 to 2), carriage return (hex 3 to 4)
	others => x"00");

constant divider					: integer := (input_clk/trigger_clk);
signal state 						: machine;
signal r_buffer : data_array 	:=(others => x"00");
signal w_reset						: std_logic := '0';
signal start						: std_logic := '0';
signal init_flag					: std_logic := '0';
signal transmit_flag				: std_logic := '0';
signal trans_cnt					: integer := 0;
signal char_ptr					: integer := 0;
signal buffer_ptr					: integer := 0;
signal print_ptr					: integer := 0;
signal init_ptr					: integer := 0;
signal delay_cnt					: integer range 0 to divider;

begin

process(i_display_enable, i_display_clock, i_display_data, o_display_data, o_display_reset, o_display_ready)

	
	

begin
if (rising_edge(i_display_clock) and i_display_enable = '1') then
	if (i_display_reset = '0') then
		char_ptr <= 0;
		buffer_ptr <= 0;
		print_ptr <= 0;
		init_ptr <= 0;
		trans_cnt <= 0;
		init_flag <= '0';
		transmit_flag <= '0';
		r_buffer <= (others => x"00");
		state <= ready;
	else
		case state is
			when reset =>
				case delay_cnt is
					when 0 to (divider/4)-1 =>
						o_display_reset <= '0';
						o_display_ready <= '1';
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when divider/4 to (2*divider/4)-1 =>
						o_display_reset <= '1';
						o_display_ready <= '1';
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when (2*divider/4) to (3*divider/4)-1 =>
						o_display_reset <= '1';
						o_display_ready <= '0';
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when others =>
						o_display_reset <= '1';
						o_display_ready <= '1';
						if (init_flag = '1' and delay_cnt = divider and i_display_busy = '0') then
							state <= init;
							delay_cnt <= 0;
						elsif (transmit_flag = '1' and delay_cnt = divider and i_display_busy = '0') then
							state <= transmit;
							delay_cnt <= 0;
						else
							if (delay_cnt < 500) then
								delay_cnt <= delay_cnt+1;
							end if;
							state <= reset;
						end if;
				end case;
-----------------------------------Ready-----------------------------------------					
			when ready =>
				if (i_display_write_enable = '1') then
					r_buffer(buffer_ptr) <= i_display_data;
					buffer_ptr <= buffer_ptr+1;
					state <= receive;
				else
					state <= ready;
				end if;
----------------------------------Receive----------------------------------------			
			when receive =>
				if (i_display_write_enable = '1' and buffer_ptr < 33) then
					r_buffer(buffer_ptr) <= i_display_data;
					buffer_ptr <= buffer_ptr+1;
				else
					state <= init;
				end if;
---------------------------------Initialise--------------------------------------				
			when init =>
				init_flag <= '1';
				transmit_flag <= '0';		
				if ((init_ptr < 2) and (i_display_busy = '1')) then    -- init ptr 28
					state <= init;
				elsif ((init_ptr < 2) and (i_display_busy = '0')) then  -- init ptr 28
					o_display_data <= r_init(init_ptr);
					init_ptr <= init_ptr+1;
					state <= reset;
				else
					init_ptr <= init_ptr+1;
					state <= transmit;
				end if;
-----------------------------------Transmit--------------------------------------	
			when transmit =>
				init_flag <= '0';
				transmit_flag <= '1';
				if (print_ptr < (buffer_ptr+1) and (i_display_busy = '1')) then
				state <= transmit;
				elsif (print_ptr < (buffer_ptr+1) and (i_display_busy = '0')) then
					case r_buffer(print_ptr) is
						when I =>
							if (start = '0') then
								char_ptr <= 32;
								start <= '1';
								state <= transmit;
							else
								if (trans_cnt = 4) then
									if (print_ptr = buffer_ptr-1) then
										r_buffer <= (others => x"00");
										o_display_data <= x"00";
										trans_cnt <= 0;
										print_ptr <= 0;
										buffer_ptr <= 0;
										char_ptr <= 0;
										start <= '0';
										transmit_flag <= '0';
										state <= ready;
									else
										print_ptr <= print_ptr+1;
										start <= '0';
										trans_cnt <= 0;
										state <= transmit;
									end if;
								else
									o_display_data <= r_chars(char_ptr);
									char_ptr <= char_ptr+1;
									trans_cnt <= trans_cnt+1;
									state <= reset;
								end if;
							end if;
						when others =>
							state <= transmit;
					end case;
				end if;
		end case;
	end if;
end if;
end process;
end architecture rtl;			