-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "03/29/2024 14:27:58"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic;
	sm_clken_s : OUT std_logic;
	blink_sig_s : OUT std_logic;
	ns_green_s : OUT std_logic;
	ns_amber_s : OUT std_logic;
	ns_red_s : OUT std_logic;
	ew_green_s : OUT std_logic;
	ew_amber_s : OUT std_logic;
	ew_red_s : OUT std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL ww_sm_clken_s : std_logic;
SIGNAL ww_blink_sig_s : std_logic;
SIGNAL ww_ns_green_s : std_logic;
SIGNAL ww_ns_amber_s : std_logic;
SIGNAL ww_ns_red_s : std_logic;
SIGNAL ww_ew_green_s : std_logic;
SIGNAL ww_ew_amber_s : std_logic;
SIGNAL ww_ew_red_s : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sm_clken_s~output_o\ : std_logic;
SIGNAL \blink_sig_s~output_o\ : std_logic;
SIGNAL \ns_green_s~output_o\ : std_logic;
SIGNAL \ns_amber_s~output_o\ : std_logic;
SIGNAL \ns_red_s~output_o\ : std_logic;
SIGNAL \ew_green_s~output_o\ : std_logic;
SIGNAL \ew_amber_s~output_o\ : std_logic;
SIGNAL \ew_red_s~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \PBFILTER|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \PBFILTER|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \SYNCRONIZE|sreg~0_combout\ : std_logic;
SIGNAL \NS|sreg~0_combout\ : std_logic;
SIGNAL \NSHOLDREG|d~0_combout\ : std_logic;
SIGNAL \NSHOLDREG|sreg~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \PBFILTER|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \EW|sreg~0_combout\ : std_logic;
SIGNAL \EWHOLDREG|d~0_combout\ : std_logic;
SIGNAL \EWHOLDREG|sreg~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|sm_clken~combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~48_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S15~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~45_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S0~q\ : std_logic;
SIGNAL \STATEMACHINE|next_state.S1~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~35_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S1~q\ : std_logic;
SIGNAL \STATEMACHINE|next_state.S2~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S2~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~34_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S3~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~36_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S4~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~37_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S5~q\ : std_logic;
SIGNAL \STATEMACHINE|WideOr4~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~41_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~42_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S6~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~47_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S7~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~46_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S8~q\ : std_logic;
SIGNAL \STATEMACHINE|next_state.S9~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S9~q\ : std_logic;
SIGNAL \STATEMACHINE|next_state.S10~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S10~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~38_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S11~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~39_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S12~q\ : std_logic;
SIGNAL \STATEMACHINE|current_state~40_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S13~q\ : std_logic;
SIGNAL \STATEMACHINE|WideOr7~1_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~43_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state~44_combout\ : std_logic;
SIGNAL \STATEMACHINE|current_state.S14~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \LIGHTS|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \STATEMACHINE|ns_amber~0_combout\ : std_logic;
SIGNAL \LIGHTS|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr2~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr6~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr9~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr8~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr9~combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr8~1_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr8~combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr7~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr7~combout\ : std_logic;
SIGNAL \STATEMACHINE|WideOr4~combout\ : std_logic;
SIGNAL \LIGHTS|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|blink_sig~0_combout\ : std_logic;
SIGNAL \CLOCKSIGNAL|blink_sig~q\ : std_logic;
SIGNAL \STATEMACHINE|Selector2~2_combout\ : std_logic;
SIGNAL \STATEMACHINE|Selector3~2_combout\ : std_logic;
SIGNAL \LIGHTS|DOUT[3]~1_combout\ : std_logic;
SIGNAL \STATEMACHINE|ew_amber~combout\ : std_logic;
SIGNAL \PBFILTER|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNCRONIZE|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \NS|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EW|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCKSIGNAL|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PBFILTER|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PBFILTER|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STATEMACHINE|ALT_INV_ns_amber~0_combout\ : std_logic;
SIGNAL \STATEMACHINE|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \STATEMACHINE|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \STATEMACHINE|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \STATEMACHINE|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \STATEMACHINE|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \LIGHTS|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
sm_clken_s <= ww_sm_clken_s;
blink_sig_s <= ww_blink_sig_s;
ns_green_s <= ww_ns_green_s;
ns_amber_s <= ww_ns_amber_s;
ns_red_s <= ww_ns_red_s;
ew_green_s <= ww_ew_green_s;
ew_amber_s <= ww_ew_amber_s;
ew_red_s <= ww_ew_red_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\STATEMACHINE|ALT_INV_ns_amber~0_combout\ <= NOT \STATEMACHINE|ns_amber~0_combout\;
\STATEMACHINE|ALT_INV_WideOr4~combout\ <= NOT \STATEMACHINE|WideOr4~combout\;
\STATEMACHINE|ALT_INV_WideOr7~combout\ <= NOT \STATEMACHINE|WideOr7~combout\;
\STATEMACHINE|ALT_INV_WideOr8~combout\ <= NOT \STATEMACHINE|WideOr8~combout\;
\STATEMACHINE|ALT_INV_WideOr9~combout\ <= NOT \STATEMACHINE|WideOr9~combout\;
\STATEMACHINE|ALT_INV_WideOr2~0_combout\ <= NOT \STATEMACHINE|WideOr2~0_combout\;
\LIGHTS|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \LIGHTS|clk_proc:COUNT[10]~q\;

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \LIGHTS|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSHOLDREG|sreg~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EWHOLDREG|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LIGHTS|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LIGHTS|DOUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LIGHTS|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LIGHTS|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\sm_clken_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCKSIGNAL|sm_clken~combout\,
	devoe => ww_devoe,
	o => \sm_clken_s~output_o\);

\blink_sig_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCKSIGNAL|blink_sig~q\,
	devoe => ww_devoe,
	o => \blink_sig_s~output_o\);

\ns_green_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \ns_green_s~output_o\);

\ns_amber_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_ns_amber~0_combout\,
	devoe => ww_devoe,
	o => \ns_amber_s~output_o\);

\ns_red_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \ns_red_s~output_o\);

\ew_green_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \ew_green_s~output_o\);

\ew_amber_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|ew_amber~combout\,
	devoe => ww_devoe,
	o => \ew_amber_s~output_o\);

\ew_red_s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STATEMACHINE|WideOr4~combout\,
	devoe => ww_devoe,
	o => \ew_red_s~output_o\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\PBFILTER|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg0\(0));

\PBFILTER|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg0\(1));

\PBFILTER|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg0\(2));

\PBFILTER|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg0\(3));

\PBFILTER|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBFILTER|pb_n_filtered[0]~0_combout\ = (!\PBFILTER|sreg0\(1) & (!\PBFILTER|sreg0\(2) & !\PBFILTER|sreg0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PBFILTER|sreg0\(1),
	datab => \PBFILTER|sreg0\(2),
	datac => \PBFILTER|sreg0\(3),
	combout => \PBFILTER|pb_n_filtered[0]~0_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\PBFILTER|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg4\(0));

\PBFILTER|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg4\(1));

\PBFILTER|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg4\(2));

\PBFILTER|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg4\(3));

\PBFILTER|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBFILTER|rst_n_filtered~0_combout\ = (!\PBFILTER|sreg4\(1) & (!\PBFILTER|sreg4\(2) & !\PBFILTER|sreg4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PBFILTER|sreg4\(1),
	datab => \PBFILTER|sreg4\(2),
	datac => \PBFILTER|sreg4\(3),
	combout => \PBFILTER|rst_n_filtered~0_combout\);

\SYNCRONIZE|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|rst_n_filtered~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNCRONIZE|sreg\(0));

\SYNCRONIZE|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNCRONIZE|sreg~0_combout\ = (\SYNCRONIZE|sreg\(0) & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCRONIZE|sreg\(0),
	datad => \SYNCRONIZE|sreg\(1),
	combout => \SYNCRONIZE|sreg~0_combout\);

\SYNCRONIZE|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNCRONIZE|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNCRONIZE|sreg\(1));

\NS|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|pb_n_filtered[0]~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NS|sreg\(0));

\NS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NS|sreg~0_combout\ = (\NS|sreg\(0) & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS|sreg\(0),
	datad => \SYNCRONIZE|sreg\(1),
	combout => \NS|sreg~0_combout\);

\NS|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \NS|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NS|sreg\(1));

\NSHOLDREG|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NSHOLDREG|d~0_combout\ = (!\STATEMACHINE|current_state.S6~q\ & (!\SYNCRONIZE|sreg\(1) & ((\NSHOLDREG|sreg~q\) # (\NS|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSHOLDREG|sreg~q\,
	datab => \NS|sreg\(1),
	datac => \STATEMACHINE|current_state.S6~q\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \NSHOLDREG|d~0_combout\);

\NSHOLDREG|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \NSHOLDREG|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NSHOLDREG|sreg~q\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\PBFILTER|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg1\(0));

\PBFILTER|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg1\(1));

\PBFILTER|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg1\(2));

\PBFILTER|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|sreg1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PBFILTER|sreg1\(3));

\PBFILTER|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBFILTER|pb_n_filtered[1]~1_combout\ = (!\PBFILTER|sreg1\(1) & (!\PBFILTER|sreg1\(2) & !\PBFILTER|sreg1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PBFILTER|sreg1\(1),
	datab => \PBFILTER|sreg1\(2),
	datac => \PBFILTER|sreg1\(3),
	combout => \PBFILTER|pb_n_filtered[1]~1_combout\);

\EW|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PBFILTER|pb_n_filtered[1]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EW|sreg\(0));

\EW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \EW|sreg~0_combout\ = (\EW|sreg\(0) & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EW|sreg\(0),
	datad => \SYNCRONIZE|sreg\(1),
	combout => \EW|sreg~0_combout\);

\EW|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \EW|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EW|sreg\(1));

\EWHOLDREG|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \EWHOLDREG|d~0_combout\ = (!\STATEMACHINE|current_state.S14~q\ & (!\SYNCRONIZE|sreg\(1) & ((\EWHOLDREG|sreg~q\) # (\EW|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EWHOLDREG|sreg~q\,
	datab => \EW|sreg\(1),
	datac => \STATEMACHINE|current_state.S14~q\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \EWHOLDREG|d~0_combout\);

\EWHOLDREG|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \EWHOLDREG|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EWHOLDREG|sreg~q\);

\CLOCKSIGNAL|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_divider:counter[0]~1_combout\ = \CLOCKSIGNAL|clk_divider:counter[0]~q\ $ (VCC)
-- \CLOCKSIGNAL|clk_divider:counter[0]~2\ = CARRY(\CLOCKSIGNAL|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \CLOCKSIGNAL|clk_divider:counter[0]~1_combout\,
	cout => \CLOCKSIGNAL|clk_divider:counter[0]~2\);

\CLOCKSIGNAL|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_divider:counter[0]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_divider:counter[0]~q\);

\CLOCKSIGNAL|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_divider:counter[1]~1_combout\ = (\CLOCKSIGNAL|clk_divider:counter[1]~q\ & (!\CLOCKSIGNAL|clk_divider:counter[0]~2\)) # (!\CLOCKSIGNAL|clk_divider:counter[1]~q\ & ((\CLOCKSIGNAL|clk_divider:counter[0]~2\) # (GND)))
-- \CLOCKSIGNAL|clk_divider:counter[1]~2\ = CARRY((!\CLOCKSIGNAL|clk_divider:counter[0]~2\) # (!\CLOCKSIGNAL|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \CLOCKSIGNAL|clk_divider:counter[0]~2\,
	combout => \CLOCKSIGNAL|clk_divider:counter[1]~1_combout\,
	cout => \CLOCKSIGNAL|clk_divider:counter[1]~2\);

\CLOCKSIGNAL|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_divider:counter[1]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_divider:counter[1]~q\);

\CLOCKSIGNAL|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_divider:counter[2]~1_combout\ = (\CLOCKSIGNAL|clk_divider:counter[2]~q\ & (\CLOCKSIGNAL|clk_divider:counter[1]~2\ $ (GND))) # (!\CLOCKSIGNAL|clk_divider:counter[2]~q\ & (!\CLOCKSIGNAL|clk_divider:counter[1]~2\ & VCC))
-- \CLOCKSIGNAL|clk_divider:counter[2]~2\ = CARRY((\CLOCKSIGNAL|clk_divider:counter[2]~q\ & !\CLOCKSIGNAL|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \CLOCKSIGNAL|clk_divider:counter[1]~2\,
	combout => \CLOCKSIGNAL|clk_divider:counter[2]~1_combout\,
	cout => \CLOCKSIGNAL|clk_divider:counter[2]~2\);

\CLOCKSIGNAL|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_divider:counter[2]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_divider:counter[2]~q\);

\CLOCKSIGNAL|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_divider:counter[3]~1_combout\ = (\CLOCKSIGNAL|clk_divider:counter[3]~q\ & (!\CLOCKSIGNAL|clk_divider:counter[2]~2\)) # (!\CLOCKSIGNAL|clk_divider:counter[3]~q\ & ((\CLOCKSIGNAL|clk_divider:counter[2]~2\) # (GND)))
-- \CLOCKSIGNAL|clk_divider:counter[3]~2\ = CARRY((!\CLOCKSIGNAL|clk_divider:counter[2]~2\) # (!\CLOCKSIGNAL|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \CLOCKSIGNAL|clk_divider:counter[2]~2\,
	combout => \CLOCKSIGNAL|clk_divider:counter[3]~1_combout\,
	cout => \CLOCKSIGNAL|clk_divider:counter[3]~2\);

\CLOCKSIGNAL|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_divider:counter[3]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_divider:counter[3]~q\);

\CLOCKSIGNAL|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_divider:counter[4]~1_combout\ = \CLOCKSIGNAL|clk_divider:counter[4]~q\ $ (!\CLOCKSIGNAL|clk_divider:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[4]~q\,
	cin => \CLOCKSIGNAL|clk_divider:counter[3]~2\,
	combout => \CLOCKSIGNAL|clk_divider:counter[4]~1_combout\);

\CLOCKSIGNAL|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_divider:counter[4]~1_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_divider:counter[4]~q\);

\CLOCKSIGNAL|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_reg_extend~0_combout\ = (\CLOCKSIGNAL|clk_divider:counter[4]~q\ & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[4]~q\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \CLOCKSIGNAL|clk_reg_extend~0_combout\);

\CLOCKSIGNAL|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_reg_extend\(0));

\CLOCKSIGNAL|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|clk_reg_extend~1_combout\ = (\CLOCKSIGNAL|clk_reg_extend\(0) & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_reg_extend\(0),
	datad => \SYNCRONIZE|sreg\(1),
	combout => \CLOCKSIGNAL|clk_reg_extend~1_combout\);

\CLOCKSIGNAL|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|clk_reg_extend\(1));

\CLOCKSIGNAL|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|sm_clken~combout\ = (\CLOCKSIGNAL|clk_reg_extend\(0) & !\CLOCKSIGNAL|clk_reg_extend\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_reg_extend\(0),
	datad => \CLOCKSIGNAL|clk_reg_extend\(1),
	combout => \CLOCKSIGNAL|sm_clken~combout\);

\STATEMACHINE|current_state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~48_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S14~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S14~q\,
	datab => \STATEMACHINE|current_state.S15~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~48_combout\);

\STATEMACHINE|current_state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S15~q\);

\STATEMACHINE|current_state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~45_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (!\STATEMACHINE|current_state.S15~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCRONIZE|sreg\(1),
	datab => \STATEMACHINE|current_state.S15~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \STATEMACHINE|current_state.S0~q\,
	combout => \STATEMACHINE|current_state~45_combout\);

\STATEMACHINE|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S0~q\);

\STATEMACHINE|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|next_state.S1~0_combout\ = (!\STATEMACHINE|current_state.S0~q\ & ((\NSHOLDREG|sreg~q\) # (!\EWHOLDREG|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSHOLDREG|sreg~q\,
	datac => \EWHOLDREG|sreg~q\,
	datad => \STATEMACHINE|current_state.S0~q\,
	combout => \STATEMACHINE|next_state.S1~0_combout\);

\STATEMACHINE|current_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~35_combout\ = (\SYNCRONIZE|sreg\(1)) # ((\CLOCKSIGNAL|clk_reg_extend\(0) & !\CLOCKSIGNAL|clk_reg_extend\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCRONIZE|sreg\(1),
	datab => \CLOCKSIGNAL|clk_reg_extend\(0),
	datad => \CLOCKSIGNAL|clk_reg_extend\(1),
	combout => \STATEMACHINE|current_state~35_combout\);

\STATEMACHINE|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|next_state.S1~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	ena => \STATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S1~q\);

\STATEMACHINE|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|next_state.S2~0_combout\ = (\STATEMACHINE|current_state.S1~q\ & ((\NSHOLDREG|sreg~q\) # (!\EWHOLDREG|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S1~q\,
	datab => \NSHOLDREG|sreg~q\,
	datad => \EWHOLDREG|sreg~q\,
	combout => \STATEMACHINE|next_state.S2~0_combout\);

\STATEMACHINE|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|next_state.S2~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	ena => \STATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S2~q\);

\STATEMACHINE|current_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~34_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S2~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S2~q\,
	datab => \STATEMACHINE|current_state.S3~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~34_combout\);

\STATEMACHINE|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S3~q\);

\STATEMACHINE|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~36_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S3~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S3~q\,
	datab => \STATEMACHINE|current_state.S4~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~36_combout\);

\STATEMACHINE|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S4~q\);

\STATEMACHINE|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~37_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S4~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S4~q\,
	datab => \STATEMACHINE|current_state.S5~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~37_combout\);

\STATEMACHINE|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S5~q\);

\STATEMACHINE|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr4~0_combout\ = (\STATEMACHINE|current_state.S0~q\ & !\STATEMACHINE|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S0~q\,
	datad => \STATEMACHINE|current_state.S1~q\,
	combout => \STATEMACHINE|WideOr4~0_combout\);

\STATEMACHINE|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~41_combout\ = (\STATEMACHINE|current_state.S5~q\) # ((\EWHOLDREG|sreg~q\ & (!\NSHOLDREG|sreg~q\ & !\STATEMACHINE|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S5~q\,
	datab => \EWHOLDREG|sreg~q\,
	datac => \NSHOLDREG|sreg~q\,
	datad => \STATEMACHINE|WideOr4~0_combout\,
	combout => \STATEMACHINE|current_state~41_combout\);

\STATEMACHINE|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~42_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state~41_combout\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state~41_combout\,
	datab => \STATEMACHINE|current_state.S6~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~42_combout\);

\STATEMACHINE|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S6~q\);

\STATEMACHINE|current_state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~47_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S6~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S6~q\,
	datab => \STATEMACHINE|current_state.S7~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~47_combout\);

\STATEMACHINE|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S7~q\);

\STATEMACHINE|current_state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~46_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S7~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S7~q\,
	datab => \STATEMACHINE|current_state.S8~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~46_combout\);

\STATEMACHINE|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S8~q\);

\STATEMACHINE|next_state.S9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|next_state.S9~0_combout\ = (\STATEMACHINE|current_state.S8~q\ & ((\EWHOLDREG|sreg~q\) # (!\NSHOLDREG|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S8~q\,
	datab => \EWHOLDREG|sreg~q\,
	datad => \NSHOLDREG|sreg~q\,
	combout => \STATEMACHINE|next_state.S9~0_combout\);

\STATEMACHINE|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|next_state.S9~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	ena => \STATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S9~q\);

\STATEMACHINE|next_state.S10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|next_state.S10~0_combout\ = (\STATEMACHINE|current_state.S9~q\ & ((\EWHOLDREG|sreg~q\) # (!\NSHOLDREG|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S9~q\,
	datab => \EWHOLDREG|sreg~q\,
	datad => \NSHOLDREG|sreg~q\,
	combout => \STATEMACHINE|next_state.S10~0_combout\);

\STATEMACHINE|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|next_state.S10~0_combout\,
	sclr => \SYNCRONIZE|sreg\(1),
	ena => \STATEMACHINE|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S10~q\);

\STATEMACHINE|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~38_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S10~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S10~q\,
	datab => \STATEMACHINE|current_state.S11~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~38_combout\);

\STATEMACHINE|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S11~q\);

\STATEMACHINE|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~39_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S11~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S11~q\,
	datab => \STATEMACHINE|current_state.S12~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~39_combout\);

\STATEMACHINE|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S12~q\);

\STATEMACHINE|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~40_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state.S12~q\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S13~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S12~q\,
	datab => \STATEMACHINE|current_state.S13~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~40_combout\);

\STATEMACHINE|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S13~q\);

\STATEMACHINE|WideOr7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr7~1_combout\ = (!\STATEMACHINE|current_state.S8~q\ & !\STATEMACHINE|current_state.S9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATEMACHINE|current_state.S8~q\,
	datad => \STATEMACHINE|current_state.S9~q\,
	combout => \STATEMACHINE|WideOr7~1_combout\);

\STATEMACHINE|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~43_combout\ = (\STATEMACHINE|current_state.S13~q\) # ((\NSHOLDREG|sreg~q\ & (!\EWHOLDREG|sreg~q\ & !\STATEMACHINE|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S13~q\,
	datab => \NSHOLDREG|sreg~q\,
	datac => \EWHOLDREG|sreg~q\,
	datad => \STATEMACHINE|WideOr7~1_combout\,
	combout => \STATEMACHINE|current_state~43_combout\);

\STATEMACHINE|current_state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|current_state~44_combout\ = (!\SYNCRONIZE|sreg\(1) & ((\CLOCKSIGNAL|sm_clken~combout\ & (\STATEMACHINE|current_state~43_combout\)) # (!\CLOCKSIGNAL|sm_clken~combout\ & ((\STATEMACHINE|current_state.S14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state~43_combout\,
	datab => \STATEMACHINE|current_state.S14~q\,
	datac => \CLOCKSIGNAL|sm_clken~combout\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \STATEMACHINE|current_state~44_combout\);

\STATEMACHINE|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \STATEMACHINE|current_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATEMACHINE|current_state.S14~q\);

\LIGHTS|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[0]~0_combout\ = !\LIGHTS|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[0]~q\,
	combout => \LIGHTS|clk_proc:COUNT[0]~0_combout\);

\LIGHTS|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[0]~q\);

\LIGHTS|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[1]~1_combout\ = (\LIGHTS|clk_proc:COUNT[1]~q\ & (\LIGHTS|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\LIGHTS|clk_proc:COUNT[1]~q\ & (\LIGHTS|clk_proc:COUNT[0]~q\ & VCC))
-- \LIGHTS|clk_proc:COUNT[1]~2\ = CARRY((\LIGHTS|clk_proc:COUNT[1]~q\ & \LIGHTS|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[1]~q\,
	datab => \LIGHTS|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \LIGHTS|clk_proc:COUNT[1]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[1]~2\);

\LIGHTS|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[1]~q\);

\LIGHTS|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[2]~1_combout\ = (\LIGHTS|clk_proc:COUNT[2]~q\ & (!\LIGHTS|clk_proc:COUNT[1]~2\)) # (!\LIGHTS|clk_proc:COUNT[2]~q\ & ((\LIGHTS|clk_proc:COUNT[1]~2\) # (GND)))
-- \LIGHTS|clk_proc:COUNT[2]~2\ = CARRY((!\LIGHTS|clk_proc:COUNT[1]~2\) # (!\LIGHTS|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[1]~2\,
	combout => \LIGHTS|clk_proc:COUNT[2]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[2]~2\);

\LIGHTS|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[2]~q\);

\LIGHTS|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[3]~1_combout\ = (\LIGHTS|clk_proc:COUNT[3]~q\ & (\LIGHTS|clk_proc:COUNT[2]~2\ $ (GND))) # (!\LIGHTS|clk_proc:COUNT[3]~q\ & (!\LIGHTS|clk_proc:COUNT[2]~2\ & VCC))
-- \LIGHTS|clk_proc:COUNT[3]~2\ = CARRY((\LIGHTS|clk_proc:COUNT[3]~q\ & !\LIGHTS|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[2]~2\,
	combout => \LIGHTS|clk_proc:COUNT[3]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[3]~2\);

\LIGHTS|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[3]~q\);

\LIGHTS|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[4]~1_combout\ = (\LIGHTS|clk_proc:COUNT[4]~q\ & (!\LIGHTS|clk_proc:COUNT[3]~2\)) # (!\LIGHTS|clk_proc:COUNT[4]~q\ & ((\LIGHTS|clk_proc:COUNT[3]~2\) # (GND)))
-- \LIGHTS|clk_proc:COUNT[4]~2\ = CARRY((!\LIGHTS|clk_proc:COUNT[3]~2\) # (!\LIGHTS|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[3]~2\,
	combout => \LIGHTS|clk_proc:COUNT[4]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[4]~2\);

\LIGHTS|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[4]~q\);

\LIGHTS|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[5]~1_combout\ = (\LIGHTS|clk_proc:COUNT[5]~q\ & (\LIGHTS|clk_proc:COUNT[4]~2\ $ (GND))) # (!\LIGHTS|clk_proc:COUNT[5]~q\ & (!\LIGHTS|clk_proc:COUNT[4]~2\ & VCC))
-- \LIGHTS|clk_proc:COUNT[5]~2\ = CARRY((\LIGHTS|clk_proc:COUNT[5]~q\ & !\LIGHTS|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[4]~2\,
	combout => \LIGHTS|clk_proc:COUNT[5]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[5]~2\);

\LIGHTS|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[5]~q\);

\LIGHTS|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[6]~1_combout\ = (\LIGHTS|clk_proc:COUNT[6]~q\ & (!\LIGHTS|clk_proc:COUNT[5]~2\)) # (!\LIGHTS|clk_proc:COUNT[6]~q\ & ((\LIGHTS|clk_proc:COUNT[5]~2\) # (GND)))
-- \LIGHTS|clk_proc:COUNT[6]~2\ = CARRY((!\LIGHTS|clk_proc:COUNT[5]~2\) # (!\LIGHTS|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[5]~2\,
	combout => \LIGHTS|clk_proc:COUNT[6]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[6]~2\);

\LIGHTS|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[6]~q\);

\LIGHTS|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[7]~1_combout\ = (\LIGHTS|clk_proc:COUNT[7]~q\ & (\LIGHTS|clk_proc:COUNT[6]~2\ $ (GND))) # (!\LIGHTS|clk_proc:COUNT[7]~q\ & (!\LIGHTS|clk_proc:COUNT[6]~2\ & VCC))
-- \LIGHTS|clk_proc:COUNT[7]~2\ = CARRY((\LIGHTS|clk_proc:COUNT[7]~q\ & !\LIGHTS|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[6]~2\,
	combout => \LIGHTS|clk_proc:COUNT[7]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[7]~2\);

\LIGHTS|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[7]~q\);

\LIGHTS|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[8]~1_combout\ = (\LIGHTS|clk_proc:COUNT[8]~q\ & (!\LIGHTS|clk_proc:COUNT[7]~2\)) # (!\LIGHTS|clk_proc:COUNT[8]~q\ & ((\LIGHTS|clk_proc:COUNT[7]~2\) # (GND)))
-- \LIGHTS|clk_proc:COUNT[8]~2\ = CARRY((!\LIGHTS|clk_proc:COUNT[7]~2\) # (!\LIGHTS|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[7]~2\,
	combout => \LIGHTS|clk_proc:COUNT[8]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[8]~2\);

\LIGHTS|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[8]~q\);

\LIGHTS|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[9]~1_combout\ = (\LIGHTS|clk_proc:COUNT[9]~q\ & (\LIGHTS|clk_proc:COUNT[8]~2\ $ (GND))) # (!\LIGHTS|clk_proc:COUNT[9]~q\ & (!\LIGHTS|clk_proc:COUNT[8]~2\ & VCC))
-- \LIGHTS|clk_proc:COUNT[9]~2\ = CARRY((\LIGHTS|clk_proc:COUNT[9]~q\ & !\LIGHTS|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \LIGHTS|clk_proc:COUNT[8]~2\,
	combout => \LIGHTS|clk_proc:COUNT[9]~1_combout\,
	cout => \LIGHTS|clk_proc:COUNT[9]~2\);

\LIGHTS|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[9]~q\);

\LIGHTS|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|clk_proc:COUNT[10]~1_combout\ = \LIGHTS|clk_proc:COUNT[10]~q\ $ (\LIGHTS|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LIGHTS|clk_proc:COUNT[10]~q\,
	cin => \LIGHTS|clk_proc:COUNT[9]~2\,
	combout => \LIGHTS|clk_proc:COUNT[10]~1_combout\);

\LIGHTS|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \LIGHTS|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGHTS|clk_proc:COUNT[10]~q\);

\STATEMACHINE|ns_amber~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|ns_amber~0_combout\ = (!\STATEMACHINE|current_state.S6~q\ & !\STATEMACHINE|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATEMACHINE|current_state.S6~q\,
	datad => \STATEMACHINE|current_state.S7~q\,
	combout => \STATEMACHINE|ns_amber~0_combout\);

\LIGHTS|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|DOUT_TEMP[6]~0_combout\ = (\LIGHTS|clk_proc:COUNT[10]~q\ & (((!\STATEMACHINE|ns_amber~0_combout\)))) # (!\LIGHTS|clk_proc:COUNT[10]~q\ & ((\STATEMACHINE|current_state.S14~q\) # ((\STATEMACHINE|current_state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S14~q\,
	datab => \STATEMACHINE|current_state.S15~q\,
	datac => \LIGHTS|clk_proc:COUNT[10]~q\,
	datad => \STATEMACHINE|ns_amber~0_combout\,
	combout => \LIGHTS|DOUT_TEMP[6]~0_combout\);

\STATEMACHINE|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr2~0_combout\ = (!\STATEMACHINE|current_state.S3~q\ & (!\STATEMACHINE|current_state.S2~q\ & (!\STATEMACHINE|current_state.S4~q\ & !\STATEMACHINE|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S3~q\,
	datab => \STATEMACHINE|current_state.S2~q\,
	datac => \STATEMACHINE|current_state.S4~q\,
	datad => \STATEMACHINE|current_state.S5~q\,
	combout => \STATEMACHINE|WideOr2~0_combout\);

\STATEMACHINE|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr6~0_combout\ = (\STATEMACHINE|current_state.S11~q\) # ((\STATEMACHINE|current_state.S10~q\) # ((\STATEMACHINE|current_state.S12~q\) # (\STATEMACHINE|current_state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S11~q\,
	datab => \STATEMACHINE|current_state.S10~q\,
	datac => \STATEMACHINE|current_state.S12~q\,
	datad => \STATEMACHINE|current_state.S13~q\,
	combout => \STATEMACHINE|WideOr6~0_combout\);

\STATEMACHINE|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr9~0_combout\ = (\STATEMACHINE|current_state.S2~q\) # ((\STATEMACHINE|current_state.S10~q\) # ((\STATEMACHINE|current_state.S6~q\) # (\STATEMACHINE|current_state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S2~q\,
	datab => \STATEMACHINE|current_state.S10~q\,
	datac => \STATEMACHINE|current_state.S6~q\,
	datad => \STATEMACHINE|current_state.S14~q\,
	combout => \STATEMACHINE|WideOr9~0_combout\);

\STATEMACHINE|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr8~0_combout\ = (\STATEMACHINE|current_state.S0~q\ & (!\STATEMACHINE|current_state.S4~q\ & (!\STATEMACHINE|current_state.S12~q\ & !\STATEMACHINE|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S0~q\,
	datab => \STATEMACHINE|current_state.S4~q\,
	datac => \STATEMACHINE|current_state.S12~q\,
	datad => \STATEMACHINE|current_state.S8~q\,
	combout => \STATEMACHINE|WideOr8~0_combout\);

\STATEMACHINE|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr9~combout\ = (\STATEMACHINE|WideOr9~0_combout\) # (!\STATEMACHINE|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|WideOr9~0_combout\,
	datad => \STATEMACHINE|WideOr8~0_combout\,
	combout => \STATEMACHINE|WideOr9~combout\);

\STATEMACHINE|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr8~1_combout\ = (\STATEMACHINE|current_state.S5~q\) # ((\STATEMACHINE|current_state.S13~q\) # ((\STATEMACHINE|current_state.S1~q\) # (\STATEMACHINE|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S5~q\,
	datab => \STATEMACHINE|current_state.S13~q\,
	datac => \STATEMACHINE|current_state.S1~q\,
	datad => \STATEMACHINE|current_state.S9~q\,
	combout => \STATEMACHINE|WideOr8~1_combout\);

\STATEMACHINE|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr8~combout\ = (\STATEMACHINE|WideOr8~1_combout\) # (!\STATEMACHINE|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|WideOr8~1_combout\,
	datad => \STATEMACHINE|WideOr8~0_combout\,
	combout => \STATEMACHINE|WideOr8~combout\);

\STATEMACHINE|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr7~0_combout\ = (\STATEMACHINE|current_state.S11~q\) # ((\STATEMACHINE|current_state.S10~q\) # ((\STATEMACHINE|current_state.S1~q\) # (!\STATEMACHINE|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S11~q\,
	datab => \STATEMACHINE|current_state.S10~q\,
	datac => \STATEMACHINE|current_state.S1~q\,
	datad => \STATEMACHINE|current_state.S0~q\,
	combout => \STATEMACHINE|WideOr7~0_combout\);

\STATEMACHINE|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr7~combout\ = (\STATEMACHINE|current_state.S3~q\) # ((\STATEMACHINE|current_state.S2~q\) # ((\STATEMACHINE|WideOr7~0_combout\) # (!\STATEMACHINE|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S3~q\,
	datab => \STATEMACHINE|current_state.S2~q\,
	datac => \STATEMACHINE|WideOr7~0_combout\,
	datad => \STATEMACHINE|WideOr7~1_combout\,
	combout => \STATEMACHINE|WideOr7~combout\);

\STATEMACHINE|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|WideOr4~combout\ = (\STATEMACHINE|current_state.S6~q\) # ((\STATEMACHINE|current_state.S7~q\) # ((!\STATEMACHINE|WideOr4~0_combout\) # (!\STATEMACHINE|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S6~q\,
	datab => \STATEMACHINE|current_state.S7~q\,
	datac => \STATEMACHINE|WideOr2~0_combout\,
	datad => \STATEMACHINE|WideOr4~0_combout\,
	combout => \STATEMACHINE|WideOr4~combout\);

\LIGHTS|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|DOUT[0]~0_combout\ = \LIGHTS|clk_proc:COUNT[10]~q\ $ ((((!\STATEMACHINE|ns_amber~0_combout\) # (!\STATEMACHINE|WideOr4~0_combout\)) # (!\STATEMACHINE|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|WideOr2~0_combout\,
	datab => \STATEMACHINE|WideOr4~0_combout\,
	datac => \STATEMACHINE|ns_amber~0_combout\,
	datad => \LIGHTS|clk_proc:COUNT[10]~q\,
	combout => \LIGHTS|DOUT[0]~0_combout\);

\CLOCKSIGNAL|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCKSIGNAL|blink_sig~0_combout\ = (\CLOCKSIGNAL|clk_divider:counter[2]~q\ & !\SYNCRONIZE|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCKSIGNAL|clk_divider:counter[2]~q\,
	datad => \SYNCRONIZE|sreg\(1),
	combout => \CLOCKSIGNAL|blink_sig~0_combout\);

\CLOCKSIGNAL|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCKSIGNAL|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCKSIGNAL|blink_sig~q\);

\STATEMACHINE|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|Selector2~2_combout\ = ((\CLOCKSIGNAL|blink_sig~q\ & ((\STATEMACHINE|current_state.S1~q\) # (!\STATEMACHINE|current_state.S0~q\)))) # (!\STATEMACHINE|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S0~q\,
	datab => \STATEMACHINE|current_state.S1~q\,
	datac => \CLOCKSIGNAL|blink_sig~q\,
	datad => \STATEMACHINE|WideOr2~0_combout\,
	combout => \STATEMACHINE|Selector2~2_combout\);

\STATEMACHINE|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|Selector3~2_combout\ = (\STATEMACHINE|WideOr6~0_combout\) # ((\CLOCKSIGNAL|blink_sig~q\ & ((\STATEMACHINE|current_state.S8~q\) # (\STATEMACHINE|current_state.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S8~q\,
	datab => \STATEMACHINE|current_state.S9~q\,
	datac => \STATEMACHINE|WideOr6~0_combout\,
	datad => \CLOCKSIGNAL|blink_sig~q\,
	combout => \STATEMACHINE|Selector3~2_combout\);

\LIGHTS|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LIGHTS|DOUT[3]~1_combout\ = (\LIGHTS|clk_proc:COUNT[10]~q\ & (\STATEMACHINE|Selector2~2_combout\)) # (!\LIGHTS|clk_proc:COUNT[10]~q\ & ((\STATEMACHINE|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|Selector2~2_combout\,
	datab => \STATEMACHINE|Selector3~2_combout\,
	datad => \LIGHTS|clk_proc:COUNT[10]~q\,
	combout => \LIGHTS|DOUT[3]~1_combout\);

\STATEMACHINE|ew_amber\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STATEMACHINE|ew_amber~combout\ = (\STATEMACHINE|current_state.S14~q\) # (\STATEMACHINE|current_state.S15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATEMACHINE|current_state.S14~q\,
	datab => \STATEMACHINE|current_state.S15~q\,
	combout => \STATEMACHINE|ew_amber~combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;

ww_sm_clken_s <= \sm_clken_s~output_o\;

ww_blink_sig_s <= \blink_sig_s~output_o\;

ww_ns_green_s <= \ns_green_s~output_o\;

ww_ns_amber_s <= \ns_amber_s~output_o\;

ww_ns_red_s <= \ns_red_s~output_o\;

ww_ew_green_s <= \ew_green_s~output_o\;

ww_ew_amber_s <= \ew_amber_s~output_o\;

ww_ew_red_s <= \ew_red_s~output_o\;
END structure;


