libary ieee;
use ieee.std_logic_1164.all;

-- Arithmetic Logic Unit for the computer

entity control_unit is
port(
	clk, reset, stop, conff : in std_logic;
	IR : in std_logic_vector(31 downto 0);
	
	run, clr : out std_logic_vector;
	inport_out, mem_read, mem_write : out std_logic;
	hi_in, lo_in, con_in, pc_in, ir_in, y_in, z_in, mar_in,
		mdr_in, outport_in, c_out, BA_out : out std_logic;
	pc_out, mdr_out, zhi_out, zlo_out, hi_out, lo_out, r_in, r_out, gra, grb, grc : out std_logic;
	sel_alu : in std_logic_vector(3 downto 0);
	);
end entity control_unit;

architecture behavioral of control_unit is
	Type state is (reset_state, run_state, fetch0, fetch1, fetch2, fetch3, fetch4, 
		ld_state, ldi_state, ldr_state, 
		st_state, str_state,
		add_state, addi_state, 
		sub_state,
		shr_state, shl_state,
		ror_state, rol_state,
		and_state, andi_state, or_state, ori_state, 
		mul_state, div_state,
		neg_state,
		not_state,
		brzr_state, brnz_state, brmi_state, brpl_state,
		jr_state, jal_state,
		in_state, out_state,
		mfhi_state, mflo_state,
		nop_state, halt_state);
	
	signal present_state;

begin
process (clk, reset)

end architecture behavioral;