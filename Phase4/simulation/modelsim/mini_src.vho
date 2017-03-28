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

-- DATE "03/27/2017 15:39:34"

-- 
-- Device: Altera EP3C16F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg32 IS
    PORT (
	from_the_bus : IN std_logic_vector(31 DOWNTO 0);
	clear : IN std_logic;
	clock : IN std_logic;
	enable : IN std_logic;
	to_the_bus : OUT std_logic_vector(31 DOWNTO 0)
	);
END reg32;

-- Design Ports Information
-- to_the_bus[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[7]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[11]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[14]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[15]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[16]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[17]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[18]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[19]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[20]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[21]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[22]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[24]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[25]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[26]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[27]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[28]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[29]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[30]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_the_bus[31]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[5]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[11]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[13]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[14]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[15]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[16]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[17]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[18]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[19]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[20]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[21]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[22]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[23]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[24]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[25]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[26]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[27]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[28]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[29]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[30]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_the_bus[31]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_from_the_bus : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clear : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_to_the_bus : std_logic_vector(31 DOWNTO 0);
SIGNAL \to_the_bus[31]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \to_the_bus[0]~output_o\ : std_logic;
SIGNAL \to_the_bus[1]~output_o\ : std_logic;
SIGNAL \to_the_bus[2]~output_o\ : std_logic;
SIGNAL \to_the_bus[3]~output_o\ : std_logic;
SIGNAL \to_the_bus[4]~output_o\ : std_logic;
SIGNAL \to_the_bus[5]~output_o\ : std_logic;
SIGNAL \to_the_bus[6]~output_o\ : std_logic;
SIGNAL \to_the_bus[7]~output_o\ : std_logic;
SIGNAL \to_the_bus[8]~output_o\ : std_logic;
SIGNAL \to_the_bus[9]~output_o\ : std_logic;
SIGNAL \to_the_bus[10]~output_o\ : std_logic;
SIGNAL \to_the_bus[11]~output_o\ : std_logic;
SIGNAL \to_the_bus[12]~output_o\ : std_logic;
SIGNAL \to_the_bus[13]~output_o\ : std_logic;
SIGNAL \to_the_bus[14]~output_o\ : std_logic;
SIGNAL \to_the_bus[15]~output_o\ : std_logic;
SIGNAL \to_the_bus[16]~output_o\ : std_logic;
SIGNAL \to_the_bus[17]~output_o\ : std_logic;
SIGNAL \to_the_bus[18]~output_o\ : std_logic;
SIGNAL \to_the_bus[19]~output_o\ : std_logic;
SIGNAL \to_the_bus[20]~output_o\ : std_logic;
SIGNAL \to_the_bus[21]~output_o\ : std_logic;
SIGNAL \to_the_bus[22]~output_o\ : std_logic;
SIGNAL \to_the_bus[23]~output_o\ : std_logic;
SIGNAL \to_the_bus[24]~output_o\ : std_logic;
SIGNAL \to_the_bus[25]~output_o\ : std_logic;
SIGNAL \to_the_bus[26]~output_o\ : std_logic;
SIGNAL \to_the_bus[27]~output_o\ : std_logic;
SIGNAL \to_the_bus[28]~output_o\ : std_logic;
SIGNAL \to_the_bus[29]~output_o\ : std_logic;
SIGNAL \to_the_bus[30]~output_o\ : std_logic;
SIGNAL \to_the_bus[31]~output_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \from_the_bus[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \to_the_bus[31]~0_combout\ : std_logic;
SIGNAL \to_the_bus[31]~0clkctrl_outclk\ : std_logic;
SIGNAL \to_the_bus[0]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[1]~input_o\ : std_logic;
SIGNAL \to_the_bus[1]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[2]~input_o\ : std_logic;
SIGNAL \to_the_bus[2]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[3]~input_o\ : std_logic;
SIGNAL \to_the_bus[3]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[4]~input_o\ : std_logic;
SIGNAL \to_the_bus[4]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[5]~input_o\ : std_logic;
SIGNAL \to_the_bus[5]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[6]~input_o\ : std_logic;
SIGNAL \to_the_bus[6]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[7]~input_o\ : std_logic;
SIGNAL \to_the_bus[7]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[8]~input_o\ : std_logic;
SIGNAL \to_the_bus[8]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[9]~input_o\ : std_logic;
SIGNAL \to_the_bus[9]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[10]~input_o\ : std_logic;
SIGNAL \to_the_bus[10]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[11]~input_o\ : std_logic;
SIGNAL \to_the_bus[11]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[12]~input_o\ : std_logic;
SIGNAL \to_the_bus[12]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[13]~input_o\ : std_logic;
SIGNAL \to_the_bus[13]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[14]~input_o\ : std_logic;
SIGNAL \to_the_bus[14]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[15]~input_o\ : std_logic;
SIGNAL \to_the_bus[15]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[16]~input_o\ : std_logic;
SIGNAL \to_the_bus[16]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[17]~input_o\ : std_logic;
SIGNAL \to_the_bus[17]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[18]~input_o\ : std_logic;
SIGNAL \to_the_bus[18]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[19]~input_o\ : std_logic;
SIGNAL \to_the_bus[19]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[20]~input_o\ : std_logic;
SIGNAL \to_the_bus[20]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[21]~input_o\ : std_logic;
SIGNAL \to_the_bus[21]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[22]~input_o\ : std_logic;
SIGNAL \to_the_bus[22]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[23]~input_o\ : std_logic;
SIGNAL \to_the_bus[23]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[24]~input_o\ : std_logic;
SIGNAL \to_the_bus[24]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[25]~input_o\ : std_logic;
SIGNAL \to_the_bus[25]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[26]~input_o\ : std_logic;
SIGNAL \to_the_bus[26]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[27]~input_o\ : std_logic;
SIGNAL \to_the_bus[27]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[28]~input_o\ : std_logic;
SIGNAL \to_the_bus[28]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[29]~input_o\ : std_logic;
SIGNAL \to_the_bus[29]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[30]~input_o\ : std_logic;
SIGNAL \to_the_bus[30]$latch~combout\ : std_logic;
SIGNAL \from_the_bus[31]~input_o\ : std_logic;
SIGNAL \to_the_bus[31]$latch~combout\ : std_logic;

BEGIN

ww_from_the_bus <= from_the_bus;
ww_clear <= clear;
ww_clock <= clock;
ww_enable <= enable;
to_the_bus <= ww_to_the_bus;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\to_the_bus[31]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \to_the_bus[31]~0_combout\);

-- Location: IOOBUF_X41_Y22_N16
\to_the_bus[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[0]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[0]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\to_the_bus[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[1]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\to_the_bus[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[2]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\to_the_bus[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[3]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\to_the_bus[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[4]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[4]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\to_the_bus[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[5]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\to_the_bus[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[6]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[6]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\to_the_bus[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[7]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[7]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\to_the_bus[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[8]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\to_the_bus[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[9]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\to_the_bus[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[10]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[10]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\to_the_bus[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[11]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\to_the_bus[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[12]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\to_the_bus[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[13]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[13]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\to_the_bus[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[14]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[14]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\to_the_bus[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[15]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[15]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\to_the_bus[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[16]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[16]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\to_the_bus[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[17]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[17]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\to_the_bus[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[18]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[18]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\to_the_bus[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[19]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\to_the_bus[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[20]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[20]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\to_the_bus[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[21]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[21]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\to_the_bus[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[22]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[22]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\to_the_bus[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[23]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[23]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\to_the_bus[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[24]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[24]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\to_the_bus[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[25]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[25]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\to_the_bus[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[26]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[26]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\to_the_bus[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[27]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[27]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\to_the_bus[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[28]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[28]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\to_the_bus[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[29]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[29]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\to_the_bus[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[30]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[30]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\to_the_bus[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_the_bus[31]$latch~combout\,
	devoe => ww_devoe,
	o => \to_the_bus[31]~output_o\);

-- Location: IOIBUF_X41_Y6_N22
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\from_the_bus[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(0),
	o => \from_the_bus[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X22_Y1_N30
\to_the_bus[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[31]~0_combout\ = (\enable~input_o\ & \clock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \clock~input_o\,
	combout => \to_the_bus[31]~0_combout\);

-- Location: CLKCTRL_G17
\to_the_bus[31]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \to_the_bus[31]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \to_the_bus[31]~0clkctrl_outclk\);

-- Location: LCCOMB_X40_Y22_N8
\to_the_bus[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[0]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[0]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \from_the_bus[0]~input_o\,
	datac => \to_the_bus[0]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[0]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N22
\from_the_bus[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(1),
	o => \from_the_bus[1]~input_o\);

-- Location: LCCOMB_X36_Y1_N16
\to_the_bus[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[1]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[1]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[1]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[1]$latch~combout\,
	combout => \to_the_bus[1]$latch~combout\);

-- Location: IOIBUF_X37_Y0_N1
\from_the_bus[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(2),
	o => \from_the_bus[2]~input_o\);

-- Location: LCCOMB_X36_Y1_N18
\to_the_bus[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[2]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[2]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[2]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[2]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[2]$latch~combout\);

-- Location: IOIBUF_X41_Y24_N15
\from_the_bus[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(3),
	o => \from_the_bus[3]~input_o\);

-- Location: LCCOMB_X40_Y22_N10
\to_the_bus[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[3]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[3]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[3]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[3]$latch~combout\,
	combout => \to_the_bus[3]$latch~combout\);

-- Location: IOIBUF_X41_Y22_N1
\from_the_bus[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(4),
	o => \from_the_bus[4]~input_o\);

-- Location: LCCOMB_X40_Y22_N28
\to_the_bus[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[4]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[4]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[4]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[4]$latch~combout\,
	combout => \to_the_bus[4]$latch~combout\);

-- Location: IOIBUF_X37_Y0_N8
\from_the_bus[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(5),
	o => \from_the_bus[5]~input_o\);

-- Location: LCCOMB_X36_Y1_N12
\to_the_bus[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[5]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[5]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_the_bus[5]$latch~combout\,
	datab => \clear~input_o\,
	datac => \from_the_bus[5]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[5]$latch~combout\);

-- Location: IOIBUF_X41_Y2_N1
\from_the_bus[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(6),
	o => \from_the_bus[6]~input_o\);

-- Location: LCCOMB_X36_Y1_N14
\to_the_bus[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[6]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[6]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[6]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[6]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[6]$latch~combout\);

-- Location: IOIBUF_X41_Y20_N15
\from_the_bus[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(7),
	o => \from_the_bus[7]~input_o\);

-- Location: LCCOMB_X40_Y22_N22
\to_the_bus[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[7]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[7]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[7]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[7]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[7]$latch~combout\);

-- Location: IOIBUF_X41_Y21_N22
\from_the_bus[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(8),
	o => \from_the_bus[8]~input_o\);

-- Location: LCCOMB_X40_Y22_N24
\to_the_bus[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[8]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[8]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[8]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[8]$latch~combout\,
	combout => \to_the_bus[8]$latch~combout\);

-- Location: IOIBUF_X39_Y0_N29
\from_the_bus[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(9),
	o => \from_the_bus[9]~input_o\);

-- Location: LCCOMB_X36_Y1_N0
\to_the_bus[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[9]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[9]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[9]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[9]$latch~combout\,
	combout => \to_the_bus[9]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N15
\from_the_bus[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(10),
	o => \from_the_bus[10]~input_o\);

-- Location: LCCOMB_X36_Y1_N26
\to_the_bus[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[10]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[10]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[10]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[10]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[10]$latch~combout\);

-- Location: IOIBUF_X41_Y19_N8
\from_the_bus[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(11),
	o => \from_the_bus[11]~input_o\);

-- Location: LCCOMB_X40_Y22_N18
\to_the_bus[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[11]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[11]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \to_the_bus[11]$latch~combout\,
	datac => \from_the_bus[11]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[11]$latch~combout\);

-- Location: IOIBUF_X41_Y2_N22
\from_the_bus[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(12),
	o => \from_the_bus[12]~input_o\);

-- Location: LCCOMB_X36_Y1_N4
\to_the_bus[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[12]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[12]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[12]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[12]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[12]$latch~combout\);

-- Location: IOIBUF_X41_Y2_N15
\from_the_bus[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(13),
	o => \from_the_bus[13]~input_o\);

-- Location: LCCOMB_X36_Y1_N22
\to_the_bus[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[13]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[13]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[13]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[13]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[13]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[13]$latch~combout\);

-- Location: IOIBUF_X41_Y26_N22
\from_the_bus[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(14),
	o => \from_the_bus[14]~input_o\);

-- Location: LCCOMB_X40_Y22_N12
\to_the_bus[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[14]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[14]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_the_bus[14]$latch~combout\,
	datab => \from_the_bus[14]~input_o\,
	datac => \clear~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[14]$latch~combout\);

-- Location: IOIBUF_X41_Y19_N1
\from_the_bus[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(15),
	o => \from_the_bus[15]~input_o\);

-- Location: LCCOMB_X40_Y22_N14
\to_the_bus[15]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[15]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[15]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[15]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[15]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[15]$latch~combout\);

-- Location: IOIBUF_X41_Y24_N8
\from_the_bus[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(16),
	o => \from_the_bus[16]~input_o\);

-- Location: LCCOMB_X40_Y22_N0
\to_the_bus[16]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[16]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[16]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[16]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \to_the_bus[16]$latch~combout\,
	datac => \from_the_bus[16]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[16]$latch~combout\);

-- Location: IOIBUF_X41_Y19_N22
\from_the_bus[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(17),
	o => \from_the_bus[17]~input_o\);

-- Location: LCCOMB_X40_Y22_N2
\to_the_bus[17]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[17]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[17]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[17]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[17]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[17]$latch~combout\,
	combout => \to_the_bus[17]$latch~combout\);

-- Location: IOIBUF_X39_Y0_N8
\from_the_bus[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(18),
	o => \from_the_bus[18]~input_o\);

-- Location: LCCOMB_X36_Y1_N24
\to_the_bus[18]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[18]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[18]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[18]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \to_the_bus[18]$latch~combout\,
	datac => \from_the_bus[18]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[18]$latch~combout\);

-- Location: IOIBUF_X41_Y24_N22
\from_the_bus[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(19),
	o => \from_the_bus[19]~input_o\);

-- Location: LCCOMB_X40_Y22_N20
\to_the_bus[19]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[19]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[19]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[19]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \from_the_bus[19]~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[19]$latch~combout\,
	combout => \to_the_bus[19]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N29
\from_the_bus[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(20),
	o => \from_the_bus[20]~input_o\);

-- Location: LCCOMB_X36_Y1_N10
\to_the_bus[20]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[20]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[20]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[20]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_the_bus[20]$latch~combout\,
	datab => \clear~input_o\,
	datac => \from_the_bus[20]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[20]$latch~combout\);

-- Location: IOIBUF_X41_Y23_N15
\from_the_bus[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(21),
	o => \from_the_bus[21]~input_o\);

-- Location: LCCOMB_X40_Y22_N6
\to_the_bus[21]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[21]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[21]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[21]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_the_bus[21]$latch~combout\,
	datab => \clear~input_o\,
	datac => \from_the_bus[21]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[21]$latch~combout\);

-- Location: IOIBUF_X41_Y20_N8
\from_the_bus[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(22),
	o => \from_the_bus[22]~input_o\);

-- Location: LCCOMB_X40_Y22_N16
\to_the_bus[22]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[22]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[22]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[22]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[22]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[22]$latch~combout\,
	combout => \to_the_bus[22]$latch~combout\);

-- Location: IOIBUF_X41_Y21_N8
\from_the_bus[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(23),
	o => \from_the_bus[23]~input_o\);

-- Location: LCCOMB_X40_Y22_N26
\to_the_bus[23]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[23]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[23]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[23]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[23]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[23]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[23]$latch~combout\);

-- Location: IOIBUF_X41_Y25_N1
\from_the_bus[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(24),
	o => \from_the_bus[24]~input_o\);

-- Location: LCCOMB_X40_Y22_N4
\to_the_bus[24]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[24]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[24]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[24]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \from_the_bus[24]~input_o\,
	datac => \to_the_bus[24]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[24]$latch~combout\);

-- Location: IOIBUF_X37_Y0_N29
\from_the_bus[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(25),
	o => \from_the_bus[25]~input_o\);

-- Location: LCCOMB_X36_Y1_N28
\to_the_bus[25]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[25]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[25]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[25]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[25]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]~0clkctrl_outclk\,
	datad => \to_the_bus[25]$latch~combout\,
	combout => \to_the_bus[25]$latch~combout\);

-- Location: IOIBUF_X35_Y0_N29
\from_the_bus[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(26),
	o => \from_the_bus[26]~input_o\);

-- Location: LCCOMB_X36_Y1_N6
\to_the_bus[26]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[26]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[26]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[26]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_the_bus[26]$latch~combout\,
	datab => \clear~input_o\,
	datac => \from_the_bus[26]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[26]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N22
\from_the_bus[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(27),
	o => \from_the_bus[27]~input_o\);

-- Location: LCCOMB_X36_Y1_N8
\to_the_bus[27]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[27]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[27]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[27]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[27]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[27]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[27]$latch~combout\);

-- Location: IOIBUF_X35_Y0_N1
\from_the_bus[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(28),
	o => \from_the_bus[28]~input_o\);

-- Location: LCCOMB_X36_Y1_N2
\to_the_bus[28]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[28]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[28]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[28]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[28]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[28]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[28]$latch~combout\);

-- Location: IOIBUF_X41_Y23_N1
\from_the_bus[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(29),
	o => \from_the_bus[29]~input_o\);

-- Location: LCCOMB_X40_Y22_N30
\to_the_bus[29]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[29]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[29]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[29]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[29]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[29]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[29]$latch~combout\);

-- Location: IOIBUF_X37_Y0_N15
\from_the_bus[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(30),
	o => \from_the_bus[30]~input_o\);

-- Location: LCCOMB_X36_Y1_N20
\to_the_bus[30]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[30]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\from_the_bus[30]~input_o\))) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\to_the_bus[30]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \to_the_bus[30]$latch~combout\,
	datac => \from_the_bus[30]~input_o\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[30]$latch~combout\);

-- Location: IOIBUF_X39_Y0_N22
\from_the_bus[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_the_bus(31),
	o => \from_the_bus[31]~input_o\);

-- Location: LCCOMB_X36_Y1_N30
\to_the_bus[31]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \to_the_bus[31]$latch~combout\ = (!\clear~input_o\ & ((GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & (\from_the_bus[31]~input_o\)) # (!GLOBAL(\to_the_bus[31]~0clkctrl_outclk\) & ((\to_the_bus[31]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_the_bus[31]~input_o\,
	datab => \clear~input_o\,
	datac => \to_the_bus[31]$latch~combout\,
	datad => \to_the_bus[31]~0clkctrl_outclk\,
	combout => \to_the_bus[31]$latch~combout\);

ww_to_the_bus(0) <= \to_the_bus[0]~output_o\;

ww_to_the_bus(1) <= \to_the_bus[1]~output_o\;

ww_to_the_bus(2) <= \to_the_bus[2]~output_o\;

ww_to_the_bus(3) <= \to_the_bus[3]~output_o\;

ww_to_the_bus(4) <= \to_the_bus[4]~output_o\;

ww_to_the_bus(5) <= \to_the_bus[5]~output_o\;

ww_to_the_bus(6) <= \to_the_bus[6]~output_o\;

ww_to_the_bus(7) <= \to_the_bus[7]~output_o\;

ww_to_the_bus(8) <= \to_the_bus[8]~output_o\;

ww_to_the_bus(9) <= \to_the_bus[9]~output_o\;

ww_to_the_bus(10) <= \to_the_bus[10]~output_o\;

ww_to_the_bus(11) <= \to_the_bus[11]~output_o\;

ww_to_the_bus(12) <= \to_the_bus[12]~output_o\;

ww_to_the_bus(13) <= \to_the_bus[13]~output_o\;

ww_to_the_bus(14) <= \to_the_bus[14]~output_o\;

ww_to_the_bus(15) <= \to_the_bus[15]~output_o\;

ww_to_the_bus(16) <= \to_the_bus[16]~output_o\;

ww_to_the_bus(17) <= \to_the_bus[17]~output_o\;

ww_to_the_bus(18) <= \to_the_bus[18]~output_o\;

ww_to_the_bus(19) <= \to_the_bus[19]~output_o\;

ww_to_the_bus(20) <= \to_the_bus[20]~output_o\;

ww_to_the_bus(21) <= \to_the_bus[21]~output_o\;

ww_to_the_bus(22) <= \to_the_bus[22]~output_o\;

ww_to_the_bus(23) <= \to_the_bus[23]~output_o\;

ww_to_the_bus(24) <= \to_the_bus[24]~output_o\;

ww_to_the_bus(25) <= \to_the_bus[25]~output_o\;

ww_to_the_bus(26) <= \to_the_bus[26]~output_o\;

ww_to_the_bus(27) <= \to_the_bus[27]~output_o\;

ww_to_the_bus(28) <= \to_the_bus[28]~output_o\;

ww_to_the_bus(29) <= \to_the_bus[29]~output_o\;

ww_to_the_bus(30) <= \to_the_bus[30]~output_o\;

ww_to_the_bus(31) <= \to_the_bus[31]~output_o\;
END structure;


