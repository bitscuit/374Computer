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
--	port (
--		denom		: IN SIGNED (31 DOWNTO 0);
--		numer		: IN SIGNED (31 DOWNTO 0);
--		quotient	: OUT SIGNED (31 DOWNTO 0);
--		remain	: OUT SIGNED (31 DOWNTO 0));
--end component;
	
signal Z : std_logic_vector(63 downto 0);

begin

--divide: lpm_divide0 port map (denom => B, numer => A, quotient => zlo, remain => zhi);

alu_process : process (clk) is 
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				case sel is
					-- Addition
					when "0000" =>
						zlo <= std_logic_vector(signed(A) + signed(B));
						zhi <= x"00000000";
					-- Subtraction
					when "0001" =>
						zlo <= std_logic_vector(signed(A) - signed(B));
						zhi <= x"00000000";
					-- Multiplication
					when "0010" =>
						Z <= std_logic_vector(signed(A) * signed(B));
						zhi <= Z(63 downto 32);
						zlo <= Z(31 downto 0);
					-- Division
--					when "0011" =>
--						Z(63 downto 32) <= remain;
--						Z(31 downto 0) <= quotient;
--						--Z <= A / B;
--						zhi <= Z(63 downto 32);
--						zlo <= Z(31 downto 0);
						-- Logical AND
					when "0100" =>
						zlo <= A AND B;
						zhi <= x"00000000";
					-- Logical OR
					when "0101" =>
						zlo <= A OR B;
						zhi <= x"00000000";
					-- Logical NOT
					when "0110" =>
						zlo <= std_logic_vector(NOT signed(A));
						zhi <= x"00000000";
					-- Shift right
					when "0111" =>
						zlo <= std_logic_vector(signed(A) srl 1);
						zhi <= x"00000000";
					-- Shift left
					when "1000" =>
						zlo <= std_logic_vector(signed(A) sll 1);
						zhi <= x"00000000";
					-- Rotate right
					when "1001" =>
						zlo <= std_logic_vector(signed(A) ror 1);
						zhi <= x"00000000";
					-- Rotate left
					when "1010" =>
						zlo <= std_logic_vector(signed(A) rol 1);
						zhi <= x"00000000";
					-- Negate
					when "1011" =>
						zlo <= std_logic_vector(NOT signed(A) + 1);
						zhi <= x"00000000";
					-- Carry look-ahead adder
					when "1100" =>
						zhi <= x"00000000";
					when others =>
						zhi <= x"00000000";
						zlo <= x"00000000";
				end case;
			end if;
		end if;
	end process alu_process;
end architecture behavioral;