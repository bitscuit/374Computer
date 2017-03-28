library ieee;
use ieee.std_logic_1164.all;

-- test bench for mdr

entity mdr_tb is 
end entity mdr_tb;

architecture testbench of mdr_tb is
	signal to_mdr1, to_mdr2 : std_logic_vector(31 downto 0);
	signal clear, clock, mdr_enable, mem_read : std_logic;
	signal from_mdr : std_logic_vector(31 downto 0); 
	
	type state is (t0, t1, t2, t3, t4, t5, t6, t7);
	signal present_state : state := t0;
	
	component mdr
		port(
			-- input
			to_mdr1, to_mdr2 : in std_logic_vector(31 downto 0);
			clear, clock, mdr_enable : in std_logic;
			mem_read : in std_logic;
		
			-- output
			from_mdr : out std_logic_vector(31 downto 0)
		);
	end component;
	
begin
	cut : mdr
	port map(
		to_mdr1 => to_mdr1,
		to_mdr2 => to_mdr2,
		clear => clear,
		clock => clock,
		mdr_enable => mdr_enable,
		mem_read => mem_read,
		from_mdr => from_mdr
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
				clear <= '1', '0' after 5 ns;
				to_mdr1 <= x"00000000";
				to_mdr2 <= x"00000000";
				mdr_enable <= '0';
				mem_read <= '0';
			when t1 =>
				to_mdr1 <= x"00000001";
				mdr_enable <= '1', '0' after 10 ns;
			when t2 =>
				to_mdr1 <= x"00001000";
				to_mdr2 <= x"00000111";
				mem_read <= '1', '0' after 10 ns;
				mdr_enable <= '1', '0' after 10 ns;
			when t3 =>
				to_mdr1 <= x"00001000";
			when t4 =>
				to_mdr1 <= x"00001111";
				mdr_enable <= '1', '0' after 10 ns;
			when t5 =>
				to_mdr1 <= x"00001000";
			when others =>
		end case;
	end process state_logic;
end architecture testbench;

