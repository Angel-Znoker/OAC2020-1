library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity muxEntradas is
	port(	A, B, C: in std_logic;
			prueba : in std_logic_vector(1 downto 0);
			salida : out std_logic);
end muxEntradas;

architecture Behavioral of muxEntradas is

begin
	
	process(prueba)
	begin
		if (prueba = "00") then
			salida <= A;
		elsif (prueba = "01") then
			salida <= B;
		elsif (prueba = "10") then
			salida <= C;
		else
			salida <= '0';
		end if;
	end process;
end Behavioral;