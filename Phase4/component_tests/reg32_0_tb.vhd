library ieee;
use ieee.std_logic_1164.all;

-- test bench for the memory sub system

entity reg32_0_tb is
end entity reg32_0_tb;

architecture testbench of reg32_0_tb is
	
	signal to_reg0 : std_logic_vector(31 downto 0);
	signal clear, clock, reg0_enable : std_logic;
	signal ba_out : std_logic;
	signal from_reg0 : std_logic_vector(31 downto 0);
	
	-- finite state machine
	type state is (t0, t1, t2, t3, t4, t5, t6, t7);
	signal present_state : state := t0;
	
	component reg32_0
		port(
			-- input
			to_reg0 : in std_logic_vector(31 downto 0);
			clear, clock, reg0_enable : in std_logic;
			ba_out : in std_logic;
			
			-- output
			from_reg0 : out std_logic_vector(31 downto 0)
		);
	end component;
begin
	cut : reg32_0 
	port map(
		to_reg0 => to_reg0,
		clear => clear,
		clock => clock,
		reg0_enable => reg0_enable,
		ba_out => ba_out,
		from_reg0 => from_reg0
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
				to_reg0 <= x"00000000";
				ba_out <= '0';
				reg0_enable <= '0';
			when t1 =>
				to_reg0 <= x"00001001";
				reg0_enable <= '1', '0' after 10 ns;
			when t2 =>
				to_reg0 <= x"00001111";
				ba_out <= '1', '0' after 10 ns;
			when t3 =>
				to_reg0 <= x"11000000";
			when t4 =>
				to_reg0 <= x"00111100";
				reg0_enable <= '1', '0' after 10 ns;
			when t5 =>
			
			when t6 =>
			
			when t7 =>
				
			when others =>
		end case;
	end process state_logic;
	
end architecture testbench;