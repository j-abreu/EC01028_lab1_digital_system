library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
	port(
		clk, has_coin, reset: in std_logic;
		price : in std_logic_vector(7 downto 0);
		acum_state : in std_logic_vector(7 downto 0);
		release, clk_acum, reset_acum : out std_logic
	);
end fsm;

architecture arch of fsm is
	type state is (S0, S1, S2, S3);
	signal cur_state, next_state : state := S0;

begin
	get_next_state : process(cur_state, has_coin, acum_state)
	begin
		case cur_state is
			when S0 =>
				if has_coin = '0' then
					next_state <= S0;
				else
					next_state <= S1;
				end if;
			when S1 =>
				if acum_state < price then
					next_state <= S0;
				else
					next_state <= S2;
				end if;
			when S2 =>
				next_state <= S0;
			when S3 =>
				next_state <= S0;
		end case;
	end process;
	
	out_logic : process(cur_state)
	begin
		case cur_state is
			when S0 =>
				release <= '0';
				clk_acum <= '0';
				reset_acum <= '0';
			when S1 =>
				release <= '0';
				clk_acum <= '1';
				reset_acum <= '0';
			when S2 =>
				release <= '1';
				clk_acum <= '0';
				reset_acum <= '1';
			when s3 =>
				release <= '0';
				clk_acum <= '0';
				reset_acum <= '1';
		end case;
	end process;
	
	reg_state : process(clk, reset)
	begin
		if reset = '1' then
			cur_state <= S3;
		elsif rising_edge(clk) then
			cur_state <= next_state;
		end if;
	end process;
	
end arch;