-- Copyright (C) 1991-2012 Altera Corporation
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
-- Generated on "05/20/2016 10:29:31"
                                                            
-- Vhdl Test Bench template for design  :  spi_pro
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY spi_pro_vhd_tst IS
END spi_pro_vhd_tst;
ARCHITECTURE spi_pro_arch OF spi_pro_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC :='1';
SIGNAL clk_in : STD_LOGIC:='1';
SIGNAL com : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cs : STD_LOGIC;
SIGNAL miso : STD_LOGIC;
SIGNAL mosi : STD_LOGIC;
SIGNAL seg : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT spi_pro
	PORT (
	clk : IN STD_LOGIC;
	clk_in : IN STD_LOGIC;
	com : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	cs : IN STD_LOGIC;
	miso : OUT STD_LOGIC;
	mosi : IN STD_LOGIC;
	seg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : spi_pro
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_in => clk_in,
	com => com,
	cs => cs,
	miso => miso,
	mosi => mosi,
	seg => seg
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
WAIT for 50ns;
clk<=not clk;
clk_in<=not clk_in;                
                                        
END PROCESS always;                                          
END spi_pro_arch;
