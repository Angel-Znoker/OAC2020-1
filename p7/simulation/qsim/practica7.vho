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

-- DATE "10/26/2019 16:36:59"

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

ENTITY 	practica7 IS
    PORT (
	AccA_sal : OUT std_logic_vector(7 DOWNTO 0);
	rst : IN std_logic;
	clk : IN std_logic;
	AccB_sal : OUT std_logic_vector(7 DOWNTO 0);
	EdoPres : OUT std_logic_vector(11 DOWNTO 0)
	);
END practica7;

-- Design Ports Information
-- AccA_sal[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccA_sal[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AccB_sal[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[9]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EdoPres[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AccA_sal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_AccB_sal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EdoPres : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \AccA_sal[7]~output_o\ : std_logic;
SIGNAL \AccA_sal[6]~output_o\ : std_logic;
SIGNAL \AccA_sal[5]~output_o\ : std_logic;
SIGNAL \AccA_sal[4]~output_o\ : std_logic;
SIGNAL \AccA_sal[3]~output_o\ : std_logic;
SIGNAL \AccA_sal[2]~output_o\ : std_logic;
SIGNAL \AccA_sal[1]~output_o\ : std_logic;
SIGNAL \AccA_sal[0]~output_o\ : std_logic;
SIGNAL \AccB_sal[7]~output_o\ : std_logic;
SIGNAL \AccB_sal[6]~output_o\ : std_logic;
SIGNAL \AccB_sal[5]~output_o\ : std_logic;
SIGNAL \AccB_sal[4]~output_o\ : std_logic;
SIGNAL \AccB_sal[3]~output_o\ : std_logic;
SIGNAL \AccB_sal[2]~output_o\ : std_logic;
SIGNAL \AccB_sal[1]~output_o\ : std_logic;
SIGNAL \AccB_sal[0]~output_o\ : std_logic;
SIGNAL \EdoPres[11]~output_o\ : std_logic;
SIGNAL \EdoPres[10]~output_o\ : std_logic;
SIGNAL \EdoPres[9]~output_o\ : std_logic;
SIGNAL \EdoPres[8]~output_o\ : std_logic;
SIGNAL \EdoPres[7]~output_o\ : std_logic;
SIGNAL \EdoPres[6]~output_o\ : std_logic;
SIGNAL \EdoPres[5]~output_o\ : std_logic;
SIGNAL \EdoPres[4]~output_o\ : std_logic;
SIGNAL \EdoPres[3]~output_o\ : std_logic;
SIGNAL \EdoPres[2]~output_o\ : std_logic;
SIGNAL \EdoPres[1]~output_o\ : std_logic;
SIGNAL \EdoPres[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \secueciador|inst7|Equal11~2_combout\ : std_logic;
SIGNAL \inst14[7]~0_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[10]~30\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal14~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal14~2_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal15~0_combout\ : std_logic;
SIGNAL \secueciador|inst|BD~q\ : std_logic;
SIGNAL \secueciador|inst7|Equal16~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal17~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~6_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~11_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal14~3_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal13~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~12_combout\ : std_logic;
SIGNAL \secueciador|inst|instruccion[0]~2_combout\ : std_logic;
SIGNAL \secueciador|inst|instruccion[0]~3_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[28]~33_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~0_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~22_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~1\ : std_logic;
SIGNAL \Contador-programa|Add0~2_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~23_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~3\ : std_logic;
SIGNAL \Contador-programa|Add0~4_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal3~4_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal12~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[67]~25_combout\ : std_logic;
SIGNAL \secueciador|inst|nWA~q\ : std_logic;
SIGNAL \AccA|C[2]~5_combout\ : std_logic;
SIGNAL \AccA|data_out[2]~5_combout\ : std_logic;
SIGNAL \secueciador|inst|nWB~q\ : std_logic;
SIGNAL \secueciador|inst7|Equal6~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal7~0_combout\ : std_logic;
SIGNAL \secueciador|inst|instruccion[0]~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[71]~18_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[71]~19_combout\ : std_logic;
SIGNAL \AccB|C[2]~5_combout\ : std_logic;
SIGNAL \AccB|data_out[2]~5_combout\ : std_logic;
SIGNAL \AccB|data_out[0]~8_combout\ : std_logic;
SIGNAL \AccB|B[2]~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[44]~31_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[44]~32_combout\ : std_logic;
SIGNAL \secueciador|inst|nERA1~q\ : std_logic;
SIGNAL \Auxiliar|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~5_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~8_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~27_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~29_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~34_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~35_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[27]~36_combout\ : std_logic;
SIGNAL \secueciador|inst|nCBD~q\ : std_logic;
SIGNAL \inst9[2]~5_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~7\ : std_logic;
SIGNAL \Contador-programa|Add0~8_combout\ : std_logic;
SIGNAL \AccA|C[4]~3_combout\ : std_logic;
SIGNAL \AccA|data_out[4]~3_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[26]~26_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[26]~28_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[26]~30_combout\ : std_logic;
SIGNAL \secueciador|inst|nAS~q\ : std_logic;
SIGNAL \inst9[1]~7_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Yupa[6]~10_combout\ : std_logic;
SIGNAL \inst10|data[7]~0_combout\ : std_logic;
SIGNAL \AccA|C[6]~1_combout\ : std_logic;
SIGNAL \AccA|data_out[6]~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[67]~21_combout\ : std_logic;
SIGNAL \secueciador|inst|nDUPA~q\ : std_logic;
SIGNAL \AccA|B[7]~0_combout\ : std_logic;
SIGNAL \inst17|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \AccB|B[7]~0_combout\ : std_logic;
SIGNAL \inst17|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \inst10|data[7]~1_combout\ : std_logic;
SIGNAL \AccB|C[6]~1_combout\ : std_logic;
SIGNAL \AccB|data_out[6]~1_combout\ : std_logic;
SIGNAL \inst17|Mux34~0_combout\ : std_logic;
SIGNAL \AccB|C[5]~2_combout\ : std_logic;
SIGNAL \inst10|data_out[5]~3_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~3_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~5_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~7_combout\ : std_logic;
SIGNAL \AccB|C[3]~4_combout\ : std_logic;
SIGNAL \AccB|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst17|Mux31~0_combout\ : std_logic;
SIGNAL \AccA|data_out[3]~4_combout\ : std_logic;
SIGNAL \AccA|data_out[0]~8_combout\ : std_logic;
SIGNAL \AccA|C[3]~4_combout\ : std_logic;
SIGNAL \inst17|Mux30~0_combout\ : std_logic;
SIGNAL \AccB|C[1]~6_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst17|Yupa[1]~29_combout\ : std_logic;
SIGNAL \AccB|C[0]~7_combout\ : std_logic;
SIGNAL \AccA|C[0]~7_combout\ : std_logic;
SIGNAL \AccA|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst17|Yupa2[0]~23_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal9~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[9]~22_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[9]~37_combout\ : std_logic;
SIGNAL \secueciador|inst|CC~q\ : std_logic;
SIGNAL \AccA|C[7]~0_combout\ : std_logic;
SIGNAL \inst17|Add0~15\ : std_logic;
SIGNAL \inst17|Add0~17\ : std_logic;
SIGNAL \inst17|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst|valor_interno~q\ : std_logic;
SIGNAL \inst17|Add0~1_cout\ : std_logic;
SIGNAL \inst17|Add0~2_combout\ : std_logic;
SIGNAL \inst17|Yupa[0]~32_combout\ : std_logic;
SIGNAL \inst17|Yupa2[0]~24_combout\ : std_logic;
SIGNAL \inst17|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \AccB|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst17|Mux27~0_combout\ : std_logic;
SIGNAL \inst17|Add0~3\ : std_logic;
SIGNAL \inst17|Add0~4_combout\ : std_logic;
SIGNAL \inst17|Yupa[1]~27_combout\ : std_logic;
SIGNAL \inst17|Yupa2[1]~20_combout\ : std_logic;
SIGNAL \inst17|Yupa2[1]~21_combout\ : std_logic;
SIGNAL \inst17|Yupa2[1]~22_combout\ : std_logic;
SIGNAL \AccB|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst17|Mux29~0_combout\ : std_logic;
SIGNAL \inst17|Add0~5\ : std_logic;
SIGNAL \inst17|Add0~7\ : std_logic;
SIGNAL \inst17|Add0~8_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[43]~17_combout\ : std_logic;
SIGNAL \secueciador|inst|nERA0~q\ : std_logic;
SIGNAL \Auxiliar|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~6_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~8_combout\ : std_logic;
SIGNAL \inst17|Yupa[3]~20_combout\ : std_logic;
SIGNAL \AccB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \AccA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst17|Yupa[3]~19_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~4_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~5_combout\ : std_logic;
SIGNAL \Buffer-Baja|PortL[4]~2_combout\ : std_logic;
SIGNAL \inst17|Yupa[3]~21_combout\ : std_logic;
SIGNAL \inst17|Yupa2[3]~14_combout\ : std_logic;
SIGNAL \inst17|Yupa2[3]~15_combout\ : std_logic;
SIGNAL \inst17|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~9_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~11_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~13_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~15_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~1_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~2_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~4_combout\ : std_logic;
SIGNAL \inst17|Yupa[5]~12_combout\ : std_logic;
SIGNAL \inst17|Yupa[5]~14_combout\ : std_logic;
SIGNAL \inst17|Yupa[5]~15_combout\ : std_logic;
SIGNAL \AccA|data_out[5]~2_combout\ : std_logic;
SIGNAL \AccA|C[5]~2_combout\ : std_logic;
SIGNAL \AccB|C[4]~3_combout\ : std_logic;
SIGNAL \AccB|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst17|Mux32~0_combout\ : std_logic;
SIGNAL \inst17|Add0~9\ : std_logic;
SIGNAL \inst17|Add0~11\ : std_logic;
SIGNAL \inst17|Add0~12_combout\ : std_logic;
SIGNAL \inst17|Yupa[5]~13_combout\ : std_logic;
SIGNAL \inst17|Yupa2[5]~8_combout\ : std_logic;
SIGNAL \inst17|Yupa2[5]~9_combout\ : std_logic;
SIGNAL \inst17|Yupa2[5]~10_combout\ : std_logic;
SIGNAL \AccB|data_out[5]~2_combout\ : std_logic;
SIGNAL \inst17|Mux33~0_combout\ : std_logic;
SIGNAL \inst17|Add0~13\ : std_logic;
SIGNAL \inst17|Add0~14_combout\ : std_logic;
SIGNAL \inst17|Yupa[6]~8_combout\ : std_logic;
SIGNAL \inst17|Yupa2[6]~5_combout\ : std_logic;
SIGNAL \inst17|Yupa2[6]~6_combout\ : std_logic;
SIGNAL \inst17|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \inst17|Yupa[6]~7_combout\ : std_logic;
SIGNAL \inst17|Yupa[6]~9_combout\ : std_logic;
SIGNAL \inst17|Yupa[6]~11_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~9\ : std_logic;
SIGNAL \Contador-programa|Add0~10_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~18_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~11\ : std_logic;
SIGNAL \Contador-programa|Add0~12_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~17_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~13\ : std_logic;
SIGNAL \Contador-programa|Add0~14_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~16_combout\ : std_logic;
SIGNAL \inst9[7]~0_combout\ : std_logic;
SIGNAL \inst9[5]~2_combout\ : std_logic;
SIGNAL \inst9[6]~1_combout\ : std_logic;
SIGNAL \inst17|Yupa[2]~3_combout\ : std_logic;
SIGNAL \inst10|data_out[0]~0_combout\ : std_logic;
SIGNAL \inst10|data_out[0]~2_combout\ : std_logic;
SIGNAL \Buffer-Alta|PortL[4]~2_combout\ : std_logic;
SIGNAL \inst17|Yupa2[4]~11_combout\ : std_logic;
SIGNAL \inst17|Add0~10_combout\ : std_logic;
SIGNAL \inst17|Yupa2[4]~12_combout\ : std_logic;
SIGNAL \inst17|Yupa2[4]~13_combout\ : std_logic;
SIGNAL \inst17|Yupa[4]~16_combout\ : std_logic;
SIGNAL \inst17|Yupa[4]~17_combout\ : std_logic;
SIGNAL \inst17|Yupa[4]~18_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~19_combout\ : std_logic;
SIGNAL \inst9[4]~3_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Yupa[2]~22_combout\ : std_logic;
SIGNAL \inst17|Yupa2[2]~17_combout\ : std_logic;
SIGNAL \inst17|Add0~6_combout\ : std_logic;
SIGNAL \inst17|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \inst17|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \inst17|Yupa[2]~24_combout\ : std_logic;
SIGNAL \AccB|A[2]~0_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~10_combout\ : std_logic;
SIGNAL \inst17|Yupa[2]~23_combout\ : std_logic;
SIGNAL \inst17|Yupa[2]~25_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~21_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~5\ : std_logic;
SIGNAL \Contador-programa|Add0~6_combout\ : std_logic;
SIGNAL \Contador-programa|Add0~20_combout\ : std_logic;
SIGNAL \inst9[3]~4_combout\ : std_logic;
SIGNAL \inst10|data_out[7]~1_combout\ : std_logic;
SIGNAL \inst17|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \inst17|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \inst17|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~0_combout\ : std_logic;
SIGNAL \secueciador|inst4|SELECTOR~0_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[1]~12\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[2]~14\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal3~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal14~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal18~0_combout\ : std_logic;
SIGNAL \secueciador|inst|nEPC0~q\ : std_logic;
SIGNAL \inst9[0]~6_combout\ : std_logic;
SIGNAL \inst10|data_out[0]~4_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~12_combout\ : std_logic;
SIGNAL \Auxiliar|data_out~14_combout\ : std_logic;
SIGNAL \inst17|Yupa[0]~31_combout\ : std_logic;
SIGNAL \inst17|Yupa[0]~33_combout\ : std_logic;
SIGNAL \inst17|Yupa[0]~34_combout\ : std_logic;
SIGNAL \inst14[0]~7_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[3]~16\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[4]~18\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[5]~20\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst14[2]~5_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[6]~22\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst14[3]~4_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal3~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[87]~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[87]~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data~2_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[87]~3_combout\ : std_logic;
SIGNAL \secueciador|inst4|SELECTOR~1_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~2_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~3_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal0~4_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[87]~4_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal3~2_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal3~3_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal4~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal10~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[68]~23_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[68]~24_combout\ : std_logic;
SIGNAL \AccA|C[1]~6_combout\ : std_logic;
SIGNAL \AccA|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst17|Yupa[1]~26_combout\ : std_logic;
SIGNAL \inst17|Yupa[1]~28_combout\ : std_logic;
SIGNAL \inst17|Yupa[1]~30_combout\ : std_logic;
SIGNAL \inst14[1]~6_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal11~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal11~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[74]~10_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal19~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~14_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[74]~16_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal1~0_combout\ : std_logic;
SIGNAL \secueciador|inst|nCRI~q\ : std_logic;
SIGNAL \inst14[4]~3_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[7]~24\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[8]~26\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst14[5]~2_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[9]~28\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst14[6]~1_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal5~0_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~5_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~7_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~9_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~13_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[86]~15_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \secueciador|inst9|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \secueciador|inst7|Equal8~0_combout\ : std_logic;
SIGNAL \secueciador|inst|instruccion[0]~1_combout\ : std_logic;
SIGNAL \secueciador|inst7|data[69]~20_combout\ : std_logic;
SIGNAL \AccB|C[7]~0_combout\ : std_logic;
SIGNAL \AccB|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst17|Mux35~0_combout\ : std_logic;
SIGNAL \inst17|Add0~16_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~1_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~0_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~2_combout\ : std_logic;
SIGNAL \inst17|Yupa[7]~6_combout\ : std_logic;
SIGNAL \AccA|data_out[7]~0_combout\ : std_logic;
SIGNAL \Auxiliar|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \secueciador|inst|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst17|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AccA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AccB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruccion|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \secueciador|inst9|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \secueciador|inst|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Contador-programa|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \secueciador|inst|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \secueciador|inst|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \secueciador|inst|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \secueciador|inst|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst17|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst17|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \secueciador|inst|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \secueciador|inst|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \secueciador|inst|ALT_INV_nDUPA~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

AccA_sal <= ww_AccA_sal;
ww_rst <= rst;
ww_clk <= clk;
AccB_sal <= ww_AccB_sal;
EdoPres <= ww_EdoPres;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\secueciador|inst|ALT_INV_EA\(0) <= NOT \secueciador|inst|EA\(0);
\secueciador|inst|ALT_INV_nDUPA~q\ <= NOT \secueciador|inst|nDUPA~q\;
\secueciador|inst|ALT_INV_EA\(1) <= NOT \secueciador|inst|EA\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X26_Y39_N9
\AccA_sal[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(7),
	devoe => ww_devoe,
	o => \AccA_sal[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\AccA_sal[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(6),
	devoe => ww_devoe,
	o => \AccA_sal[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\AccA_sal[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(5),
	devoe => ww_devoe,
	o => \AccA_sal[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\AccA_sal[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(4),
	devoe => ww_devoe,
	o => \AccA_sal[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\AccA_sal[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(3),
	devoe => ww_devoe,
	o => \AccA_sal[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\AccA_sal[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(2),
	devoe => ww_devoe,
	o => \AccA_sal[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\AccA_sal[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(1),
	devoe => ww_devoe,
	o => \AccA_sal[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\AccA_sal[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccA|data_out\(0),
	devoe => ww_devoe,
	o => \AccA_sal[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\AccB_sal[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(7),
	devoe => ww_devoe,
	o => \AccB_sal[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\AccB_sal[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(6),
	devoe => ww_devoe,
	o => \AccB_sal[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\AccB_sal[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(5),
	devoe => ww_devoe,
	o => \AccB_sal[5]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\AccB_sal[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(4),
	devoe => ww_devoe,
	o => \AccB_sal[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\AccB_sal[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(3),
	devoe => ww_devoe,
	o => \AccB_sal[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\AccB_sal[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(2),
	devoe => ww_devoe,
	o => \AccB_sal[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\AccB_sal[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(1),
	devoe => ww_devoe,
	o => \AccB_sal[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\AccB_sal[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccB|data_out\(0),
	devoe => ww_devoe,
	o => \AccB_sal[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\EdoPres[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	devoe => ww_devoe,
	o => \EdoPres[11]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\EdoPres[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	devoe => ww_devoe,
	o => \EdoPres[10]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\EdoPres[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	devoe => ww_devoe,
	o => \EdoPres[9]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\EdoPres[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	devoe => ww_devoe,
	o => \EdoPres[8]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\EdoPres[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	devoe => ww_devoe,
	o => \EdoPres[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\EdoPres[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \EdoPres[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\EdoPres[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	devoe => ww_devoe,
	o => \EdoPres[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\EdoPres[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	devoe => ww_devoe,
	o => \EdoPres[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\EdoPres[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\,
	devoe => ww_devoe,
	o => \EdoPres[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\EdoPres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	devoe => ww_devoe,
	o => \EdoPres[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\EdoPres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	devoe => ww_devoe,
	o => \EdoPres[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\EdoPres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	devoe => ww_devoe,
	o => \EdoPres[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X42_Y36_N28
\secueciador|inst9|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[0]~33_combout\ = !\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \secueciador|inst9|valor_interno[0]~33_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X42_Y36_N29
\secueciador|inst9|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[0]~33_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(0));

-- Location: LCCOMB_X41_Y36_N10
\secueciador|inst7|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal11~2_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & (\secueciador|inst7|Equal11~1_combout\ & !\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|inst7|Equal11~1_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \secueciador|inst7|Equal11~2_combout\);

-- Location: LCCOMB_X35_Y36_N4
\inst14[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[7]~0_combout\ = (\inst17|Yupa[7]~6_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[7]~6_combout\,
	combout => \inst14[7]~0_combout\);

-- Location: FF_X35_Y36_N5
\instruccion|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[7]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(11));

-- Location: LCCOMB_X43_Y36_N28
\secueciador|inst9|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[10]~29_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|inst9|valor_interno[9]~28\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & 
-- ((\secueciador|inst9|valor_interno[9]~28\) # (GND)))
-- \secueciador|inst9|valor_interno[10]~30\ = CARRY((!\secueciador|inst9|valor_interno[9]~28\) # (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[9]~28\,
	combout => \secueciador|inst9|valor_interno[10]~29_combout\,
	cout => \secueciador|inst9|valor_interno[10]~30\);

-- Location: LCCOMB_X43_Y36_N30
\secueciador|inst9|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[11]~31_combout\ = \secueciador|inst9|valor_interno[10]~30\ $ (!\secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	cin => \secueciador|inst9|valor_interno[10]~30\,
	combout => \secueciador|inst9|valor_interno[11]~31_combout\);

-- Location: FF_X43_Y36_N31
\secueciador|inst9|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[11]~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(11));

-- Location: LCCOMB_X39_Y36_N0
\secueciador|inst7|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal14~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\ & 
-- \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	combout => \secueciador|inst7|Equal14~0_combout\);

-- Location: LCCOMB_X40_Y36_N28
\secueciador|inst7|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal14~2_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & (\secueciador|inst7|Equal14~0_combout\ & \secueciador|inst7|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \secueciador|inst7|Equal14~0_combout\,
	datad => \secueciador|inst7|Equal3~1_combout\,
	combout => \secueciador|inst7|Equal14~2_combout\);

-- Location: LCCOMB_X40_Y36_N30
\secueciador|inst7|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal15~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & 
-- \secueciador|inst7|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \secueciador|inst7|Equal14~2_combout\,
	combout => \secueciador|inst7|Equal15~0_combout\);

-- Location: FF_X38_Y36_N27
\secueciador|inst|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \secueciador|inst7|Equal15~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|BD~q\);

-- Location: LCCOMB_X36_Y36_N18
\secueciador|inst7|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal16~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & (\secueciador|inst7|Equal14~0_combout\ & 
-- \secueciador|inst7|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \secueciador|inst7|Equal14~0_combout\,
	datad => \secueciador|inst7|Equal3~1_combout\,
	combout => \secueciador|inst7|Equal16~0_combout\);

-- Location: LCCOMB_X36_Y36_N16
\secueciador|inst7|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal17~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & \secueciador|inst7|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal16~0_combout\,
	combout => \secueciador|inst7|Equal17~0_combout\);

-- Location: FF_X38_Y36_N25
\secueciador|inst|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \secueciador|inst7|Equal17~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|RA\(0));

-- Location: LCCOMB_X39_Y36_N22
\secueciador|inst7|data[86]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~6_combout\ = (!\secueciador|inst7|Equal8~0_combout\ & (!\secueciador|inst7|Equal4~0_combout\ & (!\secueciador|inst7|Equal15~0_combout\ & !\secueciador|inst7|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal8~0_combout\,
	datab => \secueciador|inst7|Equal4~0_combout\,
	datac => \secueciador|inst7|Equal15~0_combout\,
	datad => \secueciador|inst7|Equal17~0_combout\,
	combout => \secueciador|inst7|data[86]~6_combout\);

-- Location: LCCOMB_X40_Y36_N14
\secueciador|inst7|data[86]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~11_combout\ = ((!\secueciador|inst7|Equal3~3_combout\) # (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|data[86]~11_combout\);

-- Location: LCCOMB_X40_Y36_N8
\secueciador|inst7|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal14~3_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & 
-- \secueciador|inst7|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \secueciador|inst7|Equal14~2_combout\,
	combout => \secueciador|inst7|Equal14~3_combout\);

-- Location: LCCOMB_X40_Y36_N20
\secueciador|inst7|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal13~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & \secueciador|inst7|Equal11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal11~1_combout\,
	combout => \secueciador|inst7|Equal13~0_combout\);

-- Location: LCCOMB_X40_Y36_N22
\secueciador|inst7|data[27]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~12_combout\ = (\secueciador|inst7|data[86]~11_combout\ & (!\secueciador|inst7|Equal14~3_combout\ & !\secueciador|inst7|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|data[86]~11_combout\,
	datac => \secueciador|inst7|Equal14~3_combout\,
	datad => \secueciador|inst7|Equal13~0_combout\,
	combout => \secueciador|inst7|data[27]~12_combout\);

-- Location: LCCOMB_X40_Y36_N16
\secueciador|inst|instruccion[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst|instruccion[0]~2_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\) # (((!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\)) # (!\secueciador|inst7|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \secueciador|inst7|Equal14~2_combout\,
	combout => \secueciador|inst|instruccion[0]~2_combout\);

-- Location: LCCOMB_X37_Y36_N6
\secueciador|inst|instruccion[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst|instruccion[0]~3_combout\ = (\secueciador|inst7|data[27]~12_combout\ & (\secueciador|inst|instruccion[0]~2_combout\ & (\secueciador|inst|instruccion[0]~1_combout\ & \secueciador|inst7|data[74]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[27]~12_combout\,
	datab => \secueciador|inst|instruccion[0]~2_combout\,
	datac => \secueciador|inst|instruccion[0]~1_combout\,
	datad => \secueciador|inst7|data[74]~10_combout\,
	combout => \secueciador|inst|instruccion[0]~3_combout\);

-- Location: LCCOMB_X37_Y36_N0
\secueciador|inst7|data[28]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[28]~33_combout\ = (\secueciador|inst7|Equal1~0_combout\) # (((\secueciador|inst7|Equal18~0_combout\ & \secueciador|inst|instruccion[0]~3_combout\)) # (!\secueciador|inst7|data[86]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal18~0_combout\,
	datab => \secueciador|inst7|Equal1~0_combout\,
	datac => \secueciador|inst7|data[86]~6_combout\,
	datad => \secueciador|inst|instruccion[0]~3_combout\,
	combout => \secueciador|inst7|data[28]~33_combout\);

-- Location: FF_X37_Y36_N1
\secueciador|inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[28]~33_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|PC\(0));

-- Location: LCCOMB_X34_Y36_N6
\Contador-programa|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~0_combout\ = \Contador-programa|data_out\(0) $ (VCC)
-- \Contador-programa|Add0~1\ = CARRY(\Contador-programa|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador-programa|data_out\(0),
	datad => VCC,
	combout => \Contador-programa|Add0~0_combout\,
	cout => \Contador-programa|Add0~1\);

-- Location: LCCOMB_X35_Y36_N18
\Contador-programa|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~22_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[0]~34_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~0_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|Add0~0_combout\,
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nEPC0~q\,
	datad => \inst17|Yupa[0]~34_combout\,
	combout => \Contador-programa|Add0~22_combout\);

-- Location: FF_X35_Y36_N19
\Contador-programa|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(0));

-- Location: LCCOMB_X34_Y36_N8
\Contador-programa|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~2_combout\ = (\Contador-programa|data_out\(1) & (!\Contador-programa|Add0~1\)) # (!\Contador-programa|data_out\(1) & ((\Contador-programa|Add0~1\) # (GND)))
-- \Contador-programa|Add0~3\ = CARRY((!\Contador-programa|Add0~1\) # (!\Contador-programa|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador-programa|data_out\(1),
	datad => VCC,
	cin => \Contador-programa|Add0~1\,
	combout => \Contador-programa|Add0~2_combout\,
	cout => \Contador-programa|Add0~3\);

-- Location: LCCOMB_X34_Y36_N24
\Contador-programa|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~23_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[1]~30_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~2_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \secueciador|inst|nEPC0~q\,
	datac => \Contador-programa|Add0~2_combout\,
	datad => \inst17|Yupa[1]~30_combout\,
	combout => \Contador-programa|Add0~23_combout\);

-- Location: FF_X34_Y36_N25
\Contador-programa|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(1));

-- Location: LCCOMB_X34_Y36_N10
\Contador-programa|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~4_combout\ = (\Contador-programa|data_out\(2) & (\Contador-programa|Add0~3\ $ (GND))) # (!\Contador-programa|data_out\(2) & (!\Contador-programa|Add0~3\ & VCC))
-- \Contador-programa|Add0~5\ = CARRY((\Contador-programa|data_out\(2) & !\Contador-programa|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador-programa|data_out\(2),
	datad => VCC,
	cin => \Contador-programa|Add0~3\,
	combout => \Contador-programa|Add0~4_combout\,
	cout => \Contador-programa|Add0~5\);

-- Location: LCCOMB_X39_Y36_N16
\secueciador|inst7|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal3~4_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal3~4_combout\);

-- Location: LCCOMB_X42_Y36_N4
\secueciador|inst7|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal12~0_combout\ = ((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\) # (!\secueciador|inst7|Equal11~1_combout\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|inst7|Equal11~1_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	combout => \secueciador|inst7|Equal12~0_combout\);

-- Location: LCCOMB_X38_Y35_N4
\secueciador|inst7|data[67]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[67]~25_combout\ = (!\secueciador|inst7|Equal3~4_combout\ & (\secueciador|inst7|data[87]~1_combout\ & ((\secueciador|inst7|Equal4~0_combout\) # (!\secueciador|inst7|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal4~0_combout\,
	datab => \secueciador|inst7|Equal3~4_combout\,
	datac => \secueciador|inst7|data[87]~1_combout\,
	datad => \secueciador|inst7|Equal12~0_combout\,
	combout => \secueciador|inst7|data[67]~25_combout\);

-- Location: FF_X38_Y35_N5
\secueciador|inst|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[67]~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nWA~q\);

-- Location: LCCOMB_X36_Y34_N18
\AccA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[2]~5_combout\ = ((\AccA|data_out\(2)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(2),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[2]~5_combout\);

-- Location: LCCOMB_X36_Y34_N30
\AccA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[2]~5_combout\ = (\secueciador|inst|EA\(1) & (\AccA|C[2]~5_combout\)) # (!\secueciador|inst|EA\(1) & ((\inst17|Yupa[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|C[2]~5_combout\,
	datad => \inst17|Yupa[2]~25_combout\,
	combout => \AccA|data_out[2]~5_combout\);

-- Location: FF_X39_Y36_N13
\secueciador|inst|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|Equal8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nWB~q\);

-- Location: LCCOMB_X42_Y36_N12
\secueciador|inst7|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal6~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal6~0_combout\);

-- Location: LCCOMB_X39_Y36_N6
\secueciador|inst7|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal7~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal7~0_combout\);

-- Location: LCCOMB_X37_Y36_N2
\secueciador|inst|instruccion[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst|instruccion[0]~0_combout\ = (\secueciador|inst7|data[87]~1_combout\ & (!\secueciador|inst7|Equal7~0_combout\ & (!\secueciador|inst7|Equal3~4_combout\ & !\secueciador|inst7|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[87]~1_combout\,
	datab => \secueciador|inst7|Equal7~0_combout\,
	datac => \secueciador|inst7|Equal3~4_combout\,
	datad => \secueciador|inst7|Equal5~0_combout\,
	combout => \secueciador|inst|instruccion[0]~0_combout\);

-- Location: LCCOMB_X42_Y36_N6
\secueciador|inst7|data[71]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[71]~18_combout\ = (\secueciador|inst7|Equal8~0_combout\ & (!\secueciador|inst7|Equal4~0_combout\ & (\secueciador|inst|instruccion[0]~0_combout\ & !\secueciador|inst7|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal8~0_combout\,
	datab => \secueciador|inst7|Equal4~0_combout\,
	datac => \secueciador|inst|instruccion[0]~0_combout\,
	datad => \secueciador|inst7|Equal6~0_combout\,
	combout => \secueciador|inst7|data[71]~18_combout\);

-- Location: LCCOMB_X42_Y36_N22
\secueciador|inst7|data[71]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[71]~19_combout\ = (\secueciador|inst7|data[71]~18_combout\) # ((\secueciador|inst7|Equal11~2_combout\ & (!\secueciador|inst7|Equal6~0_combout\ & \secueciador|inst|instruccion[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal11~2_combout\,
	datab => \secueciador|inst7|Equal6~0_combout\,
	datac => \secueciador|inst|instruccion[0]~1_combout\,
	datad => \secueciador|inst7|data[71]~18_combout\,
	combout => \secueciador|inst7|data[71]~19_combout\);

-- Location: FF_X42_Y36_N23
\secueciador|inst|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[71]~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|EB\(0));

-- Location: LCCOMB_X35_Y35_N26
\AccB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[2]~5_combout\ = (\secueciador|inst|nWB~q\) # ((\AccB|data_out\(2)) # ((!\secueciador|inst|EA\(1)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(2),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[2]~5_combout\);

-- Location: LCCOMB_X35_Y35_N18
\AccB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[2]~5_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[2]~5_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[2]~5_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[2]~19_combout\,
	combout => \AccB|data_out[2]~5_combout\);

-- Location: LCCOMB_X38_Y35_N22
\AccB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[0]~8_combout\ = (\secueciador|inst|nWB~q\ & ((\secueciador|inst|EA\(1)) # (\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|nWB~q\,
	combout => \AccB|data_out[0]~8_combout\);

-- Location: FF_X35_Y35_N19
\AccB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[2]~5_combout\,
	asdata => \inst17|Yupa[2]~25_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(2));

-- Location: LCCOMB_X36_Y36_N12
\AccB|B[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|B[2]~1_combout\ = ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(2)) # (\secueciador|inst|EB\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWB~q\,
	datac => \AccB|data_out\(2),
	datad => \secueciador|inst|EB\(0),
	combout => \AccB|B[2]~1_combout\);

-- Location: LCCOMB_X37_Y36_N18
\secueciador|inst7|data[44]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[44]~31_combout\ = (((!\secueciador|inst7|data[74]~10_combout\) # (!\secueciador|inst7|data[27]~12_combout\)) # (!\secueciador|inst|instruccion[0]~1_combout\)) # (!\secueciador|inst7|Equal18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal18~0_combout\,
	datab => \secueciador|inst|instruccion[0]~1_combout\,
	datac => \secueciador|inst7|data[27]~12_combout\,
	datad => \secueciador|inst7|data[74]~10_combout\,
	combout => \secueciador|inst7|data[44]~31_combout\);

-- Location: LCCOMB_X37_Y36_N28
\secueciador|inst7|data[44]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[44]~32_combout\ = (\secueciador|inst7|Equal15~0_combout\) # (!\secueciador|inst7|data[44]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|inst7|Equal15~0_combout\,
	datad => \secueciador|inst7|data[44]~31_combout\,
	combout => \secueciador|inst7|data[44]~32_combout\);

-- Location: FF_X37_Y36_N29
\secueciador|inst|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[44]~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nERA1~q\);

-- Location: LCCOMB_X37_Y35_N14
\Auxiliar|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|TRI_STATE_C~0_combout\ = ((\secueciador|inst|RA\(0)) # (\secueciador|inst|BD~q\)) # (!\secueciador|inst|nERA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nERA1~q\,
	datab => \secueciador|inst|RA\(0),
	datac => \secueciador|inst|BD~q\,
	combout => \Auxiliar|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X42_Y36_N8
\secueciador|inst7|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~5_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\ & ((\secueciador|inst4|SELECTOR~1_combout\) # 
-- (!\secueciador|inst9|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|inst9|valor_interno\(0),
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|inst7|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y36_N4
\secueciador|inst7|data[86]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~8_combout\ = (!\secueciador|inst7|Equal7~0_combout\ & (((\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\) # (!\secueciador|inst7|Equal16~0_combout\)) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal7~0_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal16~0_combout\,
	combout => \secueciador|inst7|data[86]~8_combout\);

-- Location: LCCOMB_X39_Y36_N18
\secueciador|inst7|data[27]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~27_combout\ = (!\secueciador|inst7|Equal3~4_combout\ & (\secueciador|inst7|data[86]~8_combout\ & ((!\secueciador|inst7|Equal0~4_combout\) # (!\secueciador|inst7|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal0~5_combout\,
	datab => \secueciador|inst7|Equal3~4_combout\,
	datac => \secueciador|inst7|data[86]~8_combout\,
	datad => \secueciador|inst7|Equal0~4_combout\,
	combout => \secueciador|inst7|data[27]~27_combout\);

-- Location: LCCOMB_X40_Y36_N24
\secueciador|inst7|data[27]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~29_combout\ = (!\secueciador|inst7|Equal5~0_combout\ & (((\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\) # (!\secueciador|inst7|Equal0~4_combout\)) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal5~0_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal0~4_combout\,
	combout => \secueciador|inst7|data[27]~29_combout\);

-- Location: LCCOMB_X40_Y36_N12
\secueciador|inst7|data[27]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~34_combout\ = (((!\secueciador|inst7|data[27]~29_combout\) # (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)) # (!\secueciador|inst7|Equal14~1_combout\)) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|inst7|Equal14~1_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|data[27]~29_combout\,
	combout => \secueciador|inst7|data[27]~34_combout\);

-- Location: LCCOMB_X40_Y36_N18
\secueciador|inst7|data[27]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~35_combout\ = (\secueciador|inst7|data[27]~34_combout\) # ((\secueciador|inst7|Equal1~0_combout\) # ((!\secueciador|inst7|data[86]~6_combout\) # (!\secueciador|inst7|data[74]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[27]~34_combout\,
	datab => \secueciador|inst7|Equal1~0_combout\,
	datac => \secueciador|inst7|data[74]~10_combout\,
	datad => \secueciador|inst7|data[86]~6_combout\,
	combout => \secueciador|inst7|data[27]~35_combout\);

-- Location: LCCOMB_X40_Y36_N26
\secueciador|inst7|data[27]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[27]~36_combout\ = ((!\secueciador|inst7|data[27]~35_combout\) # (!\secueciador|inst7|data[27]~12_combout\)) # (!\secueciador|inst7|data[27]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|data[27]~27_combout\,
	datac => \secueciador|inst7|data[27]~12_combout\,
	datad => \secueciador|inst7|data[27]~35_combout\,
	combout => \secueciador|inst7|data[27]~36_combout\);

-- Location: FF_X40_Y36_N27
\secueciador|inst|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[27]~36_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nCBD~q\);

-- Location: LCCOMB_X35_Y36_N0
\inst9[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[2]~5_combout\ = (\secueciador|inst|nEPC0~q\) # ((\secueciador|inst|PC\(0)) # ((\Contador-programa|data_out\(2)) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nEPC0~q\,
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nCBD~q\,
	datad => \Contador-programa|data_out\(2),
	combout => \inst9[2]~5_combout\);

-- Location: FF_X35_Y36_N1
\inst8|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9[2]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(2));

-- Location: LCCOMB_X34_Y36_N12
\Contador-programa|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~6_combout\ = (\Contador-programa|data_out\(3) & (!\Contador-programa|Add0~5\)) # (!\Contador-programa|data_out\(3) & ((\Contador-programa|Add0~5\) # (GND)))
-- \Contador-programa|Add0~7\ = CARRY((!\Contador-programa|Add0~5\) # (!\Contador-programa|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(3),
	datad => VCC,
	cin => \Contador-programa|Add0~5\,
	combout => \Contador-programa|Add0~6_combout\,
	cout => \Contador-programa|Add0~7\);

-- Location: LCCOMB_X34_Y36_N14
\Contador-programa|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~8_combout\ = (\Contador-programa|data_out\(4) & (\Contador-programa|Add0~7\ $ (GND))) # (!\Contador-programa|data_out\(4) & (!\Contador-programa|Add0~7\ & VCC))
-- \Contador-programa|Add0~9\ = CARRY((\Contador-programa|data_out\(4) & !\Contador-programa|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(4),
	datad => VCC,
	cin => \Contador-programa|Add0~7\,
	combout => \Contador-programa|Add0~8_combout\,
	cout => \Contador-programa|Add0~9\);

-- Location: LCCOMB_X36_Y34_N22
\AccA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[4]~3_combout\ = ((\AccA|data_out\(4)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(4),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[4]~3_combout\);

-- Location: LCCOMB_X36_Y34_N10
\AccA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[4]~3_combout\ = (\secueciador|inst|EA\(1) & (\AccA|C[4]~3_combout\)) # (!\secueciador|inst|EA\(1) & ((\inst17|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|C[4]~3_combout\,
	datad => \inst17|Yupa[4]~18_combout\,
	combout => \AccA|data_out[4]~3_combout\);

-- Location: LCCOMB_X40_Y36_N4
\secueciador|inst7|data[26]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[26]~26_combout\ = (!\secueciador|inst7|Equal15~0_combout\ & (!\secueciador|inst7|Equal1~0_combout\ & (!\secueciador|inst7|Equal4~0_combout\ & !\secueciador|inst7|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal15~0_combout\,
	datab => \secueciador|inst7|Equal1~0_combout\,
	datac => \secueciador|inst7|Equal4~0_combout\,
	datad => \secueciador|inst7|Equal8~0_combout\,
	combout => \secueciador|inst7|data[26]~26_combout\);

-- Location: LCCOMB_X40_Y36_N6
\secueciador|inst7|data[26]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[26]~28_combout\ = ((!\secueciador|inst7|data[27]~27_combout\) # (!\secueciador|inst7|data[74]~10_combout\)) # (!\secueciador|inst7|data[27]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[27]~12_combout\,
	datac => \secueciador|inst7|data[74]~10_combout\,
	datad => \secueciador|inst7|data[27]~27_combout\,
	combout => \secueciador|inst7|data[26]~28_combout\);

-- Location: LCCOMB_X40_Y36_N0
\secueciador|inst7|data[26]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[26]~30_combout\ = ((\secueciador|inst7|Equal17~0_combout\ & (\secueciador|inst7|data[27]~29_combout\ & !\secueciador|inst7|data[26]~28_combout\))) # (!\secueciador|inst7|data[26]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal17~0_combout\,
	datab => \secueciador|inst7|data[27]~29_combout\,
	datac => \secueciador|inst7|data[26]~26_combout\,
	datad => \secueciador|inst7|data[26]~28_combout\,
	combout => \secueciador|inst7|data[26]~30_combout\);

-- Location: FF_X40_Y36_N1
\secueciador|inst|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[26]~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nAS~q\);

-- Location: LCCOMB_X34_Y36_N0
\inst9[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[1]~7_combout\ = (\secueciador|inst|PC\(0)) # ((\Contador-programa|data_out\(1)) # ((\secueciador|inst|nEPC0~q\) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \Contador-programa|data_out\(1),
	datac => \secueciador|inst|nEPC0~q\,
	datad => \secueciador|inst|nCBD~q\,
	combout => \inst9[1]~7_combout\);

-- Location: FF_X34_Y36_N1
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9[1]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: LCCOMB_X37_Y37_N6
\inst10|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\inst8|valor_interno\(3)) # ((\inst8|valor_interno\(1)) # (\inst8|valor_interno\(0) $ (\inst8|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(3),
	datab => \inst8|valor_interno\(0),
	datac => \inst8|valor_interno\(2),
	datad => \inst8|valor_interno\(1),
	combout => \inst10|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y37_N4
\inst17|Yupa[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[6]~10_combout\ = (!\inst8|valor_interno\(4) & (\inst17|Yupa[2]~3_combout\ & !\inst10|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(4),
	datab => \inst17|Yupa[2]~3_combout\,
	datad => \inst10|Mux1~0_combout\,
	combout => \inst17|Yupa[6]~10_combout\);

-- Location: LCCOMB_X36_Y37_N28
\inst10|data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data[7]~0_combout\ = (!\secueciador|inst|BD~q\ & \secueciador|inst|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|inst|BD~q\,
	datad => \secueciador|inst|nAS~q\,
	combout => \inst10|data[7]~0_combout\);

-- Location: LCCOMB_X36_Y34_N26
\AccA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[6]~1_combout\ = ((\AccA|data_out\(6)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(6),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[6]~1_combout\);

-- Location: LCCOMB_X36_Y34_N14
\AccA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[6]~1_combout\ = (\secueciador|inst|EA\(1) & (\AccA|C[6]~1_combout\)) # (!\secueciador|inst|EA\(1) & ((\inst17|Yupa[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|C[6]~1_combout\,
	datad => \inst17|Yupa[6]~11_combout\,
	combout => \AccA|data_out[6]~1_combout\);

-- Location: LCCOMB_X38_Y35_N10
\secueciador|inst7|data[67]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[67]~21_combout\ = (!\secueciador|inst7|Equal4~0_combout\ & (!\secueciador|inst7|Equal3~4_combout\ & (\secueciador|inst7|data[87]~1_combout\ & !\secueciador|inst7|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal4~0_combout\,
	datab => \secueciador|inst7|Equal3~4_combout\,
	datac => \secueciador|inst7|data[87]~1_combout\,
	datad => \secueciador|inst7|Equal12~0_combout\,
	combout => \secueciador|inst7|data[67]~21_combout\);

-- Location: FF_X38_Y35_N11
\secueciador|inst|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[67]~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nDUPA~q\);

-- Location: LCCOMB_X37_Y35_N0
\AccA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|B[7]~0_combout\ = ((\secueciador|inst|nWA~q\) # (\secueciador|inst|EA\(0))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWA~q\,
	datad => \secueciador|inst|EA\(0),
	combout => \AccA|B[7]~0_combout\);

-- Location: LCCOMB_X37_Y35_N30
\inst17|Yupa2[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[7]~2_combout\ = (\secueciador|inst|BD~q\ & (((\secueciador|inst|nAS~q\)))) # (!\secueciador|inst|BD~q\ & (!\secueciador|inst|RA\(0) & (\secueciador|inst|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|RA\(0),
	datab => \secueciador|inst|nERA1~q\,
	datac => \secueciador|inst|BD~q\,
	datad => \secueciador|inst|nAS~q\,
	combout => \inst17|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X38_Y35_N2
\AccB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|B[7]~0_combout\ = ((\secueciador|inst|EB\(0)) # (\secueciador|inst|nWB~q\)) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|nWB~q\,
	combout => \AccB|B[7]~0_combout\);

-- Location: LCCOMB_X37_Y35_N28
\inst17|Yupa2[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[7]~3_combout\ = (\secueciador|inst|nDUPA~q\) # (((\inst17|Yupa2[7]~2_combout\) # (!\AccB|B[7]~0_combout\)) # (!\AccA|B[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nDUPA~q\,
	datab => \AccA|B[7]~0_combout\,
	datac => \inst17|Yupa2[7]~2_combout\,
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X36_Y37_N6
\inst10|data[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data[7]~1_combout\ = (\secueciador|inst|BD~q\ & \secueciador|inst|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|inst|BD~q\,
	datad => \secueciador|inst|nAS~q\,
	combout => \inst10|data[7]~1_combout\);

-- Location: LCCOMB_X38_Y35_N8
\AccB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[6]~1_combout\ = ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(6)) # (!\secueciador|inst|EA\(1)))) # (!\secueciador|inst|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EB\(0),
	datab => \secueciador|inst|nWB~q\,
	datac => \secueciador|inst|EA\(1),
	datad => \AccB|data_out\(6),
	combout => \AccB|C[6]~1_combout\);

-- Location: LCCOMB_X38_Y35_N28
\AccB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[6]~1_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[6]~1_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[6]~1_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[6]~7_combout\,
	combout => \AccB|data_out[6]~1_combout\);

-- Location: FF_X38_Y35_N29
\AccB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[6]~1_combout\,
	asdata => \inst17|Yupa[6]~11_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(6));

-- Location: LCCOMB_X38_Y35_N20
\inst17|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux34~0_combout\ = (\secueciador|inst|EA\(1) & (((\AccB|data_out\(6)) # (\secueciador|inst|nWB~q\)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EB\(0),
	datab => \AccB|data_out\(6),
	datac => \secueciador|inst|EA\(1),
	datad => \secueciador|inst|nWB~q\,
	combout => \inst17|Mux34~0_combout\);

-- Location: LCCOMB_X35_Y35_N12
\AccB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[5]~2_combout\ = (\secueciador|inst|nWB~q\) # ((\AccB|data_out\(5)) # ((!\secueciador|inst|EA\(1)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(5),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[5]~2_combout\);

-- Location: LCCOMB_X36_Y37_N14
\inst10|data_out[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data_out[5]~3_combout\ = (\inst8|valor_interno\(0) & \inst10|data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(0),
	datac => \inst10|data_out[0]~2_combout\,
	combout => \inst10|data_out[5]~3_combout\);

-- Location: LCCOMB_X37_Y35_N26
\Auxiliar|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~3_combout\ = (\secueciador|inst|RA\(0) & ((\Auxiliar|data_out\(15)))) # (!\secueciador|inst|RA\(0) & (\inst17|Yupa2[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[6]~7_combout\,
	datac => \secueciador|inst|RA\(0),
	datad => \Auxiliar|data_out\(15),
	combout => \Auxiliar|data_out~3_combout\);

-- Location: FF_X37_Y35_N27
\Auxiliar|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(14));

-- Location: LCCOMB_X37_Y35_N16
\Auxiliar|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~5_combout\ = (\secueciador|inst|RA\(0) & (\Auxiliar|data_out\(14))) # (!\secueciador|inst|RA\(0) & ((\inst17|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|RA\(0),
	datac => \Auxiliar|data_out\(14),
	datad => \inst17|Yupa2[5]~10_combout\,
	combout => \Auxiliar|data_out~5_combout\);

-- Location: FF_X37_Y35_N17
\Auxiliar|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(13));

-- Location: LCCOMB_X36_Y33_N14
\Auxiliar|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~7_combout\ = (\secueciador|inst|RA\(0) & ((\Auxiliar|data_out\(13)))) # (!\secueciador|inst|RA\(0) & (\inst17|Yupa2[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[4]~13_combout\,
	datac => \secueciador|inst|RA\(0),
	datad => \Auxiliar|data_out\(13),
	combout => \Auxiliar|data_out~7_combout\);

-- Location: FF_X36_Y33_N15
\Auxiliar|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(12));

-- Location: LCCOMB_X35_Y35_N16
\AccB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[3]~4_combout\ = (\secueciador|inst|nWB~q\) # ((\AccB|data_out\(3)) # ((!\secueciador|inst|EA\(1)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(3),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[3]~4_combout\);

-- Location: LCCOMB_X35_Y35_N20
\AccB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[3]~4_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[3]~4_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[3]~4_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[3]~16_combout\,
	combout => \AccB|data_out[3]~4_combout\);

-- Location: LCCOMB_X38_Y34_N6
\inst17|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux31~0_combout\ = (\secueciador|inst|EA\(1) & (((\secueciador|inst|nWB~q\) # (\AccB|data_out\(3))) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EB\(0),
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|nWB~q\,
	datad => \AccB|data_out\(3),
	combout => \inst17|Mux31~0_combout\);

-- Location: LCCOMB_X36_Y34_N8
\AccA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[3]~4_combout\ = (\secueciador|inst|EA\(1) & (\AccA|C[3]~4_combout\)) # (!\secueciador|inst|EA\(1) & ((\inst17|Yupa[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|C[3]~4_combout\,
	datad => \inst17|Yupa[3]~21_combout\,
	combout => \AccA|data_out[3]~4_combout\);

-- Location: LCCOMB_X36_Y34_N0
\AccA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[0]~8_combout\ = (\secueciador|inst|nWA~q\ & ((\secueciador|inst|EA\(1)) # (\secueciador|inst|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|data_out[0]~8_combout\);

-- Location: FF_X36_Y34_N9
\AccA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[3]~4_combout\,
	asdata => \inst17|Yupa2[3]~16_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(3));

-- Location: LCCOMB_X36_Y34_N4
\AccA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[3]~4_combout\ = ((\AccA|data_out\(3)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(3),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[3]~4_combout\);

-- Location: LCCOMB_X38_Y34_N4
\inst17|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux30~0_combout\ = (\secueciador|inst|EA\(1) & ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(2)) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(2),
	datac => \secueciador|inst|EA\(1),
	datad => \secueciador|inst|EB\(0),
	combout => \inst17|Mux30~0_combout\);

-- Location: LCCOMB_X35_Y35_N28
\AccB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[1]~6_combout\ = (\secueciador|inst|nWB~q\) # ((\AccB|data_out\(1)) # ((!\secueciador|inst|EA\(1)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[1]~6_combout\);

-- Location: LCCOMB_X36_Y37_N20
\inst10|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst8|valor_interno\(3)) # ((\inst8|valor_interno\(1) & ((\inst8|valor_interno\(2)) # (\inst8|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(2),
	datab => \inst8|valor_interno\(1),
	datac => \inst8|valor_interno\(0),
	datad => \inst8|valor_interno\(3),
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y37_N28
\inst17|Yupa[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[1]~29_combout\ = (!\inst8|valor_interno\(4) & (!\inst10|Mux6~0_combout\ & \inst17|Yupa[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(4),
	datab => \inst10|Mux6~0_combout\,
	datad => \inst17|Yupa[2]~3_combout\,
	combout => \inst17|Yupa[1]~29_combout\);

-- Location: LCCOMB_X35_Y35_N14
\AccB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[0]~7_combout\ = (\secueciador|inst|nWB~q\) # ((\AccB|data_out\(0)) # ((!\secueciador|inst|EA\(1)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(0),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[0]~7_combout\);

-- Location: LCCOMB_X36_Y34_N6
\AccA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[0]~7_combout\ = ((\AccA|data_out\(0)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(0),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[0]~7_combout\);

-- Location: LCCOMB_X36_Y34_N2
\AccA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[0]~7_combout\ = (\secueciador|inst|EA\(1) & ((\AccA|C[0]~7_combout\))) # (!\secueciador|inst|EA\(1) & (\inst17|Yupa[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[0]~34_combout\,
	datab => \AccA|C[0]~7_combout\,
	datad => \secueciador|inst|EA\(1),
	combout => \AccA|data_out[0]~7_combout\);

-- Location: FF_X36_Y34_N3
\AccA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[0]~7_combout\,
	asdata => \inst17|Yupa2[0]~25_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(0));

-- Location: LCCOMB_X37_Y35_N4
\inst17|Yupa2[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[0]~23_combout\ = (\Auxiliar|data_out\(8) & ((\AccB|data_out\(0)) # ((\AccB|B[7]~0_combout\)))) # (!\Auxiliar|data_out\(8) & (\Auxiliar|TRI_STATE_C~0_combout\ & ((\AccB|data_out\(0)) # (\AccB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(8),
	datab => \AccB|data_out\(0),
	datac => \Auxiliar|TRI_STATE_C~0_combout\,
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[0]~23_combout\);

-- Location: LCCOMB_X42_Y36_N20
\secueciador|inst7|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal9~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal9~0_combout\);

-- Location: LCCOMB_X42_Y36_N0
\secueciador|inst7|data[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[9]~22_combout\ = (!\secueciador|inst7|Equal6~0_combout\ & (!\secueciador|inst7|Equal12~0_combout\ & !\secueciador|inst7|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal6~0_combout\,
	datac => \secueciador|inst7|Equal12~0_combout\,
	datad => \secueciador|inst7|Equal9~0_combout\,
	combout => \secueciador|inst7|data[9]~22_combout\);

-- Location: LCCOMB_X42_Y36_N24
\secueciador|inst7|data[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[9]~37_combout\ = (!\secueciador|inst7|Equal8~0_combout\ & (!\secueciador|inst7|Equal4~0_combout\ & (\secueciador|inst|instruccion[0]~0_combout\ & \secueciador|inst7|data[9]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal8~0_combout\,
	datab => \secueciador|inst7|Equal4~0_combout\,
	datac => \secueciador|inst|instruccion[0]~0_combout\,
	datad => \secueciador|inst7|data[9]~22_combout\,
	combout => \secueciador|inst7|data[9]~37_combout\);

-- Location: FF_X42_Y36_N25
\secueciador|inst|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[9]~37_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|CC~q\);

-- Location: LCCOMB_X37_Y34_N8
\AccA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[7]~0_combout\ = ((\secueciador|inst|nWA~q\) # ((\AccA|data_out\(7)) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWA~q\,
	datac => \secueciador|inst|EA\(0),
	datad => \AccA|data_out\(7),
	combout => \AccA|C[7]~0_combout\);

-- Location: LCCOMB_X37_Y34_N24
\inst17|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~14_combout\ = (\AccA|C[6]~1_combout\ & ((\inst17|Mux34~0_combout\ & (\inst17|Add0~13\ & VCC)) # (!\inst17|Mux34~0_combout\ & (!\inst17|Add0~13\)))) # (!\AccA|C[6]~1_combout\ & ((\inst17|Mux34~0_combout\ & (!\inst17|Add0~13\)) # 
-- (!\inst17|Mux34~0_combout\ & ((\inst17|Add0~13\) # (GND)))))
-- \inst17|Add0~15\ = CARRY((\AccA|C[6]~1_combout\ & (!\inst17|Mux34~0_combout\ & !\inst17|Add0~13\)) # (!\AccA|C[6]~1_combout\ & ((!\inst17|Add0~13\) # (!\inst17|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|C[6]~1_combout\,
	datab => \inst17|Mux34~0_combout\,
	datad => VCC,
	cin => \inst17|Add0~13\,
	combout => \inst17|Add0~14_combout\,
	cout => \inst17|Add0~15\);

-- Location: LCCOMB_X37_Y34_N26
\inst17|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~16_combout\ = ((\inst17|Mux35~0_combout\ $ (\AccA|C[7]~0_combout\ $ (!\inst17|Add0~15\)))) # (GND)
-- \inst17|Add0~17\ = CARRY((\inst17|Mux35~0_combout\ & ((\AccA|C[7]~0_combout\) # (!\inst17|Add0~15\))) # (!\inst17|Mux35~0_combout\ & (\AccA|C[7]~0_combout\ & !\inst17|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux35~0_combout\,
	datab => \AccA|C[7]~0_combout\,
	datad => VCC,
	cin => \inst17|Add0~15\,
	combout => \inst17|Add0~16_combout\,
	cout => \inst17|Add0~17\);

-- Location: LCCOMB_X37_Y34_N28
\inst17|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~18_combout\ = \inst17|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Add0~17\,
	combout => \inst17|Add0~18_combout\);

-- Location: FF_X37_Y34_N29
\inst17|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~18_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Banderas\(1));

-- Location: FF_X37_Y34_N11
\inst|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \secueciador|inst|CC~q\,
	asdata => \inst17|Banderas\(1),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|valor_interno~q\);

-- Location: LCCOMB_X37_Y34_N10
\inst17|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~1_cout\ = CARRY((!\secueciador|inst|EA\(1) & \inst|inst|valor_interno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \inst|inst|valor_interno~q\,
	datad => VCC,
	cout => \inst17|Add0~1_cout\);

-- Location: LCCOMB_X37_Y34_N12
\inst17|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~2_combout\ = (\inst17|Mux27~0_combout\ & ((\AccA|C[0]~7_combout\ & (\inst17|Add0~1_cout\ & VCC)) # (!\AccA|C[0]~7_combout\ & (!\inst17|Add0~1_cout\)))) # (!\inst17|Mux27~0_combout\ & ((\AccA|C[0]~7_combout\ & (!\inst17|Add0~1_cout\)) # 
-- (!\AccA|C[0]~7_combout\ & ((\inst17|Add0~1_cout\) # (GND)))))
-- \inst17|Add0~3\ = CARRY((\inst17|Mux27~0_combout\ & (!\AccA|C[0]~7_combout\ & !\inst17|Add0~1_cout\)) # (!\inst17|Mux27~0_combout\ & ((!\inst17|Add0~1_cout\) # (!\AccA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux27~0_combout\,
	datab => \AccA|C[0]~7_combout\,
	datad => VCC,
	cin => \inst17|Add0~1_cout\,
	combout => \inst17|Add0~2_combout\,
	cout => \inst17|Add0~3\);

-- Location: FF_X37_Y34_N13
\inst17|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~2_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Q\(0));

-- Location: LCCOMB_X38_Y35_N18
\inst17|Yupa[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[0]~32_combout\ = (\inst17|Q\(0)) # (!\secueciador|inst|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Q\(0),
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa[0]~32_combout\);

-- Location: LCCOMB_X37_Y35_N6
\inst17|Yupa2[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[0]~24_combout\ = (\inst17|Yupa2[0]~23_combout\ & (\inst17|Yupa[0]~32_combout\ & ((\AccA|data_out\(0)) # (\AccA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(0),
	datab => \AccA|B[7]~0_combout\,
	datac => \inst17|Yupa2[0]~23_combout\,
	datad => \inst17|Yupa[0]~32_combout\,
	combout => \inst17|Yupa2[0]~24_combout\);

-- Location: LCCOMB_X36_Y37_N10
\inst17|Yupa2[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[0]~25_combout\ = ((\inst17|Yupa2[0]~24_combout\ & ((\inst10|data_out[0]~4_combout\) # (!\inst10|data[7]~1_combout\)))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[7]~3_combout\,
	datab => \inst10|data[7]~1_combout\,
	datac => \inst10|data_out[0]~4_combout\,
	datad => \inst17|Yupa2[0]~24_combout\,
	combout => \inst17|Yupa2[0]~25_combout\);

-- Location: LCCOMB_X35_Y35_N24
\AccB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[0]~7_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[0]~7_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[0]~7_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[0]~25_combout\,
	combout => \AccB|data_out[0]~7_combout\);

-- Location: FF_X35_Y35_N25
\AccB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[0]~7_combout\,
	asdata => \inst17|Yupa[0]~34_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(0));

-- Location: LCCOMB_X38_Y34_N30
\inst17|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux27~0_combout\ = (\secueciador|inst|EA\(1) & ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(0)) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \AccB|data_out\(0),
	datac => \secueciador|inst|EA\(1),
	datad => \secueciador|inst|EB\(0),
	combout => \inst17|Mux27~0_combout\);

-- Location: LCCOMB_X37_Y34_N14
\inst17|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~4_combout\ = ((\AccA|C[1]~6_combout\ $ (\inst17|Mux29~0_combout\ $ (!\inst17|Add0~3\)))) # (GND)
-- \inst17|Add0~5\ = CARRY((\AccA|C[1]~6_combout\ & ((\inst17|Mux29~0_combout\) # (!\inst17|Add0~3\))) # (!\AccA|C[1]~6_combout\ & (\inst17|Mux29~0_combout\ & !\inst17|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|C[1]~6_combout\,
	datab => \inst17|Mux29~0_combout\,
	datad => VCC,
	cin => \inst17|Add0~3\,
	combout => \inst17|Add0~4_combout\,
	cout => \inst17|Add0~5\);

-- Location: FF_X37_Y34_N15
\inst17|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~4_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Yupa_interno\(1));

-- Location: LCCOMB_X37_Y34_N4
\inst17|Yupa[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[1]~27_combout\ = (\inst17|Yupa_interno\(1)) # (!\secueciador|inst|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Yupa_interno\(1),
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa[1]~27_combout\);

-- Location: LCCOMB_X37_Y37_N2
\inst17|Yupa2[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[1]~20_combout\ = (\AccB|data_out\(1) & ((\Auxiliar|data_out\(9)) # ((\Auxiliar|TRI_STATE_C~0_combout\)))) # (!\AccB|data_out\(1) & (\AccB|B[7]~0_combout\ & ((\Auxiliar|data_out\(9)) # (\Auxiliar|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(1),
	datab => \Auxiliar|data_out\(9),
	datac => \AccB|B[7]~0_combout\,
	datad => \Auxiliar|TRI_STATE_C~0_combout\,
	combout => \inst17|Yupa2[1]~20_combout\);

-- Location: LCCOMB_X37_Y37_N20
\inst17|Yupa2[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[1]~21_combout\ = (\inst17|Yupa[1]~27_combout\ & (\inst17|Yupa2[1]~20_combout\ & ((\AccA|B[7]~0_combout\) # (\AccA|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|B[7]~0_combout\,
	datab => \inst17|Yupa[1]~27_combout\,
	datac => \AccA|data_out\(1),
	datad => \inst17|Yupa2[1]~20_combout\,
	combout => \inst17|Yupa2[1]~21_combout\);

-- Location: LCCOMB_X37_Y37_N14
\inst17|Yupa2[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[1]~22_combout\ = ((\inst17|Yupa2[1]~21_combout\ & ((\inst17|Yupa[1]~29_combout\) # (!\inst10|data[7]~1_combout\)))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[7]~3_combout\,
	datab => \inst17|Yupa[1]~29_combout\,
	datac => \inst10|data[7]~1_combout\,
	datad => \inst17|Yupa2[1]~21_combout\,
	combout => \inst17|Yupa2[1]~22_combout\);

-- Location: LCCOMB_X36_Y35_N22
\AccB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[1]~6_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[1]~6_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EB\(0),
	datab => \AccB|C[1]~6_combout\,
	datad => \inst17|Yupa2[1]~22_combout\,
	combout => \AccB|data_out[1]~6_combout\);

-- Location: FF_X36_Y35_N23
\AccB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[1]~6_combout\,
	asdata => \inst17|Yupa[1]~30_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(1));

-- Location: LCCOMB_X37_Y34_N2
\inst17|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux29~0_combout\ = (\secueciador|inst|EA\(1) & ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(1)) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWB~q\,
	datac => \AccB|data_out\(1),
	datad => \secueciador|inst|EB\(0),
	combout => \inst17|Mux29~0_combout\);

-- Location: LCCOMB_X37_Y34_N16
\inst17|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~6_combout\ = (\inst17|Mux30~0_combout\ & ((\AccA|C[2]~5_combout\ & (\inst17|Add0~5\ & VCC)) # (!\AccA|C[2]~5_combout\ & (!\inst17|Add0~5\)))) # (!\inst17|Mux30~0_combout\ & ((\AccA|C[2]~5_combout\ & (!\inst17|Add0~5\)) # 
-- (!\AccA|C[2]~5_combout\ & ((\inst17|Add0~5\) # (GND)))))
-- \inst17|Add0~7\ = CARRY((\inst17|Mux30~0_combout\ & (!\AccA|C[2]~5_combout\ & !\inst17|Add0~5\)) # (!\inst17|Mux30~0_combout\ & ((!\inst17|Add0~5\) # (!\AccA|C[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux30~0_combout\,
	datab => \AccA|C[2]~5_combout\,
	datad => VCC,
	cin => \inst17|Add0~5\,
	combout => \inst17|Add0~6_combout\,
	cout => \inst17|Add0~7\);

-- Location: LCCOMB_X37_Y34_N18
\inst17|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~8_combout\ = ((\inst17|Mux31~0_combout\ $ (\AccA|C[3]~4_combout\ $ (!\inst17|Add0~7\)))) # (GND)
-- \inst17|Add0~9\ = CARRY((\inst17|Mux31~0_combout\ & ((\AccA|C[3]~4_combout\) # (!\inst17|Add0~7\))) # (!\inst17|Mux31~0_combout\ & (\AccA|C[3]~4_combout\ & !\inst17|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux31~0_combout\,
	datab => \AccA|C[3]~4_combout\,
	datad => VCC,
	cin => \inst17|Add0~7\,
	combout => \inst17|Add0~8_combout\,
	cout => \inst17|Add0~9\);

-- Location: FF_X37_Y34_N19
\inst17|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~8_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Yupa_interno\(3));

-- Location: LCCOMB_X37_Y35_N24
\secueciador|inst7|data[43]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[43]~17_combout\ = (\secueciador|inst7|Equal17~0_combout\) # ((\secueciador|inst7|Equal18~0_combout\ & \secueciador|inst|instruccion[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|Equal18~0_combout\,
	datac => \secueciador|inst7|Equal17~0_combout\,
	datad => \secueciador|inst|instruccion[0]~3_combout\,
	combout => \secueciador|inst7|data[43]~17_combout\);

-- Location: FF_X37_Y35_N25
\secueciador|inst|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[43]~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nERA0~q\);

-- Location: LCCOMB_X37_Y35_N10
\Auxiliar|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|TRI_STATE_D~0_combout\ = (\secueciador|inst|RA\(0)) # ((\secueciador|inst|BD~q\) # (!\secueciador|inst|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|RA\(0),
	datac => \secueciador|inst|BD~q\,
	datad => \secueciador|inst|nERA0~q\,
	combout => \Auxiliar|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X36_Y37_N18
\Auxiliar|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~6_combout\ = (\secueciador|inst|BD~q\ & (\Auxiliar|data_out\(5))) # (!\secueciador|inst|BD~q\ & ((\inst17|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Auxiliar|data_out\(5),
	datac => \secueciador|inst|BD~q\,
	datad => \inst17|Yupa[4]~18_combout\,
	combout => \Auxiliar|data_out~6_combout\);

-- Location: FF_X36_Y37_N19
\Auxiliar|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(4));

-- Location: LCCOMB_X36_Y37_N0
\Auxiliar|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~8_combout\ = (\secueciador|inst|BD~q\ & (\Auxiliar|data_out\(4))) # (!\secueciador|inst|BD~q\ & ((\inst17|Yupa[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Auxiliar|data_out\(4),
	datac => \secueciador|inst|BD~q\,
	datad => \inst17|Yupa[3]~21_combout\,
	combout => \Auxiliar|data_out~8_combout\);

-- Location: FF_X36_Y37_N1
\Auxiliar|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(3));

-- Location: LCCOMB_X36_Y35_N14
\inst17|Yupa[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[3]~20_combout\ = (\inst17|Yupa_interno\(3) & ((\Auxiliar|TRI_STATE_D~0_combout\) # ((\Auxiliar|data_out\(3))))) # (!\inst17|Yupa_interno\(3) & (!\secueciador|inst|nDUPA~q\ & ((\Auxiliar|TRI_STATE_D~0_combout\) # (\Auxiliar|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa_interno\(3),
	datab => \Auxiliar|TRI_STATE_D~0_combout\,
	datac => \secueciador|inst|nDUPA~q\,
	datad => \Auxiliar|data_out\(3),
	combout => \inst17|Yupa[3]~20_combout\);

-- Location: LCCOMB_X36_Y35_N20
\AccB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|TRI_STATE~0_combout\ = (!\secueciador|inst|EA\(1) & (\secueciador|inst|EB\(0) & !\secueciador|inst|nWB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|nWB~q\,
	combout => \AccB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X36_Y35_N24
\AccA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|TRI_STATE~0_combout\ = (!\secueciador|inst|EA\(1) & (!\secueciador|inst|nWA~q\ & \secueciador|inst|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|nWA~q\,
	datad => \secueciador|inst|EA\(0),
	combout => \AccA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X36_Y35_N16
\inst17|Yupa[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[3]~19_combout\ = (\AccA|data_out\(3) & (((\AccB|data_out\(3))) # (!\AccB|TRI_STATE~0_combout\))) # (!\AccA|data_out\(3) & (!\AccA|TRI_STATE~0_combout\ & ((\AccB|data_out\(3)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(3),
	datab => \AccB|TRI_STATE~0_combout\,
	datac => \AccB|data_out\(3),
	datad => \AccA|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[3]~19_combout\);

-- Location: LCCOMB_X37_Y35_N20
\inst17|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~4_combout\ = (!\secueciador|inst|BD~q\ & ((\secueciador|inst|nAS~q\) # ((!\secueciador|inst|RA\(0) & \secueciador|inst|nERA0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|RA\(0),
	datab => \secueciador|inst|nERA0~q\,
	datac => \secueciador|inst|BD~q\,
	datad => \secueciador|inst|nAS~q\,
	combout => \inst17|Yupa[7]~4_combout\);

-- Location: LCCOMB_X36_Y35_N0
\inst17|Yupa[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~5_combout\ = (\inst17|Yupa[7]~4_combout\) # ((\AccA|TRI_STATE~0_combout\) # ((\secueciador|inst|nDUPA~q\) # (\AccB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[7]~4_combout\,
	datab => \AccA|TRI_STATE~0_combout\,
	datac => \secueciador|inst|nDUPA~q\,
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[7]~5_combout\);

-- Location: LCCOMB_X36_Y37_N8
\Buffer-Baja|PortL[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Buffer-Baja|PortL[4]~2_combout\ = (\secueciador|inst|BD~q\) # ((\inst10|data_out[0]~2_combout\) # (!\secueciador|inst|nAS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datac => \inst10|data_out[0]~2_combout\,
	datad => \secueciador|inst|nAS~q\,
	combout => \Buffer-Baja|PortL[4]~2_combout\);

-- Location: LCCOMB_X35_Y35_N22
\inst17|Yupa[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[3]~21_combout\ = ((\inst17|Yupa[3]~20_combout\ & (\inst17|Yupa[3]~19_combout\ & \Buffer-Baja|PortL[4]~2_combout\))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[3]~20_combout\,
	datab => \inst17|Yupa[3]~19_combout\,
	datac => \inst17|Yupa[7]~5_combout\,
	datad => \Buffer-Baja|PortL[4]~2_combout\,
	combout => \inst17|Yupa[3]~21_combout\);

-- Location: FF_X35_Y35_N21
\AccB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[3]~4_combout\,
	asdata => \inst17|Yupa[3]~21_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(3));

-- Location: LCCOMB_X36_Y33_N4
\inst17|Yupa2[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[3]~14_combout\ = (\AccB|data_out\(3) & ((\AccA|data_out\(3)) # ((\AccA|B[7]~0_combout\)))) # (!\AccB|data_out\(3) & (\AccB|B[7]~0_combout\ & ((\AccA|data_out\(3)) # (\AccA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(3),
	datab => \AccA|data_out\(3),
	datac => \AccA|B[7]~0_combout\,
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[3]~14_combout\);

-- Location: LCCOMB_X36_Y33_N28
\inst17|Yupa2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[3]~15_combout\ = (\inst17|Yupa_interno\(3) & (((\Auxiliar|data_out\(11)) # (\Auxiliar|TRI_STATE_C~0_combout\)))) # (!\inst17|Yupa_interno\(3) & (!\secueciador|inst|nDUPA~q\ & ((\Auxiliar|data_out\(11)) # (\Auxiliar|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa_interno\(3),
	datab => \secueciador|inst|nDUPA~q\,
	datac => \Auxiliar|data_out\(11),
	datad => \Auxiliar|TRI_STATE_C~0_combout\,
	combout => \inst17|Yupa2[3]~15_combout\);

-- Location: LCCOMB_X36_Y33_N10
\inst17|Yupa2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[3]~16_combout\ = ((\Buffer-Alta|PortL[4]~2_combout\ & (\inst17|Yupa2[3]~14_combout\ & \inst17|Yupa2[3]~15_combout\))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buffer-Alta|PortL[4]~2_combout\,
	datab => \inst17|Yupa2[3]~14_combout\,
	datac => \inst17|Yupa2[7]~3_combout\,
	datad => \inst17|Yupa2[3]~15_combout\,
	combout => \inst17|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X36_Y33_N26
\Auxiliar|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~9_combout\ = (\secueciador|inst|RA\(0) & (\Auxiliar|data_out\(12))) # (!\secueciador|inst|RA\(0) & ((\inst17|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Auxiliar|data_out\(12),
	datac => \secueciador|inst|RA\(0),
	datad => \inst17|Yupa2[3]~16_combout\,
	combout => \Auxiliar|data_out~9_combout\);

-- Location: FF_X36_Y33_N27
\Auxiliar|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(11));

-- Location: LCCOMB_X36_Y33_N30
\Auxiliar|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~11_combout\ = (\secueciador|inst|RA\(0) & (\Auxiliar|data_out\(11))) # (!\secueciador|inst|RA\(0) & ((\inst17|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(11),
	datac => \secueciador|inst|RA\(0),
	datad => \inst17|Yupa2[2]~19_combout\,
	combout => \Auxiliar|data_out~11_combout\);

-- Location: FF_X36_Y33_N31
\Auxiliar|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(10));

-- Location: LCCOMB_X36_Y33_N18
\Auxiliar|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~13_combout\ = (\secueciador|inst|RA\(0) & (\Auxiliar|data_out\(10))) # (!\secueciador|inst|RA\(0) & ((\inst17|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(10),
	datab => \inst17|Yupa2[1]~22_combout\,
	datac => \secueciador|inst|RA\(0),
	combout => \Auxiliar|data_out~13_combout\);

-- Location: FF_X36_Y33_N19
\Auxiliar|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(9));

-- Location: LCCOMB_X36_Y37_N16
\Auxiliar|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~15_combout\ = (\secueciador|inst|RA\(0) & (\Auxiliar|data_out\(9))) # (!\secueciador|inst|RA\(0) & ((\inst17|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(9),
	datac => \secueciador|inst|RA\(0),
	datad => \inst17|Yupa2[0]~25_combout\,
	combout => \Auxiliar|data_out~15_combout\);

-- Location: FF_X36_Y37_N17
\Auxiliar|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(8));

-- Location: LCCOMB_X36_Y36_N10
\Auxiliar|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~1_combout\ = (\secueciador|inst|BD~q\ & (\Auxiliar|data_out\(8))) # (!\secueciador|inst|BD~q\ & ((\inst17|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Auxiliar|data_out\(8),
	datac => \secueciador|inst|BD~q\,
	datad => \inst17|Yupa[7]~6_combout\,
	combout => \Auxiliar|data_out~1_combout\);

-- Location: FF_X36_Y36_N11
\Auxiliar|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(7));

-- Location: LCCOMB_X36_Y37_N12
\Auxiliar|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~2_combout\ = (\secueciador|inst|BD~q\ & ((\Auxiliar|data_out\(7)))) # (!\secueciador|inst|BD~q\ & (\inst17|Yupa[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datac => \inst17|Yupa[6]~11_combout\,
	datad => \Auxiliar|data_out\(7),
	combout => \Auxiliar|data_out~2_combout\);

-- Location: FF_X36_Y37_N13
\Auxiliar|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(6));

-- Location: LCCOMB_X36_Y37_N24
\Auxiliar|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~4_combout\ = (\secueciador|inst|BD~q\ & ((\Auxiliar|data_out\(6)))) # (!\secueciador|inst|BD~q\ & (\inst17|Yupa[5]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datac => \inst17|Yupa[5]~15_combout\,
	datad => \Auxiliar|data_out\(6),
	combout => \Auxiliar|data_out~4_combout\);

-- Location: FF_X36_Y37_N25
\Auxiliar|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(5));

-- Location: LCCOMB_X36_Y35_N6
\inst17|Yupa[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[5]~12_combout\ = (\Auxiliar|data_out\(5) & ((\AccB|data_out\(5)) # ((!\AccB|TRI_STATE~0_combout\)))) # (!\Auxiliar|data_out\(5) & (\Auxiliar|TRI_STATE_D~0_combout\ & ((\AccB|data_out\(5)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(5),
	datab => \AccB|data_out\(5),
	datac => \Auxiliar|TRI_STATE_D~0_combout\,
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[5]~12_combout\);

-- Location: LCCOMB_X37_Y35_N18
\inst17|Yupa[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[5]~14_combout\ = (\inst17|Yupa[5]~13_combout\ & (\inst17|Yupa[5]~12_combout\ & ((\AccA|data_out\(5)) # (!\AccA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[5]~13_combout\,
	datab => \AccA|data_out\(5),
	datac => \inst17|Yupa[5]~12_combout\,
	datad => \AccA|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[5]~14_combout\);

-- Location: LCCOMB_X36_Y37_N4
\inst17|Yupa[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[5]~15_combout\ = ((\inst17|Yupa[5]~14_combout\ & ((\inst10|data_out[5]~3_combout\) # (!\inst10|data[7]~0_combout\)))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|data_out[5]~3_combout\,
	datab => \inst10|data[7]~0_combout\,
	datac => \inst17|Yupa[5]~14_combout\,
	datad => \inst17|Yupa[7]~5_combout\,
	combout => \inst17|Yupa[5]~15_combout\);

-- Location: LCCOMB_X36_Y34_N20
\AccA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[5]~2_combout\ = (\secueciador|inst|EA\(1) & ((\AccA|C[5]~2_combout\))) # (!\secueciador|inst|EA\(1) & (\inst17|Yupa[5]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \inst17|Yupa[5]~15_combout\,
	datad => \AccA|C[5]~2_combout\,
	combout => \AccA|data_out[5]~2_combout\);

-- Location: FF_X36_Y34_N21
\AccA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[5]~2_combout\,
	asdata => \inst17|Yupa2[5]~10_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(5));

-- Location: LCCOMB_X36_Y34_N28
\AccA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[5]~2_combout\ = ((\AccA|data_out\(5)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(5),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[5]~2_combout\);

-- Location: LCCOMB_X35_Y35_N10
\AccB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[4]~3_combout\ = (\secueciador|inst|nWB~q\) # (((\AccB|data_out\(4)) # (!\secueciador|inst|EA\(1))) # (!\secueciador|inst|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nWB~q\,
	datab => \secueciador|inst|EB\(0),
	datac => \AccB|data_out\(4),
	datad => \secueciador|inst|EA\(1),
	combout => \AccB|C[4]~3_combout\);

-- Location: LCCOMB_X35_Y35_N30
\AccB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[4]~3_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[4]~3_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[4]~3_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[4]~13_combout\,
	combout => \AccB|data_out[4]~3_combout\);

-- Location: FF_X35_Y35_N31
\AccB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[4]~3_combout\,
	asdata => \inst17|Yupa[4]~18_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(4));

-- Location: LCCOMB_X37_Y34_N6
\inst17|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux32~0_combout\ = (\secueciador|inst|EA\(1) & ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(4)) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWB~q\,
	datac => \AccB|data_out\(4),
	datad => \secueciador|inst|EB\(0),
	combout => \inst17|Mux32~0_combout\);

-- Location: LCCOMB_X37_Y34_N20
\inst17|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~10_combout\ = (\inst17|Mux32~0_combout\ & ((\AccA|C[4]~3_combout\ & (\inst17|Add0~9\ & VCC)) # (!\AccA|C[4]~3_combout\ & (!\inst17|Add0~9\)))) # (!\inst17|Mux32~0_combout\ & ((\AccA|C[4]~3_combout\ & (!\inst17|Add0~9\)) # 
-- (!\AccA|C[4]~3_combout\ & ((\inst17|Add0~9\) # (GND)))))
-- \inst17|Add0~11\ = CARRY((\inst17|Mux32~0_combout\ & (!\AccA|C[4]~3_combout\ & !\inst17|Add0~9\)) # (!\inst17|Mux32~0_combout\ & ((!\inst17|Add0~9\) # (!\AccA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux32~0_combout\,
	datab => \AccA|C[4]~3_combout\,
	datad => VCC,
	cin => \inst17|Add0~9\,
	combout => \inst17|Add0~10_combout\,
	cout => \inst17|Add0~11\);

-- Location: LCCOMB_X37_Y34_N22
\inst17|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~12_combout\ = ((\inst17|Mux33~0_combout\ $ (\AccA|C[5]~2_combout\ $ (!\inst17|Add0~11\)))) # (GND)
-- \inst17|Add0~13\ = CARRY((\inst17|Mux33~0_combout\ & ((\AccA|C[5]~2_combout\) # (!\inst17|Add0~11\))) # (!\inst17|Mux33~0_combout\ & (\AccA|C[5]~2_combout\ & !\inst17|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux33~0_combout\,
	datab => \AccA|C[5]~2_combout\,
	datad => VCC,
	cin => \inst17|Add0~11\,
	combout => \inst17|Add0~12_combout\,
	cout => \inst17|Add0~13\);

-- Location: FF_X37_Y34_N23
\inst17|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~12_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Yupa_interno\(5));

-- Location: LCCOMB_X37_Y35_N12
\inst17|Yupa[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[5]~13_combout\ = (\inst17|Yupa_interno\(5)) # (!\secueciador|inst|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Yupa_interno\(5),
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa[5]~13_combout\);

-- Location: LCCOMB_X38_Y35_N16
\inst17|Yupa2[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[5]~8_combout\ = (\Auxiliar|TRI_STATE_C~0_combout\ & ((\AccB|data_out\(5)) # ((\AccB|B[7]~0_combout\)))) # (!\Auxiliar|TRI_STATE_C~0_combout\ & (\Auxiliar|data_out\(13) & ((\AccB|data_out\(5)) # (\AccB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|TRI_STATE_C~0_combout\,
	datab => \AccB|data_out\(5),
	datac => \Auxiliar|data_out\(13),
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[5]~8_combout\);

-- Location: LCCOMB_X37_Y35_N22
\inst17|Yupa2[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[5]~9_combout\ = (\inst17|Yupa[5]~13_combout\ & (\inst17|Yupa2[5]~8_combout\ & ((\AccA|B[7]~0_combout\) # (\AccA|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[5]~13_combout\,
	datab => \AccA|B[7]~0_combout\,
	datac => \AccA|data_out\(5),
	datad => \inst17|Yupa2[5]~8_combout\,
	combout => \inst17|Yupa2[5]~9_combout\);

-- Location: LCCOMB_X35_Y35_N6
\inst17|Yupa2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[5]~10_combout\ = ((\inst17|Yupa2[5]~9_combout\ & ((\inst10|data_out[5]~3_combout\) # (!\inst10|data[7]~1_combout\)))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[7]~3_combout\,
	datab => \inst10|data[7]~1_combout\,
	datac => \inst17|Yupa2[5]~9_combout\,
	datad => \inst10|data_out[5]~3_combout\,
	combout => \inst17|Yupa2[5]~10_combout\);

-- Location: LCCOMB_X35_Y35_N4
\AccB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[5]~2_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[5]~2_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[5]~2_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[5]~10_combout\,
	combout => \AccB|data_out[5]~2_combout\);

-- Location: FF_X35_Y35_N5
\AccB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[5]~2_combout\,
	asdata => \inst17|Yupa[5]~15_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(5));

-- Location: LCCOMB_X38_Y34_N8
\inst17|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux33~0_combout\ = (\secueciador|inst|EA\(1) & ((\AccB|data_out\(5)) # ((\secueciador|inst|nWB~q\) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(5),
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|nWB~q\,
	datad => \secueciador|inst|EB\(0),
	combout => \inst17|Mux33~0_combout\);

-- Location: FF_X37_Y34_N25
\inst17|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~14_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Yupa_interno\(6));

-- Location: LCCOMB_X37_Y34_N30
\inst17|Yupa[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[6]~8_combout\ = (\inst17|Yupa_interno\(6)) # (!\secueciador|inst|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Yupa_interno\(6),
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa[6]~8_combout\);

-- Location: LCCOMB_X38_Y35_N26
\inst17|Yupa2[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[6]~5_combout\ = (\Auxiliar|TRI_STATE_C~0_combout\ & ((\AccB|data_out\(6)) # ((\AccB|B[7]~0_combout\)))) # (!\Auxiliar|TRI_STATE_C~0_combout\ & (\Auxiliar|data_out\(14) & ((\AccB|data_out\(6)) # (\AccB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|TRI_STATE_C~0_combout\,
	datab => \AccB|data_out\(6),
	datac => \Auxiliar|data_out\(14),
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[6]~5_combout\);

-- Location: LCCOMB_X37_Y37_N16
\inst17|Yupa2[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[6]~6_combout\ = (\inst17|Yupa[6]~8_combout\ & (\inst17|Yupa2[6]~5_combout\ & ((\AccA|B[7]~0_combout\) # (\AccA|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|B[7]~0_combout\,
	datab => \inst17|Yupa[6]~8_combout\,
	datac => \AccA|data_out\(6),
	datad => \inst17|Yupa2[6]~5_combout\,
	combout => \inst17|Yupa2[6]~6_combout\);

-- Location: LCCOMB_X37_Y37_N22
\inst17|Yupa2[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[6]~7_combout\ = ((\inst17|Yupa2[6]~6_combout\ & ((\inst17|Yupa[6]~10_combout\) # (!\inst10|data[7]~1_combout\)))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa2[7]~3_combout\,
	datab => \inst10|data[7]~1_combout\,
	datac => \inst17|Yupa[6]~10_combout\,
	datad => \inst17|Yupa2[6]~6_combout\,
	combout => \inst17|Yupa2[6]~7_combout\);

-- Location: FF_X36_Y34_N15
\AccA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[6]~1_combout\,
	asdata => \inst17|Yupa2[6]~7_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(6));

-- Location: LCCOMB_X36_Y35_N30
\inst17|Yupa[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[6]~7_combout\ = (\Auxiliar|data_out\(6) & ((\AccB|data_out\(6)) # ((!\AccB|TRI_STATE~0_combout\)))) # (!\Auxiliar|data_out\(6) & (\Auxiliar|TRI_STATE_D~0_combout\ & ((\AccB|data_out\(6)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(6),
	datab => \AccB|data_out\(6),
	datac => \Auxiliar|TRI_STATE_D~0_combout\,
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[6]~7_combout\);

-- Location: LCCOMB_X36_Y35_N12
\inst17|Yupa[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[6]~9_combout\ = (\inst17|Yupa[6]~7_combout\ & (\inst17|Yupa[6]~8_combout\ & ((\AccA|data_out\(6)) # (!\AccA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(6),
	datab => \AccA|TRI_STATE~0_combout\,
	datac => \inst17|Yupa[6]~7_combout\,
	datad => \inst17|Yupa[6]~8_combout\,
	combout => \inst17|Yupa[6]~9_combout\);

-- Location: LCCOMB_X36_Y37_N26
\inst17|Yupa[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[6]~11_combout\ = ((\inst17|Yupa[6]~9_combout\ & ((\inst17|Yupa[6]~10_combout\) # (!\inst10|data[7]~0_combout\)))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[6]~10_combout\,
	datab => \inst10|data[7]~0_combout\,
	datac => \inst17|Yupa[6]~9_combout\,
	datad => \inst17|Yupa[7]~5_combout\,
	combout => \inst17|Yupa[6]~11_combout\);

-- Location: LCCOMB_X34_Y36_N16
\Contador-programa|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~10_combout\ = (\Contador-programa|data_out\(5) & (!\Contador-programa|Add0~9\)) # (!\Contador-programa|data_out\(5) & ((\Contador-programa|Add0~9\) # (GND)))
-- \Contador-programa|Add0~11\ = CARRY((!\Contador-programa|Add0~9\) # (!\Contador-programa|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(5),
	datad => VCC,
	cin => \Contador-programa|Add0~9\,
	combout => \Contador-programa|Add0~10_combout\,
	cout => \Contador-programa|Add0~11\);

-- Location: LCCOMB_X35_Y36_N6
\Contador-programa|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~18_combout\ = (\secueciador|inst|nEPC0~q\ & (((\inst17|Yupa[5]~15_combout\)))) # (!\secueciador|inst|nEPC0~q\ & ((\secueciador|inst|PC\(0) & ((\Contador-programa|Add0~10_combout\))) # (!\secueciador|inst|PC\(0) & 
-- (\inst17|Yupa[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nEPC0~q\,
	datab => \secueciador|inst|PC\(0),
	datac => \inst17|Yupa[5]~15_combout\,
	datad => \Contador-programa|Add0~10_combout\,
	combout => \Contador-programa|Add0~18_combout\);

-- Location: FF_X35_Y36_N7
\Contador-programa|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(5));

-- Location: LCCOMB_X34_Y36_N18
\Contador-programa|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~12_combout\ = (\Contador-programa|data_out\(6) & (\Contador-programa|Add0~11\ $ (GND))) # (!\Contador-programa|data_out\(6) & (!\Contador-programa|Add0~11\ & VCC))
-- \Contador-programa|Add0~13\ = CARRY((\Contador-programa|data_out\(6) & !\Contador-programa|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador-programa|data_out\(6),
	datad => VCC,
	cin => \Contador-programa|Add0~11\,
	combout => \Contador-programa|Add0~12_combout\,
	cout => \Contador-programa|Add0~13\);

-- Location: LCCOMB_X35_Y36_N24
\Contador-programa|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~17_combout\ = (\secueciador|inst|nEPC0~q\ & (\inst17|Yupa[6]~11_combout\)) # (!\secueciador|inst|nEPC0~q\ & ((\secueciador|inst|PC\(0) & ((\Contador-programa|Add0~12_combout\))) # (!\secueciador|inst|PC\(0) & 
-- (\inst17|Yupa[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[6]~11_combout\,
	datab => \secueciador|inst|nEPC0~q\,
	datac => \Contador-programa|Add0~12_combout\,
	datad => \secueciador|inst|PC\(0),
	combout => \Contador-programa|Add0~17_combout\);

-- Location: FF_X35_Y36_N25
\Contador-programa|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(6));

-- Location: LCCOMB_X34_Y36_N20
\Contador-programa|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~14_combout\ = \Contador-programa|data_out\(7) $ (\Contador-programa|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(7),
	cin => \Contador-programa|Add0~13\,
	combout => \Contador-programa|Add0~14_combout\);

-- Location: LCCOMB_X34_Y36_N30
\Contador-programa|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~16_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[7]~6_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~14_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \secueciador|inst|nEPC0~q\,
	datac => \Contador-programa|Add0~14_combout\,
	datad => \inst17|Yupa[7]~6_combout\,
	combout => \Contador-programa|Add0~16_combout\);

-- Location: FF_X34_Y36_N31
\Contador-programa|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(7));

-- Location: LCCOMB_X34_Y36_N28
\inst9[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[7]~0_combout\ = (\secueciador|inst|PC\(0)) # ((\secueciador|inst|nEPC0~q\) # ((\Contador-programa|data_out\(7)) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \secueciador|inst|nEPC0~q\,
	datac => \Contador-programa|data_out\(7),
	datad => \secueciador|inst|nCBD~q\,
	combout => \inst9[7]~0_combout\);

-- Location: FF_X37_Y37_N5
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst9[7]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X34_Y36_N4
\inst9[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[5]~2_combout\ = (\secueciador|inst|PC\(0)) # (((\secueciador|inst|nEPC0~q\) # (\Contador-programa|data_out\(5))) # (!\secueciador|inst|nCBD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \secueciador|inst|nCBD~q\,
	datac => \secueciador|inst|nEPC0~q\,
	datad => \Contador-programa|data_out\(5),
	combout => \inst9[5]~2_combout\);

-- Location: FF_X37_Y37_N29
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst9[5]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X34_Y36_N2
\inst9[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[6]~1_combout\ = (\secueciador|inst|PC\(0)) # ((\Contador-programa|data_out\(6)) # ((\secueciador|inst|nEPC0~q\) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \Contador-programa|data_out\(6),
	datac => \secueciador|inst|nEPC0~q\,
	datad => \secueciador|inst|nCBD~q\,
	combout => \inst9[6]~1_combout\);

-- Location: FF_X37_Y37_N19
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst9[6]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X37_Y37_N18
\inst17|Yupa[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[2]~3_combout\ = (!\inst8|valor_interno\(7) & (!\inst8|valor_interno\(5) & (!\inst8|valor_interno\(6) & \secueciador|inst|nAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(7),
	datab => \inst8|valor_interno\(5),
	datac => \inst8|valor_interno\(6),
	datad => \secueciador|inst|nAS~q\,
	combout => \inst17|Yupa[2]~3_combout\);

-- Location: LCCOMB_X37_Y37_N10
\inst10|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data_out[0]~0_combout\ = (!\inst8|valor_interno\(4) & \inst17|Yupa[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(4),
	datad => \inst17|Yupa[2]~3_combout\,
	combout => \inst10|data_out[0]~0_combout\);

-- Location: LCCOMB_X37_Y37_N8
\inst10|data_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data_out[0]~2_combout\ = (!\inst8|valor_interno\(3) & (!\inst8|valor_interno\(1) & (\inst8|valor_interno\(2) & \inst10|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(3),
	datab => \inst8|valor_interno\(1),
	datac => \inst8|valor_interno\(2),
	datad => \inst10|data_out[0]~0_combout\,
	combout => \inst10|data_out[0]~2_combout\);

-- Location: LCCOMB_X36_Y33_N12
\Buffer-Alta|PortL[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Buffer-Alta|PortL[4]~2_combout\ = ((\inst10|data_out[0]~2_combout\) # (!\secueciador|inst|nAS~q\)) # (!\secueciador|inst|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datac => \secueciador|inst|nAS~q\,
	datad => \inst10|data_out[0]~2_combout\,
	combout => \Buffer-Alta|PortL[4]~2_combout\);

-- Location: LCCOMB_X36_Y33_N16
\inst17|Yupa2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[4]~11_combout\ = (\AccB|data_out\(4) & ((\AccA|data_out\(4)) # ((\AccA|B[7]~0_combout\)))) # (!\AccB|data_out\(4) & (\AccB|B[7]~0_combout\ & ((\AccA|data_out\(4)) # (\AccA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(4),
	datab => \AccA|data_out\(4),
	datac => \AccA|B[7]~0_combout\,
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[4]~11_combout\);

-- Location: FF_X37_Y34_N21
\inst17|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~10_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Banderas\(4));

-- Location: LCCOMB_X36_Y33_N24
\inst17|Yupa2[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[4]~12_combout\ = (\inst17|Banderas\(4) & (((\Auxiliar|data_out\(12)) # (\Auxiliar|TRI_STATE_C~0_combout\)))) # (!\inst17|Banderas\(4) & (!\secueciador|inst|nDUPA~q\ & ((\Auxiliar|data_out\(12)) # (\Auxiliar|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Banderas\(4),
	datab => \secueciador|inst|nDUPA~q\,
	datac => \Auxiliar|data_out\(12),
	datad => \Auxiliar|TRI_STATE_C~0_combout\,
	combout => \inst17|Yupa2[4]~12_combout\);

-- Location: LCCOMB_X36_Y33_N22
\inst17|Yupa2[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[4]~13_combout\ = ((\Buffer-Alta|PortL[4]~2_combout\ & (\inst17|Yupa2[4]~11_combout\ & \inst17|Yupa2[4]~12_combout\))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buffer-Alta|PortL[4]~2_combout\,
	datab => \inst17|Yupa2[4]~11_combout\,
	datac => \inst17|Yupa2[7]~3_combout\,
	datad => \inst17|Yupa2[4]~12_combout\,
	combout => \inst17|Yupa2[4]~13_combout\);

-- Location: FF_X36_Y34_N11
\AccA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[4]~3_combout\,
	asdata => \inst17|Yupa2[4]~13_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(4));

-- Location: LCCOMB_X36_Y35_N4
\inst17|Yupa[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[4]~16_combout\ = (\AccA|data_out\(4) & (((\AccB|data_out\(4))) # (!\AccB|TRI_STATE~0_combout\))) # (!\AccA|data_out\(4) & (!\AccA|TRI_STATE~0_combout\ & ((\AccB|data_out\(4)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(4),
	datab => \AccB|TRI_STATE~0_combout\,
	datac => \AccB|data_out\(4),
	datad => \AccA|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[4]~16_combout\);

-- Location: LCCOMB_X36_Y35_N18
\inst17|Yupa[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[4]~17_combout\ = (\Auxiliar|data_out\(4) & (((\inst17|Banderas\(4)) # (!\secueciador|inst|nDUPA~q\)))) # (!\Auxiliar|data_out\(4) & (\Auxiliar|TRI_STATE_D~0_combout\ & ((\inst17|Banderas\(4)) # (!\secueciador|inst|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(4),
	datab => \Auxiliar|TRI_STATE_D~0_combout\,
	datac => \secueciador|inst|nDUPA~q\,
	datad => \inst17|Banderas\(4),
	combout => \inst17|Yupa[4]~17_combout\);

-- Location: LCCOMB_X35_Y35_N8
\inst17|Yupa[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[4]~18_combout\ = ((\inst17|Yupa[4]~16_combout\ & (\inst17|Yupa[4]~17_combout\ & \Buffer-Baja|PortL[4]~2_combout\))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[4]~16_combout\,
	datab => \inst17|Yupa[4]~17_combout\,
	datac => \inst17|Yupa[7]~5_combout\,
	datad => \Buffer-Baja|PortL[4]~2_combout\,
	combout => \inst17|Yupa[4]~18_combout\);

-- Location: LCCOMB_X35_Y36_N20
\Contador-programa|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~19_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[4]~18_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~8_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|Add0~8_combout\,
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nEPC0~q\,
	datad => \inst17|Yupa[4]~18_combout\,
	combout => \Contador-programa|Add0~19_combout\);

-- Location: FF_X35_Y36_N21
\Contador-programa|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(4));

-- Location: LCCOMB_X35_Y36_N14
\inst9[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[4]~3_combout\ = (\Contador-programa|data_out\(4)) # ((\secueciador|inst|nEPC0~q\) # ((\secueciador|inst|PC\(0)) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(4),
	datab => \secueciador|inst|nEPC0~q\,
	datac => \secueciador|inst|nCBD~q\,
	datad => \secueciador|inst|PC\(0),
	combout => \inst9[4]~3_combout\);

-- Location: FF_X37_Y36_N23
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst9[4]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X37_Y37_N30
\inst10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst8|valor_interno\(4)) # ((\inst8|valor_interno\(3)) # (\inst8|valor_interno\(2) $ (\inst8|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(2),
	datab => \inst8|valor_interno\(0),
	datac => \inst8|valor_interno\(4),
	datad => \inst8|valor_interno\(3),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y37_N24
\inst17|Yupa[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[2]~22_combout\ = (!\inst10|Mux5~0_combout\ & \inst17|Yupa[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mux5~0_combout\,
	datad => \inst17|Yupa[2]~3_combout\,
	combout => \inst17|Yupa[2]~22_combout\);

-- Location: LCCOMB_X36_Y33_N0
\inst17|Yupa2[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[2]~17_combout\ = (\Auxiliar|TRI_STATE_C~0_combout\ & ((\inst17|Yupa[2]~22_combout\) # ((!\inst10|data[7]~1_combout\)))) # (!\Auxiliar|TRI_STATE_C~0_combout\ & (\Auxiliar|data_out\(10) & ((\inst17|Yupa[2]~22_combout\) # 
-- (!\inst10|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|TRI_STATE_C~0_combout\,
	datab => \inst17|Yupa[2]~22_combout\,
	datac => \Auxiliar|data_out\(10),
	datad => \inst10|data[7]~1_combout\,
	combout => \inst17|Yupa2[2]~17_combout\);

-- Location: FF_X37_Y34_N17
\inst17|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~6_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Yupa_interno\(2));

-- Location: LCCOMB_X36_Y33_N6
\inst17|Yupa2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[2]~18_combout\ = (\AccA|data_out\(2) & ((\inst17|Yupa_interno\(2)) # ((!\secueciador|inst|nDUPA~q\)))) # (!\AccA|data_out\(2) & (\AccA|B[7]~0_combout\ & ((\inst17|Yupa_interno\(2)) # (!\secueciador|inst|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(2),
	datab => \inst17|Yupa_interno\(2),
	datac => \AccA|B[7]~0_combout\,
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X36_Y33_N20
\inst17|Yupa2[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[2]~19_combout\ = ((\AccB|B[2]~1_combout\ & (\inst17|Yupa2[2]~17_combout\ & \inst17|Yupa2[2]~18_combout\))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|B[2]~1_combout\,
	datab => \inst17|Yupa2[2]~17_combout\,
	datac => \inst17|Yupa2[7]~3_combout\,
	datad => \inst17|Yupa2[2]~18_combout\,
	combout => \inst17|Yupa2[2]~19_combout\);

-- Location: FF_X36_Y34_N31
\AccA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[2]~5_combout\,
	asdata => \inst17|Yupa2[2]~19_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(2));

-- Location: LCCOMB_X36_Y33_N8
\inst17|Yupa[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[2]~24_combout\ = (\AccA|data_out\(2) & (((\inst17|Yupa_interno\(2))) # (!\secueciador|inst|nDUPA~q\))) # (!\AccA|data_out\(2) & (!\AccA|TRI_STATE~0_combout\ & ((\inst17|Yupa_interno\(2)) # (!\secueciador|inst|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(2),
	datab => \secueciador|inst|nDUPA~q\,
	datac => \inst17|Yupa_interno\(2),
	datad => \AccA|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[2]~24_combout\);

-- Location: LCCOMB_X36_Y36_N8
\AccB|A[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|A[2]~0_combout\ = (\secueciador|inst|EA\(1)) # ((\secueciador|inst|nWB~q\) # ((\AccB|data_out\(2)) # (!\secueciador|inst|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \secueciador|inst|nWB~q\,
	datac => \AccB|data_out\(2),
	datad => \secueciador|inst|EB\(0),
	combout => \AccB|A[2]~0_combout\);

-- Location: LCCOMB_X36_Y37_N22
\Auxiliar|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~10_combout\ = (\secueciador|inst|BD~q\ & ((\Auxiliar|data_out\(3)))) # (!\secueciador|inst|BD~q\ & (\inst17|Yupa[2]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datac => \inst17|Yupa[2]~25_combout\,
	datad => \Auxiliar|data_out\(3),
	combout => \Auxiliar|data_out~10_combout\);

-- Location: FF_X36_Y37_N23
\Auxiliar|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(2));

-- Location: LCCOMB_X36_Y36_N26
\inst17|Yupa[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[2]~23_combout\ = (\inst17|Yupa[2]~22_combout\ & ((\Auxiliar|data_out\(2)) # ((\Auxiliar|TRI_STATE_D~0_combout\)))) # (!\inst17|Yupa[2]~22_combout\ & (!\inst10|data[7]~0_combout\ & ((\Auxiliar|data_out\(2)) # 
-- (\Auxiliar|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[2]~22_combout\,
	datab => \Auxiliar|data_out\(2),
	datac => \Auxiliar|TRI_STATE_D~0_combout\,
	datad => \inst10|data[7]~0_combout\,
	combout => \inst17|Yupa[2]~23_combout\);

-- Location: LCCOMB_X36_Y36_N22
\inst17|Yupa[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[2]~25_combout\ = ((\inst17|Yupa[2]~24_combout\ & (\AccB|A[2]~0_combout\ & \inst17|Yupa[2]~23_combout\))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[2]~24_combout\,
	datab => \AccB|A[2]~0_combout\,
	datac => \inst17|Yupa[2]~23_combout\,
	datad => \inst17|Yupa[7]~5_combout\,
	combout => \inst17|Yupa[2]~25_combout\);

-- Location: LCCOMB_X35_Y36_N28
\Contador-programa|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~21_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[2]~25_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~4_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|Add0~4_combout\,
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nEPC0~q\,
	datad => \inst17|Yupa[2]~25_combout\,
	combout => \Contador-programa|Add0~21_combout\);

-- Location: FF_X35_Y36_N29
\Contador-programa|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(2));

-- Location: LCCOMB_X34_Y36_N26
\Contador-programa|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Contador-programa|Add0~20_combout\ = (\secueciador|inst|PC\(0) & ((\secueciador|inst|nEPC0~q\ & ((\inst17|Yupa[3]~21_combout\))) # (!\secueciador|inst|nEPC0~q\ & (\Contador-programa|Add0~6_combout\)))) # (!\secueciador|inst|PC\(0) & 
-- (((\inst17|Yupa[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|PC\(0),
	datab => \secueciador|inst|nEPC0~q\,
	datac => \Contador-programa|Add0~6_combout\,
	datad => \inst17|Yupa[3]~21_combout\,
	combout => \Contador-programa|Add0~20_combout\);

-- Location: FF_X34_Y36_N27
\Contador-programa|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador-programa|Add0~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador-programa|data_out\(3));

-- Location: LCCOMB_X35_Y36_N22
\inst9[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[3]~4_combout\ = (\Contador-programa|data_out\(3)) # ((\secueciador|inst|PC\(0)) # ((\secueciador|inst|nEPC0~q\) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador-programa|data_out\(3),
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nCBD~q\,
	datad => \secueciador|inst|nEPC0~q\,
	combout => \inst9[3]~4_combout\);

-- Location: FF_X35_Y36_N23
\inst8|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9[3]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(3));

-- Location: LCCOMB_X37_Y37_N12
\inst10|data_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data_out[7]~1_combout\ = (!\inst8|valor_interno\(3) & (!\inst8|valor_interno\(0) & (!\inst8|valor_interno\(2) & \inst10|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(3),
	datab => \inst8|valor_interno\(0),
	datac => \inst8|valor_interno\(2),
	datad => \inst10|data_out[0]~0_combout\,
	combout => \inst10|data_out[7]~1_combout\);

-- Location: LCCOMB_X38_Y35_N0
\inst17|Yupa2[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[7]~0_combout\ = (\Auxiliar|TRI_STATE_C~0_combout\ & (((\AccB|data_out\(7)) # (\AccB|B[7]~0_combout\)))) # (!\Auxiliar|TRI_STATE_C~0_combout\ & (\Auxiliar|data_out\(15) & ((\AccB|data_out\(7)) # (\AccB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|TRI_STATE_C~0_combout\,
	datab => \Auxiliar|data_out\(15),
	datac => \AccB|data_out\(7),
	datad => \AccB|B[7]~0_combout\,
	combout => \inst17|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X37_Y37_N26
\inst17|Yupa2[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[7]~1_combout\ = (\inst17|Yupa[7]~1_combout\ & (\inst17|Yupa2[7]~0_combout\ & ((\AccA|B[7]~0_combout\) # (\AccA|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|B[7]~0_combout\,
	datab => \AccA|data_out\(7),
	datac => \inst17|Yupa[7]~1_combout\,
	datad => \inst17|Yupa2[7]~0_combout\,
	combout => \inst17|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X37_Y37_N0
\inst17|Yupa2[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa2[7]~4_combout\ = ((\inst17|Yupa2[7]~1_combout\ & ((\inst10|data_out[7]~1_combout\) # (!\inst10|data[7]~1_combout\)))) # (!\inst17|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|data_out[7]~1_combout\,
	datab => \inst10|data[7]~1_combout\,
	datac => \inst17|Yupa2[7]~1_combout\,
	datad => \inst17|Yupa2[7]~3_combout\,
	combout => \inst17|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X41_Y36_N24
\Auxiliar|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~0_combout\ = (\secueciador|inst|RA\(0)) # (\inst17|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|inst|RA\(0),
	datad => \inst17|Yupa2[7]~4_combout\,
	combout => \Auxiliar|data_out~0_combout\);

-- Location: FF_X41_Y36_N25
\Auxiliar|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(15));

-- Location: LCCOMB_X38_Y36_N2
\secueciador|inst4|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst4|SELECTOR~0_combout\ = (\secueciador|inst|liga\(0)) # ((!\secueciador|inst|BD~q\ & (!\secueciador|inst|RA\(0) & !\Auxiliar|data_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|BD~q\,
	datab => \secueciador|inst|RA\(0),
	datac => \secueciador|inst|liga\(0),
	datad => \Auxiliar|data_out\(15),
	combout => \secueciador|inst4|SELECTOR~0_combout\);

-- Location: LCCOMB_X43_Y36_N10
\secueciador|inst9|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[1]~11_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ $ (VCC))) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & VCC))
-- \secueciador|inst9|valor_interno[1]~12\ = CARRY((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => VCC,
	combout => \secueciador|inst9|valor_interno[1]~11_combout\,
	cout => \secueciador|inst9|valor_interno[1]~12\);

-- Location: LCCOMB_X43_Y36_N12
\secueciador|inst9|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[2]~13_combout\ = (\secueciador|inst9|valor_interno[1]~12\ & ((\secueciador|inst4|SELECTOR~1_combout\) # ((!\secueciador|inst9|valor_interno\(2))))) # (!\secueciador|inst9|valor_interno[1]~12\ & 
-- (((!\secueciador|inst4|SELECTOR~1_combout\ & \secueciador|inst9|valor_interno\(2))) # (GND)))
-- \secueciador|inst9|valor_interno[2]~14\ = CARRY((\secueciador|inst4|SELECTOR~1_combout\) # ((!\secueciador|inst9|valor_interno[1]~12\) # (!\secueciador|inst9|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst4|SELECTOR~1_combout\,
	datab => \secueciador|inst9|valor_interno\(2),
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[1]~12\,
	combout => \secueciador|inst9|valor_interno[2]~13_combout\,
	cout => \secueciador|inst9|valor_interno[2]~14\);

-- Location: LCCOMB_X43_Y36_N14
\secueciador|inst9|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[3]~15_combout\ = (\secueciador|inst9|valor_interno[2]~14\ & (!\secueciador|inst4|SELECTOR~1_combout\ & (\secueciador|inst9|valor_interno\(3) & VCC))) # (!\secueciador|inst9|valor_interno[2]~14\ & 
-- ((((!\secueciador|inst4|SELECTOR~1_combout\ & \secueciador|inst9|valor_interno\(3))))))
-- \secueciador|inst9|valor_interno[3]~16\ = CARRY((!\secueciador|inst4|SELECTOR~1_combout\ & (\secueciador|inst9|valor_interno\(3) & !\secueciador|inst9|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst4|SELECTOR~1_combout\,
	datab => \secueciador|inst9|valor_interno\(3),
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[2]~14\,
	combout => \secueciador|inst9|valor_interno[3]~15_combout\,
	cout => \secueciador|inst9|valor_interno[3]~16\);

-- Location: FF_X43_Y36_N15
\secueciador|inst9|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[3]~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(3));

-- Location: LCCOMB_X38_Y36_N12
\secueciador|bus1|$00000|auto_generated|result_node[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\ = (\secueciador|inst9|valor_interno\(3) & (!\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & ((!\secueciador|inst4|SELECTOR~0_combout\) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\,
	datab => \secueciador|inst4|SELECTOR~0_combout\,
	datac => \secueciador|inst9|valor_interno\(3),
	datad => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\);

-- Location: LCCOMB_X39_Y36_N8
\secueciador|inst7|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal3~1_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & 
-- \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \secueciador|inst7|Equal3~1_combout\);

-- Location: LCCOMB_X36_Y36_N2
\secueciador|inst7|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal14~1_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & (\secueciador|inst7|Equal14~0_combout\ & 
-- \secueciador|inst7|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \secueciador|inst7|Equal14~0_combout\,
	datad => \secueciador|inst7|Equal3~1_combout\,
	combout => \secueciador|inst7|Equal14~1_combout\);

-- Location: LCCOMB_X36_Y36_N0
\secueciador|inst7|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal18~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & \secueciador|inst7|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \secueciador|inst7|Equal14~1_combout\,
	combout => \secueciador|inst7|Equal18~0_combout\);

-- Location: FF_X36_Y36_N1
\secueciador|inst|nEPC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|Equal18~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nEPC0~q\);

-- Location: LCCOMB_X35_Y36_N30
\inst9[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[0]~6_combout\ = (\secueciador|inst|nEPC0~q\) # ((\secueciador|inst|PC\(0)) # ((\Contador-programa|data_out\(0)) # (!\secueciador|inst|nCBD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nEPC0~q\,
	datab => \secueciador|inst|PC\(0),
	datac => \secueciador|inst|nCBD~q\,
	datad => \Contador-programa|data_out\(0),
	combout => \inst9[0]~6_combout\);

-- Location: FF_X35_Y36_N31
\inst8|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9[0]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(0));

-- Location: LCCOMB_X36_Y37_N30
\inst10|data_out[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|data_out[0]~4_combout\ = (!\inst8|valor_interno\(0) & \inst10|data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(0),
	datac => \inst10|data_out[0]~2_combout\,
	combout => \inst10|data_out[0]~4_combout\);

-- Location: LCCOMB_X36_Y36_N30
\Auxiliar|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~12_combout\ = (\secueciador|inst|BD~q\ & (\Auxiliar|data_out\(2))) # (!\secueciador|inst|BD~q\ & ((\inst17|Yupa[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Auxiliar|data_out\(2),
	datac => \inst17|Yupa[1]~30_combout\,
	datad => \secueciador|inst|BD~q\,
	combout => \Auxiliar|data_out~12_combout\);

-- Location: FF_X36_Y36_N31
\Auxiliar|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(1));

-- Location: LCCOMB_X36_Y36_N6
\Auxiliar|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Auxiliar|data_out~14_combout\ = (\secueciador|inst|BD~q\ & (\Auxiliar|data_out\(1))) # (!\secueciador|inst|BD~q\ & ((\inst17|Yupa[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(1),
	datab => \secueciador|inst|BD~q\,
	datad => \inst17|Yupa[0]~34_combout\,
	combout => \Auxiliar|data_out~14_combout\);

-- Location: FF_X36_Y36_N7
\Auxiliar|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Auxiliar|data_out~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \secueciador|inst|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Auxiliar|data_out\(0));

-- Location: LCCOMB_X37_Y35_N8
\inst17|Yupa[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[0]~31_combout\ = (\Auxiliar|TRI_STATE_D~0_combout\ & ((\AccB|data_out\(0)) # ((!\AccB|TRI_STATE~0_combout\)))) # (!\Auxiliar|TRI_STATE_D~0_combout\ & (\Auxiliar|data_out\(0) & ((\AccB|data_out\(0)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|TRI_STATE_D~0_combout\,
	datab => \AccB|data_out\(0),
	datac => \Auxiliar|data_out\(0),
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[0]~31_combout\);

-- Location: LCCOMB_X37_Y35_N2
\inst17|Yupa[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[0]~33_combout\ = (\inst17|Yupa[0]~32_combout\ & (\inst17|Yupa[0]~31_combout\ & ((\AccA|data_out\(0)) # (!\AccA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(0),
	datab => \inst17|Yupa[0]~32_combout\,
	datac => \inst17|Yupa[0]~31_combout\,
	datad => \AccA|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[0]~33_combout\);

-- Location: LCCOMB_X36_Y36_N28
\inst17|Yupa[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[0]~34_combout\ = ((\inst17|Yupa[0]~33_combout\ & ((\inst10|data_out[0]~4_combout\) # (!\inst10|data[7]~0_combout\)))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|data_out[0]~4_combout\,
	datab => \inst10|data[7]~0_combout\,
	datac => \inst17|Yupa[0]~33_combout\,
	datad => \inst17|Yupa[7]~5_combout\,
	combout => \inst17|Yupa[0]~34_combout\);

-- Location: LCCOMB_X36_Y36_N24
\inst14[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[0]~7_combout\ = (\inst17|Yupa[0]~34_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[0]~34_combout\,
	combout => \inst14[0]~7_combout\);

-- Location: FF_X36_Y36_N25
\instruccion|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[0]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(4));

-- Location: LCCOMB_X43_Y36_N16
\secueciador|inst9|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[4]~17_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ & (!\secueciador|inst9|valor_interno[3]~16\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ & 
-- ((\secueciador|inst9|valor_interno[3]~16\) # (GND)))
-- \secueciador|inst9|valor_interno[4]~18\ = CARRY((!\secueciador|inst9|valor_interno[3]~16\) # (!\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[3]~16\,
	combout => \secueciador|inst9|valor_interno[4]~17_combout\,
	cout => \secueciador|inst9|valor_interno[4]~18\);

-- Location: FF_X43_Y36_N17
\secueciador|inst9|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[4]~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(4));

-- Location: LCCOMB_X38_Y36_N6
\secueciador|bus1|$00000|auto_generated|result_node[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ = (\instruccion|valor_interno\(4) & ((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\) # ((\secueciador|inst9|valor_interno\(4) & 
-- !\secueciador|inst4|SELECTOR~1_combout\)))) # (!\instruccion|valor_interno\(4) & (((\secueciador|inst9|valor_interno\(4) & !\secueciador|inst4|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruccion|valor_interno\(4),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \secueciador|inst9|valor_interno\(4),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\);

-- Location: LCCOMB_X43_Y36_N18
\secueciador|inst9|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[5]~19_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & (\secueciador|inst9|valor_interno[4]~18\ $ (GND))) # (!\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & 
-- (!\secueciador|inst9|valor_interno[4]~18\ & VCC))
-- \secueciador|inst9|valor_interno[5]~20\ = CARRY((\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & !\secueciador|inst9|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[4]~18\,
	combout => \secueciador|inst9|valor_interno[5]~19_combout\,
	cout => \secueciador|inst9|valor_interno[5]~20\);

-- Location: LCCOMB_X43_Y36_N20
\secueciador|inst9|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[6]~21_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\ & (!\secueciador|inst9|valor_interno[5]~20\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\ & 
-- ((\secueciador|inst9|valor_interno[5]~20\) # (GND)))
-- \secueciador|inst9|valor_interno[6]~22\ = CARRY((!\secueciador|inst9|valor_interno[5]~20\) # (!\secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[5]~20\,
	combout => \secueciador|inst9|valor_interno[6]~21_combout\,
	cout => \secueciador|inst9|valor_interno[6]~22\);

-- Location: FF_X43_Y36_N21
\secueciador|inst9|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[6]~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(6));

-- Location: LCCOMB_X35_Y36_N10
\inst14[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[2]~5_combout\ = (\inst17|Yupa[2]~25_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[2]~25_combout\,
	combout => \inst14[2]~5_combout\);

-- Location: FF_X35_Y36_N11
\instruccion|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[2]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(6));

-- Location: LCCOMB_X38_Y36_N30
\secueciador|bus1|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\ = (\secueciador|inst9|valor_interno\(6) & (((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & \instruccion|valor_interno\(6))) # 
-- (!\secueciador|inst4|SELECTOR~1_combout\))) # (!\secueciador|inst9|valor_interno\(6) & (\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & (\instruccion|valor_interno\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst9|valor_interno\(6),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \instruccion|valor_interno\(6),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X43_Y36_N22
\secueciador|inst9|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[7]~23_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & (\secueciador|inst9|valor_interno[6]~22\ $ (GND))) # (!\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & 
-- (!\secueciador|inst9|valor_interno[6]~22\ & VCC))
-- \secueciador|inst9|valor_interno[7]~24\ = CARRY((\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & !\secueciador|inst9|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[6]~22\,
	combout => \secueciador|inst9|valor_interno[7]~23_combout\,
	cout => \secueciador|inst9|valor_interno[7]~24\);

-- Location: FF_X43_Y36_N23
\secueciador|inst9|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[7]~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(7));

-- Location: LCCOMB_X35_Y36_N12
\inst14[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[3]~4_combout\ = (\inst17|Yupa[3]~21_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Yupa[3]~21_combout\,
	datad => \secueciador|inst|nCRI~q\,
	combout => \inst14[3]~4_combout\);

-- Location: FF_X35_Y36_N13
\instruccion|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[3]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(7));

-- Location: LCCOMB_X38_Y36_N4
\secueciador|bus1|$00000|auto_generated|result_node[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ = (\secueciador|inst9|valor_interno\(7) & (((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & \instruccion|valor_interno\(7))) # 
-- (!\secueciador|inst4|SELECTOR~1_combout\))) # (!\secueciador|inst9|valor_interno\(7) & (\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & (\instruccion|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst9|valor_interno\(7),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \instruccion|valor_interno\(7),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\);

-- Location: LCCOMB_X37_Y36_N22
\secueciador|inst7|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal3~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & !\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	combout => \secueciador|inst7|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y36_N30
\secueciador|inst7|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & !\secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	combout => \secueciador|inst7|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y36_N14
\secueciador|inst7|data[87]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[87]~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\) # ((\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\) # ((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & 
-- \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \secueciador|inst7|data[87]~0_combout\);

-- Location: LCCOMB_X41_Y36_N18
\secueciador|inst7|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~1_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \secueciador|inst7|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y36_N12
\secueciador|inst7|data[87]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[87]~1_combout\ = (((\secueciador|inst7|data[87]~0_combout\) # (!\secueciador|inst7|Equal0~1_combout\)) # (!\secueciador|inst7|Equal0~0_combout\)) # (!\secueciador|inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal3~0_combout\,
	datab => \secueciador|inst7|Equal0~0_combout\,
	datac => \secueciador|inst7|data[87]~0_combout\,
	datad => \secueciador|inst7|Equal0~1_combout\,
	combout => \secueciador|inst7|data[87]~1_combout\);

-- Location: LCCOMB_X42_Y36_N26
\secueciador|inst7|data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data~2_combout\ = (!\secueciador|inst7|Equal9~0_combout\ & (((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\) # (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)) # 
-- (!\secueciador|inst7|Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal11~1_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal9~0_combout\,
	combout => \secueciador|inst7|data~2_combout\);

-- Location: LCCOMB_X38_Y36_N28
\secueciador|inst7|data[87]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[87]~3_combout\ = (\secueciador|inst7|data[87]~1_combout\ & (\secueciador|inst7|Equal5~0_combout\ $ (((\secueciador|inst7|Equal18~0_combout\) # (!\secueciador|inst7|data~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal5~0_combout\,
	datab => \secueciador|inst7|data[87]~1_combout\,
	datac => \secueciador|inst7|Equal18~0_combout\,
	datad => \secueciador|inst7|data~2_combout\,
	combout => \secueciador|inst7|data[87]~3_combout\);

-- Location: FF_X38_Y36_N29
\secueciador|inst|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[87]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|prueba\(0));

-- Location: LCCOMB_X38_Y36_N10
\secueciador|inst4|SELECTOR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst4|SELECTOR~1_combout\ = (\secueciador|inst|instruccion\(0) & (((!\secueciador|inst|prueba\(0) & \secueciador|inst4|SELECTOR~0_combout\)))) # (!\secueciador|inst|instruccion\(0) & (\secueciador|inst|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|instruccion\(1),
	datab => \secueciador|inst|prueba\(0),
	datac => \secueciador|inst|instruccion\(0),
	datad => \secueciador|inst4|SELECTOR~0_combout\,
	combout => \secueciador|inst4|SELECTOR~1_combout\);

-- Location: FF_X43_Y36_N13
\secueciador|inst9|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[2]~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(2));

-- Location: LCCOMB_X38_Y36_N22
\secueciador|bus1|$00000|auto_generated|result_node[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ = (\secueciador|inst9|valor_interno\(2) & (!\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & ((!\secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\) # 
-- (!\secueciador|inst4|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst9|valor_interno\(2),
	datab => \secueciador|inst4|SELECTOR~0_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\);

-- Location: LCCOMB_X40_Y36_N10
\secueciador|inst7|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~2_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[3]~10_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	combout => \secueciador|inst7|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y36_N20
\secueciador|inst7|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~3_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	combout => \secueciador|inst7|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y36_N2
\secueciador|inst7|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal0~4_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & (\secueciador|inst7|Equal0~2_combout\ & 
-- \secueciador|inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \secueciador|inst7|Equal0~2_combout\,
	datad => \secueciador|inst7|Equal0~3_combout\,
	combout => \secueciador|inst7|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y36_N20
\secueciador|inst7|data[87]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[87]~4_combout\ = (\secueciador|inst7|data[87]~3_combout\) # ((\secueciador|inst7|Equal0~4_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal0~4_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datad => \secueciador|inst7|data[87]~3_combout\,
	combout => \secueciador|inst7|data[87]~4_combout\);

-- Location: FF_X38_Y36_N21
\secueciador|inst|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[87]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|instruccion\(1));

-- Location: LCCOMB_X38_Y36_N26
\secueciador|bus1|$00000|auto_generated|result_node[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ = (\secueciador|inst|instruccion\(1) & !\secueciador|inst|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|instruccion\(1),
	datad => \secueciador|inst|instruccion\(0),
	combout => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\);

-- Location: LCCOMB_X39_Y36_N24
\secueciador|bus1|$00000|auto_generated|result_node[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\ = (\instruccion|valor_interno\(11) & ((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\) # ((\secueciador|inst9|valor_interno\(11) & 
-- !\secueciador|inst4|SELECTOR~1_combout\)))) # (!\instruccion|valor_interno\(11) & (\secueciador|inst9|valor_interno\(11) & ((!\secueciador|inst4|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruccion|valor_interno\(11),
	datab => \secueciador|inst9|valor_interno\(11),
	datac => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\);

-- Location: LCCOMB_X38_Y36_N14
\secueciador|inst7|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal3~2_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	combout => \secueciador|inst7|Equal3~2_combout\);

-- Location: LCCOMB_X39_Y36_N10
\secueciador|inst7|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal3~3_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\ & (\secueciador|inst7|Equal3~1_combout\ & \secueciador|inst7|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~1_combout\,
	datac => \secueciador|inst7|Equal3~1_combout\,
	datad => \secueciador|inst7|Equal3~2_combout\,
	combout => \secueciador|inst7|Equal3~3_combout\);

-- Location: LCCOMB_X39_Y36_N28
\secueciador|inst7|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal4~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal4~0_combout\);

-- Location: LCCOMB_X42_Y36_N16
\secueciador|inst7|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal10~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal10~0_combout\);

-- Location: LCCOMB_X42_Y36_N10
\secueciador|inst7|data[68]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[68]~23_combout\ = (!\secueciador|inst7|Equal8~0_combout\ & (!\secueciador|inst7|Equal10~0_combout\ & (\secueciador|inst|instruccion[0]~0_combout\ & \secueciador|inst7|data[9]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal8~0_combout\,
	datab => \secueciador|inst7|Equal10~0_combout\,
	datac => \secueciador|inst|instruccion[0]~0_combout\,
	datad => \secueciador|inst7|data[9]~22_combout\,
	combout => \secueciador|inst7|data[68]~23_combout\);

-- Location: LCCOMB_X42_Y36_N14
\secueciador|inst7|data[68]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[68]~24_combout\ = (\secueciador|inst7|Equal11~2_combout\) # ((\secueciador|inst7|Equal4~0_combout\) # (\secueciador|inst7|data[68]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|Equal11~2_combout\,
	datac => \secueciador|inst7|Equal4~0_combout\,
	datad => \secueciador|inst7|data[68]~23_combout\,
	combout => \secueciador|inst7|data[68]~24_combout\);

-- Location: FF_X42_Y36_N15
\secueciador|inst|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[68]~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|EA\(0));

-- Location: LCCOMB_X36_Y34_N16
\AccA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|C[1]~6_combout\ = ((\AccA|data_out\(1)) # ((\secueciador|inst|nWA~q\) # (!\secueciador|inst|EA\(0)))) # (!\secueciador|inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|EA\(1),
	datab => \AccA|data_out\(1),
	datac => \secueciador|inst|EA\(0),
	datad => \secueciador|inst|nWA~q\,
	combout => \AccA|C[1]~6_combout\);

-- Location: LCCOMB_X36_Y34_N24
\AccA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[1]~6_combout\ = (\secueciador|inst|EA\(1) & ((\AccA|C[1]~6_combout\))) # (!\secueciador|inst|EA\(1) & (\inst17|Yupa[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[1]~30_combout\,
	datab => \AccA|C[1]~6_combout\,
	datad => \secueciador|inst|EA\(1),
	combout => \AccA|data_out[1]~6_combout\);

-- Location: FF_X36_Y34_N25
\AccA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[1]~6_combout\,
	asdata => \inst17|Yupa2[1]~22_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(1));

-- Location: LCCOMB_X36_Y35_N8
\inst17|Yupa[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[1]~26_combout\ = (\AccB|data_out\(1) & ((\Auxiliar|TRI_STATE_D~0_combout\) # ((\Auxiliar|data_out\(1))))) # (!\AccB|data_out\(1) & (!\AccB|TRI_STATE~0_combout\ & ((\Auxiliar|TRI_STATE_D~0_combout\) # (\Auxiliar|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(1),
	datab => \Auxiliar|TRI_STATE_D~0_combout\,
	datac => \Auxiliar|data_out\(1),
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[1]~26_combout\);

-- Location: LCCOMB_X36_Y35_N2
\inst17|Yupa[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[1]~28_combout\ = (\inst17|Yupa[1]~26_combout\ & (\inst17|Yupa[1]~27_combout\ & ((\AccA|data_out\(1)) # (!\AccA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccA|data_out\(1),
	datab => \AccA|TRI_STATE~0_combout\,
	datac => \inst17|Yupa[1]~26_combout\,
	datad => \inst17|Yupa[1]~27_combout\,
	combout => \inst17|Yupa[1]~28_combout\);

-- Location: LCCOMB_X36_Y36_N4
\inst17|Yupa[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[1]~30_combout\ = ((\inst17|Yupa[1]~28_combout\ & ((\inst17|Yupa[1]~29_combout\) # (!\inst10|data[7]~0_combout\)))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[1]~28_combout\,
	datab => \inst10|data[7]~0_combout\,
	datac => \inst17|Yupa[1]~29_combout\,
	datad => \inst17|Yupa[7]~5_combout\,
	combout => \inst17|Yupa[1]~30_combout\);

-- Location: LCCOMB_X35_Y36_N8
\inst14[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[1]~6_combout\ = (\inst17|Yupa[1]~30_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[1]~30_combout\,
	combout => \inst14[1]~6_combout\);

-- Location: FF_X35_Y36_N9
\instruccion|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[1]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(5));

-- Location: FF_X43_Y36_N19
\secueciador|inst9|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[5]~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(5));

-- Location: LCCOMB_X38_Y36_N16
\secueciador|bus1|$00000|auto_generated|result_node[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ = (\instruccion|valor_interno\(5) & ((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\) # ((\secueciador|inst9|valor_interno\(5) & 
-- !\secueciador|inst4|SELECTOR~1_combout\)))) # (!\instruccion|valor_interno\(5) & (((\secueciador|inst9|valor_interno\(5) & !\secueciador|inst4|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruccion|valor_interno\(5),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \secueciador|inst9|valor_interno\(5),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X41_Y36_N8
\secueciador|inst7|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal11~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\ & \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[4]~8_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[7]~5_combout\,
	combout => \secueciador|inst7|Equal11~0_combout\);

-- Location: LCCOMB_X41_Y36_N26
\secueciador|inst7|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal11~1_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\ & (\secueciador|inst7|Equal11~0_combout\ & (\secueciador|inst7|Equal0~0_combout\ & \secueciador|inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[5]~7_combout\,
	datab => \secueciador|inst7|Equal11~0_combout\,
	datac => \secueciador|inst7|Equal0~0_combout\,
	datad => \secueciador|inst7|Equal0~1_combout\,
	combout => \secueciador|inst7|Equal11~1_combout\);

-- Location: LCCOMB_X42_Y36_N2
\secueciador|inst7|data[74]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[74]~10_combout\ = (!\secueciador|inst7|Equal9~0_combout\ & ((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\) # (!\secueciador|inst7|Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|inst7|Equal11~1_combout\,
	datad => \secueciador|inst7|Equal9~0_combout\,
	combout => \secueciador|inst7|data[74]~10_combout\);

-- Location: LCCOMB_X36_Y36_N14
\secueciador|inst7|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal19~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\ & \secueciador|inst7|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[2]~11_combout\,
	datad => \secueciador|inst7|Equal14~1_combout\,
	combout => \secueciador|inst7|Equal19~0_combout\);

-- Location: LCCOMB_X37_Y36_N10
\secueciador|inst7|data[86]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~14_combout\ = (\secueciador|inst7|data[86]~11_combout\ & (((\secueciador|inst7|Equal18~0_combout\) # (!\secueciador|inst|instruccion[0]~3_combout\)) # (!\secueciador|inst7|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal19~0_combout\,
	datab => \secueciador|inst7|data[86]~11_combout\,
	datac => \secueciador|inst7|Equal18~0_combout\,
	datad => \secueciador|inst|instruccion[0]~3_combout\,
	combout => \secueciador|inst7|data[86]~14_combout\);

-- Location: LCCOMB_X37_Y36_N26
\secueciador|inst7|data[74]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[74]~16_combout\ = ((\secueciador|inst7|data[74]~10_combout\ & (\secueciador|inst|instruccion[0]~1_combout\ & \secueciador|inst7|Equal13~0_combout\))) # (!\secueciador|inst7|data[86]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[74]~10_combout\,
	datab => \secueciador|inst|instruccion[0]~1_combout\,
	datac => \secueciador|inst7|Equal13~0_combout\,
	datad => \secueciador|inst7|data[86]~14_combout\,
	combout => \secueciador|inst7|data[74]~16_combout\);

-- Location: FF_X37_Y36_N27
\secueciador|inst|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[74]~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|liga\(0));

-- Location: LCCOMB_X42_Y36_N18
\secueciador|bus1|$00000|auto_generated|result_node[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\ = (\secueciador|inst|liga\(0) & (!\secueciador|inst|instruccion\(1) & (!\secueciador|inst|prueba\(0) & \secueciador|inst|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|liga\(0),
	datab => \secueciador|inst|instruccion\(1),
	datac => \secueciador|inst|prueba\(0),
	datad => \secueciador|inst|instruccion\(0),
	combout => \secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X42_Y36_N30
\secueciador|bus1|$00000|auto_generated|result_node[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\) # ((\secueciador|inst9|valor_interno\(0) & !\secueciador|inst4|SELECTOR~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst9|valor_interno\(0),
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~13_combout\,
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X40_Y36_N2
\secueciador|inst7|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal1~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & \secueciador|inst7|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal0~4_combout\,
	combout => \secueciador|inst7|Equal1~0_combout\);

-- Location: FF_X40_Y36_N3
\secueciador|inst|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|Equal1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|nCRI~q\);

-- Location: LCCOMB_X35_Y36_N26
\inst14[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[4]~3_combout\ = (\inst17|Yupa[4]~18_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[4]~18_combout\,
	combout => \inst14[4]~3_combout\);

-- Location: FF_X35_Y36_N27
\instruccion|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[4]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(8));

-- Location: LCCOMB_X43_Y36_N24
\secueciador|inst9|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[8]~25_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ & (!\secueciador|inst9|valor_interno[7]~24\)) # (!\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ & 
-- ((\secueciador|inst9|valor_interno[7]~24\) # (GND)))
-- \secueciador|inst9|valor_interno[8]~26\ = CARRY((!\secueciador|inst9|valor_interno[7]~24\) # (!\secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[7]~24\,
	combout => \secueciador|inst9|valor_interno[8]~25_combout\,
	cout => \secueciador|inst9|valor_interno[8]~26\);

-- Location: FF_X43_Y36_N25
\secueciador|inst9|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[8]~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(8));

-- Location: LCCOMB_X38_Y36_N18
\secueciador|bus1|$00000|auto_generated|result_node[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\ = (\instruccion|valor_interno\(8) & ((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\) # ((\secueciador|inst9|valor_interno\(8) & 
-- !\secueciador|inst4|SELECTOR~1_combout\)))) # (!\instruccion|valor_interno\(8) & (((\secueciador|inst9|valor_interno\(8) & !\secueciador|inst4|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruccion|valor_interno\(8),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \secueciador|inst9|valor_interno\(8),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[8]~4_combout\);

-- Location: LCCOMB_X43_Y36_N26
\secueciador|inst9|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst9|valor_interno[9]~27_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & (\secueciador|inst9|valor_interno[8]~26\ $ (GND))) # (!\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & 
-- (!\secueciador|inst9|valor_interno[8]~26\ & VCC))
-- \secueciador|inst9|valor_interno[9]~28\ = CARRY((\secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ & !\secueciador|inst9|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\,
	datad => VCC,
	cin => \secueciador|inst9|valor_interno[8]~26\,
	combout => \secueciador|inst9|valor_interno[9]~27_combout\,
	cout => \secueciador|inst9|valor_interno[9]~28\);

-- Location: FF_X43_Y36_N27
\secueciador|inst9|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[9]~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(9));

-- Location: LCCOMB_X35_Y36_N16
\inst14[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[5]~2_combout\ = (\inst17|Yupa[5]~15_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Yupa[5]~15_combout\,
	datad => \secueciador|inst|nCRI~q\,
	combout => \inst14[5]~2_combout\);

-- Location: FF_X35_Y36_N17
\instruccion|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[5]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(9));

-- Location: LCCOMB_X38_Y36_N8
\secueciador|bus1|$00000|auto_generated|result_node[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\ = (\secueciador|inst9|valor_interno\(9) & (((\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & \instruccion|valor_interno\(9))) # 
-- (!\secueciador|inst4|SELECTOR~1_combout\))) # (!\secueciador|inst9|valor_interno\(9) & (\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & (\instruccion|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst9|valor_interno\(9),
	datab => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \instruccion|valor_interno\(9),
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[9]~3_combout\);

-- Location: FF_X43_Y36_N29
\secueciador|inst9|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[10]~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(10));

-- Location: LCCOMB_X35_Y36_N2
\inst14[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14[6]~1_combout\ = (\inst17|Yupa[6]~11_combout\) # (!\secueciador|inst|nCRI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst|nCRI~q\,
	datad => \inst17|Yupa[6]~11_combout\,
	combout => \inst14[6]~1_combout\);

-- Location: FF_X35_Y36_N3
\instruccion|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14[6]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruccion|valor_interno\(10));

-- Location: LCCOMB_X39_Y36_N26
\secueciador|bus1|$00000|auto_generated|result_node[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ = (\secueciador|inst9|valor_interno\(10) & (((\instruccion|valor_interno\(10) & \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\)) # 
-- (!\secueciador|inst4|SELECTOR~1_combout\))) # (!\secueciador|inst9|valor_interno\(10) & (\instruccion|valor_interno\(10) & (\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst9|valor_interno\(10),
	datab => \instruccion|valor_interno\(10),
	datac => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \secueciador|inst4|SELECTOR~1_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\);

-- Location: LCCOMB_X39_Y36_N14
\secueciador|inst7|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal5~0_combout\ = (\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (!\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal5~0_combout\);

-- Location: LCCOMB_X41_Y36_N16
\secueciador|inst7|data[86]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~5_combout\ = (\secueciador|inst7|Equal5~0_combout\) # ((\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|inst7|Equal11~1_combout\ & 
-- !\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal5~0_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datac => \secueciador|inst7|Equal11~1_combout\,
	datad => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \secueciador|inst7|data[86]~5_combout\);

-- Location: LCCOMB_X37_Y36_N30
\secueciador|inst7|data[86]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~7_combout\ = (!\secueciador|inst7|Equal3~4_combout\ & \secueciador|inst7|data[87]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|Equal3~4_combout\,
	datad => \secueciador|inst7|data[87]~1_combout\,
	combout => \secueciador|inst7|data[86]~7_combout\);

-- Location: LCCOMB_X37_Y36_N24
\secueciador|inst7|data[86]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~9_combout\ = (!\secueciador|inst7|Equal11~2_combout\ & (!\secueciador|inst7|Equal14~3_combout\ & (\secueciador|inst7|data[86]~7_combout\ & \secueciador|inst7|data[86]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal11~2_combout\,
	datab => \secueciador|inst7|Equal14~3_combout\,
	datac => \secueciador|inst7|data[86]~7_combout\,
	datad => \secueciador|inst7|data[86]~8_combout\,
	combout => \secueciador|inst7|data[86]~9_combout\);

-- Location: LCCOMB_X37_Y36_N4
\secueciador|inst7|data[86]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~13_combout\ = (\secueciador|inst7|data[86]~9_combout\ & (\secueciador|inst7|data[86]~6_combout\ & ((\secueciador|inst7|Equal18~0_combout\) # (!\secueciador|inst|instruccion[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|Equal18~0_combout\,
	datab => \secueciador|inst7|data[86]~9_combout\,
	datac => \secueciador|inst7|data[86]~6_combout\,
	datad => \secueciador|inst|instruccion[0]~3_combout\,
	combout => \secueciador|inst7|data[86]~13_combout\);

-- Location: LCCOMB_X37_Y36_N16
\secueciador|inst7|data[86]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[86]~15_combout\ = (\secueciador|inst7|data[86]~5_combout\) # (((\secueciador|inst7|data[86]~13_combout\) # (!\secueciador|inst7|data[86]~14_combout\)) # (!\secueciador|inst7|data~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|inst7|data[86]~5_combout\,
	datab => \secueciador|inst7|data~2_combout\,
	datac => \secueciador|inst7|data[86]~13_combout\,
	datad => \secueciador|inst7|data[86]~14_combout\,
	combout => \secueciador|inst7|data[86]~15_combout\);

-- Location: FF_X37_Y36_N17
\secueciador|inst|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[86]~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|instruccion\(0));

-- Location: LCCOMB_X38_Y36_N24
\secueciador|bus1|$00000|auto_generated|result_node[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\ = (\secueciador|inst|instruccion\(0) & !\secueciador|inst|prueba\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|instruccion\(0),
	datad => \secueciador|inst|prueba\(0),
	combout => \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\);

-- Location: FF_X43_Y36_N11
\secueciador|inst9|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst9|valor_interno[1]~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst9|valor_interno\(1));

-- Location: LCCOMB_X38_Y36_N0
\secueciador|bus1|$00000|auto_generated|result_node[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ = (\secueciador|inst9|valor_interno\(1) & (!\secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\ & ((!\secueciador|inst4|SELECTOR~0_combout\) # 
-- (!\secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[0]~9_combout\,
	datab => \secueciador|inst4|SELECTOR~0_combout\,
	datac => \secueciador|inst9|valor_interno\(1),
	datad => \secueciador|bus1|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X39_Y36_N12
\secueciador|inst7|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|Equal8~0_combout\ = (!\secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\ & (\secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \secueciador|inst7|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secueciador|bus1|$00000|auto_generated|result_node[1]~12_combout\,
	datab => \secueciador|bus1|$00000|auto_generated|result_node[10]~2_combout\,
	datac => \secueciador|bus1|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \secueciador|inst7|Equal3~3_combout\,
	combout => \secueciador|inst7|Equal8~0_combout\);

-- Location: LCCOMB_X37_Y36_N8
\secueciador|inst|instruccion[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst|instruccion[0]~1_combout\ = (!\secueciador|inst7|Equal8~0_combout\ & (!\secueciador|inst7|Equal4~0_combout\ & \secueciador|inst|instruccion[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst7|Equal8~0_combout\,
	datac => \secueciador|inst7|Equal4~0_combout\,
	datad => \secueciador|inst|instruccion[0]~0_combout\,
	combout => \secueciador|inst|instruccion[0]~1_combout\);

-- Location: LCCOMB_X37_Y36_N20
\secueciador|inst7|data[69]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secueciador|inst7|data[69]~20_combout\ = (\secueciador|inst|instruccion[0]~1_combout\ & (\secueciador|inst7|Equal11~2_combout\ & !\secueciador|inst7|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secueciador|inst|instruccion[0]~1_combout\,
	datac => \secueciador|inst7|Equal11~2_combout\,
	datad => \secueciador|inst7|Equal6~0_combout\,
	combout => \secueciador|inst7|data[69]~20_combout\);

-- Location: FF_X37_Y36_N21
\secueciador|inst|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \secueciador|inst7|data[69]~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secueciador|inst|EA\(1));

-- Location: LCCOMB_X38_Y35_N12
\AccB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|C[7]~0_combout\ = (\AccB|data_out\(7)) # (((\secueciador|inst|nWB~q\) # (!\secueciador|inst|EB\(0))) # (!\secueciador|inst|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(7),
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|nWB~q\,
	combout => \AccB|C[7]~0_combout\);

-- Location: LCCOMB_X36_Y35_N28
\AccB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccB|data_out[7]~0_combout\ = (\secueciador|inst|EB\(0) & (\AccB|C[7]~0_combout\)) # (!\secueciador|inst|EB\(0) & ((\inst17|Yupa2[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|C[7]~0_combout\,
	datab => \secueciador|inst|EB\(0),
	datad => \inst17|Yupa2[7]~4_combout\,
	combout => \AccB|data_out[7]~0_combout\);

-- Location: FF_X36_Y35_N29
\AccB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccB|data_out[7]~0_combout\,
	asdata => \inst17|Yupa[7]~6_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(1),
	ena => \AccB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccB|data_out\(7));

-- Location: LCCOMB_X38_Y35_N30
\inst17|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux35~0_combout\ = (\secueciador|inst|EA\(1) & ((\AccB|data_out\(7)) # ((\secueciador|inst|nWB~q\) # (!\secueciador|inst|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccB|data_out\(7),
	datab => \secueciador|inst|EA\(1),
	datac => \secueciador|inst|EB\(0),
	datad => \secueciador|inst|nWB~q\,
	combout => \inst17|Mux35~0_combout\);

-- Location: FF_X37_Y34_N27
\inst17|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~16_combout\,
	ena => \secueciador|inst|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Banderas\(2));

-- Location: LCCOMB_X37_Y34_N0
\inst17|Yupa[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~1_combout\ = (\inst17|Banderas\(2)) # (!\secueciador|inst|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Banderas\(2),
	datad => \secueciador|inst|nDUPA~q\,
	combout => \inst17|Yupa[7]~1_combout\);

-- Location: LCCOMB_X36_Y35_N10
\inst17|Yupa[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~0_combout\ = (\Auxiliar|data_out\(7) & ((\AccB|data_out\(7)) # ((!\AccB|TRI_STATE~0_combout\)))) # (!\Auxiliar|data_out\(7) & (\Auxiliar|TRI_STATE_D~0_combout\ & ((\AccB|data_out\(7)) # (!\AccB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Auxiliar|data_out\(7),
	datab => \AccB|data_out\(7),
	datac => \Auxiliar|TRI_STATE_D~0_combout\,
	datad => \AccB|TRI_STATE~0_combout\,
	combout => \inst17|Yupa[7]~0_combout\);

-- Location: LCCOMB_X36_Y35_N26
\inst17|Yupa[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~2_combout\ = (\inst17|Yupa[7]~1_combout\ & (\inst17|Yupa[7]~0_combout\ & ((\AccA|data_out\(7)) # (!\AccA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[7]~1_combout\,
	datab => \AccA|TRI_STATE~0_combout\,
	datac => \AccA|data_out\(7),
	datad => \inst17|Yupa[7]~0_combout\,
	combout => \inst17|Yupa[7]~2_combout\);

-- Location: LCCOMB_X36_Y36_N20
\inst17|Yupa[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Yupa[7]~6_combout\ = ((\inst17|Yupa[7]~2_combout\ & ((\inst10|data_out[7]~1_combout\) # (!\inst10|data[7]~0_combout\)))) # (!\inst17|Yupa[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[7]~2_combout\,
	datab => \inst17|Yupa[7]~5_combout\,
	datac => \inst10|data[7]~0_combout\,
	datad => \inst10|data_out[7]~1_combout\,
	combout => \inst17|Yupa[7]~6_combout\);

-- Location: LCCOMB_X36_Y34_N12
\AccA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AccA|data_out[7]~0_combout\ = (\secueciador|inst|EA\(1) & ((\AccA|C[7]~0_combout\))) # (!\secueciador|inst|EA\(1) & (\inst17|Yupa[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Yupa[7]~6_combout\,
	datab => \AccA|C[7]~0_combout\,
	datad => \secueciador|inst|EA\(1),
	combout => \AccA|data_out[7]~0_combout\);

-- Location: FF_X36_Y34_N13
\AccA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AccA|data_out[7]~0_combout\,
	asdata => \inst17|Yupa2[7]~4_combout\,
	sload => \secueciador|inst|ALT_INV_EA\(0),
	ena => \AccA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AccA|data_out\(7));

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

ww_AccA_sal(7) <= \AccA_sal[7]~output_o\;

ww_AccA_sal(6) <= \AccA_sal[6]~output_o\;

ww_AccA_sal(5) <= \AccA_sal[5]~output_o\;

ww_AccA_sal(4) <= \AccA_sal[4]~output_o\;

ww_AccA_sal(3) <= \AccA_sal[3]~output_o\;

ww_AccA_sal(2) <= \AccA_sal[2]~output_o\;

ww_AccA_sal(1) <= \AccA_sal[1]~output_o\;

ww_AccA_sal(0) <= \AccA_sal[0]~output_o\;

ww_AccB_sal(7) <= \AccB_sal[7]~output_o\;

ww_AccB_sal(6) <= \AccB_sal[6]~output_o\;

ww_AccB_sal(5) <= \AccB_sal[5]~output_o\;

ww_AccB_sal(4) <= \AccB_sal[4]~output_o\;

ww_AccB_sal(3) <= \AccB_sal[3]~output_o\;

ww_AccB_sal(2) <= \AccB_sal[2]~output_o\;

ww_AccB_sal(1) <= \AccB_sal[1]~output_o\;

ww_AccB_sal(0) <= \AccB_sal[0]~output_o\;

ww_EdoPres(11) <= \EdoPres[11]~output_o\;

ww_EdoPres(10) <= \EdoPres[10]~output_o\;

ww_EdoPres(9) <= \EdoPres[9]~output_o\;

ww_EdoPres(8) <= \EdoPres[8]~output_o\;

ww_EdoPres(7) <= \EdoPres[7]~output_o\;

ww_EdoPres(6) <= \EdoPres[6]~output_o\;

ww_EdoPres(5) <= \EdoPres[5]~output_o\;

ww_EdoPres(4) <= \EdoPres[4]~output_o\;

ww_EdoPres(3) <= \EdoPres[3]~output_o\;

ww_EdoPres(2) <= \EdoPres[2]~output_o\;

ww_EdoPres(1) <= \EdoPres[1]~output_o\;

ww_EdoPres(0) <= \EdoPres[0]~output_o\;
END structure;


