library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity regSalidas is
	port(	liga : in std_logic_vector(2 downto 0);
			sal : in std_logic_vector(4 downto 0);
			edoPresente : in std_logic_vector(2 downto 0);
			sw : in std_logic;
			estado : out std_logic_vector(2 downto 0);
			salidas : out std_logic_vector(4 downto 0));
end regSalidas;

architecture Behavioral of regSalidas is

begin
	process(sw)
	begin
		if (sw = '0') then
			estado <= edoPresente;
		else
			estado <= liga;
		end if;
		salidas <= sal;
	end process;
end Behavioral;