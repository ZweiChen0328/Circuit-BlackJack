Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Dice is
port (clk,sw,reset:in std_logic;
		Z: out std_logic_vector(2 downto 0 ));
end Dice;

Architecture a of Dice is
signal op:std_logic_vector(2 downto 0);
Begin 		
	Process(clk,reset)
	BEGIN
	
	If clk'event and clk ='1' and sw='1' then
		case op is
			when "001"=>
				op<="010";
			when "010"=>
				op<="011";
			when "011"=>
				op<="100";
			when "100"=>
				op<="101";
			when "101"=>
				op<="110";
			when "110"=>
				op<="001";
			when OTHERS=>
				op<="001";
		end case;
	 
	end if;
	
		If reset='1'then
			op<="000";
		end if;
	
	END PROcess;
	
	z<=op;
end a;