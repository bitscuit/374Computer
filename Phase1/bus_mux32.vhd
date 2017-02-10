library IEEE;
use IEEE.std_logic_1164.all;

entity bus_mux32 is 
port(
	-- registers r0 to r15
	bm_in_r0 : in std_logic_vector (31 downto 0);
	bm_in_r1 : in std_logic_vector (31 downto 0);
	bm_in_r2 : in std_logic_vector (31 downto 0);
	bm_in_r3 : in std_logic_vector (31 downto 0);
	bm_in_r4 : in std_logic_vector (31 downto 0);
	bm_in_r5 : in std_logic_vector (31 downto 0);
	bm_in_r6 : in std_logic_vector (31 downto 0);
	bm_in_r7 : in std_logic_vector (31 downto 0);
	bm_in_r8 : in std_logic_vector (31 downto 0);
	bm_in_r9 : in std_logic_vector (31 downto 0);
	bm_in_r10 : in std_logic_vector (31 downto 0);
	bm_in_r11 : in std_logic_vector (31 downto 0);
	bm_in_r12 : in std_logic_vector (31 downto 0);
	bm_in_r13 : in std_logic_vector (31 downto 0);
	bm_in_r14 : in std_logic_vector (31 downto 0);
	bm_in_r15 : in std_logic_vector (31 downto 0);
	
	bm_hi : in std_logic_vector (31 downto 0);
	bm_lo : in std_logic_vector (31 downto 0);
	bm_zhi : in std_logic_vector (31 downto 0);
	bm_zlo : in std_logic_vector (31 downto 0);
	bm_pc : in std_logic_vector (31 downto 0);
	bm_mdr : in std_logic_vector (31 downto 0);
	bm_inport : in std_logic_vector (31 downto 0);
	c_sign_extended : in std_logic_vector (31 downto 0);
	
	-- 32 - to - 5 encoder as the Select
	sel : in std_logic_vector (4 downto 0);
	
	bus_mux_out : out std_logic_vector (31 downto 0)
);
end entity bus_mux32;

architecture behavioral of bus_mux32 is
begin
with sel select
bus_mux_out <= bm_in_r0 when "00000",
					bm_in_r1 when "00001",
					bm_in_r2 when "00010",
					bm_in_r3 when "00011",
					bm_in_r4 when "00100",
					bm_in_r5 when "00101",
					bm_in_r6 when "00110",
					bm_in_r7 when "00111",
					bm_in_r8 when "01000",
					bm_in_r9 when "01001",
					bm_in_r10 when "01010",
					bm_in_r11 when "01011",
					bm_in_r12 when "01100",
					bm_in_r13 when "01101",
					bm_in_r14 when "01110",
					bm_in_r15 when "01111",
					
					bm_hi 		 when "10000",
					bm_lo 		 when "10001",
					bm_zhi 	 when "10010",
					bm_zlo 	 when "10011",
					bm_pc 		 when "10100",
					bm_mdr 	 when "10101",
					bm_inport  when "10110",
					c_sign_extended when "10111",
					"11111111111111111111111111111111" when others;

end architecture behavioral;