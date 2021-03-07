library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controlStateToDisplay is
port (pulse2, clk: in STD_LOGIC;
		x: in STD_LOGIC_vector(4 downto 0);
		y: out STD_LOGIC_vector(4 downto 0));
end controlStateToDisplay;

architecture a of controlStateToDisplay is
signal state:STD_LOGIC_vector(4 downto 0):="00000";
signal x1:STD_LOGIC_vector(4 downto 0):="00000";
	begin
	process(clk,x,pulse2)	
			begin
			if(clk'event and clk='1') then
				if(x(4)=not x1(4) or x(3)=not x1(3) or x(2)=not x1(2) or x(1)=not x1(1) or x(0)=not x1(0))and pulse2='0' then
					state <= x;
					x1 <= x;
				elsif pulse2='1' then
					state <= "00000";
				end if;
			end if;
		y<=state;	
	end process;
end a ;