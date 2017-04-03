library ieee;
use ieee.std_logic_1164.all;

-- package for the select and encode logic

package select_encode_component is
	component select_encode
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
	end component;
end package;