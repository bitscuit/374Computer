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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/10/2017 20:19:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg32 IS
    PORT (
	from_bm_out : IN std_logic_vector(31 DOWNTO 0);
	clr : IN std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	to_bm_in : OUT std_logic_vector(31 DOWNTO 0)
	);
END reg32;

-- Design Ports Information
-- to_bm_in[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[13]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[17]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[18]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[19]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[20]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[21]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[22]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[23]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[24]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[25]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[26]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[27]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[28]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[29]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[30]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_bm_in[31]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[2]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[5]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[8]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[10]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[12]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[16]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[18]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[19]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[20]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[22]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[23]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[24]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[25]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[26]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[27]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[28]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[30]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_bm_out[31]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_from_bm_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_to_bm_in : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \to_bm_in[0]~output_o\ : std_logic;
SIGNAL \to_bm_in[1]~output_o\ : std_logic;
SIGNAL \to_bm_in[2]~output_o\ : std_logic;
SIGNAL \to_bm_in[3]~output_o\ : std_logic;
SIGNAL \to_bm_in[4]~output_o\ : std_logic;
SIGNAL \to_bm_in[5]~output_o\ : std_logic;
SIGNAL \to_bm_in[6]~output_o\ : std_logic;
SIGNAL \to_bm_in[7]~output_o\ : std_logic;
SIGNAL \to_bm_in[8]~output_o\ : std_logic;
SIGNAL \to_bm_in[9]~output_o\ : std_logic;
SIGNAL \to_bm_in[10]~output_o\ : std_logic;
SIGNAL \to_bm_in[11]~output_o\ : std_logic;
SIGNAL \to_bm_in[12]~output_o\ : std_logic;
SIGNAL \to_bm_in[13]~output_o\ : std_logic;
SIGNAL \to_bm_in[14]~output_o\ : std_logic;
SIGNAL \to_bm_in[15]~output_o\ : std_logic;
SIGNAL \to_bm_in[16]~output_o\ : std_logic;
SIGNAL \to_bm_in[17]~output_o\ : std_logic;
SIGNAL \to_bm_in[18]~output_o\ : std_logic;
SIGNAL \to_bm_in[19]~output_o\ : std_logic;
SIGNAL \to_bm_in[20]~output_o\ : std_logic;
SIGNAL \to_bm_in[21]~output_o\ : std_logic;
SIGNAL \to_bm_in[22]~output_o\ : std_logic;
SIGNAL \to_bm_in[23]~output_o\ : std_logic;
SIGNAL \to_bm_in[24]~output_o\ : std_logic;
SIGNAL \to_bm_in[25]~output_o\ : std_logic;
SIGNAL \to_bm_in[26]~output_o\ : std_logic;
SIGNAL \to_bm_in[27]~output_o\ : std_logic;
SIGNAL \to_bm_in[28]~output_o\ : std_logic;
SIGNAL \to_bm_in[29]~output_o\ : std_logic;
SIGNAL \to_bm_in[30]~output_o\ : std_logic;
SIGNAL \to_bm_in[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \from_bm_out[0]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \to_bm_in[0]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[1]~input_o\ : std_logic;
SIGNAL \to_bm_in[1]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[1]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[2]~input_o\ : std_logic;
SIGNAL \to_bm_in[2]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[2]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[3]~input_o\ : std_logic;
SIGNAL \to_bm_in[3]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[3]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[4]~input_o\ : std_logic;
SIGNAL \to_bm_in[4]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[4]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[5]~input_o\ : std_logic;
SIGNAL \to_bm_in[5]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[6]~input_o\ : std_logic;
SIGNAL \to_bm_in[6]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[7]~input_o\ : std_logic;
SIGNAL \to_bm_in[7]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[7]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[8]~input_o\ : std_logic;
SIGNAL \to_bm_in[8]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[8]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[9]~input_o\ : std_logic;
SIGNAL \to_bm_in[9]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[10]~input_o\ : std_logic;
SIGNAL \to_bm_in[10]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[11]~input_o\ : std_logic;
SIGNAL \to_bm_in[11]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[12]~input_o\ : std_logic;
SIGNAL \to_bm_in[12]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[13]~input_o\ : std_logic;
SIGNAL \to_bm_in[13]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[14]~input_o\ : std_logic;
SIGNAL \to_bm_in[14]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[15]~input_o\ : std_logic;
SIGNAL \to_bm_in[15]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[15]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[16]~input_o\ : std_logic;
SIGNAL \to_bm_in[16]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[16]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[17]~input_o\ : std_logic;
SIGNAL \to_bm_in[17]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[17]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[18]~input_o\ : std_logic;
SIGNAL \to_bm_in[18]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[19]~input_o\ : std_logic;
SIGNAL \to_bm_in[19]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[19]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[20]~input_o\ : std_logic;
SIGNAL \to_bm_in[20]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[20]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[21]~input_o\ : std_logic;
SIGNAL \to_bm_in[21]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[21]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[22]~input_o\ : std_logic;
SIGNAL \to_bm_in[22]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[23]~input_o\ : std_logic;
SIGNAL \to_bm_in[23]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[23]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[24]~input_o\ : std_logic;
SIGNAL \to_bm_in[24]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[25]~input_o\ : std_logic;
SIGNAL \to_bm_in[25]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[26]~input_o\ : std_logic;
SIGNAL \to_bm_in[26]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[26]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[27]~input_o\ : std_logic;
SIGNAL \to_bm_in[27]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[27]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[28]~input_o\ : std_logic;
SIGNAL \to_bm_in[28]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[28]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[29]~input_o\ : std_logic;
SIGNAL \to_bm_in[29]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[29]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[30]~input_o\ : std_logic;
SIGNAL \to_bm_in[30]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[30]~reg0_q\ : std_logic;
SIGNAL \from_bm_out[31]~input_o\ : std_logic;
SIGNAL \to_bm_in[31]~reg0feeder_combout\ : std_logic;
SIGNAL \to_bm_in[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_from_bm_out <= from_bm_out;
ww_clr <= clr;
ww_clk <= clk;
ww_enable <= enable;
to_bm_in <= ww_to_bm_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N23
\to_bm_in[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[0]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\to_bm_in[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[1]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\to_bm_in[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[2]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\to_bm_in[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[3]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\to_bm_in[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[4]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\to_bm_in[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[5]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\to_bm_in[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[6]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\to_bm_in[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[7]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\to_bm_in[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[8]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\to_bm_in[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[9]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[9]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\to_bm_in[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[10]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\to_bm_in[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[11]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\to_bm_in[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[12]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[12]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\to_bm_in[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[13]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[13]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\to_bm_in[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[14]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\to_bm_in[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[15]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[15]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\to_bm_in[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[16]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[16]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\to_bm_in[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[17]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[17]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\to_bm_in[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[18]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[18]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\to_bm_in[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[19]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[19]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\to_bm_in[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[20]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[20]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\to_bm_in[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[21]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\to_bm_in[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[22]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[22]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\to_bm_in[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[23]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\to_bm_in[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[24]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[24]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\to_bm_in[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[25]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[25]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\to_bm_in[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[26]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\to_bm_in[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[27]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[27]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\to_bm_in[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[28]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[28]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\to_bm_in[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[29]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[29]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\to_bm_in[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[30]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[30]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\to_bm_in[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_bm_in[31]~reg0_q\,
	devoe => ww_devoe,
	o => \to_bm_in[31]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y15_N8
\from_bm_out[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(0),
	o => \from_bm_out[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G2
\clr~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y15_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X16_Y1_N1
\to_bm_in[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[0]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[0]~reg0_q\);

-- Location: IOIBUF_X41_Y20_N15
\from_bm_out[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(1),
	o => \from_bm_out[1]~input_o\);

-- Location: LCCOMB_X40_Y17_N24
\to_bm_in[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[1]~reg0feeder_combout\ = \from_bm_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[1]~input_o\,
	combout => \to_bm_in[1]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N25
\to_bm_in[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[1]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[1]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N22
\from_bm_out[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(2),
	o => \from_bm_out[2]~input_o\);

-- Location: LCCOMB_X40_Y17_N26
\to_bm_in[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[2]~reg0feeder_combout\ = \from_bm_out[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[2]~input_o\,
	combout => \to_bm_in[2]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N27
\to_bm_in[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[2]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[2]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N1
\from_bm_out[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(3),
	o => \from_bm_out[3]~input_o\);

-- Location: LCCOMB_X16_Y1_N10
\to_bm_in[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[3]~reg0feeder_combout\ = \from_bm_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[3]~input_o\,
	combout => \to_bm_in[3]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N11
\to_bm_in[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[3]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[3]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\from_bm_out[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(4),
	o => \from_bm_out[4]~input_o\);

-- Location: LCCOMB_X16_Y1_N4
\to_bm_in[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[4]~reg0feeder_combout\ = \from_bm_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[4]~input_o\,
	combout => \to_bm_in[4]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N5
\to_bm_in[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[4]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[4]~reg0_q\);

-- Location: IOIBUF_X41_Y12_N1
\from_bm_out[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(5),
	o => \from_bm_out[5]~input_o\);

-- Location: FF_X40_Y17_N29
\to_bm_in[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[5]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[5]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N8
\from_bm_out[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(6),
	o => \from_bm_out[6]~input_o\);

-- Location: FF_X16_Y1_N7
\to_bm_in[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[6]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[6]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N15
\from_bm_out[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(7),
	o => \from_bm_out[7]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\to_bm_in[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[7]~reg0feeder_combout\ = \from_bm_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[7]~input_o\,
	combout => \to_bm_in[7]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N17
\to_bm_in[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[7]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[7]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N15
\from_bm_out[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(8),
	o => \from_bm_out[8]~input_o\);

-- Location: LCCOMB_X16_Y1_N2
\to_bm_in[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[8]~reg0feeder_combout\ = \from_bm_out[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[8]~input_o\,
	combout => \to_bm_in[8]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N3
\to_bm_in[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[8]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[8]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N1
\from_bm_out[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(9),
	o => \from_bm_out[9]~input_o\);

-- Location: FF_X16_Y1_N13
\to_bm_in[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[9]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[9]~reg0_q\);

-- Location: IOIBUF_X41_Y19_N8
\from_bm_out[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(10),
	o => \from_bm_out[10]~input_o\);

-- Location: FF_X40_Y17_N15
\to_bm_in[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[10]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[10]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N1
\from_bm_out[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(11),
	o => \from_bm_out[11]~input_o\);

-- Location: FF_X16_Y1_N31
\to_bm_in[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[11]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[11]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N22
\from_bm_out[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(12),
	o => \from_bm_out[12]~input_o\);

-- Location: FF_X16_Y1_N9
\to_bm_in[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[12]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[12]~reg0_q\);

-- Location: IOIBUF_X41_Y14_N22
\from_bm_out[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(13),
	o => \from_bm_out[13]~input_o\);

-- Location: FF_X40_Y17_N1
\to_bm_in[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[13]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[13]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N15
\from_bm_out[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(14),
	o => \from_bm_out[14]~input_o\);

-- Location: FF_X40_Y17_N3
\to_bm_in[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[14]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[14]~reg0_q\);

-- Location: IOIBUF_X14_Y29_N22
\from_bm_out[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(15),
	o => \from_bm_out[15]~input_o\);

-- Location: LCCOMB_X16_Y1_N18
\to_bm_in[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[15]~reg0feeder_combout\ = \from_bm_out[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[15]~input_o\,
	combout => \to_bm_in[15]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N19
\to_bm_in[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[15]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[15]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N1
\from_bm_out[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(16),
	o => \from_bm_out[16]~input_o\);

-- Location: LCCOMB_X40_Y17_N12
\to_bm_in[16]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[16]~reg0feeder_combout\ = \from_bm_out[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[16]~input_o\,
	combout => \to_bm_in[16]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N13
\to_bm_in[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[16]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[16]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\from_bm_out[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(17),
	o => \from_bm_out[17]~input_o\);

-- Location: LCCOMB_X16_Y1_N20
\to_bm_in[17]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[17]~reg0feeder_combout\ = \from_bm_out[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[17]~input_o\,
	combout => \to_bm_in[17]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N21
\to_bm_in[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[17]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[17]~reg0_q\);

-- Location: IOIBUF_X41_Y14_N15
\from_bm_out[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(18),
	o => \from_bm_out[18]~input_o\);

-- Location: FF_X40_Y17_N31
\to_bm_in[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[18]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[18]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N1
\from_bm_out[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(19),
	o => \from_bm_out[19]~input_o\);

-- Location: LCCOMB_X16_Y1_N22
\to_bm_in[19]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[19]~reg0feeder_combout\ = \from_bm_out[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[19]~input_o\,
	combout => \to_bm_in[19]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N23
\to_bm_in[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[19]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[19]~reg0_q\);

-- Location: IOIBUF_X39_Y29_N8
\from_bm_out[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(20),
	o => \from_bm_out[20]~input_o\);

-- Location: LCCOMB_X40_Y17_N16
\to_bm_in[20]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[20]~reg0feeder_combout\ = \from_bm_out[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[20]~input_o\,
	combout => \to_bm_in[20]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N17
\to_bm_in[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[20]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[20]~reg0_q\);

-- Location: IOIBUF_X16_Y29_N15
\from_bm_out[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(21),
	o => \from_bm_out[21]~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\to_bm_in[21]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[21]~reg0feeder_combout\ = \from_bm_out[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[21]~input_o\,
	combout => \to_bm_in[21]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N25
\to_bm_in[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[21]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[21]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\from_bm_out[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(22),
	o => \from_bm_out[22]~input_o\);

-- Location: FF_X16_Y1_N27
\to_bm_in[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[22]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[22]~reg0_q\);

-- Location: IOIBUF_X41_Y23_N8
\from_bm_out[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(23),
	o => \from_bm_out[23]~input_o\);

-- Location: LCCOMB_X40_Y17_N10
\to_bm_in[23]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[23]~reg0feeder_combout\ = \from_bm_out[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[23]~input_o\,
	combout => \to_bm_in[23]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N11
\to_bm_in[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[23]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[23]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N29
\from_bm_out[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(24),
	o => \from_bm_out[24]~input_o\);

-- Location: FF_X16_Y1_N29
\to_bm_in[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[24]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[24]~reg0_q\);

-- Location: IOIBUF_X41_Y20_N8
\from_bm_out[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(25),
	o => \from_bm_out[25]~input_o\);

-- Location: FF_X40_Y17_N21
\to_bm_in[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \from_bm_out[25]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[25]~reg0_q\);

-- Location: IOIBUF_X35_Y29_N8
\from_bm_out[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(26),
	o => \from_bm_out[26]~input_o\);

-- Location: LCCOMB_X40_Y17_N6
\to_bm_in[26]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[26]~reg0feeder_combout\ = \from_bm_out[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[26]~input_o\,
	combout => \to_bm_in[26]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N7
\to_bm_in[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[26]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[26]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N22
\from_bm_out[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(27),
	o => \from_bm_out[27]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\to_bm_in[27]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[27]~reg0feeder_combout\ = \from_bm_out[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[27]~input_o\,
	combout => \to_bm_in[27]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N15
\to_bm_in[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[27]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[27]~reg0_q\);

-- Location: IOIBUF_X41_Y21_N8
\from_bm_out[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(28),
	o => \from_bm_out[28]~input_o\);

-- Location: LCCOMB_X40_Y17_N8
\to_bm_in[28]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[28]~reg0feeder_combout\ = \from_bm_out[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[28]~input_o\,
	combout => \to_bm_in[28]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N9
\to_bm_in[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[28]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[28]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N22
\from_bm_out[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(29),
	o => \from_bm_out[29]~input_o\);

-- Location: LCCOMB_X40_Y17_N18
\to_bm_in[29]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[29]~reg0feeder_combout\ = \from_bm_out[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[29]~input_o\,
	combout => \to_bm_in[29]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N19
\to_bm_in[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[29]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[29]~reg0_q\);

-- Location: IOIBUF_X41_Y21_N1
\from_bm_out[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(30),
	o => \from_bm_out[30]~input_o\);

-- Location: LCCOMB_X40_Y17_N4
\to_bm_in[30]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[30]~reg0feeder_combout\ = \from_bm_out[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[30]~input_o\,
	combout => \to_bm_in[30]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N5
\to_bm_in[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[30]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[30]~reg0_q\);

-- Location: IOIBUF_X41_Y18_N15
\from_bm_out[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_bm_out(31),
	o => \from_bm_out[31]~input_o\);

-- Location: LCCOMB_X40_Y17_N22
\to_bm_in[31]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_bm_in[31]~reg0feeder_combout\ = \from_bm_out[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \from_bm_out[31]~input_o\,
	combout => \to_bm_in[31]~reg0feeder_combout\);

-- Location: FF_X40_Y17_N23
\to_bm_in[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \to_bm_in[31]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \to_bm_in[31]~reg0_q\);

ww_to_bm_in(0) <= \to_bm_in[0]~output_o\;

ww_to_bm_in(1) <= \to_bm_in[1]~output_o\;

ww_to_bm_in(2) <= \to_bm_in[2]~output_o\;

ww_to_bm_in(3) <= \to_bm_in[3]~output_o\;

ww_to_bm_in(4) <= \to_bm_in[4]~output_o\;

ww_to_bm_in(5) <= \to_bm_in[5]~output_o\;

ww_to_bm_in(6) <= \to_bm_in[6]~output_o\;

ww_to_bm_in(7) <= \to_bm_in[7]~output_o\;

ww_to_bm_in(8) <= \to_bm_in[8]~output_o\;

ww_to_bm_in(9) <= \to_bm_in[9]~output_o\;

ww_to_bm_in(10) <= \to_bm_in[10]~output_o\;

ww_to_bm_in(11) <= \to_bm_in[11]~output_o\;

ww_to_bm_in(12) <= \to_bm_in[12]~output_o\;

ww_to_bm_in(13) <= \to_bm_in[13]~output_o\;

ww_to_bm_in(14) <= \to_bm_in[14]~output_o\;

ww_to_bm_in(15) <= \to_bm_in[15]~output_o\;

ww_to_bm_in(16) <= \to_bm_in[16]~output_o\;

ww_to_bm_in(17) <= \to_bm_in[17]~output_o\;

ww_to_bm_in(18) <= \to_bm_in[18]~output_o\;

ww_to_bm_in(19) <= \to_bm_in[19]~output_o\;

ww_to_bm_in(20) <= \to_bm_in[20]~output_o\;

ww_to_bm_in(21) <= \to_bm_in[21]~output_o\;

ww_to_bm_in(22) <= \to_bm_in[22]~output_o\;

ww_to_bm_in(23) <= \to_bm_in[23]~output_o\;

ww_to_bm_in(24) <= \to_bm_in[24]~output_o\;

ww_to_bm_in(25) <= \to_bm_in[25]~output_o\;

ww_to_bm_in(26) <= \to_bm_in[26]~output_o\;

ww_to_bm_in(27) <= \to_bm_in[27]~output_o\;

ww_to_bm_in(28) <= \to_bm_in[28]~output_o\;

ww_to_bm_in(29) <= \to_bm_in[29]~output_o\;

ww_to_bm_in(30) <= \to_bm_in[30]~output_o\;

ww_to_bm_in(31) <= \to_bm_in[31]~output_o\;
END structure;


