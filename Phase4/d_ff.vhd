library ieee;
use ieee.std_logic_1164.all;

-- General purpose d-flip flop

entity d_ff is
	port(
		-- input
		d : in std_logic;
		clock : in std_logic;
		
		-- output
		q : out std_logic;
		q_bar : out std_logic
	);
end entity d_ff;

architecture behavioral of d_ff is
	
begin 
	-- d flip flop logic
	dff : process(d, clock)
	
	begin
		if (clock'event and clock = '1') then
			if (d = '1') then
				q <= '1';
				q_bar <= '0';
			else
				q <= '0';
				q_bar <= '1';
			end if;
		end if;
	end process dff;
end architecture behavioral;