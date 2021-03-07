library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controlStateToDisplay3Bits is
port (pulse2, clk: in STD_LOGIC;
		x: in STD_LOGIC_vector(2 downto 0);
		y: out STD_LOGIC_vector(2 downto 0));
end controlStateToDisplay3Bits;

architecture a of controlStateToDisplay3Bits is
signal state:STD_LOGIC_vector(2 downto 0):="000";
signal x1:STD_LOGIC_vector(2 downto 0):="000";
	begin
	process(clk,x,pulse2)	
			begin
			if(clk'event and clk='1') then
				if(x(2)=not x1(2) or x(1)=not x1(1) or x(0)=not x1(0))and pulse2='0' then
					state <= x;
					x1 <= x;
				elsif pulse2='1' then
					state <= "000";
				end if;
			end if;
		y<=state;	
	end process;
end a ;