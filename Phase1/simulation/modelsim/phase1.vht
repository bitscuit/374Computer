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

TYPE State is (default, reg1, reg2, reg3, reg0, reg4, reg5, reg6, reg7,
					T0, T1, T2, T3, T4, T5,					-- ADD
					T6, T7, T8, T9, T10, T11,				-- SUB
					T12, T13, T14, T15, T16, T17, T18,	-- MUL
					T19, T20, T21, T22, T23, T24, T25,	-- DIV
					T26, T27, T28, T29, T30, T31,			-- AND
					T32, T33, T34, T35, T36, T37,			-- OR
					T38, T39, T40, T41, T42, T43,			-- SHR
					T44, T45, T46, T47, T48, T49,			-- SHL
					T50, T51, T52, T53, T54, T55,			-- ROR
					T56, T57, T58, T59, T60, T61,			-- ROL
					T62, T63, T64, T65, T66, 				-- NEG
					T67, T68, T69, T70, T71, 				-- NOT
					T72, T73, T74, T75, T76, T77, T78,	-- BOOTH MUL
					T79, T80, T81, T82, T83, T84, T85);	-- BOOTH BIT PAIR	
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

-- Process to simulate control sequences

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
				present_state <= reg0;
			when reg0 =>
				present_state <= reg4;
			when reg4 =>
				present_state <= reg5;
			when reg5 =>
				present_state <= reg6;
			when reg6 =>
				present_state <= reg7;
			when reg7 =>
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
			when T5 =>
				present_state <= T6;
			when T6 =>
				present_state <= T7;
			when T7 =>
				present_state <= T8;
			when T8 =>
				present_state <= T9;
			when T9 =>
				present_state <= T10;
			when T10 =>
				present_state <= T11;
			when T11 =>
				present_state <= T12;
			when T12 =>
				present_state <= T13;
			when T13 =>
				present_state <= T14;
			when T14 =>
				present_state <= T15;
			when T15 =>
				present_state <= T16;
			when T16 =>
				present_state <= T17;
			when T17 =>
				present_state <= T18;
			when T18 =>
				present_state <= T19;
			when T19 =>
				present_state <= T20;
			when T20 =>
				present_state <= T21;
			when T21 =>
				present_state <= T22;
			when T22 =>
				present_state <= T23;
			when T23 =>
				present_state <= T24;
			when T24 =>
				present_state <= T25;
			when T25 =>
				present_state <= T26;
			when T26 =>
				present_state <= T27;
			when T27 =>
				present_state <= T28;
			when T28 =>
				present_state <= T29;
			when T29 =>
				present_state <= T30;
			when T30 =>
				present_state <= T31;
			when T31 =>
				present_state <= T32;
			when T32 =>
				present_state <= T33;
			when T33 =>
				present_state <= T34;
			when T34 =>
				present_state <= T35;
			when T35 =>
				present_state <= T36;
			when T36 =>
				present_state <= T37;
			when T37 =>
				present_state <= T38;
			when T38 =>
				present_state <= T39;
			when T39 =>
				present_state <= T40;
			when T40 =>
				present_state <= T41;
			when T41 =>
				present_state <= T42;
			when T42 =>
				present_state <= T43;
			when T43 =>
				present_state <= T44;
			when T44 =>
				present_state <= T45;
			when T45 =>
				present_state <= T46;
			when T46 =>
				present_state <= T47;
			when T47 =>
				present_state <= T48;
			when T48 =>
				present_state <= T49;
			when T49 =>
				present_state <= T50;
			when T50 =>
				present_state <= T51;
			when T51 =>
				present_state <= T52;
			when T52 =>
				present_state <= T53;
			when T53 =>
				present_state <= T54;
			when T54 =>
				present_state <= T55;
			when T55 =>
				present_state <= T56;
			when T56 =>
				present_state <= T57;
			when T57 =>
				present_state <= T58;
			when T58 =>
				present_state <= T59;
			when T59 =>
				present_state <= T60;
			when T60 =>
				present_state <= T61;
			when T61 =>
				present_state <= T62;
			when T62 =>
				present_state <= T63;
			when T63 =>
				present_state <= T64;
			when T64 =>
				present_state <= T65;
			when T65 =>
				present_state <= T66;
			when T66 =>
				present_state <= T67;
			when T67 =>
				present_state <= T68;
			when T68 =>
				present_state <= T69;
			when T69 =>
				present_state <= T70;
			when T70 =>
				present_state <= T71;
			when T71 =>
				present_state <= T72;
			when T72 =>
				present_state <= T73;
			when T73 =>
				present_state <= T74;
			when T74 =>
				present_state <= T75;
			when T75 =>
				present_state <= T76;
			when T76 =>
				present_state <= T77;
			when T77 =>
				present_state <= T78;
			when T78 =>
				present_state <= T79;
			when T79 =>
				present_state <= T80;
			when T80 =>
				present_state <= T81;
			when T81 =>
				present_state <= T82;
			when T82 =>
				present_state <= T83;
			when T83 =>
				present_state <= T84;
			when T84 =>
				present_state <= T85;
			when OTHERS =>
		end case;
	end if;
end process;

-- Testing logic for ALU operations

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
			alu_in <= '0'; 
			
		-- LOAD REGISTERS	
			
		when reg1 =>
			m_data_in <= x"00000000";					-- Value to put into MDR register
			sel 		<= '1', '0' after 10 ns;		-- select for muxMDR. set to 1 so MDR takes from memory
			mdr_in 	<= '1', '0' after 10 ns;		-- enable MDR register to accept data
			mdr_out 	<= '1', '0' after 10 ns;		-- sets bus to take data from MDR register
			r1in 		<= '1', '0' after 10 ns;		-- enable register r1 to accept data from bus
		when reg2 =>
			m_data_in <= x"00000005";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r2in 		<= '1', '0' after 10 ns;
		when reg3 =>
			m_data_in <= x"00000025";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
		when reg0 =>
			m_data_in <= x"00000000";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r0in 		<= '1', '0' after 10 ns;
		when reg4 =>
			m_data_in <= x"00000033";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r4in 		<= '1', '0' after 10 ns;
		when reg5 =>
			m_data_in <= x"10000005";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r5in 		<= '1', '0' after 10 ns;
		when reg6 =>
			m_data_in <= x"10000003";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r6in 		<= '1', '0' after 10 ns;
		when reg7 =>
			m_data_in <= x"01000013";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r7in 		<= '1', '0' after 10 ns;
			
		-- TEST ADD R1, R2, R3
		
		-- no clue why Z registers are enabled in T0. followed from directions
		when T0 =>
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T1 =>
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T2 =>
			--mdr_out <= '1';
		when T3 =>
			r2_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T4 =>
			r3_out <= '1', '0' after 10 ns;
			sel_alu <= "0000";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T5 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r1in <= '1', '0' after 10 ns;
			
		-- TEST SUB R0, R4, R5
		
		when T6 =>
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T7 =>
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T8 =>
			--mdr_out <= '1';
		when T9 =>
			r4_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T10 =>
			r5_out <= '1', '0' after 10 ns;
			sel_alu <= "0001";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T11 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r1in <= '1', '0' after 10 ns;
			
		-- TEST MUL R5, R7
		
		when T12 =>
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T13 =>
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T14 =>
			--mdr_out <= '1';
		when T15 =>
			r5_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T16 =>
			r7_out <= '1', '0' after 10 ns;
			sel_alu <= "0010";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
			zhi_in <= '1', '0' after 10 ns;
		when T17 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			lo_in <= '1', '0' after 10 ns;
		when T18 =>
			zhi_out_sel <= '1', '0' after 10 ns;
			hi_in <= '1', '0' after 10 ns;
			
		-- TEST DIV R3, R1
		
		when T19 =>
			-- overwriting r3
			m_data_in <= x"70001134";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T20 =>
			-- overwriting r1
			m_data_in <= x"700000A5";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T21 =>
			--mdr_out <= '1';
		when T22 =>
			r3_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T23 =>
			r1_out <= '1', '0' after 10 ns;
			sel_alu <= "0011";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
			zhi_in <= '1', '0' after 10 ns;
		when T24 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			lo_in <= '1', '0' after 10 ns;
		when T25 =>
			zhi_out_sel <= '1', '0' after 10 ns;
			hi_in <= '1', '0' after 10 ns;
			
		-- TEST AND R2, R3, R6
		
		when T26 =>
			-- overwriting r3
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T27 =>
			-- overwriting r6
			m_data_in <= x"A0000006";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r6in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T28 =>
			--mdr_out <= '1';
		when T29 =>
			r3_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T30 =>
			r6_out <= '1', '0' after 10 ns;
			sel_alu <= "0100";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T31 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r2in <= '1', '0' after 10 ns;
			
		-- TEST OR R0, R1, R7
		
		when T32 =>
			-- overwriting r1
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T33 =>
			-- overwriting r7
			m_data_in <= x"A0000006";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r7in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T34 =>
			--mdr_out <= '1';
		when T35 =>
			r1_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T36 =>
			r7_out <= '1', '0' after 10 ns;
			sel_alu <= "0101";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T37 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r0in <= '1', '0' after 10 ns;
			
		-- TEST SHR R2, R1, R3
		
		when T38 =>
			-- overwriting r1
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T39 =>
			-- overwriting r3
			m_data_in <= x"00000002";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T40 =>
			--mdr_out <= '1';
		when T41 =>
			r1_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T42 =>
			r3_out <= '1', '0' after 10 ns;
			sel_alu <= "0111";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T43 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r2in <= '1', '0' after 10 ns;
			
		-- TEST SHL R3, R0, R5
		
		when T44 =>
			-- overwriting r0
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r0in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T45 =>
			-- overwriting r5
			m_data_in <= x"00000002";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r5in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T46 =>
			--mdr_out <= '1';
		when T47 =>
			r0_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T48 =>
			r5_out <= '1', '0' after 10 ns;
			sel_alu <= "1000";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T49 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r3in <= '1', '0' after 10 ns;
			
		-- TEST ROR R1, R1, R2
		
		when T50 =>
			-- overwriting r1
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T51 =>
			-- overwriting r2
			m_data_in <= x"00000003";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r2in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T52 =>
			--mdr_out <= '1';
		when T53 =>
			r1_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T54 =>
			r2_out <= '1', '0' after 10 ns;
			sel_alu <= "1001";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T55 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r1in <= '1', '0' after 10 ns;
			
		-- TEST ROL R0, R0, R4
		
		when T56 =>
			-- overwriting r0
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r0in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T57 =>
			-- overwriting r4
			m_data_in <= x"00000002";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r4in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T58 =>
			--mdr_out <= '1';
		when T59 =>
			r0_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T60 =>
			r4_out <= '1', '0' after 10 ns;
			sel_alu <= "1010";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T61 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r0in <= '1', '0' after 10 ns;
			
		-- TEST NEG R1, R2
		
		when T62 =>
			-- overwriting r2
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r2in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T63 =>
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T64 =>
			--mdr_out <= '1';
		when T65 =>
			r2_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
			sel_alu <= "1011";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T66 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r1in <= '1', '0' after 10 ns;
			
		-- TEST NOT R1, R2
		
		when T67 =>
			-- overwriting r2
			m_data_in <= x"F000000C";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r2in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T68 =>
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T69 =>
			--mdr_out <= '1';
		when T70 =>
			r2_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
			sel_alu <= "0110";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T71 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			r1in <= '1', '0' after 10 ns;
			
		-- TEST BOOTH MUL R3, R1
		
		when T72 =>
			-- overwriting r3
			m_data_in <= x"00000004";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
			
		when T73 =>
			-- overwriting r1
			m_data_in <= x"00000005";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T74 =>
			--mdr_out <= '1';
		when T75 =>
			r3_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T76 =>
			r1_out <= '1', '0' after 10 ns;
			sel_alu <= "1100";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
			zhi_in <= '1', '0' after 10 ns;
		when T77 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			lo_in <= '1', '0' after 10 ns;
		when T78 =>
			zhi_out_sel <= '1', '0' after 10 ns;
			hi_in <= '1', '0' after 10 ns;
			
		-- TEST BOOTH BIT PAIR RECODING MUL R3, R1
		
		when T79 =>
			-- overwriting r3
			m_data_in <= x"00000134";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r3in 		<= '1', '0' after 10 ns;
			
			zhi_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
		when T80 =>
			-- overwriting r1
			m_data_in <= x"000000A5";
			sel 		<= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
			mdr_out 	<= '1', '0' after 10 ns;
			r1in 		<= '1', '0' after 10 ns;
			
			sel <= '1';
			mdr_in <= '1', '0' after 10 ns;
		when T81 =>
			--mdr_out <= '1';
		when T82 =>
			r3_out <= '1', '0' after 10 ns;
			Yin <= '1', '0' after 10 ns;
		when T83 =>
			r1_out <= '1', '0' after 10 ns;
			sel_alu <= "1101";
			alu_in <= '1', '0' after 10 ns;
			zlo_in <= '1', '0' after 10 ns;
			zhi_in <= '1', '0' after 10 ns;
		when T84 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			lo_in <= '1', '0' after 10 ns;
		when T85 =>
			zhi_out_sel <= '1', '0' after 10 ns;
			hi_in <= '1', '0' after 10 ns;
			
		when others =>
	end case;
end process;                                        
END phase1_arch;
