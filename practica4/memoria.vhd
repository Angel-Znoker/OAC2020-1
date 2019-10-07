library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memoria is
	port(	registro : in std_logic_vector(2 downto 0);
			prueba : out std_logic_vector(1 downto 0);
			ligaF : out std_logic_vector(2 downto 0);
			ligaV : out std_logic_vector(2 downto 0);
			salidasF : out std_logic_vector(4 downto 0);
			salidasV : out std_logic_vector(4 downto 0));
end memoria;

architecture Behavioral of memoria is
	type memory is array (0 to 7) of std_logic_vector(17 downto 0);
	signal contenido : std_logic_vector(17 downto 0);
	
	constant mem : memory := (	"010110010101111001",
										"110100100000000000",
										"100011000100101000",
										"000101001000010000",
										"110000000101001010",
										"110000000000000000",
										"110000000000000000",
										"110000000000000000");

	begin
	
		contenido <= mem(conv_integer(registro));
		prueba <= contenido(17 downto 16);
		ligaF <= contenido(15 downto 13);
		ligaV <= contenido(12 downto 10);
		salidasF <= contenido(9 downto 5);
		salidasV <= contenido(4 downto 0);
		
end Behavioral;