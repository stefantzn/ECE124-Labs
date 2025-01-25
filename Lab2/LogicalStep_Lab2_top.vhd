-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;							-- Clock speed (50mhz)	
	pb_n				: in	std_logic_vector(3 downto 0);	-- The push button inputs
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
-- Components Used ---
------------------------------------------------------------------- 

	--	 Seven segment display
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	-- Seven segment multiplexer
	component segment7_mux port (
		clk			: in std_logic := '0'; 					
		DIN2			: in std_logic_vector(6 downto 0);	
		DIN1			: in std_logic_vector(6 downto 0);	
		DOUT			: out std_logic_vector(6 downto 0);	
		DIG2			: out std_logic;							
		DIG1 			: out std_logic							
	);
	end component;
	
	-- Digital logic processor
	component logical_processor port (
		logic_in0									: in std_logic_vector(3 downto 0); -- Input corresponding to switches 0-3 
		logic_in1 									: in std_logic_vector(3 downto 0); -- Input corresponding to siwtches 4-7
		mux_select								   : in std_logic_vector(1 downto 0); -- Multiplexer select
		logic_out									: out std_logic_vector(3 downto 0) -- 
	
	);
	end component;
	
	-- Push button inverters
	component pb_inverters port (
		pb_n						: in std_logic_vector(3 downto 0); -- Push Button Input
		pb							: out std_logic_vector(3 downto 0) -- Push Button Output
	);
	end component;
	
	-- Full adder
	component full_adder_4bit port(
		INPUT_A									: in std_logic_vector(3 downto 0); -- First number for input
		INPUT_B 									: in std_logic_vector(3 downto 0); -- Second number for input
		CARRY_IN								   : in std_logic; 						  -- Carry in for input
		FULL_ADDER_CARRY_OUTPUT				: out std_logic; 						  -- Carry out for output
		FULL_ADDER_SUM_OUTPUT				: out std_logic_vector(3 downto 0) -- Adder sum for output
	
	);
	end component;
	
	-- Two to one multiplexer
	component two_one_mux port (
	input_0 			: in std_logic_vector(3 downto 0); -- 4-bit Input one for the multiplexer
	input_1 			: in std_logic_vector(3 downto 0); -- 4-bit Input two for the multiplexer
	m_select 		: in std_logic;						  -- 1-bit select input for the multiplexer
	out_0				: out std_logic_vector(3 downto 0) -- 4-bit output for the multiplexer
	);
	end component;

	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	
	signal hex_A	               	: std_logic_vector(3 downto 0); -- 4-bit Hexidecimal value A
	signal hex_B                     : std_logic_vector(3 downto 0); -- 4-bit Hexidecimal value B
	
	signal seg7_A		               : std_logic_vector(6 downto 0); -- 7-bit Segment 7 value A
	signal seg7_B                    : std_logic_vector(6 downto 0); -- 7-bit Segment 7 value B
	
	signal pb 					      	: std_logic_vector(3 downto 0); -- 4-bit Pushbutton inverter variable
				    		
	signal FULL_ADDER_SUM_OUTPUT 		: std_logic_vector(3 downto 0); -- 4-bit full adder sum output variable
	signal FULL_ADDER_CARRY_OUTPUT 	: std_logic;						  -- 4-bit full adder carry out output variable
	
	signal signal_C 						: std_logic_vector(3 downto 0); -- 4-bit Signal C variable which is used to concatenate 
	
	signal out_1 							: std_logic_vector(3 downto 0); -- 4-bit Multiplexer variable that corresponds to either hexidecimal A or full adder sum 
	signal out_2                     : std_logic_vector(3 downto 0); -- 4-bit Multiplexer variable that corresponds to either hexidecimal B or signal C value
	
	
-- Here the circuit begins
begin

	hex_A <= sw(3 downto 0); -- Hexidecimal value A corresponds to switches 0-3 on the FPGA board
	hex_B <= sw(7 downto 4); -- Hexidecimal value B corresponds to switches 4-7 on the FPGA board
	signal_C <= "000" & FULL_ADDER_CARRY_OUTPUT; -- Concat

	
--COMPONENT HOOKUP
--
-- generate the seven segment coding

	SEVENSEGMENT1: SevenSegment port map(out_1, seg7_A); -- Takes the output value of the two-to-one multiplexer and sets it to the first seven segment display
	
	SEVENSEGMENT2: SevenSegment port map(out_2, seg7_B); -- Takes the output value of the two-to-one multiplexer and sets it to the second seven segment display
	
	SEVENSEGMENTMUX: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char2, seg7_char1); -- Sets the clock speed of the seven segment display
	
	LOGICALPROCESSOR: logical_processor port map(hex_A, hex_B, pb(1 downto 0), leds(3 downto 0)); -- Processes the logic corresponding to the two hexidecimal values and adjusts LEDs accordingly
	
	PUSHBUTTONINVERTERS: pb_inverters port map(pb_n, pb); -- Inverts the active low pushbutton 
	
	FULLADDER: full_adder_4bit port map(hex_B, hex_A, '0', FULL_ADDER_CARRY_OUTPUT, FULL_ADDER_SUM_OUTPUT); -- Processes the two hexidecimal values with '0' carry in and outputs sum and carry out
	
	TWOONEMUX1: two_one_mux port map(hex_A, FULL_ADDER_SUM_OUTPUT, pb(2), out_1); -- Multiplexer that selects hex a or the full adder sum based on the value of push button 2
	
	TWOONEMUX2: two_one_mux port map(hex_B, signal_C, pb(2), out_2);	-- Multiplexer that selects hex b or the signal C based on the valur of push button 2
	
end SimpleCircuit;

