library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenSeg is
	port (
			bcd : in  STD_LOGIC_VECTOR(3 downto 0);
			leds: out STD_LOGIC_VECTOR(6 downto 0));
end entity;

architecture arch of sevenSeg is

begin
	with bcd select
	leds <= "1000000" when "0000", -- 0 
			"1111001" when "0001", -- 1
			"0100100" when "0010", -- 2
			"0110000" when "0011", -- 3
			"0001101" when "0100", -- 4
			"0001010" when "0101", -- 5
			"0000010" when "0110", -- 6
			"1111000" when "0111", -- 7
			"0000000" when "1000", -- 8
			"0001100" when "1001", -- 9
			"0001000" when "1010", -- A
			"0000011" when "1011", -- B
			"1000110" when "1100", -- C
			"0100001" when "1101", -- D
			"0000110" when "1110", -- E
			"0001110" when others; -- F		                      			

end architecture;
