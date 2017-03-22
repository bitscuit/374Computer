library ieee;
use ieee.std_logic_1164.all;

entity and32 is
port (
	BAout : in std_logic;
	r0val : in std_logic_vector(31 downto 0);
	
	to_bm_in : out std_logic_vector(31 downto 0)
);
end entity and32;

architecture behavioral of and32 is
begin
to_bm_in(31) 	<= not BAout and r0val(31);
to_bm_in(30) 	<= not BAout and r0val(30);
to_bm_in(29) 	<= not BAout and r0val(29);
to_bm_in(28) 	<= not BAout and r0val(28);
to_bm_in(27) 	<= not BAout and r0val(27);
to_bm_in(26) 	<= not BAout and r0val(26);
to_bm_in(25) 	<= not BAout and r0val(25);
to_bm_in(24) 	<= not BAout and r0val(24);
to_bm_in(23) 	<= not BAout and r0val(23);
to_bm_in(22) 	<= not BAout and r0val(22);
to_bm_in(21) 	<= not BAout and r0val(21);
to_bm_in(20) 	<= not BAout and r0val(20);
to_bm_in(19) 	<= not BAout and r0val(19);
to_bm_in(18) 	<= not BAout and r0val(18);
to_bm_in(17) 	<= not BAout and r0val(17);
to_bm_in(16) 	<= not BAout and r0val(16);
to_bm_in(15) 	<= not BAout and r0val(15);
to_bm_in(14) 	<= not BAout and r0val(14);
to_bm_in(13) 	<= not BAout and r0val(13);
to_bm_in(12) 	<= not BAout and r0val(12);
to_bm_in(11) 	<= not BAout and r0val(11);
to_bm_in(10) 	<= not BAout and r0val(10);
to_bm_in(9) 	<= not BAout and r0val(9);
to_bm_in(8) 	<= not BAout and r0val(8);
to_bm_in(7) 	<= not BAout and r0val(7);
to_bm_in(6) 	<= not BAout and r0val(6);
to_bm_in(5) 	<= not BAout and r0val(5);
to_bm_in(4) 	<= not BAout and r0val(4);
to_bm_in(3) 	<= not BAout and r0val(3);
to_bm_in(2) 	<= not BAout and r0val(2);
to_bm_in(1) 	<= not BAout and r0val(1);
to_bm_in(0) 	<= not BAout and r0val(0);

end architecture behavioral;
