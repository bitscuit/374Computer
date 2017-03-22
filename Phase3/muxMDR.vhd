library IEEE;
use IEEE.std_logic_1164.all;

-- 2-to-1 multiplexer for the memory data register
-- to choose between input from memory or the bus

entity muxMDR is
port(
	-- input
	from_bm_out : in std_logic_vector (31 downto 0);
	m_data_in 	: in std_logic_vector(31 downto 0);
	sel 			: in std_logic;
	
	-- output
	muxmdr_output : out std_logic_vector (31 downto 0));
end entity muxMDR;

architecture behavioral of muxMDR is
begin
with sel select
muxmdr_output <= 	from_bm_out when '0',
						m_data_in when '1',
						m_data_in when others;
end architecture behavioral;
						