library IEEE;
use IEEE.std_logic_1164.all;

entity bus_mux32 is 
port(
	-- registers r0 to r15
	r0_bm_in 	: in std_logic_vector (31 downto 0);
	r1_bm_in 	: in std_logic_vector (31 downto 0);
	r2_bm_in 	: in std_logic_vector (31 downto 0);
	r3_bm_in 	: in std_logic_vector (31 downto 0);
	r4_bm_in 	: in std_logic_vector (31 downto 0);
	r5_bm_in 	: in std_logic_vector (31 downto 0);
	r6_bm_in 	: in std_logic_vector (31 downto 0);
	r7_bm_in 	: in std_logic_vector (31 downto 0);
	r8_bm_in 	: in std_logic_vector (31 downto 0);
	r9_bm_in 	: in std_logic_vector (31 downto 0);
	r10_bm_in 	: in std_logic_vector (31 downto 0);
	r11_bm_in 	: in std_logic_vector (31 downto 0);
	r12_bm_in 	: in std_logic_vector (31 downto 0);
	r13_bm_in 	: in std_logic_vector (31 downto 0);
	r14_bm_in 	: in std_logic_vector (31 downto 0);
	r15_bm_in 	: in std_logic_vector (31 downto 0);
	
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
bus_mux_out <= r0_bm_in when "00000",
					r1_bm_in when "00001",
					r2_bm_in when "00010",
					r3_bm_in when "00011",
					r4_bm_in when "00100",
					r5_bm_in when "00101",
					r6_bm_in when "00110",
					r7_bm_in when "00111",
					r8_bm_in when "01000",
					r9_bm_in when "01001",
					r10_bm_in when "01010",
					r11_bm_in when "01011",
					r12_bm_in when "01100",
					r13_bm_in when "01101",
					r14_bm_in when "01110",
					r15_bm_in when "01111",
					
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