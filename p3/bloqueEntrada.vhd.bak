library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bloqueEntrada is
	port(	estado : in std_logic_vector(2 downto 0);
			entradas : in std_logic_vector(2 downto 0);
			direccion : out std_logic_vector(5 downto 0));
end bloqueEntrada;

architecture Behavioral of bloqueEntrada is
begin
	direccion <= estado & entradas;
end Behavioral;
