-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/15/2019 16:15:24"
                                                            
-- Vhdl Test Bench template for design  :  cpu_core
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_core_vhd_tst IS
END cpu_core_vhd_tst;
ARCHITECTURE cpu_core_arch OF cpu_core_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_CORE_CLK : STD_LOGIC;
SIGNAL i_CORE_HALT : STD_LOGIC;
SIGNAL i_CORE_RESET : STD_LOGIC;
SIGNAL i_PROG_ADDRESS : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT cpu_core
	PORT (
	i_CORE_CLK : IN STD_LOGIC;
	i_CORE_HALT : IN STD_LOGIC;
	i_CORE_RESET : IN STD_LOGIC;
	i_PROG_ADDRESS : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cpu_core
	PORT MAP (
-- list connections between master ports and signals
	i_CORE_CLK => i_CORE_CLK,
	i_CORE_HALT => i_CORE_HALT,
	i_CORE_RESET => i_CORE_RESET,
	i_PROG_ADDRESS => i_PROG_ADDRESS
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END cpu_core_arch;
