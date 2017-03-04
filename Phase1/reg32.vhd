library IEEE;
use IEEE.std_logic_1164.all;

entity reg32 is 
port(
	-- input
	from_bm_out : in std_logic_vector (31 downto 0);
	clr, clk, enable : in std_logic;
	
	-- output
	to_bm_in : out std_logic_vector (31 downto 0)
);
end entity reg32;

architecture behavioral of reg32 is
begin
	reg32_process : process (clk, from_bm_out, enable, clr) is 
	begin
		if (clr = '1') then
			to_bm_in <= x"00000000";
		elsif ( clk = '1') then
			if (enable = '1') then
				-- store bus data into register
				to_bm_in <= from_bm_out;
			end if;
		end if;
	end process reg32_process;
end architecture behavioral;
