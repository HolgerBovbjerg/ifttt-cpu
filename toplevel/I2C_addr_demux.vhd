-- Gode ord: This file contains a demultiplexer

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity I2C_addr_demux is
	port( 
		-- inputs
		i_mux_TR				: in std_logic;									-- T/R select ('1' = T, '0' = R)
		i_addr_demux_txrx	: in std_logic_vector (7 downto 0);			-- Address demux TxRx input
		
		--outputs
		o_addr_demux_tx		: out std_logic_vector (7 downto 0);	-- Address demux Tx output
		o_addr_demux_rx		: out std_logic_vector (7 downto 0)		-- Address demux Rx output
		);
		
end entity;

architecture rtl of I2C_addr_demux is
begin
process(i_mux_TR, i_addr_demux_txrx)
	begin
		case(i_mux_TR) is
		when '1' =>
			o_addr_demux_tx <= i_addr_demux_txrx;
			o_addr_demux_rx <= x"00";
		when '0' =>
			o_addr_demux_rx <= i_addr_demux_txrx;
			o_addr_demux_tx <= x"00";
		when others =>
			o_addr_demux_rx <= x"00";
			o_addr_demux_tx <= x"00";
		end case;
	end process;
--	process(i_mux_TR, i_addr_demux_txrx)
--	begin
--		if (i_mux_TR = '1') then
--			o_addr_demux_tx <= i_addr_demux_txrx;
--			o_addr_demux_rx <= x"00";
--		else
--			o_addr_demux_rx <= i_addr_demux_txrx;
--			o_addr_demux_tx <= x"00";
--		end if;
--	end process;
end architecture rtl;