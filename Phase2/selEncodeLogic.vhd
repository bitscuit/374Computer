library IEEE;
use IEEE.std_logic_1164.all;

-- 32 bit register

entity selEncodeLogic is 
port(
	-- inputs
	IRin : in std_logic_vector(31 downto 0);
	Gra, Grb, Grc, Rin, Rout, BAout : in std_logic;
	
	-- outputs
	c_sign_extended : out std_logic_vector(31 downto 0);
	r0in, r1in, r2in, r3in, r4in, r5in, r6in, r7in, r8in, r9in, r10in, r11in, r12in, r13in, r14in, r15in : out std_logic; 
	r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, r14out, r15out : out std_logic);
end entity selEncodeLogic;

architecture behavioral of selEncodeLogic is
	signal Ra, Rb, Rc, A1, A2, A3, O1 : std_logic_vector(3 downto 0);
begin
	Ra <= IRin(26 downto 23);
	Rb <= IRin(22 downto 19);
	Rc <= IRin(18 downto 15);
	
	-- First level of AND gates
	-- AND 1
	A1(3) <= Ra(3) and Gra;
	A1(2) <= Ra(2) and Gra;
	A1(1) <= Ra(1) and Gra;
	A1(0) <= Ra(0) and Gra;
	-- AND 2
	A2(3) <= Rb(3) and Grb;
	A2(2) <= Rb(2) and Grb;
	A2(1) <= Rb(1) and Grb;
	A2(0) <= Rb(0) and Grb;
	-- AND 3
	A3(3) <= Rc(3) and Grc;
	A3(2) <= Rc(2) and Grc;
	A3(1) <= Rc(1) and Grc;
	A3(0) <= Rc(0) and Grc;
	
	-- OR gate
	O1 <= A1 or A2 or A3;
	
	decoder_process : process(IRin, Gra, Grb, Grc, Rin, Rout, BAout, O1) is 
	begin
		r0in 		<=  '0';
		r1in 		<=  '0';
		r2in 		<=  '0';
		r3in 		<=  '0';
		r4in 		<=  '0';
		r5in 		<=  '0';
		r6in 		<=  '0';
		r7in 		<=  '0';
		r8in 		<=  '0';
		r9in 		<=  '0';
		r10in 	<=  '0';
		r11in 	<=  '0';
		r12in 	<=  '0';
		r13in 	<=  '0';
		r14in 	<=  '0';
		r15in 	<=  '0';
			
		r0out 	<=  '0';
		r1out 	<=  '0';
		r2out 	<=  '0';
		r3out 	<=  '0';
		r4out 	<=  '0';
		r5out 	<=  '0';
		r6out 	<=  '0';
		r7out 	<=  '0';
		r8out 	<=  '0';
		r9out 	<=  '0';
		r10out 	<=  '0';
		r11out 	<=  '0';
		r12out 	<=  '0';
		r13out 	<=  '0';
		r14out 	<=  '0';
		r15out 	<=  '0';
		
		case O1 is
			when "0000" =>
				if (Rin = '1') then
					r0in <= '1';
				end if;
				r0out <= Rout or BAout;
			when "0001" =>
				if (Rin = '1') then
					r1in <= '1';
				end if;
				r1out <= Rout or BAout;
			when "0010" =>
				if (Rin = '1') then
					r2in <= '1';
				end if;
				r2out <= Rout or BAout;
			when "0011" =>
				if (Rin = '1') then
					r3in <= '1';
				end if;
				r3out <= Rout or BAout;			
			when "0100" =>
				if (Rin = '1') then
					r4in <= '1';
				end if;
				r4out <= Rout or BAout;
			when "0101" =>
				if (Rin = '1') then
					r5in <= '1';
				end if;
				r5out <= Rout or BAout;
			when "0110" =>
				if (Rin = '1') then
					r6in <= '1';
				end if;
				r6out <= Rout or BAout;
			when "0111" =>
				if (Rin = '1') then
					r7in <= '1';
				end if;
				r7out <= Rout or BAout;
			when "1000" =>
				if (Rin = '1') then
					r8in <= '1';
				end if;
				r8out <= Rout or BAout;
			when "1001" =>
				if (Rin = '1') then
					r9in <= '1';
				end if;
				r9out <= Rout or BAout;
			when "1010" =>
				if (Rin = '1') then
					r10in <= '1';
				end if;
				r10out <= Rout or BAout;
			when "1011" =>
				if (Rin = '1') then
					r11in <= '1';
				end if;
				r11out <= Rout or BAout;
			when "1100" =>
				if (Rin = '1') then
					r12in <= '1';
				end if;
				r12out <= Rout or BAout;
			when "1101" =>
				if (Rin = '1') then
					r13in <= '1';
				end if;
				r13out <= Rout or BAout;
			when "1110" =>
				if (Rin = '1') then
					r14in <= '1';
				end if;
				r14out <= Rout or BAout;
			when "1111" =>
				if (Rin = '1') then
					r15in <= '1';
				end if;
				r15out <= Rout or BAout;
			when others =>
		end case;
	end process;
	
	c_sign_extended <= "00000000000000" & IRin(17 downto 0) when IRin(18) = '0' ELSE
							 "11111111111111" & IRin(17 downto 0) when IRin(18) = '1';
							 
end architecture behavioral;
