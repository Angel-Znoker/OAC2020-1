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

-- DATE "10/12/2019 10:45:43"

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

ENTITY 	practica6 IS
    PORT (
	sal1 : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	sw_int : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	int : IN std_logic;
	sw_tr : IN std_logic_vector(1 DOWNTO 0);
	sw_sal : IN std_logic;
	sal2 : OUT std_logic_vector(4 DOWNTO 0)
	);
END practica6;

-- Design Ports Information
-- sal1[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sal	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_int	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- int	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_tr[1]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_tr[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sal1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw_int : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_int : std_logic;
SIGNAL ww_sw_tr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw_sal : std_logic;
SIGNAL ww_sal2 : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sal1[3]~output_o\ : std_logic;
SIGNAL \sal1[2]~output_o\ : std_logic;
SIGNAL \sal1[1]~output_o\ : std_logic;
SIGNAL \sal1[0]~output_o\ : std_logic;
SIGNAL \sal2[4]~output_o\ : std_logic;
SIGNAL \sal2[3]~output_o\ : std_logic;
SIGNAL \sal2[2]~output_o\ : std_logic;
SIGNAL \sal2[1]~output_o\ : std_logic;
SIGNAL \sal2[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw_int~input_o\ : std_logic;
SIGNAL \sw_tr[0]~input_o\ : std_logic;
SIGNAL \sw_tr[1]~input_o\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \int~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux3~0_combout\ : std_logic;
SIGNAL \inst14|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst14|Mux2~0_combout\ : std_logic;
SIGNAL \inst14|Mux2~1_combout\ : std_logic;
SIGNAL \inst14|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst14|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \sw_sal~input_o\ : std_logic;
SIGNAL \inst15|salida1[3]~0_combout\ : std_logic;
SIGNAL \inst15|salida1[2]~1_combout\ : std_logic;
SIGNAL \inst15|salida1[1]~2_combout\ : std_logic;
SIGNAL \inst15|salida1[0]~3_combout\ : std_logic;
SIGNAL \inst15|salida2[4]~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst15|salida2[3]~1_combout\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst15|salida2[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst15|salida2[1]~3_combout\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst15|salida2[0]~4_combout\ : std_logic;
SIGNAL \inst14|edoPresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|ALT_INV_salida2[0]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sal1 <= ww_sal1;
ww_clk <= clk;
ww_sw_int <= sw_int;
ww_x <= x;
ww_y <= y;
ww_int <= int;
ww_sw_tr <= sw_tr;
ww_sw_sal <= sw_sal;
sal2 <= ww_sal2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst15|ALT_INV_salida2[0]~4_combout\ <= NOT \inst15|salida2[0]~4_combout\;
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

-- Location: IOOBUF_X0_Y3_N16
\sal1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida1[3]~0_combout\,
	devoe => ww_devoe,
	o => \sal1[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\sal1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida1[2]~1_combout\,
	devoe => ww_devoe,
	o => \sal1[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\sal1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida1[1]~2_combout\,
	devoe => ww_devoe,
	o => \sal1[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\sal1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida1[0]~3_combout\,
	devoe => ww_devoe,
	o => \sal1[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\sal2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida2[4]~0_combout\,
	devoe => ww_devoe,
	o => \sal2[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\sal2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida2[3]~1_combout\,
	devoe => ww_devoe,
	o => \sal2[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\sal2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida2[2]~2_combout\,
	devoe => ww_devoe,
	o => \sal2[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\sal2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|salida2[1]~3_combout\,
	devoe => ww_devoe,
	o => \sal2[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\sal2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|ALT_INV_salida2[0]~4_combout\,
	devoe => ww_devoe,
	o => \sal2[0]~output_o\);

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

-- Location: IOIBUF_X0_Y10_N8
\sw_int~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_int,
	o => \sw_int~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\sw_tr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_tr(0),
	o => \sw_tr[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\sw_tr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_tr(1),
	o => \sw_tr[1]~input_o\);

-- Location: LCCOMB_X4_Y2_N4
\inst3|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (!\sw_tr[0]~input_o\ & \sw_tr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_tr[0]~input_o\,
	datad => \sw_tr[1]~input_o\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X4_Y1_N30
\inst5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\inst14|edoPresente\(2) & ((\inst14|edoPresente\(0) $ (!\inst14|edoPresente\(1))))) # (!\inst14|edoPresente\(2) & ((\inst14|edoPresente\(3) & (\inst14|edoPresente\(0) & \inst14|edoPresente\(1))) # (!\inst14|edoPresente\(3) & 
-- (\inst14|edoPresente\(0) $ (\inst14|edoPresente\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(3),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(1),
	combout => \inst5|Mux8~0_combout\);

-- Location: LCCOMB_X4_Y1_N22
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst14|edoPresente\(0) & ((\inst14|edoPresente\(2)) # (\inst14|edoPresente\(1) $ (\inst14|edoPresente\(3))))) # (!\inst14|edoPresente\(0) & ((\inst14|edoPresente\(1) & ((\inst14|edoPresente\(3)))) # (!\inst14|edoPresente\(1) & 
-- (\inst14|edoPresente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(1),
	datab => \inst14|edoPresente\(2),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(3),
	combout => \inst5|Mux4~0_combout\);

-- Location: IOIBUF_X0_Y9_N15
\x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X4_Y1_N16
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst14|edoPresente\(1) & ((\inst14|edoPresente\(0) & (\inst14|edoPresente\(3))) # (!\inst14|edoPresente\(0) & (!\inst14|edoPresente\(3) & \inst14|edoPresente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(1),
	datab => \inst14|edoPresente\(0),
	datac => \inst14|edoPresente\(3),
	datad => \inst14|edoPresente\(2),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y1_N18
\inst9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = (\x~input_o\ & (\inst5|Mux0~0_combout\ & !\inst5|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Mux1~0_combout\,
	combout => \inst9~1_combout\);

-- Location: IOIBUF_X0_Y10_N15
\int~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_int,
	o => \int~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: LCCOMB_X3_Y1_N4
\inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\inst5|Mux1~0_combout\ & ((\inst5|Mux0~0_combout\ & ((!\y~input_o\))) # (!\inst5|Mux0~0_combout\ & (!\int~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int~input_o\,
	datab => \y~input_o\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Mux1~0_combout\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X3_Y1_N26
\inst7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = ((\inst9~1_combout\) # (\inst9~0_combout\)) # (!\inst5|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux4~0_combout\,
	datac => \inst9~1_combout\,
	datad => \inst9~0_combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y1_N28
\inst14|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~0_combout\ = (\inst7|Mux1~0_combout\ & (((\inst7|Mux0~0_combout\)) # (!\inst14|edoPresente\(0)))) # (!\inst7|Mux1~0_combout\ & (((!\inst5|Mux8~0_combout\ & !\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(0),
	datab => \inst5|Mux8~0_combout\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst7|Mux0~0_combout\,
	combout => \inst14|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y1_N14
\inst14|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~1_combout\ = (\inst7|Mux0~0_combout\ & ((\inst14|Mux3~0_combout\ & ((!\sw_tr[0]~input_o\))) # (!\inst14|Mux3~0_combout\ & (\sw_int~input_o\)))) # (!\inst7|Mux0~0_combout\ & (((\inst14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_int~input_o\,
	datab => \inst7|Mux0~0_combout\,
	datac => \sw_tr[0]~input_o\,
	datad => \inst14|Mux3~0_combout\,
	combout => \inst14|Mux3~1_combout\);

-- Location: FF_X4_Y1_N15
\inst14|edoPresente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|edoPresente\(0));

-- Location: LCCOMB_X4_Y1_N0
\inst5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst14|edoPresente\(2) & (!\inst14|edoPresente\(3) & (!\inst14|edoPresente\(0)))) # (!\inst14|edoPresente\(2) & (\inst14|edoPresente\(0) & ((!\inst14|edoPresente\(1)) # (!\inst14|edoPresente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(3),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(1),
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X4_Y2_N30
\inst14|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~0_combout\ = (\sw_tr[0]~input_o\) # (\sw_tr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_tr[0]~input_o\,
	datad => \sw_tr[1]~input_o\,
	combout => \inst14|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y1_N10
\inst14|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~1_combout\ = (\inst7|Mux0~0_combout\ & (((\inst14|Mux2~0_combout\)))) # (!\inst7|Mux0~0_combout\ & (\inst14|edoPresente\(0) $ ((\inst14|edoPresente\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(0),
	datab => \inst14|edoPresente\(1),
	datac => \inst14|Mux2~0_combout\,
	datad => \inst7|Mux0~0_combout\,
	combout => \inst14|Mux2~1_combout\);

-- Location: LCCOMB_X4_Y1_N12
\inst14|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~2_combout\ = (\inst7|Mux1~0_combout\ & ((\inst7|Mux0~0_combout\ $ (\inst14|Mux2~1_combout\)))) # (!\inst7|Mux1~0_combout\ & ((\inst5|Mux7~0_combout\) # ((\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux7~0_combout\,
	datab => \inst7|Mux0~0_combout\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst14|Mux2~1_combout\,
	combout => \inst14|Mux2~2_combout\);

-- Location: FF_X4_Y1_N13
\inst14|edoPresente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|edoPresente\(1));

-- Location: LCCOMB_X4_Y1_N8
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst14|edoPresente\(2) $ (((\inst14|edoPresente\(1) & \inst14|edoPresente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(1),
	datad => \inst14|edoPresente\(0),
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X4_Y1_N26
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst14|edoPresente\(3) & (\inst14|edoPresente\(0) & (\inst14|edoPresente\(2) $ (\inst14|edoPresente\(1))))) # (!\inst14|edoPresente\(3) & (\inst14|edoPresente\(2) & (!\inst14|edoPresente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(3),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(1),
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y1_N6
\inst14|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~0_combout\ = (\inst7|Mux1~0_combout\ & (((\inst7|Mux0~0_combout\)))) # (!\inst7|Mux1~0_combout\ & ((\inst7|Mux0~0_combout\ & ((!\sw_int~input_o\))) # (!\inst7|Mux0~0_combout\ & (\inst5|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~0_combout\,
	datab => \sw_int~input_o\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst7|Mux0~0_combout\,
	combout => \inst14|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y1_N18
\inst14|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~1_combout\ = (\inst7|Mux1~0_combout\ & ((\inst14|Mux1~0_combout\ & (\inst3|Mux0~1_combout\)) # (!\inst14|Mux1~0_combout\ & ((\inst1|Add0~1_combout\))))) # (!\inst7|Mux1~0_combout\ & (((\inst14|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~1_combout\,
	datab => \inst1|Add0~1_combout\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst14|Mux1~0_combout\,
	combout => \inst14|Mux1~1_combout\);

-- Location: FF_X4_Y1_N19
\inst14|edoPresente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|edoPresente\(2));

-- Location: LCCOMB_X3_Y1_N30
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst14|edoPresente\(3) & (!\inst14|edoPresente\(2) & (!\inst14|edoPresente\(1) & \inst14|edoPresente\(0)))) # (!\inst14|edoPresente\(3) & (!\inst14|edoPresente\(0) & (\inst14|edoPresente\(2) $ (\inst14|edoPresente\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(1),
	datac => \inst14|edoPresente\(3),
	datad => \inst14|edoPresente\(0),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y1_N24
\inst7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst5|Mux3~0_combout\ & (((!\inst9~0_combout\ & !\inst9~1_combout\)) # (!\inst5|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~0_combout\,
	datab => \inst5|Mux4~0_combout\,
	datac => \inst9~0_combout\,
	datad => \inst9~1_combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y2_N24
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = \sw_tr[0]~input_o\ $ (\sw_tr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_tr[0]~input_o\,
	datad => \sw_tr[1]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y1_N24
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst14|edoPresente\(3) & ((\inst14|edoPresente\(2) & (\inst14|edoPresente\(0) $ (\inst14|edoPresente\(1)))) # (!\inst14|edoPresente\(2) & ((\inst14|edoPresente\(0)) # (!\inst14|edoPresente\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(3),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(1),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y1_N20
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst14|edoPresente\(3) $ (((\inst14|edoPresente\(2) & (\inst14|edoPresente\(1) & \inst14|edoPresente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(1),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(3),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X4_Y1_N2
\inst14|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~0_combout\ = (\inst7|Mux1~0_combout\ & (((\inst1|Add0~0_combout\) # (\inst7|Mux0~0_combout\)))) # (!\inst7|Mux1~0_combout\ & (\inst5|Mux5~0_combout\ & ((!\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~0_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst7|Mux0~0_combout\,
	combout => \inst14|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y1_N4
\inst14|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~1_combout\ = (\inst7|Mux0~0_combout\ & ((\inst14|Mux0~0_combout\ & ((\inst3|Mux0~0_combout\))) # (!\inst14|Mux0~0_combout\ & (\sw_int~input_o\)))) # (!\inst7|Mux0~0_combout\ & (((\inst14|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_int~input_o\,
	datab => \inst7|Mux0~0_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst14|Mux0~0_combout\,
	combout => \inst14|Mux0~1_combout\);

-- Location: FF_X4_Y1_N5
\inst14|edoPresente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|edoPresente\(3));

-- Location: LCCOMB_X3_Y1_N8
\inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst14|edoPresente\(0) & ((\inst14|edoPresente\(3) & (!\inst14|edoPresente\(1) & \inst14|edoPresente\(2))) # (!\inst14|edoPresente\(3) & (\inst14|edoPresente\(1) & !\inst14|edoPresente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(3),
	datab => \inst14|edoPresente\(1),
	datac => \inst14|edoPresente\(0),
	datad => \inst14|edoPresente\(2),
	combout => \inst5|Mux0~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\sw_sal~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_sal,
	o => \sw_sal~input_o\);

-- Location: LCCOMB_X3_Y1_N10
\inst15|salida1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida1[3]~0_combout\ = (\sw_sal~input_o\ & ((\inst14|edoPresente\(3)))) # (!\sw_sal~input_o\ & (!\inst5|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datac => \inst14|edoPresente\(3),
	datad => \sw_sal~input_o\,
	combout => \inst15|salida1[3]~0_combout\);

-- Location: LCCOMB_X3_Y1_N12
\inst15|salida1[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida1[2]~1_combout\ = (\sw_sal~input_o\ & (\inst14|edoPresente\(2))) # (!\sw_sal~input_o\ & ((\inst5|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \sw_sal~input_o\,
	datad => \inst5|Mux1~0_combout\,
	combout => \inst15|salida1[2]~1_combout\);

-- Location: LCCOMB_X3_Y1_N0
\inst15|salida1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida1[1]~2_combout\ = (\sw_sal~input_o\ & ((\inst14|edoPresente\(1)))) # (!\sw_sal~input_o\ & (\inst5|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~0_combout\,
	datab => \sw_sal~input_o\,
	datac => \inst14|edoPresente\(1),
	combout => \inst15|salida1[1]~2_combout\);

-- Location: LCCOMB_X7_Y1_N24
\inst15|salida1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida1[0]~3_combout\ = (\sw_sal~input_o\ & ((\inst14|edoPresente\(0)))) # (!\sw_sal~input_o\ & (\inst5|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux4~0_combout\,
	datac => \inst14|edoPresente\(0),
	datad => \sw_sal~input_o\,
	combout => \inst15|salida1[0]~3_combout\);

-- Location: LCCOMB_X7_Y1_N6
\inst15|salida2[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida2[4]~0_combout\ = (\inst5|Mux1~0_combout\ & !\sw_sal~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mux1~0_combout\,
	datad => \sw_sal~input_o\,
	combout => \inst15|salida2[4]~0_combout\);

-- Location: LCCOMB_X3_Y1_N6
\inst5|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\inst14|edoPresente\(1) & (\inst14|edoPresente\(3) $ (((\inst14|edoPresente\(2)) # (!\inst14|edoPresente\(0)))))) # (!\inst14|edoPresente\(1) & (\inst14|edoPresente\(2) & (!\inst14|edoPresente\(0) & \inst14|edoPresente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(0),
	datac => \inst14|edoPresente\(1),
	datad => \inst14|edoPresente\(3),
	combout => \inst5|Mux9~0_combout\);

-- Location: LCCOMB_X3_Y1_N16
\inst15|salida2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida2[3]~1_combout\ = (\sw_sal~input_o\ & (\inst5|Mux9~0_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux9~0_combout\,
	datab => \sw_sal~input_o\,
	datad => \inst5|Mux5~0_combout\,
	combout => \inst15|salida2[3]~1_combout\);

-- Location: LCCOMB_X3_Y1_N22
\inst5|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = (\inst14|edoPresente\(1) & (!\inst14|edoPresente\(3) & (\inst14|edoPresente\(2) $ (\inst14|edoPresente\(0))))) # (!\inst14|edoPresente\(1) & (\inst14|edoPresente\(0) & (\inst14|edoPresente\(2) $ (!\inst14|edoPresente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(0),
	datac => \inst14|edoPresente\(1),
	datad => \inst14|edoPresente\(3),
	combout => \inst5|Mux10~0_combout\);

-- Location: LCCOMB_X3_Y1_N28
\inst15|salida2[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida2[2]~2_combout\ = (\sw_sal~input_o\ & (\inst5|Mux10~0_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_sal~input_o\,
	datac => \inst5|Mux10~0_combout\,
	datad => \inst5|Mux6~0_combout\,
	combout => \inst15|salida2[2]~2_combout\);

-- Location: LCCOMB_X3_Y1_N2
\inst5|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = (\inst14|edoPresente\(2) & (((\inst14|edoPresente\(1)) # (\inst14|edoPresente\(3))) # (!\inst14|edoPresente\(0)))) # (!\inst14|edoPresente\(2) & ((\inst14|edoPresente\(1) $ (\inst14|edoPresente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(0),
	datac => \inst14|edoPresente\(1),
	datad => \inst14|edoPresente\(3),
	combout => \inst5|Mux11~0_combout\);

-- Location: LCCOMB_X7_Y1_N4
\inst15|salida2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida2[1]~3_combout\ = (\sw_sal~input_o\ & ((!\inst5|Mux11~0_combout\))) # (!\sw_sal~input_o\ & (\inst5|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux7~0_combout\,
	datac => \inst5|Mux11~0_combout\,
	datad => \sw_sal~input_o\,
	combout => \inst15|salida2[1]~3_combout\);

-- Location: LCCOMB_X3_Y1_N20
\inst5|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = (\inst14|edoPresente\(2) & (((\inst14|edoPresente\(1)) # (\inst14|edoPresente\(3))))) # (!\inst14|edoPresente\(2) & ((\inst14|edoPresente\(0)) # ((\inst14|edoPresente\(1) & !\inst14|edoPresente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|edoPresente\(2),
	datab => \inst14|edoPresente\(0),
	datac => \inst14|edoPresente\(1),
	datad => \inst14|edoPresente\(3),
	combout => \inst5|Mux12~0_combout\);

-- Location: LCCOMB_X3_Y1_N14
\inst15|salida2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|salida2[0]~4_combout\ = (\sw_sal~input_o\ & ((\inst5|Mux12~0_combout\))) # (!\sw_sal~input_o\ & (\inst5|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux8~0_combout\,
	datac => \inst5|Mux12~0_combout\,
	datad => \sw_sal~input_o\,
	combout => \inst15|salida2[0]~4_combout\);

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

ww_sal1(3) <= \sal1[3]~output_o\;

ww_sal1(2) <= \sal1[2]~output_o\;

ww_sal1(1) <= \sal1[1]~output_o\;

ww_sal1(0) <= \sal1[0]~output_o\;

ww_sal2(4) <= \sal2[4]~output_o\;

ww_sal2(3) <= \sal2[3]~output_o\;

ww_sal2(2) <= \sal2[2]~output_o\;

ww_sal2(1) <= \sal2[1]~output_o\;

ww_sal2(0) <= \sal2[0]~output_o\;
END structure;


