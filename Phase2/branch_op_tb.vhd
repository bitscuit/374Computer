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
-- Generated on "03/18/2017 15:37:19"
                                                            
-- Vhdl Test Bench template for design  :  phase1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY branch_op_tb IS
END branch_op_tb;
ARCHITECTURE branch_op_tb_arch OF branch_op_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL alu_in : STD_LOGIC;
SIGNAL BAout : STD_LOGIC;
SIGNAL busmuxout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL c_out : STD_LOGIC;
SIGNAL c_sign_extended : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL conff_out : STD_LOGIC;
SIGNAL conin : STD_LOGIC;
SIGNAL from_input : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Gra : STD_LOGIC;
SIGNAL Grb : STD_LOGIC;
SIGNAL Grc : STD_LOGIC;
SIGNAL hi_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hi_in : STD_LOGIC;
SIGNAL hi_out : STD_LOGIC;
SIGNAL inport_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inport_in : STD_LOGIC;
SIGNAL inport_out : STD_LOGIC;
SIGNAL IRenable : STD_LOGIC;
SIGNAL IRout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL lo_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL lo_in : STD_LOGIC;
SIGNAL lo_out : STD_LOGIC;
SIGNAL MARin : STD_LOGIC;
SIGNAL mdr_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mdr_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mdr_in : STD_LOGIC;
SIGNAL mdr_out : STD_LOGIC;
SIGNAL mem_read : STD_LOGIC;
SIGNAL outport_in : STD_LOGIC;
SIGNAL pc_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_in : STD_LOGIC;
SIGNAL pc_out : STD_LOGIC;
SIGNAL r0_busmuxin : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r0_out : STD_LOGIC;
SIGNAL r0in : STD_LOGIC;
SIGNAL r0val : STD_LOGIC_VECTOR(31 DOWNTO 0);
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
SIGNAL Rin : STD_LOGIC;
SIGNAL Rout : STD_LOGIC;
SIGNAL sel_alu : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL select_bus : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL to_A_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL to_output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wen : STD_LOGIC;
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
					T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11,
					T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23,
					T24, T25, 	T26, T27, 	T28, T29, 	T30, T31,
					T32, T33, T34, T35, T36, T37, T38, T39,
					T40, T41, T42, T43, T44, T45, T46, T47, T48, T49,
					T50, T51, T52, T53, T54, T55, T56, T57, 
					T58, T59, T60, T61, T62, T63, T64, T65, T66, T67, T68, 
					T69, T70, T71, T72, T73, T74, T75, T76, T77, T78,
					T79, T80, T81, T82, T83, T84, T85, T86, T87, T88, T89, T90, T91,
					T92, T93, T94, T95, T96, T97, T98, T99, T100, T101);
SIGNAL Present_State: State := default;

COMPONENT phase1
	PORT (
	address : INOUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	alu_in : IN STD_LOGIC;
	BAout : IN STD_LOGIC;
	busmuxout : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	c_out : IN STD_LOGIC;
	c_sign_extended : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	conff_out : OUT STD_LOGIC;
	conin : IN STD_LOGIC;
	from_input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Gra : IN STD_LOGIC;
	Grb : IN STD_LOGIC;
	Grc : IN STD_LOGIC;
	hi_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hi_in : IN STD_LOGIC;
	hi_out : IN STD_LOGIC;
	inport_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inport_in : IN STD_LOGIC;
	inport_out : IN STD_LOGIC;
	IRenable : IN STD_LOGIC;
	IRout : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	lo_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	lo_in : IN STD_LOGIC;
	lo_out : IN STD_LOGIC;
	MARin : IN STD_LOGIC;
	mdr_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mdr_data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mdr_in : IN STD_LOGIC;
	mdr_out : IN STD_LOGIC;
	mem_read : IN STD_LOGIC;
	outport_in : IN STD_LOGIC;
	pc_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc_in : IN STD_LOGIC;
	pc_out : IN STD_LOGIC;
	r0_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r0_out : INOUT STD_LOGIC;
	r0in : INOUT STD_LOGIC;
	r0val : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r1_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r1_out : INOUT STD_LOGIC;
	r1in : INOUT STD_LOGIC;
	r2_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r2_out : INOUT STD_LOGIC;
	r2in : INOUT STD_LOGIC;
	r3_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r3_out : INOUT STD_LOGIC;
	r3in : INOUT STD_LOGIC;
	r4_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r4_out : INOUT STD_LOGIC;
	r4in : INOUT STD_LOGIC;
	r5_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r5_out : INOUT STD_LOGIC;
	r5in : INOUT STD_LOGIC;
	r6_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r6_out : INOUT STD_LOGIC;
	r6in : INOUT STD_LOGIC;
	r7_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r7_out : INOUT STD_LOGIC;
	r7in : INOUT STD_LOGIC;
	r8_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r8_out : INOUT STD_LOGIC;
	r8in : INOUT STD_LOGIC;
	r9_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r9_out : INOUT STD_LOGIC;
	r9in : INOUT STD_LOGIC;
	r10_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r10_out : INOUT STD_LOGIC;
	r10in : INOUT STD_LOGIC;
	r11_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r11_out : INOUT STD_LOGIC;
	r11in : INOUT STD_LOGIC;
	r12_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r12_out : INOUT STD_LOGIC;
	r12in : INOUT STD_LOGIC;
	r13_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r13_out : INOUT STD_LOGIC;
	r13in : INOUT STD_LOGIC;
	r14_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r14_out : INOUT STD_LOGIC;
	r14in : INOUT STD_LOGIC;
	r15_busmuxin : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r15_out : INOUT STD_LOGIC;
	r15in : INOUT STD_LOGIC;
	Rin : IN STD_LOGIC;
	Rout : IN STD_LOGIC;
	sel_alu : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	select_bus : INOUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	to_A_in : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	to_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	wen : IN STD_LOGIC;
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
	address => address,
	alu_in => alu_in,
	BAout => BAout,
	busmuxout => busmuxout,
	c_out => c_out,
	c_sign_extended => c_sign_extended,
	clear => clear,
	clock => clock,
	conff_out => conff_out,
	conin => conin,
	from_input => from_input,
	Gra => Gra,
	Grb => Grb,
	Grc => Grc,
	hi_busmuxin => hi_busmuxin,
	hi_in => hi_in,
	hi_out => hi_out,
	inport_busmuxin => inport_busmuxin,
	inport_in => inport_in,
	inport_out => inport_out,
	IRenable => IRenable,
	IRout => IRout,
	lo_busmuxin => lo_busmuxin,
	lo_in => lo_in,
	lo_out => lo_out,
	MARin => MARin,
	mdr_busmuxin => mdr_busmuxin,
	mdr_data => mdr_data,
	mdr_in => mdr_in,
	mdr_out => mdr_out,
	mem_read => mem_read,
	outport_in => outport_in,
	pc_busmuxin => pc_busmuxin,
	pc_in => pc_in,
	pc_out => pc_out,
	r0_busmuxin => r0_busmuxin,
	r0_out => r0_out,
	r0in => r0in,
	r0val => r0val,
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
	Rin => Rin,
	Rout => Rout,
	sel_alu => sel_alu,
	select_bus => select_bus,
	to_A_in => to_A_in,
	to_output => to_output,
	wen => wen,
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
			when T85 =>
				present_state <= T86;
			when T86 =>
				present_state <= T87;
			when T87 =>
				present_state <= T88;
			when T88 =>
				present_state <= T89;
			when T89 =>
				present_state <= T90;
			when T90 =>
				present_state <= T91;
			when T91 =>
				present_state <= T92;
			when T92 =>
				present_state <= T93;
			when T93 =>
				present_state <= T94;
			when T94 =>
				present_state <= T95;
			when T95 =>
				present_state <= T96;
			when T96 =>
				present_state <= T97;
			when T97 =>
				present_state <= T98;
			when T98 =>
				present_state <= T99;
			when T99 =>
				present_state <= T100;
			when T100 =>
				present_state <= T101;
			when OTHERS =>
		end case;
	end if;
end process;

-- Testing logic for ALU operations

process(present_state)
begin
	case present_state is
		when default =>
			hi_out 		<= '0';			
			hi_in 		<= '0';
			lo_out 		<= '0';			
			lo_in 		<= '0';
			zhi_out_sel <= '0';	
			zhi_in 		<= '0';
			zlo_out_sel <= '0';	
			zlo_in 		<= '0';
			pc_out 		<= '0';			
			pc_in 		<= '0';
			mdr_out 		<= '0';		
			mdr_in 		<= '0';
			inport_out 	<= '0';	
			inport_in 	<= '0';
			c_out 		<= '0';
			Yin 			<= '0';
			clear 		<= '1', '0' after 5 ns;
			alu_in 		<= '0';
			gra			<= '0';
			grb			<= '0';
			grc			<= '0';
			Rin			<= '0';
			Rout			<= '0';
			BAout			<= '0';
			mem_read		<= '0';
			marin			<= '0';
			conin			<= '0';
			wen			<= '0';
			IRenable 	<= '0';
		
		-- ldi R5, $10
		when T0 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T1 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T2 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T3 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T4 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T5 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T6 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T7 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
			
		-- ldi R6, $0
		when T8 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T9 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T10 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T11 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T12 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T13 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T14 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T15 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
		
		-- brzr R6, R5
		when T16 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;	
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;	
		when T17 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 		<= '1', '0' after 10 ns;
			mem_read 	<= '1';
			mdr_in		<= '1';
		when T18 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T19 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T20 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T21 =>
			gra 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			conin 	<= '1', '0' after 25 ns;
		when T22 =>
			grb 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			pc_in		<= conff_out and '1', '0' after 10 ns;
			
		-- ldi R5, $20
		when T23 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T24 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T25 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T26 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T27 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T28 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T29 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T30 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
			
		-- ldi R6, $2
		when T31 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T32 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T33 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T34 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T35 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T36 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T37 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T38 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
		
		-- brnz R6, R5
		when T39 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;	
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;	
		when T40 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 		<= '1', '0' after 10 ns;
			mem_read 	<= '1';
			mdr_in		<= '1';
		when T41 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T42 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T43 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T44 =>
			gra 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			conin 	<= '1', '0' after 25 ns;
		when T45 =>
			grb 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			pc_in		<= conff_out and '1', '0' after 10 ns;
		
		-- ldi R5, $20
		when T46 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T47 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T48 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T49 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T50 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T51 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T52 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T53 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
			
		-- ldi R6, $3
		when T54 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T55 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T56 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T57 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T58 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T59 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T60 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T61 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
		
		-- brmi R6, R5
		when T62 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;	
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;	
		when T63 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 		<= '1', '0' after 10 ns;
			mem_read 	<= '1';
			mdr_in		<= '1';
		when T64 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T65 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T66 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T67 =>
			gra 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			conin 	<= '1', '0' after 25 ns;
		when T68 =>
			grb 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			pc_in		<= conff_out and '1', '0' after 10 ns;
			
		-- ldi R5, $30
		when T69 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T70 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T71 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T72 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T73 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T74 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T75 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T76 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
			
		-- ldi R6, $5
		when T77 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T78 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 	<= '1', '0' after 10 ns;
			mem_read <= '1';
			mdr_in	<= '1';
		when T79 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T80 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T81 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T82 =>
			grb 		<= '1', '0' after 10 ns;
			baout 	<= '1', '0' after 10 ns;
			Yin 		<= '1', '0' after 10 ns;
		when T83 =>
			c_out		<= '1', '0' after 10 ns;
			sel_alu 	<= "0000";
			alu_in 	<= '1', '0' after 10 ns;
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;
		when T84 =>
			zlo_out_sel <= '1', '0' after 10 ns;
			gra 			<= '1', '0' after 10 ns;
			Rin			<= '1', '0' after 10 ns;
		
		-- brpl R6, R5
		when T85 =>
			pc_out 	<= '1', '0' after 10 ns;
			marin 	<= '1', '0' after 10 ns;
			sel_alu 	<= "1110";
			alu_in 	<= '1', '0' after 10 ns;	
			zhi_in 	<= '1', '0' after 10 ns;
			zlo_in 	<= '1', '0' after 10 ns;	
		when T86 =>
			zlo_out_sel	<= '1', '0' after 10 ns;
			pc_in 		<= '1', '0' after 10 ns;
			mem_read 	<= '1';
			mdr_in		<= '1';
		when T87 =>
			mem_read <= '1';
			mdr_in	<= '1';
		when T88 =>
			mem_read <= '1', '0' after 10 ns;
			mdr_in 	<= '1', '0' after 10 ns;
		when T89 =>
			mdr_out 	<= '1', '0' after 10 ns;
			irenable <= '1', '0' after 10 ns;
		when T90 =>
			gra 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			conin 	<= '1', '0' after 25 ns;
		when T91 =>
			grb 		<= '1', '0' after 10 ns;
			Rout 		<= '1', '0' after 10 ns;
			pc_in		<= conff_out and '1', '0' after 10 ns;
		when others =>
	end case;
end process;    
                            
END branch_op_tb_arch;