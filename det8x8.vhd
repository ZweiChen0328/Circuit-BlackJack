Library IEEE;
Use IEEE.std_logic_1164.all;

Entity det8x8 is
port (p1,p2:in std_logic;
		o: out std_logic);
end det8x8;

Architecture a of det8x8 is

signal flag:std_logic:='0';
signal f:std_logic:='1';
signal c:std_logic:='1';

Begin 	
	Process(p1,p2)
	BEGIN
	
	if p1='0' then
			flag<='1';
	end if;
	
	
	if  p2='0' then
			flag<='0';
	end if;
	
		
		If flag <='1'then
			c<= not f;
		end if;
			
		if flag<='0'then
			c<='1';
		end if;
		
	END PROcess;
	
	o<=c;
end a;