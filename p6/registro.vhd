library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro is
	port(	edoSiguiente : in std_logic_vector(3 downto 0);
			edoPresente : out std_logic_vector(3 downto 0));
end registro;

architecture Behavioral of registro is
begin
	
	edoPresente <= edoSiguiente;

end Behavioral;