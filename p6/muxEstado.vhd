library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity muxEstado is
	port(	clk : in std_logic;
			registro, liga, transf, int: in std_logic_vector(3 downto 0);
			selector : in std_logic_vector(1 downto 0);
			edoPresente : out std_logic_vector(3 downto 0));
end muxEstado;

architecture Behavioral of muxEstado is

signal sEdoPres : std_logic_vector(3 downto 0) := "0000";

begin
	
	process(clk, selector)
	begin
		if rising_edge(clk) then
			case selector is
				when "00" => edoPresente <= registro;

				when "01" => edoPresente <= liga;
			
				when "10" => edoPresente <= transf;
			
				when "11" => edoPresente <= int;
			
				when others => edoPresente <= "0000";
			end case;
		end if;
	end process;
end Behavioral;