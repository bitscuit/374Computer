library ieee;
use ieee.std_logic_1164.all;

-- 4-to-16 decoder

entity decoder4_16 is
	port(
		-- input
		to_decoder4 : in std_logic_vector(3 downto 0);
		
		-- output
		from_decoder4_0 : out std_logic;
		from_decoder4_1 : out std_logic;
		from_decoder4_2 : out std_logic;
		from_decoder4_3 : out std_logic;
		from_decoder4_4 : out std_logic;
		from_decoder4_5 : out std_logic;
		from_decoder4_6 : out std_logic;
		from_decoder4_7 : out std_logic;
		from_decoder4_8 : out std_logic;
		from_decoder4_9 : out std_logic;
		from_decoder4_10 : out std_logic;
		from_decoder4_11 : out std_logic;
		from_decoder4_12 : out std_logic;
		from_decoder4_13 : out std_logic;
		from_decoder4_14 : out std_logic;
		from_decoder4_15 : out std_logic
	);
end entity decoder4_16;

architecture behavioral of decoder4_16 is
	
begin
from_decoder4_0 <= '1' when to_decoder4 = "0000" else
							'0';
from_decoder4_1 <= '1' when to_decoder4 = "0001" else
							'0';
from_decoder4_2 <= '1' when to_decoder4 = "0010" else
							'0'; 
from_decoder4_3 <= '1' when to_decoder4 = "0011" else 
							'0';
from_decoder4_4 <= '1' when to_decoder4 = "0100" else 
							'0';
from_decoder4_5 <= '1' when to_decoder4 = "0101" else 
							'0';
from_decoder4_6 <= '1' when to_decoder4 = "0110" else 
							'0';
from_decoder4_7 <= '1' when to_decoder4 = "0111" else 
							'0';
from_decoder4_8 <= '1' when to_decoder4 = "1000" else 
							'0';
from_decoder4_9 <= '1' when to_decoder4 = "1001" else 
							'0';
from_decoder4_10 <= '1' when to_decoder4 = "1010" else 
							'0';
from_decoder4_11 <= '1' when to_decoder4 = "1011" else 
							'0';
from_decoder4_12 <= '1' when to_decoder4 = "1100" else 
							'0';
from_decoder4_13 <= '1' when to_decoder4 = "1101" else 
							'0';
from_decoder4_14 <= '1' when to_decoder4 = "1110" else 
							'0';
from_decoder4_15 <= '1' when to_decoder4 = "1111" else 
							'0';
end architecture behavioral;