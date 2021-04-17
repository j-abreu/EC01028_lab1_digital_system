library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_system_tb is
end digital_system_tb;

architecture arch of digital_system_tb is
	constant nbits : integer := 8;
	constant price : integer := 5;
	signal clk, d, reset, c : std_logic := '0';
	signal a : std_logic_vector(nbits - 1 downto 0);
	
	type data is array (integer range<>) of integer;
	constant input : data(0 to 6) := (1, 4, 3, 3, 1, 1, 1);
	
begin

	ds : entity work.digital_system
	generic map(
		nbits => nbits
	)
	port map (
		clk => clk,
		reset => reset,
		c => c,
		a => a,
		d => d,
		s => std_logic_vector(to_unsigned(price, nbits))
	);
	
	process (clk)
		variable i : integer := 0;
		begin
			if rising_edge(clk) then
				if c = '1' then
					a <= std_logic_vector(to_unsigned(input(i), a'length));
					i := i + 1;
					if i = 7 then
						i := 0;
					end if;
				end if;
			end if;
		end process;
		
	clk <= not clk after 5 ns;
	reset <= not reset after 100 ns;
	c <= not c after 10 ns;

end architecture;