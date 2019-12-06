library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity u_detencion is
	Port(	SelSrc		: in STD_LOGIC_VECTOR (2 downto 0);
			MemWE4		: in STD_LOGIC;
			SelRegR		: in STD_LOGIC_VECTOR(3 downto 0);
			SelRegWE2	: in STD_LOGIC_VECTOR(2 downto 0);
			SelRegWE3	: in STD_LOGIC_VECTOR(2 downto 0);
			PCWrite		: out STD_LOGIC := '1';
			IFIDWrite	: out STD_LOGIC := '1';
			SelCtrl		: out STD_LOGIC := '0';
			SelD			: out STD_LOGIC:='0');
end u_detencion;

architecture Behavioral of u_detencion is

begin
	process (SelSrc, MemWE4, SelRegR, SelRegWE2, SelRegWE3) begin
		-- riesgos por accesos múltiples a memoria
		if (SelSrc = "010" or SelSrc = "100" or SelSrc = "110") and MemWE4 = '1' then
			PCWrite <= '0';
			IFIDWrite <= '0';
			SelD <= '1';
			SelCtrl <= '1';	
		elsif (SelSrc = "010" or SelSrc = "100" or SelSrc = "110") and MemWE4 = '0' then
			PCWrite <= '1';
			IFIDWrite <= '1';
			SelD <= '0';
			SelCtrl <= '0';

		else
			PCWrite <= '1';
			IFIDWrite <= '1';
			SelD <= '0';
			SelCtrl <= '0';
		end if;
	end process;

	
end Behavioral;
