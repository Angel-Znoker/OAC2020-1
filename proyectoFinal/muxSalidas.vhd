library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxSalidas is
	port	(	AccA, AccB : in std_logic_vector(15 downto 0);
				sw : in std_logic;
				salida : out std_logic_vector(15 downto 0));
end muxSalidas;

architecture Behavioral of muxSalidas is
begin
	process(sw, AccA, AccB)
	begin
		if sw = '0' then
			salida <= AccA;
		elsif sw = '1' then
			salida <= AccB;
		else
			salida <= (others => '0');
		end if;
	end process;
end Behavioral;