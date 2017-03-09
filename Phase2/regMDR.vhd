library IEEE;
use IEEE.std_logic_1164.all;

entity regMDR is

port(
	-- input
	from_mdmux 	: in std_logic_vector (31 downto 0);
	clr 			: in std_logic;
	clk 			: in std_logic;
	enable 		: in std_logic;
	
	-- output
	mdr_output 	: out std_logic_vector (31 downto 0)
);
end entity regMDR;

architecture behavioral of regMDR is
	-- process depends on certain signals (sensitivity list)
	-- if any of clr or clk change, the process initiates
	BEGIN
	regMDR_process : process (clr, clk) is 
		begin
			if (clr = '1') then
				mdr_output <= "00000000000000000000000000000000";
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					-- store bus data into register
					mdr_output <= from_mdmux;
				end if;
			end if;
		end process regMDR_process;
end architecture behavioral;