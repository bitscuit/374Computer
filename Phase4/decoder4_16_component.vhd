library ieee;
use ieee.std_logic_1164.all;

-- package for 4-to-16 decoder

package decoder4_16_component is
	component decoder4_16
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
	end component;
end package;