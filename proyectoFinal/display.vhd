library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display is
	port	(	numero : in std_logic_vector(15 downto 0);
				primerDigito, segundoDigito : out std_logic_vector(6 downto 0);
				tercerDigito, cuartoDigito : out std_logic_vector(6 downto 0));
end display;

architecture Behavioral of display is
begin
	process(numero)
	begin
			case numero(3 downto 0) is		  -- gfedcba
				when "0000" => primerDigito <= "1000000"; -- 0
				when "0001" => primerDigito <= "1111001"; -- 1
				when "0010" => primerDigito <= "0100100"; -- 2
				when "0011" => primerDigito <= "0110000"; -- 3
				when "0100" => primerDigito <= "0011001"; -- 4
				when "0101" => primerDigito <= "0010010"; -- 5
				when "0110" => primerDigito <= "0000010"; -- 6
				when "0111" => primerDigito <= "1111000"; -- 7
				when "1000" => primerDigito <= "0000000"; -- 8
				when "1001" => primerDigito <= "0010000"; -- 9
				when "1010" => primerDigito <= "0001000"; -- A
				when "1011" => primerDigito <= "0000011"; -- b
				when "1100" => primerDigito <= "1000110"; -- C
				when "1101" => primerDigito <= "0100001"; -- d
				when "1110" => primerDigito <= "0000110"; -- E
				when "1111" => primerDigito <= "0001110"; -- F
			end case;
			
			case numero(7 downto 4) is
				when "0000" => segundoDigito <= "1000000"; -- 0
				when "0001" => segundoDigito <= "1111001"; -- 1
				when "0010" => segundoDigito <= "0100100"; -- 2
				when "0011" => segundoDigito <= "0110000"; -- 3
				when "0100" => segundoDigito <= "0011001"; -- 4
				when "0101" => segundoDigito <= "0010010"; -- 5
				when "0110" => segundoDigito <= "0000010"; -- 6
				when "0111" => segundoDigito <= "1111000"; -- 7
				when "1000" => segundoDigito <= "0000000"; -- 8
				when "1001" => segundoDigito <= "0010000"; -- 9
				when "1010" => segundoDigito <= "0001000"; -- A
				when "1011" => segundoDigito <= "0000011"; -- b
				when "1100" => segundoDigito <= "1000110"; -- C
				when "1101" => segundoDigito <= "0100001"; -- d
				when "1110" => segundoDigito <= "0000110"; -- E
				when "1111" => segundoDigito <= "0001110"; -- F
			end case;
			
			case numero(11 downto 8) is
				when "0000" => tercerDigito <= "1000000"; -- 0
				when "0001" => tercerDigito <= "1111001"; -- 1
				when "0010" => tercerDigito <= "0100100"; -- 2
				when "0011" => tercerDigito <= "0110000"; -- 3
				when "0100" => tercerDigito <= "0011001"; -- 4
				when "0101" => tercerDigito <= "0010010"; -- 5
				when "0110" => tercerDigito <= "0000010"; -- 6
				when "0111" => tercerDigito <= "1111000"; -- 7
				when "1000" => tercerDigito <= "0000000"; -- 8
				when "1001" => tercerDigito <= "0010000"; -- 9
				when "1010" => tercerDigito <= "0001000"; -- A
				when "1011" => tercerDigito <= "0000011"; -- b
				when "1100" => tercerDigito <= "1000110"; -- C
				when "1101" => tercerDigito <= "0100001"; -- d
				when "1110" => tercerDigito <= "0000110"; -- E
				when "1111" => tercerDigito <= "0001110"; -- F
			end case;
			
			case numero(15 downto 12) is
				when "0000" => cuartoDigito <= "1000000"; -- 0
				when "0001" => cuartoDigito <= "1111001"; -- 1
				when "0010" => cuartoDigito <= "0100100"; -- 2
				when "0011" => cuartoDigito <= "0110000"; -- 3
				when "0100" => cuartoDigito <= "0011001"; -- 4
				when "0101" => cuartoDigito <= "0010010"; -- 5
				when "0110" => cuartoDigito <= "0000010"; -- 6
				when "0111" => cuartoDigito <= "1111000"; -- 7
				when "1000" => cuartoDigito <= "0000000"; -- 8
				when "1001" => cuartoDigito <= "0010000"; -- 9
				when "1010" => cuartoDigito <= "0001000"; -- A
				when "1011" => cuartoDigito <= "0000011"; -- b
				when "1100" => cuartoDigito <= "1000110"; -- C
				when "1101" => cuartoDigito <= "0100001"; -- d
				when "1110" => cuartoDigito <= "0000110"; -- E
				when "1111" => cuartoDigito <= "0001110"; -- F
			end case;
	end process;
end Behavioral;