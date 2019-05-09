library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;


entity I2C_handler2 is
	generic(
		input_clk			: integer := 50000000;						-- Main clock speed for Altera DE0 is 50 MHz
		bus_clk				: integer := 400000							-- SCL clock set to 400 kbps
	);
	port(
		--inputs
		i_I2C_clk			: in std_logic;								-- Main clock (50 MHz)
		i_I2C_sda_txrx		: in std_logic;								-- Input SDA port from tri-state IO port
		i_I2C_scl_txrx		: in std_logic;								-- Input SCL port from tri-state IO port
		i_I2C_ready			: in std_logic;								-- Ready active 'low' pulse applied after reset pulse
		i_I2C_reset			: in std_logic;								-- Reset actice 'low' pulse is applied before Ready pulse
		i_I2C_addr			: in std_logic_vector (6 downto 0);		-- Address + read/write bit 
		i_I2C_data_tx		: in std_logic_vector (7 downto 0);		-- Data input
		i_I2C_reg_tx		: in std_logic_vector (7 downto 0);		-- Slave write register usually x"00"
		i_I2C_rw				: in std_logic;								-- R/W select ('1' = R, '0' = W) 

		--outputs
		o_I2C_busy			: out std_logic;								-- Busy flag. Set is '1'. Clear is '0'
		o_I2C_scl_enable	: out std_logic;								-- SCL output enable active 'high'
		o_I2C_ack_error	: out std_logic;								-- Error indication 'high' if error during transaction
		o_I2C_data_rx		: out std_logic_vector (7 downto 0);	-- Recieved data output
		o_I2C_scl_txrx		: out std_logic;								-- SCL output port to tri-state port
		o_I2C_sda_txrx		: out std_logic								-- SDA output port to tri-state port
		);
end entity;

architecture rtl of I2C_handler2 is
constant divider				: integer :=(input_clk/bus_clk)/4;			-- number of SCL clock cycles counted in 1/4 cycles
type machine is (ready, start, exe_cmd, slv_ack1, slv_ack2, slv_ack3, NAK, error, stop);

signal state					: machine;											-- state machine
signal r_data_txrx			: std_logic_vector (7 downto 0); 			-- Vector for storing slave address, register or data during transmit
signal r_data_rx				: std_logic_vector (7 downto 0); 			-- Data vector to read from the I2C device
signal r_data_bit_cnt		: integer range 0 to 7 := 7;					-- Count the data bits transmitted or received
signal r_ack_cnt				: std_logic_vector (1 downto 0):= "00";	-- Count the number of acknowledge
signal r_data_clk				: std_logic;										-- Data clock for state machine
signal r_data_clk_prev		: std_logic;										-- Data clock for state machine delayed by one main clock cycle
signal r_scl_clk				: std_logic;										-- SCL clock
signal r_scl_enable			: std_logic := '0';								-- SCL output enable active 'high'
signal r_busy					: std_logic;										-- busy wire
signal r_clock_stretch		: std_logic := '0';
begin

-- Process generates the SCL og data clocks and correct timing between them
process(i_I2C_clk, i_I2C_reset)
	variable count				: integer range 0 to divider*4;				
begin
	if (i_I2C_reset = '0') then													-- Is reset active
		r_clock_stretch <= '0';														-- Clear internal clock stretch flag
		count := 0;																		-- Reset counter				
	elsif (rising_edge(i_I2C_clk)) then
		r_data_clk_prev <= r_data_clk;											-- Store previous data clock value
		if (count = divider*4-1) then
			count := 0;																	-- Reset counter
		elsif (r_clock_stretch = '0') then										-- Is clock stretch flag set
			count := count + 1;														-- count up
		end if;
		case count is
			when 0 to divider-1 =>													-- 1/4 of clock cycle
				r_scl_clk <= '0';
				r_data_clk <= '0';
			when divider to divider*2-1 =>										-- 1/4 of clock cycle
				r_scl_clk <= '0';
				r_data_clk <= '1';
			when divider*2 to divider*3-1 =>										-- 1/4 of clock cycle
				r_scl_clk <= '1';
				if (i_I2C_scl_txrx = '0') then									-- If slave pulls SCL 'low'
					r_clock_stretch <= '1';											-- Set clock stretch flag
				else
					r_clock_stretch <= '0';											-- Clear clock stretch flag
				end if;
				r_data_clk <= '1';											
			when others =>																-- 1/4 of clock cycle
				r_scl_clk <= '1';
				r_data_clk <= '0';
		end case;
	end if;
end process;

process (i_I2C_clk, i_I2C_reset)
begin
	if (i_I2C_reset = '0') then													-- Reset to initial values
		state <= ready;																-- Go to ready state
		r_busy <= '1';																	-- Set busy flag
		r_scl_enable <= '0';															-- Disable SCL
		r_data_bit_cnt <= 7;															-- Reset data bit counter
		o_I2C_ack_error <= '0';														-- Clear acknowledge error flag
		r_ack_cnt <= "00";															-- Reset acknowledge counter
		r_data_rx <= x"00";															-- Clear received data register
		o_I2C_sda_txrx <= '1';														-- Set SDA to 'high'
	elsif (rising_edge (i_I2C_clk)) then
		if (r_data_clk = '1' and r_data_clk_prev = '0') then				-- Data clock risinng edge
			case state is																-- Start of state machine
			
				when ready =>															-- Idle state
					if (i_I2C_ready = '0') then									-- Start transaction
					o_I2C_sda_txrx <= '0';											-- Set SDA 'low'
					r_data_txrx <= i_I2C_addr & i_I2C_rw;						-- Load slave address + R/W bit
					r_busy <= '1';														-- Set busy flag
					state <= start;													-- Go to start state
					elsif (i_I2C_ready = '1') then								-- Remain in idle state
					o_I2C_sda_txrx <= '1';											-- Set SDA 'high'
					r_busy <= '0';														-- Clear busy flag
					state <= ready;
					end if;

					when start =>
						o_I2C_sda_txrx <= r_data_txrx (7);						-- Write either address or data depending on state slv_ack_1 
						state <= exe_cmd;												-- Go to execute state
						
				when exe_cmd =>
					if (r_data_bit_cnt = 0) then									-- if finished with reading or writing a byte
						r_data_bit_cnt <= 7;											-- reset data bit counter
						if (r_ack_cnt = "01" and i_I2C_rw = '0') then		-- If finihed writing register to slave
							o_I2C_sda_txrx <= '1';									-- set SDA 'high' and prepare for acknowledge 2
							r_data_txrx <= i_I2C_data_tx;							-- Load data to be transmitted
							state <= slv_ack2;										-- Go to slave acknowledge 2
						elsif (r_ack_cnt = "10" and i_I2C_rw = '0') then	-- If finished writing data to slave
							o_I2C_sda_txrx <= '1';									-- set SDA 'high' and prepare for acknowledge 3
							state <= slv_ack3;										-- go to slave acknowledge 3
						elsif (r_ack_cnt = "01" and i_I2C_rw = '1') then	-- if finished reading data from slave
							o_I2C_sda_txrx <= '1';									-- Set SDA 'high' and prepare for not-acknowledge
							state <= NAK;												-- Go to master not-acknowledge
						else																-- When finished writing address to slave
							o_I2C_sda_txrx <= '1';									-- Set SDA 'high' and prepare for acknowledge 1
							r_data_txrx <= i_I2C_reg_tx;							-- Load register to be transmitted
							state <= slv_ack1;										-- Go to slave acknowledge 1
						end if;
					else
						if (i_I2C_rw = '1' and r_ack_cnt = "01") then		-- Continue reading data from slave
							r_data_bit_cnt <= r_data_bit_cnt -1;				-- Decrement data bit counter
							state <= exe_cmd;
						elsif (i_I2C_rw = '0' and r_ack_cnt = "01") then	-- Continue writing rigister to slave
							r_data_bit_cnt <= r_data_bit_cnt -1;				-- Decrement data bit counter
							o_I2C_sda_txrx <= r_data_txrx(r_data_bit_cnt-1);-- Write next register bit to slave
							state <= exe_cmd;											-- Go to execute state
						else
							r_data_bit_cnt <= r_data_bit_cnt -1;				-- Decrement data bit counter
							o_I2C_sda_txrx <= r_data_txrx(r_data_bit_cnt-1);-- Write next address, register bit or data bit
							state <= exe_cmd;											-- Go to execute state
						end if;
					end if;
								
				when slv_ack1 =>														-- Slave acknowledge 1
					if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then		-- If first acknowledge from slave is received during a read or write
						o_I2C_sda_txrx <= r_data_txrx (r_data_bit_cnt);		-- Transmit first register bit
						r_ack_cnt <= "01";											-- Increment acknowledge counter
						state <= exe_cmd;												-- Return to execute state
					elsif (i_I2C_sda_txrx = '0' and i_I2C_rw = '1') then	-- If first acknowledge from slave is received during a read
						r_ack_cnt <= "01";											-- Increment acknowledge counter
						state <= exe_cmd;												-- Go to execute state
					else																	-- If acknowledge 1 is not received
						r_scl_enable <= '0';											-- Disable SCL and set to 'high' and prepare for stop bit
						state <= error;												-- Go to error state
					end if;
					
				when slv_ack2 =>														-- Slave acknowledge 2
					if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then		-- If second acknowledge from slave is received during a write
						o_I2C_sda_txrx <= r_data_txrx (7);						-- Transmit fir data bit
						r_ack_cnt <= "10";											-- Increment acknowledge counter
						state <= exe_cmd;												-- Go to execute state
					else																	-- If acknowledge 2 is not received
						r_scl_enable <= '0';											-- Disable SCL and set to 'high' and prepare stop bit
						state <= error;												-- Go to error state
					end if;
									
				when slv_ack3 =>														-- Slave acknowledge 3
						if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then	-- If third acknowledge from slave is received during a write
						o_I2C_sda_txrx <= '0';										-- Set SDA 'low' and prepare for stop bit
						state <= stop;													-- Go to stop state
					else																	-- If acknowledge 3 is not received
						r_scl_enable <= '0';											-- Disable SCL and set to 'high' and prepare stop bit
						state <= error;												-- Go to error state
					end if;
				
				when NAK =>																-- Not-acknowledge from Master
					if (i_I2C_sda_txrx = '0') then								-- If slave sends acknowledge
						r_scl_enable <= '0';											-- Disable SCL and set to 'high' and prepare stop bit
						state <= error;												-- Go to error state
					else																	-- If not-acknowledge is sent
						o_I2C_sda_txrx <= '0';										-- Set SDA 'low' and prepare for stop bit
						state <= stop;													-- Go to stop state
					end if;
					
				when error =>															-- Error state
					o_I2C_ack_error <= '1';											-- Set error flag
					r_scl_enable <= '0';												-- Disable SCL and set to 'high' and prepare stop bit
					state <= stop;														-- Go to stop state
					
				when stop =>															-- Stop state
					r_scl_enable <= '0';												-- Disable SCL and set to 'high' and prepare stop bit
					o_I2C_sda_txrx <= '1';											-- Set SDA 'high'
					o_I2C_data_rx <= r_data_rx;									-- Read out the recieved data byte
					r_busy <= '0';														-- Clear busy flag
			end case;
		
		
	elsif (r_data_clk ='0' and r_data_clk_prev = '1') then				-- Data clock falling edge
		case state is
		
			when start =>																-- Part of start bit
				if (r_scl_enable = '0') then
					r_scl_enable <= '1';												-- Enable SCL
				end if;
			
			when exe_cmd =>
				if (r_ack_cnt = "01" and i_I2C_rw = '1') then				-- If first acknowledge from slave is received during a read
						r_data_rx (r_data_bit_cnt) <= i_I2C_sda_txrx;		-- Read next bit from slave
				end if;
				
			when stop =>																-- Part of stop bit
				r_scl_enable <= '0';
				o_I2C_sda_txrx <= '1';
				
			when others =>
				NULL;
			end case;
		end if;
	end if;	
end process;
	o_I2C_busy <= '0' when (r_busy = '0') else '1';
	o_I2C_scl_txrx <= '0' when (r_scl_clk ='0') else '1';					-- SCL output to tri-state port
	o_I2C_scl_enable <= r_scl_enable;											-- SCL enable/disable
end architecture rtl;