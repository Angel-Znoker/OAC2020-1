library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity practica2_vhdl is
	port(clk, E : in STD_LOGIC;
			S, q0, q1, q0m, q1m: out STD_LOGIC);
end practica2_vhdl;

architecture Behavioral of practica2_vhdl is
	type estados is (S0, S1, S2, S3);
	signal presente : estados := S0;
	
	begin
	
	process(clk)
	begin
		if rising_edge(clk) then
			case presente is
				when S0 =>
						S <= '0';
						q0 <= '0';
						q1 <= '0';
						
						if (E = '1') then 
							presente <= S0;
							q0m <= '0';
							q1m <= '0';
						else
							presente <= S1;
							q0m <= '1';
							q1m <= '0';
						end if;
				
				when S1 =>
						S <= '0';
						q0 <= '1';
						q1 <= '0';
						
						if (E = '1') then 
							presente <= S0;
							q0m <= '0';
							q1m <= '0';
						else
							presente <= S2;
							q0m <= '0';
							q1m <= '1';
						end if;
				
				when S2 =>
						S <= '0';
						q0 <= '0';
						q1 <= '1';
						
						if (E = '1') then 
							presente <= S0;
							q0m <= '0';
							q1m <= '0';
						else
							presente <= S3;
							q0m <= '1';
							q1m <= '1';
						end if;
				
				when S3 =>
						S <= '1';
						q0 <= '1';
						q1 <= '1';
						
						if (E = '1') then 
							presente <= S0;
							q0m <= '0';
							q1m <= '0';
						else
							presente <= S3;
							q0m <= '1';
							q1m <= '1';
						end if;
			end case;
		end if;
	end process;
end Behavioral;