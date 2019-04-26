library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity clk_divider is
	port (
		i_I2C_clk 			: in 	std_logic;	-- 50 MHz main clock
		i_reset				: in 	std_logic;	-- reset and activate clock divider to start counting
		o_clk_bus			: out std_logic 	-- I2C bus clock. 800 kHz but is divided by to in Rx and TX handler process
	);
end entity;

architecture rtl of clk_divider is
	
	signal w_tmp				: std_logic; 						-- signal to store each 50% duty cycle of bus clock
	signal w_tmp_cnt			: integer range 0 to 28 := 0; -- 400 kbps is (i_I2C_clk/o_clk_bus)/4 = 31.25 adjusted to 28 for correct timing
begin

	clk_divider: process (i_reset, i_I2C_clk) begin
		if (i_reset = '0') then
			w_tmp <= '0';
			w_tmp_cnt <= 0;
		elsif (falling_edge (i_I2C_clk)) then
			if (w_tmp_cnt = 28) then
				w_tmp <= not(w_tmp);
				w_tmp_cnt <= 0;
			else
				w_tmp_cnt <= w_tmp_cnt + 1;
			end if;
		end if;
	end process;
	o_clk_bus <= w_tmp;
end architecture rtl;