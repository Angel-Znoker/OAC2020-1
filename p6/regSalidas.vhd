library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity regSalidas is
	port(	liga : in std_logic_vector(3 downto 0);
			sal : in std_logic_vector(3 downto 0);
			vf : in std_logic;
			prueba, mi : in std_logic_vector(1 downto 0);
			edoPresente : in std_logic_vector(3 downto 0);
			sw : in std_logic;
			
			salida1: out std_logic_vector(3 downto 0);
			salida2 : out std_logic_vector(4 downto 0));
			
end regSalidas;

architecture Behavioral of regSalidas is

begin
	process(sw)
	begin
		
		case sw is
			when '0' => 	salida1 <= prueba & mi;
								salida2 <= vf & liga;
								
			when '1' =>		salida1 <= edoPresente;
								salida2 <= '0' & sal;
								
			when others => salida1 <= "0000";
								salida2 <= "00000";
		end case;
		
	end process;
end Behavioral;