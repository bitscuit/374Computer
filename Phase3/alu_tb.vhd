-- adder_lpm_rc_tb.vhd file: <This is the filename>
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- entity declaration only. No definition here
ENTITY alu_tb IS
END ;
-- Architecture of the testbench with the signal names
ARCHITECTURE alu_tb_arch OF alu_tb IS
	SIGNAL A		:	std_logic_vector(31 downto 0);
	SIGNAL B		: 	std_logic_vector(31 downto 0);
	SIGNAL Clock :	std_logic;
	SIGNAL Clear : std_logic;
	SIGNAL Enable : std_logic;
	signal sel : std_LOGIC_VECTOR(3 downto 0);
	
	SIGNAL Zlo	: std_logic_vector(31 downto 0);
	SIGNAL Zhi	: std_logic_vector(31 downto 0);
	-- compontent instantiation of the Design Under test (DUT)
	COMPONENT alu
		PORT (
			A		:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			B		:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			clk	:	IN STD_LOGIC;
			clr	:	IN STD_LOGIC;
			enable:	IN STD_LOGIC;
			sel	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			
			zlo	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			zhi	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT alu;
	
	BEGIN
		DUT1	:	alu
		--port mapping: between the DUT and the testbench signals
			PORT MAP (
				A	=>	A,
				B	=> B,
				clk => Clock,
				clr => Clear,
				enable => Enable,
				sel => sel,
				zlo => Zlo,
				zhi => Zhi);
				
		--add test logic here
		sim_process: process
		
		begin
				wait for 0 ns;
			A <= x"00000001";
			B <= x"00000002";
			sel <= "00000"; -- Addition :’00000’, Subtraction : ‘00001’
				wait for 20 ns;
	end process sim_process;
	end;