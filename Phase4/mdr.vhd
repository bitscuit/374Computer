library ieee;
use ieee.std_logic_1164.all;
use work.reg32_component.all;
use work.mux2_word_size_component.all;

-- memory data register

entity mdr is
	port(
		-- input
		to_mdr1, to_mdr2 : in std_logic_vector(31 downto 0);
		clear, clock, mdr_enable : in std_logic;
		mem_read : in std_logic;
		
		-- output
		from_mdr : out std_logic_vector(31 downto 0)
	);
end entity mdr;

architecture structural of mdr is
	signal mux_to_reg : std_logic_vector(31 downto 0); -- wire from output of mux to input of register
begin
	-- multiplexer to decide whether to take data from bus or from RAM
	mdr_mux : mux2_word_size
	port map(
		to_mux2_word1 => to_mdr1,
		to_mux2_word2 => to_mdr2,
		mux2_word_sel => mem_read,
		from_mux2_word => mux_to_reg
	);
	-- register to hold the data from the output of the multiplexer
	mdr_reg : reg32
	port map(
		to_reg32 => mux_to_reg,
		clear => clear,
		clock => clock,
		reg32_enable => mdr_enable,
		from_reg32 => from_mdr
	);
end architecture structural;
