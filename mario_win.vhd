library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mario_win is
port (
	sw,I1,RESET: in std_logic;
	CLK: in std_logic;
	BEEP:out std_logic
);
end mario_win;

architecture arch of mario_win is
signal PULSE: std_logic;
signal te:std_logic;
signal PITCH: integer range 0 to 22;
signal BEAT ,LEN: integer range 0 to 8;
signal COUNT: integer range 0 to 127;
signal FREQ: integer range 0 to 127;
signal INDEX: integer range 0 to 22;
signal DIVIDER: integer range 0 to 16384;
begin
	c1:process(CLK,RESET,I1,te)
	begin
		case PITCH is
		when 1 =>
		FREQ <= 32768/262;
		when 2 =>
		FREQ <= 32768/294;
		when 3 =>
		FREQ <= 32768/330;
		when 4 =>
		FREQ <= 32768/349;
		when 5 =>
		FREQ <= 32768/392;
		when 6 =>
		FREQ <= 32768/440;
		when 7 =>
		FREQ <= 32768/494;
		when 8 =>
		FREQ <= 32768/523;
		when 9 =>
		FREQ <= 32768/587;
		when 10 =>
		FREQ <= 32768/659;
		when 11 =>
		FREQ <= 32768/698;
		when 12 =>
		FREQ <= 32768/784;
		when 13 =>
		FREQ <= 32768/880;
		when 14 =>
		FREQ <= 32768/988;
		when 15 =>
		FREQ <= 32768/1046;
		when 16 =>
		FREQ <= 32768/1175;
		when 17 =>
		FREQ <= 32768/1318;
		when 18 =>
		FREQ <= 32768/1397;
		when 19 =>
		FREQ <= 32768/1568;
		when 20 =>
		FREQ <= 32768/1760;
		when 21 =>
		FREQ <= 32768/1976;	
		when 22 =>
		FREQ <= 32768/2200;
		
		when others =>
		FREQ <= 0;
	end case;
	
	if CLK'event and CLK = '1' then
		if RESET = '0' then
			PULSE <= '0';
			te <= '0';
			LEN <= 0;
			COUNT <= 0;
			INDEX <= 0;
			DIVIDER <= 0;
		elsif FREQ = 0 then
			COUNT <= 0;
		else
			COUNT <= COUNT+1;
				if COUNT = FREQ/2 then
					PULSE <= not PULSE;
					COUNT <= 0;
				end if;
		end if;
		
		if DIVIDER >= 2000 then
			DIVIDER <= 0;
			if LEN < BEAT and sw ='1' then
				LEN <= LEN + 1;
			elsif LEN >= BEAT and I1 = '1' and sw='1' then
				LEN <= 0;
				INDEX <= INDEX +1;
				if INDEX > 21 then
					te <= '1' ;
					INDEX <= 0;
				end if;
			end if;
		else
			DIVIDER <= DIVIDER + 1 ;
		end if;
	end if;
	end process c1;
	
	c2:process(sw,CLK,RESET,I1,te)
	begin	
		if I1 = '1' and te ='0' and sw ='1' then
		case INDEX is
			when 0 =>
				PITCH <= 0;
				BEAT <= 2;
			when 1 =>
				PITCH <= 5;
				BEAT <= 2;
			when 2 =>
				PITCH <= 8;
				BEAT <= 2;
			when 3 =>
				PITCH <= 8;
				BEAT <= 2;
			when 4 =>
				PITCH <= 10;
				BEAT <= 2;
			when 5 =>
				PITCH <= 12;
				BEAT <= 4;
				
			when 6 =>
				PITCH <= 10;
				BEAT <= 4;
			when 7 =>
				PITCH <= 5;
				BEAT <= 2;
			when 8 =>
				PITCH <= 9;
				BEAT <= 2;
				
			when 9 =>
				PITCH <= 9;
				BEAT <= 2;
				
			when 10 =>
				PITCH <= 11;
				BEAT <= 2;
				
			when 11 =>
				PITCH <= 13;
				BEAT <= 4;
			
			when 12 =>
				PITCH <= 11;
				BEAT <= 4;
				
			when 13 =>
				PITCH <= 5;
				BEAT <= 2;	
				
			when 14 =>
				PITCH <= 10;
				BEAT <= 2;
			
			when 15 =>
				PITCH <= 10;
				BEAT <= 2;	
				
			when 16 =>
				PITCH <= 12;
				BEAT <= 2;				
				
			when 17 =>
				PITCH <= 14;
				BEAT <= 2;
				
			when 18 =>
				PITCH <= 0;
				BEAT <= 1;	
				
			when 19 =>
				PITCH <= 14;
				BEAT <= 4;
				
			when 20 =>
				PITCH <= 15;
				BEAT <= 8;
				
			when 21 =>
				PITCH <= 15;
				BEAT <= 4;
				
			when 22 =>
				PITCH <= 0;
				BEAT <= 0;
				
			when others =>
				PITCH <= 0;
				BEAT <= 0;	
		end case;		
		else
			PITCH <= 0;
		end if;
	end process c2;
	with FREQ select
		BEEP <= '0' when 0,
		PULSE when others;
end arch;