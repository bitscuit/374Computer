LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_divide0 IS
	PORT
	(
		denom		: IN SIGNED (31 DOWNTO 0);
		numer		: IN SIGNED (31 DOWNTO 0);
		quotient	: OUT SIGNED (31 DOWNTO 0);
		remain	: OUT SIGNED (31 DOWNTO 0)
	);
END lpm_divide0;


ARCHITECTURE SYN OF lpm_divide0 IS

	SIGNAL sub_wire0	: SIGNED (31 DOWNTO 0);
	SIGNAL sub_wire1	: SIGNED (31 DOWNTO 0);



	COMPONENT lpm_divide
	GENERIC (
		lpm_drepresentation		: STRING;
		lpm_hint		: STRING;
		lpm_nrepresentation		: STRING;
		lpm_type		: STRING;
		lpm_widthd		: NATURAL;
		lpm_widthn		: NATURAL
	);
	PORT (
			denom		: IN SIGNED (31 DOWNTO 0);
			numer		: IN SIGNED (31 DOWNTO 0);
			quotient	: OUT SIGNED (31 DOWNTO 0);
			remain	: OUT SIGNED (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	quotient    <= sub_wire0(31 DOWNTO 0);
	remain    <= sub_wire1(31 DOWNTO 0);

	LPM_DIVIDE_component : LPM_DIVIDE
	GENERIC MAP (
		lpm_drepresentation => "SIGNED",
		lpm_hint => "LPM_REMAINDERPOSITIVE=TRUE",
		lpm_nrepresentation => "SIGNED",
		lpm_type => "LPM_DIVIDE",
		lpm_widthd => 32,
		lpm_widthn => 32
	)
	PORT MAP (
		denom => denom,
		numer => numer,
		quotient => sub_wire0,
		remain => sub_wire1
	);

END SYN;