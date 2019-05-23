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
type char_array is array (0 to 167) of std_logic_vector(7 downto 0); -- Stores data that represents the 28 letters (uppercase only so far) in the alphabet + numbers 0-9.
type data_array is array (0 to 32) of std_logic_vector(7 downto 0); -- Stores the input data that is to be printed.
type machine is (ready, receive, init, CharSelect, transmit, reset); 

signal r_init : init_array :=(
	x"34", x"30", x"34", x"30",
	x"24", x"20", x"24", x"20", x"84", x"80", x"04", x"00", x"C4", x"C0", x"04", x"00", x"14", x"10",
	x"04", x"00", x"64", x"60", x"08", x"08", x"8C", x"88", x"0C", x"08",
	others => x"00");

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
	x"CC", x"C8", x"0C", x"08", -- New line 		144-147		(hex 1 to 2), carriage return (hex 3 to 4)
	x"2D", x"29", x"0D", x"09", -- Space 			148-151
	x"3D", x"39", x"AD", x"A9", -- Colon			152-155
	x"2D", x"29", x"1D", x"19", -- Exclamation 	156-159
	x"DD", x"D9", x"FD", x"F9", -- Degree			160-163
	x"3D", x"39", x"FD", x"F9", -- Unknown			164-167
	others => x"00");

constant divider					: integer := (input_clk/trigger_clk);
signal state 						: machine;
signal r_buffer 					: data_array := (others => x"00");
signal w_reset						: std_logic := '0';
signal start						: std_logic := '0';
signal init_flag					: std_logic := '0';
signal transmit_flag				: std_logic := '0';
signal trans_cnt					: integer := 0;
signal char_ptr					: integer := 0;
signal buffer_ptr					: integer := 0;
signal print_ptr					: integer := 0;
signal init_ptr					: integer := 0;
signal read_cnt					: integer := 0;
signal delay_cnt					: integer range 0 to divider;
signal begin_receive				: std_logic := '0';
signal begin_init					: std_logic := '0';

begin

--process(i_display_enable, i_display_clock, i_display_data, o_display_data, o_display_reset, o_display_ready, o_transmit_flag, o_init_flag)	
process(all)
begin

if (rising_edge(i_display_clock) and i_display_enable = '1') then
	if (i_display_reset = '1') then
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
					when 0 to (divider/4)-1 => -- When counter is 0 to 124
						o_display_reset <= '0'; -- Set reset output low
						o_display_ready <= '1'; -- Ready output stays high
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when divider/4 to (2*divider/4)-1 => -- When counter is 125 to 249
						o_display_reset <= '1'; -- Set reset output high again
						o_display_ready <= '1'; -- Ready output stays high
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when (2*divider/4) to (3*divider/4)-1 => -- When counter is 250 to 374
						o_display_reset <= '1'; -- Reset output stays high
						o_display_ready <= '0'; -- Set ready output low
						delay_cnt <= delay_cnt+1;
						state <= reset;
					when others => -- When counter is 375 to 500
						o_display_reset <= '1'; -- Reset output stays high
						o_display_ready <= '1'; -- Set ready output high again
						if (init_flag = '1' and delay_cnt = divider and i_display_busy = '0') then
						-- If init flag is high and delay counter has reached 500 and the I2C handler isn't busy
							state <= init;
							delay_cnt <= 0;
						elsif (transmit_flag = '1' and delay_cnt = divider and i_display_busy = '0') then
						-- If transmit flag is high and delay counter has reached 500 and the handler isn't busy
							if (start = '1') then
							-- If the driver hasn't sent all 4 bytes of a character
								state <= transmit; -- Go to "transmit" state
							else
							-- If the driver is about to start sending the 4 bytes of the next character
								state <= CharSelect; 
							end if;
							delay_cnt <= 0;
						else 
						-- Else if delay counter is less than 500, increment counter
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
					read_cnt <= read_cnt+1;
					--begin_receive <= '1';
					state <= receive;
				else
					state <= ready;
				end if;
----------------------------------Receive----------------------------------------			
			when receive =>
				if (i_display_write_enable = '1' and buffer_ptr < 34 and begin_init = '0' and read_cnt = 0) then
				-- if write_enable is high, buffer isn’t full and driver hasn’t signaled to start sending 
				-- initialisation data, load input data into input buffer
					r_buffer(buffer_ptr) <= i_display_data;
					read_cnt <= read_cnt+1;
					buffer_ptr <= buffer_ptr+1;
				elsif (begin_init = '1' or buffer_ptr = 34) then 
				-- if buffer is full or driver has signaled to start sending initialisation data, go to
				-- "init" state and decrement buffer pointer
					state <= init;
					buffer_ptr <= buffer_ptr-1;
				else
				-- If write_enable is low but still receiving data, remain in "receive" state
					if (read_cnt = 2) then
						read_cnt <= 0;
					else
						read_cnt <= read_cnt+1;
					end if;
					state <= receive;
				end if;
---------------------------------Initialise--------------------------------------				
			when init =>
				init_flag <= '1'; -- Set init_flag high so the driver returns here after reset
				transmit_flag <= '0'; -- Set transmit_flag low
				if ((init_ptr < 28) and (i_display_busy = '1')) then 
				-- If handler is busy, do nothing
					state <= init;
				elsif ((init_ptr < 28) and (i_display_busy = '0')) then 
				-- If handler is ready, send data and increment init pointer
					o_display_data <= r_init(init_ptr);
					init_ptr <= init_ptr+1;
					state <= reset;
				else
				-- If all initialisation data is sent go to "CharSelect" state
					init_ptr <= init_ptr+1;
					state <= CharSelect;
				end if;
----------------------------------CharSelect-------------------------------------
			when CharSelect =>
				start <= '1'; -- Set start flag high for use in "transmit" state
				state <= transmit; -- Set state to "transmit"
				case r_buffer(print_ptr) is
					when A => -- If buffer entry matches the A constant
						char_ptr <= 0; -- set char pointer to 0
					when B =>
						char_ptr <= 4;
					when C =>
						char_ptr <= 8;
					when D =>
						char_ptr <= 12;
					when E =>
						char_ptr <= 16;
					when F =>
						char_ptr <= 20;
					when G =>
						char_ptr <= 24;
					when H =>
						char_ptr <= 28;
					when I =>
						char_ptr <= 32;
					when J =>
						char_ptr <= 36;
					when K =>
						char_ptr <= 40;
					when L =>
						char_ptr <= 44;
					when M =>
						char_ptr <= 48;
					when N =>
						char_ptr <= 52;
					when O =>
						char_ptr <= 56;
					when P =>
						char_ptr <= 60;
					when Q =>
						char_ptr <= 64;
					when R =>
						char_ptr <= 68;
					when S =>
						char_ptr <= 72;
					when T =>
						char_ptr <= 76;
					when U =>
						char_ptr <= 80;
					when V =>
						char_ptr <= 84;
					when W =>
						char_ptr <= 88;
					when X =>
						char_ptr <= 92;
					when Y =>
						char_ptr <= 96;
					when Z =>
						char_ptr <= 100;
					when Zero =>
						char_ptr <= 104;
					when One =>
						char_ptr <= 108;
					when Two =>
						char_ptr <= 112;
					when Three =>
						char_ptr <= 116;
					when Four =>
						char_ptr <= 120;
					when Five =>
						char_ptr <= 124;
					when Six =>
						char_ptr <= 128;
					when Seven =>
						char_ptr <= 132;
					when Eight =>
						char_ptr <= 136;
					when Nine =>
						char_ptr <= 140;
					when Newline =>
						char_ptr <= 144;
					when Space =>
						char_ptr <= 148;
					when Colon =>
						char_ptr <= 152;
					when Exclamation =>
						char_ptr <= 156;
					when Degree =>
						char_ptr <= 160;
					when others =>
						char_ptr <= 164;
				end case;
-----------------------------------Transmit--------------------------------------	
			when transmit =>
				init_flag <= '0';
				transmit_flag <= '1';
				if (print_ptr < (buffer_ptr) and (i_display_busy = '1')) then
				-- If handler is busy, do nothing.
				state <= transmit;
				elsif (print_ptr < (buffer_ptr) and (i_display_busy = '0')) then
				-- If handler isn’t busy and printer pointer hasn’t reached EoT byte
					if (trans_cnt = 4) then
					-- If all bytes of a character have been sent
						if (print_ptr = buffer_ptr-1) then
						-- If it’s that last character, reset everything and go to "ready"
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
						-- If there are still characters to send, go to next character
							print_ptr <= print_ptr+1;
							start <= '0';
							trans_cnt <= 0;
							state <= CharSelect;
						end if;
					else
					-- If not all bytes of a character have been sent, send next byte
						o_display_data <= r_chars(char_ptr);
						char_ptr <= char_ptr+1;
						trans_cnt <= trans_cnt+1;
						state <= reset;
					end if;
				end if;
		end case;
	end if;
end if;
end process;

process (all)
begin
	if (falling_edge(i_display_clock) and buffer_ptr>0) then -- On a falling edge of the clock
		if (r_buffer(buffer_ptr-1) = x"03" and begin_init = '0') then
		-- If the last entry is an End of Text byte and the driver hasn’t started sending init data
			begin_init <= '1';
		elsif (state = ready) then
		-- If the driver has been reset, set begin_init low
			begin_init <= '0';
		end if;
	end if;
end process;
end architecture rtl;