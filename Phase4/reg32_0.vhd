library ieee;
use ieee.std_logic_1164.all;
use work.reg32_component.all;

-- register 0
-- actis like a normal reg32 except
-- outputs 0 when ba_out signal is asserted

entity reg32_0 is
	port(
		-- input
		to_reg0 : in std_logic_vector(31 downto 0);
		clear, clock, reg0_enable : in std_logic;
		ba_out : in std_logic;
		
		-- output
		from_reg0 : out std_logic_vector(31 downto 0)
	);
end entity reg32_0;

architecture structural of reg32_0 is
	signal from_and : std_logic_vector(31 downto 0) := x"00000000";
begin
	-- 32 bit register
	reg0 : reg32
	port map(
		to_reg32 => to_reg0,
		clear => clear,
		clock => clock,
		reg32_enable => reg0_enable,
		from_reg32 => from_and
	);
	
	from_reg0 <= from_and when ba_out = '0' else
					 x"00000000"; -- when ba_out is asserted
end architecture structural;