library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity div2 is
	port(clk:in std_logic;
		  o1:out std_logic
		  );
end div2;

architecture a of div2 is
	signal arr: std_logic_vector(4 downto 0);
	signal cnt: std_logic;
	begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			if arr < "10000"  then
				cnt <= '1';
			else
				cnt <= '0';
			end if;
			arr <= arr +1;
		end if;

	end process;
	o1<=cnt;
end a;