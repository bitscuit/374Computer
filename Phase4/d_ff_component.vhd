library ieee;
use ieee.std_logic_1164.all;

-- package for d flip flop

package d_ff_component is
	component d_ff 
		port(
			-- input
			d : in std_logic;
			clock : in std_logic;
			
			-- output
			q : out std_logic;
			q_bar : out std_logic
		);
	end component;
end package;