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
-- Generated on "10/08/2019 21:21:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica6_vhd_vec_tst IS
END practica6_vhd_vec_tst;
ARCHITECTURE practica6_arch OF practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL int : STD_LOGIC;
SIGNAL sal1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sal2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sw_in : STD_LOGIC;
SIGNAL sw_sal : STD_LOGIC;
SIGNAL sw_tr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT practica6
	PORT (
	clk : IN STD_LOGIC;
	int : IN STD_LOGIC;
	sal1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sal2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	sw_in : IN STD_LOGIC;
	sw_sal : IN STD_LOGIC;
	sw_tr : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	x : IN STD_LOGIC;
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica6
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	int => int,
	sal1 => sal1,
	sal2 => sal2,
	sw_in => sw_in,
	sw_sal => sw_sal,
	sw_tr => sw_tr,
	x => x,
	y => y
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

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '1';
WAIT;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	y <= '1';
WAIT;
END PROCESS t_prcs_y;

-- int
t_prcs_int: PROCESS
BEGIN
	int <= '0';
WAIT;
END PROCESS t_prcs_int;

-- sw_in
t_prcs_sw_in: PROCESS
BEGIN
	sw_in <= '1';
WAIT;
END PROCESS t_prcs_sw_in;
-- sw_tr[1]
t_prcs_sw_tr_1: PROCESS
BEGIN
	sw_tr(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_tr_1;
-- sw_tr[0]
t_prcs_sw_tr_0: PROCESS
BEGIN
	sw_tr(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_tr_0;

-- sw_sal
t_prcs_sw_sal: PROCESS
BEGIN
	sw_sal <= '1';
WAIT;
END PROCESS t_prcs_sw_sal;
END practica6_arch;
