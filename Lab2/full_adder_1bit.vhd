-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity full_adder_1bit is
port (
	INPUT_A									: in std_logic;
	INPUT_B 									: in std_logic;
	CARRY_IN								   : in std_logic;
	FULL_ADDER_CARRY_OUTPUT				: out std_logic; 
	FULL_ADDER_SUM_OUTPUT				: out std_logic
);
end full_adder_1bit;

architecture adder_logic of full_adder_1bit is

begin

	FULL_ADDER_SUM_OUTPUT <= (INPUT_A XOR INPUT_B) XOR CARRY_IN;										-- Boolean algebra logic for calculating full adder sum
	FULL_ADDER_CARRY_OUTPUT <= (INPUT_A AND INPUT_B) OR ((INPUT_A XOR INPUT_B) AND CARRY_IN); -- Boolean algebra logic for calculating carry out


end adder_logic;