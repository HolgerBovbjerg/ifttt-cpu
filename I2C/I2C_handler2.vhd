library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;


entity I2C_handler2 is
	generic(
		input_clk			: integer := 50000000;
		bus_clk				: integer := 100000
	);
	port(
		--inputs
		i_I2C_clk			: in std_logic;								-- I2C main clock (50 MHz) 
		--i_I2C_scl_txrx	: in std_logic;								-- Input SCL port
		i_I2C_sda_txrx		: in std_logic;								-- Input SDA port
		i_I2C_ready			: in std_logic;								-- Ready input
		i_I2C_reset			: in std_logic;
		i_I2C_addr			: in std_logic_vector (6 downto 0);		-- Address + read/write bit 
		i_I2C_data_tx		: in std_logic_vector (7 downto 0);		-- Data input
		i_I2C_reg_tx		: in std_logic_vector (7 downto 0);		-- Slave write register usually x"00"
		i_I2C_rw				: in std_logic;								-- R/W select ('1' = R, '0' = W) 
		
		-- state test
		o_ready				: out std_logic;
		o_start				: out std_logic;
		o_exe_cmd			: out std_logic;
		o_slv_ack1			: out std_logic;
		o_slv_ack2			: out std_logic;
		o_NAK					: out std_logic;
		o_error				: out std_logic;
		o_stop				: out std_logic;
		
		
		--outputs
		o_test_LED			: out std_logic;
		o_I2C_scl_enable	: out std_logic;
		o_I2C_ack_error	: out std_logic;
		o_I2C_data_rx		: out std_logic_vector (7 downto 0);	-- Data output
		o_I2C_scl_txrx		: out std_logic;								-- SCL output port
		o_I2C_sda_txrx		: out std_logic								-- SDA output port
		);
end entity;

architecture rtl of I2C_handler2 is
constant divider				: integer :=(input_clk/bus_clk)/4;
type machine is (ready, start, exe_cmd, slv_ack1, slv_ack2, slv_ack3, NAK, error, stop);

signal state					: machine;									-- state machine
signal w_data_txrx			: std_logic_vector (7 downto 0); 	-- Vector for writing address or data the I2C device
signal w_data_rx				: std_logic_vector (7 downto 0); 	-- Data vector to read from the I2C device
signal w_data_bit_cnt		: integer range 0 to 7 := 7;
signal w_ack_cnt				: std_logic_vector (1 downto 0):= "00";
signal w_data_clk				: std_logic;
signal w_data_clk_prev		: std_logic;
signal w_scl_clk				: std_logic;
--signal w_scl_clk_start		: std_logic;
signal w_scl_enable			: std_logic := '0';
signal w_set_bit_rx			: std_logic := '0';
begin

process(i_I2C_clk, i_I2C_reset)
	variable count				: integer range 0 to divider*4;
begin
	if (i_I2C_reset = '0') then
	count := 0;
		elsif (rising_edge(i_I2C_clk)) then
			w_data_clk_prev <= w_data_clk;
			if (count = divider*4-1
			) then
			count := 0;
			else
			count := count + 1;
			end if;
		case count is
			when 0 to divider-1 =>
				w_scl_clk <= '0';
				w_data_clk <= '0';
			when divider to divider*2-1 =>
				w_scl_clk <= '0';
				w_data_clk <= '1';
			when divider*2 to divider*3-1 =>
				w_scl_clk <= '1';
				w_data_clk <= '1';
			when others =>
				w_scl_clk <= '1';
				w_data_clk <= '0';
		end case;
	end if;
end process;

process (all)
begin
	if (i_I2C_reset = '0') then
	
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
	
		state <= ready;
		w_scl_enable <= '0';
		w_data_bit_cnt <= 7;
		o_I2C_ack_error <= '0';
		w_ack_cnt <= "00";
		--o_I2C_data_rx <= x"00";
		w_data_rx <= x"00";
		--o_I2C_scl_txrx <= '1';
		--w_scl_clk <= '0';
		o_I2C_sda_txrx <= '1';
		--w_start_scl_clk <= '0';
		w_set_bit_rx <= '0';
		o_test_LED <= '0';
	elsif (rising_edge (i_I2C_clk)) then
		if (w_data_clk = '1' and w_data_clk_prev = '0') then
			case state is
			
				when ready =>
				
		o_ready <= '1';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					if (i_I2C_ready = '0') then 
					o_I2C_sda_txrx <= '0';
					w_data_txrx <= i_I2C_addr & i_I2C_rw;
					state <= start;
					elsif (i_I2C_ready = '1') then
					o_I2C_sda_txrx <= '1';
					state <= ready;
					end if;

				when start =>
					o_start <= '1';
		o_ready		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					if (w_ack_cnt = "01" and i_I2C_rw = '1') then					-- only after address has been sent
						w_data_rx (7) <= i_I2C_sda_txrx;								-- read first data bit from SDA
						state <= exe_cmd;
					else
						o_I2C_sda_txrx <= w_data_txrx (7);							-- write either address or data depending on state slv_ack_1 
						o_test_LED <= w_data_txrx (7);
						state <= exe_cmd;
					end if;
					--w_data_txrx <= i_I2C_addr & rw;
					--o_I2C_sda_txrx <= w_data_txrx (7);
					--state <= exe_cmd;
					
				when exe_cmd =>
					o_exe_cmd <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					
					if (w_data_bit_cnt = 0) then										-- if finished with reading or writing a byte
						w_data_bit_cnt <= 7;
						--o_I2C_sda_txrx <= '1';
						--o_test_LED <= '0';
						if (w_ack_cnt = "01" and i_I2C_rw = '0' and w_data_bit_cnt = 0) then				-- if finihed writing data to slave
							o_I2C_sda_txrx <= '1';										-- set SDA 'high' and prepare for acknowledge
							w_data_txrx <= i_I2C_data_tx;
							state <= slv_ack2;											-- go to slave acknowledge 2
						elsif (w_ack_cnt = "10" and i_I2C_rw = '0' and w_data_bit_cnt = 0) then
							o_I2C_sda_txrx <= '1';										-- set SDA 'high' and prepare for acknowledge
							state <= slv_ack3;
						elsif (w_ack_cnt = "01" and i_I2C_rw = '1' and w_data_bit_cnt = 0) then			-- if finished reading data from slave
							o_I2C_sda_txrx <= '1';										-- set SDA 'high' and prepare for not-acknowledge
							--o_I2C_data_rx <= w_data_rx; --test
							state <= NAK;													-- go to master not-acknowledge
						--elsif (w_ack_cnt = '0' and w_data_bit_cnt = 0) then																	-- if finished writing address to slave
							else
							o_I2C_sda_txrx <= '1';										-- set SDA 'high' and prepare for acknowledge
							state <= slv_ack1;											-- go to slave acknowledge 1
							w_data_txrx <= i_I2C_reg_tx;
							--w_data_txrx <= i_I2C_data_tx;
							o_test_LED <= '1';
						end if;
					else
						--o_test_LED <= '1';
						--w_start_timing_1 <= '1';
						if (i_I2C_rw = '1' and w_ack_cnt = "01" and w_set_bit_rx = '0') then				-- continue reading
							w_data_bit_cnt <= w_data_bit_cnt -1;				-- decrement data_bit_cnt_rx
							--w_data_rx (data_bit_cnt_rx - 1) <= i_I2C_sda_txrx;
							w_data_rx (w_data_bit_cnt -1) <= i_I2C_sda_txrx;		-- read next bit of data
							state <= exe_cmd;
							
							elsif (i_I2C_rw = '1' and w_ack_cnt = "01" and w_set_bit_rx = '1') then
							w_set_bit_rx <= '0';
							w_data_rx (w_data_bit_cnt) <= i_I2C_sda_txrx;
							state <= exe_cmd;
							
							elsif (i_I2C_rw = '0' and w_ack_cnt = "01") then				-- continue reading
							w_data_bit_cnt <= w_data_bit_cnt -1;					-- decrement data_bit_cnt_tx
							--o_I2C_sda_txrx <= w_data_tx (data_bit_cnt_tx - 1);
							o_I2C_sda_txrx <= w_data_txrx(w_data_bit_cnt-1);		-- write next address bit or data bit to slave
							--o_test_LED <= w_data_txrx(w_data_bit_cnt-1);
							state <= exe_cmd;
							
							else
							w_data_bit_cnt <= w_data_bit_cnt -1;					-- decrement data_bit_cnt_tx
							--o_I2C_sda_txrx <= w_data_tx (data_bit_cnt_tx - 1);
							o_I2C_sda_txrx <= w_data_txrx(w_data_bit_cnt-1);		-- write next address bit or data bit to slave
							--o_test_LED <= w_data_txrx(w_data_bit_cnt-1);
							state <= exe_cmd;
						end if;
						--state <= exe_cmd;
						--w_data_bit_cnt <= w_data_bit_cnt -1;
					end if;
					--w_data_bit_cnt <= w_data_bit_cnt -1;
								
				when slv_ack1 =>
					o_slv_ack1 <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then
						o_I2C_sda_txrx <= w_data_txrx (w_data_bit_cnt);
						--w_data_txrx <= i_I2C_data_tx;
						w_ack_cnt <= "01";
						o_test_LED <= '0';
						state <= exe_cmd;
					elsif (i_I2C_sda_txrx = '0' and i_I2C_rw = '1') then
						--w_data_rx (w_data_bit_cnt) <= i_I2C_sda_txrx;
						w_set_bit_rx <= '1';
						w_ack_cnt <= "01";
						state <= exe_cmd;
					else
						w_scl_enable <= '0'; -- test 1 maj kl 15
						state <= error;
					end if;
					
				when slv_ack2 =>
		o_slv_ack2 <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then
						o_I2C_sda_txrx <= w_data_txrx (7);
						--o_I2C_sda_txrx <= '0'; --test
						w_ack_cnt <= "10";
						state <= exe_cmd;
					else
						w_scl_enable <= '0'; -- test 1 maj kl 15
						state <= error;
					end if;
				
--				when slv_ack2 =>
--		o_slv_ack2 <= '1';
--		o_ready		<= '0';
--		o_start		<= '0';
--		o_exe_cmd	<= '0';
--		o_slv_ack1	<= '0';
--		o_NAK			<= '0';
--		o_error		<= '0';
--		o_stop		<= '0';
--					if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then
--						o_I2C_sda_txrx <= '0'; --test
--						state <= stop;
--					else
--						w_scl_enable <= '0'; -- test 1 maj kl 15
--						state <= error;
--					end if;
					
				when slv_ack3 =>
						if (i_I2C_sda_txrx = '0' and i_I2C_rw = '0') then
						o_I2C_sda_txrx <= '0'; --test
						state <= stop;
					else
						w_scl_enable <= '0'; -- test 1 maj kl 15
						state <= error;
					end if;
				
				when NAK =>
		o_NAK <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_error		<= '0';
		o_stop		<= '0';
					if (i_I2C_sda_txrx = '0') then
					w_scl_enable <= '0'; -- test 1 maj kl 15
					state <= error;
					else
					o_I2C_sda_txrx <= '0'; -- test stopbit 2 maj
					--w_scl_enable <= '0';
					state <= stop;
					end if;
					
				when error =>
		o_error <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_stop		<= '0';
					o_I2C_ack_error <= '1';
					w_scl_enable <= '0';
					state <= stop;
					
				when stop =>
		o_stop <= '1';
		o_ready		<= '0';
		o_start		<= '0';
		o_exe_cmd	<= '0';
		o_slv_ack1	<= '0';
		o_slv_ack2	<= '0';
		o_NAK			<= '0';
		o_error		<= '0';
					w_scl_enable <= '0';
					o_I2C_sda_txrx <= '1'; -- test 1 maj kl 15
					o_I2C_data_rx <= w_data_rx;
					--state <= ready;
			end case;
		
		
		elsif (w_data_clk ='0' and w_data_clk_prev = '1') then
			case state is
			when start =>
				if (w_scl_enable = '0') then
					w_scl_enable <= '1';
				end if;
			when stop =>
				w_scl_enable <= '0';
				o_I2C_sda_txrx <= '1';
				--state <= ready; -- udkommenteret 1 maj kl 15
			when others =>
				NULL;
			end case;
				--o_I2C_scl_txrx <= w_scl_clk;
				--o_I2C_scl_enable <= w_scl_enable;
				--o_I2C_ack_error <= w_I2C_ack_error;
		end if;
	end if;	
end process;
	--O_test_LED <= '0' when (w_data_clk = '0') else '1';
	o_I2C_scl_txrx <= '0' when (w_scl_clk ='0') else '1';
	o_I2C_scl_enable <= w_scl_enable;
end architecture rtl;