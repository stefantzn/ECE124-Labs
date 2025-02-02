library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Compx1 is 

	port (
			
			a     	 : in std_logic;
			b	    	 : in std_logic;
			agreaterb : out std_logic;
			aequalb   : out std_logic;
			alessb	 : out std_logic
			
	);
	
end entity Compx1;

architecture compare of Compx1 is 

begin

agreaterb <= (not b) and a;
aequalb <= a xnor b;
alessb <= (not a) and b;

end compare;

