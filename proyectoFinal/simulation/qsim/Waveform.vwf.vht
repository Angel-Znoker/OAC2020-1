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
-- Generated on "12/02/2019 17:55:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pipeline
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pipeline_vhd_vec_tst IS
END pipeline_vhd_vec_tst;
ARCHITECTURE pipeline_arch OF pipeline_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AccA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AccB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dato : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RELOJ : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
COMPONENT pipeline
	PORT (
	AccA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AccB : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dato : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RELOJ : IN STD_LOGIC;
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pipeline
	PORT MAP (
-- list connections between master ports and signals
	AccA => AccA,
	AccB => AccB,
	dato => dato,
	instr => instr,
	RELOJ => RELOJ,
	RESET => RESET
	);

-- RELOJ
t_prcs_RELOJ: PROCESS
BEGIN
LOOP
	RELOJ <= '0';
	WAIT FOR 5000 ps;
	RELOJ <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RELOJ;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END pipeline_arch;
