library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity incrementador is
	port(	edoPresente : in std_logic_vector(3 downto 0);
			edoSiguiente : out std_logic_vector(3 downto 0));
end incrementador;


architecture Behavioral of incrementador is

begin
	edoSiguiente <= edoPresente + 1;
end Behavioral;