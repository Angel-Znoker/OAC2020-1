library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memoria is
	port(	edoPresente : in std_logic_vector(3 downto 0);
			prueba, mi : out std_logic_vector(1 downto 0);
			liga : out std_logic_vector(3 downto 0);
			vf : out std_logic;
			salidas : out std_logic_vector(3 downto 0));
end memoria;

architecture Behavioral of memoria is
	type memory is array (0 to 15) of std_logic_vector(12 downto 0);
	signal contenido : std_logic_vector(12 downto 0);
	
	constant mem : memory := (	"1000000010011",
										"1000000100110",
										"1001000001000",
										"0000100110100",
										"1111101100001",
										"1000100010011",
										"1000001111100",
										"1000100001000",
										"1000010010001",
										"1111110110000",
										"1000100010011",
										"1000011001010",
										"1000100001000",
										"0110111010100",
										"1000110010000",
										"1000100000000");

	begin
	
		contenido <= mem(conv_integer(edoPresente));
		prueba <= contenido(12 downto 11);
		vf <= contenido(10);
		mi <= contenido(9 downto 8);
		liga <= contenido(7 downto 4);
		salidas <= contenido(3 downto 0);
			
end Behavioral;