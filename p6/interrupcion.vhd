library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity interrupcion is
	port(	sw : in std_logic;
			edoInt : out std_logic_vector(3 downto 0));
end interrupcion;

architecture Behavioral of interrupcion is
begin
	process(sw)
	begin
		
		case sw is
			when '0' => edoInt <= "0110";
			
			when '1' => edoInt <= "1011";
			
			when others => edoInt <= "0000";
		end case;
		
	end process;
end Behavioral;