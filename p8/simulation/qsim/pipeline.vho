-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/12/2019 20:58:00"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

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

ENTITY 	pipeline IS
    PORT (
	salida : OUT std_logic_vector(15 DOWNTO 0);
	sw : IN std_logic;
	RESET : IN std_logic;
	RELOJ : IN std_logic
	);
END pipeline;

-- Design Ports Information
-- salida[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[12]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[10]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_salida : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sw : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \salida[15]~output_o\ : std_logic;
SIGNAL \salida[14]~output_o\ : std_logic;
SIGNAL \salida[13]~output_o\ : std_logic;
SIGNAL \salida[12]~output_o\ : std_logic;
SIGNAL \salida[11]~output_o\ : std_logic;
SIGNAL \salida[10]~output_o\ : std_logic;
SIGNAL \salida[9]~output_o\ : std_logic;
SIGNAL \salida[8]~output_o\ : std_logic;
SIGNAL \salida[7]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~8_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~5_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~6_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~4_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~9_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~4_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~8_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~16_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~20_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~21_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~19_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~17_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~15_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~13_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~11_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~7_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~5_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~34_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst3|inst206|selc~combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~31_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~2_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~3_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~29_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~23_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~25_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst206|vf~combout\ : std_logic;
SIGNAL \inst3|inst10|vf~0_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~26_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~27_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~7_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~33_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \sw~input_o\ : std_logic;
SIGNAL \inst4|salida[15]~0_combout\ : std_logic;
SIGNAL \inst4|salida[14]~1_combout\ : std_logic;
SIGNAL \inst4|salida[13]~2_combout\ : std_logic;
SIGNAL \inst4|salida[12]~3_combout\ : std_logic;
SIGNAL \inst4|salida[11]~4_combout\ : std_logic;
SIGNAL \inst4|salida[10]~5_combout\ : std_logic;
SIGNAL \inst4|salida[9]~6_combout\ : std_logic;
SIGNAL \inst4|salida[8]~7_combout\ : std_logic;
SIGNAL \inst4|salida[7]~8_combout\ : std_logic;
SIGNAL \inst4|salida[6]~9_combout\ : std_logic;
SIGNAL \inst4|salida[5]~10_combout\ : std_logic;
SIGNAL \inst4|salida[4]~11_combout\ : std_logic;
SIGNAL \inst4|salida[3]~12_combout\ : std_logic;
SIGNAL \inst4|salida[2]~13_combout\ : std_logic;
SIGNAL \inst4|salida[1]~14_combout\ : std_logic;
SIGNAL \inst4|salida[0]~15_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst8|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst206|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|inst206|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst206|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst206|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

salida <= ww_salida;
ww_sw <= sw;
ww_RESET <= RESET;
ww_RELOJ <= RELOJ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst|opres[16]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~3_combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X26_Y39_N16
\salida[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[15]~0_combout\,
	devoe => ww_devoe,
	o => \salida[15]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\salida[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[14]~1_combout\,
	devoe => ww_devoe,
	o => \salida[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\salida[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[13]~2_combout\,
	devoe => ww_devoe,
	o => \salida[13]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\salida[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[12]~3_combout\,
	devoe => ww_devoe,
	o => \salida[12]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\salida[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[11]~4_combout\,
	devoe => ww_devoe,
	o => \salida[11]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\salida[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[10]~5_combout\,
	devoe => ww_devoe,
	o => \salida[10]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\salida[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[9]~6_combout\,
	devoe => ww_devoe,
	o => \salida[9]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\salida[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[8]~7_combout\,
	devoe => ww_devoe,
	o => \salida[8]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\salida[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[7]~8_combout\,
	devoe => ww_devoe,
	o => \salida[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\salida[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[6]~9_combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\salida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[5]~10_combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\salida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[4]~11_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[3]~12_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[2]~13_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[1]~14_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salida[0]~15_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\RELOJ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G3
\RELOJ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y30_N12
\inst|inst3|SALIDA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[0]~6_combout\ = \inst|inst3|SALIDA\(0) $ (VCC)
-- \inst|inst3|SALIDA[0]~7\ = CARRY(\inst|inst3|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datad => VCC,
	combout => \inst|inst3|SALIDA[0]~6_combout\,
	cout => \inst|inst3|SALIDA[0]~7\);

-- Location: LCCOMB_X22_Y30_N16
\inst|inst3|SALIDA[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[2]~10_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA[1]~9\ $ (GND))) # (!\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA[1]~9\ & VCC))
-- \inst|inst3|SALIDA[2]~11\ = CARRY((\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datad => VCC,
	cin => \inst|inst3|SALIDA[1]~9\,
	combout => \inst|inst3|SALIDA[2]~10_combout\,
	cout => \inst|inst3|SALIDA[2]~11\);

-- Location: LCCOMB_X22_Y30_N18
\inst|inst3|SALIDA[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[3]~12_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA[2]~11\)) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA[2]~11\) # (GND)))
-- \inst|inst3|SALIDA[3]~13\ = CARRY((!\inst|inst3|SALIDA[2]~11\) # (!\inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(3),
	datad => VCC,
	cin => \inst|inst3|SALIDA[2]~11\,
	combout => \inst|inst3|SALIDA[3]~12_combout\,
	cout => \inst|inst3|SALIDA[3]~13\);

-- Location: LCCOMB_X22_Y30_N20
\inst|inst3|SALIDA[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[4]~14_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA[3]~13\ $ (GND))) # (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA[3]~13\ & VCC))
-- \inst|inst3|SALIDA[4]~15\ = CARRY((\inst|inst3|SALIDA\(4) & !\inst|inst3|SALIDA[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(4),
	datad => VCC,
	cin => \inst|inst3|SALIDA[3]~13\,
	combout => \inst|inst3|SALIDA[4]~14_combout\,
	cout => \inst|inst3|SALIDA[4]~15\);

-- Location: LCCOMB_X22_Y30_N6
\inst|inst1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~0_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(1)) # ((!\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y30_N4
\inst|inst1|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~1_combout\ = (!\inst|inst1|Mux13~0_combout\ & (!\inst|inst3|SALIDA\(5) & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux13~0_combout\,
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux13~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X22_Y30_N5
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux13~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X22_Y30_N24
\inst|inst1|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~1_combout\ = (\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux10~1_combout\);

-- Location: FF_X22_Y30_N25
\inst|inst5|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux10~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(21));

-- Location: LCCOMB_X22_Y30_N26
\inst|inst1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~0_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(1)) # (\inst|inst3|SALIDA\(0) $ (\inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y30_N8
\inst|inst1|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~1_combout\ = (!\inst|inst1|Mux9~0_combout\ & (!\inst|inst3|SALIDA\(5) & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux9~0_combout\,
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux9~1_combout\);

-- Location: FF_X22_Y30_N9
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux9~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X21_Y30_N24
\inst3|inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~0_combout\ = (!\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(21) & (!\inst|inst5|valor_interno\(22) & !\inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(18),
	datab => \inst|inst5|valor_interno\(21),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal0~0_combout\);

-- Location: FF_X21_Y30_N31
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|inst1|Mux10~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X21_Y30_N8
\inst3|inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~1_combout\ = (\inst|inst5|valor_interno\(16) & (\inst3|inst206|Equal0~0_combout\ & (\inst|inst5|valor_interno\(17) & \inst|inst5|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst3|inst206|Equal0~0_combout\,
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(20),
	combout => \inst3|inst206|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y29_N14
\inst3|inst206|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~8_combout\ = (!\inst3|inst206|Equal0~1_combout\ & ((\inst3|inst206|Equal4~0_combout\) # ((\inst3|inst206|Equal3~1_combout\) # (!\inst3|inst206|selregr[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|selregr[3]~0_combout\,
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|comb~8_combout\);

-- Location: LCCOMB_X20_Y32_N24
\inst3|inst206|selregr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr\(0) = (!\inst3|inst206|comb~8_combout\ & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~8_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst206|selregr\(0));

-- Location: LCCOMB_X21_Y33_N16
\inst3|inst700666|ACCB|SALIDA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y30_N20
\inst3|inst206|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal1~0_combout\ = (\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(16) & (\inst|inst5|valor_interno\(17) & \inst|inst5|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(16),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(18),
	combout => \inst3|inst206|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y30_N30
\inst3|inst206|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal1~1_combout\ = (\inst3|inst206|Equal1~0_combout\ & (!\inst|inst5|valor_interno\(20) & !\inst|inst5|valor_interno\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~0_combout\,
	datab => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y30_N26
\inst3|inst206|selregr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~1_combout\ = (\inst3|inst206|Equal3~1_combout\) # ((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~1_combout\,
	datab => \inst3|inst206|Equal4~0_combout\,
	datad => \inst3|inst206|Equal1~1_combout\,
	combout => \inst3|inst206|selregr[3]~1_combout\);

-- Location: LCCOMB_X20_Y32_N12
\inst3|inst206|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~5_combout\ = (\inst3|inst206|selregr[3]~1_combout\ & (!\inst3|inst206|Equal0~1_combout\ & ((\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr[3]~1_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|Equal1~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|comb~5_combout\);

-- Location: LCCOMB_X22_Y32_N18
\inst3|inst206|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~6_combout\ = (\inst3|inst206|Equal0~1_combout\) # ((\inst3|inst206|Equal1~1_combout\ & !\inst|inst5|valor_interno\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~1_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|comb~6_combout\);

-- Location: LCCOMB_X20_Y32_N10
\inst3|inst206|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(0) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|comb~6_combout\) # (\inst3|inst206|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~5_combout\,
	datab => \inst3|inst206|comb~6_combout\,
	datad => \inst3|inst206|selregw\(0),
	combout => \inst3|inst206|selregw\(0));

-- Location: FF_X20_Y32_N11
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: LCCOMB_X21_Y33_N4
\inst2|inst107|selregw[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst107|selregw[0]~feeder_combout\ = \inst3|inst10|selregw\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10|selregw\(0),
	combout => \inst2|inst107|selregw[0]~feeder_combout\);

-- Location: FF_X21_Y33_N5
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst107|selregw[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X21_Y30_N16
\inst3|inst206|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~0_combout\ = (\inst3|inst206|Equal1~0_combout\ & (!\inst|inst5|valor_interno\(20) & (\inst|inst5|valor_interno\(22) & !\inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~0_combout\,
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y33_N10
\inst3|inst206|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~4_combout\ = (\inst3|inst206|Equal0~1_combout\ & (((!\inst|inst5|valor_interno\(22))) # (!\inst3|inst206|Equal1~1_combout\))) # (!\inst3|inst206|Equal0~1_combout\ & (\inst3|inst206|selregr[3]~1_combout\ & 
-- ((!\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datab => \inst3|inst206|Equal1~1_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|comb~4_combout\);

-- Location: LCCOMB_X21_Y33_N28
\inst3|inst206|selregw[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(2) = (!\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal2~0_combout\) # (\inst3|inst206|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal2~0_combout\,
	datac => \inst3|inst206|comb~4_combout\,
	datad => \inst3|inst206|selregw\(2),
	combout => \inst3|inst206|selregw\(2));

-- Location: FF_X21_Y33_N29
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|selregw\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: LCCOMB_X21_Y33_N18
\inst2|inst107|selregw[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst107|selregw[2]~feeder_combout\ = \inst3|inst10|selregw\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selregw\(2),
	combout => \inst2|inst107|selregw[2]~feeder_combout\);

-- Location: FF_X21_Y33_N19
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X21_Y33_N0
\inst3|inst700666|inst1000|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal0~0_combout\ = (!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal0~0_combout\);

-- Location: FF_X21_Y33_N17
\inst3|inst700666|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(4));

-- Location: LCCOMB_X22_Y32_N6
\inst3|inst202|OP2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(4) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst3|inst202|OP2\(4));

-- Location: FF_X22_Y32_N7
\inst3|inst8|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(4));

-- Location: LCCOMB_X21_Y30_N0
\inst3|inst206|selop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(0) = (!\inst3|inst206|comb~8_combout\ & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~8_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|selop\(0),
	combout => \inst3|inst206|selop\(0));

-- Location: FF_X22_Y32_N3
\inst3|inst10|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst206|selop\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(0));

-- Location: LCCOMB_X21_Y29_N26
\inst3|inst206|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~9_combout\ = (\inst3|inst206|Equal3~1_combout\) # ((\inst3|inst206|Equal1~0_combout\ & (!\inst|inst5|valor_interno\(20) & !\inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~0_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|comb~9_combout\);

-- Location: LCCOMB_X21_Y29_N0
\inst3|inst206|selop[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(2) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|comb~9_combout\) # (\inst3|inst206|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~7_combout\,
	datac => \inst3|inst206|comb~9_combout\,
	datad => \inst3|inst206|selop\(2),
	combout => \inst3|inst206|selop\(2));

-- Location: FF_X21_Y29_N3
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst3|inst206|selop\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X23_Y32_N4
\inst2|inst|opres[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~24_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(4) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(4)))) # (!\inst3|inst700|SALIDA\(4) & (\inst3|inst8|SALIDA\(4))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(4),
	datab => \inst3|inst8|SALIDA\(4),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[4]~24_combout\);

-- Location: LCCOMB_X22_Y32_N2
\inst2|inst|opres[16]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~3_combout\ = (!\inst3|inst10|selop\(0) & !\inst3|inst10|selop\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[16]~3_combout\);

-- Location: CLKCTRL_G0
\inst2|inst|opres[16]~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|opres[16]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|opres[16]~3clkctrl_outclk\);

-- Location: LCCOMB_X21_Y33_N6
\inst3|inst700666|ACCB|SALIDA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\);

-- Location: FF_X21_Y33_N7
\inst3|inst700666|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(5));

-- Location: LCCOMB_X21_Y33_N30
\inst3|inst202|OP2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(5) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(5),
	combout => \inst3|inst202|OP2\(5));

-- Location: FF_X21_Y32_N7
\inst3|inst8|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(5));

-- Location: FF_X22_Y32_N15
\inst3|inst700666|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(3));

-- Location: LCCOMB_X22_Y32_N14
\inst3|inst202|OP2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(3) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst700666|ACCB|SALIDA\(3) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(3),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(3));

-- Location: FF_X21_Y32_N23
\inst3|inst8|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(3));

-- Location: LCCOMB_X21_Y33_N22
\inst3|inst700666|inst1000|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal0~1_combout\ = (\inst2|inst107|selregw\(0) & !\inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal0~1_combout\);

-- Location: FF_X22_Y33_N29
\inst3|inst700666|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(3));

-- Location: LCCOMB_X22_Y33_N4
\inst3|inst202|OP1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(3) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(3) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(3),
	combout => \inst3|inst202|OP1\(3));

-- Location: FF_X21_Y32_N29
\inst3|inst700|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(3));

-- Location: FF_X22_Y33_N15
\inst3|inst700666|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(2));

-- Location: LCCOMB_X22_Y33_N30
\inst3|inst202|OP1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(2) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(2) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(2),
	combout => \inst3|inst202|OP1\(2));

-- Location: FF_X21_Y32_N25
\inst3|inst700|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(2));

-- Location: LCCOMB_X22_Y30_N10
\inst|inst1|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux30~1_combout\ = (!\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux30~1_combout\);

-- Location: FF_X22_Y30_N11
\inst|inst5|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux30~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(1));

-- Location: LCCOMB_X22_Y33_N22
\inst3|inst700666|ACCB|SALIDA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\);

-- Location: FF_X22_Y33_N23
\inst3|inst700666|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(0));

-- Location: LCCOMB_X21_Y32_N12
\inst3|inst202|OP2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(0) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(0),
	combout => \inst3|inst202|OP2\(0));

-- Location: FF_X21_Y32_N13
\inst3|inst8|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(0));

-- Location: FF_X22_Y33_N13
\inst3|inst700666|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(0));

-- Location: LCCOMB_X22_Y32_N10
\inst3|inst202|OP1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X21_Y32_N3
\inst3|inst700|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(0));

-- Location: LCCOMB_X21_Y29_N6
\inst3|inst206|selfalgs[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(1) = (!\inst3|inst206|comb~8_combout\ & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|comb~8_combout\,
	datad => \inst3|inst206|selfalgs\(1),
	combout => \inst3|inst206|selfalgs\(1));

-- Location: FF_X21_Y29_N11
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst206|selfalgs\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: FF_X20_Y31_N25
\inst3|inst700666|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(15));

-- Location: LCCOMB_X20_Y31_N12
\inst3|inst202|OP1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(15) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(15),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X21_Y31_N7
\inst3|inst700|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(15));

-- Location: LCCOMB_X20_Y33_N26
\inst3|inst202|OP2[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(15),
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X20_Y31_N29
\inst3|inst8|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(15));

-- Location: LCCOMB_X21_Y33_N10
\inst3|inst700666|ACCB|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\);

-- Location: FF_X21_Y33_N11
\inst3|inst700666|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(14));

-- Location: LCCOMB_X22_Y31_N26
\inst3|inst202|OP2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(14),
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X22_Y31_N27
\inst3|inst8|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(14));

-- Location: LCCOMB_X20_Y31_N14
\inst2|inst|opres[14]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~4_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(14) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(14)))) # (!\inst3|inst700|SALIDA\(14) & (\inst3|inst8|SALIDA\(14))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(14),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst8|SALIDA\(14),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[14]~4_combout\);

-- Location: FF_X20_Y31_N5
\inst3|inst700666|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(13));

-- Location: LCCOMB_X20_Y31_N4
\inst3|inst202|OP1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(13) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(13) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(13),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(13));

-- Location: FF_X21_Y31_N9
\inst3|inst700|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(13));

-- Location: LCCOMB_X21_Y33_N8
\inst3|inst700666|ACCB|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\);

-- Location: FF_X21_Y33_N9
\inst3|inst700666|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(12));

-- Location: LCCOMB_X20_Y31_N6
\inst3|inst202|OP2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (\inst3|inst206|selregr\(0) & (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(12),
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X21_Y31_N15
\inst3|inst8|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(12));

-- Location: LCCOMB_X20_Y31_N0
\inst2|inst|opres[12]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~8_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(12) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(12)))) # (!\inst3|inst700|SALIDA\(12) & (\inst3|inst8|SALIDA\(12))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(12),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst8|SALIDA\(12),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[12]~8_combout\);

-- Location: LCCOMB_X22_Y33_N8
\inst3|inst700666|ACCB|SALIDA[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\);

-- Location: FF_X22_Y33_N9
\inst3|inst700666|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(11));

-- Location: LCCOMB_X23_Y31_N22
\inst3|inst202|OP2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(11),
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X23_Y31_N23
\inst3|inst8|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(11));

-- Location: FF_X22_Y31_N15
\inst3|inst700666|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(10));

-- Location: LCCOMB_X23_Y31_N8
\inst3|inst202|OP1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(10) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(10),
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X21_Y31_N19
\inst3|inst700|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(10));

-- Location: FF_X20_Y33_N31
\inst3|inst700666|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(9));

-- Location: LCCOMB_X20_Y33_N6
\inst3|inst202|OP1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(9) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(9),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X20_Y33_N7
\inst3|inst700|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(9));

-- Location: LCCOMB_X21_Y33_N2
\inst3|inst700666|ACCB|SALIDA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\ = \inst2|inst6|SALIDA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(8),
	combout => \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\);

-- Location: FF_X21_Y33_N3
\inst3|inst700666|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(8));

-- Location: LCCOMB_X21_Y31_N20
\inst3|inst202|OP2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(8) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(8) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(8),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(8));

-- Location: FF_X21_Y31_N21
\inst3|inst8|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(8));

-- Location: LCCOMB_X20_Y33_N22
\inst2|inst|opres[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~16_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(8) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(8)))) # (!\inst3|inst700|SALIDA\(8) & (\inst3|inst8|SALIDA\(8))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(8),
	datac => \inst3|inst8|SALIDA\(8),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[8]~16_combout\);

-- Location: LCCOMB_X21_Y33_N20
\inst3|inst700666|ACCB|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\);

-- Location: FF_X21_Y33_N21
\inst3|inst700666|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(7));

-- Location: LCCOMB_X21_Y33_N12
\inst3|inst202|OP2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X21_Y32_N1
\inst3|inst8|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(7));

-- Location: FF_X20_Y32_N15
\inst3|inst700666|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(6));

-- Location: LCCOMB_X20_Y32_N30
\inst3|inst202|OP1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(6) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(6),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X20_Y32_N31
\inst3|inst700|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(6));

-- Location: LCCOMB_X20_Y33_N18
\inst2|inst|opres[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~20_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(6) & ((!\inst3|inst700|SALIDA\(6)) # (!\inst3|inst10|selop\(0)))) # (!\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst10|selop\(0),
	datac => \inst3|inst8|SALIDA\(6),
	datad => \inst3|inst700|SALIDA\(6),
	combout => \inst2|inst|opres[6]~20_combout\);

-- Location: LCCOMB_X21_Y32_N26
\inst2|inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~12_combout\ = ((\inst3|inst8|SALIDA\(5) $ (\inst3|inst700|SALIDA\(5) $ (!\inst2|inst|Add0~11\)))) # (GND)
-- \inst2|inst|Add0~13\ = CARRY((\inst3|inst8|SALIDA\(5) & ((\inst3|inst700|SALIDA\(5)) # (!\inst2|inst|Add0~11\))) # (!\inst3|inst8|SALIDA\(5) & (\inst3|inst700|SALIDA\(5) & !\inst2|inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(5),
	datab => \inst3|inst700|SALIDA\(5),
	datad => VCC,
	cin => \inst2|inst|Add0~11\,
	combout => \inst2|inst|Add0~12_combout\,
	cout => \inst2|inst|Add0~13\);

-- Location: LCCOMB_X21_Y32_N28
\inst2|inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~14_combout\ = (\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6) & (\inst2|inst|Add0~13\ & VCC)) # (!\inst3|inst700|SALIDA\(6) & (!\inst2|inst|Add0~13\)))) # (!\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6) & 
-- (!\inst2|inst|Add0~13\)) # (!\inst3|inst700|SALIDA\(6) & ((\inst2|inst|Add0~13\) # (GND)))))
-- \inst2|inst|Add0~15\ = CARRY((\inst3|inst8|SALIDA\(6) & (!\inst3|inst700|SALIDA\(6) & !\inst2|inst|Add0~13\)) # (!\inst3|inst8|SALIDA\(6) & ((!\inst2|inst|Add0~13\) # (!\inst3|inst700|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(6),
	datab => \inst3|inst700|SALIDA\(6),
	datad => VCC,
	cin => \inst2|inst|Add0~13\,
	combout => \inst2|inst|Add0~14_combout\,
	cout => \inst2|inst|Add0~15\);

-- Location: LCCOMB_X20_Y33_N8
\inst2|inst|opres[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~21_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[6]~20_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[6]~20_combout\ & (\inst2|inst|Add0~14_combout\)) # (!\inst2|inst|opres[6]~20_combout\ & 
-- ((\inst3|inst700|SALIDA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[6]~20_combout\,
	datac => \inst2|inst|Add0~14_combout\,
	datad => \inst3|inst700|SALIDA\(7),
	combout => \inst2|inst|opres[6]~21_combout\);

-- Location: LCCOMB_X20_Y33_N10
\inst2|inst|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(6))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(6),
	datab => \inst2|inst|opres[6]~21_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X20_Y33_N28
\inst2|inst2|datow[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X20_Y33_N29
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: FF_X21_Y32_N17
\inst3|inst700666|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(6));

-- Location: LCCOMB_X20_Y32_N4
\inst3|inst202|OP2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(6) & !\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(6),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X21_Y32_N31
\inst3|inst8|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(6));

-- Location: LCCOMB_X21_Y32_N30
\inst2|inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~16_combout\ = ((\inst3|inst700|SALIDA\(7) $ (\inst3|inst8|SALIDA\(7) $ (!\inst2|inst|Add0~15\)))) # (GND)
-- \inst2|inst|Add0~17\ = CARRY((\inst3|inst700|SALIDA\(7) & ((\inst3|inst8|SALIDA\(7)) # (!\inst2|inst|Add0~15\))) # (!\inst3|inst700|SALIDA\(7) & (\inst3|inst8|SALIDA\(7) & !\inst2|inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(7),
	datab => \inst3|inst8|SALIDA\(7),
	datad => VCC,
	cin => \inst2|inst|Add0~15\,
	combout => \inst2|inst|Add0~16_combout\,
	cout => \inst2|inst|Add0~17\);

-- Location: LCCOMB_X21_Y32_N10
\inst2|inst|opres[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~18_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~16_combout\))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(8),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~16_combout\,
	combout => \inst2|inst|opres[7]~18_combout\);

-- Location: LCCOMB_X21_Y32_N0
\inst2|inst|opres[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~19_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(7) & ((!\inst2|inst|opres[7]~18_combout\) # (!\inst3|inst8|SALIDA\(7)))) # (!\inst3|inst700|SALIDA\(7) & (\inst3|inst8|SALIDA\(7))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(7),
	datac => \inst3|inst8|SALIDA\(7),
	datad => \inst2|inst|opres[7]~18_combout\,
	combout => \inst2|inst|opres[7]~19_combout\);

-- Location: LCCOMB_X21_Y32_N2
\inst2|inst|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(7))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(7),
	datab => \inst2|inst|opres[7]~19_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X20_Y32_N28
\inst2|inst2|datow[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(7) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(7),
	combout => \inst2|inst2|datow\(7));

-- Location: FF_X20_Y32_N29
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: LCCOMB_X20_Y32_N8
\inst3|inst700666|ACCA|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\);

-- Location: FF_X20_Y32_N9
\inst3|inst700666|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(7));

-- Location: LCCOMB_X20_Y32_N16
\inst3|inst202|OP1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(7) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(7),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X20_Y32_N17
\inst3|inst700|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(7));

-- Location: LCCOMB_X21_Y31_N0
\inst2|inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~18_combout\ = (\inst3|inst700|SALIDA\(8) & ((\inst3|inst8|SALIDA\(8) & (\inst2|inst|Add0~17\ & VCC)) # (!\inst3|inst8|SALIDA\(8) & (!\inst2|inst|Add0~17\)))) # (!\inst3|inst700|SALIDA\(8) & ((\inst3|inst8|SALIDA\(8) & 
-- (!\inst2|inst|Add0~17\)) # (!\inst3|inst8|SALIDA\(8) & ((\inst2|inst|Add0~17\) # (GND)))))
-- \inst2|inst|Add0~19\ = CARRY((\inst3|inst700|SALIDA\(8) & (!\inst3|inst8|SALIDA\(8) & !\inst2|inst|Add0~17\)) # (!\inst3|inst700|SALIDA\(8) & ((!\inst2|inst|Add0~17\) # (!\inst3|inst8|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(8),
	datab => \inst3|inst8|SALIDA\(8),
	datad => VCC,
	cin => \inst2|inst|Add0~17\,
	combout => \inst2|inst|Add0~18_combout\,
	cout => \inst2|inst|Add0~19\);

-- Location: LCCOMB_X20_Y33_N24
\inst2|inst|opres[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~17_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[8]~16_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[8]~16_combout\ & (\inst2|inst|Add0~18_combout\)) # (!\inst2|inst|opres[8]~16_combout\ & 
-- ((\inst3|inst700|SALIDA\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[8]~16_combout\,
	datac => \inst2|inst|Add0~18_combout\,
	datad => \inst3|inst700|SALIDA\(9),
	combout => \inst2|inst|opres[8]~17_combout\);

-- Location: LCCOMB_X20_Y33_N12
\inst2|inst|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(8))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[8]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(8),
	datac => \inst2|inst|opres[8]~17_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X20_Y33_N14
\inst2|inst2|datow[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(8) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst2|datow\(8));

-- Location: FF_X20_Y33_N15
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: FF_X20_Y33_N5
\inst3|inst700666|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(8));

-- Location: LCCOMB_X20_Y33_N20
\inst3|inst202|OP1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst700666|ACCA|SALIDA\(8) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst700666|ACCA|SALIDA\(8),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X20_Y33_N21
\inst3|inst700|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(8));

-- Location: LCCOMB_X21_Y31_N2
\inst2|inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~20_combout\ = ((\inst3|inst8|SALIDA\(9) $ (\inst3|inst700|SALIDA\(9) $ (!\inst2|inst|Add0~19\)))) # (GND)
-- \inst2|inst|Add0~21\ = CARRY((\inst3|inst8|SALIDA\(9) & ((\inst3|inst700|SALIDA\(9)) # (!\inst2|inst|Add0~19\))) # (!\inst3|inst8|SALIDA\(9) & (\inst3|inst700|SALIDA\(9) & !\inst2|inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(9),
	datab => \inst3|inst700|SALIDA\(9),
	datad => VCC,
	cin => \inst2|inst|Add0~19\,
	combout => \inst2|inst|Add0~20_combout\,
	cout => \inst2|inst|Add0~21\);

-- Location: LCCOMB_X21_Y31_N18
\inst2|inst|opres[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~14_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~20_combout\)) # (!\inst3|inst10|selop\(0) & ((\inst3|inst700|SALIDA\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~20_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(10),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[9]~14_combout\);

-- Location: LCCOMB_X21_Y31_N30
\inst2|inst|opres[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~15_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(9) & ((!\inst3|inst8|SALIDA\(9)) # (!\inst2|inst|opres[9]~14_combout\))) # (!\inst3|inst700|SALIDA\(9) & ((\inst3|inst8|SALIDA\(9)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(9),
	datac => \inst2|inst|opres[9]~14_combout\,
	datad => \inst3|inst8|SALIDA\(9),
	combout => \inst2|inst|opres[9]~15_combout\);

-- Location: LCCOMB_X21_Y31_N24
\inst2|inst|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(9) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(9)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[9]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[9]~15_combout\,
	datab => \inst2|inst|opres\(9),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(9));

-- Location: LCCOMB_X20_Y31_N10
\inst2|inst2|datow[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X20_Y31_N11
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: FF_X21_Y33_N1
\inst3|inst700666|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(9));

-- Location: LCCOMB_X21_Y33_N26
\inst3|inst202|OP2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(9) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(9),
	combout => \inst3|inst202|OP2\(9));

-- Location: FF_X21_Y33_N27
\inst3|inst8|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(9));

-- Location: LCCOMB_X21_Y31_N4
\inst2|inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~22_combout\ = (\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10) & (\inst2|inst|Add0~21\ & VCC)) # (!\inst3|inst700|SALIDA\(10) & (!\inst2|inst|Add0~21\)))) # (!\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10) & 
-- (!\inst2|inst|Add0~21\)) # (!\inst3|inst700|SALIDA\(10) & ((\inst2|inst|Add0~21\) # (GND)))))
-- \inst2|inst|Add0~23\ = CARRY((\inst3|inst8|SALIDA\(10) & (!\inst3|inst700|SALIDA\(10) & !\inst2|inst|Add0~21\)) # (!\inst3|inst8|SALIDA\(10) & ((!\inst2|inst|Add0~21\) # (!\inst3|inst700|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(10),
	datab => \inst3|inst700|SALIDA\(10),
	datad => VCC,
	cin => \inst2|inst|Add0~21\,
	combout => \inst2|inst|Add0~22_combout\,
	cout => \inst2|inst|Add0~23\);

-- Location: LCCOMB_X22_Y31_N30
\inst2|inst|opres[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~12_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(10) & ((!\inst3|inst8|SALIDA\(10)) # (!\inst3|inst10|selop\(0)))) # (!\inst3|inst700|SALIDA\(10) & ((\inst3|inst8|SALIDA\(10)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(10),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst8|SALIDA\(10),
	combout => \inst2|inst|opres[10]~12_combout\);

-- Location: LCCOMB_X22_Y31_N24
\inst2|inst|opres[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~13_combout\ = (\inst2|inst|opres[10]~12_combout\ & ((\inst2|inst|Add0~22_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[10]~12_combout\ & (((!\inst3|inst10|selop\(2) & \inst3|inst700|SALIDA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~22_combout\,
	datab => \inst2|inst|opres[10]~12_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst700|SALIDA\(11),
	combout => \inst2|inst|opres[10]~13_combout\);

-- Location: LCCOMB_X22_Y31_N2
\inst2|inst|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(10) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(10)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[10]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[10]~13_combout\,
	datac => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(10));

-- Location: LCCOMB_X22_Y31_N22
\inst2|inst2|datow[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(10) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst2|datow\(10));

-- Location: FF_X22_Y31_N23
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: LCCOMB_X21_Y33_N14
\inst3|inst700666|ACCB|SALIDA[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\ = \inst2|inst6|SALIDA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(10),
	combout => \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\);

-- Location: FF_X21_Y33_N15
\inst3|inst700666|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(10));

-- Location: LCCOMB_X22_Y31_N20
\inst3|inst202|OP2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(10) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(10),
	combout => \inst3|inst202|OP2\(10));

-- Location: FF_X21_Y31_N25
\inst3|inst8|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(10));

-- Location: LCCOMB_X21_Y31_N6
\inst2|inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~24_combout\ = ((\inst3|inst700|SALIDA\(11) $ (\inst3|inst8|SALIDA\(11) $ (!\inst2|inst|Add0~23\)))) # (GND)
-- \inst2|inst|Add0~25\ = CARRY((\inst3|inst700|SALIDA\(11) & ((\inst3|inst8|SALIDA\(11)) # (!\inst2|inst|Add0~23\))) # (!\inst3|inst700|SALIDA\(11) & (\inst3|inst8|SALIDA\(11) & !\inst2|inst|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(11),
	datab => \inst3|inst8|SALIDA\(11),
	datad => VCC,
	cin => \inst2|inst|Add0~23\,
	combout => \inst2|inst|Add0~24_combout\,
	cout => \inst2|inst|Add0~25\);

-- Location: LCCOMB_X21_Y31_N26
\inst2|inst|opres[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~10_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~24_combout\)) # (!\inst3|inst10|selop\(0) & ((\inst3|inst700|SALIDA\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~24_combout\,
	datac => \inst3|inst700|SALIDA\(12),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[11]~10_combout\);

-- Location: LCCOMB_X22_Y31_N4
\inst2|inst|opres[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~11_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(11) & ((!\inst2|inst|opres[11]~10_combout\) # (!\inst3|inst8|SALIDA\(11)))) # (!\inst3|inst700|SALIDA\(11) & (\inst3|inst8|SALIDA\(11))))) # (!\inst3|inst10|selop\(2) 
-- & (((\inst2|inst|opres[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(11),
	datab => \inst3|inst8|SALIDA\(11),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[11]~10_combout\,
	combout => \inst2|inst|opres[11]~11_combout\);

-- Location: LCCOMB_X22_Y31_N16
\inst2|inst|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(11) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(11)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[11]~11_combout\,
	datab => \inst2|inst|opres\(11),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(11));

-- Location: LCCOMB_X22_Y31_N8
\inst2|inst2|datow[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(11) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(11),
	combout => \inst2|inst2|datow\(11));

-- Location: FF_X22_Y31_N9
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: FF_X22_Y31_N19
\inst3|inst700666|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(11));

-- Location: LCCOMB_X22_Y31_N12
\inst3|inst202|OP1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(11) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(11) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(11),
	combout => \inst3|inst202|OP1\(11));

-- Location: FF_X21_Y31_N13
\inst3|inst700|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(11));

-- Location: LCCOMB_X21_Y31_N8
\inst2|inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst3|inst700|SALIDA\(12) & ((\inst3|inst8|SALIDA\(12) & (\inst2|inst|Add0~25\ & VCC)) # (!\inst3|inst8|SALIDA\(12) & (!\inst2|inst|Add0~25\)))) # (!\inst3|inst700|SALIDA\(12) & ((\inst3|inst8|SALIDA\(12) & 
-- (!\inst2|inst|Add0~25\)) # (!\inst3|inst8|SALIDA\(12) & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst3|inst700|SALIDA\(12) & (!\inst3|inst8|SALIDA\(12) & !\inst2|inst|Add0~25\)) # (!\inst3|inst700|SALIDA\(12) & ((!\inst2|inst|Add0~25\) # (!\inst3|inst8|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(12),
	datab => \inst3|inst8|SALIDA\(12),
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X20_Y31_N30
\inst2|inst|opres[12]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~9_combout\ = (\inst2|inst|opres[12]~8_combout\ & (((\inst2|inst|Add0~26_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[12]~8_combout\ & (\inst3|inst700|SALIDA\(13) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(13),
	datab => \inst2|inst|opres[12]~8_combout\,
	datac => \inst2|inst|Add0~26_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[12]~9_combout\);

-- Location: LCCOMB_X20_Y31_N18
\inst2|inst|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(12) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(12))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[12]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(12),
	datac => \inst2|inst|opres[12]~9_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(12));

-- Location: LCCOMB_X20_Y31_N8
\inst2|inst2|datow[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(12) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst2|datow\(12));

-- Location: FF_X20_Y31_N9
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: FF_X20_Y31_N17
\inst3|inst700666|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(12));

-- Location: LCCOMB_X20_Y31_N16
\inst3|inst202|OP1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(12) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(12),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X21_Y31_N27
\inst3|inst700|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(12));

-- Location: LCCOMB_X21_Y31_N10
\inst2|inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~28_combout\ = ((\inst3|inst8|SALIDA\(13) $ (\inst3|inst700|SALIDA\(13) $ (!\inst2|inst|Add0~27\)))) # (GND)
-- \inst2|inst|Add0~29\ = CARRY((\inst3|inst8|SALIDA\(13) & ((\inst3|inst700|SALIDA\(13)) # (!\inst2|inst|Add0~27\))) # (!\inst3|inst8|SALIDA\(13) & (\inst3|inst700|SALIDA\(13) & !\inst2|inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(13),
	datab => \inst3|inst700|SALIDA\(13),
	datad => VCC,
	cin => \inst2|inst|Add0~27\,
	combout => \inst2|inst|Add0~28_combout\,
	cout => \inst2|inst|Add0~29\);

-- Location: LCCOMB_X21_Y31_N22
\inst2|inst|opres[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~6_combout\ = (\inst3|inst10|selop\(0) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~28_combout\)))) # (!\inst3|inst10|selop\(0) & (!\inst3|inst10|selop\(2) & (\inst3|inst700|SALIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(14),
	datad => \inst2|inst|Add0~28_combout\,
	combout => \inst2|inst|opres[13]~6_combout\);

-- Location: LCCOMB_X21_Y31_N28
\inst2|inst|opres[13]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~7_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(13) & ((!\inst3|inst8|SALIDA\(13)) # (!\inst2|inst|opres[13]~6_combout\))) # (!\inst3|inst700|SALIDA\(13) & ((\inst3|inst8|SALIDA\(13)))))) # (!\inst3|inst10|selop\(2) 
-- & (\inst2|inst|opres[13]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[13]~6_combout\,
	datab => \inst3|inst700|SALIDA\(13),
	datac => \inst3|inst8|SALIDA\(13),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[13]~7_combout\);

-- Location: LCCOMB_X22_Y31_N6
\inst2|inst|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(13))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[13]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(13),
	datac => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres[13]~7_combout\,
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X22_Y31_N0
\inst2|inst2|datow[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(13) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(13),
	combout => \inst2|inst2|datow\(13));

-- Location: FF_X22_Y31_N1
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: LCCOMB_X23_Y31_N28
\inst3|inst700666|ACCB|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\);

-- Location: FF_X23_Y31_N29
\inst3|inst700666|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(13));

-- Location: LCCOMB_X22_Y31_N10
\inst3|inst202|OP2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(13),
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X21_Y31_N29
\inst3|inst8|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(13));

-- Location: LCCOMB_X21_Y31_N12
\inst2|inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~30_combout\ = (\inst3|inst700|SALIDA\(14) & ((\inst3|inst8|SALIDA\(14) & (\inst2|inst|Add0~29\ & VCC)) # (!\inst3|inst8|SALIDA\(14) & (!\inst2|inst|Add0~29\)))) # (!\inst3|inst700|SALIDA\(14) & ((\inst3|inst8|SALIDA\(14) & 
-- (!\inst2|inst|Add0~29\)) # (!\inst3|inst8|SALIDA\(14) & ((\inst2|inst|Add0~29\) # (GND)))))
-- \inst2|inst|Add0~31\ = CARRY((\inst3|inst700|SALIDA\(14) & (!\inst3|inst8|SALIDA\(14) & !\inst2|inst|Add0~29\)) # (!\inst3|inst700|SALIDA\(14) & ((!\inst2|inst|Add0~29\) # (!\inst3|inst8|SALIDA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(14),
	datab => \inst3|inst8|SALIDA\(14),
	datad => VCC,
	cin => \inst2|inst|Add0~29\,
	combout => \inst2|inst|Add0~30_combout\,
	cout => \inst2|inst|Add0~31\);

-- Location: LCCOMB_X20_Y31_N26
\inst2|inst|opres[14]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~5_combout\ = (\inst2|inst|opres[14]~4_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~30_combout\)))) # (!\inst2|inst|opres[14]~4_combout\ & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~4_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~30_combout\,
	datad => \inst3|inst700|SALIDA\(15),
	combout => \inst2|inst|opres[14]~5_combout\);

-- Location: LCCOMB_X20_Y31_N24
\inst2|inst|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(14))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[14]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(14),
	datab => \inst2|inst|opres[14]~5_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X20_Y31_N22
\inst2|inst2|datow[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X20_Y31_N23
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: FF_X20_Y31_N3
\inst3|inst700666|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(14));

-- Location: LCCOMB_X20_Y31_N20
\inst3|inst202|OP1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(14) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(14),
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X21_Y31_N23
\inst3|inst700|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(14));

-- Location: LCCOMB_X21_Y31_N14
\inst2|inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~32_combout\ = ((\inst3|inst700|SALIDA\(15) $ (\inst3|inst8|SALIDA\(15) $ (!\inst2|inst|Add0~31\)))) # (GND)
-- \inst2|inst|Add0~33\ = CARRY((\inst3|inst700|SALIDA\(15) & ((\inst3|inst8|SALIDA\(15)) # (!\inst2|inst|Add0~31\))) # (!\inst3|inst700|SALIDA\(15) & (\inst3|inst8|SALIDA\(15) & !\inst2|inst|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(15),
	datab => \inst3|inst8|SALIDA\(15),
	datad => VCC,
	cin => \inst2|inst|Add0~31\,
	combout => \inst2|inst|Add0~32_combout\,
	cout => \inst2|inst|Add0~33\);

-- Location: LCCOMB_X21_Y31_N16
\inst2|inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~34_combout\ = \inst2|inst|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst|Add0~33\,
	combout => \inst2|inst|Add0~34_combout\);

-- Location: LCCOMB_X21_Y29_N30
\inst2|inst|opres[16]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~34_combout\ = (!\inst3|inst10|selop\(2) & (\inst2|inst|Add0~34_combout\ & \inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~34_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[16]~34_combout\);

-- Location: LCCOMB_X21_Y29_N24
\inst2|inst|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(16)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[16]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[16]~34_combout\,
	datac => \inst2|inst|opres\(16),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X21_Y29_N10
\inst2|inst3|ci\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|opres\(16)))) # (!\inst3|inst10|selfalgs\(1) & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datab => \RESET~input_o\,
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X22_Y32_N20
\inst3|inst206|selc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selc~combout\ = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|selc~combout\) # (!\inst3|inst206|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~3_combout\,
	datac => \inst3|inst206|comb~2_combout\,
	datad => \inst3|inst206|selc~combout\,
	combout => \inst3|inst206|selc~combout\);

-- Location: FF_X21_Y32_N9
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst206|selc~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X21_Y32_N14
\inst2|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~1_cout\ = CARRY((\inst2|inst3|ci~combout\ & !\inst3|inst10|selc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datab => \inst3|inst10|selc~q\,
	datad => VCC,
	cout => \inst2|inst|Add0~1_cout\);

-- Location: LCCOMB_X21_Y32_N16
\inst2|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~2_combout\ = (\inst3|inst8|SALIDA\(0) & ((\inst3|inst700|SALIDA\(0) & (\inst2|inst|Add0~1_cout\ & VCC)) # (!\inst3|inst700|SALIDA\(0) & (!\inst2|inst|Add0~1_cout\)))) # (!\inst3|inst8|SALIDA\(0) & ((\inst3|inst700|SALIDA\(0) & 
-- (!\inst2|inst|Add0~1_cout\)) # (!\inst3|inst700|SALIDA\(0) & ((\inst2|inst|Add0~1_cout\) # (GND)))))
-- \inst2|inst|Add0~3\ = CARRY((\inst3|inst8|SALIDA\(0) & (!\inst3|inst700|SALIDA\(0) & !\inst2|inst|Add0~1_cout\)) # (!\inst3|inst8|SALIDA\(0) & ((!\inst2|inst|Add0~1_cout\) # (!\inst3|inst700|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(0),
	datab => \inst3|inst700|SALIDA\(0),
	datad => VCC,
	cin => \inst2|inst|Add0~1_cout\,
	combout => \inst2|inst|Add0~2_combout\,
	cout => \inst2|inst|Add0~3\);

-- Location: LCCOMB_X21_Y32_N18
\inst2|inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~4_combout\ = ((\inst3|inst700|SALIDA\(1) $ (\inst3|inst8|SALIDA\(1) $ (!\inst2|inst|Add0~3\)))) # (GND)
-- \inst2|inst|Add0~5\ = CARRY((\inst3|inst700|SALIDA\(1) & ((\inst3|inst8|SALIDA\(1)) # (!\inst2|inst|Add0~3\))) # (!\inst3|inst700|SALIDA\(1) & (\inst3|inst8|SALIDA\(1) & !\inst2|inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(1),
	datab => \inst3|inst8|SALIDA\(1),
	datad => VCC,
	cin => \inst2|inst|Add0~3\,
	combout => \inst2|inst|Add0~4_combout\,
	cout => \inst2|inst|Add0~5\);

-- Location: LCCOMB_X23_Y32_N28
\inst2|inst|opres[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~30_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~4_combout\))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(2),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~4_combout\,
	combout => \inst2|inst|opres[1]~30_combout\);

-- Location: LCCOMB_X23_Y32_N14
\inst2|inst|opres[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~31_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(1) & ((!\inst3|inst8|SALIDA\(1)) # (!\inst2|inst|opres[1]~30_combout\))) # (!\inst3|inst700|SALIDA\(1) & ((\inst3|inst8|SALIDA\(1)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(1),
	datab => \inst2|inst|opres[1]~30_combout\,
	datac => \inst3|inst8|SALIDA\(1),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[1]~31_combout\);

-- Location: LCCOMB_X23_Y32_N6
\inst2|inst|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(1) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(1)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[1]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[1]~31_combout\,
	datac => \inst2|inst|opres\(1),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(1));

-- Location: LCCOMB_X23_Y32_N26
\inst2|inst2|datow[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(1) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(1),
	combout => \inst2|inst2|datow\(1));

-- Location: FF_X23_Y32_N27
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: FF_X22_Y32_N19
\inst3|inst700666|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(1));

-- Location: LCCOMB_X22_Y32_N28
\inst3|inst202|OP2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~2_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(1))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst700666|ACCB|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst|inst5|valor_interno\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst3|inst202|OP2[1]~2_combout\);

-- Location: LCCOMB_X20_Y32_N6
\inst3|inst202|OP2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~3_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[1]~2_combout\,
	combout => \inst3|inst202|OP2[1]~3_combout\);

-- Location: FF_X21_Y32_N15
\inst3|inst8|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2[1]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(1));

-- Location: LCCOMB_X21_Y32_N20
\inst2|inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~6_combout\ = (\inst3|inst8|SALIDA\(2) & ((\inst3|inst700|SALIDA\(2) & (\inst2|inst|Add0~5\ & VCC)) # (!\inst3|inst700|SALIDA\(2) & (!\inst2|inst|Add0~5\)))) # (!\inst3|inst8|SALIDA\(2) & ((\inst3|inst700|SALIDA\(2) & 
-- (!\inst2|inst|Add0~5\)) # (!\inst3|inst700|SALIDA\(2) & ((\inst2|inst|Add0~5\) # (GND)))))
-- \inst2|inst|Add0~7\ = CARRY((\inst3|inst8|SALIDA\(2) & (!\inst3|inst700|SALIDA\(2) & !\inst2|inst|Add0~5\)) # (!\inst3|inst8|SALIDA\(2) & ((!\inst2|inst|Add0~5\) # (!\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(2),
	datab => \inst3|inst700|SALIDA\(2),
	datad => VCC,
	cin => \inst2|inst|Add0~5\,
	combout => \inst2|inst|Add0~6_combout\,
	cout => \inst2|inst|Add0~7\);

-- Location: LCCOMB_X23_Y32_N0
\inst2|inst|opres[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~28_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(2) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(2)))) # (!\inst3|inst700|SALIDA\(2) & (\inst3|inst8|SALIDA\(2))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(2),
	datab => \inst3|inst8|SALIDA\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[2]~28_combout\);

-- Location: LCCOMB_X23_Y32_N18
\inst2|inst|opres[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~29_combout\ = (\inst2|inst|opres[2]~28_combout\ & (((\inst2|inst|Add0~6_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[2]~28_combout\ & (\inst3|inst700|SALIDA\(3) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(3),
	datab => \inst2|inst|Add0~6_combout\,
	datac => \inst2|inst|opres[2]~28_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[2]~29_combout\);

-- Location: LCCOMB_X23_Y32_N20
\inst2|inst|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(2)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[2]~29_combout\,
	datab => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X23_Y32_N16
\inst2|inst2|datow[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(2) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(2),
	combout => \inst2|inst2|datow\(2));

-- Location: FF_X23_Y32_N17
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: FF_X22_Y32_N1
\inst3|inst700666|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(2));

-- Location: LCCOMB_X22_Y32_N0
\inst3|inst202|OP2[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~0_combout\ = (\inst3|inst206|selsrc\(1) & (\inst|inst5|valor_interno\(21))) # (!\inst3|inst206|selsrc\(1) & (((\inst3|inst700666|ACCB|SALIDA\(2) & \inst3|inst206|selregr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(21),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(2),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2[2]~0_combout\);

-- Location: LCCOMB_X22_Y32_N30
\inst3|inst202|OP2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~1_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[2]~0_combout\,
	combout => \inst3|inst202|OP2[2]~1_combout\);

-- Location: FF_X22_Y32_N31
\inst3|inst8|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2[2]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(2));

-- Location: LCCOMB_X21_Y32_N22
\inst2|inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~8_combout\ = ((\inst3|inst8|SALIDA\(3) $ (\inst3|inst700|SALIDA\(3) $ (!\inst2|inst|Add0~7\)))) # (GND)
-- \inst2|inst|Add0~9\ = CARRY((\inst3|inst8|SALIDA\(3) & ((\inst3|inst700|SALIDA\(3)) # (!\inst2|inst|Add0~7\))) # (!\inst3|inst8|SALIDA\(3) & (\inst3|inst700|SALIDA\(3) & !\inst2|inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(3),
	datab => \inst3|inst700|SALIDA\(3),
	datad => VCC,
	cin => \inst2|inst|Add0~7\,
	combout => \inst2|inst|Add0~8_combout\,
	cout => \inst2|inst|Add0~9\);

-- Location: LCCOMB_X21_Y32_N24
\inst2|inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~10_combout\ = (\inst3|inst8|SALIDA\(4) & ((\inst3|inst700|SALIDA\(4) & (\inst2|inst|Add0~9\ & VCC)) # (!\inst3|inst700|SALIDA\(4) & (!\inst2|inst|Add0~9\)))) # (!\inst3|inst8|SALIDA\(4) & ((\inst3|inst700|SALIDA\(4) & 
-- (!\inst2|inst|Add0~9\)) # (!\inst3|inst700|SALIDA\(4) & ((\inst2|inst|Add0~9\) # (GND)))))
-- \inst2|inst|Add0~11\ = CARRY((\inst3|inst8|SALIDA\(4) & (!\inst3|inst700|SALIDA\(4) & !\inst2|inst|Add0~9\)) # (!\inst3|inst8|SALIDA\(4) & ((!\inst2|inst|Add0~9\) # (!\inst3|inst700|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(4),
	datab => \inst3|inst700|SALIDA\(4),
	datad => VCC,
	cin => \inst2|inst|Add0~9\,
	combout => \inst2|inst|Add0~10_combout\,
	cout => \inst2|inst|Add0~11\);

-- Location: LCCOMB_X21_Y32_N4
\inst2|inst|opres[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~22_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~12_combout\)) # (!\inst3|inst10|selop\(0) & ((\inst3|inst700|SALIDA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~12_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst700|SALIDA\(6),
	combout => \inst2|inst|opres[5]~22_combout\);

-- Location: LCCOMB_X21_Y32_N6
\inst2|inst|opres[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~23_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(5) & ((!\inst3|inst700|SALIDA\(5)) # (!\inst2|inst|opres[5]~22_combout\))) # (!\inst3|inst8|SALIDA\(5) & ((\inst3|inst700|SALIDA\(5)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst2|inst|opres[5]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[5]~22_combout\,
	datac => \inst3|inst8|SALIDA\(5),
	datad => \inst3|inst700|SALIDA\(5),
	combout => \inst2|inst|opres[5]~23_combout\);

-- Location: LCCOMB_X21_Y32_N8
\inst2|inst|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(5))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[5]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(5),
	datab => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres[5]~23_combout\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X22_Y32_N26
\inst2|inst2|datow[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(5) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst2|datow\(5));

-- Location: FF_X22_Y32_N27
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: FF_X22_Y33_N17
\inst3|inst700666|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(5));

-- Location: LCCOMB_X22_Y32_N22
\inst3|inst202|OP1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(5) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(5),
	combout => \inst3|inst202|OP1\(5));

-- Location: FF_X22_Y32_N23
\inst3|inst700|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(5));

-- Location: LCCOMB_X23_Y32_N22
\inst2|inst|opres[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~25_combout\ = (\inst2|inst|opres[4]~24_combout\ & (((\inst2|inst|Add0~10_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[4]~24_combout\ & (\inst3|inst700|SALIDA\(5) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[4]~24_combout\,
	datab => \inst3|inst700|SALIDA\(5),
	datac => \inst2|inst|Add0~10_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[4]~25_combout\);

-- Location: LCCOMB_X23_Y32_N24
\inst2|inst|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(4))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(4),
	datac => \inst2|inst|opres[4]~25_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X23_Y32_N8
\inst2|inst2|datow[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(4) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(4),
	combout => \inst2|inst2|datow\(4));

-- Location: FF_X23_Y32_N9
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: LCCOMB_X21_Y30_N22
\inst3|inst206|selregr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~2_combout\ = (\inst3|inst206|Equal1~1_combout\) # ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal1~1_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal4~0_combout\,
	combout => \inst3|inst206|selregr[3]~2_combout\);

-- Location: LCCOMB_X21_Y30_N18
\inst3|inst206|vf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|vf~combout\ = (!\inst3|inst206|Equal3~1_combout\ & ((\inst3|inst206|selregr[3]~2_combout\) # (\inst3|inst206|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|selregr[3]~2_combout\,
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst206|vf~combout\);

-- Location: LCCOMB_X21_Y30_N4
\inst3|inst10|vf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|vf~0_combout\ = !\inst3|inst206|vf~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst10|vf~0_combout\);

-- Location: FF_X21_Y30_N5
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst10|vf~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X21_Y30_N14
\inst2|inst100|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst100|valor_interno~feeder_combout\ = \inst3|inst10|vf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|vf~q\,
	combout => \inst2|inst100|valor_interno~feeder_combout\);

-- Location: FF_X21_Y30_N15
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X22_Y30_N21
\inst|inst3|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[4]~14_combout\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X22_Y30_N22
\inst|inst3|SALIDA[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[5]~16_combout\ = \inst|inst3|SALIDA\(5) $ (\inst|inst3|SALIDA[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	cin => \inst|inst3|SALIDA[4]~15\,
	combout => \inst|inst3|SALIDA[5]~16_combout\);

-- Location: FF_X22_Y30_N23
\inst|inst3|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[5]~16_combout\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X22_Y30_N0
\inst|inst1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~0_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(1) & !\inst|inst3|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y30_N2
\inst|inst1|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux30~0_combout\ = (!\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux30~0_combout\);

-- Location: FF_X22_Y30_N3
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux30~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X21_Y30_N12
\inst3|inst206|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~0_combout\ = (!\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(16) & (\inst|inst5|valor_interno\(17) & \inst|inst5|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(16),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(18),
	combout => \inst3|inst206|Equal3~0_combout\);

-- Location: LCCOMB_X21_Y30_N10
\inst3|inst206|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~1_combout\ = (\inst3|inst206|Equal3~0_combout\ & (\inst|inst5|valor_interno\(20) & (\inst|inst5|valor_interno\(22) & \inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~0_combout\,
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y29_N22
\inst3|inst206|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~2_combout\ = (\inst3|inst206|Equal4~0_combout\ & (!\inst3|inst206|Equal3~1_combout\ & (\inst3|inst206|selregr[3]~0_combout\ & !\inst3|inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|selregr[3]~0_combout\,
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|comb~2_combout\);

-- Location: LCCOMB_X20_Y32_N18
\inst3|inst206|selsrc[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(0) = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|selsrc\(0)) # (!\inst3|inst206|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~3_combout\,
	datac => \inst3|inst206|comb~2_combout\,
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst206|selsrc\(0));

-- Location: FF_X22_Y33_N19
\inst3|inst700666|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(4));

-- Location: LCCOMB_X22_Y33_N26
\inst3|inst202|OP1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(4) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(4),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X21_Y32_N21
\inst3|inst700|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(4));

-- Location: LCCOMB_X23_Y32_N12
\inst2|inst|opres[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~26_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(3) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(3)))) # (!\inst3|inst700|SALIDA\(3) & (\inst3|inst8|SALIDA\(3))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(3),
	datab => \inst3|inst8|SALIDA\(3),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[3]~26_combout\);

-- Location: LCCOMB_X23_Y32_N10
\inst2|inst|opres[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~27_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[3]~26_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[3]~26_combout\ & ((\inst2|inst|Add0~8_combout\))) # (!\inst2|inst|opres[3]~26_combout\ & 
-- (\inst3|inst700|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(4),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[3]~26_combout\,
	datad => \inst2|inst|Add0~8_combout\,
	combout => \inst2|inst|opres[3]~27_combout\);

-- Location: LCCOMB_X23_Y32_N2
\inst2|inst|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(3) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(3)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[3]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[3]~27_combout\,
	datac => \inst2|inst|opres\(3),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(3));

-- Location: LCCOMB_X23_Y32_N30
\inst2|inst2|datow[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(3) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(3),
	combout => \inst2|inst2|datow\(3));

-- Location: FF_X23_Y32_N31
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: FF_X22_Y30_N19
\inst|inst3|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[3]~12_combout\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X22_Y30_N28
\inst|inst1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~0_combout\ = (\inst|inst3|SALIDA\(1) & (((!\inst|inst3|SALIDA\(3))))) # (!\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y30_N30
\inst|inst1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~1_combout\ = (\inst|inst1|Mux15~0_combout\ & (!\inst|inst3|SALIDA\(5) & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|Mux15~0_combout\,
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux15~1_combout\);

-- Location: FF_X22_Y30_N31
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux15~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X21_Y30_N2
\inst3|inst206|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal4~0_combout\ = (\inst|inst5|valor_interno\(16) & (\inst3|inst206|Equal0~0_combout\ & (!\inst|inst5|valor_interno\(17) & !\inst|inst5|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst3|inst206|Equal0~0_combout\,
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(20),
	combout => \inst3|inst206|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y29_N8
\inst3|inst206|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~7_combout\ = (!\inst3|inst206|Equal3~1_combout\ & (\inst3|inst206|selregr[3]~0_combout\ & ((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|selregr[3]~0_combout\,
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|comb~7_combout\);

-- Location: LCCOMB_X21_Y29_N12
\inst3|inst206|selsrc[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(1) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|comb~9_combout\) # (\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~7_combout\,
	datac => \inst3|inst206|comb~9_combout\,
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst206|selsrc\(1));

-- Location: FF_X22_Y33_N21
\inst3|inst700666|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(1));

-- Location: LCCOMB_X22_Y33_N24
\inst3|inst202|OP1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(1) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(1),
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X21_Y32_N27
\inst3|inst700|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(1));

-- Location: LCCOMB_X22_Y32_N8
\inst2|inst|opres[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~32_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(0) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(0)))) # (!\inst3|inst8|SALIDA\(0) & (\inst3|inst700|SALIDA\(0))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(0),
	datab => \inst3|inst700|SALIDA\(0),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[0]~32_combout\);

-- Location: LCCOMB_X22_Y32_N12
\inst2|inst|opres[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~33_combout\ = (\inst2|inst|opres[0]~32_combout\ & (((\inst2|inst|Add0~2_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[0]~32_combout\ & (\inst3|inst700|SALIDA\(1) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(1),
	datab => \inst2|inst|Add0~2_combout\,
	datac => \inst2|inst|opres[0]~32_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[0]~33_combout\);

-- Location: LCCOMB_X22_Y32_N24
\inst2|inst|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(0)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[0]~33_combout\,
	datac => \inst2|inst|opres\(0),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X22_Y32_N4
\inst2|inst2|datow[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X22_Y32_N5
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X22_Y30_N13
\inst|inst3|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[0]~6_combout\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: LCCOMB_X22_Y30_N14
\inst|inst3|SALIDA[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[1]~8_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA[0]~7\)) # (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA[0]~7\) # (GND)))
-- \inst|inst3|SALIDA[1]~9\ = CARRY((!\inst|inst3|SALIDA[0]~7\) # (!\inst|inst3|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(1),
	datad => VCC,
	cin => \inst|inst3|SALIDA[0]~7\,
	combout => \inst|inst3|SALIDA[1]~8_combout\,
	cout => \inst|inst3|SALIDA[1]~9\);

-- Location: FF_X22_Y30_N15
\inst|inst3|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[1]~8_combout\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: FF_X22_Y30_N17
\inst|inst3|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[2]~10_combout\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: LCCOMB_X21_Y30_N28
\inst|inst1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~2_combout\ = (\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux10~2_combout\);

-- Location: FF_X21_Y30_N29
\inst|inst5|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux10~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(20));

-- Location: LCCOMB_X21_Y30_N6
\inst3|inst206|selregr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~0_combout\ = (\inst|inst5|valor_interno\(20)) # ((\inst|inst5|valor_interno\(21)) # (!\inst3|inst206|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst3|inst206|Equal1~0_combout\,
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|selregr[3]~0_combout\);

-- Location: LCCOMB_X21_Y29_N2
\inst3|inst206|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~3_combout\ = (\inst3|inst206|selregr[3]~0_combout\ & (!\inst3|inst206|Equal3~1_combout\ & !\inst3|inst206|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr[3]~0_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|comb~3_combout\);

-- Location: LCCOMB_X22_Y32_N16
\inst3|inst206|selresult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selresult\(0) = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|selresult\(0)) # (!\inst3|inst206|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~3_combout\,
	datac => \inst3|inst206|comb~2_combout\,
	datad => \inst3|inst206|selresult\(0),
	combout => \inst3|inst206|selresult\(0));

-- Location: FF_X22_Y32_N17
\inst3|inst10|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|selresult\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selresult\(0));

-- Location: LCCOMB_X21_Y29_N28
\inst2|inst|opres[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~0_combout\ = (\inst3|inst10|selop\(2) & (((!\inst3|inst700|SALIDA\(15))))) # (!\inst3|inst10|selop\(2) & (!\inst3|inst10|selc~q\ & (\inst2|inst3|ci~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst3|ci~combout\,
	datad => \inst3|inst700|SALIDA\(15),
	combout => \inst2|inst|opres[15]~0_combout\);

-- Location: LCCOMB_X21_Y29_N4
\inst2|inst|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~1_combout\ = (\inst2|inst|opres[15]~0_combout\ & ((\inst3|inst8|SALIDA\(15)) # ((!\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[15]~0_combout\ & ((\inst3|inst10|selop\(0) & ((!\inst3|inst10|selop\(2)) # 
-- (!\inst3|inst8|SALIDA\(15)))) # (!\inst3|inst10|selop\(0) & ((\inst3|inst10|selop\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(15),
	datab => \inst2|inst|opres[15]~0_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[15]~1_combout\);

-- Location: LCCOMB_X21_Y29_N18
\inst2|inst|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~2_combout\ = (\inst2|inst|opres[15]~1_combout\ & (((\inst2|inst|Add0~32_combout\) # (\inst3|inst10|selop\(2))) # (!\inst3|inst10|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|inst|opres[15]~1_combout\,
	datac => \inst2|inst|Add0~32_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[15]~2_combout\);

-- Location: LCCOMB_X21_Y29_N20
\inst2|inst|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(15) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(15)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[15]~2_combout\,
	datac => \inst2|inst|opres\(15),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(15));

-- Location: LCCOMB_X21_Y29_N16
\inst2|inst2|datow[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X21_Y29_N17
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: LCCOMB_X21_Y33_N24
\inst3|inst700666|ACCB|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\);

-- Location: FF_X21_Y33_N25
\inst3|inst700666|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(15));

-- Location: IOIBUF_X22_Y39_N15
\sw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw,
	o => \sw~input_o\);

-- Location: LCCOMB_X20_Y31_N28
\inst4|salida[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[15]~0_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(15))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(15),
	datab => \sw~input_o\,
	datad => \inst3|inst700666|ACCA|SALIDA\(15),
	combout => \inst4|salida[15]~0_combout\);

-- Location: LCCOMB_X20_Y31_N2
\inst4|salida[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[14]~1_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(14))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \inst3|inst700666|ACCB|SALIDA\(14),
	datac => \inst3|inst700666|ACCA|SALIDA\(14),
	combout => \inst4|salida[14]~1_combout\);

-- Location: LCCOMB_X22_Y31_N28
\inst4|salida[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[13]~2_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(13))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(13),
	datac => \inst3|inst700666|ACCA|SALIDA\(13),
	datad => \sw~input_o\,
	combout => \inst4|salida[13]~2_combout\);

-- Location: LCCOMB_X20_Y33_N16
\inst4|salida[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[12]~3_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(12))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \inst3|inst700666|ACCB|SALIDA\(12),
	datad => \inst3|inst700666|ACCA|SALIDA\(12),
	combout => \inst4|salida[12]~3_combout\);

-- Location: LCCOMB_X22_Y31_N18
\inst4|salida[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[11]~4_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(11))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(11),
	datac => \inst3|inst700666|ACCA|SALIDA\(11),
	datad => \sw~input_o\,
	combout => \inst4|salida[11]~4_combout\);

-- Location: LCCOMB_X22_Y31_N14
\inst4|salida[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[10]~5_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(10))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(10),
	datac => \inst3|inst700666|ACCA|SALIDA\(10),
	datad => \sw~input_o\,
	combout => \inst4|salida[10]~5_combout\);

-- Location: LCCOMB_X20_Y33_N30
\inst4|salida[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[9]~6_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(9)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(9),
	datad => \inst3|inst700666|ACCB|SALIDA\(9),
	combout => \inst4|salida[9]~6_combout\);

-- Location: LCCOMB_X20_Y33_N4
\inst4|salida[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[8]~7_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(8))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(8),
	datac => \inst3|inst700666|ACCA|SALIDA\(8),
	datad => \sw~input_o\,
	combout => \inst4|salida[8]~7_combout\);

-- Location: LCCOMB_X22_Y33_N18
\inst4|salida[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[7]~8_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(7)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(7),
	datab => \inst3|inst700666|ACCB|SALIDA\(7),
	datad => \sw~input_o\,
	combout => \inst4|salida[7]~8_combout\);

-- Location: LCCOMB_X20_Y32_N14
\inst4|salida[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[6]~9_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(6))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(6),
	datab => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(6),
	combout => \inst4|salida[6]~9_combout\);

-- Location: LCCOMB_X22_Y33_N16
\inst4|salida[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[5]~10_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(5))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(5),
	datac => \inst3|inst700666|ACCA|SALIDA\(5),
	datad => \sw~input_o\,
	combout => \inst4|salida[5]~10_combout\);

-- Location: LCCOMB_X22_Y33_N2
\inst4|salida[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[4]~11_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(4)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCA|SALIDA\(4),
	datac => \inst3|inst700666|ACCB|SALIDA\(4),
	datad => \sw~input_o\,
	combout => \inst4|salida[4]~11_combout\);

-- Location: LCCOMB_X22_Y33_N28
\inst4|salida[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[3]~12_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(3))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(3),
	datac => \inst3|inst700666|ACCA|SALIDA\(3),
	datad => \sw~input_o\,
	combout => \inst4|salida[3]~12_combout\);

-- Location: LCCOMB_X22_Y33_N14
\inst4|salida[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[2]~13_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(2))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(2),
	datac => \inst3|inst700666|ACCA|SALIDA\(2),
	datad => \sw~input_o\,
	combout => \inst4|salida[2]~13_combout\);

-- Location: LCCOMB_X22_Y33_N20
\inst4|salida[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[1]~14_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(1))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(1),
	datad => \sw~input_o\,
	combout => \inst4|salida[1]~14_combout\);

-- Location: LCCOMB_X22_Y33_N12
\inst4|salida[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salida[0]~15_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(0))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(0),
	datad => \sw~input_o\,
	combout => \inst4|salida[0]~15_combout\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_salida(15) <= \salida[15]~output_o\;

ww_salida(14) <= \salida[14]~output_o\;

ww_salida(13) <= \salida[13]~output_o\;

ww_salida(12) <= \salida[12]~output_o\;

ww_salida(11) <= \salida[11]~output_o\;

ww_salida(10) <= \salida[10]~output_o\;

ww_salida(9) <= \salida[9]~output_o\;

ww_salida(8) <= \salida[8]~output_o\;

ww_salida(7) <= \salida[7]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


