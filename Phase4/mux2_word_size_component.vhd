library ieee;
use ieee.std_logic_1164.all;

package mux2_word_size_component is
	component mux2_word_size
		port(
			-- input
			to_mux2_word1, to_mux2_word2 : in std_logic_vector(31 downto 0);
			mux2_word_sel : in std_logic;
			
			--output
			from_mux2_word : out std_logic_vector(31 downto 0)
		);
	end component;
end package;