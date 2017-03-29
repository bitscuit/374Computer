library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.or_reduce;
use work.decoder2_4_component.all;
use work.d_ff_component.all;

-- conff_logic to determine whether branch condition is met

entity conff is
	port(
		-- input 
		branch_code : in std_logic_vector(1 downto 0); -- from the last 2 bits of IR 
		to_conff : in std_logic_vector(31 downto 0); -- from the bus
		con_in : in std_logic;
		
		-- output
		from_conff : out std_logic -- to control unit
	);
end entity conff;

architecture structural of conff is
	signal from_decoder0, from_decoder1, from_decoder2, from_decoder3 : std_logic;
	signal from_and0, from_and1, from_and2, from_and3 : std_logic;
	signal from_nor : std_logic;
	signal from_or : std_logic;

begin
	decoder : decoder2_4
	port map(
		to_decoder2 => branch_code,
		from_decoder2_0 => from_decoder0,
		from_decoder2_1 => from_decoder1,
		from_decoder2_2 => from_decoder2,
		from_decoder2_3 => from_decoder3
	);
	
	dff : d_ff
	port map(
		d => from_or,
		clock => con_in,
		q => from_conff
	);
	
	from_nor <= not or_reduce(to_conff);
	from_and0 <= from_decoder0 and from_nor;
	from_and1 <= from_decoder1 and not from_nor;
	from_and2 <= from_decoder2 and not to_conff(31);
	from_and3 <= from_decoder3 and to_conff(31);
	from_or <= from_and0 or from_and1 or from_and2 or from_and3;
end architecture structural;