library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_system is 
	generic (
		price : std_logic_vector
	);
	port (
		clk, has_coin, reset : in std_logic;
		coin_value : in std_logic_vector;
		d : out std_logic
	);
end digital_system;

architecture arch of digital_system is
	signal acum_state: std_logic_vector(7 downto 0);
	signal release, clk_acum, reset_acum : std_logic;

begin
	
	control : entity work.fsm
	port map (
		clk => clk,
		has_coin => has_coin,
		reset => reset,
		price => price,
		acum_state => acum_state,
		release => release,
		clk_acum => clk_acum,
		reset_acum => reset_acum
	);
	
	datapath : entity work.bo
	port map (
		clk_acum => clk_acum,
		coin_val => coin_value,
		reset_acum => reset_acum,
		release => release,
		acum_out => acum_state,
		d => d
	);

end architecture;