-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/27/2017 21:04:18"
                                                            
-- Vhdl Test Bench template for design  :  mdr
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mdr_vhd_tst IS
END mdr_vhd_tst;
ARCHITECTURE mdr_arch OF mdr_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL from_the_bus : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL from_the_mdr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL from_the_ram : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mdr_enable : STD_LOGIC;
SIGNAL mem_read : STD_LOGIC;

type STATE is (t0, t1, t2, t3, t4, t5);
signal present_state : STATE := t0;

COMPONENT mdr
	PORT (
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	from_the_bus : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	from_the_mdr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	from_the_ram : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	mdr_enable : IN STD_LOGIC;
	mem_read : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mdr
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clock => clock,
	from_the_bus => from_the_bus,
	from_the_mdr => from_the_mdr,
	from_the_ram => from_the_ram,
	mdr_enable => mdr_enable,
	mem_read => mem_read
	);

	drive_clock : process 
	begin
		clock <= '0', '1' after 10 ns;
		wait for 20 ns;
	end process drive_clock;
	
	change_state : process(clock)
	begin
		if (clock'event and clock = '1') then
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
				when others =>
			end case;
		end if;
	end process change_state;
	
	state_logic : process(present_state)
	begin
		case present_state is 
			when t0 =>

			when t1 =>
				
			when t2 =>
				clear <= '1', '0' after 5 ns;
				from_the_bus <= x"00000000";
				from_the_ram <= x"00000000";
				mdr_enable <= '0';
				mem_read <= '0';
			when t3 =>
				from_the_bus <= x"00000001";
				mdr_enable <= '1', '0' after 10 ns;
				from_the_ram <= x"00001000";
			when t4 =>
				from_the_bus <= x"00001000";
				from_the_ram <= x"00000111";
				mem_read <= '1', '0' after 10 ns;
				mdr_enable <= '1', '0' after 10 ns;
			when t5 =>
				from_the_bus <= x"00001000";
			when others =>
		end case;
	end process state_logic;	
END mdr_arch;
