library ieee;
use ieee.std_logic_1164.all;

-- 2-to-1 multiplexer with word size inputs and output

entity mux2_word_size is
	port(
		-- input
		to_mux2_word1, to_mux2_word2 : in std_logic_vector(31 downto 0);
		mux2_word_sel : in std_logic;
		
		--output
		from_mux2_word : out std_logic_vector(31 downto 0)
	);
end entity;

architecture behavioral of mux2_word_size is
begin
	-- select first input when the select control signal is 0
	-- select second input when the select control signal is 1
	from_mux2_word <= to_mux2_word1 when mux2_word_sel = '0' else
							to_mux2_word2; -- when sel = '1'
end architecture behavioral;