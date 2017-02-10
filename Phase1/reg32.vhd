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
	reg32_process : process (clr, clk) is 
	begin
		if (clr = '1') then
			to_bm_in <= "00000000000000000000000000000000";
		elsif (rising_edge(clk)) then
			if (enable = '1') then
				-- store bus data into register
				to_bm_in <= from_bm_out;
			end if;
		end if;
	end process reg32_process;
end architecture behavioral;
