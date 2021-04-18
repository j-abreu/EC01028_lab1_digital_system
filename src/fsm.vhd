library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
	generic(
		nbits : integer := 8
	);
	port(
		clk, reset, c: in std_logic;
		s, acum : in std_logic_vector(nbits - 1 downto 0);
		c_bo, r_bo, reset_bo : out std_logic
	);
end fsm;

architecture arch of fsm is
	type state is (S0, S1, S2, S3);
	signal cur_state, next_state : state := S0;

begin
	get_next_state : process(cur_state, c, acum)
	begin
		case cur_state is
			when S0 =>
				if c = '0' then
					next_state <= S0;
				else
					next_state <= S1;
				end if;
			when S1 =>
				if acum < s then
					next_state <= S2;
				else
					next_state <= S3;
				end if;
			when S2 =>
				if c = '0' then
					next_state <= S2;
				else
					next_state <= S1;
				end if;
			when S3 =>
				next_state <= S0;
		end case;
	end process;
	
	out_logic : process(cur_state)
	begin
		case cur_state is
			when S0 =>
				c_bo <= '0';
				r_bo <= '0';
				reset_bo <= '1';
			when S1 =>
				c_bo <= '1';
				r_bo <= '0';
				reset_bo <= '0';
			when S2 =>
				c_bo <= '0';
				r_bo <= '0';
				reset_bo <= '0';
			when S3 =>
				c_bo <= '0';
				r_bo <= '1';
				reset_bo <= '0';
		end case;
	end process;
	
	reg_state : process(clk, reset)
	begin
		if reset = '1' then
			cur_state <= S0;
		elsif rising_edge(clk) then
			cur_state <= next_state;
		end if;
	end process;
	
end arch;