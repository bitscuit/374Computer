library ieee;
use ieee.std_logic_1164.all;

-- package for register 0
-- register 0 acts like a normal reg32 in normal circumstances
-- register 0 will output 0 when ba_out signal is asserted

package reg32_0_component is
	component reg32_0
		port(
			-- input
			to_reg0 : in std_logic_vector(31 downto 0);
			clear, clock, reg0_enable : in std_logic;
			ba_out : in std_logic;
			
			-- output
			from_reg0 : out std_logic_vector(31 downto 0)
		);
	end component;
end package;