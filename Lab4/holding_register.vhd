-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity holding_register is port (

			clk				: in std_logic; 
			reset				: in std_logic; 
			register_clr	: in std_logic; 
			din				: in std_logic; 
			dout				: out std_logic 
  );
  
 end holding_register;
 

 architecture reg of holding_register is
 
	-- Holds the register values
	signal sreg: std_logic;
	
	-- Evaluates the logic input
	signal d: std_logic;

begin

-- Evaluates logic input and sets it to the d signal
d <= (sreg OR din) AND (NOT (reset OR register_clr));


sync: process(clk)

	begin
	
		if (rising_edge(clk)) then
		
			-- Assigns d to the register signal and the data output
			dout <= d;
			sreg <= d;

			
		end if;
		
	end process;
	
end;