library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity transferBitToVector5 is
port (x4, x3, x2, x1, x0: in STD_LOGIC;
		y: out STD_LOGIC_vector(4 downto 0));
end transferBitToVector5;

architecture a of transferBitToVector5 is 
	begin
		y(4) <= x4;
		y(3) <= x3;
		y(2) <= x2;
		y(1) <= x1;
		y(0) <= x0;
	end a ;