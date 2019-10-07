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

-- DATE "09/18/2019 13:47:21"

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

ENTITY 	practica5 IS
    PORT (
	vf : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	clk : IN std_logic;
	switch : IN std_logic;
	estado : OUT std_logic_vector(2 DOWNTO 0);
	prueba : OUT std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica5;

-- Design Ports Information
-- vf	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- prueba[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- prueba[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- switch	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_vf : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_estado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_prueba : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \vf~output_o\ : std_logic;
SIGNAL \estado[2]~output_o\ : std_logic;
SIGNAL \estado[1]~output_o\ : std_logic;
SIGNAL \estado[0]~output_o\ : std_logic;
SIGNAL \prueba[1]~output_o\ : std_logic;
SIGNAL \prueba[0]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~51\ : std_logic;
SIGNAL \inst7|Add0~52_combout\ : std_logic;
SIGNAL \inst7|cuenta~1_combout\ : std_logic;
SIGNAL \inst7|Add0~53\ : std_logic;
SIGNAL \inst7|Add0~54_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|cuenta~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst2|salida~0_combout\ : std_logic;
SIGNAL \inst1|contador~4_combout\ : std_logic;
SIGNAL \inst1|contador~2_combout\ : std_logic;
SIGNAL \inst1|contador~3_combout\ : std_logic;
SIGNAL \inst1|contador~5_combout\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \inst8|estado[2]~0_combout\ : std_logic;
SIGNAL \inst8|estado[1]~1_combout\ : std_logic;
SIGNAL \inst8|estado[0]~2_combout\ : std_logic;
SIGNAL \inst8|Sprueba[1]~0_combout\ : std_logic;
SIGNAL \inst8|estado[2]~3_combout\ : std_logic;
SIGNAL \inst4|salidas[3]~0_combout\ : std_logic;
SIGNAL \inst4|salidas[2]~1_combout\ : std_logic;
SIGNAL \inst4|salidas[1]~2_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst1|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux12~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

vf <= ww_vf;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_clk <= clk;
ww_switch <= switch;
estado <= ww_estado;
prueba <= ww_prueba;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst7|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|cuenta\(25));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_Mux12~0_combout\ <= NOT \inst|Mux12~0_combout\;
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

-- Location: IOOBUF_X56_Y54_N9
\vf~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vf~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\estado[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|estado[2]~0_combout\,
	devoe => ww_devoe,
	o => \estado[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\estado[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|estado[1]~1_combout\,
	devoe => ww_devoe,
	o => \estado[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\estado[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|estado[0]~2_combout\,
	devoe => ww_devoe,
	o => \estado[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\prueba[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Sprueba[1]~0_combout\,
	devoe => ww_devoe,
	o => \prueba[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\prueba[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|estado[2]~3_combout\,
	devoe => ww_devoe,
	o => \prueba[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salidas[3]~0_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salidas[2]~1_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|salidas[1]~2_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X44_Y53_N30
\inst7|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|cuenta\(4) & (!\inst7|cuenta\(6) & (!\inst7|cuenta\(5) & !\inst7|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(4),
	datab => \inst7|cuenta\(6),
	datac => \inst7|cuenta\(5),
	datad => \inst7|cuenta\(7),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y53_N28
\inst7|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst7|cuenta\(1) & (!\inst7|cuenta\(2) & (!\inst7|cuenta\(3) & !\inst7|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(1),
	datab => \inst7|cuenta\(2),
	datac => \inst7|cuenta\(3),
	datad => \inst7|cuenta\(0),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y53_N8
\inst7|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|cuenta\(14) & (!\inst7|cuenta\(15) & (!\inst7|cuenta\(13) & !\inst7|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(14),
	datab => \inst7|cuenta\(15),
	datac => \inst7|cuenta\(13),
	datad => \inst7|cuenta\(12),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y53_N2
\inst7|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|cuenta\(9) & (!\inst7|cuenta\(8) & (!\inst7|cuenta\(11) & !\inst7|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(9),
	datab => \inst7|cuenta\(8),
	datac => \inst7|cuenta\(11),
	datad => \inst7|cuenta\(10),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y53_N26
\inst7|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~1_combout\ & (\inst7|Equal0~0_combout\ & (\inst7|Equal0~3_combout\ & \inst7|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~1_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Equal0~3_combout\,
	datad => \inst7|Equal0~2_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y52_N22
\inst7|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~50_combout\ = (\inst7|cuenta\(25) & (!\inst7|Add0~49\)) # (!\inst7|cuenta\(25) & ((\inst7|Add0~49\) # (GND)))
-- \inst7|Add0~51\ = CARRY((!\inst7|Add0~49\) # (!\inst7|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(25),
	datad => VCC,
	cin => \inst7|Add0~49\,
	combout => \inst7|Add0~50_combout\,
	cout => \inst7|Add0~51\);

-- Location: LCCOMB_X45_Y52_N24
\inst7|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~52_combout\ = (\inst7|cuenta\(26) & (\inst7|Add0~51\ $ (GND))) # (!\inst7|cuenta\(26) & (!\inst7|Add0~51\ & VCC))
-- \inst7|Add0~53\ = CARRY((\inst7|cuenta\(26) & !\inst7|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(26),
	datad => VCC,
	cin => \inst7|Add0~51\,
	combout => \inst7|Add0~52_combout\,
	cout => \inst7|Add0~53\);

-- Location: LCCOMB_X45_Y52_N30
\inst7|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|cuenta~1_combout\ = (\inst7|Add0~52_combout\ & ((!\inst7|Equal0~4_combout\) # (!\inst7|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datab => \inst7|Equal0~4_combout\,
	datad => \inst7|Add0~52_combout\,
	combout => \inst7|cuenta~1_combout\);

-- Location: FF_X45_Y52_N31
\inst7|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(26));

-- Location: LCCOMB_X45_Y52_N26
\inst7|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~54_combout\ = \inst7|cuenta\(27) $ (\inst7|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(27),
	cin => \inst7|Add0~53\,
	combout => \inst7|Add0~54_combout\);

-- Location: FF_X45_Y52_N27
\inst7|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(27));

-- Location: LCCOMB_X45_Y52_N28
\inst7|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (\inst7|cuenta\(26) & (!\inst7|cuenta\(24) & (!\inst7|cuenta\(27) & !\inst7|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(26),
	datab => \inst7|cuenta\(24),
	datac => \inst7|cuenta\(27),
	datad => \inst7|cuenta\(25),
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X44_Y52_N8
\inst7|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|cuenta\(17) & (!\inst7|cuenta\(19) & (!\inst7|cuenta\(18) & !\inst7|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(17),
	datab => \inst7|cuenta\(19),
	datac => \inst7|cuenta\(18),
	datad => \inst7|cuenta\(16),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y52_N18
\inst7|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (!\inst7|cuenta\(20) & (!\inst7|cuenta\(23) & (!\inst7|cuenta\(21) & !\inst7|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(20),
	datab => \inst7|cuenta\(23),
	datac => \inst7|cuenta\(21),
	datad => \inst7|cuenta\(22),
	combout => \inst7|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y52_N4
\inst7|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (\inst7|Equal0~7_combout\ & (\inst7|Equal0~5_combout\ & \inst7|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~7_combout\,
	datac => \inst7|Equal0~5_combout\,
	datad => \inst7|Equal0~6_combout\,
	combout => \inst7|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y53_N4
\inst7|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|cuenta\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X45_Y53_N0
\inst7|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|cuenta~0_combout\ = (\inst7|Add0~0_combout\ & ((!\inst7|Equal0~4_combout\) # (!\inst7|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datab => \inst7|Add0~0_combout\,
	datac => \inst7|Equal0~4_combout\,
	combout => \inst7|cuenta~0_combout\);

-- Location: FF_X45_Y53_N1
\inst7|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(0));

-- Location: LCCOMB_X45_Y53_N6
\inst7|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|cuenta\(1) & (!\inst7|Add0~1\)) # (!\inst7|cuenta\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: FF_X45_Y53_N7
\inst7|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(1));

-- Location: LCCOMB_X45_Y53_N8
\inst7|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|cuenta\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|cuenta\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|cuenta\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X45_Y53_N9
\inst7|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(2));

-- Location: LCCOMB_X45_Y53_N10
\inst7|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|cuenta\(3) & (!\inst7|Add0~5\)) # (!\inst7|cuenta\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: FF_X45_Y53_N11
\inst7|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(3));

-- Location: LCCOMB_X45_Y53_N12
\inst7|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|cuenta\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|cuenta\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|cuenta\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: FF_X45_Y53_N13
\inst7|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(4));

-- Location: LCCOMB_X45_Y53_N14
\inst7|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|cuenta\(5) & (!\inst7|Add0~9\)) # (!\inst7|cuenta\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: FF_X45_Y53_N15
\inst7|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(5));

-- Location: LCCOMB_X45_Y53_N16
\inst7|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|cuenta\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|cuenta\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|cuenta\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: FF_X45_Y53_N17
\inst7|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(6));

-- Location: LCCOMB_X45_Y53_N18
\inst7|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|cuenta\(7) & (!\inst7|Add0~13\)) # (!\inst7|cuenta\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: FF_X45_Y53_N19
\inst7|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(7));

-- Location: LCCOMB_X45_Y53_N20
\inst7|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|cuenta\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|cuenta\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|cuenta\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X45_Y53_N21
\inst7|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(8));

-- Location: LCCOMB_X45_Y53_N22
\inst7|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|cuenta\(9) & (!\inst7|Add0~17\)) # (!\inst7|cuenta\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: FF_X45_Y53_N23
\inst7|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(9));

-- Location: LCCOMB_X45_Y53_N24
\inst7|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|cuenta\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|cuenta\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|cuenta\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: FF_X45_Y53_N25
\inst7|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(10));

-- Location: LCCOMB_X45_Y53_N26
\inst7|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|cuenta\(11) & (!\inst7|Add0~21\)) # (!\inst7|cuenta\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: FF_X45_Y53_N27
\inst7|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(11));

-- Location: LCCOMB_X45_Y53_N28
\inst7|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|cuenta\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|cuenta\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|cuenta\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: FF_X45_Y53_N29
\inst7|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(12));

-- Location: LCCOMB_X45_Y53_N30
\inst7|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|cuenta\(13) & (!\inst7|Add0~25\)) # (!\inst7|cuenta\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: FF_X45_Y53_N31
\inst7|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(13));

-- Location: LCCOMB_X45_Y52_N0
\inst7|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|cuenta\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|cuenta\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|cuenta\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: FF_X45_Y52_N1
\inst7|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(14));

-- Location: LCCOMB_X45_Y52_N2
\inst7|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|cuenta\(15) & (!\inst7|Add0~29\)) # (!\inst7|cuenta\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: FF_X45_Y52_N3
\inst7|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(15));

-- Location: LCCOMB_X45_Y52_N4
\inst7|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|cuenta\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|cuenta\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|cuenta\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: FF_X45_Y52_N5
\inst7|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(16));

-- Location: LCCOMB_X45_Y52_N6
\inst7|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|cuenta\(17) & (!\inst7|Add0~33\)) # (!\inst7|cuenta\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: FF_X45_Y52_N7
\inst7|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(17));

-- Location: LCCOMB_X45_Y52_N8
\inst7|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|cuenta\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|cuenta\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|cuenta\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: FF_X45_Y52_N9
\inst7|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(18));

-- Location: LCCOMB_X45_Y52_N10
\inst7|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|cuenta\(19) & (!\inst7|Add0~37\)) # (!\inst7|cuenta\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: FF_X45_Y52_N11
\inst7|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(19));

-- Location: LCCOMB_X45_Y52_N12
\inst7|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|cuenta\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|cuenta\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|cuenta\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cuenta\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: FF_X45_Y52_N13
\inst7|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(20));

-- Location: LCCOMB_X45_Y52_N14
\inst7|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|cuenta\(21) & (!\inst7|Add0~41\)) # (!\inst7|cuenta\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: FF_X45_Y52_N15
\inst7|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(21));

-- Location: LCCOMB_X45_Y52_N16
\inst7|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|cuenta\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|cuenta\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|cuenta\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: FF_X45_Y52_N17
\inst7|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(22));

-- Location: LCCOMB_X45_Y52_N18
\inst7|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|cuenta\(23) & (!\inst7|Add0~45\)) # (!\inst7|cuenta\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: FF_X45_Y52_N19
\inst7|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(23));

-- Location: LCCOMB_X45_Y52_N20
\inst7|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = (\inst7|cuenta\(24) & (\inst7|Add0~47\ $ (GND))) # (!\inst7|cuenta\(24) & (!\inst7|Add0~47\ & VCC))
-- \inst7|Add0~49\ = CARRY((\inst7|cuenta\(24) & !\inst7|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cuenta\(24),
	datad => VCC,
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\,
	cout => \inst7|Add0~49\);

-- Location: FF_X45_Y52_N21
\inst7|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(24));

-- Location: FF_X45_Y52_N23
\inst7|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cuenta\(25));

-- Location: CLKCTRL_G14
\inst7|cuenta[25]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|cuenta[25]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\C~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X51_Y53_N24
\inst2|salida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|salida~0_combout\ = (\inst1|contador\(0) & (((\inst1|contador\(1))))) # (!\inst1|contador\(0) & ((\inst1|contador\(1) & ((\A~input_o\))) # (!\inst1|contador\(1) & (\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \A~input_o\,
	datac => \inst1|contador\(0),
	datad => \inst1|contador\(1),
	combout => \inst2|salida~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\inst1|contador~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|contador~4_combout\ = (!\inst1|contador\(2) & ((\inst1|contador\(0) & ((!\inst2|salida~0_combout\) # (!\C~input_o\))) # (!\inst1|contador\(0) & ((\inst2|salida~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \C~input_o\,
	datac => \inst1|contador\(0),
	datad => \inst2|salida~0_combout\,
	combout => \inst1|contador~4_combout\);

-- Location: FF_X51_Y53_N9
\inst1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|cuenta[25]~clkctrl_outclk\,
	d => \inst1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|contador\(0));

-- Location: LCCOMB_X51_Y53_N18
\inst1|contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|contador~2_combout\ = (\inst1|contador\(0) & (\C~input_o\)) # (!\inst1|contador\(0) & ((!\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \inst1|contador\(0),
	combout => \inst1|contador~2_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst1|contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|contador~3_combout\ = (\inst1|contador\(1) & (!\inst1|contador\(2) & \inst1|contador~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|contador\(1),
	datac => \inst1|contador\(2),
	datad => \inst1|contador~2_combout\,
	combout => \inst1|contador~3_combout\);

-- Location: FF_X51_Y53_N7
\inst1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|cuenta[25]~clkctrl_outclk\,
	d => \inst1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|contador\(2));

-- Location: LCCOMB_X51_Y53_N16
\inst1|contador~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|contador~5_combout\ = (!\inst1|contador\(2) & (\inst1|contador\(1) $ (((\inst1|contador\(0)) # (!\inst2|salida~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(0),
	datac => \inst1|contador\(1),
	datad => \inst2|salida~0_combout\,
	combout => \inst1|contador~5_combout\);

-- Location: FF_X51_Y53_N17
\inst1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|cuenta[25]~clkctrl_outclk\,
	d => \inst1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|contador\(1));

-- Location: IOIBUF_X54_Y54_N22
\switch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: LCCOMB_X51_Y53_N30
\inst8|estado[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|estado[2]~0_combout\ = (\inst1|contador\(2) & (((!\switch~input_o\)))) # (!\inst1|contador\(2) & (\inst1|contador\(1) & (!\inst1|contador\(0) & \switch~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(0),
	datac => \inst1|contador\(2),
	datad => \switch~input_o\,
	combout => \inst8|estado[2]~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst8|estado[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|estado[1]~1_combout\ = (\inst1|contador\(1) & ((!\switch~input_o\))) # (!\inst1|contador\(1) & (!\inst1|contador\(2) & \switch~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(1),
	datad => \switch~input_o\,
	combout => \inst8|estado[1]~1_combout\);

-- Location: LCCOMB_X51_Y53_N14
\inst8|estado[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|estado[0]~2_combout\ = (\inst1|contador\(0) & ((!\switch~input_o\) # (!\inst1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(0),
	datad => \switch~input_o\,
	combout => \inst8|estado[0]~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst8|Sprueba[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Sprueba[1]~0_combout\ = (!\inst1|contador\(2) & (\switch~input_o\ & (\inst1|contador\(1) $ (!\inst1|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(0),
	datac => \inst1|contador\(2),
	datad => \switch~input_o\,
	combout => \inst8|Sprueba[1]~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst8|estado[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|estado[2]~3_combout\ = (!\inst1|contador\(2) & (\inst1|contador\(1) & \switch~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(1),
	datad => \switch~input_o\,
	combout => \inst8|estado[2]~3_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst4|salidas[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salidas[3]~0_combout\ = (!\inst1|contador\(0) & (!\inst1|contador\(2) & ((\B~input_o\) # (\inst1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst1|contador\(0),
	datac => \inst1|contador\(2),
	datad => \inst1|contador\(1),
	combout => \inst4|salidas[3]~0_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst4|salidas[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salidas[2]~1_combout\ = (!\inst1|contador\(0) & (!\inst1|contador\(1) & ((\inst1|contador\(2)) # (!\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst1|contador\(0),
	datac => \inst1|contador\(2),
	datad => \inst1|contador\(1),
	combout => \inst4|salidas[2]~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\inst4|salidas[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|salidas[1]~2_combout\ = (!\inst1|contador\(2) & ((\inst1|contador\(0) & (!\C~input_o\ & \inst1|contador\(1))) # (!\inst1|contador\(0) & ((!\inst1|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(0),
	datab => \C~input_o\,
	datac => \inst1|contador\(2),
	datad => \inst1|contador\(1),
	combout => \inst4|salidas[1]~2_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst1|contador\(0) & ((\inst1|contador\(2)) # (!\inst1|contador\(1)))) # (!\inst1|contador\(0) & ((\inst1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(2),
	datab => \inst1|contador\(0),
	datad => \inst1|contador\(1),
	combout => \inst|Mux12~0_combout\);

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

ww_vf <= \vf~output_o\;

ww_estado(2) <= \estado[2]~output_o\;

ww_estado(1) <= \estado[1]~output_o\;

ww_estado(0) <= \estado[0]~output_o\;

ww_prueba(1) <= \prueba[1]~output_o\;

ww_prueba(0) <= \prueba[0]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


