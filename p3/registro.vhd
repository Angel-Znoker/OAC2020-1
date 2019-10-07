library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro is
	port(	link: in std_logic_vector(2 downto 0);
			clk : in std_logic;
			edoPresente : out std_logic_vector(2 downto 0));
end registro;

architecture Behavioral of registro is
signal estado : std_logic_vector(2 downto 0);
begin

	process(clk)
	begin
		if rising_edge(clk) then
			estado <= link;
		end if;
		edoPresente <= estado;
	end process;
end Behavioral;