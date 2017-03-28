library ieee;
use ieee.std_logic_1164.all;
use work.reg32_component.all;
use work.mdr_component.all;
use work.ram_component.all;

-- memory subsystem: MDR, MAR, RAM

entity mem_system is
	port(
		-- input
		to_mdr, to_mar : in std_logic_vector(31 downto 0);
		clear, clock, mdr_enable, mar_enable, mem_read, mem_write : in std_logic;
		
		--output
		from_mem : out std_logic_vector(31 downto 0)
	);
end entity mem_system;

architecture structural of mem_system is
	signal mar_to_ram : std_logic_vector(31 downto 0); -- memory address coming from mar, going into ram
	signal mdr_to_ram : std_logic_vector(31 downto 0); -- output of mdr going into ram and output of memory subsystem 
	signal ram_to_mdr : std_logic_vector(31 downto 0); -- output coming from ram, going to mdr
begin
	-- mdr of memory subsystem
	mem_mdr : mdr
	port map(
		to_mdr1 => to_mdr,
		to_mdr2 => ram_to_mdr,
		clear => clear,
		clock => clock,
		mdr_enable => mdr_enable,
		mem_read => mem_read,
		-- output of mdr register feeds into signal that feeds both ram data and output of memory subsystem
		from_mdr => mdr_to_ram 
	);
	
	-- memory address register of memory subsystem
	mar : reg32
	port map(
		to_reg32 => to_mar,
		clear => clear,
		clock => clock,
		reg32_enable => mar_enable,
		-- output of memory address register feeds into signal that feeds into ram address
		from_reg32 => mar_to_ram
	);
	
	-- ram of memory subsystem
	mem_ram : ram
	port map(
		-- address of ram is only 9 bits, so lower 9 bits taken from mar register
		address => mar_to_ram(8 downto 0), 
		clock => clock,
		data => mdr_to_ram,
		rden => mem_read,
		wren => mem_write,
		q => ram_to_mdr
	);
	
	-- output of memory subsystem comes from signal which also feeds into ram data
	from_mem <= mdr_to_ram;
end architecture structural;