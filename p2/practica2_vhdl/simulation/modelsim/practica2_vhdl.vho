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

-- DATE "08/21/2019 13:37:36"

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

ENTITY 	Block2 IS
    PORT (
	S : OUT std_logic;
	boton : IN std_logic;
	clk : IN std_logic;
	E : IN std_logic;
	q0 : OUT std_logic;
	q1 : OUT std_logic;
	q0m : OUT std_logic;
	q1m : OUT std_logic
	);
END Block2;

-- Design Ports Information
-- S	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q0	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q1	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q0m	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q1m	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- E	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Block2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_q0m : std_logic;
SIGNAL ww_q1m : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \q0~output_o\ : std_logic;
SIGNAL \q1~output_o\ : std_logic;
SIGNAL \q0m~output_o\ : std_logic;
SIGNAL \q1m~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \inst1|esiguiente~feeder_combout\ : std_logic;
SIGNAL \inst1|esiguiente~q\ : std_logic;
SIGNAL \inst1|reloj~0_combout\ : std_logic;
SIGNAL \inst1|reloj~q\ : std_logic;
SIGNAL \inst1|reloj~clkctrl_outclk\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \inst|presente.S0~0_combout\ : std_logic;
SIGNAL \inst|presente.S0~q\ : std_logic;
SIGNAL \inst|presente~7_combout\ : std_logic;
SIGNAL \inst|presente.S1~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|presente.S3~q\ : std_logic;
SIGNAL \inst|S~feeder_combout\ : std_logic;
SIGNAL \inst|S~q\ : std_logic;
SIGNAL \inst|presente~6_combout\ : std_logic;
SIGNAL \inst|presente.S2~q\ : std_logic;
SIGNAL \inst|q0~2_combout\ : std_logic;
SIGNAL \inst|q0~q\ : std_logic;
SIGNAL \inst|q1~1_combout\ : std_logic;
SIGNAL \inst|q1~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|q0m~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|q1m~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S <= ww_S;
ww_boton <= boton;
ww_clk <= clk;
ww_E <= E;
q0 <= ww_q0;
q1 <= ww_q1;
q0m <= ww_q0m;
q1m <= ww_q1m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst1|reloj~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|reloj~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: IOOBUF_X46_Y54_N23
\S~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|S~q\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q0~q\,
	devoe => ww_devoe,
	o => \q0~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q1~q\,
	devoe => ww_devoe,
	o => \q1~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\q0m~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q0m~q\,
	devoe => ww_devoe,
	o => \q0m~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\q1m~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q1m~q\,
	devoe => ww_devoe,
	o => \q1m~output_o\);

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

-- Location: IOIBUF_X46_Y54_N29
\boton~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X45_Y53_N20
\inst1|esiguiente~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|esiguiente~feeder_combout\ = \boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~input_o\,
	combout => \inst1|esiguiente~feeder_combout\);

-- Location: FF_X45_Y53_N21
\inst1|esiguiente\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|esiguiente~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|esiguiente~q\);

-- Location: LCCOMB_X45_Y53_N18
\inst1|reloj~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|reloj~0_combout\ = (!\boton~input_o\ & \inst1|esiguiente~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~input_o\,
	datad => \inst1|esiguiente~q\,
	combout => \inst1|reloj~0_combout\);

-- Location: FF_X45_Y53_N19
\inst1|reloj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|reloj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reloj~q\);

-- Location: CLKCTRL_G14
\inst1|reloj~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|reloj~clkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\E~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X50_Y53_N6
\inst|presente.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|presente.S0~0_combout\ = !\E~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~input_o\,
	combout => \inst|presente.S0~0_combout\);

-- Location: FF_X50_Y53_N7
\inst|presente.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|presente.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|presente.S0~q\);

-- Location: LCCOMB_X50_Y53_N28
\inst|presente~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|presente~7_combout\ = (!\E~input_o\ & !\inst|presente.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datad => \inst|presente.S0~q\,
	combout => \inst|presente~7_combout\);

-- Location: FF_X50_Y53_N29
\inst|presente.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|presente~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|presente.S1~q\);

-- Location: LCCOMB_X50_Y53_N18
\inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\E~input_o\ & (!\inst|presente.S1~q\ & \inst|presente.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datac => \inst|presente.S1~q\,
	datad => \inst|presente.S0~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X50_Y53_N19
\inst|presente.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|presente.S3~q\);

-- Location: LCCOMB_X50_Y53_N16
\inst|S~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|S~feeder_combout\ = \inst|presente.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|presente.S3~q\,
	combout => \inst|S~feeder_combout\);

-- Location: FF_X50_Y53_N17
\inst|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|S~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|S~q\);

-- Location: LCCOMB_X50_Y53_N8
\inst|presente~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|presente~6_combout\ = (!\E~input_o\ & \inst|presente.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datad => \inst|presente.S1~q\,
	combout => \inst|presente~6_combout\);

-- Location: FF_X50_Y53_N9
\inst|presente.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|presente~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|presente.S2~q\);

-- Location: LCCOMB_X50_Y53_N30
\inst|q0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|q0~2_combout\ = (!\inst|presente.S2~q\ & \inst|presente.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|presente.S2~q\,
	datad => \inst|presente.S0~q\,
	combout => \inst|q0~2_combout\);

-- Location: FF_X50_Y53_N31
\inst|q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|q0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q0~q\);

-- Location: LCCOMB_X50_Y53_N20
\inst|q1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|q1~1_combout\ = (!\inst|presente.S1~q\ & \inst|presente.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|presente.S1~q\,
	datad => \inst|presente.S0~q\,
	combout => \inst|q1~1_combout\);

-- Location: FF_X50_Y53_N21
\inst|q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|q1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q1~q\);

-- Location: LCCOMB_X50_Y53_N26
\inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\E~input_o\ & !\inst|presente.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datad => \inst|presente.S1~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X50_Y53_N27
\inst|q0m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q0m~q\);

-- Location: LCCOMB_X50_Y53_N24
\inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\E~input_o\ & \inst|presente.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datad => \inst|presente.S0~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X50_Y53_N25
\inst|q1m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|reloj~clkctrl_outclk\,
	d => \inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q1m~q\);

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

ww_S <= \S~output_o\;

ww_q0 <= \q0~output_o\;

ww_q1 <= \q1~output_o\;

ww_q0m <= \q0m~output_o\;

ww_q1m <= \q1m~output_o\;
END structure;


