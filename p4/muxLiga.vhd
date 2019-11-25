library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity muxLiga is
	port(	entrada: in std_logic;
			ligaF: in std_logic_vector(2 downto 0);
			ligaV: in std_logic_vector(2 downto 0);
			edoSig: out std_logic_vector(2 downto 0));
end muxLiga;

architecture Behavioral of muxLiga is
begin
	
	process(entrada)
	begin
		if (entrada = '0') then
			edoSig <= ligaF;
		else
			edoSig <= ligaV;
		end if;
	end process;

end Behavioral;