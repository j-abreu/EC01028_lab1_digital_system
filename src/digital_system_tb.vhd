library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_system_tb is
end digital_system_tb;

architecture arch of digital_system_tb is
	constant price : integer := 5;
	signal clk : std_logic := '0';
	signal reset : std_logic := '1';
	signal d : std_logic := '0';
	signal has_coin : std_logic := '0';
	signal coin_value : std_logic_vector(7 downto 0);
	
	type data is array (6 downto 0) of integer;
	constant input : data := (1, 4, 3, 3, 1, 1, 1);
	
begin

	ds : entity work.digital_system
	generic map (
		price => std_logic_vector(to_unsigned(price, 8))
		
	)
	port map (
		clk => clk,
		reset => reset,
		has_coin => has_coin,
		coin_value => coin_value,
		d => d
	);
	
	clk <= not clk after 5 ns;
	reset <= '0' after 1 ns;
	has_coin <= not has_coin after 7 ns;
	
	process (clk)
		variable i : integer := 0;
		begin
			if rising_edge(clk) then
				if has_coin = '1' then
					coin_value <= std_logic_vector(to_unsigned(input(i), coin_value'length));
					i := i + 1;
					if i = 7 then
						i := 0;
					end if;
				end if;
			end if;
		end process;

end architecture;