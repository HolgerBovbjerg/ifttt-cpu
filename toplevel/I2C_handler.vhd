library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity I2C_handler is
	port(
		--inputs
		i_I2C_clk		: in std_logic;								-- I2C main clock (50 MHz) 
		i_I2C_scl_txrx	: in std_logic;								-- Input SCL port
		i_I2C_sda_txrx	: in std_logic;								-- Input SDA port
		i_I2C_ready		: in std_logic;								-- Ready input
		i_I2C_addr		: in std_logic_vector (7 downto 0);		-- Address + read/write bit 
		i_I2C_data_tx	: in std_logic_vector (7 downto 0);		-- Data input
		i_I2C_txrx		: in std_logic;								-- T/R select ('1' = T, '0' = R) 
		
		--outputs
		o_I2C_data_rx	: out std_logic_vector (7 downto 0);	-- Data output
		o_I2C_scl_txrx	: out std_logic;								-- SCL output port
		o_I2C_sda_txrx	: out std_logic								-- SDA output port
		);
end entity;

architecture rtl of I2C_handler is

signal w_sda_mux_tx		: std_logic;							-- SDA mux Tx
signal w_sda_mux_rx		: std_logic;							-- SDA mux Rx
signal w_sda_demux_tx	: std_logic;							-- SDA demux Tx
signal w_sda_demux_rx	: std_logic;							-- SDA demux Rx
signal w_scl_mux_tx		: std_logic;							-- SCL mux Tx
signal w_scl_mux_rx		: std_logic;							-- SCL mux Rx
--signal w_scl_demux_tx	: std_logic;							-- SCL demux Tx
--signal w_scl_demux_rx	: std_logic;							-- SCL demux Rx
signal w_addr_tx			: std_logic_vector (7 downto 0);	-- I2C address to transmit data to
signal w_addr_rx			: std_logic_vector (7 downto 0);	-- I2C address to receive data from
signal w_addr_buf_tx		: std_logic_vector (7 downto 0);	-- 
signal w_addr_buf_rx		: std_logic_vector (7 downto 0);	-- 
signal w_data_reg_tx		: std_logic_vector (7 downto 0); -- Which entry of the I2C buffer to write to
signal w_data_reg_rx		: std_logic_vector (7 downto 0); -- Which entry of the I2C buffer to read from
signal w_data_tx			: std_logic_vector (7 downto 0); -- Data vector to write to the I2C device
signal w_data_rx			: std_logic_vector (7 downto 0); -- Data vector to read from the I2C device
--signal w_clk_cnt			: std_logic_vector (22 downto 0);-- Clock counter to adjust clock frequency
signal w_clk_bus			: std_logic;							-- I2C bus clock (adjusted)
signal w_cnt_tx			: integer range 0 to 9;				-- Counter for 8 transmitted bits + ACK/NACK bit
signal w_cnt_rx			: integer range 0 to 9;				-- Counter for 8 received bits + ACK/NACK bit
signal w_pos_tx			: integer range 0 to 18;			-- Position counter for transmitting data
signal w_pos_rx			: integer range 0 to 28;			-- Position counter for receiving data



component I2C_sda_mux
	port (
		-- inputs
		i_mux_TR				: in std_logic;	-- T/R input select
		i_sda_demux_txrx	: in std_logic;	-- SDA demux TxRx input
		i_sda_mux_tx		: in std_logic;	-- SDA mux Tx input
		i_sda_mux_rx		: in std_logic;	-- SDA mux Rx input
		
		--outputs
		o_sda_mux_txrx		: out std_logic;	-- SDA mux TxRx output
		o_sda_demux_tx		: out std_logic;	-- SDA demux Tx output
		o_sda_demux_rx		: out std_logic	-- SDA demux Rx output
		);
end component;

component I2C_scl_mux
	port (
		-- inputs
		i_mux_TR				: in std_logic;	-- T/R input select
		--i_scl_demux_txrx	: in std_logic;	-- SCL demux TxRx input
		i_scl_mux_tx		: in std_logic;	-- SCL mux Tx input
		i_scl_mux_rx		: in std_logic;	-- SCL mux Rx input
		
		--outputs
		o_scl_mux_txrx		: out std_logic	-- SCL mux TxRx output
		--o_scl_demux_tx		: out std_logic;	-- SCl demux Tx output
		--o_scl_demux_rx		: out std_logic	-- SCL demux Rx output
		);
end component;

component I2C_addr_demux
	port (
		-- inputs
		i_mux_TR					: in std_logic;								-- T/R select ('1' = T, '0' = R)
		i_addr_demux_txrx		: in std_logic_vector (7 downto 0);		-- Address demux TxRx input
		
		--outputs
		o_addr_demux_tx		: out std_logic_vector (7 downto 0);	-- Address demux Tx output
		o_addr_demux_rx		: out std_logic_vector (7 downto 0)		-- Address demux Rx output
		);
	
end component;

component clk_divider
	PORT
	(
		i_I2C_clk		:	 in 	std_logic;
		i_reset			:	 in 	std_logic;
		o_clk_bus		:	 out 	std_logic
	);
end component;


begin

inst_sda_mux : I2C_sda_mux port map(
	i_mux_TR					=> i_I2C_txrx,
	i_sda_demux_txrx		=> i_I2C_sda_txrx,
	i_sda_mux_tx			=> w_sda_mux_tx,
	i_sda_mux_rx			=> w_sda_mux_rx,
	o_sda_mux_txrx			=> o_I2C_sda_txrx,
	o_sda_demux_tx			=> w_sda_demux_tx,
	o_sda_demux_rx			=> w_sda_demux_rx
);
	
inst_scl_mux : I2C_scl_mux port map(
	i_mux_TR					=> i_I2C_txrx,
	--i_scl_demux_txrx		=> i_I2C_scl_txrx,
	i_scl_mux_tx			=> w_scl_mux_tx,
	i_scl_mux_rx			=> w_scl_mux_rx,
	o_scl_mux_txrx			=> o_I2C_scl_txrx
	--o_scl_demux_tx			=> w_scl_demux_tx,
	--o_scl_demux_rx			=> w_scl_demux_rx
);

inst_addr_mux : I2C_addr_demux port map(
	i_mux_TR					=> i_I2C_txrx,
	i_addr_demux_txrx		=> i_I2C_addr,
	o_addr_demux_tx		=> w_addr_buf_tx,
	o_addr_demux_rx		=> w_addr_buf_rx
);

inst_clk_divider : clk_divider port map(
	i_I2C_clk				=> i_I2C_clk,
	i_reset					=> i_I2C_ready,
	o_clk_bus				=> w_clk_bus
);

-- Bus clock generator --
--clkgen:process(i_I2C_clk,i_I2C_ready)
--begin
--	if (i_I2C_ready = '0') then
--		w_clk_cnt <= (others=>'0');
--	else
--		if(falling_edge(i_I2C_clk)) then
--			w_clk_cnt <= w_clk_cnt + 1;
--		end if;
--	end if;
--end process;
--
--w_clk_bus <= w_clk_cnt(5);

-- Transmit function --
I2C_Tx:process(w_clk_bus, i_I2C_ready, i_I2C_txrx, i_i2C_data_tx, w_addr_buf_tx)
begin
if(i_I2C_txrx = '1') then
	if(i_I2C_ready = '0') then
		w_addr_tx <= w_addr_buf_tx;
		w_data_reg_tx <= x"01";
		w_data_tx <= i_I2C_data_tx;
		w_scl_mux_tx <= '1';
		w_sda_mux_tx <= '1';
		w_pos_tx <= 0;
	else
	if (falling_edge(w_clk_bus)) then
		case(w_pos_tx) is
		when 0 =>
			w_sda_mux_tx <= '0';
			w_pos_tx <= 1;
			w_cnt_tx <= 1;
		when 1 =>
			w_scl_mux_tx <= '0';
			w_sda_mux_tx <= w_addr_tx(7);
			if(w_cnt_tx = 9) then
				w_pos_tx <= 3;
				else
				w_pos_tx <= 2;
			end if;
		when 2 =>
			w_scl_mux_tx <= '1';
			w_addr_tx <= w_addr_tx (6 downto 0)&'1';
			w_pos_tx <= 1;
			w_cnt_tx <= w_cnt_tx + 1;
		when 3 =>
			if (w_sda_demux_tx = '0') then
				w_pos_tx <= 5;
			else
				w_scl_mux_tx <= '1';
				w_pos_tx <= 4;
				w_sda_mux_tx <= '0';
			end if;
		when 4 =>
			w_sda_mux_tx <= '1';
			w_pos_tx <= 5;
		when 5 =>
			w_sda_mux_tx <= '0';
			w_pos_tx <= 6;
			w_cnt_tx <= 1;
		when 6 =>
			w_scl_mux_tx <= '0';
			w_sda_mux_tx <= w_data_reg_tx(7);
			if(w_cnt_tx = 9) then
				w_pos_tx <= 8;
			else
				w_pos_tx <= 7;
			end if;
		when 7 =>
			w_scl_mux_tx <= '1';
			w_data_reg_tx <= w_data_reg_tx(6 downto 0)&'1';
			w_pos_tx <= 6;
			w_cnt_tx <= w_cnt_tx + 1;
		when 8 =>
			if(w_sda_demux_tx = '0') then
			--w_pos_tx <= 10; -- test
			else
				w_scl_mux_tx <= '1';
				w_pos_tx <= 9;
				w_sda_mux_tx <= '0';
			end if;
		when 9 =>
			w_sda_mux_tx <= '1';
			w_pos_tx <= 10;
		when 10 =>
			w_sda_mux_tx <= '0';
			w_pos_tx <= 11;
			w_cnt_tx <= 1;
		when 11 =>
			w_scl_mux_tx <= '0';
			w_sda_mux_tx <= w_data_tx(7);
			if(w_cnt_tx = 9) then
				w_pos_tx <= 13;
			else
				w_pos_tx <= 12;
			end if;
		when 12 =>
			w_scl_mux_tx <= '1';
			w_data_tx <= w_data_tx(6 downto 0)&'1';
			w_pos_tx <= 11;
			w_cnt_tx <= w_cnt_tx + 1;
		when 13 =>
			if(w_sda_demux_tx = '0') then
				w_pos_tx <= 15;
			else
				w_scl_mux_tx <= '1';
				w_pos_tx <= 14;
				w_sda_mux_tx <= '0';
			end if;
		when 14 =>
			w_sda_mux_tx <= '1';
			w_pos_tx <= 15;
		when 15 =>
			w_sda_mux_tx <= '0';
			w_pos_tx <= 16;
		when 16 =>
			--w_sda_mux_tx <= '1';
			w_scl_mux_tx <= '1';
			w_pos_tx <= 17;
		when 17 =>
			w_sda_mux_tx <= '1';
			w_pos_tx <= 18;
		when 18 =>
			w_pos_tx <= 18;
		end case;
		end if;
	end if;
end if;
end process;


-- Receive function --
I2C_Rx:process(w_clk_bus, i_I2C_ready, i_I2C_txrx, i_i2C_data_tx, w_addr_buf_rx, w_data_rx)
begin
if (i_I2C_txrx = '0') then
	--w_start_rx_cnt <= '0';
	if (i_I2C_ready = '0') then
		w_addr_rx <= w_addr_buf_rx;
		w_data_reg_rx <= x"01";
		w_scl_mux_rx <= '1';
		w_sda_mux_rx <= '1';
		w_pos_rx <= 0;
		--w_start_rx_cnt <= '1';
	else
		if(falling_edge(w_clk_bus)) then
			case(w_pos_rx) is
			when 0 =>
				w_sda_mux_rx <= '0';
				--w_pos_rx <= 10;
				w_pos_rx <= 1; --original kode
				w_cnt_rx <=  1;
			when 1 =>
				w_scl_mux_rx <= '0';
				w_sda_mux_rx <= w_addr_rx(7);
				if(w_cnt_rx = 9) then
					w_pos_rx <= 3;
				else
					w_pos_rx <= 2;
				end if;
			when 2 =>
				w_scl_mux_rx <= '1';
				w_addr_rx <= w_addr_rx(6 downto 0)&'1';
				w_pos_rx <= 1;
				w_cnt_rx <= w_cnt_rx + 1;
			when 3 =>
				if(w_sda_demux_rx = '0') then
					--w_pos_rx <= 15;
					w_pos_rx <= 5; --original kode
				else
					w_scl_mux_rx <= '1'; -- generate stop bit
					--w_pos_rx <= 14;
					w_pos_rx <= 4; --original kode
					w_sda_mux_rx <= '0'; -- generate stop bit
				end if;
			when 4 =>
				w_sda_mux_rx <= '1'; -- generate stop bit
				w_pos_rx <= 5;
			when 5 =>
				w_sda_mux_rx <= '0';
				w_pos_rx <= 6;
				w_cnt_rx <= 1;
			when 6 =>
				w_scl_mux_rx <= '0';
				w_sda_mux_rx <= w_data_reg_rx(7);
				if (w_cnt_rx = 9) then
					w_pos_rx <= 8;
				else
					w_pos_rx <= 7;
				end if;
			when 7 =>
				w_scl_mux_rx <= '1';
				w_data_reg_rx <= w_data_reg_rx(6 downto 0)&'1';
				w_pos_rx <= 6;
				w_cnt_rx <= w_cnt_rx + 1;
			when 8 =>
				if(w_sda_demux_rx = '0') then
					--w_sda_mux_rx <= '1';
					--w_scl_mux_rx <= '1'; --test
					w_pos_rx <= 10;
				else
					w_scl_mux_rx <= '1'; -- generate stop bit
					w_pos_rx <= 9;
					w_sda_mux_rx <= '0'; -- generate stop bit
				end if;
			when 9 =>
				w_sda_mux_rx <= '1'; -- generate stop bit
				w_pos_rx <= 10;
			when 10 =>
				w_sda_mux_rx <= '0'; -- hold SDA "low" after ACK
				w_pos_rx <= 11;
				w_scl_mux_rx <= '1';
			when 11 =>
				w_scl_mux_rx <= '0';
				w_pos_rx <= 12;
			when 12 =>
				w_sda_mux_rx <= '1'; -- generate re-start
				w_pos_rx <= 13;
			when 13 =>
				w_scl_mux_rx <= '1'; -- generate re-start
				w_pos_rx <= 14;
			when 14 =>
				w_sda_mux_rx <= '0'; -- generate re-start
				w_pos_rx <= 15;
				w_cnt_rx <= 1;
				w_addr_rx <= x"C9"; --w_addr_buf_rx (7 downto 1)&'1'; original kode
			when 15 =>
				w_scl_mux_rx <= '0';
				w_sda_mux_rx <= w_addr_rx(7);
				if (w_cnt_rx = 9) then
					w_pos_rx <= 17;
				else
					w_pos_rx <= 16;
				end if;
			when 16 =>
				w_scl_mux_rx <= '1';
				w_addr_rx <= w_addr_rx (6 downto 0)&'1';
				w_pos_rx <= 15; --w_pos_rx <= 13;
				w_cnt_rx <= w_cnt_rx + 1;
			when 17 =>
				if(w_sda_demux_rx = '0') then
					w_pos_rx <= 19;
				else
					w_scl_mux_rx <= '1';
					w_pos_rx <= 18;
					w_sda_mux_rx <= '0';
				end if;
			when 18 =>
				w_sda_mux_rx <= '1';
				w_pos_rx <= 19;
			when 19 =>
				w_sda_mux_rx <= '1'; --w_sda_mux_rx <= '0'; original kode
				w_pos_rx <= 20;
				w_cnt_rx <= 1;
				w_data_rx <= x"00";
			when 20 =>
				w_scl_mux_rx <= '0';
				w_data_rx <= w_data_rx(6 downto 0) & w_sda_demux_rx;
				if(w_cnt_rx = 9) then	
					w_pos_rx <= 22;
				else
					w_pos_rx <= 21;
				end if;
			when 21 =>
				w_scl_mux_rx <= '1';
				w_pos_rx <= 20;
				w_cnt_rx <= w_cnt_rx + 1;
			when 22 =>			-- new when, following whens incremented by 1
				w_sda_mux_rx <= '1';
				w_pos_rx <= 23;
			when 23 =>
				if(w_sda_demux_rx = '0') then
					w_pos_rx <= 24;
				else
					w_scl_mux_rx <= '1';
					w_pos_rx <= 24; --incremented by 1
					--w_sda_mux_rx <= '0'; original kode
				end if;
			when 24 =>
				w_scl_mux_rx <= '0'; --test
				--w_sda_mux_rx <= '1'; test
				w_pos_rx <= 25;
			when 25 =>
				w_sda_mux_rx <= '0'; --test
				w_pos_rx <= 26;
			when 26 =>
				w_scl_mux_rx <= '1';
				w_pos_rx <= 27;
			when 27 =>
				w_sda_mux_rx <= '1';
				w_pos_rx <= 28;
			when 28 =>
				w_pos_rx <= 28;
				--w_data_rx <= x"AA"; --test
				o_i2C_data_rx <= w_data_rx; --test
				--w_start_rx_cnt <= '0';
			end case;
		end if;
	end if;
end if;
	--w_start_rx_cnt <= 0;
--o_i2C_data_rx <= w_data_rx;
end process;
--w_start_rx_cnt <= '0';
--o_i2C_data_rx <= w_data_rx;
end architecture rtl;













