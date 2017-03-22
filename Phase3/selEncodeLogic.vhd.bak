library IEEE;
use IEEE.std_logic_1164.all;

-- 32 bit register

entity regMAR is 
port(
	-- input
	from_bm_out : in std_logic_vector (31 downto 0);
	clr, clk, enable : in std_logic;
	
	-- output
	address : out std_logic_vector (8 downto 0)
);
end entity regMAR;

architecture behavioral of regMAR is
begin
	regMAR_process : process (clk, from_bm_out, enable, clr) is 
	begin
		if (clr = '1') then
			address <= "000000000";
		elsif ( clk = '1') then
			if (enable = '1') then
				-- store bus data into register
				address <= from_bm_out(8 downto 0);
			end if;
		end if;
	end process regMAR_process;
end architecture behavioral;
