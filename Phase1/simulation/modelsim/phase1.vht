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
-- Generated on "02/26/2017 21:22:08"
                                                            
-- Vhdl Test Bench template for design  :  phase1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY phase1_vhd_tst IS
END phase1_vhd_tst;
ARCHITECTURE phase1_arch OF phase1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_in : STD_LOGIC;
SIGNAL busmuxout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL c_sign_extended_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL c_in : STD_LOGIC;
SIGNAL c_out : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL hi_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hi_in : STD_LOGIC;
SIGNAL hi_out : STD_LOGIC;
SIGNAL inport_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inport_in : STD_LOGIC;
SIGNAL inport_out : STD_LOGIC;
SIGNAL lo_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL lo_in : STD_LOGIC;
SIGNAL lo_out : STD_LOGIC;
SIGNAL m_data_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mdr_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mdr_in : STD_LOGIC;
SIGNAL mdr_out : STD_LOGIC;
SIGNAL mdr_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_in : STD_LOGIC;
SIGNAL pc_out : STD_LOGIC;
SIGNAL r0_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r0_out : STD_LOGIC;
SIGNAL r0in : STD_LOGIC;
SIGNAL r1_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r1_out : STD_LOGIC;
SIGNAL r1in : STD_LOGIC;
SIGNAL r2_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r2_out : STD_LOGIC;
SIGNAL r2in : STD_LOGIC;
SIGNAL r3_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r3_out : STD_LOGIC;
SIGNAL r3in : STD_LOGIC;
SIGNAL r4_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r4_out : STD_LOGIC;
SIGNAL r4in : STD_LOGIC;
SIGNAL r5_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r5_out : STD_LOGIC;
SIGNAL r5in : STD_LOGIC;
SIGNAL r6_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r6_out : STD_LOGIC;
SIGNAL r6in : STD_LOGIC;
SIGNAL r7_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r7_out : STD_LOGIC;
SIGNAL r7in : STD_LOGIC;
SIGNAL r8_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r8_out : STD_LOGIC;
SIGNAL r8in : STD_LOGIC;
SIGNAL r9_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r9_out : STD_LOGIC;
SIGNAL r9in : STD_LOGIC;
SIGNAL r10_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r10_out : STD_LOGIC;
SIGNAL r10in : STD_LOGIC;
SIGNAL r11_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r11_out : STD_LOGIC;
SIGNAL r11in : STD_LOGIC;
SIGNAL r12_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r12_out : STD_LOGIC;
SIGNAL r12in : STD_LOGIC;
SIGNAL r13_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r13_out : STD_LOGIC;
SIGNAL r13in : STD_LOGIC;
SIGNAL r14_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r14_out : STD_LOGIC;
SIGNAL r14in : STD_LOGIC;
SIGNAL r15_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r15_out : STD_LOGIC;
SIGNAL r15in : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
SIGNAL sel_alu : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL select_bus : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL to_A_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Yin : STD_LOGIC;
SIGNAL zhi_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zhi_in : STD_LOGIC;
SIGNAL zhi_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zhi_out_sel : STD_LOGIC;
SIGNAL zlo_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zlo_in : STD_LOGIC;
SIGNAL zlo_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zlo_out_sel : STD_LOGIC;

TYPE State is (default, reg1, reg2, reg3, T0, T1, T2, T3, T4, T5);
SIGNAL Present_State: State := default;

COMPONENT phase1
	PORT (
	alu_in : IN STD_LOGIC;
	busmuxout : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	c_sign_extended_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	c_in : IN STD_LOGIC;
	c_out : IN STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	hi_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hi_in : IN STD_LOGIC;
	hi_out : IN STD_LOGIC;
	inport_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inport_in : IN STD_LOGIC;
	inport_out : IN STD_LOGIC;
	lo_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	lo_in : IN STD_LOGIC;
	lo_out : IN STD_LOGIC;
	m_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	mdr_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mdr_in : IN STD_LOGIC;
	mdr_out : IN STD_LOGIC;
	mdr_data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc_in : IN STD_LOGIC;
	pc_out : IN STD_LOGIC;
	r0_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r0_out : IN STD_LOGIC;
	r0in : IN STD_LOGIC;
	r1_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r1_out : IN STD_LOGIC;
	r1in : IN STD_LOGIC;
	r2_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r2_out : IN STD_LOGIC;
	r2in : IN STD_LOGIC;
	r3_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r3_out : IN STD_LOGIC;
	r3in : IN STD_LOGIC;
	r4_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r4_out : IN STD_LOGIC;
	r4in : IN STD_LOGIC;
	r5_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r5_out : IN STD_LOGIC;
	r5in : IN STD_LOGIC;
	r6_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r6_out : IN STD_LOGIC;
	r6in : IN STD_LOGIC;
	r7_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r7_out : IN STD_LOGIC;
	r7in : IN STD_LOGIC;
	r8_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r8_out : IN STD_LOGIC;
	r8in : IN STD_LOGIC;
	r9_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r9_out : IN STD_LOGIC;
	r9in : IN STD_LOGIC;
	r10_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r10_out : IN STD_LOGIC;
	r10in : IN STD_LOGIC;
	r11_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r11_out : IN STD_LOGIC;
	r11in : IN STD_LOGIC;
	r12_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r12_out : IN STD_LOGIC;
	r12in : IN STD_LOGIC;
	r13_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r13_out : IN STD_LOGIC;
	r13in : IN STD_LOGIC;
	r14_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r14_out : IN STD_LOGIC;
	r14in : IN STD_LOGIC;
	r15_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r15_out : IN STD_LOGIC;
	r15in : IN STD_LOGIC;
	sel : IN STD_LOGIC;
	sel_alu : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	select_bus : INOUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	to_A_in : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Yin : IN STD_LOGIC;
	zhi_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zhi_in : IN STD_LOGIC;
	zhi_out : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zhi_out_sel : IN STD_LOGIC;
	zlo_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zlo_in : IN STD_LOGIC;
	zlo_out : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zlo_out_sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : phase1
	PORT MAP (
-- list connections between master ports and signals
	alu_in => alu_in,
	busmuxout => busmuxout,
	c_sign_extended_busmuxin => c_sign_extended_busmuxin,
	c_in => c_in,
	c_out => c_out,
	clear => clear,
	clock => clock,
	hi_busmuxin => hi_busmuxin,
	hi_in => hi_in,
	hi_out => hi_out,
	inport_busmuxin => inport_busmuxin,
	inport_in => inport_in,
	inport_out => inport_out,
	lo_busmuxin => lo_busmuxin,
	lo_in => lo_in,
	lo_out => lo_out,
	m_data_in => m_data_in,
	mdr_busmuxin => mdr_busmuxin,
	mdr_in => mdr_in,
	mdr_out => mdr_out,
	mdr_data => mdr_data,
	pc_busmuxin => pc_busmuxin,
	pc_in => pc_in,
	pc_out => pc_out,
	r0_busmuxin => r0_busmuxin,
	r0_out => r0_out,
	r0in => r0in,
	r1_busmuxin => r1_busmuxin,
	r1_out => r1_out,
	r1in => r1in,
	r2_busmuxin => r2_busmuxin,
	r2_out => r2_out,
	r2in => r2in,
	r3_busmuxin => r3_busmuxin,
	r3_out => r3_out,
	r3in => r3in,
	r4_busmuxin => r4_busmuxin,
	r4_out => r4_out,
	r4in => r4in,
	r5_busmuxin => r5_busmuxin,
	r5_out => r5_out,
	r5in => r5in,
	r6_busmuxin => r6_busmuxin,
	r6_out => r6_out,
	r6in => r6in,
	r7_busmuxin => r7_busmuxin,
	r7_out => r7_out,
	r7in => r7in,
	r8_busmuxin => r8_busmuxin,
	r8_out => r8_out,
	r8in => r8in,
	r9_busmuxin => r9_busmuxin,
	r9_out => r9_out,
	r9in => r9in,
	r10_busmuxin => r10_busmuxin,
	r10_out => r10_out,
	r10in => r10in,
	r11_busmuxin => r11_busmuxin,
	r11_out => r11_out,
	r11in => r11in,
	r12_busmuxin => r12_busmuxin,
	r12_out => r12_out,
	r12in => r12in,
	r13_busmuxin => r13_busmuxin,
	r13_out => r13_out,
	r13in => r13in,
	r14_busmuxin => r14_busmuxin,
	r14_out => r14_out,
	r14in => r14in,
	r15_busmuxin => r15_busmuxin,
	r15_out => r15_out,
	r15in => r15in,
	sel => sel,
	sel_alu => sel_alu,
	select_bus => select_bus,
	to_A_in => to_A_in,
	Yin => Yin,
	zhi_busmuxin => zhi_busmuxin,
	zhi_in => zhi_in,
	zhi_out => zhi_out,
	zhi_out_sel => zhi_out_sel,
	zlo_busmuxin => zlo_busmuxin,
	zlo_in => zlo_in,
	zlo_out => zlo_out,
	zlo_out_sel => zlo_out_sel
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;   

--processes
clk_process : process
begin
	clock <= '0', '1' after 10 ns;
	Wait for 20 ns;
end process clk_process;                                        

process(clock)
begin
	if (clock'EVENT AND clock = '1') THEN
		case present_state is
			when default =>
				present_state <= reg1;
			when reg1 =>
				present_state <= reg2;
			when reg2 =>
				present_state <= reg3;
			when reg3 =>
				present_state <= T0;
			when T0 =>
				present_state <= T1;
			when T1 =>
				present_state <= T2;
			when T2 =>
				present_state <= T3;
			when T3 =>
				present_state <= T4;
			when T4 =>
				present_state <= T5;
			when OTHERS =>
		end case;
	end if;
end process;

process(present_state)
begin
	case present_state is
		when default =>
			r0_out <= '0';			r0in 			<= '0';
			r1_out <= '0';			r1in 			<= '0';
			r2_out <= '0'; 		r2in 			<= '0';
			r3_out <= '0';			r3in 			<= '0';
			r4_out <= '0';			r4in 			<= '0';
			r5_out <= '0';			r5in 			<= '0';
			r6_out <= '0';			r6in 			<= '0';
			r7_out <= '0';			r7in 			<= '0';
			r8_out <= '0';			r8in 			<= '0';
			r9_out <= '0';			r9in 			<= '0';
			r10_out <= '0';		r10in 		<= '0';
			r11_out <= '0';		r11in 		<= '0';
			r12_out <= '0';		r12in 		<= '0';
			r13_out <= '0';		r13in 		<= '0';
			r14_out <= '0';		r14in 		<= '0';
			r15_out <= '0';		r15in 		<= '0';
			hi_out <= '0';			hi_in 		<= '0';
			lo_out <= '0';			lo_in 		<= '0';
			zhi_out_sel <= '0';	zhi_in 		<= '0';
			zlo_out_sel <= '0';	zlo_in 		<= '0';
			pc_out <= '0';			pc_in 		<= '0';
			mdr_out <= '0';		mdr_in 		<= '0';
			inport_out <= '0';	inport_in 	<= '0';
			c_out <= '0';			c_in 			<= '0';
			Yin <= '0';
			clear <= '1', '0' after 5 ns;
			sel <= '0';
		when reg1 =>
			m_data_in <= x"00000000";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1';
		when reg2 =>
			m_data_in <= x"00000002";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r2in 		<= '1';
		when reg3 =>
			m_data_in <= x"00000003";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1';
		when T0 =>
			zhi_in <= '1';
			zlo_in <= '1';
		when T1 =>
			--sel_alu <= "0000";
			sel <= '1';
			mdr_in <= '1';
		when T2 =>
			--mdr_out <= '1';
		when T3 =>
			r2_out <= '1';
			Yin <= '1';
		when T4 =>
			r3_out <= '1';
			sel_alu <= "0000";
			zhi_in <= '1';
			zlo_in <= '1';
		when T5 =>
			zhi_out_sel <= '1';
			zlo_out_sel <= '1';
			r1in <= '1';
		when others =>
	end case;
end process;                                        
END phase1_arch;
