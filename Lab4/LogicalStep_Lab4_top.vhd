-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50	   : in	std_logic;							
	rst_n			: in	std_logic;							
	pb_n			: in	std_logic_vector(3 downto 0); 
 	sw   			: in  std_logic_vector(7 downto 0); 
   leds			: out std_logic_vector(7 downto 0);	
   seg7_data 	: out std_logic_vector(6 downto 0); 
	seg7_char1  : out	std_logic;							
	seg7_char2  : out	std_logic;							
	
	-- Simulation variables
	sm_clken_s  : out std_logic;
	blink_sig_s : out std_logic;
	ns_green_s 	: out std_logic;
	ns_amber_s 	: out std_logic;
	ns_red_s 	: out std_logic;
	ew_green_s  : out std_logic;
	ew_amber_s  : out std_logic;
	ew_red_s 	: out std_logic
	);
END LogicalStep_Lab4_top;


ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS
   
	-- 7 Segment Multiplexer 
	component segment7_mux port (
          clk        : in  std_logic := '0'; 				
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0); 
			 DOUT			: out	std_logic_vector(6 downto 0);	
			 DIG2			: out	std_logic;							
			 DIG1			: out	std_logic 							
   );
   end component;

   -- Clock Generator
   component clock_generator port (
			sim_mode		: in  boolean; 	
			reset			: in  std_logic; 	
         clkin       : in  std_logic; 	
			sm_clken		: out	std_logic; 	
			blink		  	: out std_logic 	
  );
   end component;

   -- Push Button Filters
    component pb_filters port (
			clkin					: in  std_logic; 							
			rst_n					: in  std_logic; 							
			rst_n_filtered		: out std_logic; 							
			pb_n					: in  std_logic_vector(3 downto 0); 
			pb_n_filtered		: out	std_logic_vector(3  downto 0) 						 
 );
   end component;

   -- Push Button Inverters
	component pb_inverters port (
			rst_n				: in  std_logic; 							
			rst				: out	std_logic; 														 
			pb_n_filtered	: in  std_logic_vector(3 downto 0); 
			pb					: out	std_logic_vector(3 downto 0) 							 
  );
   end component;
	
   -- Synchronizer 
	component synchronizer port(
			clk			: in  std_logic; 
			reset			: in  std_logic; 
			din			: in  std_logic; 
			dout			: out std_logic  
  );
   end component; 

   -- Holding Register
  component holding_register port (
			clk					: in  std_logic;
			reset					: in  std_logic; 
			register_clr		: in  std_logic; 
			din					: in  std_logic; 
			dout					: out std_logic  
  );
  end component;

  -- State Machine
	component State_Machine port (
		clk_input, reset, sm_clken, blink_signal, ns_request, ew_request	: in  std_logic; 							
		ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red				: out std_logic; 							
		ns_cross, ew_cross																: out std_logic; 							
		state_number 																		: out std_logic_vector(3 downto 0); 
		ns_clear, ew_clear 																: out std_logic 							
	);
	end component;
----------------------------------------------------------------------------------------------------
	CONSTANT	sim_mode	: boolean := TRUE;  -- set to FALSE for LogicalStep board downloads, set to TRUE for SIMULATIONS
	
	-- Temporary Signal Variables
	SIGNAL rst, rst_n_filtered, synch_reset								: std_logic; 							-- Reset values
	SIGNAL sm_clken, blink_signal												: std_logic; 						   -- Blink and enable signal
	SIGNAL pb_n_filtered, pb													: std_logic_vector(3 downto 0);  -- Button values
	SIGNAL ew_req, ns_req														: std_logic; 							-- Cross requests
	SIGNAL ns_clear, ew_clear 													: std_logic; 							-- Cross request clear signals
	SIGNAL ew_out, ns_out 														: std_logic; 							-- Traffic light outputs
	SIGNAL ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red  : std_logic; 							-- Traffic light values
	SIGNAL ns_cross, ew_cross													: std_logic; 							-- Cross values
	SIGNAL NSLIGHTS, EWLIGHTS													: std_logic_vector(6 downto 0); 	-- Traffic values
	
BEGIN
----------------------------------------------------------------------------------------------------
-- Filters and inverts the buttons
PBFILTER: pb_filters	port map (clkin_50, rst_n, rst_n_filtered, pb_n, pb_n_filtered);
PBINVERTERS: pb_inverters port map (rst_n_filtered, rst, pb_n_filtered, pb);

-- Generate the waveform in part B
--	SYNCRONIZE1: synchronizer port map (clkin_50, synch_reset, rst, synch_reset);
--	leds(2) <= sm_clken;
--	leds(0) <= blink_signal;

-- Generate the clock signal
CLOCKSIGNAL: clock_generator port map(sim_mode, synch_reset, clkin_50, sm_clken, blink_signal);

-- Generates the synchronous reset signal
SYNC: synchronizer port map(clkin_50, synch_reset, rst, synch_reset);

-- Synchronizer and holding register for the EW traffic light
EW: synchronizer port map(clkin_50, synch_reset, pb(1), ew_req);
EWHOLDREGISTER: holding_register port map(clkin_50, synch_reset, ew_clear, ew_req, ew_out);
leds(3) <= ew_out;

-- Synchronizer and holding register for the NS traffic light
NS: synchronizer port map(clkin_50, synch_reset, pb(0), ns_req);
NSHOLDREGISTER: holding_register port map(clkin_50, synch_reset, ns_clear, ns_req, ns_out);
leds(1) <= ns_out;

-- Transitions between states and controls the traffic light
STATEMACHINE: State_Machine port map(clkin_50, synch_reset, sm_clken, blink_signal, ns_out, ew_out, ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red, ns_cross, ew_cross, leds(7 downto 4), ns_clear, ew_clear);

-- Displays the NS and EW cross values
leds(0) <= ns_cross;
leds(2) <= ew_cross;

-- Holds the traffic light values
NSLIGHTS(6 downto 0) <= ns_amber & "00" & ns_green & "00" & ns_red;
EWLIGHTS(6 downto 0) <= ew_amber & "00" & ew_green & "00" & ew_red; 

-- Values for the second waveform
sm_clken_s  <= sm_clken;
ns_red_s 	<= ns_red;
ew_green_s  <= ew_green;
ew_amber_s  <= ew_amber;
blink_sig_s <= blink_signal;
ns_green_s  <= ns_green;
ns_amber_s  <= ns_amber;
ew_red_s    <= ew_red;

-- Displays traffic light values on the FPGA or in the waveform if SIM_MODE is set to true
LIGHTS: segment7_mux port map(clkin_50, NSLIGHTS, EWLIGHTS, seg7_data, seg7_char2, seg7_char1);

END SimpleCircuit;
