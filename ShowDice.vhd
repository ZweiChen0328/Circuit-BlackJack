Library IEEE;
Use IEEE.std_logic_1164.all;

Entity ShowDice is
port (Z:in std_logic_vector(2 downto 0);
		o: out std_logic_vector(6 downto 0 ));
end ShowDice;

Architecture a of ShowDice is

Begin 		
			With Z select 
			o<="0001000" when "001",
				"1000001" when "010",
				"1001001" when "011",
				"1010101" when "100",
				"1011101" when "101",
				"1110111" when "110",
				"0000000" when OTHERS;

end a;