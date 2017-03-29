library ieee;
use ieee.std_logic_1164.all;

-- 2-to-4 decoder

entity decoder2_4 is
	port(
		-- input
		to_decoder2 : in std_logic_vector(1 downto 0);
		
		-- output
		from_decoder2_0, from_decoder2_1, from_decoder2_2, from_decoder2_3 : out std_logic
	);
end entity decoder2_4;

architecture behavioral of decoder2_4 is
	
begin
	from_decoder2_0 <= '1' when to_decoder2 = "00" else 
								'0';
	from_decoder2_1 <= '1' when to_decoder2 = "01" else
								'0';
	from_decoder2_2 <= '1' when to_decoder2 = "10" else
								'0';
	from_decoder2_3 <= '1' when to_decoder2 = "11" else 
								'0';
end architecture behavioral;