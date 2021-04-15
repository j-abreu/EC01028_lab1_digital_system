library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bo is
	port (
		clk_acum : in std_logic;
		coin_val : in std_logic_vector(7 downto 0);
		reset_acum : in std_logic;
		release: in std_logic;
		acum_out: out std_logic_vector(7 downto 0);
		d : out std_logic
	);
end bo;

architecture arch of bo is
	signal acumulator : std_logic_vector(7 downto 0);
	signal sum : std_logic_vector(7 downto 0);
	
	
	
begin
	acum : process(clk_acum, reset_acum)
	begin
		if reset_acum = '1' then
			acumulator <= (others => '0');
		elsif rising_edge(clk_acum) then
			acumulator <= sum;
		end if;
	end process;
	
	sum <= std_logic_vector(unsigned(acumulator) + unsigned(coin_val));
	acum_out <= acumulator;
	
	d <= release;
				
end architecture;