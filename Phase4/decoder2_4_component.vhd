library ieee;
use ieee.std_logic_1164.all;

-- package for 2-to-4 decoder

package decoder2_4_component is
	component decoder2_4 
		port(
			-- input
			to_decoder2 : in std_logic_vector(1 downto 0);
		
			-- output
			from_decoder2_0, from_decoder2_1, from_decoder2_2, from_decoder2_3 : out std_logic
		);
	end component;
end package;