-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity synchronizer is port (

    clk   : in  std_logic; 
    reset : in  std_logic; 
    din   : in  std_logic; 
    dout  : out std_logic  
  );
  
end synchronizer;


architecture sync of synchronizer is
  
  -- Signal to hold register contents
  signal sreg : std_logic_vector(1 downto 0);

begin


  synced_p : process(clk)
  
  begin
  
	if rising_edge(clk) then
	

		if reset = '1' then
		
			sreg <= "00";
			
		else
		
			sreg(1) <= sreg(0); -- Shifts to second register
			sreg(0) <= din; 	  -- Takes the data and sets it to the first register
		
		end if;
		
	end if;
	
end process synced_p;
	
dout <= sreg(1); -- Sets the second register contents to the output
	
end sync;
