-- Gode ord: This file contains both a multiplexer and demultiplexer

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_sda_mux is
	port( 
		-- inputs
		i_mux_TR				: in std_logic;	-- T/R select ('1' = T, '0' = R)
		i_sda_demux_txrx	: in std_logic;	-- SDA demux TxRx input
		i_sda_mux_tx		: in std_logic;	-- SDA mux Tx input
		i_sda_mux_rx		: in std_logic;	-- SDA mux Rx input
		
		--outputs
		o_sda_mux_txrx		: out std_logic;	-- SDA mux TxRx output
		o_sda_demux_tx		: out std_logic;	-- SDA demux Tx output
		o_sda_demux_rx		: out std_logic	-- SDA demux Rx output
		);
		
end entity;

architecture rtl of I2C_sda_mux is
begin
	o_sda_mux_txrx	<= i_sda_mux_tx when i_mux_TR = '1' else i_sda_mux_rx;
process(i_mux_TR, i_sda_demux_txrx)
	begin
	case (i_mux_TR) is
	when '1' =>
		o_sda_demux_tx <= i_sda_demux_txrx;
		o_sda_demux_rx <= '0';
	when '0' =>
		o_sda_demux_rx <= i_sda_demux_txrx;
		o_sda_demux_tx <= '0';
	when others =>
		o_sda_demux_rx <= '0';
		o_sda_demux_tx <= '0';
	end case;
	
	--process(i_mux_TR, i_sda_demux_txrx)
	--begin
	--	if (i_mux_TR = '1') then
	--		o_sda_demux_tx <= i_sda_demux_txrx;
	--		o_sda_demux_rx <= (others=>'0');
	--	elsif (i_mux_TR = '0') then
	--		o_sda_demux_rx <= i_sda_demux_txrx;
	--		o_sda_demux_tx <= (others=>'0');
	--	end if;
	end process;
end architecture rtl;