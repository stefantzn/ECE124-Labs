library ieee;
use ieee.std_logic_1164.all;

entity pb_inverters is
port (
	pb_n						: in std_logic_vector(3 downto 0);
	pb							: out std_logic_vector(3 downto 0) 
);

end pb_inverters;

architecture gates of pb_inverters is

begin

pb <= not(pb_n); -- Inverts the push button

end gates;