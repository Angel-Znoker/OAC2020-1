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
-- Generated on "10/26/2019 16:36:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica7_vhd_vec_tst IS
END practica7_vhd_vec_tst;
ARCHITECTURE practica7_arch OF practica7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AccA_sal : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL AccB_sal : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL EdoPres : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT practica7
	PORT (
	AccA_sal : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	AccB_sal : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	EdoPres : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica7
	PORT MAP (
-- list connections between master ports and signals
	AccA_sal => AccA_sal,
	AccB_sal => AccB_sal,
	clk => clk,
	EdoPres => EdoPres,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END practica7_arch;
