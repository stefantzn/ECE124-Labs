-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;

entity logical_processor is
port (
	logic_in0									: in std_logic_vector(3 downto 0);
	logic_in1 									: in std_logic_vector(3 downto 0);
	mux_select								   : in std_logic_vector(1 downto 0);
	logic_out									: out std_logic_vector(3 downto 0) 
);

end logical_processor;

architecture mux_logic of logical_processor is

begin

	-- For the multiplexing of four hex input busses
	with mux_select(1 downto 0) select						-- Based on the multiplexer select value, execute any 1 of the 4 statements below that correspond to the "when" statement	
	logic_out <= (logic_in0 AND logic_in1)  when "00", -- Set the output to correspond to logic input 1 AND logic input 2
				    (logic_in0 OR logic_in1)   when "01", -- Set the output to correspond to logic input 1 OR logic input 2
				    (logic_in0 XOR logic_in1)  when "10",	-- Set the output to correspond to logic input 1 XOR logic input 2
				    (logic_in0 XNOR logic_in1) when "11";	-- Set the output to correspond to logic input 1 XNOR logic input 2

end mux_logic;