library ieee;
use ieee.std_logic_1164.all;

-- package for memory data register

package mdr_component is
	component mdr
	port(
		-- input
		to_mdr1, to_mdr2 : in std_logic_vector(31 downto 0);
		clear, clock, mdr_enable : in std_logic;
		mem_read : in std_logic;
		
		-- output
		from_mdr : out std_logic_vector(31 downto 0)
	);
	end component;
end package;