library ieee;
use ieee.std_logic_1164.all;

-- test bench for the memory sub system

entity select_encode_tb is
end entity select_encode_tb;

architecture testbench of select_encode_tb is
	
	signal clock : std_logic;
	signal ir : std_logic_vector(31 downto 0);
	signal r_enable, r_out, ba_out : std_logic;
	signal gra, grb, grc : std_logic;
	
	signal reg0_enable, reg0_out : std_logic;
	signal reg1_enable, reg1_out : std_logic;
	signal reg2_enable, reg2_out : std_logic;
	signal reg3_enable, reg3_out : std_logic;
	signal reg4_enable, reg4_out : std_logic;
	signal reg5_enable, reg5_out : std_logic;
	signal reg6_enable, reg6_out : std_logic;
	signal reg7_enable, reg7_out : std_logic;
	signal reg8_enable, reg8_out : std_logic;
	signal reg9_enable, reg9_out : std_logic;
	signal reg10_enable, reg10_out : std_logic;
	signal reg11_enable, reg11_out : std_logic;
	signal reg12_enable, reg12_out : std_logic;
	signal reg13_enable, reg13_out : std_logic;
	signal reg14_enable, reg14_out : std_logic;
	signal reg15_enable, reg15_out : std_logic;
	signal c_sign_extended : std_logic_vector(31 downto 0);
	
	type state is (t0, t1, t2, t3, t4, t5, t6, t7);
	signal present_state : state := t0;
	
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
begin
	cut : select_encode 
	port map(
		ir => ir,
		r_enable => r_enable,
		r_out => r_out,
		ba_out => ba_out,
		gra => gra,
		grb => grb,
		grc => grc,
		reg0_enable => reg0_enable,
		reg0_out => reg0_out,
		reg1_enable => reg1_enable,
		reg1_out => reg1_out,
		reg2_enable => reg2_enable,
		reg2_out => reg2_out,
		reg3_enable => reg3_enable,
		reg3_out => reg3_out,
		reg4_enable => reg4_enable,
		reg4_out => reg4_out,
		reg5_enable => reg5_enable,
		reg5_out => reg5_out,
		reg6_enable => reg6_enable,
		reg6_out => reg6_out,
		reg7_enable => reg7_enable,
		reg7_out => reg7_out,
		reg8_enable => reg8_enable,
		reg8_out => reg8_out,
		reg9_enable => reg9_enable,
		reg9_out => reg9_out,
		reg10_enable => reg10_enable,
		reg10_out => reg10_out,
		reg11_enable => reg11_enable,
		reg11_out => reg11_out,
		reg12_enable => reg12_enable,
		reg12_out => reg12_out,
		reg13_enable => reg13_enable,
		reg13_out => reg13_out,
		reg14_enable => reg14_enable,
		reg14_out => reg14_out,
		reg15_enable => reg15_enable,
		reg15_out => reg15_out
	);
	
	-- process to drive the clock
	drive_clock : process
	begin
		clock <= '0', '1' after 10 ns;
		wait for 20 ns;
	end process drive_clock;
	
	-- process to change the present state on every rising clock edge
	change_state : process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			case present_state is
				when t0 =>
					present_state <= t1;
				when t1 =>
					present_state <= t2;
				when t2 =>
					present_state <= t3;
				when t3 =>
					present_state <= t4;
				when t4 =>
					present_state <= t5;
				when t5 =>
					present_state <= t6;
				when t6 =>
					present_state <= t7;
				when others =>
			end case;
		end if;
	end process change_state;
	
	-- process to execute logic at each state
	-- modify the code here to suit testing needs
	state_logic : process(present_state)
	begin
		case present_state is 
			when t0 =>
				ir <= x"00000000";
				r_enable <= '0';
				r_out <= '0';
				gra <= '0';
				grb <= '0';
				grc <= '0';
				ba_out <= '0';
			when t1 =>
				ir <= x"01000000";
				gra <= '1';
				r_enable <= '1', '0' after 10 ns;
			when t2 =>
				ir <= x"00080000";
				grb <= '1';
				r_out <= '1', '0' after 10 ns;
			when t3 =>
				
			when t4 =>
				
			when t5 =>
			
			when t6 =>
			
			when t7 =>
				
			when others =>
		end case;
	end process state_logic;
	
end architecture testbench;