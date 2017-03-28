library ieee;
use ieee.std_logic_1164.all;

-- 32 bit register

entity reg32 is 
port(
	-- input
	to_reg32 : in std_logic_vector(31 downto 0);
	clear, clock, reg32_enable : in std_logic;
	
	-- output
	from_reg32 : out std_logic_vector(31 downto 0)
);
end entity reg32;

architecture behavioral of reg32 is
begin
	-- logic of 32 bit register
	reg32_process : process (clock, to_reg32, reg32_enable, clear) is 
	begin
		-- set register value to 0 when clear is asserted
		if (clear = '1') then
			from_reg32 <= x"00000000";
		-- register value is equal to input value when clock and enable are asserted
		elsif (clock = '1') then
			if (reg32_enable = '1') then
				from_reg32 <= to_reg32;
			end if;
		end if;
	end process reg32_process;
end architecture behavioral;
