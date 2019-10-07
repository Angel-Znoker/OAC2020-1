library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity muxSalida is
	port(	entrada: in std_logic;
			salidaF: in std_logic_vector(4 downto 0);
			salidaV: in std_logic_vector(4 downto 0);
			salidas: out std_logic_vector(4 downto 0));
end muxSalida;

architecture Behavioral of muxSalida is

begin

	process(entrada)
	begin
		if (entrada = '0') then
			salidas <= salidaF;
		else
			salidas <= salidaV;
		end if;
	end process;

end Behavioral;