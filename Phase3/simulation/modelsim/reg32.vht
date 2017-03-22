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
-- Generated on "02/26/2017 16:08:53"
                                                            
-- Vhdl Test Bench template for design  :  reg32
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg32_vhd_tst IS
END reg32_vhd_tst;
ARCHITECTURE reg32_arch OF reg32_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL from_bm_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL to_bm_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT reg32
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	from_bm_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	to_bm_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : reg32
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	enable => enable,
	from_bm_out => from_bm_out,
	to_bm_in => to_bm_in
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END reg32_arch;
