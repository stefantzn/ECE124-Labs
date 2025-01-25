-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity PB_inverters is port (

	rst_n				: in	std_logic; 							
	rst				: out std_logic; 							
 	pb_n_filtered	: in  std_logic_vector(3 downto 0); 
	pb					: out	std_logic_vector(3 downto 0) 					 
	); 
	
end PB_inverters;

architecture logic of PB_inverters is

begin

	-- Invert the reset
	rst <= NOT(rst_n);

	-- Invert the filtered buttons
	pb <= NOT(pb_n_filtered);

end logic;