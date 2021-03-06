Library ieee;
Use ieee.std_logic_1164.all;

entity judge is

port( I1,CLK: in std_logic;
		O1: out std_logic);
		end judge;
		
ARCHITECTURE a of judge is
	signal op: std_logic_vector(2 downto 0);
	signal flag:std_logic;
	begin
	with I1 select
		op(0) <= '1' when '1',
				   '0' when others;
process(CLK)
begin
	if CLK'event AND CLK = '1' then
		op(1) <= (not op(2)) and op(0);
		op(2) <= (not op(2)) and op(1) and (not op(0));
	end if;
end process;

		with op select
			O1 <= '1' when "100",
					'1' when "101",
					'0' when others;		
	end a;