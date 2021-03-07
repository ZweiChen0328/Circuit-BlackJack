library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity stateChange is
port (pulse1: in STD_LOGIC;
		z : out STD_LOGIC_vector(4 downto 0));
end stateChange;

architecture a of stateChange is
signal state :STD_LOGIC_vector(4 downto 0):="00000";
begin
	process(pulse1)
		begin
		if pulse1'event and pulse1='1' then
				case state is
					when "10000" =>  			--16
						state <= "10100";
					when "10100" =>  			--20
						state <= "10010";
					when "10010" =>			--18
						state <= "10001";
					when "10001" =>			--17		
						state <= "10011";
					when "10011" =>			--19
						state <= "10101";
					when "10101" =>			--21
						state <= "10000";
					when others => 
						state <= "10000";
				end case;		
		end if;
		z <= state;	 
	end process;

end a ;