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

-- DATE "10/08/2019 21:21:38"

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
	sw_in : IN std_logic;
	clk : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	int : IN std_logic;
	sw_tr : IN std_logic_vector(1 DOWNTO 0);
	sw_sal : IN std_logic;
	sal2 : OUT std_logic_vector(4 DOWNTO 0)
	);
END practica6;

-- Design Ports Information
-- sal1[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal1[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal2[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sal	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- int	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_tr[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_tr[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_sw_in : std_logic;
SIGNAL ww_clk : std_logic;
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
SIGNAL \sw_tr[1]~input_o\ : std_logic;
SIGNAL \sw_tr[0]~input_o\ : std_logic;
SIGNAL \inst2|edoPresente[3]~14_combout\ : std_logic;
SIGNAL \sw_in~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \int~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst8|selector[0]~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|edoPresente[0]~8_combout\ : std_logic;
SIGNAL \inst2|edoPresente[0]~5_combout\ : std_logic;
SIGNAL \inst2|edoPresente[0]~9_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|selector[1]~1_combout\ : std_logic;
SIGNAL \inst2|edoPresente[1]~10_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst2|edoPresente[1]~11_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~1_combout\ : std_logic;
SIGNAL \inst2|edoPresente[2]~13_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst2|edoPresente[2]~12_combout\ : std_logic;
SIGNAL \inst2|edoPresente[2]~15_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|edoPresente[3]~6_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|edoPresente[3]~4_combout\ : std_logic;
SIGNAL \inst2|edoPresente[3]~7_combout\ : std_logic;
SIGNAL \sw_sal~input_o\ : std_logic;
SIGNAL \inst9|salida1[3]~0_combout\ : std_logic;
SIGNAL \inst9|salida1[2]~1_combout\ : std_logic;
SIGNAL \inst9|salida1[1]~2_combout\ : std_logic;
SIGNAL \inst9|salida1[0]~3_combout\ : std_logic;
SIGNAL \inst9|salida2[4]~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst9|salida2[3]~1_combout\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst9|salida2[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst9|salida2[1]~3_combout\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst9|salida2[0]~4_combout\ : std_logic;
SIGNAL \inst|edoPresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|ALT_INV_salida2[0]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sal1 <= ww_sal1;
ww_sw_in <= sw_in;
ww_clk <= clk;
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
\inst9|ALT_INV_salida2[0]~4_combout\ <= NOT \inst9|salida2[0]~4_combout\;
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

-- Location: IOOBUF_X29_Y0_N9
\sal1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida1[3]~0_combout\,
	devoe => ww_devoe,
	o => \sal1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\sal1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida1[2]~1_combout\,
	devoe => ww_devoe,
	o => \sal1[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\sal1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida1[1]~2_combout\,
	devoe => ww_devoe,
	o => \sal1[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\sal1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida1[0]~3_combout\,
	devoe => ww_devoe,
	o => \sal1[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\sal2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida2[4]~0_combout\,
	devoe => ww_devoe,
	o => \sal2[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\sal2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida2[3]~1_combout\,
	devoe => ww_devoe,
	o => \sal2[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\sal2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida2[2]~2_combout\,
	devoe => ww_devoe,
	o => \sal2[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\sal2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida2[1]~3_combout\,
	devoe => ww_devoe,
	o => \sal2[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\sal2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_salida2[0]~4_combout\,
	devoe => ww_devoe,
	o => \sal2[0]~output_o\);

-- Location: IOIBUF_X29_Y0_N15
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

-- Location: IOIBUF_X29_Y0_N22
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

-- Location: LCCOMB_X30_Y2_N14
\inst2|edoPresente[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[3]~14_combout\ = (\sw_tr[1]~input_o\ & !\sw_tr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_tr[1]~input_o\,
	datad => \sw_tr[0]~input_o\,
	combout => \inst2|edoPresente[3]~14_combout\);

-- Location: IOIBUF_X29_Y0_N29
\sw_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in,
	o => \sw_in~input_o\);

-- Location: IOIBUF_X31_Y0_N15
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

-- Location: IOIBUF_X31_Y0_N1
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

-- Location: IOIBUF_X31_Y0_N8
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

-- Location: LCCOMB_X29_Y3_N12
\inst8|selector[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|selector[0]~0_combout\ = (\inst5|Mux4~0_combout\ & !\inst7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mux4~0_combout\,
	datad => \inst7~1_combout\,
	combout => \inst8|selector[0]~0_combout\);

-- Location: LCCOMB_X30_Y3_N24
\inst5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\inst2|edoPresente[0]~9_combout\ & ((\inst2|edoPresente[1]~11_combout\ & (!\inst2|edoPresente[2]~15_combout\ & !\inst2|edoPresente[3]~7_combout\)) # (!\inst2|edoPresente[1]~11_combout\ & (\inst2|edoPresente[2]~15_combout\)))) # 
-- (!\inst2|edoPresente[0]~9_combout\ & (\inst2|edoPresente[1]~11_combout\ $ (((!\inst2|edoPresente[2]~15_combout\ & !\inst2|edoPresente[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[0]~9_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[2]~15_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux8~0_combout\);

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

-- Location: FF_X30_Y3_N21
\inst|edoPresente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|edoPresente[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|edoPresente\(0));

-- Location: LCCOMB_X30_Y3_N8
\inst2|edoPresente[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[0]~8_combout\ = (!\inst8|selector[1]~1_combout\ & ((\inst8|selector[0]~0_combout\ & (!\inst5|Mux8~0_combout\)) # (!\inst8|selector[0]~0_combout\ & ((\inst|edoPresente\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|selector[0]~0_combout\,
	datab => \inst5|Mux8~0_combout\,
	datac => \inst8|selector[1]~1_combout\,
	datad => \inst|edoPresente\(0),
	combout => \inst2|edoPresente[0]~8_combout\);

-- Location: LCCOMB_X29_Y3_N24
\inst2|edoPresente[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[0]~5_combout\ = (\sw_in~input_o\ & (!\inst7~1_combout\ & (\inst5|Mux4~0_combout\ & \inst5|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in~input_o\,
	datab => \inst7~1_combout\,
	datac => \inst5|Mux4~0_combout\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst2|edoPresente[0]~5_combout\);

-- Location: LCCOMB_X30_Y3_N14
\inst2|edoPresente[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[0]~9_combout\ = (!\inst2|edoPresente[0]~8_combout\ & (!\inst2|edoPresente[0]~5_combout\ & ((\sw_tr[0]~input_o\) # (!\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_tr[0]~input_o\,
	datab => \inst2|edoPresente[0]~8_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|edoPresente[0]~5_combout\,
	combout => \inst2|edoPresente[0]~9_combout\);

-- Location: LCCOMB_X31_Y3_N16
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst2|edoPresente[0]~9_combout\ & (!\inst2|edoPresente[3]~7_combout\ & (\inst2|edoPresente[2]~15_combout\ $ (\inst2|edoPresente[1]~11_combout\)))) # (!\inst2|edoPresente[0]~9_combout\ & (!\inst2|edoPresente[2]~15_combout\ & 
-- (!\inst2|edoPresente[1]~11_combout\ & \inst2|edoPresente[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y3_N6
\inst8|selector[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|selector[1]~1_combout\ = (\inst5|Mux3~0_combout\ & ((!\inst5|Mux4~0_combout\) # (!\inst7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7~1_combout\,
	datac => \inst5|Mux4~0_combout\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst8|selector[1]~1_combout\);

-- Location: LCCOMB_X30_Y3_N22
\inst2|edoPresente[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[1]~10_combout\ = (\inst8|selector[1]~1_combout\ & ((\inst8|selector[0]~0_combout\) # ((!\sw_tr[0]~input_o\ & !\sw_tr[1]~input_o\)))) # (!\inst8|selector[1]~1_combout\ & (((!\inst8|selector[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_tr[0]~input_o\,
	datab => \sw_tr[1]~input_o\,
	datac => \inst8|selector[1]~1_combout\,
	datad => \inst8|selector[0]~0_combout\,
	combout => \inst2|edoPresente[1]~10_combout\);

-- Location: LCCOMB_X30_Y3_N30
\inst5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst2|edoPresente[0]~9_combout\ & (((\inst2|edoPresente[2]~15_combout\ & !\inst2|edoPresente[3]~7_combout\)))) # (!\inst2|edoPresente[0]~9_combout\ & (!\inst2|edoPresente[2]~15_combout\ & ((!\inst2|edoPresente[3]~7_combout\) # 
-- (!\inst2|edoPresente[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[0]~9_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[2]~15_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y3_N16
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst2|edoPresente[1]~11_combout\ $ (!\inst2|edoPresente[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	combout => \inst1|Add0~1_combout\);

-- Location: FF_X30_Y3_N17
\inst|edoPresente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|edoPresente\(1));

-- Location: LCCOMB_X30_Y3_N28
\inst2|edoPresente[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[1]~11_combout\ = (\inst2|edoPresente[1]~10_combout\ & ((\inst8|selector[1]~1_combout\) # ((\inst|edoPresente\(1))))) # (!\inst2|edoPresente[1]~10_combout\ & (!\inst8|selector[1]~1_combout\ & (\inst5|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[1]~10_combout\,
	datab => \inst8|selector[1]~1_combout\,
	datac => \inst5|Mux7~0_combout\,
	datad => \inst|edoPresente\(1),
	combout => \inst2|edoPresente[1]~11_combout\);

-- Location: LCCOMB_X31_Y3_N8
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst2|edoPresente[1]~11_combout\ & ((\inst2|edoPresente[0]~9_combout\ & (\inst2|edoPresente[2]~15_combout\ & !\inst2|edoPresente[3]~7_combout\)) # (!\inst2|edoPresente[0]~9_combout\ & ((\inst2|edoPresente[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y3_N28
\inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst2|edoPresente[0]~9_combout\ & ((\inst2|edoPresente[2]~15_combout\ & (!\inst2|edoPresente[1]~11_combout\ & \inst2|edoPresente[3]~7_combout\)) # (!\inst2|edoPresente[2]~15_combout\ & (\inst2|edoPresente[1]~11_combout\ & 
-- !\inst2|edoPresente[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y3_N4
\inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\inst5|Mux1~0_combout\ & ((\inst5|Mux0~0_combout\ & ((!\y~input_o\))) # (!\inst5|Mux0~0_combout\ & (!\int~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int~input_o\,
	datab => \y~input_o\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux0~0_combout\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X31_Y3_N22
\inst7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~1_combout\ = (\inst7~0_combout\) # ((\x~input_o\ & (!\inst5|Mux1~0_combout\ & \inst5|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \inst7~0_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux0~0_combout\,
	combout => \inst7~1_combout\);

-- Location: LCCOMB_X29_Y3_N4
\inst2|edoPresente[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[2]~13_combout\ = (!\sw_in~input_o\ & (!\inst7~1_combout\ & (\inst5|Mux4~0_combout\ & \inst5|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in~input_o\,
	datab => \inst7~1_combout\,
	datac => \inst5|Mux4~0_combout\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst2|edoPresente[2]~13_combout\);

-- Location: LCCOMB_X31_Y3_N24
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst2|edoPresente[0]~9_combout\ & (\inst2|edoPresente[2]~15_combout\ & ((!\inst2|edoPresente[3]~7_combout\)))) # (!\inst2|edoPresente[0]~9_combout\ & (\inst2|edoPresente[3]~7_combout\ & (\inst2|edoPresente[2]~15_combout\ $ 
-- (\inst2|edoPresente[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y3_N6
\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst2|edoPresente[2]~15_combout\ $ (((\inst2|edoPresente[1]~11_combout\ & !\inst2|edoPresente[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[2]~15_combout\,
	combout => \inst1|Add0~2_combout\);

-- Location: FF_X30_Y3_N7
\inst|edoPresente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|edoPresente\(2));

-- Location: LCCOMB_X30_Y3_N12
\inst2|edoPresente[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[2]~12_combout\ = (!\inst8|selector[1]~1_combout\ & ((\inst8|selector[0]~0_combout\ & (\inst5|Mux6~0_combout\)) # (!\inst8|selector[0]~0_combout\ & ((\inst|edoPresente\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|selector[0]~0_combout\,
	datab => \inst5|Mux6~0_combout\,
	datac => \inst8|selector[1]~1_combout\,
	datad => \inst|edoPresente\(2),
	combout => \inst2|edoPresente[2]~12_combout\);

-- Location: LCCOMB_X30_Y3_N2
\inst2|edoPresente[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[2]~15_combout\ = (\inst2|edoPresente[2]~13_combout\) # ((\inst2|edoPresente[2]~12_combout\) # ((\inst2|edoPresente[3]~14_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[3]~14_combout\,
	datab => \inst2|edoPresente[2]~13_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|edoPresente[2]~12_combout\,
	combout => \inst2|edoPresente[2]~15_combout\);

-- Location: LCCOMB_X30_Y3_N20
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst2|edoPresente[0]~9_combout\ & ((\inst2|edoPresente[1]~11_combout\ & ((\inst2|edoPresente[3]~7_combout\))) # (!\inst2|edoPresente[1]~11_combout\ & (\inst2|edoPresente[2]~15_combout\)))) # (!\inst2|edoPresente[0]~9_combout\ & 
-- ((\inst2|edoPresente[2]~15_combout\) # (\inst2|edoPresente[1]~11_combout\ $ (\inst2|edoPresente[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y3_N26
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst5|Mux4~0_combout\ & \inst5|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mux4~0_combout\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y2_N0
\inst2|edoPresente[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[3]~6_combout\ = \sw_tr[1]~input_o\ $ (\sw_tr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_tr[1]~input_o\,
	datad => \sw_tr[0]~input_o\,
	combout => \inst2|edoPresente[3]~6_combout\);

-- Location: LCCOMB_X30_Y3_N0
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst2|edoPresente[3]~7_combout\ & ((\inst2|edoPresente[0]~9_combout\ & (\inst2|edoPresente[1]~11_combout\ $ (!\inst2|edoPresente[2]~15_combout\))) # (!\inst2|edoPresente[0]~9_combout\ & ((!\inst2|edoPresente[2]~15_combout\) # 
-- (!\inst2|edoPresente[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[0]~9_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[2]~15_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y3_N18
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst2|edoPresente[3]~7_combout\ $ (((\inst2|edoPresente[1]~11_combout\ & (!\inst2|edoPresente[0]~9_combout\ & \inst2|edoPresente[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[1]~11_combout\,
	datab => \inst2|edoPresente[0]~9_combout\,
	datac => \inst2|edoPresente[2]~15_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst1|Add0~0_combout\);

-- Location: FF_X30_Y3_N19
\inst|edoPresente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|edoPresente\(3));

-- Location: LCCOMB_X30_Y3_N4
\inst2|edoPresente[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[3]~4_combout\ = (!\inst8|selector[1]~1_combout\ & ((\inst8|selector[0]~0_combout\ & (\inst5|Mux5~0_combout\)) # (!\inst8|selector[0]~0_combout\ & ((\inst|edoPresente\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|selector[0]~0_combout\,
	datab => \inst5|Mux5~0_combout\,
	datac => \inst8|selector[1]~1_combout\,
	datad => \inst|edoPresente\(3),
	combout => \inst2|edoPresente[3]~4_combout\);

-- Location: LCCOMB_X30_Y3_N10
\inst2|edoPresente[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edoPresente[3]~7_combout\ = (\inst2|edoPresente[3]~4_combout\) # ((\inst2|edoPresente[0]~5_combout\) # ((\inst2|Equal0~0_combout\ & \inst2|edoPresente[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|edoPresente[3]~6_combout\,
	datac => \inst2|edoPresente[3]~4_combout\,
	datad => \inst2|edoPresente[0]~5_combout\,
	combout => \inst2|edoPresente[3]~7_combout\);

-- Location: IOIBUF_X26_Y0_N29
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

-- Location: LCCOMB_X31_Y3_N26
\inst9|salida1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida1[3]~0_combout\ = (\sw_sal~input_o\ & (\inst2|edoPresente[3]~7_combout\)) # (!\sw_sal~input_o\ & ((!\inst5|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[3]~7_combout\,
	datac => \sw_sal~input_o\,
	datad => \inst5|Mux0~0_combout\,
	combout => \inst9|salida1[3]~0_combout\);

-- Location: LCCOMB_X31_Y3_N18
\inst9|salida1[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida1[2]~1_combout\ = (\sw_sal~input_o\ & ((\inst2|edoPresente[2]~15_combout\))) # (!\sw_sal~input_o\ & (\inst5|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_sal~input_o\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst2|edoPresente[2]~15_combout\,
	combout => \inst9|salida1[2]~1_combout\);

-- Location: LCCOMB_X31_Y3_N2
\inst9|salida1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida1[1]~2_combout\ = (\sw_sal~input_o\ & (\inst2|edoPresente[1]~11_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \sw_sal~input_o\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst9|salida1[1]~2_combout\);

-- Location: LCCOMB_X27_Y3_N24
\inst9|salida1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida1[0]~3_combout\ = (\sw_sal~input_o\ & (!\inst2|edoPresente[0]~9_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sal~input_o\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst5|Mux4~0_combout\,
	combout => \inst9|salida1[0]~3_combout\);

-- Location: LCCOMB_X31_Y3_N20
\inst9|salida2[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida2[4]~0_combout\ = (\inst5|Mux1~0_combout\ & !\sw_sal~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux1~0_combout\,
	datac => \sw_sal~input_o\,
	combout => \inst9|salida2[4]~0_combout\);

-- Location: LCCOMB_X30_Y3_N26
\inst5|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\inst2|edoPresente[1]~11_combout\ & (\inst2|edoPresente[3]~7_combout\ $ (((\inst2|edoPresente[0]~9_combout\) # (\inst2|edoPresente[2]~15_combout\))))) # (!\inst2|edoPresente[1]~11_combout\ & (\inst2|edoPresente[0]~9_combout\ & 
-- (\inst2|edoPresente[2]~15_combout\ & \inst2|edoPresente[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[0]~9_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[2]~15_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y3_N26
\inst9|salida2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida2[3]~1_combout\ = (\sw_sal~input_o\ & ((\inst5|Mux9~0_combout\))) # (!\sw_sal~input_o\ & (\inst5|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sal~input_o\,
	datac => \inst5|Mux5~0_combout\,
	datad => \inst5|Mux9~0_combout\,
	combout => \inst9|salida2[3]~1_combout\);

-- Location: LCCOMB_X31_Y3_N6
\inst5|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = (\inst2|edoPresente[1]~11_combout\ & (!\inst2|edoPresente[3]~7_combout\ & (\inst2|edoPresente[2]~15_combout\ $ (!\inst2|edoPresente[0]~9_combout\)))) # (!\inst2|edoPresente[1]~11_combout\ & (!\inst2|edoPresente[0]~9_combout\ & 
-- (\inst2|edoPresente[2]~15_combout\ $ (!\inst2|edoPresente[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux10~0_combout\);

-- Location: LCCOMB_X31_Y3_N10
\inst9|salida2[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida2[2]~2_combout\ = (\sw_sal~input_o\ & (\inst5|Mux10~0_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux10~0_combout\,
	datac => \sw_sal~input_o\,
	datad => \inst5|Mux6~0_combout\,
	combout => \inst9|salida2[2]~2_combout\);

-- Location: LCCOMB_X31_Y3_N12
\inst5|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = (\inst2|edoPresente[2]~15_combout\ & ((\inst2|edoPresente[1]~11_combout\) # ((\inst2|edoPresente[0]~9_combout\) # (\inst2|edoPresente[3]~7_combout\)))) # (!\inst2|edoPresente[2]~15_combout\ & (\inst2|edoPresente[1]~11_combout\ $ 
-- (((\inst2|edoPresente[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux11~0_combout\);

-- Location: LCCOMB_X31_Y3_N14
\inst9|salida2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida2[1]~3_combout\ = (\sw_sal~input_o\ & (!\inst5|Mux11~0_combout\)) # (!\sw_sal~input_o\ & ((\inst5|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~0_combout\,
	datac => \sw_sal~input_o\,
	datad => \inst5|Mux7~0_combout\,
	combout => \inst9|salida2[1]~3_combout\);

-- Location: LCCOMB_X31_Y3_N0
\inst5|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = (\inst2|edoPresente[2]~15_combout\ & ((\inst2|edoPresente[1]~11_combout\) # ((\inst2|edoPresente[3]~7_combout\)))) # (!\inst2|edoPresente[2]~15_combout\ & (((\inst2|edoPresente[1]~11_combout\ & !\inst2|edoPresente[3]~7_combout\)) 
-- # (!\inst2|edoPresente[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|edoPresente[2]~15_combout\,
	datab => \inst2|edoPresente[1]~11_combout\,
	datac => \inst2|edoPresente[0]~9_combout\,
	datad => \inst2|edoPresente[3]~7_combout\,
	combout => \inst5|Mux12~0_combout\);

-- Location: LCCOMB_X31_Y3_N30
\inst9|salida2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida2[0]~4_combout\ = (\sw_sal~input_o\ & ((\inst5|Mux12~0_combout\))) # (!\sw_sal~input_o\ & (\inst5|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux8~0_combout\,
	datac => \sw_sal~input_o\,
	datad => \inst5|Mux12~0_combout\,
	combout => \inst9|salida2[0]~4_combout\);

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


