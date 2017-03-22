library ieee;
use ieee.std_logic_1164.all;

entity confflogic is
port(
	IRin 			: in std_logic_vector(31 downto 0);
	busmuxout 	: in std_logic_vector(31 downto 0);
	
	conff_out 	: out std_logic
);
end entity confflogic;

architecture behavioral of confflogic is
begin
confflogic_proc : process(IRin, busmuxout)
	variable d0, d1, d2, d3 			: std_logic;
	variable and0, and1, and2, and3 : std_logic;
	variable norGate : std_logic;
	variable orGate : std_logic;
begin 
	d0 := '0';
	d1 := '0';
	d2 := '0';
	d3 := '0';
	if IRin(1 downto 0) = "00" then
		d0 := '1';
	elsif IRin(1 downto 0) = "01" then
		d1 := '1';
	elsif IRin(1 downto 0) = "10" then
		d2 := '1';
	else
		d3 := '1';
	end if;

	norGate := not (busmuxout(31) or busmuxout(30) or busmuxout(29) or busmuxout(28) or busmuxout(27)
			or	busmuxout(26) or busmuxout(25) or busmuxout(24) or busmuxout(23) or busmuxout(22)
			or	busmuxout(21) or busmuxout(20) or busmuxout(19) or busmuxout(18) or busmuxout(17)
			or	busmuxout(16) or busmuxout(25) or busmuxout(14) or busmuxout(13) or busmuxout(12)
			or	busmuxout(11) or busmuxout(10) or busmuxout(9)  or busmuxout(8)  or busmuxout(7)
			or	busmuxout(6)  or busmuxout(5)  or busmuxout(4)  or busmuxout(3)  or busmuxout(2)
			or	busmuxout(1)  or busmuxout(0));
		
	and0 := d0 and norGate;
	and1 := d1 and not norGate;
	and2 := d2 and not busmuxout(31);
	and3 := d3 and busmuxout(31);

conff_out <= and0 or and1 or and2 or and3;

end process confflogic_proc;

end architecture behavioral;