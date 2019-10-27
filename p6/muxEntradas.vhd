library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity muxEntradas is
	port(	x, y, int: in std_logic;
			prueba : in std_logic_vector(1 downto 0);
			qSel : out std_logic);
end muxEntradas;

architecture Behavioral of muxEntradas is

signal sel : std_logic := '0';

begin
	
	process(prueba)
	begin
		
		case prueba is
			
			when "00" =>	sel <= x;
			
			when "01" =>	sel <= y;
			
			when "10" =>	sel <= '0';
			
			when "11" =>	sel <= int;
			
			when others =>	sel <= '0';
		end case;
		
		qSel <= sel;
		
	end process;
end Behavioral;