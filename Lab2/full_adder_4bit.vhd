-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity full_adder_4bit is
port (
	INPUT_A									: in std_logic_vector(3 downto 0);
	INPUT_B 									: in std_logic_vector(3 downto 0);
	CARRY_IN								   : in std_logic;
	FULL_ADDER_CARRY_OUTPUT				: out std_logic; 
	FULL_ADDER_SUM_OUTPUT				: out std_logic_vector(3 downto 0)
);

end full_adder_4bit;

architecture adder_logic of full_adder_4bit is

	component full_adder_1bit port (
	
	INPUT_A									: in std_logic;
	INPUT_B 									: in std_logic;
	CARRY_IN								   : in std_logic;
	FULL_ADDER_CARRY_OUTPUT				: out std_logic; 
	FULL_ADDER_SUM_OUTPUT				: out std_logic
	);
	end component;
	
	signal carry : std_logic_vector(2 downto 0);

begin

	FA0: full_adder_1bit port map (INPUT_A(0), INPUT_B(0), CARRY_IN, carry(0), FULL_ADDER_SUM_OUTPUT(0)); 					-- Instance which sets the 1st (least significant) bit of the full adder sum
	FA1: full_adder_1bit port map (INPUT_A(1), INPUT_B(1), carry(0), carry(1), FULL_ADDER_SUM_OUTPUT(1));						-- Instance which sets the 2nd bit of the full adder sum
	FA2: full_adder_1bit port map (INPUT_A(2), INPUT_B(2), carry(1), carry(2), FULL_ADDER_SUM_OUTPUT(2));						-- Instance which sets the 3rd bit of the full adder sum
	FA3: full_adder_1bit port map (INPUT_A(3), INPUT_B(3), carry(2), FULL_ADDER_CARRY_OUTPUT, FULL_ADDER_SUM_OUTPUT(3)); -- Instance which sets the 4th (most significant) bit of the full adder sum

end adder_logic;