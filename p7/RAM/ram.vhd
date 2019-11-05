library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
	Port( 
			data : inout std_logic_vector(7 downto 0);
			Wn : in std_logic;
			CSn : in std_logic;
			address : in std_logic_vector(15 downto 0);
			var_n, var_i, suma : out std_logic_vector(7 downto 0)
			);
end ram;

architecture Behavioral of ram is
	type memory is array(0 to 255) of std_logic_vector(7 downto 0);
	signal mem : memory;
	signal data_out : std_logic_vector(7 downto 0) := X"00";
	
	begin
	
	-- Memory Write Block
	MEM_WRITE: process (address, CSn, Wn, data) 
	begin
		-- mem(0) <= X"C6";
		-- mem(1) <= X"02";
		-- mem(2) <= X"86";
		-- mem(3) <= X"00";
		-- mem(4) <= X"1B";
		-- mem(5) <= X"7E";
		-- mem(6) <= X"00";
		-- mem(7) <= X"04";
		
		-- LDAA 03
		mem(0) <= X"86";
		mem(1) <= X"03";
		-- STAA 24
		mem(2) <= X"A7";
		mem(3) <= X"24";
		-- LDAA 00
		mem(4) <= X"86";
		mem(5) <= X"00";
		-- STAA 25
		mem(6) <= X"A7";
		mem(7) <= X"25";
		-- LDAA 00
		mem(8) <= X"86";
		mem(9) <= X"00";
		-- STAA 26
		mem(10) <= X"A7";
		mem(11) <= X"26";
		-- GTAA 24
		mem(12) <= X"B3";
		mem(13) <= X"24";
		-- GTAB 26
		mem(14) <= X"C3";
		mem(15) <= X"26";
		-- CMP
		mem(16) <= X"12";
		-- JE 0021
		mem(17) <= X"8E";
		mem(18) <= X"00";
		mem(19) <= X"21";
		-- GTAA 25
		mem(20) <= X"B3";
		mem(21) <= X"25";
		-- ABA
		mem(22) <= X"1B";
		-- STAA 25
		mem(23) <= X"A7";
		mem(24) <= X"25";
		-- LDAA 01
		mem(25) <= X"86";
		mem(26) <= X"01";
		-- ABA
		mem(27) <= X"1B";
		-- STAA 26
		mem(28) <= X"A7";
		mem(29) <= X"26";
		-- JMP 000C
		mem(30) <= X"7E";
		mem(31) <= X"00";
		mem(32) <= X"0C";
		-- JMP 0021
		mem(33) <= X"7E";
		mem(34) <= X"00";
		mem(35) <= X"21";
		
		if (CSn = '0' and Wn = '0') then
			mem(conv_integer(unsigned(address))) <= data;
		end if;
	end process;

	TRI_STATE: process (address, CSn, Wn, data_out)
	begin
		if (CSn = '0' and Wn = '1') then
			data <= data_out;
		else 
			data <= (others => 'Z');
		end if;
	end process;
		
 -- Memory Read Block
	MEM_READ: process (address, CSn, Wn, mem) 
	begin
		if (CSn = '0' and Wn = '1') then
			data_out <= mem(conv_integer(unsigned(address)));
		else
			data_out <= (others => '0');
		end if;
	end process;
	
	var_n <= mem(36);
	suma <= mem(37);
	var_i <= mem(38);
	
end Behavioral;
