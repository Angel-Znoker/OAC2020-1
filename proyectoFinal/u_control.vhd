library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u_control is
	Port( inst : in STD_LOGIC_VECTOR (15 downto 0);
			selregr : out STD_LOGIC_VECTOR (3 downto 0);
			sels1 : out STD_LOGIC;
			sr : out STD_LOGIC;
			cin : out STD_LOGIC;
			sels2 : out STD_LOGIC;
			seldato : out STD_LOGIC;
			selsrc : out STD_LOGIC_VECTOR (2 downto 0);
			seldir : out STD_LOGIC_VECTOR(1 downto 0);
			selop : out STD_LOGIC_VECTOR (3 downto 0);
			selresult : out STD_LOGIC_VECTOR (1 downto 0);
			selc : out STD_LOGIC;
			cadj : out STD_LOGIC;
			selfalgs : out STD_LOGIC_VECTOR (3 downto 0);
			selbranch : out STD_LOGIC_VECTOR (2 downto 0);
			vf : out STD_LOGIC;
			selregw : out STD_LOGIC_VECTOR (2 downto 0);
			memw : out STD_LOGIC;
			seldirw : out STD_LOGIC_VECTOR (1 downto 0));
end u_control;

architecture Behavioral of u_control is
begin
	process (inst)
	begin		
		if inst = X"001B" then	--	ABA	(Suma A y B y guarda en A)
			selregr <= X"1";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"1";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"2";
			selbranch <= "000";
			vf <= '1';
			selregw <= "001";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"001C" then	--	BBA	(Suma A y B y guarda en B)
			selregr <= X"1";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"1";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"2";
			selbranch <= "000";
			vf <= '1';
			selregw <= "100";
			memw <= '0';
			seldirw <= "00";	
			
		elsif inst = X"0086" then	--	LDAA #val_16_bits	(Carga val. en A)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "001";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"00A5" then	--	LDAB	#val_16_bits	(Carga val. en B)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "100";
			memw <= '0';
			seldirw <= "00";
		
		elsif inst = X"0068" then	--	GTAA	#dir_16_bits	(Carga A con val. de dir.s)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "010";
			seldir <= "01";
			selop <= X"1"; --
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"0"; --
			selbranch <= "000";
			vf <= '1';
			selregw <= "001";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"00B7" then	--	STAA	#dir_16_bits	(Carga val. de A en dir. de mem.)
			selregr <= X"4";
			sels1 <= '1';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "000";
			memw <= '1';
			seldirw <= "10";
		
		elsif inst = X"00D7" then --	STAB	#dir_16_bits	(Carga val. de B en dir. de mem.)
			selregr <= X"5";
			sels1 <= '1';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "000";
			memw <= '1';
			seldirw <= "10";
			
		elsif inst = X"005C" then	--	INCB	(incrementa en 1 el valor de B)
			selregr <= X"5";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"1";
			selresult <= "01";
			selc <= '1';
			cadj <= '1';
			selfalgs <= X"C";
			selbranch <= "000";
			vf <= '1';
			selregw <= "100";
			memw <= '0';
			seldirw <= "00";
		
		elsif inst = X"0011" then --	CBA	(Compara A - B)
			selregr <= X"1";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"2";
			selresult <= "00";
			selc <= '1';
			cadj <= '1';
			selfalgs <= X"3";
			selbranch <= "000";
			vf <= '1';
			selregw <= "000";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"007E" then	--	JMP	#dir_16_bits	(Salta a dir.)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '0';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '0';
			cadj <= '0';
			selfalgs <= X"0";
			selbranch <= "000";
			vf <= '0';
			selregw <= "000";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"0012" then	--	BLO	#dir_16_bits	(Salta a dir. si N = 1)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '0';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '0';
			cadj <= '0';
			selfalgs <= X"0";
			selbranch <= "110";
			vf <= '1';
			selregw <= "000";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"0001" then -- NOP
			selregr <= X"0";
			sels1 <= '0';
			sr <= '0';
			cin <= '0';
			sels2 <= '0';
			seldato <= '0';
			selsrc <= "000";
			seldir <= "00";
			selop <= X"0";
			selresult <= "00";
			selc <= '0';
			cadj <= '0';
			selfalgs <= X"0";
			selbranch <= "000";
			vf <= '1';
			selregw <= "000";
			memw <= '0';
			seldirw <= "00";
		end if;
	end process;
end Behavioral;
