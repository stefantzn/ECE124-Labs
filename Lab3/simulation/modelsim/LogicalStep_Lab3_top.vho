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

-- DATE "03/12/2024 22:07:08"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
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
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HVAC1|digital_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
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
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[0]~0_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[2]~feeder_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[3]~feeder_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \HVAC1|Add0~1_cout\ : std_logic;
SIGNAL \HVAC1|Add0~3_cout\ : std_logic;
SIGNAL \HVAC1|Add0~5_cout\ : std_logic;
SIGNAL \HVAC1|Add0~7_cout\ : std_logic;
SIGNAL \HVAC1|Add0~9_cout\ : std_logic;
SIGNAL \HVAC1|Add0~11_cout\ : std_logic;
SIGNAL \HVAC1|Add0~13_cout\ : std_logic;
SIGNAL \HVAC1|Add0~15_cout\ : std_logic;
SIGNAL \HVAC1|Add0~17_cout\ : std_logic;
SIGNAL \HVAC1|Add0~19_cout\ : std_logic;
SIGNAL \HVAC1|Add0~20_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \HVAC1|Add0~21\ : std_logic;
SIGNAL \HVAC1|Add0~22_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \HVAC1|Add0~23\ : std_logic;
SIGNAL \HVAC1|Add0~24_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \HVAC1|Add0~25\ : std_logic;
SIGNAL \HVAC1|Add0~26_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \HVAC1|Add0~27\ : std_logic;
SIGNAL \HVAC1|Add0~28_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \HVAC1|Add0~29\ : std_logic;
SIGNAL \HVAC1|Add0~30_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \HVAC1|Add0~31\ : std_logic;
SIGNAL \HVAC1|Add0~32_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \HVAC1|Add0~33\ : std_logic;
SIGNAL \HVAC1|Add0~34_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \HVAC1|Add0~35\ : std_logic;
SIGNAL \HVAC1|Add0~36_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \HVAC1|Add0~37\ : std_logic;
SIGNAL \HVAC1|Add0~38_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \HVAC1|Add0~39\ : std_logic;
SIGNAL \HVAC1|Add0~40_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \HVAC1|Add0~41\ : std_logic;
SIGNAL \HVAC1|Add0~42_combout\ : std_logic;
SIGNAL \HVAC1|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \HVAC1|Add0~43\ : std_logic;
SIGNAL \HVAC1|Add0~44_combout\ : std_logic;
SIGNAL \HVAC1|digital_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \TWOONEMUX1|Y[2]~1_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \TWOONEMUX1|Y[3]~0_combout\ : std_logic;
SIGNAL \COMPX41|agb~0_combout\ : std_logic;
SIGNAL \HVAC1|cnt~9_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \TWOONEMUX1|Y[0]~3_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \TWOONEMUX1|Y[1]~2_combout\ : std_logic;
SIGNAL \COMPX41|agb~1_combout\ : std_logic;
SIGNAL \HVAC1|cnt~10_combout\ : std_logic;
SIGNAL \COMPX41|alb~1_combout\ : std_logic;
SIGNAL \COMPX41|alb~0_combout\ : std_logic;
SIGNAL \COMPX41|alb~2_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \COMPX41|co2|aequalb~0_combout\ : std_logic;
SIGNAL \ENERGYMONITOR|blower~0_combout\ : std_logic;
SIGNAL \ENERGYMONITOR|blower~1_combout\ : std_logic;
SIGNAL \HVAC1|cnt[3]~11_combout\ : std_logic;
SIGNAL \HVAC1|cnt[0]~14_combout\ : std_logic;
SIGNAL \HVAC1|cnt[1]~4_cout\ : std_logic;
SIGNAL \HVAC1|cnt[1]~5_combout\ : std_logic;
SIGNAL \HVAC1|cnt[1]~6\ : std_logic;
SIGNAL \HVAC1|cnt[2]~8\ : std_logic;
SIGNAL \HVAC1|cnt[3]~12_combout\ : std_logic;
SIGNAL \COMPX41|agb~2_combout\ : std_logic;
SIGNAL \HVAC1|counter_process~0_combout\ : std_logic;
SIGNAL \HVAC1|counter_process~1_combout\ : std_logic;
SIGNAL \HVAC1|cnt[2]~7_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux5~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux5~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux1~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux1~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux0~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux0~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \COMPX41|agb~3_combout\ : std_logic;
SIGNAL \COMPX41|aeb~0_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~0_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~1_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~2_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~3_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~4_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~5_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~7_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~6_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~8_combout\ : std_logic;
SIGNAL \TESTER1|TEST_PASS~9_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux6~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux6~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT[0]~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux4~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux4~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT[2]~2_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux3~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux3~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT[3]~3_combout\ : std_logic;
SIGNAL \SEVENSEGMENT2|Mux2~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENT1|Mux2~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|DOUT[4]~4_combout\ : std_logic;
SIGNAL \HVAC1|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HVAC1|digital_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \COMPX41|ALT_INV_aeb~0_combout\ : std_logic;
SIGNAL \SEVENSEGMENTMUX|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\HVAC1|digital_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HVAC1|digital_counter\(23));
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\SEVENSEGMENTMUX|ALT_INV_DOUT[4]~4_combout\ <= NOT \SEVENSEGMENTMUX|DOUT[4]~4_combout\;
\SEVENSEGMENTMUX|ALT_INV_DOUT[3]~3_combout\ <= NOT \SEVENSEGMENTMUX|DOUT[3]~3_combout\;
\SEVENSEGMENTMUX|ALT_INV_DOUT[2]~2_combout\ <= NOT \SEVENSEGMENTMUX|DOUT[2]~2_combout\;
\SEVENSEGMENTMUX|ALT_INV_DOUT[0]~0_combout\ <= NOT \SEVENSEGMENTMUX|DOUT[0]~0_combout\;
\COMPX41|ALT_INV_aeb~0_combout\ <= NOT \COMPX41|aeb~0_combout\;
\SEVENSEGMENTMUX|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMPX41|agb~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMPX41|ALT_INV_aeb~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMPX41|alb~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ENERGYMONITOR|blower~1_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TESTER1|TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y16_N6
\HVAC1|clk_divider:counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|clk_divider:counter[0]~0_combout\ = !\HVAC1|clk_divider:counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HVAC1|clk_divider:counter[0]~q\,
	combout => \HVAC1|clk_divider:counter[0]~0_combout\);

-- Location: FF_X24_Y16_N7
\HVAC1|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|clk_divider:counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X23_Y16_N6
\SEVENSEGMENTMUX|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[1]~1_combout\ = (\HVAC1|clk_divider:counter[0]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\ $ (VCC))) # (!\HVAC1|clk_divider:counter[0]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\ & VCC))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\ = CARRY((\HVAC1|clk_divider:counter[0]~q\ & \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[0]~q\,
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\,
	datad => VCC,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\);

-- Location: FF_X24_Y16_N9
\SEVENSEGMENTMUX|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X23_Y16_N8
\SEVENSEGMENTMUX|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[2]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\)) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\ & ((\SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\) # (GND)))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\ = CARRY((!\SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\);

-- Location: LCCOMB_X24_Y16_N2
\SEVENSEGMENTMUX|clk_proc:COUNT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[2]~feeder_combout\ = \SEVENSEGMENTMUX|clk_proc:COUNT[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~1_combout\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~feeder_combout\);

-- Location: FF_X24_Y16_N3
\SEVENSEGMENTMUX|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X23_Y16_N10
\SEVENSEGMENTMUX|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[3]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\ $ (GND))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\ & VCC))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\ & !\SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\);

-- Location: LCCOMB_X24_Y16_N4
\SEVENSEGMENTMUX|clk_proc:COUNT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[3]~feeder_combout\ = \SEVENSEGMENTMUX|clk_proc:COUNT[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~1_combout\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~feeder_combout\);

-- Location: FF_X24_Y16_N5
\SEVENSEGMENTMUX|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X23_Y16_N12
\SEVENSEGMENTMUX|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[4]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\)) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\ & ((\SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\) # (GND)))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\ = CARRY((!\SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\);

-- Location: FF_X23_Y16_N13
\SEVENSEGMENTMUX|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X23_Y16_N14
\SEVENSEGMENTMUX|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[5]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\ $ (GND))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\ & VCC))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\ & !\SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\);

-- Location: FF_X23_Y16_N15
\SEVENSEGMENTMUX|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X23_Y16_N16
\SEVENSEGMENTMUX|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[6]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\)) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\ & ((\SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\) # (GND)))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\ = CARRY((!\SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\);

-- Location: FF_X23_Y16_N17
\SEVENSEGMENTMUX|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X23_Y16_N18
\SEVENSEGMENTMUX|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[7]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\ $ (GND))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\ & VCC))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\ & !\SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\);

-- Location: FF_X23_Y16_N19
\SEVENSEGMENTMUX|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X23_Y16_N20
\SEVENSEGMENTMUX|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[8]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\)) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\ & ((\SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\) # (GND)))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\ = CARRY((!\SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\);

-- Location: FF_X23_Y16_N21
\SEVENSEGMENTMUX|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X23_Y16_N22
\SEVENSEGMENTMUX|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[9]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\ & (\SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\ $ (GND))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\ & (!\SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\ & VCC))
-- \SEVENSEGMENTMUX|clk_proc:COUNT[9]~2\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\ & !\SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~1_combout\,
	cout => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~2\);

-- Location: FF_X23_Y16_N23
\SEVENSEGMENTMUX|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X23_Y16_N24
\SEVENSEGMENTMUX|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|clk_proc:COUNT[10]~1_combout\ = \SEVENSEGMENTMUX|clk_proc:COUNT[9]~2\ $ (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	cin => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~2\,
	combout => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X23_Y16_N25
\SEVENSEGMENTMUX|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\);

-- Location: FF_X24_Y15_N23
\HVAC1|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[23]~q\);

-- Location: LCCOMB_X24_Y16_N10
\HVAC1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~1_cout\ = CARRY((\HVAC1|clk_divider:counter[0]~q\ & \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[0]~q\,
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[1]~q\,
	datad => VCC,
	cout => \HVAC1|Add0~1_cout\);

-- Location: LCCOMB_X24_Y16_N12
\HVAC1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~3_cout\ = CARRY((!\HVAC1|Add0~1_cout\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~1_cout\,
	cout => \HVAC1|Add0~3_cout\);

-- Location: LCCOMB_X24_Y16_N14
\HVAC1|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~5_cout\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\ & !\HVAC1|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~3_cout\,
	cout => \HVAC1|Add0~5_cout\);

-- Location: LCCOMB_X24_Y16_N16
\HVAC1|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~7_cout\ = CARRY((!\HVAC1|Add0~5_cout\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~5_cout\,
	cout => \HVAC1|Add0~7_cout\);

-- Location: LCCOMB_X24_Y16_N18
\HVAC1|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~9_cout\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\ & !\HVAC1|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~7_cout\,
	cout => \HVAC1|Add0~9_cout\);

-- Location: LCCOMB_X24_Y16_N20
\HVAC1|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~11_cout\ = CARRY((!\HVAC1|Add0~9_cout\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENTMUX|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~9_cout\,
	cout => \HVAC1|Add0~11_cout\);

-- Location: LCCOMB_X24_Y16_N22
\HVAC1|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~13_cout\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\ & !\HVAC1|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~11_cout\,
	cout => \HVAC1|Add0~13_cout\);

-- Location: LCCOMB_X24_Y16_N24
\HVAC1|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~15_cout\ = CARRY((!\HVAC1|Add0~13_cout\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~13_cout\,
	cout => \HVAC1|Add0~15_cout\);

-- Location: LCCOMB_X24_Y16_N26
\HVAC1|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~17_cout\ = CARRY((\SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\ & !\HVAC1|Add0~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~15_cout\,
	cout => \HVAC1|Add0~17_cout\);

-- Location: LCCOMB_X24_Y16_N28
\HVAC1|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~19_cout\ = CARRY((!\HVAC1|Add0~17_cout\) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~17_cout\,
	cout => \HVAC1|Add0~19_cout\);

-- Location: LCCOMB_X24_Y16_N30
\HVAC1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~20_combout\ = (\HVAC1|clk_divider:counter[11]~q\ & (\HVAC1|Add0~19_cout\ $ (GND))) # (!\HVAC1|clk_divider:counter[11]~q\ & (!\HVAC1|Add0~19_cout\ & VCC))
-- \HVAC1|Add0~21\ = CARRY((\HVAC1|clk_divider:counter[11]~q\ & !\HVAC1|Add0~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~19_cout\,
	combout => \HVAC1|Add0~20_combout\,
	cout => \HVAC1|Add0~21\);

-- Location: FF_X24_Y16_N31
\HVAC1|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X24_Y15_N0
\HVAC1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~22_combout\ = (\HVAC1|clk_divider:counter[12]~q\ & (!\HVAC1|Add0~21\)) # (!\HVAC1|clk_divider:counter[12]~q\ & ((\HVAC1|Add0~21\) # (GND)))
-- \HVAC1|Add0~23\ = CARRY((!\HVAC1|Add0~21\) # (!\HVAC1|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~21\,
	combout => \HVAC1|Add0~22_combout\,
	cout => \HVAC1|Add0~23\);

-- Location: FF_X24_Y15_N1
\HVAC1|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X24_Y15_N2
\HVAC1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~24_combout\ = (\HVAC1|clk_divider:counter[13]~q\ & (\HVAC1|Add0~23\ $ (GND))) # (!\HVAC1|clk_divider:counter[13]~q\ & (!\HVAC1|Add0~23\ & VCC))
-- \HVAC1|Add0~25\ = CARRY((\HVAC1|clk_divider:counter[13]~q\ & !\HVAC1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~23\,
	combout => \HVAC1|Add0~24_combout\,
	cout => \HVAC1|Add0~25\);

-- Location: FF_X24_Y15_N3
\HVAC1|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X24_Y15_N4
\HVAC1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~26_combout\ = (\HVAC1|clk_divider:counter[14]~q\ & (!\HVAC1|Add0~25\)) # (!\HVAC1|clk_divider:counter[14]~q\ & ((\HVAC1|Add0~25\) # (GND)))
-- \HVAC1|Add0~27\ = CARRY((!\HVAC1|Add0~25\) # (!\HVAC1|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~25\,
	combout => \HVAC1|Add0~26_combout\,
	cout => \HVAC1|Add0~27\);

-- Location: FF_X24_Y15_N5
\HVAC1|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X24_Y15_N6
\HVAC1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~28_combout\ = (\HVAC1|clk_divider:counter[15]~q\ & (\HVAC1|Add0~27\ $ (GND))) # (!\HVAC1|clk_divider:counter[15]~q\ & (!\HVAC1|Add0~27\ & VCC))
-- \HVAC1|Add0~29\ = CARRY((\HVAC1|clk_divider:counter[15]~q\ & !\HVAC1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~27\,
	combout => \HVAC1|Add0~28_combout\,
	cout => \HVAC1|Add0~29\);

-- Location: FF_X24_Y15_N7
\HVAC1|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X24_Y15_N8
\HVAC1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~30_combout\ = (\HVAC1|clk_divider:counter[16]~q\ & (!\HVAC1|Add0~29\)) # (!\HVAC1|clk_divider:counter[16]~q\ & ((\HVAC1|Add0~29\) # (GND)))
-- \HVAC1|Add0~31\ = CARRY((!\HVAC1|Add0~29\) # (!\HVAC1|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~29\,
	combout => \HVAC1|Add0~30_combout\,
	cout => \HVAC1|Add0~31\);

-- Location: FF_X24_Y15_N9
\HVAC1|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X24_Y15_N10
\HVAC1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~32_combout\ = (\HVAC1|clk_divider:counter[17]~q\ & (\HVAC1|Add0~31\ $ (GND))) # (!\HVAC1|clk_divider:counter[17]~q\ & (!\HVAC1|Add0~31\ & VCC))
-- \HVAC1|Add0~33\ = CARRY((\HVAC1|clk_divider:counter[17]~q\ & !\HVAC1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~31\,
	combout => \HVAC1|Add0~32_combout\,
	cout => \HVAC1|Add0~33\);

-- Location: FF_X24_Y15_N11
\HVAC1|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X24_Y15_N12
\HVAC1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~34_combout\ = (\HVAC1|clk_divider:counter[18]~q\ & (!\HVAC1|Add0~33\)) # (!\HVAC1|clk_divider:counter[18]~q\ & ((\HVAC1|Add0~33\) # (GND)))
-- \HVAC1|Add0~35\ = CARRY((!\HVAC1|Add0~33\) # (!\HVAC1|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~33\,
	combout => \HVAC1|Add0~34_combout\,
	cout => \HVAC1|Add0~35\);

-- Location: FF_X24_Y15_N13
\HVAC1|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X24_Y15_N14
\HVAC1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~36_combout\ = (\HVAC1|clk_divider:counter[19]~q\ & (\HVAC1|Add0~35\ $ (GND))) # (!\HVAC1|clk_divider:counter[19]~q\ & (!\HVAC1|Add0~35\ & VCC))
-- \HVAC1|Add0~37\ = CARRY((\HVAC1|clk_divider:counter[19]~q\ & !\HVAC1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~35\,
	combout => \HVAC1|Add0~36_combout\,
	cout => \HVAC1|Add0~37\);

-- Location: FF_X24_Y15_N15
\HVAC1|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X24_Y15_N16
\HVAC1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~38_combout\ = (\HVAC1|clk_divider:counter[20]~q\ & (!\HVAC1|Add0~37\)) # (!\HVAC1|clk_divider:counter[20]~q\ & ((\HVAC1|Add0~37\) # (GND)))
-- \HVAC1|Add0~39\ = CARRY((!\HVAC1|Add0~37\) # (!\HVAC1|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~37\,
	combout => \HVAC1|Add0~38_combout\,
	cout => \HVAC1|Add0~39\);

-- Location: FF_X24_Y15_N17
\HVAC1|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X24_Y15_N18
\HVAC1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~40_combout\ = (\HVAC1|clk_divider:counter[21]~q\ & (\HVAC1|Add0~39\ $ (GND))) # (!\HVAC1|clk_divider:counter[21]~q\ & (!\HVAC1|Add0~39\ & VCC))
-- \HVAC1|Add0~41\ = CARRY((\HVAC1|clk_divider:counter[21]~q\ & !\HVAC1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~39\,
	combout => \HVAC1|Add0~40_combout\,
	cout => \HVAC1|Add0~41\);

-- Location: FF_X24_Y15_N19
\HVAC1|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X24_Y15_N20
\HVAC1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~42_combout\ = (\HVAC1|clk_divider:counter[22]~q\ & (!\HVAC1|Add0~41\)) # (!\HVAC1|clk_divider:counter[22]~q\ & ((\HVAC1|Add0~41\) # (GND)))
-- \HVAC1|Add0~43\ = CARRY((!\HVAC1|Add0~41\) # (!\HVAC1|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \HVAC1|Add0~41\,
	combout => \HVAC1|Add0~42_combout\,
	cout => \HVAC1|Add0~43\);

-- Location: FF_X24_Y15_N21
\HVAC1|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X24_Y15_N22
\HVAC1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|Add0~44_combout\ = \HVAC1|Add0~43\ $ (!\HVAC1|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \HVAC1|clk_divider:counter[23]~q\,
	cin => \HVAC1|Add0~43\,
	combout => \HVAC1|Add0~44_combout\);

-- Location: FF_X24_Y15_N31
\HVAC1|digital_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \HVAC1|Add0~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|digital_counter\(23));

-- Location: CLKCTRL_G6
\HVAC1|digital_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HVAC1|digital_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HVAC1|digital_counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: LCCOMB_X11_Y12_N14
\TWOONEMUX1|Y[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TWOONEMUX1|Y[2]~1_combout\ = (\pb_n[3]~input_o\ & ((\sw[2]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \TWOONEMUX1|Y[2]~1_combout\);

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: LCCOMB_X11_Y12_N8
\TWOONEMUX1|Y[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TWOONEMUX1|Y[3]~0_combout\ = (\pb_n[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \TWOONEMUX1|Y[3]~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
\COMPX41|agb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|agb~0_combout\ = (\TWOONEMUX1|Y[3]~0_combout\ & (((\TWOONEMUX1|Y[2]~1_combout\ & !\HVAC1|cnt\(2))) # (!\HVAC1|cnt\(3)))) # (!\TWOONEMUX1|Y[3]~0_combout\ & (\TWOONEMUX1|Y[2]~1_combout\ & (!\HVAC1|cnt\(3) & !\HVAC1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[2]~1_combout\,
	datab => \TWOONEMUX1|Y[3]~0_combout\,
	datac => \HVAC1|cnt\(3),
	datad => \HVAC1|cnt\(2),
	combout => \COMPX41|agb~0_combout\);

-- Location: LCCOMB_X13_Y12_N14
\HVAC1|cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt~9_combout\ = (\HVAC1|cnt\(1)) # ((\HVAC1|cnt\(2)) # ((\HVAC1|cnt\(3)) # (\HVAC1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(1),
	datab => \HVAC1|cnt\(2),
	datac => \HVAC1|cnt\(3),
	datad => \HVAC1|cnt\(0),
	combout => \HVAC1|cnt~9_combout\);

-- Location: IOIBUF_X0_Y5_N1
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

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: LCCOMB_X11_Y12_N10
\TWOONEMUX1|Y[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TWOONEMUX1|Y[0]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \TWOONEMUX1|Y[0]~3_combout\);

-- Location: IOIBUF_X10_Y19_N15
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

-- Location: IOIBUF_X10_Y22_N15
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

-- Location: LCCOMB_X11_Y12_N28
\TWOONEMUX1|Y[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TWOONEMUX1|Y[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \TWOONEMUX1|Y[1]~2_combout\);

-- Location: LCCOMB_X13_Y12_N0
\COMPX41|agb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|agb~1_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & (((\TWOONEMUX1|Y[0]~3_combout\ & !\HVAC1|cnt\(0))) # (!\HVAC1|cnt\(1)))) # (!\TWOONEMUX1|Y[1]~2_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ & (!\HVAC1|cnt\(1) & !\HVAC1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[0]~3_combout\,
	datab => \TWOONEMUX1|Y[1]~2_combout\,
	datac => \HVAC1|cnt\(1),
	datad => \HVAC1|cnt\(0),
	combout => \COMPX41|agb~1_combout\);

-- Location: LCCOMB_X13_Y12_N4
\HVAC1|cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt~10_combout\ = (!\COMPX41|agb~0_combout\ & (\HVAC1|cnt~9_combout\ & ((!\COMPX41|agb~1_combout\) # (!\COMPX41|agb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMPX41|agb~2_combout\,
	datab => \COMPX41|agb~0_combout\,
	datac => \HVAC1|cnt~9_combout\,
	datad => \COMPX41|agb~1_combout\,
	combout => \HVAC1|cnt~10_combout\);

-- Location: LCCOMB_X12_Y12_N4
\COMPX41|alb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|alb~1_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & (!\TWOONEMUX1|Y[0]~3_combout\ & (\HVAC1|cnt\(0) & \HVAC1|cnt\(1)))) # (!\TWOONEMUX1|Y[1]~2_combout\ & ((\HVAC1|cnt\(1)) # ((!\TWOONEMUX1|Y[0]~3_combout\ & \HVAC1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[0]~3_combout\,
	datab => \TWOONEMUX1|Y[1]~2_combout\,
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(1),
	combout => \COMPX41|alb~1_combout\);

-- Location: LCCOMB_X12_Y12_N18
\COMPX41|alb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|alb~0_combout\ = (\TWOONEMUX1|Y[3]~0_combout\ & (!\TWOONEMUX1|Y[2]~1_combout\ & (\HVAC1|cnt\(3) & \HVAC1|cnt\(2)))) # (!\TWOONEMUX1|Y[3]~0_combout\ & ((\HVAC1|cnt\(3)) # ((!\TWOONEMUX1|Y[2]~1_combout\ & \HVAC1|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[3]~0_combout\,
	datab => \TWOONEMUX1|Y[2]~1_combout\,
	datac => \HVAC1|cnt\(3),
	datad => \HVAC1|cnt\(2),
	combout => \COMPX41|alb~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\COMPX41|alb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|alb~2_combout\ = (\COMPX41|alb~0_combout\) # ((\COMPX41|alb~1_combout\ & \COMPX41|agb~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMPX41|alb~1_combout\,
	datac => \COMPX41|agb~2_combout\,
	datad => \COMPX41|alb~0_combout\,
	combout => \COMPX41|alb~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
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

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: IOIBUF_X9_Y0_N29
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

-- Location: LCCOMB_X13_Y12_N28
\COMPX41|co2|aequalb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|co2|aequalb~0_combout\ = \HVAC1|cnt\(1) $ (((\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \HVAC1|cnt\(1),
	datad => \sw[5]~input_o\,
	combout => \COMPX41|co2|aequalb~0_combout\);

-- Location: LCCOMB_X13_Y12_N18
\ENERGYMONITOR|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENERGYMONITOR|blower~0_combout\ = (\COMPX41|agb~2_combout\ & (!\COMPX41|co2|aequalb~0_combout\ & (\HVAC1|cnt\(0) $ (!\TWOONEMUX1|Y[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(0),
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \COMPX41|agb~2_combout\,
	datad => \COMPX41|co2|aequalb~0_combout\,
	combout => \ENERGYMONITOR|blower~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\ENERGYMONITOR|blower~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENERGYMONITOR|blower~1_combout\ = (\pb_n[0]~input_o\ & (\pb_n[1]~input_o\ & (\pb_n[2]~input_o\ & !\ENERGYMONITOR|blower~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[2]~input_o\,
	datad => \ENERGYMONITOR|blower~0_combout\,
	combout => \ENERGYMONITOR|blower~1_combout\);

-- Location: LCCOMB_X13_Y12_N6
\HVAC1|cnt[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[3]~11_combout\ = (\ENERGYMONITOR|blower~1_combout\ & ((\HVAC1|counter_process~1_combout\) # ((\HVAC1|cnt~10_combout\ & \COMPX41|alb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|counter_process~1_combout\,
	datab => \HVAC1|cnt~10_combout\,
	datac => \COMPX41|alb~2_combout\,
	datad => \ENERGYMONITOR|blower~1_combout\,
	combout => \HVAC1|cnt[3]~11_combout\);

-- Location: LCCOMB_X13_Y12_N10
\HVAC1|cnt[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[0]~14_combout\ = \HVAC1|cnt\(0) $ (\HVAC1|cnt[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt[3]~11_combout\,
	combout => \HVAC1|cnt[0]~14_combout\);

-- Location: FF_X13_Y12_N11
\HVAC1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC1|digital_counter[23]~clkctrl_outclk\,
	d => \HVAC1|cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|cnt\(0));

-- Location: LCCOMB_X13_Y12_N20
\HVAC1|cnt[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[1]~4_cout\ = CARRY(\HVAC1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(0),
	datad => VCC,
	cout => \HVAC1|cnt[1]~4_cout\);

-- Location: LCCOMB_X13_Y12_N22
\HVAC1|cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[1]~5_combout\ = (\HVAC1|counter_process~1_combout\ & ((\HVAC1|cnt\(1) & (!\HVAC1|cnt[1]~4_cout\)) # (!\HVAC1|cnt\(1) & ((\HVAC1|cnt[1]~4_cout\) # (GND))))) # (!\HVAC1|counter_process~1_combout\ & ((\HVAC1|cnt\(1) & (\HVAC1|cnt[1]~4_cout\ & 
-- VCC)) # (!\HVAC1|cnt\(1) & (!\HVAC1|cnt[1]~4_cout\))))
-- \HVAC1|cnt[1]~6\ = CARRY((\HVAC1|counter_process~1_combout\ & ((!\HVAC1|cnt[1]~4_cout\) # (!\HVAC1|cnt\(1)))) # (!\HVAC1|counter_process~1_combout\ & (!\HVAC1|cnt\(1) & !\HVAC1|cnt[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|counter_process~1_combout\,
	datab => \HVAC1|cnt\(1),
	datad => VCC,
	cin => \HVAC1|cnt[1]~4_cout\,
	combout => \HVAC1|cnt[1]~5_combout\,
	cout => \HVAC1|cnt[1]~6\);

-- Location: FF_X13_Y12_N23
\HVAC1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC1|digital_counter[23]~clkctrl_outclk\,
	d => \HVAC1|cnt[1]~5_combout\,
	ena => \HVAC1|cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|cnt\(1));

-- Location: LCCOMB_X13_Y12_N24
\HVAC1|cnt[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[2]~7_combout\ = ((\HVAC1|counter_process~1_combout\ $ (\HVAC1|cnt\(2) $ (\HVAC1|cnt[1]~6\)))) # (GND)
-- \HVAC1|cnt[2]~8\ = CARRY((\HVAC1|counter_process~1_combout\ & (\HVAC1|cnt\(2) & !\HVAC1|cnt[1]~6\)) # (!\HVAC1|counter_process~1_combout\ & ((\HVAC1|cnt\(2)) # (!\HVAC1|cnt[1]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|counter_process~1_combout\,
	datab => \HVAC1|cnt\(2),
	datad => VCC,
	cin => \HVAC1|cnt[1]~6\,
	combout => \HVAC1|cnt[2]~7_combout\,
	cout => \HVAC1|cnt[2]~8\);

-- Location: LCCOMB_X13_Y12_N26
\HVAC1|cnt[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|cnt[3]~12_combout\ = \HVAC1|counter_process~1_combout\ $ (\HVAC1|cnt[2]~8\ $ (!\HVAC1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|counter_process~1_combout\,
	datad => \HVAC1|cnt\(3),
	cin => \HVAC1|cnt[2]~8\,
	combout => \HVAC1|cnt[3]~12_combout\);

-- Location: FF_X13_Y12_N27
\HVAC1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC1|digital_counter[23]~clkctrl_outclk\,
	d => \HVAC1|cnt[3]~12_combout\,
	ena => \HVAC1|cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|cnt\(3));

-- Location: LCCOMB_X13_Y12_N30
\COMPX41|agb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|agb~2_combout\ = (\TWOONEMUX1|Y[2]~1_combout\ & (\HVAC1|cnt\(2) & (\TWOONEMUX1|Y[3]~0_combout\ $ (!\HVAC1|cnt\(3))))) # (!\TWOONEMUX1|Y[2]~1_combout\ & (!\HVAC1|cnt\(2) & (\TWOONEMUX1|Y[3]~0_combout\ $ (!\HVAC1|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[2]~1_combout\,
	datab => \TWOONEMUX1|Y[3]~0_combout\,
	datac => \HVAC1|cnt\(3),
	datad => \HVAC1|cnt\(2),
	combout => \COMPX41|agb~2_combout\);

-- Location: LCCOMB_X13_Y12_N2
\HVAC1|counter_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|counter_process~0_combout\ = (((!\HVAC1|cnt\(2)) # (!\HVAC1|cnt\(1))) # (!\HVAC1|cnt\(0))) # (!\HVAC1|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(3),
	datab => \HVAC1|cnt\(0),
	datac => \HVAC1|cnt\(1),
	datad => \HVAC1|cnt\(2),
	combout => \HVAC1|counter_process~0_combout\);

-- Location: LCCOMB_X13_Y12_N12
\HVAC1|counter_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC1|counter_process~1_combout\ = (\HVAC1|counter_process~0_combout\ & ((\COMPX41|agb~0_combout\) # ((\COMPX41|agb~2_combout\ & \COMPX41|agb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMPX41|agb~2_combout\,
	datab => \COMPX41|agb~1_combout\,
	datac => \COMPX41|agb~0_combout\,
	datad => \HVAC1|counter_process~0_combout\,
	combout => \HVAC1|counter_process~1_combout\);

-- Location: FF_X13_Y12_N25
\HVAC1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC1|digital_counter[23]~clkctrl_outclk\,
	d => \HVAC1|cnt[2]~7_combout\,
	ena => \HVAC1|cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC1|cnt\(2));

-- Location: LCCOMB_X12_Y12_N24
\SEVENSEGMENT2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux5~0_combout\ = (\HVAC1|cnt\(1) & ((\HVAC1|cnt\(0) & ((\HVAC1|cnt\(3)))) # (!\HVAC1|cnt\(0) & (\HVAC1|cnt\(2))))) # (!\HVAC1|cnt\(1) & (\HVAC1|cnt\(2) & (\HVAC1|cnt\(0) $ (\HVAC1|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y16_N20
\SEVENSEGMENT1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux5~0_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & ((\TWOONEMUX1|Y[0]~3_combout\ & (\TWOONEMUX1|Y[3]~0_combout\)) # (!\TWOONEMUX1|Y[0]~3_combout\ & ((\TWOONEMUX1|Y[2]~1_combout\))))) # (!\TWOONEMUX1|Y[1]~2_combout\ & 
-- (\TWOONEMUX1|Y[2]~1_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ $ (\TWOONEMUX1|Y[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y12_N0
\SEVENSEGMENTMUX|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT_TEMP[1]~0_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((!\SEVENSEGMENT1|Mux5~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (!\SEVENSEGMENT2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datac => \SEVENSEGMENT2|Mux5~0_combout\,
	datad => \SEVENSEGMENT1|Mux5~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X12_Y12_N30
\SEVENSEGMENT2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux1~0_combout\ = (\HVAC1|cnt\(2) & ((\HVAC1|cnt\(1) & (\HVAC1|cnt\(0) & !\HVAC1|cnt\(3))) # (!\HVAC1|cnt\(1) & ((\HVAC1|cnt\(3)))))) # (!\HVAC1|cnt\(2) & (!\HVAC1|cnt\(3) & ((\HVAC1|cnt\(1)) # (\HVAC1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y16_N10
\SEVENSEGMENT1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux1~0_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & (!\TWOONEMUX1|Y[3]~0_combout\ & ((\TWOONEMUX1|Y[0]~3_combout\) # (!\TWOONEMUX1|Y[2]~1_combout\)))) # (!\TWOONEMUX1|Y[1]~2_combout\ & ((\TWOONEMUX1|Y[3]~0_combout\ & 
-- ((\TWOONEMUX1|Y[2]~1_combout\))) # (!\TWOONEMUX1|Y[3]~0_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ & !\TWOONEMUX1|Y[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y12_N20
\SEVENSEGMENTMUX|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT_TEMP[5]~1_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((!\SEVENSEGMENT1|Mux1~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (!\SEVENSEGMENT2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENT2|Mux1~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT1|Mux1~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X12_Y12_N2
\SEVENSEGMENT2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux0~0_combout\ = (\HVAC1|cnt\(3)) # ((\HVAC1|cnt\(2) & ((!\HVAC1|cnt\(0)) # (!\HVAC1|cnt\(1)))) # (!\HVAC1|cnt\(2) & (\HVAC1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y16_N4
\SEVENSEGMENT1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux0~0_combout\ = (\TWOONEMUX1|Y[3]~0_combout\) # ((\TWOONEMUX1|Y[1]~2_combout\ & ((!\TWOONEMUX1|Y[2]~1_combout\) # (!\TWOONEMUX1|Y[0]~3_combout\))) # (!\TWOONEMUX1|Y[1]~2_combout\ & ((\TWOONEMUX1|Y[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y13_N28
\SEVENSEGMENTMUX|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT_TEMP[6]~2_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEGMENT1|Mux0~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (\SEVENSEGMENT2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENT2|Mux0~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT1|Mux0~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X14_Y12_N28
\COMPX41|agb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|agb~3_combout\ = (\COMPX41|agb~0_combout\) # ((\COMPX41|agb~2_combout\ & \COMPX41|agb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMPX41|agb~2_combout\,
	datac => \COMPX41|agb~1_combout\,
	datad => \COMPX41|agb~0_combout\,
	combout => \COMPX41|agb~3_combout\);

-- Location: LCCOMB_X12_Y12_N28
\COMPX41|aeb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COMPX41|aeb~0_combout\ = ((\COMPX41|co2|aequalb~0_combout\) # (\HVAC1|cnt\(0) $ (\TWOONEMUX1|Y[0]~3_combout\))) # (!\COMPX41|agb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMPX41|agb~2_combout\,
	datab => \COMPX41|co2|aequalb~0_combout\,
	datac => \HVAC1|cnt\(0),
	datad => \TWOONEMUX1|Y[0]~3_combout\,
	combout => \COMPX41|aeb~0_combout\);

-- Location: LCCOMB_X11_Y12_N4
\TESTER1|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~0_combout\ = (\HVAC1|cnt\(1) & (((!\sw[0]~input_o\ & \HVAC1|cnt\(0))) # (!\sw[1]~input_o\))) # (!\HVAC1|cnt\(1) & (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \HVAC1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC1|cnt\(1),
	datac => \sw[1]~input_o\,
	datad => \HVAC1|cnt\(0),
	combout => \TESTER1|TEST_PASS~0_combout\);

-- Location: LCCOMB_X11_Y12_N18
\TESTER1|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~1_combout\ = (\HVAC1|cnt\(2) & ((\TESTER1|TEST_PASS~0_combout\) # (!\sw[2]~input_o\))) # (!\HVAC1|cnt\(2) & (\TESTER1|TEST_PASS~0_combout\ & !\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|cnt\(2),
	datac => \TESTER1|TEST_PASS~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \TESTER1|TEST_PASS~1_combout\);

-- Location: LCCOMB_X11_Y12_N12
\TESTER1|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~2_combout\ = (\COMPX41|alb~2_combout\ & ((\sw[3]~input_o\ & (\TESTER1|TEST_PASS~1_combout\ & \HVAC1|cnt\(3))) # (!\sw[3]~input_o\ & ((\TESTER1|TEST_PASS~1_combout\) # (\HVAC1|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \TESTER1|TEST_PASS~1_combout\,
	datac => \COMPX41|alb~2_combout\,
	datad => \HVAC1|cnt\(3),
	combout => \TESTER1|TEST_PASS~2_combout\);

-- Location: LCCOMB_X11_Y12_N2
\TESTER1|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~3_combout\ = (\HVAC1|cnt\(1) & (\sw[0]~input_o\ & (\sw[1]~input_o\ & !\HVAC1|cnt\(0)))) # (!\HVAC1|cnt\(1) & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & !\HVAC1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC1|cnt\(1),
	datac => \sw[1]~input_o\,
	datad => \HVAC1|cnt\(0),
	combout => \TESTER1|TEST_PASS~3_combout\);

-- Location: LCCOMB_X12_Y12_N16
\TESTER1|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~4_combout\ = (\HVAC1|cnt\(2) & (\sw[2]~input_o\ & \TESTER1|TEST_PASS~3_combout\)) # (!\HVAC1|cnt\(2) & ((\sw[2]~input_o\) # (\TESTER1|TEST_PASS~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC1|cnt\(2),
	datac => \sw[2]~input_o\,
	datad => \TESTER1|TEST_PASS~3_combout\,
	combout => \TESTER1|TEST_PASS~4_combout\);

-- Location: LCCOMB_X12_Y12_N10
\TESTER1|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~5_combout\ = (\COMPX41|agb~3_combout\ & ((\sw[3]~input_o\ & ((\TESTER1|TEST_PASS~4_combout\) # (!\HVAC1|cnt\(3)))) # (!\sw[3]~input_o\ & (\TESTER1|TEST_PASS~4_combout\ & !\HVAC1|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \TESTER1|TEST_PASS~4_combout\,
	datac => \COMPX41|agb~3_combout\,
	datad => \HVAC1|cnt\(3),
	combout => \TESTER1|TEST_PASS~5_combout\);

-- Location: LCCOMB_X11_Y12_N20
\TESTER1|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~7_combout\ = (\sw[0]~input_o\ & (\HVAC1|cnt\(0) & (\HVAC1|cnt\(1) $ (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (!\HVAC1|cnt\(0) & (\HVAC1|cnt\(1) $ (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC1|cnt\(1),
	datac => \sw[1]~input_o\,
	datad => \HVAC1|cnt\(0),
	combout => \TESTER1|TEST_PASS~7_combout\);

-- Location: LCCOMB_X12_Y12_N8
\TESTER1|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~6_combout\ = (\sw[3]~input_o\ & (\HVAC1|cnt\(3) & (\sw[2]~input_o\ $ (!\HVAC1|cnt\(2))))) # (!\sw[3]~input_o\ & (!\HVAC1|cnt\(3) & (\sw[2]~input_o\ $ (!\HVAC1|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \HVAC1|cnt\(3),
	datac => \sw[2]~input_o\,
	datad => \HVAC1|cnt\(2),
	combout => \TESTER1|TEST_PASS~6_combout\);

-- Location: LCCOMB_X12_Y12_N26
\TESTER1|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~8_combout\ = (\TESTER1|TEST_PASS~5_combout\) # ((\TESTER1|TEST_PASS~7_combout\ & (\TESTER1|TEST_PASS~6_combout\ & !\COMPX41|aeb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TESTER1|TEST_PASS~5_combout\,
	datab => \TESTER1|TEST_PASS~7_combout\,
	datac => \TESTER1|TEST_PASS~6_combout\,
	datad => \COMPX41|aeb~0_combout\,
	combout => \TESTER1|TEST_PASS~8_combout\);

-- Location: LCCOMB_X11_Y12_N30
\TESTER1|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TESTER1|TEST_PASS~9_combout\ = (!\pb_n[2]~input_o\ & ((\TESTER1|TEST_PASS~2_combout\) # (\TESTER1|TEST_PASS~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TESTER1|TEST_PASS~2_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \TESTER1|TEST_PASS~8_combout\,
	combout => \TESTER1|TEST_PASS~9_combout\);

-- Location: LCCOMB_X12_Y12_N12
\SEVENSEGMENT2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux6~0_combout\ = (\HVAC1|cnt\(2) & (!\HVAC1|cnt\(1) & ((\HVAC1|cnt\(3)) # (!\HVAC1|cnt\(0))))) # (!\HVAC1|cnt\(2) & (\HVAC1|cnt\(0) & (\HVAC1|cnt\(1) $ (!\HVAC1|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y16_N28
\SEVENSEGMENT1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux6~0_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ & (\TWOONEMUX1|Y[3]~0_combout\ & !\TWOONEMUX1|Y[2]~1_combout\))) # (!\TWOONEMUX1|Y[1]~2_combout\ & (\TWOONEMUX1|Y[2]~1_combout\ $ (((\TWOONEMUX1|Y[0]~3_combout\ & 
-- !\TWOONEMUX1|Y[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y16_N22
\SEVENSEGMENTMUX|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT[0]~0_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEGMENT1|Mux6~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (\SEVENSEGMENT2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENT2|Mux6~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT1|Mux6~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT[0]~0_combout\);

-- Location: LCCOMB_X15_Y16_N8
\SEVENSEGMENT1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux4~0_combout\ = (\TWOONEMUX1|Y[3]~0_combout\ & (\TWOONEMUX1|Y[2]~1_combout\ & ((\TWOONEMUX1|Y[1]~2_combout\) # (!\TWOONEMUX1|Y[0]~3_combout\)))) # (!\TWOONEMUX1|Y[3]~0_combout\ & (\TWOONEMUX1|Y[1]~2_combout\ & 
-- (!\TWOONEMUX1|Y[0]~3_combout\ & !\TWOONEMUX1|Y[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N22
\SEVENSEGMENT2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux4~0_combout\ = (\HVAC1|cnt\(2) & (\HVAC1|cnt\(3) & ((\HVAC1|cnt\(1)) # (!\HVAC1|cnt\(0))))) # (!\HVAC1|cnt\(2) & (\HVAC1|cnt\(1) & (!\HVAC1|cnt\(0) & !\HVAC1|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y16_N18
\SEVENSEGMENTMUX|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT[2]~2_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (\SEVENSEGMENT1|Mux4~0_combout\)) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEGMENT2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEGMENT1|Mux4~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT2|Mux4~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT[2]~2_combout\);

-- Location: LCCOMB_X12_Y12_N0
\SEVENSEGMENT2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux3~0_combout\ = (\HVAC1|cnt\(1) & ((\HVAC1|cnt\(2) & (\HVAC1|cnt\(0))) # (!\HVAC1|cnt\(2) & (!\HVAC1|cnt\(0) & \HVAC1|cnt\(3))))) # (!\HVAC1|cnt\(1) & (!\HVAC1|cnt\(3) & (\HVAC1|cnt\(2) $ (\HVAC1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y16_N12
\SEVENSEGMENT1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux3~0_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & ((\TWOONEMUX1|Y[0]~3_combout\ & ((\TWOONEMUX1|Y[2]~1_combout\))) # (!\TWOONEMUX1|Y[0]~3_combout\ & (\TWOONEMUX1|Y[3]~0_combout\ & !\TWOONEMUX1|Y[2]~1_combout\)))) # 
-- (!\TWOONEMUX1|Y[1]~2_combout\ & (!\TWOONEMUX1|Y[3]~0_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ $ (\TWOONEMUX1|Y[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y16_N14
\SEVENSEGMENTMUX|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT[3]~3_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEGMENT1|Mux3~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (\SEVENSEGMENT2|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENT2|Mux3~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT1|Mux3~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N14
\SEVENSEGMENT2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT2|Mux2~0_combout\ = (\HVAC1|cnt\(1) & (((\HVAC1|cnt\(0) & !\HVAC1|cnt\(3))))) # (!\HVAC1|cnt\(1) & ((\HVAC1|cnt\(2) & ((!\HVAC1|cnt\(3)))) # (!\HVAC1|cnt\(2) & (\HVAC1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC1|cnt\(2),
	datab => \HVAC1|cnt\(1),
	datac => \HVAC1|cnt\(0),
	datad => \HVAC1|cnt\(3),
	combout => \SEVENSEGMENT2|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y16_N24
\SEVENSEGMENT1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENT1|Mux2~0_combout\ = (\TWOONEMUX1|Y[1]~2_combout\ & (\TWOONEMUX1|Y[0]~3_combout\ & (!\TWOONEMUX1|Y[3]~0_combout\))) # (!\TWOONEMUX1|Y[1]~2_combout\ & ((\TWOONEMUX1|Y[2]~1_combout\ & ((!\TWOONEMUX1|Y[3]~0_combout\))) # 
-- (!\TWOONEMUX1|Y[2]~1_combout\ & (\TWOONEMUX1|Y[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TWOONEMUX1|Y[1]~2_combout\,
	datab => \TWOONEMUX1|Y[0]~3_combout\,
	datac => \TWOONEMUX1|Y[3]~0_combout\,
	datad => \TWOONEMUX1|Y[2]~1_combout\,
	combout => \SEVENSEGMENT1|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y16_N26
\SEVENSEGMENTMUX|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEGMENTMUX|DOUT[4]~4_combout\ = (\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEGMENT1|Mux2~0_combout\))) # (!\SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\ & (\SEVENSEGMENT2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEGMENT2|Mux2~0_combout\,
	datac => \SEVENSEGMENTMUX|clk_proc:COUNT[10]~q\,
	datad => \SEVENSEGMENT1|Mux2~0_combout\,
	combout => \SEVENSEGMENTMUX|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

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
END structure;


