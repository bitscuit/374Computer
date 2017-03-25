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
	Type state is (reset_state, fetch0, fetch1, fetch2, fetch3, fetch4, 
		ld_state0, ld_state1, ld_state2, ld_state3, ld_state4, ld_state5, ld_state6, 
		ldi_state0, ldi_state1, ldi_state2,  
		st_state0, st_state1, st_state2, st_state3, st_state4, st_state5,
		ldr_state0, ldr_state1, ldr_state2, ldr_state3, ldr_state4, ldr_state5 ldr_state6,
		str_state0, str_state1, str_state2, str_state3, str_state4, str_state5,
		add_state0, add_state1, add_state2, 
		sub_state0, sub_state1, sub_state2,
		and_state0, and_state1, and_state2, 
		or_state0, or_state1, or_state2, 
		shr_state0, shr_state1, shr_state2, 
		shl_state0, shl_state1, shl_state2,
		ror_state0, ror_state1, ror_state2, 
		rol_state0, rol_state1, rol_state2,
		addi_state0, addi_state1, addi_state2,
		andi_state0, andi_state1, andi_state2, 
		ori_state0, ori_state1, ori_state2, 
		mul_state0, mul_state1, mul_state2, mul_state3, 
		div_state0, div_state1, div_state2, div_state3,
		neg_state0, neg_state1,
		not_state0, not_state1,
		br_state0, br_state1,
		jr_state, 
		jal_state0, jal_state1,
		in_state, out_state,
		mfhi_state, mflo_state,
		nop_state, halt_state);
	
	signal present_state : state;
begin
fsm : process(clk, reset)
begin
	if (reset = '1') then
		present_state <= reset_state;
	elsif (clk'EVENT and clk = '1') then
		case present_state is
			when reset_state =>
				present_state <= fetch0;
			when fetch0 =>
				present_state <= fetch1;
			when fetch1 =>
				present_state <= fetch2;
			when fetch2 =>
				present_state <= fetch3;
			when fetch3 =>
				present_state <= fetch4;
			when fetch4 =>
				case IR(31 downto 27) is
					when "00000" =>
						present_state <= ld_state0;
					when "00001" =>
						present_state <= ldi_state0;
					when "00010" =>
						present_state <= st_state0;
					when "00011" =>
						present_state <= ldr_state0;
					when "00100" =>
						present_state <= str_state0;
					when "00101" =>
						present_state <= add_state0;
					when "00110" =>
						present_state <= sub_state0;
					when "00111" =>
						present_state <= and_state0;
					when "01000" =>
						present_state <= or_state0;
					when "01001" =>
						present_state <= shr_state0;
					when "01010" =>
						present_state <= shl_state0;
					when "01011" =>
						present_state <= ror_state0;
					when "01100" =>
						present_state <= rol_state0;
					when "01101" =>
						present_state <= addi_state0;
					when "01110" =>
						present_state <= andi_state0;
					when "01111" =>
						present_state <= ori_state0;
					when "10000" =>
						present_state <= mul_state0;
					when "10001" =>
						present_state <= div_state0;
					when "10010" =>
						present_state <= neg_state0;
					when "10011" =>
						present_state <= not_state0;
					when "10100" =>
						present_state <= br_state0;
					when "10101" =>
						present_state <= jr_state;
					when "10110" =>
						present_state <= jal_state0;
					when "10111" =>
						present_state <= in_state;
					when "11000" =>
						present_state <= out_state;
					when "11001" =>
						present_state <= mfhi_state;
					when "11010" =>
						present_state <= mflo_state;
					when "11011" =>
						present_state <= nop_state;
					when "11100" =>
						present_state <= halt_state;
					when others =>
				end case;
			
			-- load cycles
			when ld_state0 =>
				present_state <= ld_state1;
			when ld_state1 =>
				present_state <= ld_state2;
			when ld_state2 =>
				present_state <= ld_state3;
			when ld_state3 =>
				present_state <= ld_state4;
			when ld_state4 =>
				present_state <= ld_state5;
			when ld_state5 =>
				present_state <= ld_state6;
			when ld_state6 =>
				present_state <= fetch0;
				
			-- load immediate cycles
			when ldi_state0 =>
				present_state <= ldi_state1;
			when ldi_state1 =>
				present_state <= ldi_state2;
			when ld_state2 =>
				present_state <= fetch0;
				
			-- store cycles
			when st_state0 =>
				present_state <= st_state1;
			when st_state1 => 
				present_state <= st_state2;
			when st_state2 =>
				present_state <= st_state3;
			when st_state3 =>
				present_state <= st_state4;
			when st_state4 =>
				present_state <= st_state5;
			when st_state5 =>
				present_state <= fetch0;
				
			-- load relative cycles
			when ldr_state0 =>
				present_state <= ld_state1;
			when ldr_state1 =>
				present_state <= ld_state2;
			when ldr_state2 =>
				present_state <= ld_state3;
			when ldr_state3 =>
				present_state <= ld_state4;
			when ldr_state4 =>
				present_state <= ld_state5;
			when ldr_state5 =>
				present_state <= ld_state6;
			when ldr_state6 =>
				present_state <= fetch0;
				
			-- store relative cycles
			when str_state0 =>
				present_state <= str_state1;
			when str_state1 => 
				present_state <= str_state2;
			when str_state2 =>
				present_state <= str_state3;
			when str_state3 =>
				present_state <= str_state4;
			when str_state4 =>
				present_state <= str_state5;
			when str_state5 =>
				present_state <= fetch0;
				
			-- add cycles
			when add_state0 =>
				present_state <= add_state1;
			when add_state1 =>
				present_state <= add_state2;
			when add_state2 =>
				present_state <= fetch0;
				
			-- subtract cycles
			when sub_state0 =>
				present_state <= sub_state1;
			when sub_state1 =>
				present_state <= sub_state2;
			when sub_state2 =>
				present_state <= fetch0;
				
			-- and cycles
			when and_state0 =>
				present_state <= and_state1;
			when and_state1 =>
				present_state <= and_state2;
			when and_state2 =>
				present_state <= fetch0;
				
			-- or cycles
			when or_state0 =>
				present_state <= or_state1;
			when or_state1 =>
				present_state <= or_state2;
			when or_state2 =>
				present_state <= fetch0;
			
			-- shift right cycles
			when shr_state0 =>
				present_state <= shr_state1;
			when shr_state1 =>
				present_state <= shr_state2;
			when shr_state2 =>
				present_state <= fetch0;
				
			-- shift left cycles
			when shl_state0 =>
				present_state <= shl_state1;
			when shl_state1 =>
				present_state <= shl_state2;
			when shl_state2 =>
				present_state <= fetch0;
				
			-- rotate right cycles
			when ror_state0 =>
				present_state <= ror_state1;
			when ror_state1 =>
				present_state <= ror_state2;
			when ror_state2 =>
				present_state <= fetch0;
				
			-- rotate left cycles
			when rol_state0 =>
				present_state <= rol_state1;
			when rol_state1 =>
				present_state <= rol_state2;
			when rol_state2 =>
				present_state <= fetch0;
				
			-- add immediate cycles
			when addi_state0 =>
				present_state <= addi_state1;
			when addi_state1 =>
				present_state <= addi_state2;
			when addi_state2 =>
				present_state <= fetch0;
				
			-- andi cycles
			when andi_state0 =>
				present_state <= andi_state1;
			when andi_state1 =>
				present_state <= andi_state2;
			when andi_state2 =>
				present_state <= fetch0;
				
			-- ori cycles
			when ori_state0 =>
				present_state <= ori_state1;
			when ori_state1 =>
				present_state <= ori_state2;
			when ori_state2 =>
				present_state <= fetch0;
				
			-- multiply cycles
			when mul_state0 =>
				present_state <= mul_state1;
			when mul_state1 =>
				present_state <= mul_state2;
			when mul_state2 =>
				present_state <= mul_state3;
			when mul_state3 =>
				present_state <= fetch0;
				
			-- divide cycles
			when div_state0 =>
				present_state <= div_state1;
			when div_state1 =>
				present_state <= div_state2;
			when div_state2 =>
				present_state <= div_state3;
			when div_state3 =>
				present_state <= fetch0;
				
			-- negate cycles
			when neg_state0 =>
				present_state <= neg_state1;
			when neg_state1 =>
				present_state <= fetch0;
			
			-- not cycles
			when not_state0 =>
				present_state <= not_state1;
			when not_state1 =>
				present_state <= fetch0;
				
			-- branch cycles
			when br_state0 =>
				present_state <= br_state1;
			when br_state1 =>
				present_state <= fetch0;
			
			-- jump cycle
			when jr_state =>
				present_state <= fetch0;
				
			-- jump al cycles
			when jal_state0 =>
				present_state <= jal_state1;
			when jal_state1 =>
				present_state <= fetch0;
				
			-- input cycle
			when in_state =>
				present_state <= fetch0;
			
			-- output cycle
			when out_state =>
				present_state <= fetch0;
			
			-- move from high cycle
			when mfhi_state =>
				present_state <= fetch0;
			
			-- move from low cycle
			when mflo_state =>
				present_state <= fetch0;
				
			-- no operation cycle
			when nop_state =>
				present_state <= fetch0;
			
			-- halt cycle
			when halt_state =>
				present_state <= fetch0;
			
			when others =>
		end case;
	end if;
end process fsm;

fsm_logic : process(present_state)
begin
	-- initialize signals
	case present_state is
		when reset_state =>
		
		-- fetch instruction logic
		when fetch0 =>
		when fetch1 =>
		when fetch2 =>
		when fetch3 =>
		when fetch4 =>
		
		-- load from memory logic
		when ld_state0 =>
		when ld_state1 =>
		when ld_state2 =>
		when ld_state3 =>
		when ld_state4 =>
		when ld_state5 =>
		when ld_state6 =>
		
		-- load immediate logic
		when ldi_state0 =>
		when ldi_state1 =>
		when ldi_state2 =>
		
		-- store into memory logic
		when st_state0 =>
		when st_state1 =>
		when st_state2 =>
		when st_state3 =>
		when st_state4 =>
		when st_state5 =>
		
		-- load relative logic
		when ldr_state0 =>
		when ldr_state1 =>
		when ldr_state2 =>
		when ldr_state3 =>
		when ldr_state4 =>
		when ldr_state5 =>
		when ldr_state6 =>
		
		-- store relative logic
		when str_state0 =>
		when str_state1 =>
		when str_state2 =>
		when str_state3 =>
		when str_state4 =>
		when str_state5 =>
		
		-- add logic
		when add_state0 =>
		when add_state1 =>
		when add_state2 =>
		
		-- subtract logic
		when sub_state0 =>
		when sub_state1 =>
		when sub_state2 =>
		
		-- and logic
		when and_state0 =>
		when and_state1 =>
		when and_state2 =>
		
		-- or logic
		when or_state0 =>
		when or_state1 =>
		when or_state2 =>
		
		-- shift right logic
		when shr_state0 =>
		when shr_state1 =>
		when shr_state2 =>
		
		-- shift left logic
		when shl_state0 =>
		when shl_state1 =>
		when shl_state2 =>
		
		-- rotate right logic
		when ror_state0 =>
		when ror_state1 =>
		when ror_state2 =>
		
		-- rotate left logic
		when rol_state0 =>
		when rol_state1 =>
		when rol_state2 =>
		
		-- add immediate logic
		when addi_state0 =>
		when addi_state1 =>
		when addi_state2 =>
		
		-- and immediate logic
		when andi_state0 =>
		when andi_state1 =>
		when andi_state2 =>
		
		-- or immediate logic
		when ori_state0 =>
		when ori_state1 =>
		when ori_state2 =>
		
		-- multiply logic
		when mul_state0 =>
		when mul_state1 =>
		when mul_state2 =>
		when mul_state3 =>
		
		-- divide logic
		when div_state0 =>
		when div_state1 =>
		when div_state2 =>
		when div_state3 =>
		
		-- negate logic
		when neg_state0 =>
		when neg_state1 =>
		
		-- not logic
		when not_state0 =>
		when not_state1 =>
		
		-- branch logic
		when br_state0 =>
		when br_state1 =>
		
		-- jump logic
		when jr_state =>
		
		-- jump al logic
		when jal_state0 =>
		when jal_state1 =>
		
		-- input logic
		when in_state =>
		
		-- output logic
		when out_state =>
		
		-- move from high logic
		when mfhi_state =>
		
		-- move from low logic
		when mflo_state =>
		
		-- no operation
		when nop_state =>
			-- do nothing
		
		-- halt logic
		when halt_state =>
		
		when others =>
	end case;
end process fsm_logic;

end architecture behavioral;