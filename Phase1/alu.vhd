library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity alu is
port(
	A : in signed(31 downto 0);
	B : in signed(31 downto 0);
	clk, clr, enable : in std_logic;
	sel : in std_logic_vector(3 downto 0);
	
	Z : out signed(63 downto 0));
end entity alu;

architecture behavioral of alu is
begin
alu_process : process (clk) is 
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				case sel is
					-- Addition
					when "0000" =>
						Z <= A + B;
					-- Subtraction
					when "0001" =>
						Z <= A - B;
					-- Multiplication
					when "0010" =>
						Z <= A * B;
					-- Division
					when "0011" =>
						Z <= A / B;
					-- Logical AND
					when "0100" =>
						Z <= A AND B;
					-- Logical OR
					when "0101" =>
						Z <= A OR B;
					-- Logical NOT
					when "0110" =>
						Z <= NOT A;
					-- Shift right
					when "0111" =>
						Z <= A srl 1;
					-- Shift left
					when "1000" =>
						Z <= A sll 1;
					-- Rotate right
					when "1001" =>
						Z <= A ror 1;
					-- Rotate left
					when "1010" =>
						Z <= A rol 1;
					-- Negate
					when "1011" =>
						Z <= NOT A + 1;
					
				end case;
			end if;
		end if;
	end process alu_process;
end architecture behavioral;