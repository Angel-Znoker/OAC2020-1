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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/21/2019 12:31:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica2_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica2_vhdl_vhd_vec_tst IS
END practica2_vhdl_vhd_vec_tst;
ARCHITECTURE practica2_vhdl_arch OF practica2_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT practica2_vhdl
	PORT (
	clk : IN STD_LOGIC;
	E : IN STD_LOGIC;
	S : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica2_vhdl
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	E => E,
	S => S
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;
END practica2_vhdl_arch;
