library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_system is 
	generic(
		nbits : integer := 8
	);
	port (
		clk, c, reset : in std_logic;
		a : in std_logic_vector(nbits - 1 downto 0);
		s : in std_logic_vector(nbits - 1 downto 0);
		d : out std_logic
	);
end digital_system;

architecture arch of digital_system is
	signal acum_sig : std_logic_vector(nbits - 1 downto 0);
	signal c_bo_sig, r_bo_sig, reset_bo_sig : std_logic;

begin
	
	control : entity work.fsm
	generic map(
		nbits => nbits
	)
	port map (
		clk => clk,
		reset => reset,
		c => c,
		s => s,
		acum => acum_sig,
		c_bo => c_bo_sig,
		r_bo => r_bo_sig,
		reset_bo => reset_bo_sig
	);
	
	datapath : entity work.bo
	generic map(
		nbits => nbits
	)
	port map (
		clk => clk,
		c => c_bo_sig,
		r => r_bo_sig,
		reset => reset_bo_sig,
		a => a,
		acum => acum_sig,
		d => d
	);

end architecture;