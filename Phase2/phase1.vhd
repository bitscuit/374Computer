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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Mar 13 11:20:47 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY phase1 IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		hi_out :  IN  STD_LOGIC;
		lo_out :  IN  STD_LOGIC;
		pc_out :  IN  STD_LOGIC;
		mdr_out :  IN  STD_LOGIC;
		inport_out :  IN  STD_LOGIC;
		c_out :  IN  STD_LOGIC;
		hi_in :  IN  STD_LOGIC;
		lo_in :  IN  STD_LOGIC;
		pc_in :  IN  STD_LOGIC;
		inport_in :  IN  STD_LOGIC;
		Yin :  IN  STD_LOGIC;
		alu_in :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		zhi_in :  IN  STD_LOGIC;
		zlo_in :  IN  STD_LOGIC;
		zhi_out_sel :  IN  STD_LOGIC;
		zlo_out_sel :  IN  STD_LOGIC;
		MARin :  IN  STD_LOGIC;
		wen :  IN  STD_LOGIC;
		mdr_in :  IN  STD_LOGIC;
		mem_read :  IN  STD_LOGIC;
		BAout :  IN  STD_LOGIC;
		Rout :  IN  STD_LOGIC;
		Rin :  IN  STD_LOGIC;
		Grc :  IN  STD_LOGIC;
		Grb :  IN  STD_LOGIC;
		Gra :  IN  STD_LOGIC;
		IRenable :  IN  STD_LOGIC;
		conin :  IN  STD_LOGIC;
		outport_in :  IN  STD_LOGIC;
		r1in :  INOUT  STD_LOGIC;
		r0in :  INOUT  STD_LOGIC;
		r3in :  INOUT  STD_LOGIC;
		r4in :  INOUT  STD_LOGIC;
		r5in :  INOUT  STD_LOGIC;
		r6in :  INOUT  STD_LOGIC;
		r7in :  INOUT  STD_LOGIC;
		r8in :  INOUT  STD_LOGIC;
		r9in :  INOUT  STD_LOGIC;
		r10in :  INOUT  STD_LOGIC;
		r11in :  INOUT  STD_LOGIC;
		r12in :  INOUT  STD_LOGIC;
		r13in :  INOUT  STD_LOGIC;
		r14in :  INOUT  STD_LOGIC;
		r15in :  INOUT  STD_LOGIC;
		r0_out :  INOUT  STD_LOGIC;
		r1_out :  INOUT  STD_LOGIC;
		r2_out :  INOUT  STD_LOGIC;
		r3_out :  INOUT  STD_LOGIC;
		r4_out :  INOUT  STD_LOGIC;
		r5_out :  INOUT  STD_LOGIC;
		r6_out :  INOUT  STD_LOGIC;
		r7_out :  INOUT  STD_LOGIC;
		r8_out :  INOUT  STD_LOGIC;
		r9_out :  INOUT  STD_LOGIC;
		r10_out :  INOUT  STD_LOGIC;
		r11_out :  INOUT  STD_LOGIC;
		r12_out :  INOUT  STD_LOGIC;
		r13_out :  INOUT  STD_LOGIC;
		r14_out :  INOUT  STD_LOGIC;
		r15_out :  INOUT  STD_LOGIC;
		r2in :  INOUT  STD_LOGIC;
		address :  INOUT  STD_LOGIC_VECTOR(8 DOWNTO 0);
		busmuxout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		c_sign_extended :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		from_input :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		hi_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		inport_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		IRout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		lo_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		mdr_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		mdr_data :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		pc_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r0val :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r10_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r11_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r12_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r13_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r14_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r15_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r1_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r2_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r3_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r4_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r5_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r6_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r7_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r8_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		r9_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		sel_alu :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		select_bus :  INOUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		to_A_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		zhi_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		zhi_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		zlo_busmuxin :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		zlo_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		conff_out :  OUT  STD_LOGIC;
		to_output :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END phase1;

ARCHITECTURE bdf_type OF phase1 IS 

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 zhi : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 zlo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and32
	PORT(BAout : IN STD_LOGIC;
		 r0val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 to_bm_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bus_mux32
	PORT(bm_hi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_inport : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_lo : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_mdr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_zhi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bm_zlo : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 c_sign_extended : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r0_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r10_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r11_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r12_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r13_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r14_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r15_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r1_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r2_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r3_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r4_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r5_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r6_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r7_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r8_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r9_bm_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 bus_mux_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT confflogic
	PORT(busmuxout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 IRin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 conff_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT encoder32
	PORT(r0 : IN STD_LOGIC;
		 r1 : IN STD_LOGIC;
		 r2 : IN STD_LOGIC;
		 r3 : IN STD_LOGIC;
		 r4 : IN STD_LOGIC;
		 r5 : IN STD_LOGIC;
		 r6 : IN STD_LOGIC;
		 r7 : IN STD_LOGIC;
		 r8 : IN STD_LOGIC;
		 r9 : IN STD_LOGIC;
		 r10 : IN STD_LOGIC;
		 r11 : IN STD_LOGIC;
		 r12 : IN STD_LOGIC;
		 r13 : IN STD_LOGIC;
		 r14 : IN STD_LOGIC;
		 r15 : IN STD_LOGIC;
		 hi : IN STD_LOGIC;
		 lo : IN STD_LOGIC;
		 zhi : IN STD_LOGIC;
		 zlo : IN STD_LOGIC;
		 pc : IN STD_LOGIC;
		 mdr : IN STD_LOGIC;
		 inport : IN STD_LOGIC;
		 c : IN STD_LOGIC;
		 s : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg32
	PORT(clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 from_bm_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 to_bm_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT regmar
	PORT(clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 from_bm_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT muxmdr
	PORT(sel : IN STD_LOGIC;
		 from_bm_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 m_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 muxmdr_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram
	PORT(clock : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT selencodelogic
	PORT(Gra : IN STD_LOGIC;
		 Grb : IN STD_LOGIC;
		 Grc : IN STD_LOGIC;
		 Rin : IN STD_LOGIC;
		 Rout : IN STD_LOGIC;
		 BAout : IN STD_LOGIC;
		 IRin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 r0in : OUT STD_LOGIC;
		 r1in : OUT STD_LOGIC;
		 r2in : OUT STD_LOGIC;
		 r3in : OUT STD_LOGIC;
		 r4in : OUT STD_LOGIC;
		 r5in : OUT STD_LOGIC;
		 r6in : OUT STD_LOGIC;
		 r7in : OUT STD_LOGIC;
		 r8in : OUT STD_LOGIC;
		 r9in : OUT STD_LOGIC;
		 r10in : OUT STD_LOGIC;
		 r11in : OUT STD_LOGIC;
		 r12in : OUT STD_LOGIC;
		 r13in : OUT STD_LOGIC;
		 r14in : OUT STD_LOGIC;
		 r15in : OUT STD_LOGIC;
		 r0out : OUT STD_LOGIC;
		 r1out : OUT STD_LOGIC;
		 r2out : OUT STD_LOGIC;
		 r3out : OUT STD_LOGIC;
		 r4out : OUT STD_LOGIC;
		 r5out : OUT STD_LOGIC;
		 r6out : OUT STD_LOGIC;
		 r7out : OUT STD_LOGIC;
		 r8out : OUT STD_LOGIC;
		 r9out : OUT STD_LOGIC;
		 r10out : OUT STD_LOGIC;
		 r11out : OUT STD_LOGIC;
		 r12out : OUT STD_LOGIC;
		 r13out : OUT STD_LOGIC;
		 r14out : OUT STD_LOGIC;
		 r15out : OUT STD_LOGIC;
		 c_sign_extended : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	or_out :  STD_LOGIC;
SIGNAL	r0_busmuxin :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ram_out :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_ALU : alu
PORT MAP(clk => clock,
		 clr => clear,
		 enable => alu_in,
		 A => to_A_in,
		 B => busmuxout,
		 sel => sel_alu,
		 zhi => zhi_out,
		 zlo => zlo_out);


conff_out <= or_out AND conin;


b2v_and32 : and32
PORT MAP(BAout => BAout,
		 r0val => r0val,
		 to_bm_in => r0_busmuxin);


b2v_bus : bus_mux32
PORT MAP(bm_hi => hi_busmuxin,
		 bm_inport => inport_busmuxin,
		 bm_lo => lo_busmuxin,
		 bm_mdr => mdr_busmuxin,
		 bm_pc => pc_busmuxin,
		 bm_zhi => zhi_busmuxin,
		 bm_zlo => zlo_busmuxin,
		 c_sign_extended => c_sign_extended,
		 r0_bm_in => r0_busmuxin,
		 r10_bm_in => r10_busmuxin,
		 r11_bm_in => r11_busmuxin,
		 r12_bm_in => r12_busmuxin,
		 r13_bm_in => r13_busmuxin,
		 r14_bm_in => r14_busmuxin,
		 r15_bm_in => r15_busmuxin,
		 r1_bm_in => r1_busmuxin,
		 r2_bm_in => r2_busmuxin,
		 r3_bm_in => r3_busmuxin,
		 r4_bm_in => r4_busmuxin,
		 r5_bm_in => r5_busmuxin,
		 r6_bm_in => r6_busmuxin,
		 r7_bm_in => r7_busmuxin,
		 r8_bm_in => r8_busmuxin,
		 r9_bm_in => r9_busmuxin,
		 sel => select_bus,
		 bus_mux_out => busmuxout);


b2v_confflogic : confflogic
PORT MAP(busmuxout => busmuxout,
		 IRin => IRout,
		 conff_out => or_out);


b2v_encoder32 : encoder32
PORT MAP(r0 => r0_out,
		 r1 => r1_out,
		 r2 => r2_out,
		 r3 => r3_out,
		 r4 => r4_out,
		 r5 => r5_out,
		 r6 => r6_out,
		 r7 => r7_out,
		 r8 => r8_out,
		 r9 => r9_out,
		 r10 => r10_out,
		 r11 => r11_out,
		 r12 => r12_out,
		 r13 => r13_out,
		 r14 => r14_out,
		 r15 => r15_out,
		 hi => hi_out,
		 lo => lo_out,
		 zhi => zhi_out_sel,
		 zlo => zlo_out_sel,
		 pc => pc_out,
		 mdr => mdr_out,
		 inport => inport_out,
		 c => c_out,
		 s => select_bus);


b2v_hi : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => hi_in,
		 from_bm_out => busmuxout,
		 to_bm_in => hi_busmuxin);


b2v_inport : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => inport_in,
		 from_bm_out => from_input,
		 to_bm_in => inport_busmuxin);


b2v_inport3 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => outport_in,
		 from_bm_out => busmuxout,
		 to_bm_in => to_output);


b2v_IR : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => IRenable,
		 from_bm_out => busmuxout,
		 to_bm_in => IRout);


b2v_lo : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => lo_in,
		 from_bm_out => busmuxout,
		 to_bm_in => lo_busmuxin);


b2v_MAR : regmar
PORT MAP(clr => clear,
		 clk => clock,
		 enable => MARin,
		 from_bm_out => busmuxout,
		 address => address);


b2v_mdr : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => mdr_in,
		 from_bm_out => mdr_data,
		 to_bm_in => mdr_busmuxin);


b2v_muxMDR : muxmdr
PORT MAP(sel => mem_read,
		 from_bm_out => busmuxout,
		 m_data_in => ram_out,
		 muxmdr_output => mdr_data);


b2v_pc : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => pc_in,
		 from_bm_out => busmuxout,
		 to_bm_in => pc_busmuxin);


b2v_r0 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r0in,
		 from_bm_out => busmuxout,
		 to_bm_in => r0val);


b2v_r1 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r1in,
		 from_bm_out => busmuxout,
		 to_bm_in => r1_busmuxin);


b2v_r10 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r10in,
		 from_bm_out => busmuxout,
		 to_bm_in => r10_busmuxin);


b2v_r11 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r11in,
		 from_bm_out => busmuxout,
		 to_bm_in => r11_busmuxin);


b2v_r12 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r12in,
		 from_bm_out => busmuxout,
		 to_bm_in => r12_busmuxin);


b2v_r13 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r13in,
		 from_bm_out => busmuxout,
		 to_bm_in => r13_busmuxin);


b2v_r14 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r14in,
		 from_bm_out => busmuxout,
		 to_bm_in => r14_busmuxin);


b2v_r15 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r15in,
		 from_bm_out => busmuxout,
		 to_bm_in => r15_busmuxin);


b2v_r2 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r2in,
		 from_bm_out => busmuxout,
		 to_bm_in => r2_busmuxin);


b2v_r3 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r3in,
		 from_bm_out => busmuxout,
		 to_bm_in => r3_busmuxin);


b2v_r4 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r4in,
		 from_bm_out => busmuxout,
		 to_bm_in => r4_busmuxin);


b2v_r5 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r5in,
		 from_bm_out => busmuxout,
		 to_bm_in => r5_busmuxin);


b2v_r6 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r6in,
		 from_bm_out => busmuxout,
		 to_bm_in => r6_busmuxin);


b2v_r7 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r7in,
		 from_bm_out => busmuxout,
		 to_bm_in => r7_busmuxin);


b2v_r8 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r8in,
		 from_bm_out => busmuxout,
		 to_bm_in => r8_busmuxin);


b2v_r9 : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => r9in,
		 from_bm_out => busmuxout,
		 to_bm_in => r9_busmuxin);


b2v_RAM : ram
PORT MAP(clock => clock,
		 rden => mem_read,
		 wren => wen,
		 address => address,
		 data => mdr_busmuxin,
		 q => ram_out);


b2v_selEncodeLogic : selencodelogic
PORT MAP(Gra => Gra,
		 Grb => Grb,
		 Grc => Grc,
		 Rin => Rin,
		 Rout => Rout,
		 BAout => BAout,
		 IRin => IRout,
		 r0in => r0in,
		 r1in => r1in,
		 r2in => r2in,
		 r3in => r3in,
		 r4in => r4in,
		 r5in => r5in,
		 r6in => r6in,
		 r7in => r7in,
		 r8in => r8in,
		 r9in => r9in,
		 r10in => r10in,
		 r11in => r11in,
		 r12in => r12in,
		 r13in => r13in,
		 r14in => r14in,
		 r15in => r15in,
		 r0out => r0_out,
		 r1out => r1_out,
		 r2out => r2_out,
		 r3out => r3_out,
		 r4out => r4_out,
		 r5out => r5_out,
		 r6out => r6_out,
		 r7out => r7_out,
		 r8out => r8_out,
		 r9out => r9_out,
		 r10out => r10_out,
		 r11out => r11_out,
		 r12out => r12_out,
		 r13out => r13_out,
		 r14out => r14_out,
		 r15out => r15_out,
		 c_sign_extended => c_sign_extended);


b2v_Y : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => Yin,
		 from_bm_out => busmuxout,
		 to_bm_in => to_A_in);


b2v_zhi : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => zhi_in,
		 from_bm_out => zhi_out,
		 to_bm_in => zhi_busmuxin);


b2v_zlo : reg32
PORT MAP(clr => clear,
		 clk => clock,
		 enable => zlo_in,
		 from_bm_out => zlo_out,
		 to_bm_in => zlo_busmuxin);


END bdf_type;