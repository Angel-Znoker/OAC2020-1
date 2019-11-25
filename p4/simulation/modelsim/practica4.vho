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

-- DATE "09/11/2019 12:18:13"

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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	practica4 IS
    PORT (
	ESTADO : OUT std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic;
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	SALIDAS : OUT std_logic_vector(4 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- ESTADO[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADO[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADO[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SALIDAS[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SALIDAS[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SALIDAS[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SALIDAS[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SALIDAS[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ESTADO : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_SALIDAS : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ESTADO[2]~output_o\ : std_logic;
SIGNAL \ESTADO[1]~output_o\ : std_logic;
SIGNAL \ESTADO[0]~output_o\ : std_logic;
SIGNAL \SALIDAS[4]~output_o\ : std_logic;
SIGNAL \SALIDAS[3]~output_o\ : std_logic;
SIGNAL \SALIDAS[2]~output_o\ : std_logic;
SIGNAL \SALIDAS[1]~output_o\ : std_logic;
SIGNAL \SALIDAS[0]~output_o\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|edoSig[2]~4_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst6|edoSig[0]~2_combout\ : std_logic;
SIGNAL \inst6|edoSig[1]~1_combout\ : std_logic;
SIGNAL \inst6|edoSig[1]~3_combout\ : std_logic;
SIGNAL \inst6|edoSig[2]~0_combout\ : std_logic;
SIGNAL \inst9|estado[2]~0_combout\ : std_logic;
SIGNAL \inst9|estado[1]~1_combout\ : std_logic;
SIGNAL \inst9|estado[0]~2_combout\ : std_logic;
SIGNAL \inst7|salidas[4]~0_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|salidas[1]~1_combout\ : std_logic;
SIGNAL \inst4|estado\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux12~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ESTADO <= ww_ESTADO;
ww_SW <= SW;
ww_CLK <= CLK;
ww_A <= A;
ww_B <= B;
ww_C <= C;
SALIDAS <= ww_SALIDAS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_Mux12~0_combout\ <= NOT \inst|Mux12~0_combout\;
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

-- Location: IOOBUF_X51_Y54_N9
\ESTADO[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|estado[2]~0_combout\,
	devoe => ww_devoe,
	o => \ESTADO[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\ESTADO[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|estado[1]~1_combout\,
	devoe => ww_devoe,
	o => \ESTADO[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\ESTADO[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|estado[0]~2_combout\,
	devoe => ww_devoe,
	o => \ESTADO[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\SALIDAS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|salidas[4]~0_combout\,
	devoe => ww_devoe,
	o => \SALIDAS[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\SALIDAS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SALIDAS[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\SALIDAS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SALIDAS[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\SALIDAS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|salidas[1]~1_combout\,
	devoe => ww_devoe,
	o => \SALIDAS[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\SALIDAS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|edoSig[0]~2_combout\,
	devoe => ww_devoe,
	o => \SALIDAS[0]~output_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

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

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N30
\inst6|edoSig[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|edoSig[2]~4_combout\ = (!\inst4|estado\(2) & \inst6|edoSig[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|estado\(2),
	datad => \inst6|edoSig[2]~0_combout\,
	combout => \inst6|edoSig[2]~4_combout\);

-- Location: FF_X51_Y53_N31
\inst4|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|edoSig[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado\(2));

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

-- Location: LCCOMB_X51_Y53_N8
\inst6|edoSig[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|edoSig[0]~2_combout\ = (!\inst4|estado\(2) & (!\inst4|estado\(0) & ((!\inst4|estado\(1)) # (!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado\(2),
	datab => \C~input_o\,
	datac => \inst4|estado\(0),
	datad => \inst4|estado\(1),
	combout => \inst6|edoSig[0]~2_combout\);

-- Location: FF_X51_Y53_N23
\inst4|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|edoSig[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado\(0));

-- Location: LCCOMB_X51_Y53_N24
\inst6|edoSig[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|edoSig[1]~1_combout\ = (\inst4|estado\(0) & (((!\inst4|estado\(1)) # (!\A~input_o\)))) # (!\inst4|estado\(0) & (!\B~input_o\ & ((!\inst4|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \A~input_o\,
	datac => \inst4|estado\(0),
	datad => \inst4|estado\(1),
	combout => \inst6|edoSig[1]~1_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst6|edoSig[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|edoSig[1]~3_combout\ = (!\inst4|estado\(2) & \inst6|edoSig[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|estado\(2),
	datad => \inst6|edoSig[1]~1_combout\,
	combout => \inst6|edoSig[1]~3_combout\);

-- Location: FF_X51_Y53_N29
\inst4|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|edoSig[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado\(1));

-- Location: LCCOMB_X51_Y53_N12
\inst6|edoSig[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|edoSig[2]~0_combout\ = (\inst4|estado\(1) & ((\inst4|estado\(0) & ((\A~input_o\))) # (!\inst4|estado\(0) & (\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \inst4|estado\(1),
	datad => \inst4|estado\(0),
	combout => \inst6|edoSig[2]~0_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst9|estado[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|estado[2]~0_combout\ = (\SW~input_o\ & (\inst6|edoSig[2]~0_combout\ & !\inst4|estado\(2))) # (!\SW~input_o\ & ((\inst4|estado\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \inst6|edoSig[2]~0_combout\,
	datad => \inst4|estado\(2),
	combout => \inst9|estado[2]~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst9|estado[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|estado[1]~1_combout\ = (\SW~input_o\ & (((!\inst4|estado\(2) & \inst6|edoSig[1]~1_combout\)))) # (!\SW~input_o\ & (\inst4|estado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado\(1),
	datab => \inst4|estado\(2),
	datac => \SW~input_o\,
	datad => \inst6|edoSig[1]~1_combout\,
	combout => \inst9|estado[1]~1_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst9|estado[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|estado[0]~2_combout\ = (\SW~input_o\ & ((\inst6|edoSig[0]~2_combout\))) # (!\SW~input_o\ & (\inst4|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \inst4|estado\(0),
	datad => \inst6|edoSig[0]~2_combout\,
	combout => \inst9|estado[0]~2_combout\);

-- Location: LCCOMB_X51_Y53_N16
\inst7|salidas[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|salidas[4]~0_combout\ = (!\inst4|estado\(2) & ((\inst4|estado\(1) & (\inst4|estado\(0))) # (!\inst4|estado\(1) & (!\inst4|estado\(0) & \B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado\(1),
	datab => \inst4|estado\(2),
	datac => \inst4|estado\(0),
	datad => \B~input_o\,
	combout => \inst7|salidas[4]~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst4|estado\(0)) # ((\inst4|estado\(1) & \inst4|estado\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado\(1),
	datab => \inst4|estado\(0),
	datad => \inst4|estado\(2),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst7|salidas[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|salidas[1]~1_combout\ = (!\inst4|estado\(1) & (!\inst4|estado\(0) & ((\inst4|estado\(2)) # (!\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado\(1),
	datab => \inst4|estado\(2),
	datac => \inst4|estado\(0),
	datad => \B~input_o\,
	combout => \inst7|salidas[1]~1_combout\);

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

ww_ESTADO(2) <= \ESTADO[2]~output_o\;

ww_ESTADO(1) <= \ESTADO[1]~output_o\;

ww_ESTADO(0) <= \ESTADO[0]~output_o\;

ww_SALIDAS(4) <= \SALIDAS[4]~output_o\;

ww_SALIDAS(3) <= \SALIDAS[3]~output_o\;

ww_SALIDAS(2) <= \SALIDAS[2]~output_o\;

ww_SALIDAS(1) <= \SALIDAS[1]~output_o\;

ww_SALIDAS(0) <= \SALIDAS[0]~output_o\;
END structure;


