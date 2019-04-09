library ieee;
use ieee.std_logic_1164.all;
 
entity multiplex is
  port (
    i_Select : in  std_logic_vector(1 downto 0);
    i_A0  : in  std_logic_vector(7 downto 0);
    i_A1  : in  std_logic_vector(7 downto 0);
    o_B0   : out std_logic_vector(7 downto 0);
	 o_B1   : out std_logic_vector(7 downto 0)
    );
end entity multiplex;

architecture RTL of multiplex is
begin

 p_Mux: process (i_Select, i_A0, i_A1) is
  begin
    case i_Select is
      when "00" =>
        o_B0 <= i_A0;
      when "01" =>
        o_B1 <= i_A0;
      when "10" =>
        o_B0 <= i_A1;
      when others =>
        o_B1 <= i_A1;
    end case;
  end process p_Mux;
				
end architecture RTL;