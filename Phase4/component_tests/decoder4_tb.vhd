library ieee;
use ieee.std_logic_1164.all;

-- test bench for the memory sub system

entity decoder4_tb is
end entity decoder4_tb;

architecture testbench of decoder4_tb is
	
	signal clock : std_logic;
	signal to_decoder4 : std_logic_vector(3 downto 0);
	signal from_decoder4_0 : std_logic;
	signal from_decoder4_1 : std_logic;
	signal from_decoder4_2 : std_logic;
	signal from_decoder4_3 : std_logic;
	signal from_decoder4_4 : std_logic;
	signal from_decoder4_5 : std_logic;
	signal from_decoder4_6 : std_logic;
	signal from_decoder4_7 : std_logic;
	signal from_decoder4_8 : std_logic;
	signal from_decoder4_9 : std_logic;
	signal from_decoder4_10 : std_logic;
	signal from_decoder4_11 : std_logic;
	signal from_decoder4_12 : std_logic;
	signal from_decoder4_13 : std_logic;
	signal from_decoder4_14 : std_logic;
	signal from_decoder4_15 : std_logic;
	
	type state is (t0, t1, t2, t3, t4, t5, t6, t7);
	signal present_state : state := t0;
	
	component decoder4_16
		port(
			-- input
			to_decoder4 : in std_logic_vector(3 downto 0);
			
			-- output
			from_decoder4_0 : out std_logic;
			from_decoder4_1 : out std_logic;
			from_decoder4_2 : out std_logic;
			from_decoder4_3 : out std_logic;
			from_decoder4_4 : out std_logic;
			from_decoder4_5 : out std_logic;
			from_decoder4_6 : out std_logic;
			from_decoder4_7 : out std_logic;
			from_decoder4_8 : out std_logic;
			from_decoder4_9 : out std_logic;
			from_decoder4_10 : out std_logic;
			from_decoder4_11 : out std_logic;
			from_decoder4_12 : out std_logic;
			from_decoder4_13 : out std_logic;
			from_decoder4_14 : out std_logic;
			from_decoder4_15 : out std_logic
		);
	end component;
begin
	cut : decoder4_16 
	port map(
		to_decoder4 => to_decoder4,
		from_decoder4_0 => from_decoder4_0,
		from_decoder4_1 => from_decoder4_1,
		from_decoder4_2 => from_decoder4_2,
		from_decoder4_3 => from_decoder4_3,
		from_decoder4_4 => from_decoder4_4,
		from_decoder4_5 => from_decoder4_5,
		from_decoder4_6 => from_decoder4_6,
		from_decoder4_7 => from_decoder4_7,
		from_decoder4_8 => from_decoder4_8,
		from_decoder4_9 => from_decoder4_9,
		from_decoder4_10 => from_decoder4_10,
		from_decoder4_11 => from_decoder4_11,
		from_decoder4_12 => from_decoder4_12,
		from_decoder4_13 => from_decoder4_13,
		from_decoder4_14 => from_decoder4_14,
		from_decoder4_15 => from_decoder4_15
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
				to_decoder4 <= "0000";
			when t1 =>
				to_decoder4 <= "0000";
			when t2 =>
				to_decoder4 <= "0010";
			when t3 =>
				to_decoder4 <= "0111";
			when t4 =>
				
			when t5 =>
			
			when t6 =>
			
			when t7 =>
				
			when others =>
		end case;
	end process state_logic;
	
end architecture testbench;