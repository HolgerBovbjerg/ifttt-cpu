-- Gode ord: This file contains a multiplexer

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_scl_mux is
	port( 
		-- inputs
		i_mux_TR				: in std_logic;	-- T/R select ('1' = T, '0' = R)
		--i_scl_demux_txrx	: in std_logic;	-- SCL demux TxRx input
		i_scl_mux_tx		: in std_logic;	-- SCL mux Tx input
		i_scl_mux_rx		: in std_logic;	-- SCL mux Rx input
		
		--outputs
		o_scl_mux_txrx		: out std_logic	-- SCL mux TxRx output
		--o_scl_demux_tx		: out std_logic;	-- SCl demux Tx output
		--o_scl_demux_rx		: out std_logic		-- SCL demux Rx output
		);
		
end entity;

architecture rtl of I2C_scl_mux is
begin
	o_scl_mux_txrx	<= i_scl_mux_tx when i_mux_TR = '1' else i_scl_mux_rx;
	
	--process(i_mux_TR, i_scl_demux_txrx)
	--begin
	--	if (i_mux_TR = '1') then
	--		o_scl_demux_tx <= i_scl_demux_txrx;
	--	else
	--		o_scl_demux_rx <= i_scl_demux_txrx;
	--	end if;
	--end process;
end architecture rtl;