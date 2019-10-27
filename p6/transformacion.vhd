library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity transformacion is
	port(	sw : in std_logic_vector(1 downto 0);
			edoTrans : out std_logic_vector(3 downto 0));
end transformacion;

architecture Behavioral of transformacion is
begin
	process(sw)
	begin
		
		case sw is
			when "00" => edoTrans <= "0011";
			
			when "01" => edoTrans <= "1000";
			
			when "10" => edoTrans <= "1101";
			
			when others => edoTrans <= "0000";
		end case;
		
	end process;
end Behavioral;