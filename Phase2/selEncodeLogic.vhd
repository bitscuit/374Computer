library IEEE;
use IEEE.std_logic_1164.all;

-- 32 bit register

entity selEncodeLogic is 
port(
	-- inputs
	IRin : in std_logic_vector(31 downto 0);
	Gra, Grb, Grc, Rin, Rout, BAout : in std_logic_vector(3 downto 0);
	
	-- outputs
	c_sign_extended : out std_logic_vector(31 downto 0);
	Renables : out std_logic_vector(15 downto 0);
	Routs		: out std_logic_vector(15 downto 0));
end entity selEncodeLogic;

architecture behavioral of selEncodeLogic is
	signal Ra, Rb, Rc, A1, A2, A3, O1 : std_logic_vector(3 downto 0);
begin
	Ra <= IRin(26 downto 23);
	Rb <= IRin(22 downto 19);
	Rc <= IRin(18 downto 15);
	A1 <= Ra and Gra;
	A2 <= Rb and Grb;
	A3 <= Rc and Grc;
	O1 <= A1 or A2 or A3;
	
	decoder_process : process(IRin, Gra, Grb, Grc, Rin, Rout, BAout) is 
	variable r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15 : std_logic := '0';
	begin
		r0 :=  '0';
		r1 :=  '0';
		r2 :=  '0';
		r3 :=  '0';
		r4 :=  '0';
		r5 :=  '0';
		r6 :=  '0';
		r7 :=  '0';
		r8 :=  '0';
		r9 :=  '0';
		r10 :=  '0';
		r11 :=  '0';
		r12 :=  '0';
		r13 :=  '0';
		r14 :=  '0';
		r15 :=  '0';
		case O1 is
			when "0000" =>
				r0 := '1';
			when "0001" =>
				r1 := '1';
			when "0010" =>
				r2 := '1';
			when "0011" =>
				r3 := '1';
			when "0100" =>
				r4 := '1';
			when "0101" =>
				r5 := '1';
			when "0110" =>
				r6 := '1';
			when "0111" =>
				r7 := '1';
			when "1000" =>
				r8 := '1';
			when "1001" =>
				r9 := '1';
			when "1010" =>
				r10 := '1';
			when "1011" =>
				r11 := '1';
			when "1100" =>
				r12 := '1';
			when "1101" =>
				r13 := '1';
			when "1110" =>
				r14 := '1';
			when "1111" =>
				r15 := '1';
		end case;
	end process;
end architecture behavioral;
