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

-- DATE "12/02/2019 17:55:06"

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
	AccA : OUT std_logic_vector(15 DOWNTO 0);
	RESET : IN std_logic;
	RELOJ : IN std_logic;
	AccB : OUT std_logic_vector(15 DOWNTO 0);
	dato : OUT std_logic_vector(15 DOWNTO 0);
	instr : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- AccA[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[10]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[8]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[8]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[7]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[10]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[9]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_AccA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_AccB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dato : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \AccA[15]~output_o\ : std_logic;
SIGNAL \AccA[14]~output_o\ : std_logic;
SIGNAL \AccA[13]~output_o\ : std_logic;
SIGNAL \AccA[12]~output_o\ : std_logic;
SIGNAL \AccA[11]~output_o\ : std_logic;
SIGNAL \AccA[10]~output_o\ : std_logic;
SIGNAL \AccA[9]~output_o\ : std_logic;
SIGNAL \AccA[8]~output_o\ : std_logic;
SIGNAL \AccA[7]~output_o\ : std_logic;
SIGNAL \AccA[6]~output_o\ : std_logic;
SIGNAL \AccA[5]~output_o\ : std_logic;
SIGNAL \AccA[4]~output_o\ : std_logic;
SIGNAL \AccA[3]~output_o\ : std_logic;
SIGNAL \AccA[2]~output_o\ : std_logic;
SIGNAL \AccA[1]~output_o\ : std_logic;
SIGNAL \AccA[0]~output_o\ : std_logic;
SIGNAL \AccB[15]~output_o\ : std_logic;
SIGNAL \AccB[14]~output_o\ : std_logic;
SIGNAL \AccB[13]~output_o\ : std_logic;
SIGNAL \AccB[12]~output_o\ : std_logic;
SIGNAL \AccB[11]~output_o\ : std_logic;
SIGNAL \AccB[10]~output_o\ : std_logic;
SIGNAL \AccB[9]~output_o\ : std_logic;
SIGNAL \AccB[8]~output_o\ : std_logic;
SIGNAL \AccB[7]~output_o\ : std_logic;
SIGNAL \AccB[6]~output_o\ : std_logic;
SIGNAL \AccB[5]~output_o\ : std_logic;
SIGNAL \AccB[4]~output_o\ : std_logic;
SIGNAL \AccB[3]~output_o\ : std_logic;
SIGNAL \AccB[2]~output_o\ : std_logic;
SIGNAL \AccB[1]~output_o\ : std_logic;
SIGNAL \AccB[0]~output_o\ : std_logic;
SIGNAL \dato[15]~output_o\ : std_logic;
SIGNAL \dato[14]~output_o\ : std_logic;
SIGNAL \dato[13]~output_o\ : std_logic;
SIGNAL \dato[12]~output_o\ : std_logic;
SIGNAL \dato[11]~output_o\ : std_logic;
SIGNAL \dato[10]~output_o\ : std_logic;
SIGNAL \dato[9]~output_o\ : std_logic;
SIGNAL \dato[8]~output_o\ : std_logic;
SIGNAL \dato[7]~output_o\ : std_logic;
SIGNAL \dato[6]~output_o\ : std_logic;
SIGNAL \dato[5]~output_o\ : std_logic;
SIGNAL \dato[4]~output_o\ : std_logic;
SIGNAL \dato[3]~output_o\ : std_logic;
SIGNAL \dato[2]~output_o\ : std_logic;
SIGNAL \dato[1]~output_o\ : std_logic;
SIGNAL \dato[0]~output_o\ : std_logic;
SIGNAL \instr[15]~output_o\ : std_logic;
SIGNAL \instr[14]~output_o\ : std_logic;
SIGNAL \instr[13]~output_o\ : std_logic;
SIGNAL \instr[12]~output_o\ : std_logic;
SIGNAL \instr[11]~output_o\ : std_logic;
SIGNAL \instr[10]~output_o\ : std_logic;
SIGNAL \instr[9]~output_o\ : std_logic;
SIGNAL \instr[8]~output_o\ : std_logic;
SIGNAL \instr[7]~output_o\ : std_logic;
SIGNAL \instr[6]~output_o\ : std_logic;
SIGNAL \instr[5]~output_o\ : std_logic;
SIGNAL \instr[4]~output_o\ : std_logic;
SIGNAL \instr[3]~output_o\ : std_logic;
SIGNAL \instr[2]~output_o\ : std_logic;
SIGNAL \instr[1]~output_o\ : std_logic;
SIGNAL \instr[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|inst1|Mux13~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~3_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~3_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~3_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst11|cadj~0_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~21_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal11~0_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~23_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~22_combout\ : std_logic;
SIGNAL \inst3|inst11|selsrc[0]~1_combout\ : std_logic;
SIGNAL \inst3|inst11|selsrc[0]~2_combout\ : std_logic;
SIGNAL \inst3|inst11|selsrc[0]~3_combout\ : std_logic;
SIGNAL \inst3|inst11|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~15_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~14_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal7~0_combout\ : std_logic;
SIGNAL \inst3|inst11|selregw[2]~0_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~9_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~8_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~6_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~7_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~29_combout\ : std_logic;
SIGNAL \inst3|inst11|selsrc[1]~0_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~12_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~13_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~11_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~10_combout\ : std_logic;
SIGNAL \inst2|inst8|process_0~0_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst1000|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[6]~0_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[2]~11_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~33_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[15]~32_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~34_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst1000|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~35_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~36_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~37_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~38_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[2]~65_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[2]~66_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D1[15]~0_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[1]~12_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[1]~67_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[1]~68_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[0]~13_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[0]~6_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~24_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~28_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~27_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~25_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~26_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~20_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~19_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~7_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~7clkctrl_outclk\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[15]~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[15]~39_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[15]~40_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[14]~2_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~8_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[13]~43_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[13]~44_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~10_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCA|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[12]~4_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[12]~45_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[12]~46_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~12_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[11]~5_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~14_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[10]~6_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[10]~49_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[10]~50_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~16_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[9]~7_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[8]~14_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~18_combout\ : std_logic;
SIGNAL \inst3|inst11|sr~combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~1\ : std_logic;
SIGNAL \inst3|inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[5]~59_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[5]~60_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~26_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[4]~61_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[4]~62_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~63_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[3]~64_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~31_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[3]~10_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~29_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[4]~9_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~27_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[5]~8_combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~3\ : std_logic;
SIGNAL \inst3|inst3|Add0~5\ : std_logic;
SIGNAL \inst3|inst3|Add0~7\ : std_logic;
SIGNAL \inst3|inst3|Add0~9\ : std_logic;
SIGNAL \inst3|inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[8]~2_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[8]~7_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[8]~8_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~20_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[7]~15_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~22_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[6]~16_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~25_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[6]~57_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[6]~58_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~23_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[7]~55_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[7]~56_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~21_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[8]~53_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[8]~54_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~19_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[9]~51_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[9]~52_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~17_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~15_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[11]~47_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[11]~48_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~13_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~11_combout\ : std_logic;
SIGNAL \inst3|registrosss|ACCB|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst3|registrosss|inst|D2[13]~3_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~9_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[14]~41_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[14]~42_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~38_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~0_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~1_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~2_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst3|inst11|selc~combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst3|inst11|cadj~combout\ : std_logic;
SIGNAL \inst3|inst10|cadj~q\ : std_logic;
SIGNAL \inst2|inst1|sal~0_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~35_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~3_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~4_combout\ : std_logic;
SIGNAL \inst3|memData|Mux14~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~5_combout\ : std_logic;
SIGNAL \inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~33_combout\ : std_logic;
SIGNAL \inst3|inst11|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst11|vf~combout\ : std_logic;
SIGNAL \inst3|inst10|vf~0_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux30~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux30~3_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal9~0_combout\ : std_logic;
SIGNAL \inst3|inst11|selsrc[1]~4_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~16_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~17_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[0]~69_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1[0]~70_combout\ : std_logic;
SIGNAL \inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~36_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~37_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst11|selresult[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~5_combout\ : std_logic;
SIGNAL \inst3|inst11|comb~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres~39_combout\ : std_logic;
SIGNAL \inst2|inst|opres~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~5_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|registrosss|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst10|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|registrosss|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst13|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst9|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst11|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|inst11|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst11|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst11|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst11|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst11|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

AccA <= ww_AccA;
ww_RESET <= RESET;
ww_RELOJ <= RELOJ;
AccB <= ww_AccB;
dato <= ww_dato;
instr <= ww_instr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst|opres[16]~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~7_combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X36_Y39_N23
\AccA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(15),
	devoe => ww_devoe,
	o => \AccA[15]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\AccA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(14),
	devoe => ww_devoe,
	o => \AccA[14]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\AccA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(13),
	devoe => ww_devoe,
	o => \AccA[13]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\AccA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(12),
	devoe => ww_devoe,
	o => \AccA[12]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\AccA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(11),
	devoe => ww_devoe,
	o => \AccA[11]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\AccA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(10),
	devoe => ww_devoe,
	o => \AccA[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\AccA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(9),
	devoe => ww_devoe,
	o => \AccA[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\AccA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(8),
	devoe => ww_devoe,
	o => \AccA[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\AccA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(7),
	devoe => ww_devoe,
	o => \AccA[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\AccA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(6),
	devoe => ww_devoe,
	o => \AccA[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\AccA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(5),
	devoe => ww_devoe,
	o => \AccA[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\AccA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(4),
	devoe => ww_devoe,
	o => \AccA[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\AccA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(3),
	devoe => ww_devoe,
	o => \AccA[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\AccA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(2),
	devoe => ww_devoe,
	o => \AccA[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\AccA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(1),
	devoe => ww_devoe,
	o => \AccA[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\AccA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCA|SALIDA\(0),
	devoe => ww_devoe,
	o => \AccA[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\AccB[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(15),
	devoe => ww_devoe,
	o => \AccB[15]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\AccB[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(14),
	devoe => ww_devoe,
	o => \AccB[14]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\AccB[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(13),
	devoe => ww_devoe,
	o => \AccB[13]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\AccB[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(12),
	devoe => ww_devoe,
	o => \AccB[12]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\AccB[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(11),
	devoe => ww_devoe,
	o => \AccB[11]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\AccB[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(10),
	devoe => ww_devoe,
	o => \AccB[10]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\AccB[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(9),
	devoe => ww_devoe,
	o => \AccB[9]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\AccB[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(8),
	devoe => ww_devoe,
	o => \AccB[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\AccB[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(7),
	devoe => ww_devoe,
	o => \AccB[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\AccB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(6),
	devoe => ww_devoe,
	o => \AccB[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\AccB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(5),
	devoe => ww_devoe,
	o => \AccB[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\AccB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(4),
	devoe => ww_devoe,
	o => \AccB[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\AccB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(3),
	devoe => ww_devoe,
	o => \AccB[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\AccB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(2),
	devoe => ww_devoe,
	o => \AccB[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\AccB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(1),
	devoe => ww_devoe,
	o => \AccB[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\AccB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|registrosss|ACCB|SALIDA\(0),
	devoe => ww_devoe,
	o => \AccB[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\dato[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[15]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\dato[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[14]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\dato[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\dato[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[12]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\dato[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[11]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\dato[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\dato[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\dato[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[8]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\dato[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\dato[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\dato[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\dato[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\dato[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\dato[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\dato[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(1),
	devoe => ww_devoe,
	o => \dato[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\dato[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(0),
	devoe => ww_devoe,
	o => \dato[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\instr[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[15]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\instr[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[14]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\instr[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[13]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\instr[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[12]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\instr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\instr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[10]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\instr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[9]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\instr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instr[8]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\instr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(23),
	devoe => ww_devoe,
	o => \instr[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\instr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(22),
	devoe => ww_devoe,
	o => \instr[6]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\instr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(1),
	devoe => ww_devoe,
	o => \instr[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\instr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(19),
	devoe => ww_devoe,
	o => \instr[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\instr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(19),
	devoe => ww_devoe,
	o => \instr[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\instr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(18),
	devoe => ww_devoe,
	o => \instr[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\instr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(17),
	devoe => ww_devoe,
	o => \instr[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\instr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|valor_interno\(16),
	devoe => ww_devoe,
	o => \instr[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X35_Y36_N10
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

-- Location: LCCOMB_X35_Y36_N12
\inst|inst3|SALIDA[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[1]~8_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA[0]~7\)) # (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA[0]~7\) # (GND)))
-- \inst|inst3|SALIDA[1]~9\ = CARRY((!\inst|inst3|SALIDA[0]~7\) # (!\inst|inst3|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datad => VCC,
	cin => \inst|inst3|SALIDA[0]~7\,
	combout => \inst|inst3|SALIDA[1]~8_combout\,
	cout => \inst|inst3|SALIDA[1]~9\);

-- Location: LCCOMB_X35_Y36_N14
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

-- Location: LCCOMB_X35_Y36_N6
\inst|inst1|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~0_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux31~0_combout\);

-- Location: LCCOMB_X34_Y36_N6
\inst|inst1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~0_combout\ = (!\inst|inst3|SALIDA\(1) & \inst|inst1|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst1|Mux31~0_combout\,
	combout => \inst|inst1|Mux8~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: FF_X34_Y36_N7
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X35_Y36_N28
\inst|inst1|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~2_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(2)) # ((\inst|inst3|SALIDA\(1) & !\inst|inst3|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux13~2_combout\);

-- Location: LCCOMB_X35_Y36_N30
\inst|inst1|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~3_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux13~2_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux13~2_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux13~3_combout\);

-- Location: FF_X35_Y36_N31
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux13~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X35_Y36_N8
\inst|inst1|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~2_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(1)) # (!\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux15~2_combout\);

-- Location: LCCOMB_X35_Y36_N26
\inst|inst1|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~3_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux15~2_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux15~2_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux15~3_combout\);

-- Location: FF_X35_Y36_N27
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux15~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X34_Y36_N18
\inst3|inst11|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal1~0_combout\ = (!\inst|inst5|valor_interno\(23) & (\inst|inst5|valor_interno\(18) & (\inst|inst5|valor_interno\(19) & !\inst|inst5|valor_interno\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(18),
	datac => \inst|inst5|valor_interno\(19),
	datad => \inst|inst5|valor_interno\(16),
	combout => \inst3|inst11|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y36_N4
\inst|inst1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~0_combout\ = (\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(0) & \inst|inst1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst1|Mux31~0_combout\,
	combout => \inst|inst1|Mux9~0_combout\);

-- Location: FF_X34_Y36_N5
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux9~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X35_Y36_N22
\inst|inst1|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~2_combout\ = (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(1)) # (\inst|inst3|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux14~2_combout\);

-- Location: LCCOMB_X35_Y36_N24
\inst|inst1|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~3_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux14~2_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux14~2_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux14~3_combout\);

-- Location: FF_X35_Y36_N25
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux14~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X34_Y36_N14
\inst3|inst11|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal1~1_combout\ = (!\inst|inst5|valor_interno\(1) & (\inst3|inst11|Equal1~0_combout\ & (!\inst|inst5|valor_interno\(22) & !\inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(1),
	datab => \inst3|inst11|Equal1~0_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst11|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y36_N0
\inst3|inst11|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal2~0_combout\ = (\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(19) & (!\inst|inst5|valor_interno\(22) & \inst|inst5|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(19),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(18),
	combout => \inst3|inst11|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y37_N4
\inst3|inst11|cadj~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|cadj~0_combout\ = ((\inst|inst5|valor_interno\(17) & ((\inst|inst5|valor_interno\(16)) # (\inst|inst5|valor_interno\(1)))) # (!\inst|inst5|valor_interno\(17) & ((!\inst|inst5|valor_interno\(1)) # (!\inst|inst5|valor_interno\(16))))) # 
-- (!\inst3|inst11|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal2~0_combout\,
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(1),
	combout => \inst3|inst11|cadj~0_combout\);

-- Location: LCCOMB_X35_Y37_N18
\inst3|inst11|comb~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~21_combout\ = (\inst3|inst11|Equal1~1_combout\) # ((\inst3|inst11|Equal0~1_combout\) # ((!\inst3|inst11|Equal9~0_combout\ & \inst3|inst11|cadj~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal1~1_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datac => \inst3|inst11|Equal9~0_combout\,
	datad => \inst3|inst11|cadj~0_combout\,
	combout => \inst3|inst11|comb~21_combout\);

-- Location: LCCOMB_X34_Y36_N16
\inst3|inst11|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal0~0_combout\ = (!\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(22) & (!\inst|inst5|valor_interno\(1) & !\inst|inst5|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(1),
	datad => \inst|inst5|valor_interno\(18),
	combout => \inst3|inst11|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y37_N24
\inst3|inst11|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal11~0_combout\ = (!\inst|inst5|valor_interno\(19) & (!\inst|inst5|valor_interno\(17) & (\inst|inst5|valor_interno\(16) & \inst3|inst11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst3|inst11|Equal0~0_combout\,
	combout => \inst3|inst11|Equal11~0_combout\);

-- Location: LCCOMB_X35_Y37_N26
\inst3|inst11|comb~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~23_combout\ = (!\inst3|inst11|comb~21_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~21_combout\,
	datab => \inst3|inst11|Equal9~0_combout\,
	datac => \inst3|inst11|selresult[0]~0_combout\,
	datad => \inst3|inst11|Equal11~0_combout\,
	combout => \inst3|inst11|comb~23_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst3|inst11|comb~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~22_combout\ = (\inst3|inst11|comb~21_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~21_combout\,
	datab => \inst3|inst11|Equal9~0_combout\,
	datac => \inst3|inst11|selresult[0]~0_combout\,
	datad => \inst3|inst11|Equal11~0_combout\,
	combout => \inst3|inst11|comb~22_combout\);

-- Location: LCCOMB_X35_Y37_N10
\inst3|inst11|selop[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selop\(2) = (!\inst3|inst11|comb~22_combout\ & ((\inst3|inst11|comb~23_combout\) # (\inst3|inst11|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~23_combout\,
	datac => \inst3|inst11|comb~22_combout\,
	datad => \inst3|inst11|selop\(2),
	combout => \inst3|inst11|selop\(2));

-- Location: FF_X43_Y36_N29
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst3|inst11|selop\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X34_Y36_N8
\inst3|inst11|selsrc[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc[0]~1_combout\ = (\inst|inst5|valor_interno\(1) & (!\inst|inst5|valor_interno\(17) & (!\inst|inst5|valor_interno\(19) & \inst|inst5|valor_interno\(16)))) # (!\inst|inst5|valor_interno\(1) & (\inst|inst5|valor_interno\(17) & 
-- (\inst|inst5|valor_interno\(19) $ (!\inst|inst5|valor_interno\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(1),
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(19),
	datad => \inst|inst5|valor_interno\(16),
	combout => \inst3|inst11|selsrc[0]~1_combout\);

-- Location: LCCOMB_X34_Y36_N30
\inst3|inst11|selsrc[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc[0]~2_combout\ = (\inst3|inst11|selsrc[0]~1_combout\ & ((\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(19) & \inst|inst5|valor_interno\(18))) # (!\inst|inst5|valor_interno\(23) & (\inst|inst5|valor_interno\(19) & 
-- !\inst|inst5|valor_interno\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst3|inst11|selsrc[0]~1_combout\,
	datac => \inst|inst5|valor_interno\(19),
	datad => \inst|inst5|valor_interno\(18),
	combout => \inst3|inst11|selsrc[0]~2_combout\);

-- Location: LCCOMB_X34_Y36_N24
\inst3|inst11|selsrc[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc[0]~3_combout\ = (\inst3|inst11|Equal1~0_combout\ & ((\inst|inst5|valor_interno\(1) & (\inst|inst5|valor_interno\(22) & \inst|inst5|valor_interno\(17))) # (!\inst|inst5|valor_interno\(1) & ((!\inst|inst5|valor_interno\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(1),
	datab => \inst3|inst11|Equal1~0_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst11|selsrc[0]~3_combout\);

-- Location: LCCOMB_X35_Y37_N30
\inst3|inst11|selregr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregr[3]~0_combout\ = (\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|Equal9~0_combout\,
	datac => \inst3|inst11|selresult[0]~0_combout\,
	datad => \inst3|inst11|Equal11~0_combout\,
	combout => \inst3|inst11|selregr[3]~0_combout\);

-- Location: LCCOMB_X34_Y36_N12
\inst3|inst11|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~15_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|selsrc[0]~3_combout\) # ((\inst3|inst11|selsrc[0]~2_combout\ & !\inst|inst5|valor_interno\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc[0]~2_combout\,
	datab => \inst3|inst11|selsrc[0]~3_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst11|selregr[3]~0_combout\,
	combout => \inst3|inst11|comb~15_combout\);

-- Location: LCCOMB_X34_Y36_N26
\inst3|inst11|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~14_combout\ = (!\inst3|inst11|selsrc[0]~3_combout\ & (\inst3|inst11|selregr[3]~0_combout\ & ((\inst|inst5|valor_interno\(22)) # (!\inst3|inst11|selsrc[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc[0]~2_combout\,
	datab => \inst3|inst11|selsrc[0]~3_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst11|selregr[3]~0_combout\,
	combout => \inst3|inst11|comb~14_combout\);

-- Location: LCCOMB_X34_Y36_N10
\inst3|inst11|selsrc[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc\(0) = (!\inst3|inst11|comb~14_combout\ & ((\inst3|inst11|comb~15_combout\) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~15_combout\,
	datac => \inst3|inst11|comb~14_combout\,
	datad => \inst3|inst11|selsrc\(0),
	combout => \inst3|inst11|selsrc\(0));

-- Location: LCCOMB_X34_Y36_N28
\inst3|inst11|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal7~0_combout\ = (!\inst|inst5|valor_interno\(1) & (\inst3|inst11|Equal1~0_combout\ & (\inst|inst5|valor_interno\(22) & !\inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(1),
	datab => \inst3|inst11|Equal1~0_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst11|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y37_N18
\inst3|inst11|selregw[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregw[2]~0_combout\ = (!\inst3|inst11|Equal0~1_combout\ & (!\inst3|inst11|Equal1~1_combout\ & (\inst3|inst11|cadj~0_combout\ & \inst3|inst11|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal0~1_combout\,
	datab => \inst3|inst11|Equal1~1_combout\,
	datac => \inst3|inst11|cadj~0_combout\,
	datad => \inst3|inst11|Equal7~0_combout\,
	combout => \inst3|inst11|selregw[2]~0_combout\);

-- Location: LCCOMB_X37_Y37_N30
\inst3|inst11|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~9_combout\ = (\inst3|inst11|selregw[2]~0_combout\ & ((\inst3|inst11|Equal11~0_combout\) # ((\inst3|inst11|Equal9~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal11~0_combout\,
	datab => \inst3|inst11|selregw[2]~0_combout\,
	datac => \inst3|inst11|Equal9~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~9_combout\);

-- Location: LCCOMB_X37_Y37_N16
\inst3|inst11|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~8_combout\ = (!\inst3|inst11|selregw[2]~0_combout\ & ((\inst3|inst11|Equal11~0_combout\) # ((\inst3|inst11|Equal9~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal11~0_combout\,
	datab => \inst3|inst11|selregw[2]~0_combout\,
	datac => \inst3|inst11|Equal9~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~8_combout\);

-- Location: LCCOMB_X38_Y36_N24
\inst3|inst11|selregr[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregr\(2) = (!\inst3|inst11|comb~8_combout\ & ((\inst3|inst11|comb~9_combout\) # (\inst3|inst11|selregr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~9_combout\,
	datab => \inst3|inst11|comb~8_combout\,
	datad => \inst3|inst11|selregr\(2),
	combout => \inst3|inst11|selregr\(2));

-- Location: LCCOMB_X36_Y37_N2
\inst3|inst11|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~6_combout\ = (!\inst3|inst11|Equal0~1_combout\ & (!\inst3|inst11|cadj~0_combout\ & !\inst3|inst11|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal0~1_combout\,
	datab => \inst3|inst11|cadj~0_combout\,
	datac => \inst3|inst11|Equal1~1_combout\,
	combout => \inst3|inst11|comb~6_combout\);

-- Location: LCCOMB_X36_Y37_N8
\inst3|inst11|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~7_combout\ = (\inst3|inst11|selresult[0]~0_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\)))) # (!\inst3|inst11|selresult[0]~0_combout\ & (((\inst3|inst11|comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|comb~6_combout\,
	datac => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~7_combout\);

-- Location: LCCOMB_X35_Y37_N16
\inst3|inst11|comb~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~29_combout\ = (\inst3|inst11|Equal1~1_combout\) # ((\inst3|inst11|Equal0~1_combout\) # ((\inst3|inst11|Equal7~0_combout\ & \inst3|inst11|cadj~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal1~1_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datac => \inst3|inst11|Equal7~0_combout\,
	datad => \inst3|inst11|cadj~0_combout\,
	combout => \inst3|inst11|comb~29_combout\);

-- Location: LCCOMB_X36_Y37_N20
\inst3|inst11|selregr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregr\(0) = (!\inst3|inst11|comb~7_combout\ & ((\inst3|inst11|comb~29_combout\) # (\inst3|inst11|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|comb~7_combout\,
	datac => \inst3|inst11|comb~29_combout\,
	datad => \inst3|inst11|selregr\(0),
	combout => \inst3|inst11|selregr\(0));

-- Location: LCCOMB_X35_Y37_N14
\inst3|inst11|selsrc[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc[1]~0_combout\ = (\inst3|inst11|Equal0~1_combout\) # ((!\inst3|inst11|Equal1~1_combout\ & \inst3|inst11|cadj~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal1~1_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datad => \inst3|inst11|cadj~0_combout\,
	combout => \inst3|inst11|selsrc[1]~0_combout\);

-- Location: LCCOMB_X35_Y37_N20
\inst3|inst11|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal2~1_combout\ = (\inst3|inst11|Equal2~0_combout\ & (\inst|inst5|valor_interno\(17) & (!\inst|inst5|valor_interno\(16) & !\inst|inst5|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal2~0_combout\,
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(1),
	combout => \inst3|inst11|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y37_N4
\inst3|inst11|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~12_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & (!\inst3|inst11|selregw[2]~0_combout\ & ((\inst3|inst11|selsrc[1]~0_combout\) # (\inst3|inst11|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc[1]~0_combout\,
	datab => \inst3|inst11|selregr[3]~0_combout\,
	datac => \inst3|inst11|selregw[2]~0_combout\,
	datad => \inst3|inst11|Equal2~1_combout\,
	combout => \inst3|inst11|comb~12_combout\);

-- Location: LCCOMB_X35_Y37_N0
\inst3|inst11|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~13_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|selregw[2]~0_combout\) # ((!\inst3|inst11|selsrc[1]~0_combout\ & !\inst3|inst11|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregw[2]~0_combout\,
	datab => \inst3|inst11|selsrc[1]~0_combout\,
	datac => \inst3|inst11|selregr[3]~0_combout\,
	datad => \inst3|inst11|Equal2~1_combout\,
	combout => \inst3|inst11|comb~13_combout\);

-- Location: LCCOMB_X35_Y37_N6
\inst3|inst11|selregw[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregw\(2) = (!\inst3|inst11|comb~12_combout\ & ((\inst3|inst11|comb~13_combout\) # (\inst3|inst11|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~12_combout\,
	datab => \inst3|inst11|comb~13_combout\,
	datad => \inst3|inst11|selregw\(2),
	combout => \inst3|inst11|selregw\(2));

-- Location: FF_X35_Y37_N7
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst11|selregw\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: FF_X41_Y37_N27
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X35_Y37_N12
\inst3|inst11|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~11_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|Equal0~1_combout\) # ((!\inst3|inst11|Equal1~1_combout\ & \inst3|inst11|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal1~1_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datac => \inst3|inst11|selregr[3]~0_combout\,
	datad => \inst3|inst11|Equal2~1_combout\,
	combout => \inst3|inst11|comb~11_combout\);

-- Location: LCCOMB_X35_Y37_N22
\inst3|inst11|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~10_combout\ = (!\inst3|inst11|Equal0~1_combout\ & (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|Equal1~1_combout\) # (!\inst3|inst11|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal1~1_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datac => \inst3|inst11|selregr[3]~0_combout\,
	datad => \inst3|inst11|Equal2~1_combout\,
	combout => \inst3|inst11|comb~10_combout\);

-- Location: LCCOMB_X35_Y37_N28
\inst3|inst11|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregw\(0) = (!\inst3|inst11|comb~10_combout\ & ((\inst3|inst11|comb~11_combout\) # (\inst3|inst11|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~11_combout\,
	datac => \inst3|inst11|comb~10_combout\,
	datad => \inst3|inst11|selregw\(0),
	combout => \inst3|inst11|selregw\(0));

-- Location: FF_X35_Y37_N29
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst11|selregw\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: FF_X41_Y37_N21
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X41_Y37_N18
\inst2|inst8|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|process_0~0_combout\ = (!\inst3|inst11|selregr\(2) & (\inst3|inst11|selregr\(0) & (\inst2|inst107|selregw\(2) & !\inst2|inst107|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst2|inst8|process_0~0_combout\);

-- Location: LCCOMB_X42_Y35_N2
\inst3|registrosss|inst1000|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst1000|Equal0~1_combout\ = (!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datab => \inst2|inst107|selregw\(2),
	combout => \inst3|registrosss|inst1000|Equal0~1_combout\);

-- Location: FF_X39_Y35_N27
\inst3|registrosss|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(2));

-- Location: LCCOMB_X41_Y37_N26
\inst3|registrosss|inst|D2[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[6]~0_combout\ = (!\inst3|inst11|selregr\(2) & (\inst3|inst11|selregr\(0) & ((\inst2|inst107|selregw\(0)) # (!\inst2|inst107|selregw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|registrosss|inst|D2[6]~0_combout\);

-- Location: LCCOMB_X39_Y35_N26
\inst3|registrosss|inst|D2[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[2]~11_combout\ = (\inst2|inst6|SALIDA\(2) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|ACCB|SALIDA\(2) & \inst3|registrosss|inst|D2[6]~0_combout\)))) # (!\inst2|inst6|SALIDA\(2) & 
-- (((\inst3|registrosss|ACCB|SALIDA\(2) & \inst3|registrosss|inst|D2[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(2),
	datab => \inst2|inst8|process_0~0_combout\,
	datac => \inst3|registrosss|ACCB|SALIDA\(2),
	datad => \inst3|registrosss|inst|D2[6]~0_combout\,
	combout => \inst3|registrosss|inst|D2[2]~11_combout\);

-- Location: LCCOMB_X39_Y37_N18
\inst3|inst202|OP2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(2) = (\inst3|inst11|selsrc\(0) & (!\inst3|inst11|selsrc\(1) & \inst3|registrosss|inst|D2[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datad => \inst3|registrosss|inst|D2[2]~11_combout\,
	combout => \inst3|inst202|OP2\(2));

-- Location: FF_X39_Y37_N19
\inst3|inst13|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(2));

-- Location: LCCOMB_X39_Y37_N16
\inst2|muxSel2|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(2)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst13|SALIDA\(2),
	datac => \inst2|inst6|SALIDA\(2),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X41_Y37_N20
\inst3|inst202|OP1[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~33_combout\ = (((!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))) # (!\inst3|inst11|selregr\(0))) # (!\inst3|inst11|selregr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst202|OP1[3]~33_combout\);

-- Location: LCCOMB_X41_Y35_N26
\inst3|inst202|OP1[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[15]~32_combout\ = (\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	combout => \inst3|inst202|OP1[15]~32_combout\);

-- Location: LCCOMB_X41_Y37_N2
\inst3|inst202|OP1[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~34_combout\ = (\inst3|inst202|OP1[3]~33_combout\ & (\inst3|inst202|OP1[15]~32_combout\ & ((\inst3|inst11|selregr\(2)) # (\inst3|inst11|selregr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst3|inst202|OP1[3]~33_combout\,
	datad => \inst3|inst202|OP1[15]~32_combout\,
	combout => \inst3|inst202|OP1[3]~34_combout\);

-- Location: LCCOMB_X42_Y35_N24
\inst3|registrosss|inst1000|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst1000|Equal0~0_combout\ = (\inst2|inst107|selregw\(0) & !\inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datab => \inst2|inst107|selregw\(2),
	combout => \inst3|registrosss|inst1000|Equal0~0_combout\);

-- Location: FF_X40_Y35_N25
\inst3|registrosss|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(2));

-- Location: LCCOMB_X42_Y36_N2
\inst3|inst202|OP1[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~35_combout\ = (\inst3|inst11|selsrc\(0) & ((\inst3|inst11|selregr\(0)) # ((\inst3|inst11|selregr\(2))))) # (!\inst3|inst11|selsrc\(0) & (\inst3|inst11|selsrc\(1) & ((\inst3|inst11|selregr\(0)) # (\inst3|inst11|selregr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst3|inst11|selsrc\(1),
	datad => \inst3|inst11|selregr\(2),
	combout => \inst3|inst202|OP1[3]~35_combout\);

-- Location: LCCOMB_X41_Y37_N0
\inst3|inst202|OP1[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~36_combout\ = (\inst2|inst107|selregw\(2) & (\inst3|inst11|selregr\(2) $ ((\inst3|inst11|selregr\(0))))) # (!\inst2|inst107|selregw\(2) & (!\inst2|inst107|selregw\(0) & (\inst3|inst11|selregr\(2) $ (\inst3|inst11|selregr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst202|OP1[3]~36_combout\);

-- Location: LCCOMB_X41_Y37_N30
\inst3|inst202|OP1[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~37_combout\ = ((\inst3|inst202|OP1[3]~35_combout\ & (\inst3|inst202|OP1[3]~33_combout\ & \inst3|inst202|OP1[3]~36_combout\))) # (!\inst3|inst202|OP1[15]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[15]~32_combout\,
	datab => \inst3|inst202|OP1[3]~35_combout\,
	datac => \inst3|inst202|OP1[3]~33_combout\,
	datad => \inst3|inst202|OP1[3]~36_combout\,
	combout => \inst3|inst202|OP1[3]~37_combout\);

-- Location: LCCOMB_X42_Y36_N24
\inst3|inst202|OP1[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~38_combout\ = (!\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[3]~37_combout\) # ((\inst3|inst11|selregr\(0) & \inst3|inst11|selregr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(0),
	datab => \inst3|inst11|selregr\(2),
	datac => \inst3|inst202|OP1[3]~34_combout\,
	datad => \inst3|inst202|OP1[3]~37_combout\,
	combout => \inst3|inst202|OP1[3]~38_combout\);

-- Location: LCCOMB_X40_Y35_N18
\inst3|inst202|OP1[2]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[2]~65_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[2]~11_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(2) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCB|SALIDA\(2),
	datab => \inst3|inst202|OP1[3]~37_combout\,
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[2]~11_combout\,
	combout => \inst3|inst202|OP1[2]~65_combout\);

-- Location: LCCOMB_X40_Y35_N24
\inst3|inst202|OP1[2]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[2]~66_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[2]~65_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(2)))) # (!\inst3|inst202|OP1[2]~65_combout\ & (\inst2|inst6|SALIDA\(2))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(2),
	datac => \inst3|registrosss|ACCA|SALIDA\(2),
	datad => \inst3|inst202|OP1[2]~65_combout\,
	combout => \inst3|inst202|OP1[2]~66_combout\);

-- Location: LCCOMB_X40_Y35_N12
\inst3|inst202|OP1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(2) = (\inst3|inst202|OP1[2]~66_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[2]~66_combout\,
	combout => \inst3|inst202|OP1\(2));

-- Location: FF_X40_Y35_N13
\inst3|inst9|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(2));

-- Location: LCCOMB_X41_Y37_N8
\inst3|registrosss|inst|D1[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D1[15]~0_combout\ = (\inst2|inst107|selregw\(2) & (((\inst2|inst107|selregw\(0)) # (!\inst3|inst11|selregr\(0))) # (!\inst3|inst11|selregr\(2)))) # (!\inst2|inst107|selregw\(2) & ((\inst3|inst11|selregr\(2) $ 
-- (!\inst3|inst11|selregr\(0))) # (!\inst2|inst107|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr\(2),
	datab => \inst3|inst11|selregr\(0),
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|registrosss|inst|D1[15]~0_combout\);

-- Location: LCCOMB_X40_Y37_N4
\inst2|muxSel1|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(2)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(2),
	datac => \inst3|inst9|SALIDA\(2),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X39_Y35_N29
\inst3|registrosss|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(1));

-- Location: LCCOMB_X39_Y35_N28
\inst3|registrosss|inst|D2[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[1]~12_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(1)) # ((\inst2|inst6|SALIDA\(1) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(1) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(1),
	datac => \inst3|registrosss|ACCB|SALIDA\(1),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[1]~12_combout\);

-- Location: LCCOMB_X42_Y35_N6
\inst3|inst202|OP1[1]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[1]~67_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[1]~12_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(1) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[1]~12_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(1),
	datac => \inst3|inst202|OP1[3]~37_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[1]~67_combout\);

-- Location: FF_X42_Y35_N5
\inst3|registrosss|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(1));

-- Location: LCCOMB_X42_Y35_N4
\inst3|inst202|OP1[1]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[1]~68_combout\ = (\inst3|inst202|OP1[1]~67_combout\ & (((\inst3|registrosss|ACCA|SALIDA\(1)) # (!\inst3|inst202|OP1[3]~34_combout\)))) # (!\inst3|inst202|OP1[1]~67_combout\ & (\inst2|inst6|SALIDA\(1) & 
-- ((\inst3|inst202|OP1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[1]~67_combout\,
	datab => \inst2|inst6|SALIDA\(1),
	datac => \inst3|registrosss|ACCA|SALIDA\(1),
	datad => \inst3|inst202|OP1[3]~34_combout\,
	combout => \inst3|inst202|OP1[1]~68_combout\);

-- Location: LCCOMB_X41_Y35_N2
\inst3|inst202|OP1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst202|OP1[1]~68_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[1]~68_combout\,
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X41_Y35_N3
\inst3|inst9|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(1));

-- Location: LCCOMB_X41_Y37_N28
\inst2|muxSel1|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(1))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|SALIDA\(1),
	datac => \inst3|registrosss|inst|D1[15]~0_combout\,
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X39_Y35_N11
\inst3|registrosss|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(0));

-- Location: LCCOMB_X39_Y35_N24
\inst3|registrosss|inst|D2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[0]~13_combout\ = (\inst2|inst6|SALIDA\(0) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(0))))) # (!\inst2|inst6|SALIDA\(0) & 
-- (((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(0),
	datab => \inst2|inst8|process_0~0_combout\,
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(0),
	combout => \inst3|registrosss|inst|D2[0]~13_combout\);

-- Location: LCCOMB_X34_Y36_N20
\inst|inst1|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~1_combout\ = (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(0) & \inst|inst1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst1|Mux31~0_combout\,
	combout => \inst|inst1|Mux31~1_combout\);

-- Location: FF_X34_Y36_N21
\inst|inst5|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux31~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(0));

-- Location: LCCOMB_X39_Y37_N4
\inst3|inst202|OP2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[0]~6_combout\ = (\inst3|inst11|selsrc\(0) & ((\inst3|inst11|selsrc\(1) & ((\inst|inst5|valor_interno\(0)))) # (!\inst3|inst11|selsrc\(1) & (\inst3|registrosss|inst|D2[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|registrosss|inst|D2[0]~13_combout\,
	datad => \inst|inst5|valor_interno\(0),
	combout => \inst3|inst202|OP2[0]~6_combout\);

-- Location: FF_X39_Y37_N5
\inst3|inst13|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2[0]~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(0));

-- Location: LCCOMB_X40_Y37_N0
\inst2|muxSel2|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(0))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|SALIDA\(0),
	datac => \inst3|inst13|SALIDA\(0),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X38_Y36_N16
\inst3|inst11|comb~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~24_combout\ = (!\inst3|inst11|Equal7~0_combout\ & (((\inst3|inst11|Equal9~0_combout\) # (\inst3|inst11|Equal11~0_combout\)) # (!\inst3|inst11|selresult[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selresult[0]~0_combout\,
	datab => \inst3|inst11|Equal9~0_combout\,
	datac => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|Equal7~0_combout\,
	combout => \inst3|inst11|comb~24_combout\);

-- Location: LCCOMB_X38_Y36_N2
\inst3|inst11|selfalgs[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selfalgs\(2) = (!\inst3|inst11|comb~24_combout\ & ((\inst3|inst11|Equal7~0_combout\) # (\inst3|inst11|selfalgs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal7~0_combout\,
	datac => \inst3|inst11|comb~24_combout\,
	datad => \inst3|inst11|selfalgs\(2),
	combout => \inst3|inst11|selfalgs\(2));

-- Location: FF_X38_Y36_N13
\inst3|inst10|selfalgs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst3|inst11|selfalgs\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(2));

-- Location: LCCOMB_X36_Y37_N26
\inst3|inst11|comb~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~28_combout\ = (\inst3|inst11|comb~6_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|comb~6_combout\,
	datac => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~28_combout\);

-- Location: LCCOMB_X36_Y37_N24
\inst3|inst11|comb~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~27_combout\ = (!\inst3|inst11|comb~6_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|comb~6_combout\,
	datac => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~27_combout\);

-- Location: LCCOMB_X36_Y37_N10
\inst3|inst11|selfalgs[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selfalgs\(0) = (!\inst3|inst11|comb~27_combout\ & ((\inst3|inst11|comb~28_combout\) # (\inst3|inst11|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~28_combout\,
	datab => \inst3|inst11|comb~27_combout\,
	datad => \inst3|inst11|selfalgs\(0),
	combout => \inst3|inst11|selfalgs\(0));

-- Location: FF_X38_Y36_N15
\inst3|inst10|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst11|selfalgs\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(0));

-- Location: LCCOMB_X36_Y36_N28
\inst3|inst11|comb~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~25_combout\ = (!\inst3|inst11|Equal1~1_combout\ & (\inst3|inst11|selregr[3]~0_combout\ & !\inst3|inst11|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|Equal1~1_combout\,
	datac => \inst3|inst11|selregr[3]~0_combout\,
	datad => \inst3|inst11|Equal0~1_combout\,
	combout => \inst3|inst11|comb~25_combout\);

-- Location: LCCOMB_X35_Y36_N2
\inst3|inst11|comb~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~26_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|Equal0~1_combout\) # (\inst3|inst11|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr[3]~0_combout\,
	datab => \inst3|inst11|Equal0~1_combout\,
	datad => \inst3|inst11|Equal1~1_combout\,
	combout => \inst3|inst11|comb~26_combout\);

-- Location: LCCOMB_X38_Y36_N30
\inst3|inst11|selfalgs[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selfalgs\(1) = (!\inst3|inst11|comb~25_combout\ & ((\inst3|inst11|comb~26_combout\) # (\inst3|inst11|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~25_combout\,
	datac => \inst3|inst11|comb~26_combout\,
	datad => \inst3|inst11|selfalgs\(1),
	combout => \inst3|inst11|selfalgs\(1));

-- Location: FF_X38_Y36_N31
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst3|inst11|selfalgs\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: LCCOMB_X36_Y36_N6
\inst3|inst11|comb~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~20_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & ((\inst3|inst11|Equal1~1_combout\) # ((\inst3|inst11|Equal7~0_combout\) # (\inst3|inst11|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr[3]~0_combout\,
	datab => \inst3|inst11|Equal1~1_combout\,
	datac => \inst3|inst11|Equal7~0_combout\,
	datad => \inst3|inst11|Equal0~1_combout\,
	combout => \inst3|inst11|comb~20_combout\);

-- Location: LCCOMB_X36_Y36_N16
\inst3|inst11|comb~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~19_combout\ = (\inst3|inst11|selregr[3]~0_combout\ & (!\inst3|inst11|Equal1~1_combout\ & (!\inst3|inst11|Equal7~0_combout\ & !\inst3|inst11|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selregr[3]~0_combout\,
	datab => \inst3|inst11|Equal1~1_combout\,
	datac => \inst3|inst11|Equal7~0_combout\,
	datad => \inst3|inst11|Equal0~1_combout\,
	combout => \inst3|inst11|comb~19_combout\);

-- Location: LCCOMB_X42_Y36_N6
\inst3|inst11|selop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selop\(0) = (!\inst3|inst11|comb~19_combout\ & ((\inst3|inst11|comb~20_combout\) # (\inst3|inst11|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|comb~20_combout\,
	datac => \inst3|inst11|comb~19_combout\,
	datad => \inst3|inst11|selop\(0),
	combout => \inst3|inst11|selop\(0));

-- Location: FF_X41_Y36_N9
\inst3|inst10|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst11|selop\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(0));

-- Location: LCCOMB_X43_Y36_N20
\inst2|inst|opres[16]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~7_combout\ = (!\inst3|inst10|selop\(0) & !\inst3|inst10|selop\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[16]~7_combout\);

-- Location: CLKCTRL_G10
\inst2|inst|opres[16]~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|opres[16]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|opres[16]~7clkctrl_outclk\);

-- Location: LCCOMB_X41_Y35_N12
\inst3|registrosss|ACCB|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(15),
	combout => \inst3|registrosss|ACCB|SALIDA[15]~feeder_combout\);

-- Location: FF_X41_Y35_N13
\inst3|registrosss|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(15));

-- Location: LCCOMB_X41_Y35_N28
\inst3|registrosss|inst|D2[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[15]~1_combout\ = (\inst3|registrosss|ACCB|SALIDA\(15) & ((\inst3|registrosss|inst|D2[6]~0_combout\) # ((\inst2|inst6|SALIDA\(15) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|ACCB|SALIDA\(15) & 
-- (\inst2|inst6|SALIDA\(15) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCB|SALIDA\(15),
	datab => \inst2|inst6|SALIDA\(15),
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[15]~1_combout\);

-- Location: LCCOMB_X41_Y35_N24
\inst3|inst202|OP1[15]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[15]~39_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[15]~1_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(15) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|inst|D2[15]~1_combout\,
	datac => \inst3|registrosss|ACCB|SALIDA\(15),
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[15]~39_combout\);

-- Location: LCCOMB_X40_Y35_N4
\inst3|inst202|OP1[15]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[15]~40_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[15]~39_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(15)))) # (!\inst3|inst202|OP1[15]~39_combout\ & (\inst2|inst6|SALIDA\(15))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[15]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst3|registrosss|ACCA|SALIDA\(15),
	datad => \inst3|inst202|OP1[15]~39_combout\,
	combout => \inst3|inst202|OP1[15]~40_combout\);

-- Location: LCCOMB_X40_Y35_N8
\inst3|inst202|OP1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst202|OP1[15]~40_combout\ & ((\inst3|inst11|selsrc\(0)) # (\inst3|inst11|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst202|OP1[15]~40_combout\,
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X40_Y35_N9
\inst3|inst9|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(15));

-- Location: LCCOMB_X40_Y35_N30
\inst2|muxSel1|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(15)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst9|SALIDA\(15),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X40_Y35_N28
\inst3|inst202|OP2[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[15]~1_combout\,
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X40_Y35_N29
\inst3|inst13|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(15));

-- Location: LCCOMB_X40_Y35_N14
\inst2|muxSel2|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(15)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst13|SALIDA\(15),
	datac => \inst2|inst6|SALIDA\(15),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: FF_X42_Y35_N3
\inst3|registrosss|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(14));

-- Location: LCCOMB_X42_Y35_N22
\inst3|registrosss|inst|D2[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[14]~2_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(14)) # ((\inst2|inst6|SALIDA\(14) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(14) & (\inst2|inst8|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(14),
	datac => \inst2|inst8|process_0~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(14),
	combout => \inst3|registrosss|inst|D2[14]~2_combout\);

-- Location: LCCOMB_X42_Y37_N26
\inst3|inst202|OP2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (\inst3|inst11|selsrc\(0) & (!\inst3|inst11|selsrc\(1) & \inst3|registrosss|inst|D2[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datac => \inst3|inst11|selsrc\(1),
	datad => \inst3|registrosss|inst|D2[14]~2_combout\,
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X42_Y37_N27
\inst3|inst13|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(14));

-- Location: LCCOMB_X41_Y37_N10
\inst2|muxSel2|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(14))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(14),
	datac => \inst3|inst13|SALIDA\(14),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X40_Y38_N4
\inst2|inst|opres[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~8_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[14]~8_combout\);

-- Location: FF_X42_Y36_N13
\inst3|registrosss|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(13));

-- Location: LCCOMB_X43_Y36_N24
\inst3|inst202|OP1[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[13]~43_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[13]~3_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(13) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCB|SALIDA\(13),
	datab => \inst3|inst202|OP1[3]~37_combout\,
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[13]~3_combout\,
	combout => \inst3|inst202|OP1[13]~43_combout\);

-- Location: LCCOMB_X42_Y36_N12
\inst3|inst202|OP1[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[13]~44_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[13]~43_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(13)))) # (!\inst3|inst202|OP1[13]~43_combout\ & (\inst2|inst6|SALIDA\(13))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[13]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(13),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst3|registrosss|ACCA|SALIDA\(13),
	datad => \inst3|inst202|OP1[13]~43_combout\,
	combout => \inst3|inst202|OP1[13]~44_combout\);

-- Location: LCCOMB_X42_Y36_N18
\inst3|inst202|OP1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(13) = (\inst3|inst202|OP1[13]~44_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[13]~44_combout\,
	combout => \inst3|inst202|OP1\(13));

-- Location: FF_X42_Y36_N19
\inst3|inst9|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(13));

-- Location: LCCOMB_X39_Y36_N6
\inst2|muxSel1|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(13))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D1[15]~0_combout\,
	datab => \inst3|inst9|SALIDA\(13),
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X39_Y36_N22
\inst2|inst|opres[13]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~10_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst2|inst|opres[13]~10_combout\);

-- Location: LCCOMB_X42_Y35_N14
\inst3|registrosss|ACCA|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCA|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst3|registrosss|ACCA|SALIDA[12]~feeder_combout\);

-- Location: FF_X42_Y35_N15
\inst3|registrosss|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCA|SALIDA[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(12));

-- Location: LCCOMB_X37_Y36_N24
\inst3|registrosss|ACCB|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(12),
	combout => \inst3|registrosss|ACCB|SALIDA[12]~feeder_combout\);

-- Location: FF_X37_Y36_N25
\inst3|registrosss|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(12));

-- Location: LCCOMB_X37_Y36_N10
\inst3|registrosss|inst|D2[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[12]~4_combout\ = (\inst2|inst6|SALIDA\(12) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(12))))) # (!\inst2|inst6|SALIDA\(12) & 
-- (((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(12),
	datab => \inst2|inst8|process_0~0_combout\,
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(12),
	combout => \inst3|registrosss|inst|D2[12]~4_combout\);

-- Location: LCCOMB_X37_Y36_N8
\inst3|inst202|OP1[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[12]~45_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[12]~4_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(12) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[12]~4_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(12),
	datac => \inst3|inst202|OP1[3]~37_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[12]~45_combout\);

-- Location: LCCOMB_X38_Y36_N22
\inst3|inst202|OP1[12]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[12]~46_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[12]~45_combout\ & (\inst3|registrosss|ACCA|SALIDA\(12))) # (!\inst3|inst202|OP1[12]~45_combout\ & ((\inst2|inst6|SALIDA\(12)))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[12]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst3|registrosss|ACCA|SALIDA\(12),
	datac => \inst2|inst6|SALIDA\(12),
	datad => \inst3|inst202|OP1[12]~45_combout\,
	combout => \inst3|inst202|OP1[12]~46_combout\);

-- Location: LCCOMB_X39_Y36_N14
\inst3|inst202|OP1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst202|OP1[12]~46_combout\ & ((\inst3|inst11|selsrc\(0)) # (\inst3|inst11|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datac => \inst3|inst11|selsrc\(1),
	datad => \inst3|inst202|OP1[12]~46_combout\,
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X39_Y36_N15
\inst3|inst9|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(12));

-- Location: LCCOMB_X39_Y36_N24
\inst2|muxSel1|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(12))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|SALIDA\(12),
	datac => \inst3|registrosss|inst|D1[15]~0_combout\,
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X39_Y36_N18
\inst2|inst|opres[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~12_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst2|inst|opres[12]~12_combout\);

-- Location: LCCOMB_X43_Y36_N6
\inst3|registrosss|ACCB|SALIDA[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(11),
	combout => \inst3|registrosss|ACCB|SALIDA[11]~feeder_combout\);

-- Location: FF_X43_Y36_N7
\inst3|registrosss|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[11]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(11));

-- Location: LCCOMB_X43_Y36_N2
\inst3|registrosss|inst|D2[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[11]~5_combout\ = (\inst3|registrosss|ACCB|SALIDA\(11) & ((\inst3|registrosss|inst|D2[6]~0_combout\) # ((\inst2|inst6|SALIDA\(11) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|ACCB|SALIDA\(11) & 
-- (\inst2|inst6|SALIDA\(11) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCB|SALIDA\(11),
	datab => \inst2|inst6|SALIDA\(11),
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[11]~5_combout\);

-- Location: LCCOMB_X42_Y36_N4
\inst3|inst202|OP2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[11]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[11]~5_combout\,
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X42_Y36_N5
\inst3|inst13|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(11));

-- Location: LCCOMB_X41_Y36_N8
\inst2|muxSel2|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(11)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|SALIDA\(11),
	datab => \inst2|inst6|SALIDA\(11),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X41_Y36_N24
\inst2|inst|opres[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~14_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	combout => \inst2|inst|opres[11]~14_combout\);

-- Location: FF_X40_Y35_N23
\inst3|registrosss|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(10));

-- Location: LCCOMB_X41_Y35_N30
\inst3|registrosss|ACCB|SALIDA[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[10]~feeder_combout\ = \inst2|inst6|SALIDA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(10),
	combout => \inst3|registrosss|ACCB|SALIDA[10]~feeder_combout\);

-- Location: FF_X41_Y35_N31
\inst3|registrosss|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[10]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(10));

-- Location: LCCOMB_X41_Y35_N18
\inst3|registrosss|inst|D2[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[10]~6_combout\ = (\inst2|inst6|SALIDA\(10) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(10))))) # (!\inst2|inst6|SALIDA\(10) & 
-- (((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(10),
	datab => \inst2|inst8|process_0~0_combout\,
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(10),
	combout => \inst3|registrosss|inst|D2[10]~6_combout\);

-- Location: LCCOMB_X41_Y35_N4
\inst3|inst202|OP1[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[10]~49_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[10]~6_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(10) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|inst|D2[10]~6_combout\,
	datac => \inst3|registrosss|ACCB|SALIDA\(10),
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[10]~49_combout\);

-- Location: LCCOMB_X40_Y35_N22
\inst3|inst202|OP1[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[10]~50_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[10]~49_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(10)))) # (!\inst3|inst202|OP1[10]~49_combout\ & (\inst2|inst6|SALIDA\(10))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[10]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(10),
	datac => \inst3|registrosss|ACCA|SALIDA\(10),
	datad => \inst3|inst202|OP1[10]~49_combout\,
	combout => \inst3|inst202|OP1[10]~50_combout\);

-- Location: LCCOMB_X41_Y36_N14
\inst3|inst202|OP1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst202|OP1[10]~50_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[10]~50_combout\,
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X41_Y36_N15
\inst3|inst9|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(10));

-- Location: LCCOMB_X41_Y36_N18
\inst2|muxSel1|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(10)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(10),
	datac => \inst3|inst9|SALIDA\(10),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X41_Y36_N6
\inst2|inst|opres[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~16_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst2|inst|opres[10]~16_combout\);

-- Location: LCCOMB_X43_Y36_N0
\inst3|registrosss|ACCB|SALIDA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(9),
	combout => \inst3|registrosss|ACCB|SALIDA[9]~feeder_combout\);

-- Location: FF_X43_Y36_N1
\inst3|registrosss|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(9));

-- Location: LCCOMB_X43_Y36_N12
\inst3|registrosss|inst|D2[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[9]~7_combout\ = (\inst2|inst6|SALIDA\(9) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|ACCB|SALIDA\(9) & \inst3|registrosss|inst|D2[6]~0_combout\)))) # (!\inst2|inst6|SALIDA\(9) & 
-- (\inst3|registrosss|ACCB|SALIDA\(9) & (\inst3|registrosss|inst|D2[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(9),
	datab => \inst3|registrosss|ACCB|SALIDA\(9),
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[9]~7_combout\);

-- Location: LCCOMB_X42_Y36_N20
\inst3|inst202|OP2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(9) = (!\inst3|inst11|selsrc\(1) & (\inst3|registrosss|inst|D2[9]~7_combout\ & \inst3|inst11|selsrc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datab => \inst3|registrosss|inst|D2[9]~7_combout\,
	datac => \inst3|inst11|selsrc\(0),
	combout => \inst3|inst202|OP2\(9));

-- Location: FF_X42_Y36_N21
\inst3|inst13|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(9));

-- Location: LCCOMB_X40_Y36_N24
\inst2|muxSel2|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(9))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(9),
	datac => \inst3|inst13|SALIDA\(9),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: FF_X42_Y35_N13
\inst3|registrosss|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(8));

-- Location: LCCOMB_X42_Y35_N12
\inst3|registrosss|inst|D2[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[8]~14_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(8)) # ((\inst3|registrosss|ACCB|SALIDA\(8) & \inst3|registrosss|inst|D2[6]~0_combout\)))) # (!\inst2|inst8|process_0~0_combout\ & 
-- (((\inst3|registrosss|ACCB|SALIDA\(8) & \inst3|registrosss|inst|D2[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8|process_0~0_combout\,
	datab => \inst2|inst6|SALIDA\(8),
	datac => \inst3|registrosss|ACCB|SALIDA\(8),
	datad => \inst3|registrosss|inst|D2[6]~0_combout\,
	combout => \inst3|registrosss|inst|D2[8]~14_combout\);

-- Location: LCCOMB_X38_Y36_N12
\inst3|inst11|comb~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~18_combout\ = (\inst3|inst11|selresult[0]~0_combout\ & ((\inst3|inst11|Equal11~0_combout\) # (\inst3|inst11|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selresult[0]~0_combout\,
	datab => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|Equal9~0_combout\,
	combout => \inst3|inst11|comb~18_combout\);

-- Location: LCCOMB_X37_Y36_N12
\inst3|inst11|sr\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|sr~combout\ = (!\inst3|inst11|comb~18_combout\ & ((\inst3|inst11|sr~combout\) # (!\inst3|inst11|selresult[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selresult[0]~0_combout\,
	datac => \inst3|inst11|comb~18_combout\,
	datad => \inst3|inst11|sr~combout\,
	combout => \inst3|inst11|sr~combout\);

-- Location: LCCOMB_X39_Y35_N12
\inst3|inst3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~0_combout\ = (\inst3|inst11|sr~combout\ & (\inst3|registrosss|inst|D2[0]~13_combout\ & VCC)) # (!\inst3|inst11|sr~combout\ & (\inst3|registrosss|inst|D2[0]~13_combout\ $ (VCC)))
-- \inst3|inst3|Add0~1\ = CARRY((!\inst3|inst11|sr~combout\ & \inst3|registrosss|inst|D2[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|sr~combout\,
	datab => \inst3|registrosss|inst|D2[0]~13_combout\,
	datad => VCC,
	combout => \inst3|inst3|Add0~0_combout\,
	cout => \inst3|inst3|Add0~1\);

-- Location: LCCOMB_X39_Y35_N14
\inst3|inst3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~2_combout\ = (\inst3|inst11|sr~combout\ & ((\inst3|registrosss|inst|D2[1]~12_combout\ & (!\inst3|inst3|Add0~1\)) # (!\inst3|registrosss|inst|D2[1]~12_combout\ & ((\inst3|inst3|Add0~1\) # (GND))))) # (!\inst3|inst11|sr~combout\ & 
-- ((\inst3|registrosss|inst|D2[1]~12_combout\ & (\inst3|inst3|Add0~1\ & VCC)) # (!\inst3|registrosss|inst|D2[1]~12_combout\ & (!\inst3|inst3|Add0~1\))))
-- \inst3|inst3|Add0~3\ = CARRY((\inst3|inst11|sr~combout\ & ((!\inst3|inst3|Add0~1\) # (!\inst3|registrosss|inst|D2[1]~12_combout\))) # (!\inst3|inst11|sr~combout\ & (!\inst3|registrosss|inst|D2[1]~12_combout\ & !\inst3|inst3|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|sr~combout\,
	datab => \inst3|registrosss|inst|D2[1]~12_combout\,
	datad => VCC,
	cin => \inst3|inst3|Add0~1\,
	combout => \inst3|inst3|Add0~2_combout\,
	cout => \inst3|inst3|Add0~3\);

-- Location: LCCOMB_X42_Y37_N8
\inst3|inst202|OP2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(5) = (\inst3|inst11|selsrc\(0) & (!\inst3|inst11|selsrc\(1) & \inst3|registrosss|inst|D2[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datac => \inst3|inst11|selsrc\(1),
	datad => \inst3|registrosss|inst|D2[5]~8_combout\,
	combout => \inst3|inst202|OP2\(5));

-- Location: FF_X42_Y37_N9
\inst3|inst13|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(5));

-- Location: LCCOMB_X42_Y37_N6
\inst2|muxSel2|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(5))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|SALIDA\(5),
	datac => \inst3|inst13|SALIDA\(5),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: FF_X42_Y35_N27
\inst3|registrosss|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(5));

-- Location: LCCOMB_X42_Y35_N16
\inst3|registrosss|ACCB|SALIDA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|registrosss|ACCB|SALIDA[5]~feeder_combout\);

-- Location: FF_X42_Y35_N17
\inst3|registrosss|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(5));

-- Location: LCCOMB_X42_Y35_N28
\inst3|inst202|OP1[5]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[5]~59_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[5]~8_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(5) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[5]~8_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(5),
	datac => \inst3|inst202|OP1[3]~37_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[5]~59_combout\);

-- Location: LCCOMB_X42_Y35_N26
\inst3|inst202|OP1[5]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[5]~60_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[5]~59_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(5)))) # (!\inst3|inst202|OP1[5]~59_combout\ & (\inst2|inst6|SALIDA\(5))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[5]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(5),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst3|registrosss|ACCA|SALIDA\(5),
	datad => \inst3|inst202|OP1[5]~59_combout\,
	combout => \inst3|inst202|OP1[5]~60_combout\);

-- Location: LCCOMB_X41_Y37_N6
\inst3|inst202|OP1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst202|OP1[5]~60_combout\ & ((\inst3|inst11|selsrc\(0)) # (\inst3|inst11|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datad => \inst3|inst202|OP1[5]~60_combout\,
	combout => \inst3|inst202|OP1\(5));

-- Location: FF_X41_Y37_N7
\inst3|inst9|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(5));

-- Location: LCCOMB_X41_Y37_N16
\inst2|muxSel1|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(5)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|registrosss|inst|D1[15]~0_combout\,
	datac => \inst2|inst6|SALIDA\(5),
	datad => \inst3|inst9|SALIDA\(5),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X42_Y37_N10
\inst2|inst|opres[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~26_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\,
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	combout => \inst2|inst|opres[5]~26_combout\);

-- Location: FF_X42_Y37_N23
\inst3|registrosss|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(4));

-- Location: LCCOMB_X38_Y35_N24
\inst3|registrosss|ACCB|SALIDA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst3|registrosss|ACCB|SALIDA[4]~feeder_combout\);

-- Location: FF_X38_Y35_N25
\inst3|registrosss|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[4]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(4));

-- Location: LCCOMB_X42_Y37_N18
\inst3|inst202|OP1[4]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[4]~61_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[4]~9_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(4) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(4),
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[4]~9_combout\,
	combout => \inst3|inst202|OP1[4]~61_combout\);

-- Location: LCCOMB_X42_Y37_N22
\inst3|inst202|OP1[4]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[4]~62_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[4]~61_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(4)))) # (!\inst3|inst202|OP1[4]~61_combout\ & (\inst2|inst6|SALIDA\(4))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[4]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(4),
	datac => \inst3|registrosss|ACCA|SALIDA\(4),
	datad => \inst3|inst202|OP1[4]~61_combout\,
	combout => \inst3|inst202|OP1[4]~62_combout\);

-- Location: LCCOMB_X42_Y37_N12
\inst3|inst202|OP1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst202|OP1[4]~62_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst202|OP1[4]~62_combout\,
	datad => \inst3|inst11|selsrc\(0),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X42_Y37_N13
\inst3|inst9|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(4));

-- Location: LCCOMB_X41_Y37_N22
\inst2|muxSel1|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(4)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(4),
	datab => \inst3|registrosss|inst|D1[15]~0_combout\,
	datac => \inst3|inst9|SALIDA\(4),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: FF_X39_Y37_N9
\inst3|registrosss|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(3));

-- Location: FF_X39_Y35_N5
\inst3|registrosss|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(3));

-- Location: LCCOMB_X38_Y37_N24
\inst3|inst202|OP1[3]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~63_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[3]~10_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(3) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(3),
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[3]~10_combout\,
	combout => \inst3|inst202|OP1[3]~63_combout\);

-- Location: LCCOMB_X39_Y37_N10
\inst3|inst202|OP1[3]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[3]~64_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[3]~63_combout\ & (\inst3|registrosss|ACCA|SALIDA\(3))) # (!\inst3|inst202|OP1[3]~63_combout\ & ((\inst2|inst6|SALIDA\(3)))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[3]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCA|SALIDA\(3),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst2|inst6|SALIDA\(3),
	datad => \inst3|inst202|OP1[3]~63_combout\,
	combout => \inst3|inst202|OP1[3]~64_combout\);

-- Location: LCCOMB_X39_Y37_N22
\inst3|inst202|OP1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(3) = (\inst3|inst202|OP1[3]~64_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[3]~64_combout\,
	combout => \inst3|inst202|OP1\(3));

-- Location: FF_X39_Y37_N23
\inst3|inst9|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(3));

-- Location: LCCOMB_X39_Y37_N6
\inst2|muxSel1|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(3))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|SALIDA\(3),
	datac => \inst2|inst6|SALIDA\(3),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X40_Y37_N20
\inst2|inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~6_combout\ = (\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (\inst2|inst|Add0~5\ & VCC)) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst|Add0~5\)))) # (!\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst|Add0~5\)) 
-- # (!\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst|Add0~5\) # (GND)))))
-- \inst2|inst|Add0~7\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & !\inst2|inst|Add0~5\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & 
-- ((!\inst2|inst|Add0~5\) # (!\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~5\,
	combout => \inst2|inst|Add0~6_combout\,
	cout => \inst2|inst|Add0~7\);

-- Location: LCCOMB_X40_Y37_N22
\inst2|inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~8_combout\ = ((\inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ $ (\inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\ $ (!\inst2|inst|Add0~7\)))) # (GND)
-- \inst2|inst|Add0~9\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst2|inst|Add0~7\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & !\inst2|inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~7\,
	combout => \inst2|inst|Add0~8_combout\,
	cout => \inst2|inst|Add0~9\);

-- Location: LCCOMB_X39_Y37_N12
\inst2|inst|opres[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~30_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	combout => \inst2|inst|opres[3]~30_combout\);

-- Location: LCCOMB_X39_Y37_N30
\inst2|inst|opres[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~31_combout\ = (\inst2|inst|opres[3]~30_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~8_combout\,
	datad => \inst2|inst|opres[3]~30_combout\,
	combout => \inst2|inst|opres[3]~31_combout\);

-- Location: LCCOMB_X39_Y37_N28
\inst2|inst|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(3) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(3)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[3]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[3]~31_combout\,
	datab => \inst2|inst|opres\(3),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(3));

-- Location: LCCOMB_X39_Y37_N26
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

-- Location: FF_X39_Y37_N27
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: LCCOMB_X39_Y35_N4
\inst3|registrosss|inst|D2[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[3]~10_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(3)) # ((\inst2|inst6|SALIDA\(3) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(3) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(3),
	datac => \inst3|registrosss|ACCB|SALIDA\(3),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[3]~10_combout\);

-- Location: LCCOMB_X39_Y37_N24
\inst3|inst202|OP2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(3) = (\inst3|inst11|selsrc\(0) & (\inst3|registrosss|inst|D2[3]~10_combout\ & !\inst3|inst11|selsrc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|registrosss|inst|D2[3]~10_combout\,
	datad => \inst3|inst11|selsrc\(1),
	combout => \inst3|inst202|OP2\(3));

-- Location: FF_X39_Y37_N25
\inst3|inst13|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(3));

-- Location: LCCOMB_X39_Y37_N8
\inst2|muxSel2|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(3)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst13|SALIDA\(3),
	datac => \inst2|inst6|SALIDA\(3),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X40_Y37_N24
\inst2|inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~10_combout\ = (\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (\inst2|inst|Add0~9\ & VCC)) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst|Add0~9\)))) # (!\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst|Add0~9\)) 
-- # (!\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst|Add0~9\) # (GND)))))
-- \inst2|inst|Add0~11\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & !\inst2|inst|Add0~9\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ 
-- & ((!\inst2|inst|Add0~9\) # (!\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~9\,
	combout => \inst2|inst|Add0~10_combout\,
	cout => \inst2|inst|Add0~11\);

-- Location: LCCOMB_X42_Y37_N24
\inst2|inst|opres[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~28_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	combout => \inst2|inst|opres[4]~28_combout\);

-- Location: LCCOMB_X42_Y37_N14
\inst2|inst|opres[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~29_combout\ = (\inst2|inst|opres[4]~28_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~10_combout\,
	datad => \inst2|inst|opres[4]~28_combout\,
	combout => \inst2|inst|opres[4]~29_combout\);

-- Location: LCCOMB_X42_Y37_N16
\inst2|inst|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(4))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(4),
	datac => \inst2|inst|opres[4]~29_combout\,
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X42_Y37_N4
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

-- Location: FF_X42_Y37_N5
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: LCCOMB_X38_Y35_N14
\inst3|registrosss|inst|D2[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[4]~9_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(4)) # ((\inst2|inst6|SALIDA\(4) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(4) & (\inst2|inst8|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(4),
	datac => \inst2|inst8|process_0~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(4),
	combout => \inst3|registrosss|inst|D2[4]~9_combout\);

-- Location: LCCOMB_X41_Y35_N10
\inst3|inst202|OP2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(4) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[4]~9_combout\,
	combout => \inst3|inst202|OP2\(4));

-- Location: FF_X41_Y35_N11
\inst3|inst13|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(4));

-- Location: LCCOMB_X41_Y35_N8
\inst2|muxSel2|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(4)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|SALIDA\(4),
	datac => \inst2|inst6|SALIDA\(4),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X40_Y37_N26
\inst2|inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~12_combout\ = ((\inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ $ (\inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\ $ (!\inst2|inst|Add0~11\)))) # (GND)
-- \inst2|inst|Add0~13\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst2|inst|Add0~11\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & !\inst2|inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~11\,
	combout => \inst2|inst|Add0~12_combout\,
	cout => \inst2|inst|Add0~13\);

-- Location: LCCOMB_X43_Y37_N18
\inst2|inst|opres[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~27_combout\ = (\inst2|inst|opres[5]~26_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[5]~26_combout\,
	datad => \inst2|inst|Add0~12_combout\,
	combout => \inst2|inst|opres[5]~27_combout\);

-- Location: LCCOMB_X43_Y37_N6
\inst2|inst|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(5)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[5]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[5]~27_combout\,
	datac => \inst2|inst|opres\(5),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X43_Y37_N24
\inst2|inst2|datow[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(5) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst2|datow\(5));

-- Location: FF_X43_Y37_N25
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: LCCOMB_X42_Y35_N8
\inst3|registrosss|inst|D2[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[5]~8_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(5)) # ((\inst2|inst6|SALIDA\(5) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(5) & (\inst2|inst8|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(5),
	datac => \inst2|inst8|process_0~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(5),
	combout => \inst3|registrosss|inst|D2[5]~8_combout\);

-- Location: LCCOMB_X39_Y35_N16
\inst3|inst3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~4_combout\ = ((\inst3|registrosss|inst|D2[2]~11_combout\ $ (\inst3|inst11|sr~combout\ $ (\inst3|inst3|Add0~3\)))) # (GND)
-- \inst3|inst3|Add0~5\ = CARRY((\inst3|registrosss|inst|D2[2]~11_combout\ & ((!\inst3|inst3|Add0~3\) # (!\inst3|inst11|sr~combout\))) # (!\inst3|registrosss|inst|D2[2]~11_combout\ & (!\inst3|inst11|sr~combout\ & !\inst3|inst3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[2]~11_combout\,
	datab => \inst3|inst11|sr~combout\,
	datad => VCC,
	cin => \inst3|inst3|Add0~3\,
	combout => \inst3|inst3|Add0~4_combout\,
	cout => \inst3|inst3|Add0~5\);

-- Location: LCCOMB_X39_Y35_N18
\inst3|inst3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~6_combout\ = (\inst3|inst11|sr~combout\ & ((\inst3|registrosss|inst|D2[3]~10_combout\ & (!\inst3|inst3|Add0~5\)) # (!\inst3|registrosss|inst|D2[3]~10_combout\ & ((\inst3|inst3|Add0~5\) # (GND))))) # (!\inst3|inst11|sr~combout\ & 
-- ((\inst3|registrosss|inst|D2[3]~10_combout\ & (\inst3|inst3|Add0~5\ & VCC)) # (!\inst3|registrosss|inst|D2[3]~10_combout\ & (!\inst3|inst3|Add0~5\))))
-- \inst3|inst3|Add0~7\ = CARRY((\inst3|inst11|sr~combout\ & ((!\inst3|inst3|Add0~5\) # (!\inst3|registrosss|inst|D2[3]~10_combout\))) # (!\inst3|inst11|sr~combout\ & (!\inst3|registrosss|inst|D2[3]~10_combout\ & !\inst3|inst3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|sr~combout\,
	datab => \inst3|registrosss|inst|D2[3]~10_combout\,
	datad => VCC,
	cin => \inst3|inst3|Add0~5\,
	combout => \inst3|inst3|Add0~6_combout\,
	cout => \inst3|inst3|Add0~7\);

-- Location: LCCOMB_X39_Y35_N20
\inst3|inst3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~8_combout\ = ((\inst3|registrosss|inst|D2[4]~9_combout\ $ (\inst3|inst11|sr~combout\ $ (\inst3|inst3|Add0~7\)))) # (GND)
-- \inst3|inst3|Add0~9\ = CARRY((\inst3|registrosss|inst|D2[4]~9_combout\ & ((!\inst3|inst3|Add0~7\) # (!\inst3|inst11|sr~combout\))) # (!\inst3|registrosss|inst|D2[4]~9_combout\ & (!\inst3|inst11|sr~combout\ & !\inst3|inst3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[4]~9_combout\,
	datab => \inst3|inst11|sr~combout\,
	datad => VCC,
	cin => \inst3|inst3|Add0~7\,
	combout => \inst3|inst3|Add0~8_combout\,
	cout => \inst3|inst3|Add0~9\);

-- Location: LCCOMB_X39_Y35_N22
\inst3|inst3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|Add0~10_combout\ = \inst3|inst11|sr~combout\ $ (\inst3|inst3|Add0~9\ $ (!\inst3|registrosss|inst|D2[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|sr~combout\,
	datad => \inst3|registrosss|inst|D2[5]~8_combout\,
	cin => \inst3|inst3|Add0~9\,
	combout => \inst3|inst3|Add0~10_combout\);

-- Location: LCCOMB_X39_Y35_N6
\inst3|inst202|OP2[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[8]~2_combout\ = (!\inst3|inst3|Add0~6_combout\ & (!\inst3|inst3|Add0~8_combout\ & !\inst3|inst3|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst3|Add0~6_combout\,
	datac => \inst3|inst3|Add0~8_combout\,
	datad => \inst3|inst3|Add0~4_combout\,
	combout => \inst3|inst202|OP2[8]~2_combout\);

-- Location: LCCOMB_X39_Y35_N2
\inst3|inst202|OP2[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[8]~7_combout\ = (!\inst3|inst3|Add0~0_combout\ & (!\inst3|inst3|Add0~2_combout\ & (!\inst3|inst3|Add0~10_combout\ & \inst3|inst202|OP2[8]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|Add0~0_combout\,
	datab => \inst3|inst3|Add0~2_combout\,
	datac => \inst3|inst3|Add0~10_combout\,
	datad => \inst3|inst202|OP2[8]~2_combout\,
	combout => \inst3|inst202|OP2[8]~7_combout\);

-- Location: LCCOMB_X39_Y35_N0
\inst3|inst202|OP2[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[8]~8_combout\ = (\inst3|inst11|selsrc\(0) & (!\inst3|inst11|selsrc\(1) & (\inst3|registrosss|inst|D2[8]~14_combout\))) # (!\inst3|inst11|selsrc\(0) & (\inst3|inst11|selsrc\(1) & ((\inst3|inst202|OP2[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|registrosss|inst|D2[8]~14_combout\,
	datad => \inst3|inst202|OP2[8]~7_combout\,
	combout => \inst3|inst202|OP2[8]~8_combout\);

-- Location: FF_X39_Y35_N1
\inst3|inst13|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2[8]~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(8));

-- Location: LCCOMB_X40_Y36_N28
\inst2|muxSel2|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(8))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|SALIDA\(8),
	datac => \inst3|inst13|SALIDA\(8),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X41_Y36_N0
\inst2|inst|opres[8]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~20_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst2|inst|opres[8]~20_combout\);

-- Location: LCCOMB_X41_Y35_N16
\inst3|registrosss|ACCB|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(7),
	combout => \inst3|registrosss|ACCB|SALIDA[7]~feeder_combout\);

-- Location: FF_X41_Y35_N17
\inst3|registrosss|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(7));

-- Location: LCCOMB_X41_Y35_N22
\inst3|registrosss|inst|D2[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[7]~15_combout\ = (\inst2|inst6|SALIDA\(7) & ((\inst2|inst8|process_0~0_combout\) # ((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(7))))) # (!\inst2|inst6|SALIDA\(7) & 
-- (((\inst3|registrosss|inst|D2[6]~0_combout\ & \inst3|registrosss|ACCB|SALIDA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(7),
	datab => \inst2|inst8|process_0~0_combout\,
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(7),
	combout => \inst3|registrosss|inst|D2[7]~15_combout\);

-- Location: LCCOMB_X43_Y37_N22
\inst3|inst202|OP2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[7]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[7]~15_combout\,
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X43_Y37_N23
\inst3|inst13|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(7));

-- Location: LCCOMB_X43_Y37_N28
\inst2|muxSel2|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(7)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|SALIDA\(7),
	datac => \inst2|inst6|SALIDA\(7),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X43_Y37_N10
\inst2|inst|opres[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~22_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	combout => \inst2|inst|opres[7]~22_combout\);

-- Location: FF_X42_Y35_N31
\inst3|registrosss|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(6));

-- Location: LCCOMB_X42_Y35_N30
\inst3|registrosss|inst|D2[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[6]~16_combout\ = (\inst3|registrosss|inst|D2[6]~0_combout\ & ((\inst3|registrosss|ACCB|SALIDA\(6)) # ((\inst2|inst6|SALIDA\(6) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|inst|D2[6]~0_combout\ & 
-- (\inst2|inst6|SALIDA\(6) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[6]~0_combout\,
	datab => \inst2|inst6|SALIDA\(6),
	datac => \inst3|registrosss|ACCB|SALIDA\(6),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[6]~16_combout\);

-- Location: LCCOMB_X42_Y37_N20
\inst3|inst202|OP2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[6]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[6]~16_combout\,
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X42_Y37_N21
\inst3|inst13|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(6));

-- Location: LCCOMB_X41_Y37_N14
\inst2|muxSel2|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(6))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(6),
	datac => \inst3|inst13|SALIDA\(6),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X40_Y37_N28
\inst2|inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~14_combout\ = (\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (\inst2|inst|Add0~13\ & VCC)) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst2|inst|Add0~13\)))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst2|inst|Add0~13\)) 
-- # (!\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst|Add0~13\) # (GND)))))
-- \inst2|inst|Add0~15\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & !\inst2|inst|Add0~13\)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & 
-- ((!\inst2|inst|Add0~13\) # (!\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~13\,
	combout => \inst2|inst|Add0~14_combout\,
	cout => \inst2|inst|Add0~15\);

-- Location: LCCOMB_X40_Y37_N12
\inst2|inst|opres[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~24_combout\ = (\inst3|inst10|selop\(2) & ((!\inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~14_combout\,
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst2|inst|opres[6]~24_combout\);

-- Location: LCCOMB_X40_Y37_N6
\inst2|inst|opres[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~25_combout\ = (\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst|opres[6]~24_combout\) # ((\inst3|inst10|selop\(2) & !\inst3|inst10|selop\(0))))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & (\inst3|inst10|selop\(2) $ ((\inst2|inst|opres[6]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[6]~24_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[6]~25_combout\);

-- Location: LCCOMB_X40_Y37_N8
\inst2|inst|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(6))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[6]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(6),
	datac => \inst2|inst|opres[6]~25_combout\,
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X41_Y37_N12
\inst2|inst2|datow[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X41_Y37_N13
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: FF_X42_Y37_N1
\inst3|registrosss|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(6));

-- Location: LCCOMB_X42_Y37_N28
\inst3|inst202|OP1[6]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[6]~57_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[6]~16_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(6) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(6),
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[6]~16_combout\,
	combout => \inst3|inst202|OP1[6]~57_combout\);

-- Location: LCCOMB_X42_Y37_N0
\inst3|inst202|OP1[6]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[6]~58_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[6]~57_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(6)))) # (!\inst3|inst202|OP1[6]~57_combout\ & (\inst2|inst6|SALIDA\(6))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[6]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(6),
	datac => \inst3|registrosss|ACCA|SALIDA\(6),
	datad => \inst3|inst202|OP1[6]~57_combout\,
	combout => \inst3|inst202|OP1[6]~58_combout\);

-- Location: LCCOMB_X42_Y37_N30
\inst3|inst202|OP1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst202|OP1[6]~58_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[6]~58_combout\,
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X42_Y37_N31
\inst3|inst9|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(6));

-- Location: LCCOMB_X41_Y37_N4
\inst2|muxSel1|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(6)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(6),
	datab => \inst3|registrosss|inst|D1[15]~0_combout\,
	datac => \inst3|inst9|SALIDA\(6),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X40_Y37_N30
\inst2|inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~16_combout\ = ((\inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\ $ (\inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ $ (!\inst2|inst|Add0~15\)))) # (GND)
-- \inst2|inst|Add0~17\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst2|inst|Add0~15\))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\ 
-- & (\inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & !\inst2|inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~15\,
	combout => \inst2|inst|Add0~16_combout\,
	cout => \inst2|inst|Add0~17\);

-- Location: LCCOMB_X43_Y37_N0
\inst2|inst|opres[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~23_combout\ = (\inst2|inst|opres[7]~22_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[7]~22_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~16_combout\,
	combout => \inst2|inst|opres[7]~23_combout\);

-- Location: LCCOMB_X43_Y37_N12
\inst2|inst|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(7)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[7]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[7]~23_combout\,
	datac => \inst2|inst|opres\(7),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X43_Y37_N14
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

-- Location: FF_X43_Y37_N15
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: FF_X43_Y37_N17
\inst3|registrosss|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(7));

-- Location: LCCOMB_X41_Y35_N20
\inst3|inst202|OP1[7]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[7]~55_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[7]~15_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(7) & 
-- ((\inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(7),
	datac => \inst3|registrosss|inst|D2[7]~15_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[7]~55_combout\);

-- Location: LCCOMB_X43_Y37_N16
\inst3|inst202|OP1[7]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[7]~56_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[7]~55_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(7)))) # (!\inst3|inst202|OP1[7]~55_combout\ & (\inst2|inst6|SALIDA\(7))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[7]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(7),
	datac => \inst3|registrosss|ACCA|SALIDA\(7),
	datad => \inst3|inst202|OP1[7]~55_combout\,
	combout => \inst3|inst202|OP1[7]~56_combout\);

-- Location: LCCOMB_X43_Y37_N26
\inst3|inst202|OP1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst202|OP1[7]~56_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[7]~56_combout\,
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X43_Y37_N27
\inst3|inst9|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(7));

-- Location: LCCOMB_X43_Y37_N20
\inst2|muxSel1|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(7))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|SALIDA\(7),
	datac => \inst2|inst6|SALIDA\(7),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X40_Y36_N0
\inst2|inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~18_combout\ = (\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (\inst2|inst|Add0~17\ & VCC)) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst2|inst|Add0~17\)))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst2|inst|Add0~17\)) 
-- # (!\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|inst|Add0~17\) # (GND)))))
-- \inst2|inst|Add0~19\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & !\inst2|inst|Add0~17\)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & 
-- ((!\inst2|inst|Add0~17\) # (!\inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~17\,
	combout => \inst2|inst|Add0~18_combout\,
	cout => \inst2|inst|Add0~19\);

-- Location: LCCOMB_X41_Y36_N16
\inst2|inst|opres[8]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~21_combout\ = (\inst2|inst|opres[8]~20_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[8]~20_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~18_combout\,
	combout => \inst2|inst|opres[8]~21_combout\);

-- Location: LCCOMB_X41_Y36_N12
\inst2|inst|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(8))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[8]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(8),
	datac => \inst2|inst|opres[8]~21_combout\,
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X41_Y36_N26
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

-- Location: FF_X41_Y36_N27
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: LCCOMB_X42_Y35_N10
\inst3|inst202|OP1[8]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[8]~53_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[8]~14_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(8) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[8]~14_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(8),
	datac => \inst3|inst202|OP1[3]~37_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[8]~53_combout\);

-- Location: FF_X42_Y35_N1
\inst3|registrosss|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(8));

-- Location: LCCOMB_X42_Y35_N0
\inst3|inst202|OP1[8]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[8]~54_combout\ = (\inst3|inst202|OP1[8]~53_combout\ & (((\inst3|registrosss|ACCA|SALIDA\(8)) # (!\inst3|inst202|OP1[3]~34_combout\)))) # (!\inst3|inst202|OP1[8]~53_combout\ & (\inst2|inst6|SALIDA\(8) & 
-- ((\inst3|inst202|OP1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[8]~53_combout\,
	datab => \inst2|inst6|SALIDA\(8),
	datac => \inst3|registrosss|ACCA|SALIDA\(8),
	datad => \inst3|inst202|OP1[3]~34_combout\,
	combout => \inst3|inst202|OP1[8]~54_combout\);

-- Location: LCCOMB_X42_Y36_N28
\inst3|inst202|OP1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst202|OP1[8]~54_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[8]~54_combout\,
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X42_Y36_N29
\inst3|inst9|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(8),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(8));

-- Location: LCCOMB_X41_Y36_N4
\inst2|muxSel1|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(8)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(8),
	datac => \inst3|inst9|SALIDA\(8),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X40_Y36_N2
\inst2|inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~20_combout\ = ((\inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\ $ (\inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\ $ (!\inst2|inst|Add0~19\)))) # (GND)
-- \inst2|inst|Add0~21\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst2|inst|Add0~19\))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\ 
-- & (\inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\ & !\inst2|inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~19\,
	combout => \inst2|inst|Add0~20_combout\,
	cout => \inst2|inst|Add0~21\);

-- Location: LCCOMB_X40_Y36_N30
\inst2|inst|opres[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~18_combout\ = (\inst3|inst10|selop\(2) & ((!\inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~20_combout\,
	datad => \inst2|muxSel2|$00000|auto_generated|result_node[9]~6_combout\,
	combout => \inst2|inst|opres[9]~18_combout\);

-- Location: LCCOMB_X40_Y36_N20
\inst2|inst|opres[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~19_combout\ = (\inst2|inst|opres[9]~18_combout\ & (((\inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[9]~18_combout\ & (\inst3|inst10|selop\(2) & 
-- ((!\inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|inst|opres[9]~18_combout\,
	datac => \inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[9]~19_combout\);

-- Location: LCCOMB_X40_Y36_N18
\inst2|inst|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(9) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(9))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(9),
	datac => \inst2|inst|opres[16]~7clkctrl_outclk\,
	datad => \inst2|inst|opres[9]~19_combout\,
	combout => \inst2|inst|opres\(9));

-- Location: LCCOMB_X40_Y36_N26
\inst2|inst2|datow[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X40_Y36_N27
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: FF_X42_Y36_N17
\inst3|registrosss|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(9));

-- Location: LCCOMB_X43_Y36_N4
\inst3|inst202|OP1[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[9]~51_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[9]~7_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|inst202|OP1[3]~38_combout\ & 
-- \inst3|registrosss|ACCB|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|inst|D2[9]~7_combout\,
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(9),
	combout => \inst3|inst202|OP1[9]~51_combout\);

-- Location: LCCOMB_X42_Y36_N16
\inst3|inst202|OP1[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[9]~52_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[9]~51_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(9)))) # (!\inst3|inst202|OP1[9]~51_combout\ & (\inst2|inst6|SALIDA\(9))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[9]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(9),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst3|registrosss|ACCA|SALIDA\(9),
	datad => \inst3|inst202|OP1[9]~51_combout\,
	combout => \inst3|inst202|OP1[9]~52_combout\);

-- Location: LCCOMB_X42_Y36_N26
\inst3|inst202|OP1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst202|OP1[9]~52_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[9]~52_combout\,
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X42_Y36_N27
\inst3|inst9|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(9));

-- Location: LCCOMB_X40_Y36_N22
\inst2|muxSel1|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(9)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(9),
	datac => \inst3|registrosss|inst|D1[15]~0_combout\,
	datad => \inst3|inst9|SALIDA\(9),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X40_Y36_N4
\inst2|inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~22_combout\ = (\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (\inst2|inst|Add0~21\ & VCC)) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst2|inst|Add0~21\)))) # (!\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & 
-- (!\inst2|inst|Add0~21\)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst|Add0~21\) # (GND)))))
-- \inst2|inst|Add0~23\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & !\inst2|inst|Add0~21\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ 
-- & ((!\inst2|inst|Add0~21\) # (!\inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~21\,
	combout => \inst2|inst|Add0~22_combout\,
	cout => \inst2|inst|Add0~23\);

-- Location: LCCOMB_X41_Y36_N30
\inst2|inst|opres[10]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~17_combout\ = (\inst2|inst|opres[10]~16_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[10]~16_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~22_combout\,
	combout => \inst2|inst|opres[10]~17_combout\);

-- Location: LCCOMB_X41_Y36_N2
\inst2|inst|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(10) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(10)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[10]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[10]~17_combout\,
	datac => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(10));

-- Location: LCCOMB_X41_Y36_N22
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

-- Location: FF_X41_Y36_N23
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: LCCOMB_X40_Y35_N16
\inst3|inst202|OP2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(10) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[10]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[10]~6_combout\,
	combout => \inst3|inst202|OP2\(10));

-- Location: FF_X40_Y35_N17
\inst3|inst13|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(10));

-- Location: LCCOMB_X40_Y35_N10
\inst2|muxSel2|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(10))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(10),
	datab => \inst3|inst13|SALIDA\(10),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X40_Y36_N6
\inst2|inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~24_combout\ = ((\inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ $ (\inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\ $ (!\inst2|inst|Add0~23\)))) # (GND)
-- \inst2|inst|Add0~25\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst2|inst|Add0~23\))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & (\inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\ & !\inst2|inst|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~23\,
	combout => \inst2|inst|Add0~24_combout\,
	cout => \inst2|inst|Add0~25\);

-- Location: LCCOMB_X41_Y36_N20
\inst2|inst|opres[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~15_combout\ = (\inst2|inst|opres[11]~14_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[11]~14_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~24_combout\,
	combout => \inst2|inst|opres[11]~15_combout\);

-- Location: LCCOMB_X41_Y36_N10
\inst2|inst|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(11) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(11))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[11]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(11),
	datac => \inst2|inst|opres[16]~7clkctrl_outclk\,
	datad => \inst2|inst|opres[11]~15_combout\,
	combout => \inst2|inst|opres\(11));

-- Location: LCCOMB_X41_Y36_N28
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

-- Location: FF_X41_Y36_N29
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: FF_X42_Y36_N23
\inst3|registrosss|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(11));

-- Location: LCCOMB_X43_Y36_N22
\inst3|inst202|OP1[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[11]~47_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|inst|D2[11]~5_combout\) # (!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (\inst3|registrosss|ACCB|SALIDA\(11) & 
-- (\inst3|inst202|OP1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~37_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(11),
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|inst|D2[11]~5_combout\,
	combout => \inst3|inst202|OP1[11]~47_combout\);

-- Location: LCCOMB_X42_Y36_N22
\inst3|inst202|OP1[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[11]~48_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[11]~47_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(11)))) # (!\inst3|inst202|OP1[11]~47_combout\ & (\inst2|inst6|SALIDA\(11))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[11]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(11),
	datac => \inst3|registrosss|ACCA|SALIDA\(11),
	datad => \inst3|inst202|OP1[11]~47_combout\,
	combout => \inst3|inst202|OP1[11]~48_combout\);

-- Location: LCCOMB_X42_Y36_N10
\inst3|inst202|OP1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(11) = (\inst3|inst202|OP1[11]~48_combout\ & ((\inst3|inst11|selsrc\(0)) # (\inst3|inst11|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datac => \inst3|inst202|OP1[11]~48_combout\,
	datad => \inst3|inst11|selsrc\(1),
	combout => \inst3|inst202|OP1\(11));

-- Location: FF_X42_Y36_N11
\inst3|inst9|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(11));

-- Location: LCCOMB_X41_Y37_N24
\inst2|muxSel1|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(11)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|registrosss|inst|D1[15]~0_combout\,
	datac => \inst2|inst6|SALIDA\(11),
	datad => \inst3|inst9|SALIDA\(11),
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X40_Y36_N8
\inst2|inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (\inst2|inst|Add0~25\ & VCC)) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|inst|Add0~25\)))) # (!\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst2|inst|Add0~25\)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & !\inst2|inst|Add0~25\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ 
-- & ((!\inst2|inst|Add0~25\) # (!\inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X39_Y36_N20
\inst2|inst|opres[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~13_combout\ = (\inst2|inst|opres[12]~12_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[12]~12_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~26_combout\,
	combout => \inst2|inst|opres[12]~13_combout\);

-- Location: LCCOMB_X39_Y36_N10
\inst2|inst|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(12) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(12)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[12]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[12]~13_combout\,
	datac => \inst2|inst|opres[16]~7clkctrl_outclk\,
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst|opres\(12));

-- Location: LCCOMB_X39_Y36_N2
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

-- Location: FF_X39_Y36_N3
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: LCCOMB_X39_Y36_N26
\inst3|inst202|OP2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (\inst3|inst11|selsrc\(0) & (!\inst3|inst11|selsrc\(1) & \inst3|registrosss|inst|D2[12]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datad => \inst3|registrosss|inst|D2[12]~4_combout\,
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X39_Y36_N9
\inst3|inst13|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(12),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(12));

-- Location: LCCOMB_X39_Y36_N8
\inst2|muxSel2|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(12))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|SALIDA\(12),
	datac => \inst3|inst13|SALIDA\(12),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X40_Y36_N10
\inst2|inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~28_combout\ = ((\inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ $ (\inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\ $ (!\inst2|inst|Add0~27\)))) # (GND)
-- \inst2|inst|Add0~29\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst2|inst|Add0~27\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & !\inst2|inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~27\,
	combout => \inst2|inst|Add0~28_combout\,
	cout => \inst2|inst|Add0~29\);

-- Location: LCCOMB_X39_Y36_N0
\inst2|inst|opres[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~11_combout\ = (\inst2|inst|opres[13]~10_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[13]~10_combout\,
	datad => \inst2|inst|Add0~28_combout\,
	combout => \inst2|inst|opres[13]~11_combout\);

-- Location: LCCOMB_X39_Y36_N28
\inst2|inst|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(13)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[13]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[13]~11_combout\,
	datac => \inst2|inst|opres[16]~7clkctrl_outclk\,
	datad => \inst2|inst|opres\(13),
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X39_Y36_N4
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

-- Location: FF_X39_Y36_N5
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: LCCOMB_X43_Y36_N10
\inst3|registrosss|ACCB|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|ACCB|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst3|registrosss|ACCB|SALIDA[13]~feeder_combout\);

-- Location: FF_X43_Y36_N11
\inst3|registrosss|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|registrosss|ACCB|SALIDA[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|registrosss|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCB|SALIDA\(13));

-- Location: LCCOMB_X43_Y36_N18
\inst3|registrosss|inst|D2[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|registrosss|inst|D2[13]~3_combout\ = (\inst3|registrosss|ACCB|SALIDA\(13) & ((\inst3|registrosss|inst|D2[6]~0_combout\) # ((\inst2|inst6|SALIDA\(13) & \inst2|inst8|process_0~0_combout\)))) # (!\inst3|registrosss|ACCB|SALIDA\(13) & 
-- (\inst2|inst6|SALIDA\(13) & ((\inst2|inst8|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCB|SALIDA\(13),
	datab => \inst2|inst6|SALIDA\(13),
	datac => \inst3|registrosss|inst|D2[6]~0_combout\,
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst3|registrosss|inst|D2[13]~3_combout\);

-- Location: LCCOMB_X42_Y36_N30
\inst3|inst202|OP2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (!\inst3|inst11|selsrc\(1) & (\inst3|inst11|selsrc\(0) & \inst3|registrosss|inst|D2[13]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|registrosss|inst|D2[13]~3_combout\,
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X42_Y36_N31
\inst3|inst13|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(13));

-- Location: LCCOMB_X42_Y36_N8
\inst2|muxSel2|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\ = (\inst2|inst8|process_0~0_combout\ & ((\inst2|inst6|SALIDA\(13)))) # (!\inst2|inst8|process_0~0_combout\ & (\inst3|inst13|SALIDA\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|SALIDA\(13),
	datac => \inst2|inst8|process_0~0_combout\,
	datad => \inst2|inst6|SALIDA\(13),
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X40_Y36_N12
\inst2|inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~30_combout\ = (\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & (\inst2|inst|Add0~29\ & VCC)) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst2|inst|Add0~29\)))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & 
-- (!\inst2|inst|Add0~29\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|inst|Add0~29\) # (GND)))))
-- \inst2|inst|Add0~31\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & !\inst2|inst|Add0~29\)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ 
-- & ((!\inst2|inst|Add0~29\) # (!\inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[14]~1_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~29\,
	combout => \inst2|inst|Add0~30_combout\,
	cout => \inst2|inst|Add0~31\);

-- Location: LCCOMB_X40_Y38_N22
\inst2|inst|opres[14]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~9_combout\ = (\inst2|inst|opres[14]~8_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~8_combout\,
	datab => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~30_combout\,
	combout => \inst2|inst|opres[14]~9_combout\);

-- Location: LCCOMB_X40_Y38_N18
\inst2|inst|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(14)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~9_combout\,
	datab => \inst2|inst|opres\(14),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X40_Y38_N14
\inst2|inst2|datow[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X40_Y38_N15
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: FF_X42_Y35_N25
\inst3|registrosss|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(14));

-- Location: LCCOMB_X42_Y35_N20
\inst3|inst202|OP1[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[14]~41_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[14]~2_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|registrosss|ACCB|SALIDA\(14) & 
-- \inst3|inst202|OP1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[14]~2_combout\,
	datab => \inst3|registrosss|ACCB|SALIDA\(14),
	datac => \inst3|inst202|OP1[3]~37_combout\,
	datad => \inst3|inst202|OP1[3]~38_combout\,
	combout => \inst3|inst202|OP1[14]~41_combout\);

-- Location: LCCOMB_X42_Y35_N18
\inst3|inst202|OP1[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[14]~42_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[14]~41_combout\ & (\inst3|registrosss|ACCA|SALIDA\(14))) # (!\inst3|inst202|OP1[14]~41_combout\ & ((\inst2|inst6|SALIDA\(14)))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[14]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|ACCA|SALIDA\(14),
	datab => \inst3|inst202|OP1[3]~34_combout\,
	datac => \inst2|inst6|SALIDA\(14),
	datad => \inst3|inst202|OP1[14]~41_combout\,
	combout => \inst3|inst202|OP1[14]~42_combout\);

-- Location: LCCOMB_X41_Y35_N14
\inst3|inst202|OP1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst202|OP1[14]~42_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[14]~42_combout\,
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X41_Y35_N15
\inst3|inst9|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(14));

-- Location: LCCOMB_X41_Y35_N0
\inst2|muxSel1|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(14)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(14),
	datab => \inst3|inst9|SALIDA\(14),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X40_Y36_N14
\inst2|inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~32_combout\ = ((\inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ $ (\inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\ $ (!\inst2|inst|Add0~31\)))) # (GND)
-- \inst2|inst|Add0~33\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst2|inst|Add0~31\))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & (\inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\ & !\inst2|inst|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~31\,
	combout => \inst2|inst|Add0~32_combout\,
	cout => \inst2|inst|Add0~33\);

-- Location: LCCOMB_X40_Y36_N16
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

-- Location: LCCOMB_X39_Y36_N30
\inst2|inst|opres[16]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~38_combout\ = (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0) & \inst2|inst|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst10|selop\(0),
	datac => \inst2|inst|Add0~34_combout\,
	combout => \inst2|inst|opres[16]~38_combout\);

-- Location: LCCOMB_X38_Y36_N18
\inst2|inst|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(16))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[16]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(16),
	datac => \inst2|inst|opres[16]~7clkctrl_outclk\,
	datad => \inst2|inst|opres[16]~38_combout\,
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X38_Y36_N4
\inst2|inst3|ci~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~0_combout\ = (\inst3|inst10|selfalgs\(2) & (((\inst3|inst10|selfalgs\(1))) # (!\inst3|inst10|selfalgs\(0)))) # (!\inst3|inst10|selfalgs\(2) & (((\inst2|inst|opres\(16)) # (!\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(2),
	datab => \inst3|inst10|selfalgs\(0),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~0_combout\);

-- Location: LCCOMB_X38_Y36_N28
\inst3|inst11|selfalgs[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selfalgs\(3) = (!\inst3|inst11|comb~24_combout\ & ((\inst3|inst11|Equal7~0_combout\) # (\inst3|inst11|selfalgs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal7~0_combout\,
	datac => \inst3|inst11|comb~24_combout\,
	datad => \inst3|inst11|selfalgs\(3),
	combout => \inst3|inst11|selfalgs\(3));

-- Location: FF_X38_Y36_N1
\inst3|inst10|selfalgs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst3|inst11|selfalgs\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(3));

-- Location: LCCOMB_X38_Y36_N26
\inst2|inst3|ci~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~1_combout\ = (\inst2|inst3|ci~0_combout\) # (\inst3|inst10|selfalgs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|ci~0_combout\,
	datad => \inst3|inst10|selfalgs\(3),
	combout => \inst2|inst3|ci~1_combout\);

-- Location: LCCOMB_X38_Y36_N6
\inst2|inst3|ci~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~2_combout\ = (\inst3|inst10|selfalgs\(2) & (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selfalgs\(3) & \inst3|inst10|selfalgs\(0)))) # (!\inst3|inst10|selfalgs\(2) & (\inst3|inst10|selfalgs\(1) $ (((\inst3|inst10|selfalgs\(3) & 
-- !\inst3|inst10|selfalgs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selfalgs\(3),
	datac => \inst3|inst10|selfalgs\(0),
	datad => \inst3|inst10|selfalgs\(2),
	combout => \inst2|inst3|ci~2_combout\);

-- Location: LCCOMB_X38_Y36_N8
\inst2|inst3|ci\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst2|inst3|ci~2_combout\ & ((\inst2|inst3|ci~1_combout\))) # (!\inst2|inst3|ci~2_combout\ & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|ci~combout\,
	datac => \inst2|inst3|ci~1_combout\,
	datad => \inst2|inst3|ci~2_combout\,
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X38_Y36_N20
\inst3|inst11|selc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selc~combout\ = (!\inst3|inst11|comb~18_combout\ & ((\inst3|inst11|selc~combout\) # (!\inst3|inst11|selresult[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selresult[0]~0_combout\,
	datac => \inst3|inst11|comb~18_combout\,
	datad => \inst3|inst11|selc~combout\,
	combout => \inst3|inst11|selc~combout\);

-- Location: FF_X39_Y36_N17
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst11|selc~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X38_Y36_N10
\inst3|inst11|cadj\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|cadj~combout\ = (!\inst3|inst11|comb~8_combout\ & ((\inst3|inst11|comb~9_combout\) # (\inst3|inst11|cadj~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~9_combout\,
	datab => \inst3|inst11|comb~8_combout\,
	datad => \inst3|inst11|cadj~combout\,
	combout => \inst3|inst11|cadj~combout\);

-- Location: FF_X39_Y36_N27
\inst3|inst10|cadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst11|cadj~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|cadj~q\);

-- Location: LCCOMB_X39_Y36_N16
\inst2|inst1|sal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|sal~0_combout\ = (\inst3|inst10|selc~q\ & ((\inst3|inst10|cadj~q\))) # (!\inst3|inst10|selc~q\ & (\inst2|inst3|ci~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst3|ci~combout\,
	datac => \inst3|inst10|selc~q\,
	datad => \inst3|inst10|cadj~q\,
	combout => \inst2|inst1|sal~0_combout\);

-- Location: LCCOMB_X40_Y37_N14
\inst2|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~1_cout\ = CARRY(\inst2|inst1|sal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|sal~0_combout\,
	datad => VCC,
	cout => \inst2|inst|Add0~1_cout\);

-- Location: LCCOMB_X40_Y37_N16
\inst2|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~2_combout\ = (\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & (\inst2|inst|Add0~1_cout\ & VCC)) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|inst|Add0~1_cout\)))) # (!\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (!\inst2|inst|Add0~1_cout\)) # (!\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst|Add0~1_cout\) # (GND)))))
-- \inst2|inst|Add0~3\ = CARRY((\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & !\inst2|inst|Add0~1_cout\)) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst2|inst|Add0~1_cout\) # (!\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~1_cout\,
	combout => \inst2|inst|Add0~2_combout\,
	cout => \inst2|inst|Add0~3\);

-- Location: LCCOMB_X40_Y37_N18
\inst2|inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~4_combout\ = ((\inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ $ (\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\ $ (!\inst2|inst|Add0~3\)))) # (GND)
-- \inst2|inst|Add0~5\ = CARRY((\inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst2|inst|Add0~3\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & !\inst2|inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~3\,
	combout => \inst2|inst|Add0~4_combout\,
	cout => \inst2|inst|Add0~5\);

-- Location: LCCOMB_X40_Y38_N12
\inst2|inst|opres[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~34_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ & (\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\,
	datac => \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[1]~34_combout\);

-- Location: LCCOMB_X40_Y38_N6
\inst2|inst|opres[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~35_combout\ = (\inst2|inst|opres[1]~34_combout\) # ((\inst2|inst|Add0~4_combout\ & !\inst3|inst10|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~4_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[1]~34_combout\,
	combout => \inst2|inst|opres[1]~35_combout\);

-- Location: LCCOMB_X40_Y38_N28
\inst2|inst|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(1) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(1))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(1),
	datac => \inst2|inst|opres[1]~35_combout\,
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(1));

-- Location: LCCOMB_X40_Y38_N0
\inst2|inst2|datow[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(1) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(1),
	combout => \inst2|inst2|datow\(1));

-- Location: FF_X40_Y38_N1
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: LCCOMB_X37_Y35_N24
\inst3|inst202|OP2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~3_combout\ = (\inst3|inst11|selsrc\(0) & ((\inst3|inst11|selsrc\(1) & (\inst|inst5|valor_interno\(1))) # (!\inst3|inst11|selsrc\(1) & ((\inst3|registrosss|inst|D2[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selsrc\(0),
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst|inst5|valor_interno\(1),
	datad => \inst3|registrosss|inst|D2[1]~12_combout\,
	combout => \inst3|inst202|OP2[1]~3_combout\);

-- Location: LCCOMB_X39_Y35_N10
\inst3|inst202|OP2[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~4_combout\ = (!\inst3|inst3|Add0~10_combout\ & (!\inst3|inst11|selsrc\(0) & !\inst3|inst3|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|Add0~10_combout\,
	datab => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst3|Add0~8_combout\,
	combout => \inst3|inst202|OP2[1]~4_combout\);

-- Location: LCCOMB_X39_Y35_N8
\inst3|memData|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|memData|Mux14~0_combout\ = (!\inst3|inst3|Add0~0_combout\ & (!\inst3|inst3|Add0~4_combout\ & (!\inst3|inst3|Add0~2_combout\ & !\inst3|inst3|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|Add0~0_combout\,
	datab => \inst3|inst3|Add0~4_combout\,
	datac => \inst3|inst3|Add0~2_combout\,
	datad => \inst3|inst3|Add0~6_combout\,
	combout => \inst3|memData|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y35_N30
\inst3|inst202|OP2[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~5_combout\ = (\inst3|inst202|OP2[1]~3_combout\) # ((\inst3|inst202|OP1[15]~32_combout\ & (\inst3|inst202|OP2[1]~4_combout\ & \inst3|memData|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP2[1]~3_combout\,
	datab => \inst3|inst202|OP1[15]~32_combout\,
	datac => \inst3|inst202|OP2[1]~4_combout\,
	datad => \inst3|memData|Mux14~0_combout\,
	combout => \inst3|inst202|OP2[1]~5_combout\);

-- Location: FF_X39_Y35_N31
\inst3|inst13|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2[1]~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst13|SALIDA\(1));

-- Location: LCCOMB_X40_Y37_N2
\inst2|muxSel2|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\ = (\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(1))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|SALIDA\(1),
	datac => \inst3|inst13|SALIDA\(1),
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|muxSel2|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X39_Y37_N0
\inst2|inst|opres[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~32_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst2|inst|opres[2]~32_combout\);

-- Location: LCCOMB_X39_Y37_N2
\inst2|inst|opres[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~33_combout\ = (\inst2|inst|opres[2]~32_combout\) # ((!\inst3|inst10|selop\(2) & \inst2|inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~6_combout\,
	datac => \inst2|inst|opres[2]~32_combout\,
	combout => \inst2|inst|opres[2]~33_combout\);

-- Location: LCCOMB_X39_Y37_N20
\inst2|inst|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(2)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[2]~33_combout\,
	datac => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X39_Y37_N14
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

-- Location: FF_X39_Y37_N15
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: LCCOMB_X37_Y36_N26
\inst3|inst11|selregr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selregr[3]~1_combout\ = (\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|selregr[3]~1_combout\);

-- Location: LCCOMB_X36_Y36_N10
\inst3|inst11|vf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|vf~combout\ = (!\inst3|inst11|Equal9~0_combout\ & ((\inst3|inst11|selregr[3]~1_combout\) # (\inst3|inst11|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selregr[3]~1_combout\,
	datac => \inst3|inst11|Equal9~0_combout\,
	datad => \inst3|inst11|vf~combout\,
	combout => \inst3|inst11|vf~combout\);

-- Location: LCCOMB_X36_Y36_N18
\inst3|inst10|vf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|vf~0_combout\ = !\inst3|inst11|vf~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst11|vf~combout\,
	combout => \inst3|inst10|vf~0_combout\);

-- Location: FF_X36_Y36_N19
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst10|vf~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X36_Y36_N4
\inst2|inst100|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst100|valor_interno~feeder_combout\ = \inst3|inst10|vf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10|vf~q\,
	combout => \inst2|inst100|valor_interno~feeder_combout\);

-- Location: FF_X36_Y36_N5
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X35_Y36_N15
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: LCCOMB_X35_Y36_N16
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

-- Location: FF_X35_Y36_N17
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X35_Y36_N18
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

-- Location: FF_X35_Y36_N19
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X35_Y36_N20
\inst|inst3|SALIDA[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[5]~16_combout\ = \inst|inst3|SALIDA[4]~15\ $ (\inst|inst3|SALIDA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|SALIDA\(5),
	cin => \inst|inst3|SALIDA[4]~15\,
	combout => \inst|inst3|SALIDA[5]~16_combout\);

-- Location: FF_X35_Y36_N21
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X35_Y36_N4
\inst|inst1|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux30~2_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(2)) # (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux30~2_combout\);

-- Location: LCCOMB_X35_Y36_N0
\inst|inst1|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux30~3_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux30~2_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux30~2_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux30~3_combout\);

-- Location: FF_X35_Y36_N1
\inst|inst5|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux30~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(1));

-- Location: LCCOMB_X34_Y36_N22
\inst3|inst11|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal9~0_combout\ = (\inst|inst5|valor_interno\(1) & (\inst3|inst11|Equal1~0_combout\ & (\inst|inst5|valor_interno\(22) & \inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(1),
	datab => \inst3|inst11|Equal1~0_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst11|Equal9~0_combout\);

-- Location: LCCOMB_X36_Y37_N22
\inst3|inst11|selsrc[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc[1]~4_combout\ = (!\inst3|inst11|Equal0~1_combout\ & (((\inst3|inst11|Equal9~0_combout\ & !\inst3|inst11|Equal1~1_combout\)) # (!\inst3|inst11|cadj~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|cadj~0_combout\,
	datac => \inst3|inst11|Equal1~1_combout\,
	datad => \inst3|inst11|Equal0~1_combout\,
	combout => \inst3|inst11|selsrc[1]~4_combout\);

-- Location: LCCOMB_X36_Y37_N28
\inst3|inst11|comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~16_combout\ = (!\inst3|inst11|selsrc[1]~4_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|Equal11~0_combout\,
	datac => \inst3|inst11|selsrc[1]~4_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~16_combout\);

-- Location: LCCOMB_X36_Y37_N6
\inst3|inst11|comb~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~17_combout\ = (\inst3|inst11|selsrc[1]~4_combout\ & ((\inst3|inst11|Equal9~0_combout\) # ((\inst3|inst11|Equal11~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal9~0_combout\,
	datab => \inst3|inst11|Equal11~0_combout\,
	datac => \inst3|inst11|selsrc[1]~4_combout\,
	datad => \inst3|inst11|selresult[0]~0_combout\,
	combout => \inst3|inst11|comb~17_combout\);

-- Location: LCCOMB_X37_Y37_N20
\inst3|inst11|selsrc[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selsrc\(1) = (!\inst3|inst11|comb~16_combout\ & ((\inst3|inst11|comb~17_combout\) # (\inst3|inst11|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|comb~16_combout\,
	datac => \inst3|inst11|comb~17_combout\,
	datad => \inst3|inst11|selsrc\(1),
	combout => \inst3|inst11|selsrc\(1));

-- Location: FF_X40_Y35_N3
\inst3|registrosss|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(0));

-- Location: LCCOMB_X40_Y35_N0
\inst3|inst202|OP1[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[0]~69_combout\ = (\inst3|inst202|OP1[3]~37_combout\ & ((\inst3|registrosss|inst|D2[0]~13_combout\) # ((!\inst3|inst202|OP1[3]~38_combout\)))) # (!\inst3|inst202|OP1[3]~37_combout\ & (((\inst3|inst202|OP1[3]~38_combout\ & 
-- \inst3|registrosss|ACCB|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registrosss|inst|D2[0]~13_combout\,
	datab => \inst3|inst202|OP1[3]~37_combout\,
	datac => \inst3|inst202|OP1[3]~38_combout\,
	datad => \inst3|registrosss|ACCB|SALIDA\(0),
	combout => \inst3|inst202|OP1[0]~69_combout\);

-- Location: LCCOMB_X40_Y35_N2
\inst3|inst202|OP1[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1[0]~70_combout\ = (\inst3|inst202|OP1[3]~34_combout\ & ((\inst3|inst202|OP1[0]~69_combout\ & ((\inst3|registrosss|ACCA|SALIDA\(0)))) # (!\inst3|inst202|OP1[0]~69_combout\ & (\inst2|inst6|SALIDA\(0))))) # 
-- (!\inst3|inst202|OP1[3]~34_combout\ & (((\inst3|inst202|OP1[0]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst202|OP1[3]~34_combout\,
	datab => \inst2|inst6|SALIDA\(0),
	datac => \inst3|registrosss|ACCA|SALIDA\(0),
	datad => \inst3|inst202|OP1[0]~69_combout\,
	combout => \inst3|inst202|OP1[0]~70_combout\);

-- Location: LCCOMB_X40_Y35_N26
\inst3|inst202|OP1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst202|OP1[0]~70_combout\ & ((\inst3|inst11|selsrc\(1)) # (\inst3|inst11|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selsrc\(1),
	datac => \inst3|inst11|selsrc\(0),
	datad => \inst3|inst202|OP1[0]~70_combout\,
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X40_Y35_N27
\inst3|inst9|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|SALIDA\(0));

-- Location: LCCOMB_X40_Y37_N10
\inst2|muxSel1|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ = (\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst3|inst9|SALIDA\(0))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst2|inst6|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|SALIDA\(0),
	datab => \inst2|inst6|SALIDA\(0),
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X40_Y38_N8
\inst2|inst|opres[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~36_combout\ = (\inst3|inst10|selop\(0) & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~2_combout\)))) # (!\inst3|inst10|selop\(0) & (\inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst3|inst10|selop\(0),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~2_combout\,
	combout => \inst2|inst|opres[0]~36_combout\);

-- Location: LCCOMB_X40_Y38_N30
\inst2|inst|opres[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~37_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst2|inst|opres[0]~36_combout\) # (!\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\))) # 
-- (!\inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & (\inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst2|muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[0]~36_combout\,
	combout => \inst2|inst|opres[0]~37_combout\);

-- Location: LCCOMB_X40_Y38_N10
\inst2|inst|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres\(0))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres[0]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(0),
	datac => \inst2|inst|opres[0]~37_combout\,
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X40_Y38_N26
\inst2|inst2|datow[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X40_Y38_N27
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X35_Y36_N11
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: FF_X35_Y36_N13
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: LCCOMB_X34_Y36_N2
\inst|inst1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~0_combout\ = (\inst|inst3|SALIDA\(1) & \inst|inst1|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst1|Mux31~0_combout\,
	combout => \inst|inst1|Mux11~0_combout\);

-- Location: FF_X34_Y36_N3
\inst|inst5|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux11~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(19));

-- Location: LCCOMB_X35_Y37_N2
\inst3|inst11|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|Equal0~1_combout\ = (\inst|inst5|valor_interno\(19) & (\inst|inst5|valor_interno\(17) & (\inst|inst5|valor_interno\(16) & \inst3|inst11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst3|inst11|Equal0~0_combout\,
	combout => \inst3|inst11|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y37_N12
\inst3|inst11|selresult[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selresult[0]~0_combout\ = (!\inst3|inst11|Equal0~1_combout\ & (!\inst3|inst11|Equal1~1_combout\ & (\inst3|inst11|cadj~0_combout\ & !\inst3|inst11|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|Equal0~1_combout\,
	datab => \inst3|inst11|Equal1~1_combout\,
	datac => \inst3|inst11|cadj~0_combout\,
	datad => \inst3|inst11|Equal7~0_combout\,
	combout => \inst3|inst11|selresult[0]~0_combout\);

-- Location: LCCOMB_X38_Y36_N14
\inst3|inst11|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~5_combout\ = (\inst3|inst11|Equal9~0_combout\) # (!\inst3|inst11|selresult[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst11|selresult[0]~0_combout\,
	datad => \inst3|inst11|Equal9~0_combout\,
	combout => \inst3|inst11|comb~5_combout\);

-- Location: LCCOMB_X38_Y36_N0
\inst3|inst11|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|comb~4_combout\ = (\inst3|inst11|selresult[0]~0_combout\ & (\inst3|inst11|Equal11~0_combout\ & !\inst3|inst11|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|selresult[0]~0_combout\,
	datab => \inst3|inst11|Equal11~0_combout\,
	datad => \inst3|inst11|Equal9~0_combout\,
	combout => \inst3|inst11|comb~4_combout\);

-- Location: LCCOMB_X39_Y36_N12
\inst3|inst11|selresult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst11|selresult\(0) = (!\inst3|inst11|comb~4_combout\ & ((\inst3|inst11|comb~5_combout\) # (\inst3|inst11|selresult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst11|comb~5_combout\,
	datac => \inst3|inst11|comb~4_combout\,
	datad => \inst3|inst11|selresult\(0),
	combout => \inst3|inst11|selresult\(0));

-- Location: FF_X39_Y36_N13
\inst3|inst10|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst11|selresult\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selresult\(0));

-- Location: LCCOMB_X40_Y35_N6
\inst2|inst|opres~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres~39_combout\ = \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\ $ (((\inst2|inst8|process_0~0_combout\ & (\inst2|inst6|SALIDA\(15))) # (!\inst2|inst8|process_0~0_combout\ & ((\inst3|inst13|SALIDA\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst13|SALIDA\(15),
	datac => \inst2|muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datad => \inst2|inst8|process_0~0_combout\,
	combout => \inst2|inst|opres~39_combout\);

-- Location: LCCOMB_X40_Y35_N20
\inst2|inst|opres~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres~4_combout\ = (\inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\) # ((\inst3|registrosss|inst|D1[15]~0_combout\ & ((\inst3|inst9|SALIDA\(15)))) # (!\inst3|registrosss|inst|D1[15]~0_combout\ & (\inst2|inst6|SALIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst9|SALIDA\(15),
	datac => \inst2|muxSel2|$00000|auto_generated|result_node[15]~0_combout\,
	datad => \inst3|registrosss|inst|D1[15]~0_combout\,
	combout => \inst2|inst|opres~4_combout\);

-- Location: LCCOMB_X40_Y38_N24
\inst2|inst|opres[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~5_combout\ = (\inst3|inst10|selop\(0) & (((\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & ((\inst3|inst10|selop\(2) & ((\inst2|inst|opres~4_combout\))) # (!\inst3|inst10|selop\(2) & (\inst2|inst1|sal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|sal~0_combout\,
	datab => \inst3|inst10|selop\(0),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres~4_combout\,
	combout => \inst2|inst|opres[15]~5_combout\);

-- Location: LCCOMB_X40_Y38_N2
\inst2|inst|opres[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~6_combout\ = (\inst3|inst10|selop\(0) & ((\inst2|inst|opres[15]~5_combout\ & (\inst2|inst|opres~39_combout\)) # (!\inst2|inst|opres[15]~5_combout\ & ((\inst2|inst|Add0~32_combout\))))) # (!\inst3|inst10|selop\(0) & 
-- (((\inst2|inst|opres[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres~39_combout\,
	datab => \inst3|inst10|selop\(0),
	datac => \inst2|inst|opres[15]~5_combout\,
	datad => \inst2|inst|Add0~32_combout\,
	combout => \inst2|inst|opres[15]~6_combout\);

-- Location: LCCOMB_X40_Y38_N20
\inst2|inst|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(15) = (GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & ((\inst2|inst|opres\(15)))) # (!GLOBAL(\inst2|inst|opres[16]~7clkctrl_outclk\) & (\inst2|inst|opres[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[15]~6_combout\,
	datab => \inst2|inst|opres\(15),
	datad => \inst2|inst|opres[16]~7clkctrl_outclk\,
	combout => \inst2|inst|opres\(15));

-- Location: LCCOMB_X40_Y38_N16
\inst2|inst2|datow[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X40_Y38_N17
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: FF_X40_Y35_N5
\inst3|registrosss|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|registrosss|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registrosss|ACCA|SALIDA\(15));

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

ww_AccA(15) <= \AccA[15]~output_o\;

ww_AccA(14) <= \AccA[14]~output_o\;

ww_AccA(13) <= \AccA[13]~output_o\;

ww_AccA(12) <= \AccA[12]~output_o\;

ww_AccA(11) <= \AccA[11]~output_o\;

ww_AccA(10) <= \AccA[10]~output_o\;

ww_AccA(9) <= \AccA[9]~output_o\;

ww_AccA(8) <= \AccA[8]~output_o\;

ww_AccA(7) <= \AccA[7]~output_o\;

ww_AccA(6) <= \AccA[6]~output_o\;

ww_AccA(5) <= \AccA[5]~output_o\;

ww_AccA(4) <= \AccA[4]~output_o\;

ww_AccA(3) <= \AccA[3]~output_o\;

ww_AccA(2) <= \AccA[2]~output_o\;

ww_AccA(1) <= \AccA[1]~output_o\;

ww_AccA(0) <= \AccA[0]~output_o\;

ww_AccB(15) <= \AccB[15]~output_o\;

ww_AccB(14) <= \AccB[14]~output_o\;

ww_AccB(13) <= \AccB[13]~output_o\;

ww_AccB(12) <= \AccB[12]~output_o\;

ww_AccB(11) <= \AccB[11]~output_o\;

ww_AccB(10) <= \AccB[10]~output_o\;

ww_AccB(9) <= \AccB[9]~output_o\;

ww_AccB(8) <= \AccB[8]~output_o\;

ww_AccB(7) <= \AccB[7]~output_o\;

ww_AccB(6) <= \AccB[6]~output_o\;

ww_AccB(5) <= \AccB[5]~output_o\;

ww_AccB(4) <= \AccB[4]~output_o\;

ww_AccB(3) <= \AccB[3]~output_o\;

ww_AccB(2) <= \AccB[2]~output_o\;

ww_AccB(1) <= \AccB[1]~output_o\;

ww_AccB(0) <= \AccB[0]~output_o\;

ww_dato(15) <= \dato[15]~output_o\;

ww_dato(14) <= \dato[14]~output_o\;

ww_dato(13) <= \dato[13]~output_o\;

ww_dato(12) <= \dato[12]~output_o\;

ww_dato(11) <= \dato[11]~output_o\;

ww_dato(10) <= \dato[10]~output_o\;

ww_dato(9) <= \dato[9]~output_o\;

ww_dato(8) <= \dato[8]~output_o\;

ww_dato(7) <= \dato[7]~output_o\;

ww_dato(6) <= \dato[6]~output_o\;

ww_dato(5) <= \dato[5]~output_o\;

ww_dato(4) <= \dato[4]~output_o\;

ww_dato(3) <= \dato[3]~output_o\;

ww_dato(2) <= \dato[2]~output_o\;

ww_dato(1) <= \dato[1]~output_o\;

ww_dato(0) <= \dato[0]~output_o\;

ww_instr(15) <= \instr[15]~output_o\;

ww_instr(14) <= \instr[14]~output_o\;

ww_instr(13) <= \instr[13]~output_o\;

ww_instr(12) <= \instr[12]~output_o\;

ww_instr(11) <= \instr[11]~output_o\;

ww_instr(10) <= \instr[10]~output_o\;

ww_instr(9) <= \instr[9]~output_o\;

ww_instr(8) <= \instr[8]~output_o\;

ww_instr(7) <= \instr[7]~output_o\;

ww_instr(6) <= \instr[6]~output_o\;

ww_instr(5) <= \instr[5]~output_o\;

ww_instr(4) <= \instr[4]~output_o\;

ww_instr(3) <= \instr[3]~output_o\;

ww_instr(2) <= \instr[2]~output_o\;

ww_instr(1) <= \instr[1]~output_o\;

ww_instr(0) <= \instr[0]~output_o\;
END structure;


