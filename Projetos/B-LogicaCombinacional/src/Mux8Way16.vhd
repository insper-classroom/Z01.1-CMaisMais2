library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Mux8Way16 is
begin
	
	q <= a when sel = "000" else
		 b when sel = "001" else
		 c when sel = "010" else
		 d when sel = "011" else
		 e when sel = "100" else
		 f when sel = "101" else
		 g when sel = "110" else
		 h;


end architecture;
