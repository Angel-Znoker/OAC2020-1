library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memoria is
	port(	registro : in std_logic_vector(2 downto 0);
			prueba : out std_logic_vector(1 downto 0);
			liga : out std_logic_vector(2 downto 0);
			vf : out std_logic;
			salidasF : out std_logic_vector(3 downto 0);
			salidasV : out std_logic_vector(3 downto 0));
end memoria;

architecture Behavioral of memoria is
	type memory is array (0 to 7) of std_logic_vector(13 downto 0);
	signal contenido : std_logic_vector(13 downto 0);
	
	constant mem : memory := (	"10001001111011",
										"00001100000000",
										"01010010001000",
										"11000100110001",
										"00000001010101",
										"00000000000000",
										"00000000000000",
										"00000000000000");

	begin
	
		contenido <= mem(conv_integer(registro));
		prueba <= contenido(13 downto 12);
		vf <= contenido(11);
		liga <= contenido(10 downto 8);
		salidasF <= contenido(7 downto 4);
		salidasV <= contenido(3 downto 0);
		
end Behavioral;