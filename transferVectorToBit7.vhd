library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity transferVectorToBit7 is
port (x: in STD_LOGIC_vector(6 downto 0);
		y6, y5, y4, y3, y2, y1, y0: out STD_LOGIC);
end transferVectorToBit7;

architecture a of transferVectorToBit7 is 
	begin
		y6 <= x(6);
		y5 <= x(5);
		y4 <= x(4);
		y3 <= x(3);
		y2 <= x(2);
		y1 <= x(1);
		y0 <= x(0);
	end a ;