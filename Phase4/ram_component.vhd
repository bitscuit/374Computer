library ieee;
use ieee.std_logic_1164.all;

-- package for megafunction ram

package ram_component is
	component ram
		port(
			-- input
			address : in std_logic_vector(8 DOWNTO 0);
			clock : in std_logic := '1';
			data : in std_logic_vector(31 DOWNTO 0);
			rden : in std_logic  := '1';
			wren : in std_logic;
			
			-- output
			q : out std_logic_vector(31 DOWNTO 0)
		);
	end component;
end package;