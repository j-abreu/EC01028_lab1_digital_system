library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bo is
	generic(
		nbits : integer := 8
	);
	port (
		clk : in std_logic;
		c, r, reset : in std_logic;
		a : in std_logic_vector(nbits - 1 downto 0);
		acum: out std_logic_vector(nbits - 1 downto 0);
		d : out std_logic
	);
end bo;

architecture arch of bo is
	signal acum_out : std_logic_vector(nbits - 1 downto 0);
	signal sum : std_logic_vector(nbits - 1 downto 0);
	
begin

	update_acum : process(clk, reset)
	begin
		if reset = '1' then
			acum_out <= (others => '0');
		elsif falling_edge(clk) then
			acum_out <= sum;
		end if;
	end process;
	
	soma : process(c)
	 begin
		if c = '1' then
			sum <= std_logic_vector(unsigned(acum_out) + unsigned(a));
		end if;
	end process;
	
	acum <= acum_out;
	d <= r;
				
end architecture;