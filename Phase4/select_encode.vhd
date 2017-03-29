library ieee;
use ieee.std_logic_1164.all;
use work.decoder4_16_component.all;

-- select and encode logic to select which registers to enable and/or output onto the bus
-- select and encode only enables or selects registers reg0 - reg15

entity select_encode is
	port(
		-- input
		ir : in std_logic_vector(31 downto 0);
		r_enable, r_out, ba_out : in std_logic;
		gra, grb, grc : in std_logic;
		
		-- output
		reg0_enable, reg0_out : out std_logic;
		reg1_enable, reg1_out : out std_logic;
		reg2_enable, reg2_out : out std_logic;
		reg3_enable, reg3_out : out std_logic;
		reg4_enable, reg4_out : out std_logic;
		reg5_enable, reg5_out : out std_logic;
		reg6_enable, reg6_out : out std_logic;
		reg7_enable, reg7_out : out std_logic;
		reg8_enable, reg8_out : out std_logic;
		reg9_enable, reg9_out : out std_logic;
		reg10_enable, reg10_out : out std_logic;
		reg11_enable, reg11_out : out std_logic;
		reg12_enable, reg12_out : out std_logic;
		reg13_enable, reg13_out : out std_logic;
		reg14_enable, reg14_out : out std_logic;
		reg15_enable, reg15_out : out std_logic;
		c_sign_extended : out std_logic_vector(31 downto 0)
	);
end entity select_encode;

architecture structural of select_encode is
	signal from_and0, from_and1, from_and2 : std_logic_vector(3 downto 0);
	signal from_or : std_logic_vector(3 downto 0);
	signal from_decoder0 : std_logic;
	signal from_decoder1 : std_logic;
	signal from_decoder2 : std_logic;
	signal from_decoder3 : std_logic;
	signal from_decoder4 : std_logic;
	signal from_decoder5 : std_logic;
	signal from_decoder6 : std_logic;
	signal from_decoder7 : std_logic;
	signal from_decoder8 : std_logic;
	signal from_decoder9 : std_logic;
	signal from_decoder10 : std_logic;
	signal from_decoder11 : std_logic;
	signal from_decoder12 : std_logic;
	signal from_decoder13 : std_logic;
	signal from_decoder14 : std_logic;
	signal from_decoder15 : std_logic;
begin
	decoder : decoder4_16
	port map(
		to_decoder4 => from_or,
		from_decoder4_0 => from_decoder0,
		from_decoder4_1 => from_decoder1,
		from_decoder4_2 => from_decoder2,
		from_decoder4_3 => from_decoder3,
		from_decoder4_4 => from_decoder4,
		from_decoder4_5 => from_decoder5,
		from_decoder4_6 => from_decoder6,
		from_decoder4_7 => from_decoder7,
		from_decoder4_8 => from_decoder8,
		from_decoder4_9 => from_decoder9,
		from_decoder4_10 => from_decoder10,
		from_decoder4_11 => from_decoder11,
		from_decoder4_12 => from_decoder12,
		from_decoder4_13 => from_decoder13,
		from_decoder4_14 => from_decoder14,
		from_decoder4_15 => from_decoder15
	);
	
	from_and0 <= ir(26 downto 23) when gra = '1' else
						"0000";
	from_and1 <= ir(22 downto 19) when grb = '1' else
						"0000";
	from_and2 <= ir(18 downto 15) when grc = '1' else 
						"0000";
	from_or <= from_and0 or from_and1 or from_and2;
	
	reg0_enable <= '1' when from_decoder0 = '1' and r_enable = '1' else
						'0';
	reg0_out <= '1' when from_decoder0 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg1_enable <= '1' when from_decoder1 = '1' and r_enable = '1' else
						'0';
	reg1_out <= '1' when from_decoder1 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg2_enable <= '1' when from_decoder2 = '1' and r_enable = '1' else
						'0';
	reg2_out <= '1' when from_decoder2 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';				
	reg3_enable <= '1' when from_decoder3 = '1' and r_enable = '1' else
						'0';
	reg3_out <= '1' when from_decoder3 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg4_enable <= '1' when from_decoder4 = '1' and r_enable = '1' else
						'0';
	reg4_out <= '1' when from_decoder4 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg5_enable <= '1' when from_decoder5 = '1' and r_enable = '1' else
						'0';
	reg5_out <= '1' when from_decoder5 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg6_enable <= '1' when from_decoder6 = '1' and r_enable = '1' else
						'0';
	reg6_out <= '1' when from_decoder6 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg7_enable <= '1' when from_decoder7 = '1' and r_enable = '1' else
						'0';
	reg7_out <= '1' when from_decoder7 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg8_enable <= '1' when from_decoder8 = '1' and r_enable = '1' else
						'0';
	reg8_out <= '1' when from_decoder8 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg9_enable <= '1' when from_decoder9 = '1' and r_enable = '1' else
						'0';
	reg9_out <= '1' when from_decoder9 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg10_enable <= '1' when from_decoder10 = '1' and r_enable = '1' else
						'0';
	reg10_out <= '1' when from_decoder10 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg11_enable <= '1' when from_decoder11 = '1' and r_enable = '1' else
						'0';
	reg11_out <= '1' when from_decoder11 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg12_enable <= '1' when from_decoder12 = '1' and r_enable = '1' else
						'0';
	reg12_out <= '1' when from_decoder12 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg13_enable <= '1' when from_decoder13 = '1' and r_enable = '1' else
						'0';
	reg13_out <= '1' when from_decoder13 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg14_enable <= '1' when from_decoder14 = '1' and r_enable = '1' else
						'0';
	reg14_out <= '1' when from_decoder14 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	reg15_enable <= '1' when from_decoder15 = '1' and r_enable = '1' else
						'0';
	reg15_out <= '1' when from_decoder15 = '1' and (ba_out = '1' or r_out = '1') else 
					'0';
	c_sign_extended <= "00000000000000" & ir(17 downto 0) when ir(18) = '0' else
								"11111111111111" & ir(17 downto 0);
end architecture structural;