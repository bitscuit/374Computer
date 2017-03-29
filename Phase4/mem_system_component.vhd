library ieee;
use ieee.std_logic_1164.all;

-- package for memory subsystem

package mem_system_component is
	component mem_system
		port(
			-- input
			to_mdr, to_mar : in std_logic_vector(31 downto 0);
			clear, clock, mdr_enable, mar_enable, mem_read, mem_write : in std_logic;
			
			--output
			from_mem : out std_logic_vector(31 downto 0)
		);
	end component;
end package;