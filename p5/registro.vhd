library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro is
	port(	carga, incrementa : in std_logic;
			liga : in std_logic_vector(2 downto 0);
			clk : in std_logic;
			edoPresente : out std_logic_vector(2 downto 0));
end registro;

architecture Behavioral of registro is
signal contador : std_logic_vector(2 downto 0) := "000";
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if (incrementa = '1') then
				contador <= contador + 1;
			elsif (carga = '1') then
				contador <= liga;
			end if;
			
		end if;
		edoPresente <= contador;
	end process;
end Behavioral;