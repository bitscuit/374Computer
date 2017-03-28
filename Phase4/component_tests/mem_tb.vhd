library ieee;
use ieee.std_logic_1164.all;

-- test bench for the memory sub system

entity mem_tb is
end entity mem_tb;

architecture testbench of mem_tb is
	
	signal to_mdr, to_mar : std_logic_vector(31 downto 0);
	signal clear, clock, mdr_enable, mar_enable, mem_read, mem_write : std_logic;
	signal from_mem : std_logic_vector(31 downto 0);
	
	type state is (t0, t1, t2, t3, t4, t5, t6, t7);
	signal present_state : state := t0;
	
	component mem_system
		port(
			-- input
			to_mdr, to_mar : in std_logic_vector(31 downto 0);
			clear, clock, mdr_enable, mar_enable, mem_read, mem_write : in std_logic;
			
			--output
			from_mem : out std_logic_vector(31 downto 0)
		);
	end component;
begin
	cut : mem_system 
	port map(
		to_mdr => to_mdr,
		to_mar => to_mar,
		clear => clear,
		clock => clock,
		mdr_enable => mdr_enable,
		mar_enable => mar_enable, 
		mem_read => mem_read,
		mem_write => mem_write,
		from_mem => from_mem
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
				to_mar <= x"00000000";
				mem_read <= '1';
			when t1 =>
				mem_read <= '1';
			when t2 =>
				mdr_enable <= '1', '0' after 10 ns;
				mem_read <= '1', '0' after 10 ns;
			when t3 =>
				
			when t4 =>
				
			when t5 =>
			
			when t6 =>
			
			when t7 =>
				
			when others =>
		end case;
	end process state_logic;
	
end architecture testbench;