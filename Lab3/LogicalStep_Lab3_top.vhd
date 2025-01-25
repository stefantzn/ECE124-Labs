library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
--	HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------
	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 

component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;

component Compx4 port (
		
		sw1  : in std_logic_vector(3 downto 0);
		sw2  : in std_logic_vector(3 downto 0);
		agb  : out std_logic;
		aeb  : out std_logic;
		alb  : out std_logic


		);
end component Compx4;

component Bidir_shift_reg port (
	
				CLK			 : in std_logic := '0';
				RESET			 : in std_logic := '0';
				CLK_EN 	    : in std_logic := '0';
				LEFT0_RIGHT1 : in std_logic := '0';
				REG_BITS     : out std_logic_vector(7 downto 0)


	);
end component Bidir_shift_reg;

component U_D_Bin_Counter8Bit port (

		CLK				: in std_logic;
		RESET				: in std_logic;
		CLK_EN			: in std_logic;
		UP1_DOWN0		: in std_logic;
		COUNTER_BITS   : out std_logic_vector(7 downto 0)
		
	);
end component U_D_Bin_Counter8Bit;

component pb_inverters port (
		pb_n						: in std_logic_vector(3 downto 0);
		pb							: out std_logic_vector(3 downto 0) 
	);
end component pb_inverters;

component Tester port (
	MC_TESTMODE				: in  std_logic;
	I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
end component;

component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)	
	);
end component;

component twoonemux port (
			Sel : in STD_LOGIC;
        A, B : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

component energy_monitor port (
	
			AGTB, AEQB, ALTB : in std_logic;
        vacation_mode : in std_logic;
        MC_test_mode : in std_logic;
        window_open : in std_logic;
        door_open : in std_logic;
        furnace : out std_logic;
        at_temp : out std_logic;
        AC : out std_logic;
        blower : out std_logic;
        window : out std_logic;
        door : out std_logic;
        vacation : out std_logic;
        run : out std_logic;
        increase : out std_logic;
        decrease : out std_logic
	);
	
end component energy_monitor;

------------------------------------------------------------------	
-- Create any additional internal signals to be used
------------------------------------------------------------------	
constant HVAC_SIM : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board 
                                      -- or TRUE for doing simulations with the HVAC Component
------------------------------------------------------------------	

-- global clock
signal clk_in							: std_logic;
signal hex_A, hex_B 					: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg		: std_logic_vector(6 downto 0);
signal pb 					      	: std_logic_vector(3 downto 0);
signal mux_temp 					   : std_logic_vector(3 downto 0);
signal current_temp 					: std_logic_vector(3 downto 0);
signal mt_7seg					   	: std_logic_vector(6 downto 0);
signal ct_7seg					   	: std_logic_vector(6 downto 0);
signal AGTB, AEQB, ALTB 			: std_logic;
signal decrease, increase, run :  std_logic;
------------------------------------------------------------------- 
begin -- Here the circuit begins

clk_in <= clkin_50;	--hook up the clock input

-- temp inputs hook-up to internal busses.
hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);

PUSHBUTTONINVERTERS: pb_inverters port map(pb_n, pb);
TWOONEMUX1: twoonemux port map (pb(3), sw(3 downto 0), sw(7 downto 4), mux_temp);
COMPX41: Compx4 port map(mux_temp, current_temp, AGTB, AEQB, ALTB); 
TESTER1: Tester port map(pb(2), AEQB, AGTB, ALTB,  sw(3 downto 0), current_temp, leds(6));
SEVENSEGMENT1: sevensegment port map (mux_temp, mt_7seg);
SEVENSEGMENT2: sevensegment port map (current_temp, ct_7seg);
SEVENSEGMENTMUX: segment7_mux port map (clk_in,  mt_7seg, ct_7seg, seg7_data, seg7_char2, seg7_char1);
ENERGYMONITOR: energy_monitor port map (AGTB, AEQB, ALTB, pb(3), pb(2), pb(1), pb(0), leds(0), leds(1), leds(2), leds(3), leds(4), leds(5), leds(7), run, increase, decrease);
HVAC1: HVAC port map (HVAC_SIM, clk_in, run, increase, decrease, current_temp);




--inst4: Compx4 port map (hex_A, hex_B, leds(2), leds(0), leds(1));
--inst5: Bidir_shift_reg port map (clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
--inst6: U_D_Bin_Counter8Bit port map(clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
		
end design;

