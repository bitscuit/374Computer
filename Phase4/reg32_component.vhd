library ieee;
use ieee.std_logic_1164.all;

-- package for 32 bit register component

package reg32_component is
	component reg32
	port(
		-- input
		to_reg32 : in std_logic_vector(31 downto 0);
		clear, clock, reg32_enable : in std_logic;
		
		-- output
		from_reg32 : out std_logic_vector(31 downto 0)
	);
	end component;
end package;