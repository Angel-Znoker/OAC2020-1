library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity logica is
port ( 	cc : in std_logic;
			mi : in std_logic_vector(1 downto 0);
			selector : out std_logic_vector(1 downto 0));
end logica;

architecture Behavioral of logica is

signal sel : std_logic_vector(1 downto 0) := "00";

begin
	
	process(cc, mi)
	begin
		
		case mi is
			
			when "00" => 	sel <= "00";
			
			when "01" =>	if(cc = '0') then
									sel <= "01";
								else
									sel <= "00";
								end if;
			
			when "10" =>	sel <= "10";
			
			when "11" =>	if(cc = '0') then
									sel <= "11";
								else
									sel <= "00";
								end if;
			
			when others =>	sel <= "00";
			
		end case;
		
		selector <= sel;
		
	end process;
	
end Behavioral;