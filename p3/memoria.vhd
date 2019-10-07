library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memoria is
	port(	direccion : in std_logic_vector(5 downto 0);
			liga : out std_logic_vector(2 downto 0);
			salidas : out std_logic_vector(4 downto 0));
end memoria;

architecture Behavioral of memoria is
	type memory is array (0 to 63) of std_logic_vector(7 downto 0);
	signal contenido : std_logic_vector(7 downto 0);
	
	constant mem : memory := (	"01101011",
										"01101011",
										"00111001",
										"00111001",
										"01101011",
										"01101011",
										"00111001",
										"00111001",
										
										"01000000",
										"01000000",
										"01000000",
										"01000000",
										"01000000",
										"01000000",
										"01000000",
										"01000000",
										
										"00101001",
										"10001000",
										"00101001",
										"10001000",
										"00101001",
										"10001000",
										"00101001",
										"10001000",
										
										"01010000",
										"01010000",
										"01010000",
										"01010000",
										"10010000",
										"10010000",
										"10010000",
										"10010000",
										
										"00001010",
										"00001010",
										"00001010",
										"00001010",
										"00001010",
										"00001010",
										"00001010",
										"00001010",
										
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000",
										"00000000");

	begin
	
		contenido <= mem(conv_integer(direccion));
	
		liga <= contenido(7 downto 5);
		salidas <= contenido(4 downto 0);
end Behavioral;