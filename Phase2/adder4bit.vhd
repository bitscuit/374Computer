library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity adder4bit is
port(
	c_in 	: in std_logic;
	x_in 	: in signed(3 downto 0);
	y_in 	: in signed(3 downto 0);
	clk	: in std_logic;
	enable : in std_logic;
	
	s_out : out signed(3 downto 0);
	g_out : out std_logic;
	p_out : out std_logic);
end adder4bit;

architecture behavioral of adder4bit is
begin
	adder4bit_process : process(clk) is
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				for i in 0 to 3 loop
					s_out(i) <= x_in(i) XOR y_in(i) XOR c_in;
					g_out(i) <= x_in(i) AND y_in(i);
					p_out(i) <= x_in(i) OR y_in(i);
            end loop;
			end if;
		end if;
	end process adder4bit_process;
end architecture;