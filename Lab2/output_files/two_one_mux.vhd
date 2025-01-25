library ieee;
use ieee.std_logic_1164.all;

entity two_one_mux is
port (
	input_0 			: in std_logic_vector(3 downto 0);
	input_1 			: in std_logic_vector(3 downto 0);
	m_select 		: in std_logic;
	out_0				: out std_logic_vector(3 downto 0)
);

end two_one_mux;

architecture mux_logic of two_one_mux is

begin

	-- for the multiplexing of four hex input busses
	with m_select select
	out_0 <= input_0 when '0',
				input_1 when '1';
	
end mux_logic;
