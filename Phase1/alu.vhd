library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

entity alu is
port(
	A : in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	clk, clr, enable : in std_logic;
	sel : in std_logic_vector(3 downto 0);
	
	zlo : out std_logic_vector(31 downto 0);
	zhi : out std_logic_vector(31 downto 0));
end entity alu;

architecture behavioral of alu is
--component lpm_divide0
--	PORT
--	(
--		denom		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
--		numer		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
--		quotient		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
--		remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
--	);
--end component;
	
signal Z : std_logic_vector(63 downto 0);
signal divideResult : std_logic_vector(63 downto 0);
begin

--divide: lpm_divide0 port map (denom => B, numer => A, quotient => divideResult(31 downto 0), remain => divideResult(63 downto 32));

alu_process : process (clk,enable,A,B,sel) is 
	variable multResult : std_logic_vector(63 downto 0);
	variable M : std_logic_vector(64 downto 0);
	variable S : std_logic_vector(64 downto 0);
	variable P : std_logic_vector(64 downto 0);
	
	begin
		if (clk = '1') then
			if (enable = '1') then
				zhi <= x"00000000";
				case sel is
					-- Addition
					when "0000" =>
						zlo <= std_logic_vector(signed(A) + signed(B));
					-- Subtraction
					when "0001" =>
						zlo <= std_logic_vector(signed(A) - signed(B));
					-- Multiplication
					when "0010" =>
						multResult := std_logic_vector(signed(A) * signed(B));
						zhi <= multResult(63 downto 32);
						zlo <= multResult(31 downto 0);
					-- Division
					when "0011" =>
						zlo <= std_logic_vector(signed(A) / signed(B));
						zhi <= std_logic_vector(signed(A) mod signed(B));
					-- Logical AND
					when "0100" =>
						zlo <= A AND B;
					-- Logical OR
					when "0101" =>
						zlo <= A OR B;
					-- Logical NOT
					when "0110" =>
						zlo <= std_logic_vector(NOT signed(A));
					-- Shift right
					when "0111" =>
						zlo <= std_logic_vector(signed(A) srl 1);
					-- Shift left
					when "1000" =>
						zlo <= std_logic_vector(signed(A) sll 1);
					-- Rotate right
					when "1001" =>
						zlo <= std_logic_vector(signed(A) ror 1);
					-- Rotate left
					when "1010" =>
						zlo <= std_logic_vector(signed(A) rol 1);
					-- Negate
					when "1011" =>
						zlo <= std_logic_vector(NOT signed(A) + 1);
					-- Booth Multiplier
					when "1100" =>
						M(64 downto 33) := A(31 downto 0);
						M(32 downto 0) := B"00000000_00000000_00000000_00000000_0";
						S(64 downto 33) := std_logic_vector(NOT unsigned(A) + 1);
						S(32 downto 0) := B"00000000_00000000_00000000_00000000_0";
						P(64 downto 33) := B"00000000_00000000_00000000_00000000";
						P(32 downto 1) := B(31 downto 0);
						P(0 downto 0) := "0";
						
						for i in 0 to 31 loop
							if P(1 downto 0) = "01" then
								P := std_logic_vector(unsigned(P) + unsigned(M));
							elsif P(1 downto 0) = "10" then
								P := std_logic_vector(unsigned(P) + unsigned(S));
							end if;
							P := std_logic_vector(unsigned(P) srl 1);
						end loop;
						zhi <= P(64 downto 33);
						zlo <= P(32 downto 1);
					-- Bit-pair Multiplier
					when "1101" =>
						M(64 downto 33) := A(31 downto 0);
						M(32 downto 0) := B"00000000_00000000_00000000_00000000_0";
						S(64 downto 33) := std_logic_vector(NOT unsigned(A) + 1);
						S(32 downto 0) := B"00000000_00000000_00000000_00000000_0";
						P(64 downto 33) := B"00000000_00000000_00000000_00000000";
						P(32 downto 1) := B(31 downto 0);
						P(0 downto 0) := "0";
						
						for i in 0 to 15 loop
							if P(2 downto 0) = "001" then
								P := std_logic_vector(unsigned(P) + unsigned(M));
							elsif P(2 downto 0) = "010" then
								P := std_logic_vector(unsigned(P) + unsigned(M));
							elsif P(2 downto 0) = "011" then
								P := std_logic_vector(unsigned(P) + unsigned(M) + unsigned(M));
							elsif P(2 downto 0) = "100" then
								P := std_logic_vector(unsigned(P) + unsigned(S) + unsigned (S));
							elsif P(2 downto 0) = "101" then
								P := std_logic_vector(unsigned(P) + unsigned(S));
							elsif P(2 downto 0) = "110" then
								P := std_logic_vector(unsigned(P) + unsigned(S));
							end if;
							P := std_logic_vector(unsigned(P) srl 2);
						end loop;
						zhi <= P(64 downto 33);
						zlo <= P(32 downto 1);
					when others =>
						zhi <= x"00000000";
						zlo <= x"00000000";
				end case;
			end if;
		end if;
	end process alu_process;
end architecture behavioral;