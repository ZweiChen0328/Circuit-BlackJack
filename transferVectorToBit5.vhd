library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity transferVectorToBit5 is
port (x: in STD_LOGIC_vector(4 downto 0);
		y4, y3, y2, y1, y0: out STD_LOGIC);
end transferVectorToBit5;

architecture a of transferVectorToBit5 is 
	begin
		y4 <= x(4);
		y3 <= x(3);
		y2 <= x(2);
		y1 <= x(1);
		y0 <= x(0);
	end a ;