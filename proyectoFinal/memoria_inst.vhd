-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_inst is
	Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
			datos : out STD_LOGIC_VECTOR (31 downto 0));
end memoria_inst;

architecture Behavioral of memoria_inst is
   type memory is array(0 to 50) of std_logic_vector(31 downto 0);
	signal memoria : memory;
	
	begin
		--TABLA DEL 2

		memoria(0) <= x"00A50002"; --	LDAB	#$0002	(B <- 2)
		memoria(1) <= x"00860001"; --	LDAA	#$0000	(A <- 0)
		memoria(2) <= x"001B0000"; --	ABA				(A <- A + B)
		memoria(3) <= x"007E0002"; --	JMP	#$0002	(Salto a dir 2)
		memoria(4) <= x"00010000"; --	NOP
		memoria(5) <= x"00010000"; --	NOP				(Nops de salto)
		memoria(6) <= x"00010000"; --	NOP

--		memoria(0)  <= x"00861000"; --	LDAA	#0000	(A <- 0)
--		memoria(1)  <= x"00B70004"; --	STAA	#0004	(SUMA <- A)
--		memoria(2)  <= x"00A50001"; --	LDAB	#0001	(B <- 1 (i))	
--		memoria(3)  <= x"00860006"; --	LDAA	#0005	(A <- 5 (n))
--		memoria(4)  <= x"00110000"; --	CBA 
--		memoria(5)  <= x"00120012"; --	BLO	#0012	(salto a dir 18 si N = 1)
--		memoria(6)  <= x"00010000"; --	NOP
--		memoria(7)  <= x"00010000"; --	NOP			(Nops de salto)
--		memoria(8)  <= x"00010000"; --	NOP
--		memoria(9)  <= x"00680004"; --	GTAA	#0004	(A <- SUMA)
--		memoria(10) <= x"001B0000"; --	ABA			(A <- A + B)
--		memoria(11) <= x"00B70004"; --	STAA	#0004	(SUMA <- A)
--		memoria(12) <= x"00860001"; --	LDAA	#0001	(A <- 1)
--		memoria(13) <= x"001C0000"; --	BBA			(B <- B + A)
--		memoria(14) <= x"007E0003"; --	JMP			(salto a dir 3)
--		memoria(15) <= x"00010000"; --	NOP
--		memoria(16) <= x"00010000"; --	NOP			(Nops de salto)
--		memoria(17) <= x"00010000"; --	NOP
--		memoria(18) <= x"007E0012"; --	JMP			(Salto a dir 18)
--		memoria(19) <= x"00010000"; --	NOP
--		memoria(20) <= x"00010000"; --	NOP			(Nops de Salto)
--		memoria(21) <= x"00010000"; --	NOP


		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
