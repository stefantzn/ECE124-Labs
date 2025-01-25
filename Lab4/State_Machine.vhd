-- Author: Group 23: Stefan Tuczynski, Jonathan Sun
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity State_Machine is port(

		clk_input, reset, sm_clken, blink_signal, ns_request, ew_request	: in  std_logic; 							
		ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red				: out std_logic; 							
		ns_cross, ew_cross																: out std_logic; 							
		state_number 																		: out std_logic_vector(3 downto 0); 
		ns_clear, ew_clear 																: out std_logic 							
		);	
end State_Machine;
 

Architecture StateMachine of State_Machine is
 
TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15); -- 16 states
 
SIGNAL current_state, next_state	: STATE_NAMES; -- signals of type STATE_NAMES

BEGIN


Register_p: PROCESS (clk_input)  

BEGIN

	IF(rising_edge(clk_input)) THEN
	
		-- If reset is active then reset state back to first state 
		IF (reset = '1') THEN
		
			current_state <= S0;
			
		-- If reset is not active and state machine is one then current state goes to the next state
		ELSIF (sm_clken = '1' AND reset = '0') THEN
		
			current_state <= next_State;
			
		END IF;
		
	END IF;
	
END PROCESS;	

Transition_p: PROCESS (current_state) 

BEGIN


  CASE current_state IS
  
        -- Goes to the next state or skips to S6 if EW request is activated and NS request is not activated
  		WHEN S0 =>
			if (ns_request = '0' AND ew_request = '1') then
				next_state <= S6;
			else
				next_state <= S1;
			end if;
			
        -- Goes to the next state or skips to S6 if EW request is activated and NS request is not activated
		WHEN S1 =>		
			if (ns_request = '0' AND ew_request = '1') then
				next_state <= S6;
			else
				next_state <= S2;
			end if;
			
     -- Set the next states
		WHEN S2 =>		
			next_state <= S3;
		WHEN S3 =>		
			next_state <= S4;
		WHEN S4 =>		
			next_state <= S5;
		WHEN S5 =>		
			next_state <= S6;
		WHEN S6 =>		
			next_state <= S7;
		WHEN S7 =>		
			next_state <= S8;
			
		-- Goes to the next state or skips to S14 if NS request is activated and EW request is not activated
		WHEN S8 =>		
			if (ns_request = '1' AND ew_request = '0') then
				next_state <= S14;
			else
				next_state <= S9;
			end if;
			
		-- Goes to the next state or skips to S14 if NS request is activated and EW request is not activated
		WHEN S9 =>		
			if (ns_request = '1'  AND ew_request = '0') then
				next_state <= S14;
			else
				next_state <= S10;
			end if;
			
		-- Assigns the next states
		WHEN S10 =>		
			next_state <= S11;
		WHEN S11 =>		
			next_state <= S12;
		WHEN S12 =>		
			next_state <= S13;
		WHEN S13 =>		
			next_state <= S14;
		WHEN S14 =>		
			next_state <= S15;
			
		-- Reset state back to s0
		WHEN S15 =>		
			next_state <= S0;
			
	  END CASE;
	  
 END PROCESS;
 
Decoder_p: PROCESS (current_state) 

BEGIN

	-- Assigns outputs based on the state
     CASE current_state IS
	  

         WHEN S0 | S1 =>
			ew_clear 	<= '0';
			ew_green 	<= '0';
			ew_amber 	<= '0';
			ew_red 		<= '1';
			ew_cross    <= '0';
			ns_clear 	<= '0';		
			ns_green 	<= blink_signal; -- Blink signal
			ns_amber 	<= '0';
			ns_red 		<= '0';
			ns_cross	   <= '0';

        WHEN S2 | S3 | S4 | S5 =>		
			ew_clear 	<= '0';
			ew_green 	<= '0';
			ew_amber 	<= '0';
			ew_red 		<= '1';
			ew_cross    <= '0';
		 	ns_clear 	<= '0';
			ns_green 	<= '1';
			ns_amber 	<= '0';
			ns_red 		<= '0';
			ns_cross    <= '1';
			

        WHEN S6 =>
			ew_clear 	<= '0';
			ew_green 	<= '0';
			ew_amber 	<= '0';
			ew_red 		<= '1';
			ew_cross    <= '0';
			ns_clear 	<= '1';
			ns_green 	<= '0';
			ns_amber 	<= '1';
			ns_red 		<= '0';
			ns_cross    <= '0';
			

		WHEN S7 =>	
			ew_clear 	<= '0';
			ew_green 	<= '0';
			ew_amber 	<= '0';
			ew_red 		<= '1';
			ew_cross    <= '0';
			ns_clear 	<= '0';
			ns_green 	<= '0';
			ns_amber 	<= '1';
			ns_red 		<= '0';
			ns_cross    <= '0';
			

        WHEN S8 | S9 =>
			ew_clear 	<= '0';
 			ew_green 	<= blink_signal; -- Blink Signal
			ew_amber 	<= '0';
			ew_red 		<= '0';
			ew_cross   	<= '0';
			ns_clear 	<= '0';
 			ns_green 	<= '0';
			ns_amber 	<= '0';
			ns_red 		<= '1';
			ns_cross   	<= '0';
		

		WHEN S10 | S11 | S12 | S13 =>		
			ew_clear 	<= '0';
 			ew_green 	<= '1';
			ew_amber 	<= '0';
			ew_red 		<= '0';
			ew_cross    <= '1';
 			ns_clear 	<= '0';
			ns_green 	<= '0';
			ns_amber 	<= '0';
			ns_red 		<= '1';
			ns_cross    <= '0';
			

		WHEN S14 =>		
			ew_clear 	<= '1';
 			ew_green 	<= '0';
			ew_amber 	<= '1';
			ew_red 		<= '0';
			ew_cross    <= '0';
 			ns_clear 	<= '0';
			ns_green 	<= '0';
			ns_amber 	<= '0';
			ns_red 		<= '1';
			ns_cross    <= '0';
			

		WHEN S15 =>
			ew_clear 	<= '0';
 			ew_green 	<= '0';
			ew_amber 	<= '1';
			ew_red 		<= '0';
			ew_cross    <= '0';		
 			ns_clear 	<= '0';
			ns_green 	<= '0';
			ns_amber 	<= '0';
			ns_red 		<= '1';
			ns_cross    <= '0';

			
	  END CASE;
	  
	  -- Set the state number to binary value
	  CASE current_state IS
		WHEN S0 =>
			state_number <= "0000";
		WHEN S1 =>
			state_number <= "0001";
		WHEN S2 =>
			state_number <= "0010";
		WHEN S3 =>
			state_number <= "0011";
		WHEN S4 =>
			state_number <= "0100";
		WHEN S5 =>
			state_number <= "0101";
		WHEN S6 =>
			state_number <= "0110";
		WHEN S7 =>
			state_number <= "0111";
		WHEN S8 =>
			state_number <= "1000";
		WHEN S9 =>
			state_number <= "1001";
		WHEN S10 =>
			state_number <= "1010";
		WHEN S11 =>
			state_number <= "1011";
		WHEN S12 =>
			state_number <= "1100";
		WHEN S13 =>
			state_number <= "1101";
		WHEN S14 =>
			state_number <= "1110";
		WHEN S15 =>
			state_number <= "1111";
		END CASE;
		
	END PROCESS;

 END ARCHITECTURE StateMachine;
