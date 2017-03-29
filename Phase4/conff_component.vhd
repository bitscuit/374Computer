library ieee;
use ieee.std_logic_1164.all;

-- package for conff

package conff_component is
	component conff 
		port(
			-- input 
			branch_code : in std_logic_vector(1 downto 0); -- from the last 2 bits of IR 
			to_conff : in std_logic_vector(31 downto 0); -- from the bus
			con_in : in std_logic;
			
			-- output
			from_conff : out std_logic -- to control unit
		);
	end component;
end package;