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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "08/25/2016 22:18:27"

-- 
-- Device: Altera EP1C3T100C8 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	spi_pro IS
    PORT (
	clk : IN std_logic;
	clk_in : IN std_logic;
	mosi : IN std_logic;
	miso : OUT std_logic;
	cs : IN std_logic;
	com : OUT std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END spi_pro;

-- Design Ports Information
-- miso	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- com[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- com[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- com[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- com[3]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[4]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[5]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[6]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg[7]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cs	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mosi	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF spi_pro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_com : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \TX_TOP|Add0~2\ : std_logic;
SIGNAL \TX_TOP|Add0~2COUT1_31\ : std_logic;
SIGNAL \TX_TOP|Add0~7\ : std_logic;
SIGNAL \TX_TOP|Add0~7COUT1_33\ : std_logic;
SIGNAL \TX_TOP|Add0~10_combout\ : std_logic;
SIGNAL \cs~combout\ : std_logic;
SIGNAL \TX_TOP|Add0~12\ : std_logic;
SIGNAL \TX_TOP|Add0~12COUT1_35\ : std_logic;
SIGNAL \TX_TOP|Add0~15_combout\ : std_logic;
SIGNAL \TX_TOP|Add0~5_combout\ : std_logic;
SIGNAL \TX_TOP|Add0~0_combout\ : std_logic;
SIGNAL \TX_TOP|Add0~17\ : std_logic;
SIGNAL \TX_TOP|Add0~17COUT1_37\ : std_logic;
SIGNAL \TX_TOP|Add0~20_combout\ : std_logic;
SIGNAL \TX_TOP|a~0\ : std_logic;
SIGNAL \TX_TOP|Mux0~0\ : std_logic;
SIGNAL \TX_TOP|miso~regout\ : std_logic;
SIGNAL \SHOW_TOP|count[0]~9\ : std_logic;
SIGNAL \SHOW_TOP|count[0]~9COUT1_74\ : std_logic;
SIGNAL \SHOW_TOP|count[1]~11\ : std_logic;
SIGNAL \SHOW_TOP|count[1]~11COUT1_76\ : std_logic;
SIGNAL \SHOW_TOP|count[2]~13\ : std_logic;
SIGNAL \SHOW_TOP|count[3]~15\ : std_logic;
SIGNAL \SHOW_TOP|count[3]~15COUT1_78\ : std_logic;
SIGNAL \SHOW_TOP|count[4]~17\ : std_logic;
SIGNAL \SHOW_TOP|count[4]~17COUT1_80\ : std_logic;
SIGNAL \SHOW_TOP|count[5]~19\ : std_logic;
SIGNAL \SHOW_TOP|count[5]~19COUT1_82\ : std_logic;
SIGNAL \SHOW_TOP|count[6]~1\ : std_logic;
SIGNAL \SHOW_TOP|count[6]~1COUT1_84\ : std_logic;
SIGNAL \SHOW_TOP|count[7]~3\ : std_logic;
SIGNAL \SHOW_TOP|count[8]~51\ : std_logic;
SIGNAL \SHOW_TOP|count[8]~51COUT1_86\ : std_logic;
SIGNAL \SHOW_TOP|count[9]~5\ : std_logic;
SIGNAL \SHOW_TOP|count[9]~5COUT1_88\ : std_logic;
SIGNAL \SHOW_TOP|count[10]~47\ : std_logic;
SIGNAL \SHOW_TOP|count[10]~47COUT1_90\ : std_logic;
SIGNAL \SHOW_TOP|count[11]~49\ : std_logic;
SIGNAL \SHOW_TOP|count[11]~49COUT1_92\ : std_logic;
SIGNAL \SHOW_TOP|count[12]~7\ : std_logic;
SIGNAL \SHOW_TOP|count[13]~21\ : std_logic;
SIGNAL \SHOW_TOP|count[13]~21COUT1_94\ : std_logic;
SIGNAL \SHOW_TOP|count[14]~23\ : std_logic;
SIGNAL \SHOW_TOP|count[14]~23COUT1_96\ : std_logic;
SIGNAL \SHOW_TOP|count[15]~25\ : std_logic;
SIGNAL \SHOW_TOP|count[15]~25COUT1_98\ : std_logic;
SIGNAL \SHOW_TOP|count[16]~27\ : std_logic;
SIGNAL \SHOW_TOP|count[16]~27COUT1_100\ : std_logic;
SIGNAL \SHOW_TOP|count[17]~31\ : std_logic;
SIGNAL \SHOW_TOP|count[18]~33\ : std_logic;
SIGNAL \SHOW_TOP|count[18]~33COUT1_102\ : std_logic;
SIGNAL \SHOW_TOP|count[19]~35\ : std_logic;
SIGNAL \SHOW_TOP|count[19]~35COUT1_104\ : std_logic;
SIGNAL \SHOW_TOP|count[20]~37\ : std_logic;
SIGNAL \SHOW_TOP|count[20]~37COUT1_106\ : std_logic;
SIGNAL \SHOW_TOP|count[21]~39\ : std_logic;
SIGNAL \SHOW_TOP|count[21]~39COUT1_108\ : std_logic;
SIGNAL \SHOW_TOP|count[22]~41\ : std_logic;
SIGNAL \SHOW_TOP|count[23]~43\ : std_logic;
SIGNAL \SHOW_TOP|count[23]~43COUT1_110\ : std_logic;
SIGNAL \SHOW_TOP|count[24]~45\ : std_logic;
SIGNAL \SHOW_TOP|count[24]~45COUT1_112\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~3_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~1_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~2_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~6_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~5_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~4_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~7_combout\ : std_logic;
SIGNAL \SHOW_TOP|LessThan0~8_combout\ : std_logic;
SIGNAL \SHOW_TOP|clk1~regout\ : std_logic;
SIGNAL \SHOW_TOP|b~0_combout\ : std_logic;
SIGNAL \RX_TOP|Add0~0_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[7]~0_combout\ : std_logic;
SIGNAL \RX_TOP|Add0~2\ : std_logic;
SIGNAL \RX_TOP|Add0~2COUT1_31\ : std_logic;
SIGNAL \RX_TOP|Add0~17\ : std_logic;
SIGNAL \RX_TOP|Add0~17COUT1_33\ : std_logic;
SIGNAL \RX_TOP|Add0~10_combout\ : std_logic;
SIGNAL \RX_TOP|Add0~12\ : std_logic;
SIGNAL \RX_TOP|Add0~12COUT1_35\ : std_logic;
SIGNAL \RX_TOP|Add0~5_combout\ : std_logic;
SIGNAL \RX_TOP|Add0~15_combout\ : std_logic;
SIGNAL \RX_TOP|Mux16~0\ : std_logic;
SIGNAL \RX_TOP|Add0~7\ : std_logic;
SIGNAL \RX_TOP|Add0~7COUT1_37\ : std_logic;
SIGNAL \RX_TOP|Add0~20_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[7]~20_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[6]~5_combout\ : std_logic;
SIGNAL \mosi~combout\ : std_logic;
SIGNAL \RX_TOP|rx_data[3]~0\ : std_logic;
SIGNAL \SHOW_TOP|show_num[0]~0_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[11]~15_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[14]~3_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[11]~17_combout\ : std_logic;
SIGNAL \SHOW_TOP|show_num[0]~1_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux1~0\ : std_logic;
SIGNAL \RX_TOP|data_rx[5]~6\ : std_logic;
SIGNAL \RX_TOP|data_rx[7]~13_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[1]~8_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[15]~11_combout\ : std_logic;
SIGNAL \RX_TOP|data_rx[9]~1\ : std_logic;
SIGNAL \SHOW_TOP|Mux2~0\ : std_logic;
SIGNAL \SHOW_TOP|Mux0~0\ : std_logic;
SIGNAL \SHOW_TOP|Mux3~0\ : std_logic;
SIGNAL \SHOW_TOP|Mux14~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux13~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux12~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux11~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux10~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux9~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|Mux8~0_combout\ : std_logic;
SIGNAL \RX_TOP|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RX_TOP|data_rx\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RX_TOP|a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \TX_TOP|a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHOW_TOP|show_num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHOW_TOP|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \SHOW_TOP|com\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SHOW_TOP|b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SHOW_TOP|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;
SIGNAL \ALT_INV_cs~combout\ : std_logic;
SIGNAL \SHOW_TOP|ALT_INV_b\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_clk_in <= clk_in;
ww_mosi <= mosi;
miso <= ww_miso;
ww_cs <= cs;
com <= ww_com;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SHOW_TOP|ALT_INV_Mux9~0_combout\ <= NOT \SHOW_TOP|Mux9~0_combout\;
\SHOW_TOP|ALT_INV_Mux10~0_combout\ <= NOT \SHOW_TOP|Mux10~0_combout\;
\SHOW_TOP|ALT_INV_Mux11~0_combout\ <= NOT \SHOW_TOP|Mux11~0_combout\;
\SHOW_TOP|ALT_INV_Mux12~0_combout\ <= NOT \SHOW_TOP|Mux12~0_combout\;
\SHOW_TOP|ALT_INV_Mux13~0_combout\ <= NOT \SHOW_TOP|Mux13~0_combout\;
\SHOW_TOP|ALT_INV_Mux14~0_combout\ <= NOT \SHOW_TOP|Mux14~0_combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;
\ALT_INV_cs~combout\ <= NOT \cs~combout\;
\SHOW_TOP|ALT_INV_b\(2) <= NOT \SHOW_TOP|b\(2);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X22_Y13_N5
\TX_TOP|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Add0~0_combout\ = ((!\TX_TOP|a\(0)))
-- \TX_TOP|Add0~2\ = CARRY(((\TX_TOP|a\(0))))
-- \TX_TOP|Add0~2COUT1_31\ = CARRY(((\TX_TOP|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TX_TOP|a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Add0~0_combout\,
	cout0 => \TX_TOP|Add0~2\,
	cout1 => \TX_TOP|Add0~2COUT1_31\);

-- Location: LC_X22_Y13_N6
\TX_TOP|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Add0~5_combout\ = \TX_TOP|a\(1) $ ((((\TX_TOP|Add0~2\))))
-- \TX_TOP|Add0~7\ = CARRY(((!\TX_TOP|Add0~2\)) # (!\TX_TOP|a\(1)))
-- \TX_TOP|Add0~7COUT1_33\ = CARRY(((!\TX_TOP|Add0~2COUT1_31\)) # (!\TX_TOP|a\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TX_TOP|a\(1),
	cin0 => \TX_TOP|Add0~2\,
	cin1 => \TX_TOP|Add0~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Add0~5_combout\,
	cout0 => \TX_TOP|Add0~7\,
	cout1 => \TX_TOP|Add0~7COUT1_33\);

-- Location: LC_X22_Y13_N7
\TX_TOP|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Add0~10_combout\ = (\TX_TOP|a\(2) $ ((!\TX_TOP|Add0~7\)))
-- \TX_TOP|Add0~12\ = CARRY(((\TX_TOP|a\(2) & !\TX_TOP|Add0~7\)))
-- \TX_TOP|Add0~12COUT1_35\ = CARRY(((\TX_TOP|a\(2) & !\TX_TOP|Add0~7COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TX_TOP|a\(2),
	cin0 => \TX_TOP|Add0~7\,
	cin1 => \TX_TOP|Add0~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Add0~10_combout\,
	cout0 => \TX_TOP|Add0~12\,
	cout1 => \TX_TOP|Add0~12COUT1_35\);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cs~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cs,
	combout => \cs~combout\);

-- Location: LC_X22_Y13_N3
\TX_TOP|a[2]\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|a\(2) = DFFEAS(GND, !GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \TX_TOP|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datac => \TX_TOP|Add0~10_combout\,
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_TOP|a\(2));

-- Location: LC_X22_Y13_N8
\TX_TOP|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Add0~15_combout\ = (\TX_TOP|a\(3) $ ((\TX_TOP|Add0~12\)))
-- \TX_TOP|Add0~17\ = CARRY(((!\TX_TOP|Add0~12\) # (!\TX_TOP|a\(3))))
-- \TX_TOP|Add0~17COUT1_37\ = CARRY(((!\TX_TOP|Add0~12COUT1_35\) # (!\TX_TOP|a\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TX_TOP|a\(3),
	cin0 => \TX_TOP|Add0~12\,
	cin1 => \TX_TOP|Add0~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Add0~15_combout\,
	cout0 => \TX_TOP|Add0~17\,
	cout1 => \TX_TOP|Add0~17COUT1_37\);

-- Location: LC_X22_Y13_N4
\TX_TOP|a[3]\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|a\(3) = DFFEAS(GND, !GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \TX_TOP|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datac => \TX_TOP|Add0~15_combout\,
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_TOP|a\(3));

-- Location: LC_X22_Y13_N2
\TX_TOP|a[1]\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|a~0\ = (\TX_TOP|a\(4)) # (((!\TX_TOP|a\(2)) # (!E1_a[1])) # (!\TX_TOP|a\(3)))
-- \TX_TOP|a\(1) = DFFEAS(\TX_TOP|a~0\, !GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \TX_TOP|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \TX_TOP|a\(4),
	datab => \TX_TOP|a\(3),
	datac => \TX_TOP|Add0~5_combout\,
	datad => \TX_TOP|a\(2),
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|a~0\,
	regout => \TX_TOP|a\(1));

-- Location: LC_X22_Y13_N0
\TX_TOP|a[0]\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Mux0~0\ = (E1_a[0] & (\TX_TOP|a\(1) $ (((!\TX_TOP|a\(2)))))) # (!E1_a[0] & (\TX_TOP|a\(1) & ((\TX_TOP|a\(3)) # (!\TX_TOP|a\(2)))))
-- \TX_TOP|a\(0) = DFFEAS(\TX_TOP|Mux0~0\, !GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \TX_TOP|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a85a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \TX_TOP|a\(1),
	datab => \TX_TOP|a\(3),
	datac => \TX_TOP|Add0~0_combout\,
	datad => \TX_TOP|a\(2),
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Mux0~0\,
	regout => \TX_TOP|a\(0));

-- Location: LC_X22_Y13_N9
\TX_TOP|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|Add0~20_combout\ = ((\TX_TOP|Add0~17\ $ (!\TX_TOP|a\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \TX_TOP|a\(4),
	cin0 => \TX_TOP|Add0~17\,
	cin1 => \TX_TOP|Add0~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TX_TOP|Add0~20_combout\);

-- Location: LC_X22_Y13_N1
\TX_TOP|a[4]\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|a\(4) = DFFEAS(((\TX_TOP|Add0~20_combout\ & ((\TX_TOP|a~0\) # (!\TX_TOP|a\(0))))), !GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \TX_TOP|a\(0),
	datac => \TX_TOP|Add0~20_combout\,
	datad => \TX_TOP|a~0\,
	aclr => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_TOP|a\(4));

-- Location: LC_X23_Y13_N2
\TX_TOP|miso\ : cyclone_lcell
-- Equation(s):
-- \TX_TOP|miso~regout\ = DFFEAS((\TX_TOP|a\(4) & (((\TX_TOP|miso~regout\)))) # (!\TX_TOP|a\(4) & ((\cs~combout\ & ((\TX_TOP|Mux0~0\))) # (!\cs~combout\ & (\TX_TOP|miso~regout\)))), !GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \TX_TOP|a\(4),
	datab => \cs~combout\,
	datac => \TX_TOP|miso~regout\,
	datad => \TX_TOP|Mux0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_TOP|miso~regout\);

-- Location: LC_X10_Y7_N2
\SHOW_TOP|count[0]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(0) = DFFEAS(((!\SHOW_TOP|count\(0))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[0]~9\ = CARRY(((\SHOW_TOP|count\(0))))
-- \SHOW_TOP|count[0]~9COUT1_74\ = CARRY(((\SHOW_TOP|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(0),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(0),
	cout0 => \SHOW_TOP|count[0]~9\,
	cout1 => \SHOW_TOP|count[0]~9COUT1_74\);

-- Location: LC_X10_Y7_N3
\SHOW_TOP|count[1]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(1) = DFFEAS((\SHOW_TOP|count\(1) $ ((\SHOW_TOP|count[0]~9\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[1]~11\ = CARRY(((!\SHOW_TOP|count[0]~9\) # (!\SHOW_TOP|count\(1))))
-- \SHOW_TOP|count[1]~11COUT1_76\ = CARRY(((!\SHOW_TOP|count[0]~9COUT1_74\) # (!\SHOW_TOP|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(1),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin0 => \SHOW_TOP|count[0]~9\,
	cin1 => \SHOW_TOP|count[0]~9COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(1),
	cout0 => \SHOW_TOP|count[1]~11\,
	cout1 => \SHOW_TOP|count[1]~11COUT1_76\);

-- Location: LC_X10_Y7_N4
\SHOW_TOP|count[2]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(2) = DFFEAS((\SHOW_TOP|count\(2) $ ((!\SHOW_TOP|count[1]~11\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[2]~13\ = CARRY(((\SHOW_TOP|count\(2) & !\SHOW_TOP|count[1]~11COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(2),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin0 => \SHOW_TOP|count[1]~11\,
	cin1 => \SHOW_TOP|count[1]~11COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(2),
	cout => \SHOW_TOP|count[2]~13\);

-- Location: LC_X10_Y7_N5
\SHOW_TOP|count[3]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(3) = DFFEAS((\SHOW_TOP|count\(3) $ ((\SHOW_TOP|count[2]~13\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[3]~15\ = CARRY(((!\SHOW_TOP|count[2]~13\) # (!\SHOW_TOP|count\(3))))
-- \SHOW_TOP|count[3]~15COUT1_78\ = CARRY(((!\SHOW_TOP|count[2]~13\) # (!\SHOW_TOP|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(3),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[2]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(3),
	cout0 => \SHOW_TOP|count[3]~15\,
	cout1 => \SHOW_TOP|count[3]~15COUT1_78\);

-- Location: LC_X10_Y7_N6
\SHOW_TOP|count[4]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(4) = DFFEAS(\SHOW_TOP|count\(4) $ ((((!(!\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[3]~15\) # (\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[3]~15COUT1_78\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[4]~17\ = CARRY((\SHOW_TOP|count\(4) & ((!\SHOW_TOP|count[3]~15\))))
-- \SHOW_TOP|count[4]~17COUT1_80\ = CARRY((\SHOW_TOP|count\(4) & ((!\SHOW_TOP|count[3]~15COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(4),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[2]~13\,
	cin0 => \SHOW_TOP|count[3]~15\,
	cin1 => \SHOW_TOP|count[3]~15COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(4),
	cout0 => \SHOW_TOP|count[4]~17\,
	cout1 => \SHOW_TOP|count[4]~17COUT1_80\);

-- Location: LC_X10_Y7_N7
\SHOW_TOP|count[5]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(5) = DFFEAS(\SHOW_TOP|count\(5) $ (((((!\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[4]~17\) # (\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[4]~17COUT1_80\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[5]~19\ = CARRY(((!\SHOW_TOP|count[4]~17\)) # (!\SHOW_TOP|count\(5)))
-- \SHOW_TOP|count[5]~19COUT1_82\ = CARRY(((!\SHOW_TOP|count[4]~17COUT1_80\)) # (!\SHOW_TOP|count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(5),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[2]~13\,
	cin0 => \SHOW_TOP|count[4]~17\,
	cin1 => \SHOW_TOP|count[4]~17COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(5),
	cout0 => \SHOW_TOP|count[5]~19\,
	cout1 => \SHOW_TOP|count[5]~19COUT1_82\);

-- Location: LC_X10_Y7_N8
\SHOW_TOP|count[6]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(6) = DFFEAS((\SHOW_TOP|count\(6) $ ((!(!\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[5]~19\) # (\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[5]~19COUT1_82\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[6]~1\ = CARRY(((\SHOW_TOP|count\(6) & !\SHOW_TOP|count[5]~19\)))
-- \SHOW_TOP|count[6]~1COUT1_84\ = CARRY(((\SHOW_TOP|count\(6) & !\SHOW_TOP|count[5]~19COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(6),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[2]~13\,
	cin0 => \SHOW_TOP|count[5]~19\,
	cin1 => \SHOW_TOP|count[5]~19COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(6),
	cout0 => \SHOW_TOP|count[6]~1\,
	cout1 => \SHOW_TOP|count[6]~1COUT1_84\);

-- Location: LC_X10_Y7_N9
\SHOW_TOP|count[7]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(7) = DFFEAS(\SHOW_TOP|count\(7) $ (((((!\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[6]~1\) # (\SHOW_TOP|count[2]~13\ & \SHOW_TOP|count[6]~1COUT1_84\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[7]~3\ = CARRY(((!\SHOW_TOP|count[6]~1COUT1_84\)) # (!\SHOW_TOP|count\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(7),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[2]~13\,
	cin0 => \SHOW_TOP|count[6]~1\,
	cin1 => \SHOW_TOP|count[6]~1COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(7),
	cout => \SHOW_TOP|count[7]~3\);

-- Location: LC_X10_Y6_N0
\SHOW_TOP|count[8]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(8) = DFFEAS((\SHOW_TOP|count\(8) $ ((!\SHOW_TOP|count[7]~3\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[8]~51\ = CARRY(((\SHOW_TOP|count\(8) & !\SHOW_TOP|count[7]~3\)))
-- \SHOW_TOP|count[8]~51COUT1_86\ = CARRY(((\SHOW_TOP|count\(8) & !\SHOW_TOP|count[7]~3\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(8),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[7]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(8),
	cout0 => \SHOW_TOP|count[8]~51\,
	cout1 => \SHOW_TOP|count[8]~51COUT1_86\);

-- Location: LC_X10_Y6_N1
\SHOW_TOP|count[9]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(9) = DFFEAS(\SHOW_TOP|count\(9) $ (((((!\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[8]~51\) # (\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[8]~51COUT1_86\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[9]~5\ = CARRY(((!\SHOW_TOP|count[8]~51\)) # (!\SHOW_TOP|count\(9)))
-- \SHOW_TOP|count[9]~5COUT1_88\ = CARRY(((!\SHOW_TOP|count[8]~51COUT1_86\)) # (!\SHOW_TOP|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(9),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[7]~3\,
	cin0 => \SHOW_TOP|count[8]~51\,
	cin1 => \SHOW_TOP|count[8]~51COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(9),
	cout0 => \SHOW_TOP|count[9]~5\,
	cout1 => \SHOW_TOP|count[9]~5COUT1_88\);

-- Location: LC_X10_Y6_N2
\SHOW_TOP|count[10]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(10) = DFFEAS(\SHOW_TOP|count\(10) $ ((((!(!\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[9]~5\) # (\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[9]~5COUT1_88\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[10]~47\ = CARRY((\SHOW_TOP|count\(10) & ((!\SHOW_TOP|count[9]~5\))))
-- \SHOW_TOP|count[10]~47COUT1_90\ = CARRY((\SHOW_TOP|count\(10) & ((!\SHOW_TOP|count[9]~5COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(10),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[7]~3\,
	cin0 => \SHOW_TOP|count[9]~5\,
	cin1 => \SHOW_TOP|count[9]~5COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(10),
	cout0 => \SHOW_TOP|count[10]~47\,
	cout1 => \SHOW_TOP|count[10]~47COUT1_90\);

-- Location: LC_X10_Y6_N3
\SHOW_TOP|count[11]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(11) = DFFEAS((\SHOW_TOP|count\(11) $ (((!\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[10]~47\) # (\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[10]~47COUT1_90\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[11]~49\ = CARRY(((!\SHOW_TOP|count[10]~47\) # (!\SHOW_TOP|count\(11))))
-- \SHOW_TOP|count[11]~49COUT1_92\ = CARRY(((!\SHOW_TOP|count[10]~47COUT1_90\) # (!\SHOW_TOP|count\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(11),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[7]~3\,
	cin0 => \SHOW_TOP|count[10]~47\,
	cin1 => \SHOW_TOP|count[10]~47COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(11),
	cout0 => \SHOW_TOP|count[11]~49\,
	cout1 => \SHOW_TOP|count[11]~49COUT1_92\);

-- Location: LC_X10_Y6_N4
\SHOW_TOP|count[12]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(12) = DFFEAS((\SHOW_TOP|count\(12) $ ((!(!\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[11]~49\) # (\SHOW_TOP|count[7]~3\ & \SHOW_TOP|count[11]~49COUT1_92\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[12]~7\ = CARRY(((\SHOW_TOP|count\(12) & !\SHOW_TOP|count[11]~49COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(12),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[7]~3\,
	cin0 => \SHOW_TOP|count[11]~49\,
	cin1 => \SHOW_TOP|count[11]~49COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(12),
	cout => \SHOW_TOP|count[12]~7\);

-- Location: LC_X10_Y6_N5
\SHOW_TOP|count[13]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(13) = DFFEAS((\SHOW_TOP|count\(13) $ ((\SHOW_TOP|count[12]~7\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[13]~21\ = CARRY(((!\SHOW_TOP|count[12]~7\) # (!\SHOW_TOP|count\(13))))
-- \SHOW_TOP|count[13]~21COUT1_94\ = CARRY(((!\SHOW_TOP|count[12]~7\) # (!\SHOW_TOP|count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(13),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[12]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(13),
	cout0 => \SHOW_TOP|count[13]~21\,
	cout1 => \SHOW_TOP|count[13]~21COUT1_94\);

-- Location: LC_X10_Y6_N6
\SHOW_TOP|count[14]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(14) = DFFEAS(\SHOW_TOP|count\(14) $ ((((!(!\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[13]~21\) # (\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[13]~21COUT1_94\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[14]~23\ = CARRY((\SHOW_TOP|count\(14) & ((!\SHOW_TOP|count[13]~21\))))
-- \SHOW_TOP|count[14]~23COUT1_96\ = CARRY((\SHOW_TOP|count\(14) & ((!\SHOW_TOP|count[13]~21COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(14),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[12]~7\,
	cin0 => \SHOW_TOP|count[13]~21\,
	cin1 => \SHOW_TOP|count[13]~21COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(14),
	cout0 => \SHOW_TOP|count[14]~23\,
	cout1 => \SHOW_TOP|count[14]~23COUT1_96\);

-- Location: LC_X10_Y6_N7
\SHOW_TOP|count[15]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(15) = DFFEAS(\SHOW_TOP|count\(15) $ (((((!\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[14]~23\) # (\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[14]~23COUT1_96\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[15]~25\ = CARRY(((!\SHOW_TOP|count[14]~23\)) # (!\SHOW_TOP|count\(15)))
-- \SHOW_TOP|count[15]~25COUT1_98\ = CARRY(((!\SHOW_TOP|count[14]~23COUT1_96\)) # (!\SHOW_TOP|count\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(15),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[12]~7\,
	cin0 => \SHOW_TOP|count[14]~23\,
	cin1 => \SHOW_TOP|count[14]~23COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(15),
	cout0 => \SHOW_TOP|count[15]~25\,
	cout1 => \SHOW_TOP|count[15]~25COUT1_98\);

-- Location: LC_X10_Y6_N8
\SHOW_TOP|count[16]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(16) = DFFEAS((\SHOW_TOP|count\(16) $ ((!(!\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[15]~25\) # (\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[15]~25COUT1_98\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[16]~27\ = CARRY(((\SHOW_TOP|count\(16) & !\SHOW_TOP|count[15]~25\)))
-- \SHOW_TOP|count[16]~27COUT1_100\ = CARRY(((\SHOW_TOP|count\(16) & !\SHOW_TOP|count[15]~25COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(16),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[12]~7\,
	cin0 => \SHOW_TOP|count[15]~25\,
	cin1 => \SHOW_TOP|count[15]~25COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(16),
	cout0 => \SHOW_TOP|count[16]~27\,
	cout1 => \SHOW_TOP|count[16]~27COUT1_100\);

-- Location: LC_X10_Y6_N9
\SHOW_TOP|count[17]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(17) = DFFEAS(\SHOW_TOP|count\(17) $ (((((!\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[16]~27\) # (\SHOW_TOP|count[12]~7\ & \SHOW_TOP|count[16]~27COUT1_100\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[17]~31\ = CARRY(((!\SHOW_TOP|count[16]~27COUT1_100\)) # (!\SHOW_TOP|count\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(17),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[12]~7\,
	cin0 => \SHOW_TOP|count[16]~27\,
	cin1 => \SHOW_TOP|count[16]~27COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(17),
	cout => \SHOW_TOP|count[17]~31\);

-- Location: LC_X10_Y5_N0
\SHOW_TOP|count[18]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(18) = DFFEAS((\SHOW_TOP|count\(18) $ ((!\SHOW_TOP|count[17]~31\))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[18]~33\ = CARRY(((\SHOW_TOP|count\(18) & !\SHOW_TOP|count[17]~31\)))
-- \SHOW_TOP|count[18]~33COUT1_102\ = CARRY(((\SHOW_TOP|count\(18) & !\SHOW_TOP|count[17]~31\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(18),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[17]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(18),
	cout0 => \SHOW_TOP|count[18]~33\,
	cout1 => \SHOW_TOP|count[18]~33COUT1_102\);

-- Location: LC_X10_Y5_N1
\SHOW_TOP|count[19]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(19) = DFFEAS(\SHOW_TOP|count\(19) $ (((((!\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[18]~33\) # (\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[18]~33COUT1_102\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[19]~35\ = CARRY(((!\SHOW_TOP|count[18]~33\)) # (!\SHOW_TOP|count\(19)))
-- \SHOW_TOP|count[19]~35COUT1_104\ = CARRY(((!\SHOW_TOP|count[18]~33COUT1_102\)) # (!\SHOW_TOP|count\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(19),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[17]~31\,
	cin0 => \SHOW_TOP|count[18]~33\,
	cin1 => \SHOW_TOP|count[18]~33COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(19),
	cout0 => \SHOW_TOP|count[19]~35\,
	cout1 => \SHOW_TOP|count[19]~35COUT1_104\);

-- Location: LC_X10_Y5_N2
\SHOW_TOP|count[20]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(20) = DFFEAS(\SHOW_TOP|count\(20) $ ((((!(!\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[19]~35\) # (\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[19]~35COUT1_104\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[20]~37\ = CARRY((\SHOW_TOP|count\(20) & ((!\SHOW_TOP|count[19]~35\))))
-- \SHOW_TOP|count[20]~37COUT1_106\ = CARRY((\SHOW_TOP|count\(20) & ((!\SHOW_TOP|count[19]~35COUT1_104\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(20),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[17]~31\,
	cin0 => \SHOW_TOP|count[19]~35\,
	cin1 => \SHOW_TOP|count[19]~35COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(20),
	cout0 => \SHOW_TOP|count[20]~37\,
	cout1 => \SHOW_TOP|count[20]~37COUT1_106\);

-- Location: LC_X10_Y5_N3
\SHOW_TOP|count[21]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(21) = DFFEAS((\SHOW_TOP|count\(21) $ (((!\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[20]~37\) # (\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[20]~37COUT1_106\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[21]~39\ = CARRY(((!\SHOW_TOP|count[20]~37\) # (!\SHOW_TOP|count\(21))))
-- \SHOW_TOP|count[21]~39COUT1_108\ = CARRY(((!\SHOW_TOP|count[20]~37COUT1_106\) # (!\SHOW_TOP|count\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(21),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[17]~31\,
	cin0 => \SHOW_TOP|count[20]~37\,
	cin1 => \SHOW_TOP|count[20]~37COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(21),
	cout0 => \SHOW_TOP|count[21]~39\,
	cout1 => \SHOW_TOP|count[21]~39COUT1_108\);

-- Location: LC_X10_Y5_N4
\SHOW_TOP|count[22]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(22) = DFFEAS((\SHOW_TOP|count\(22) $ ((!(!\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[21]~39\) # (\SHOW_TOP|count[17]~31\ & \SHOW_TOP|count[21]~39COUT1_108\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[22]~41\ = CARRY(((\SHOW_TOP|count\(22) & !\SHOW_TOP|count[21]~39COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \SHOW_TOP|count\(22),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[17]~31\,
	cin0 => \SHOW_TOP|count[21]~39\,
	cin1 => \SHOW_TOP|count[21]~39COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(22),
	cout => \SHOW_TOP|count[22]~41\);

-- Location: LC_X10_Y5_N5
\SHOW_TOP|count[23]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(23) = DFFEAS(\SHOW_TOP|count\(23) $ ((((\SHOW_TOP|count[22]~41\)))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[23]~43\ = CARRY(((!\SHOW_TOP|count[22]~41\)) # (!\SHOW_TOP|count\(23)))
-- \SHOW_TOP|count[23]~43COUT1_110\ = CARRY(((!\SHOW_TOP|count[22]~41\)) # (!\SHOW_TOP|count\(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(23),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[22]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(23),
	cout0 => \SHOW_TOP|count[23]~43\,
	cout1 => \SHOW_TOP|count[23]~43COUT1_110\);

-- Location: LC_X10_Y5_N6
\SHOW_TOP|count[24]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(24) = DFFEAS(\SHOW_TOP|count\(24) $ ((((!(!\SHOW_TOP|count[22]~41\ & \SHOW_TOP|count[23]~43\) # (\SHOW_TOP|count[22]~41\ & \SHOW_TOP|count[23]~43COUT1_110\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )
-- \SHOW_TOP|count[24]~45\ = CARRY((\SHOW_TOP|count\(24) & ((!\SHOW_TOP|count[23]~43\))))
-- \SHOW_TOP|count[24]~45COUT1_112\ = CARRY((\SHOW_TOP|count\(24) & ((!\SHOW_TOP|count[23]~43COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(24),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[22]~41\,
	cin0 => \SHOW_TOP|count[23]~43\,
	cin1 => \SHOW_TOP|count[23]~43COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(24),
	cout0 => \SHOW_TOP|count[24]~45\,
	cout1 => \SHOW_TOP|count[24]~45COUT1_112\);

-- Location: LC_X10_Y5_N7
\SHOW_TOP|count[25]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|count\(25) = DFFEAS(\SHOW_TOP|count\(25) $ (((((!\SHOW_TOP|count[22]~41\ & \SHOW_TOP|count[24]~45\) # (\SHOW_TOP|count[22]~41\ & \SHOW_TOP|count[24]~45COUT1_112\))))), GLOBAL(\clk_in~combout\), VCC, , , , , \SHOW_TOP|LessThan0~8_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \SHOW_TOP|count\(25),
	aclr => GND,
	sclr => \SHOW_TOP|LessThan0~8_combout\,
	cin => \SHOW_TOP|count[22]~41\,
	cin0 => \SHOW_TOP|count[24]~45\,
	cin1 => \SHOW_TOP|count[24]~45COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|count\(25));

-- Location: LC_X11_Y6_N3
\SHOW_TOP|LessThan0~3\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~3_combout\ = (\SHOW_TOP|count\(16)) # ((\SHOW_TOP|count\(15)) # ((\SHOW_TOP|count\(13)) # (\SHOW_TOP|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(16),
	datab => \SHOW_TOP|count\(15),
	datac => \SHOW_TOP|count\(13),
	datad => \SHOW_TOP|count\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~3_combout\);

-- Location: LC_X11_Y6_N7
\SHOW_TOP|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~0_combout\ = (\SHOW_TOP|count\(9) & (\SHOW_TOP|count\(7) & (\SHOW_TOP|count\(6) & \SHOW_TOP|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(9),
	datab => \SHOW_TOP|count\(7),
	datac => \SHOW_TOP|count\(6),
	datad => \SHOW_TOP|count\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~0_combout\);

-- Location: LC_X10_Y7_N0
\SHOW_TOP|LessThan0~1\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~1_combout\ = (\SHOW_TOP|count\(0)) # ((\SHOW_TOP|count\(1)) # ((\SHOW_TOP|count\(2)) # (\SHOW_TOP|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(0),
	datab => \SHOW_TOP|count\(1),
	datac => \SHOW_TOP|count\(2),
	datad => \SHOW_TOP|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~1_combout\);

-- Location: LC_X11_Y6_N9
\SHOW_TOP|LessThan0~2\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~2_combout\ = (\SHOW_TOP|LessThan0~0_combout\ & ((\SHOW_TOP|count\(5)) # ((\SHOW_TOP|count\(4)) # (\SHOW_TOP|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(5),
	datab => \SHOW_TOP|count\(4),
	datac => \SHOW_TOP|LessThan0~0_combout\,
	datad => \SHOW_TOP|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~2_combout\);

-- Location: LC_X11_Y6_N5
\SHOW_TOP|LessThan0~6\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~6_combout\ = (\SHOW_TOP|count\(11)) # ((\SHOW_TOP|count\(10)) # ((\SHOW_TOP|count\(8) & \SHOW_TOP|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(11),
	datab => \SHOW_TOP|count\(10),
	datac => \SHOW_TOP|count\(8),
	datad => \SHOW_TOP|count\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~6_combout\);

-- Location: LC_X10_Y5_N9
\SHOW_TOP|LessThan0~5\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~5_combout\ = (\SHOW_TOP|count\(24)) # ((\SHOW_TOP|count\(21)) # ((\SHOW_TOP|count\(22)) # (\SHOW_TOP|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(24),
	datab => \SHOW_TOP|count\(21),
	datac => \SHOW_TOP|count\(22),
	datad => \SHOW_TOP|count\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~5_combout\);

-- Location: LC_X11_Y6_N0
\SHOW_TOP|LessThan0~4\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~4_combout\ = (\SHOW_TOP|count\(19)) # ((\SHOW_TOP|count\(17)) # ((\SHOW_TOP|count\(18)) # (\SHOW_TOP|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(19),
	datab => \SHOW_TOP|count\(17),
	datac => \SHOW_TOP|count\(18),
	datad => \SHOW_TOP|count\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~4_combout\);

-- Location: LC_X11_Y6_N1
\SHOW_TOP|LessThan0~7\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~7_combout\ = (\SHOW_TOP|LessThan0~5_combout\) # ((\SHOW_TOP|LessThan0~4_combout\) # ((\SHOW_TOP|count\(12) & \SHOW_TOP|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(12),
	datab => \SHOW_TOP|LessThan0~6_combout\,
	datac => \SHOW_TOP|LessThan0~5_combout\,
	datad => \SHOW_TOP|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~7_combout\);

-- Location: LC_X11_Y6_N2
\SHOW_TOP|LessThan0~8\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|LessThan0~8_combout\ = (\SHOW_TOP|count\(25)) # ((\SHOW_TOP|LessThan0~3_combout\) # ((\SHOW_TOP|LessThan0~2_combout\) # (\SHOW_TOP|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|count\(25),
	datab => \SHOW_TOP|LessThan0~3_combout\,
	datac => \SHOW_TOP|LessThan0~2_combout\,
	datad => \SHOW_TOP|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|LessThan0~8_combout\);

-- Location: LC_X8_Y6_N2
\SHOW_TOP|clk1\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|clk1~regout\ = DFFEAS(((\SHOW_TOP|clk1~regout\ $ (\SHOW_TOP|LessThan0~8_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datac => \SHOW_TOP|clk1~regout\,
	datad => \SHOW_TOP|LessThan0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|clk1~regout\);

-- Location: LC_X25_Y11_N1
\SHOW_TOP|b~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|b~0_combout\ = (\SHOW_TOP|b\(0) & ((\SHOW_TOP|b\(1) $ (!\SHOW_TOP|b\(2))))) # (!\SHOW_TOP|b\(0) & (((!\SHOW_TOP|b\(2)) # (!\SHOW_TOP|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|b\(0),
	datac => \SHOW_TOP|b\(1),
	datad => \SHOW_TOP|b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|b~0_combout\);

-- Location: LC_X25_Y11_N3
\SHOW_TOP|b[2]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|b\(2) = DFFEAS((((!\SHOW_TOP|b~0_combout\))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	datad => \SHOW_TOP|b~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|b\(2));

-- Location: LC_X25_Y11_N9
\SHOW_TOP|b[0]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|b\(0) = DFFEAS((!\SHOW_TOP|b\(0) & ((\SHOW_TOP|b\(1)) # ((!\SHOW_TOP|b\(2))))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \SHOW_TOP|b\(1),
	datab => \SHOW_TOP|b\(2),
	datac => \SHOW_TOP|b\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|b\(0));

-- Location: LC_X25_Y11_N5
\SHOW_TOP|b[1]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|b\(1) = DFFEAS(\SHOW_TOP|b\(1) $ ((((\SHOW_TOP|b\(0))))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \SHOW_TOP|b\(1),
	datac => \SHOW_TOP|b\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|b\(1));

-- Location: LC_X25_Y11_N2
\SHOW_TOP|com[0]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|com\(0) = DFFEAS((\SHOW_TOP|b\(1) & (\SHOW_TOP|b\(2) & (\SHOW_TOP|b\(0)))) # (!\SHOW_TOP|b\(1) & (((!\SHOW_TOP|b\(0))))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8585",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \SHOW_TOP|b\(1),
	datab => \SHOW_TOP|b\(2),
	datac => \SHOW_TOP|b\(0),
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|com\(0));

-- Location: LC_X25_Y11_N4
\SHOW_TOP|com[1]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|com\(1) = DFFEAS((!\SHOW_TOP|b\(1) & (!\SHOW_TOP|b\(2) & (\SHOW_TOP|b\(0)))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \SHOW_TOP|b\(1),
	datab => \SHOW_TOP|b\(2),
	datac => \SHOW_TOP|b\(0),
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|com\(1));

-- Location: LC_X25_Y11_N8
\SHOW_TOP|com[2]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|com\(2) = DFFEAS((\SHOW_TOP|b\(1) & (!\SHOW_TOP|b\(2) & (!\SHOW_TOP|b\(0)))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \SHOW_TOP|b\(1),
	datab => \SHOW_TOP|b\(2),
	datac => \SHOW_TOP|b\(0),
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|com\(2));

-- Location: LC_X25_Y11_N6
\SHOW_TOP|com[3]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|com\(3) = DFFEAS((((!\SHOW_TOP|b~0_combout\))), GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	datad => \SHOW_TOP|b~0_combout\,
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|com\(3));

-- Location: LC_X25_Y10_N0
\RX_TOP|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Add0~0_combout\ = ((!\RX_TOP|a\(0)))
-- \RX_TOP|Add0~2\ = CARRY(((\RX_TOP|a\(0))))
-- \RX_TOP|Add0~2COUT1_31\ = CARRY(((\RX_TOP|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RX_TOP|a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Add0~0_combout\,
	cout0 => \RX_TOP|Add0~2\,
	cout1 => \RX_TOP|Add0~2COUT1_31\);

-- Location: LC_X26_Y10_N3
\RX_TOP|data_rx[7]~0\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[7]~0_combout\ = (((\cs~combout\ & !\RX_TOP|a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \cs~combout\,
	datad => \RX_TOP|a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[7]~0_combout\);

-- Location: LC_X25_Y10_N1
\RX_TOP|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Add0~15_combout\ = \RX_TOP|a\(1) $ ((((\RX_TOP|Add0~2\))))
-- \RX_TOP|Add0~17\ = CARRY(((!\RX_TOP|Add0~2\)) # (!\RX_TOP|a\(1)))
-- \RX_TOP|Add0~17COUT1_33\ = CARRY(((!\RX_TOP|Add0~2COUT1_31\)) # (!\RX_TOP|a\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RX_TOP|a\(1),
	cin0 => \RX_TOP|Add0~2\,
	cin1 => \RX_TOP|Add0~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Add0~15_combout\,
	cout0 => \RX_TOP|Add0~17\,
	cout1 => \RX_TOP|Add0~17COUT1_33\);

-- Location: LC_X25_Y10_N2
\RX_TOP|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Add0~10_combout\ = (\RX_TOP|a\(2) $ ((!\RX_TOP|Add0~17\)))
-- \RX_TOP|Add0~12\ = CARRY(((\RX_TOP|a\(2) & !\RX_TOP|Add0~17\)))
-- \RX_TOP|Add0~12COUT1_35\ = CARRY(((\RX_TOP|a\(2) & !\RX_TOP|Add0~17COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RX_TOP|a\(2),
	cin0 => \RX_TOP|Add0~17\,
	cin1 => \RX_TOP|Add0~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Add0~10_combout\,
	cout0 => \RX_TOP|Add0~12\,
	cout1 => \RX_TOP|Add0~12COUT1_35\);

-- Location: LC_X25_Y10_N3
\RX_TOP|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Add0~5_combout\ = (\RX_TOP|a\(3) $ ((\RX_TOP|Add0~12\)))
-- \RX_TOP|Add0~7\ = CARRY(((!\RX_TOP|Add0~12\) # (!\RX_TOP|a\(3))))
-- \RX_TOP|Add0~7COUT1_37\ = CARRY(((!\RX_TOP|Add0~12COUT1_35\) # (!\RX_TOP|a\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RX_TOP|a\(3),
	cin0 => \RX_TOP|Add0~12\,
	cin1 => \RX_TOP|Add0~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Add0~5_combout\,
	cout0 => \RX_TOP|Add0~7\,
	cout1 => \RX_TOP|Add0~7COUT1_37\);

-- Location: LC_X26_Y10_N9
\RX_TOP|a[3]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Mux16~0\ = (\RX_TOP|a\(1) & (\RX_TOP|a\(2) & (C1_a[3] & !\RX_TOP|a\(4))))
-- \RX_TOP|a\(3) = DFFEAS(\RX_TOP|Mux16~0\, GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \RX_TOP|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|a\(1),
	datab => \RX_TOP|a\(2),
	datac => \RX_TOP|Add0~5_combout\,
	datad => \RX_TOP|a\(4),
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Mux16~0\,
	regout => \RX_TOP|a\(3));

-- Location: LC_X26_Y10_N5
\RX_TOP|a[2]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[9]~1\ = (\RX_TOP|a\(1) & (\RX_TOP|data_rx[7]~0_combout\ & (C1_a[2] & !\RX_TOP|a\(3))))
-- \RX_TOP|a\(2) = DFFEAS(\RX_TOP|data_rx[9]~1\, GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \RX_TOP|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|a\(1),
	datab => \RX_TOP|data_rx[7]~0_combout\,
	datac => \RX_TOP|Add0~10_combout\,
	datad => \RX_TOP|a\(3),
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[9]~1\,
	regout => \RX_TOP|a\(2));

-- Location: LC_X26_Y10_N7
\RX_TOP|a[1]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[5]~6\ = (!\RX_TOP|a\(2) & (\cs~combout\ & (C1_a[1] & !\RX_TOP|a\(4))))
-- \RX_TOP|a\(1) = DFFEAS(\RX_TOP|data_rx[5]~6\, GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \RX_TOP|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|a\(2),
	datab => \cs~combout\,
	datac => \RX_TOP|Add0~15_combout\,
	datad => \RX_TOP|a\(4),
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[5]~6\,
	regout => \RX_TOP|a\(1));

-- Location: LC_X25_Y10_N5
\RX_TOP|a[0]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data[3]~0\ = ((\cs~combout\ & (C1_a[0] & \RX_TOP|Mux16~0\)))
-- \RX_TOP|a\(0) = DFFEAS(\RX_TOP|rx_data[3]~0\, GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , \RX_TOP|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cs~combout\,
	datac => \RX_TOP|Add0~0_combout\,
	datad => \RX_TOP|Mux16~0\,
	aclr => \ALT_INV_cs~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|rx_data[3]~0\,
	regout => \RX_TOP|a\(0));

-- Location: LC_X25_Y10_N4
\RX_TOP|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|Add0~20_combout\ = ((\RX_TOP|Add0~7\ $ (!\RX_TOP|a\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \RX_TOP|a\(4),
	cin0 => \RX_TOP|Add0~7\,
	cin1 => \RX_TOP|Add0~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|Add0~20_combout\);

-- Location: LC_X26_Y10_N0
\RX_TOP|a[4]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|a\(4) = DFFEAS(((\RX_TOP|Add0~20_combout\ & ((!\RX_TOP|Mux16~0\) # (!\RX_TOP|a\(0))))), GLOBAL(\clk~combout\), GLOBAL(\cs~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \RX_TOP|a\(0),
	datac => \RX_TOP|Mux16~0\,
	datad => \RX_TOP|Add0~20_combout\,
	aclr => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|a\(4));

-- Location: LC_X23_Y10_N3
\RX_TOP|data_rx[7]~20\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[7]~20_combout\ = (\cs~combout\ & (!\RX_TOP|a\(4) & (!\RX_TOP|a\(2) & !\RX_TOP|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cs~combout\,
	datab => \RX_TOP|a\(4),
	datac => \RX_TOP|a\(2),
	datad => \RX_TOP|a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[7]~20_combout\);

-- Location: LC_X23_Y10_N7
\RX_TOP|data_rx[6]~5\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[6]~5_combout\ = (((\RX_TOP|a\(0) & \RX_TOP|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \RX_TOP|a\(0),
	datad => \RX_TOP|a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[6]~5_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mosi~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mosi,
	combout => \mosi~combout\);

-- Location: LC_X23_Y10_N1
\RX_TOP|data_rx[6]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(6) = DFFEAS((\RX_TOP|data_rx[7]~20_combout\ & ((\RX_TOP|data_rx[6]~5_combout\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[6]~5_combout\ & (\RX_TOP|data_rx\(6))))) # (!\RX_TOP|data_rx[7]~20_combout\ & (\RX_TOP|data_rx\(6))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx\(6),
	datab => \RX_TOP|data_rx[7]~20_combout\,
	datac => \RX_TOP|data_rx[6]~5_combout\,
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(6));

-- Location: LC_X25_Y10_N9
\RX_TOP|rx_data[6]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(6),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(6));

-- Location: LC_X25_Y11_N0
\SHOW_TOP|show_num[0]~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num[0]~0_combout\ = ((!\SHOW_TOP|b\(2) & (\SHOW_TOP|b\(1) $ (\SHOW_TOP|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SHOW_TOP|b\(1),
	datac => \SHOW_TOP|b\(0),
	datad => \SHOW_TOP|b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|show_num[0]~0_combout\);

-- Location: LC_X23_Y10_N2
\RX_TOP|data_rx[11]~15\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[11]~15_combout\ = (!\RX_TOP|a\(3) & (\RX_TOP|a\(2) & (!\RX_TOP|a\(1) & \RX_TOP|data_rx[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RX_TOP|a\(3),
	datab => \RX_TOP|a\(2),
	datac => \RX_TOP|a\(1),
	datad => \RX_TOP|data_rx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[11]~15_combout\);

-- Location: LC_X23_Y10_N0
\RX_TOP|data_rx[10]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(10) = DFFEAS((\RX_TOP|data_rx[11]~15_combout\ & ((\RX_TOP|a\(0) & (\mosi~combout\)) # (!\RX_TOP|a\(0) & ((\RX_TOP|data_rx\(10)))))) # (!\RX_TOP|data_rx[11]~15_combout\ & (((\RX_TOP|data_rx\(10))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx\(10),
	datac => \RX_TOP|data_rx[11]~15_combout\,
	datad => \RX_TOP|a\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(10));

-- Location: LC_X25_Y10_N6
\RX_TOP|rx_data[10]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(10),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(10));

-- Location: LC_X26_Y10_N4
\RX_TOP|data_rx[14]~3\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[14]~3_combout\ = (!\RX_TOP|a\(3) & (\RX_TOP|a\(0) & (!\RX_TOP|a\(2) & \RX_TOP|data_rx[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RX_TOP|a\(3),
	datab => \RX_TOP|a\(0),
	datac => \RX_TOP|a\(2),
	datad => \RX_TOP|data_rx[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[14]~3_combout\);

-- Location: LC_X26_Y10_N2
\RX_TOP|data_rx[14]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(14) = DFFEAS((\RX_TOP|a\(1) & (\RX_TOP|data_rx\(14))) # (!\RX_TOP|a\(1) & ((\RX_TOP|data_rx[14]~3_combout\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[14]~3_combout\ & (\RX_TOP|data_rx\(14))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx\(14),
	datab => \RX_TOP|a\(1),
	datac => \RX_TOP|data_rx[14]~3_combout\,
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(14));

-- Location: LC_X26_Y11_N2
\RX_TOP|rx_data[14]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(14) = DFFEAS((((\RX_TOP|data_rx\(14)))), GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \RX_TOP|data_rx\(14),
	aclr => GND,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(14));

-- Location: LC_X24_Y10_N2
\RX_TOP|data_rx[11]~17\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[11]~17_combout\ = (\cs~combout\ & (!\RX_TOP|a\(1) & (!\RX_TOP|a\(4) & \RX_TOP|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cs~combout\,
	datab => \RX_TOP|a\(1),
	datac => \RX_TOP|a\(4),
	datad => \RX_TOP|a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[11]~17_combout\);

-- Location: LC_X24_Y10_N3
\RX_TOP|data_rx[2]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(2) = DFFEAS((\RX_TOP|data_rx[11]~17_combout\ & ((\RX_TOP|data_rx[6]~5_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[6]~5_combout\ & ((\RX_TOP|data_rx\(2)))))) # (!\RX_TOP|data_rx[11]~17_combout\ & (((\RX_TOP|data_rx\(2))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx\(2),
	datac => \RX_TOP|data_rx[11]~17_combout\,
	datad => \RX_TOP|data_rx[6]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(2));

-- Location: LC_X25_Y11_N7
\SHOW_TOP|show_num[0]~1\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num[0]~1_combout\ = (\SHOW_TOP|b\(1) $ (((!\SHOW_TOP|b\(2)) # (!\SHOW_TOP|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SHOW_TOP|b\(1),
	datac => \SHOW_TOP|b\(0),
	datad => \SHOW_TOP|b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|show_num[0]~1_combout\);

-- Location: LC_X26_Y11_N3
\RX_TOP|rx_data[2]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux1~0\ = (\SHOW_TOP|show_num[0]~0_combout\ & (((\SHOW_TOP|show_num[0]~1_combout\)))) # (!\SHOW_TOP|show_num[0]~0_combout\ & ((\SHOW_TOP|show_num[0]~1_combout\ & ((C1_rx_data[2]))) # (!\SHOW_TOP|show_num[0]~1_combout\ & (\RX_TOP|rx_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|rx_data\(14),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|data_rx\(2),
	datad => \SHOW_TOP|show_num[0]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux1~0\,
	regout => \RX_TOP|rx_data\(2));

-- Location: LC_X26_Y11_N4
\SHOW_TOP|show_num[2]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num\(2) = DFFEAS((\SHOW_TOP|show_num[0]~0_combout\ & ((\SHOW_TOP|Mux1~0\ & (\RX_TOP|rx_data\(6))) # (!\SHOW_TOP|Mux1~0\ & ((\RX_TOP|rx_data\(10)))))) # (!\SHOW_TOP|show_num[0]~0_combout\ & (((\SHOW_TOP|Mux1~0\)))), 
-- GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \RX_TOP|rx_data\(6),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|rx_data\(10),
	datad => \SHOW_TOP|Mux1~0\,
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|show_num\(2));

-- Location: LC_X23_Y10_N9
\RX_TOP|data_rx[7]~13\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[7]~13_combout\ = (((!\RX_TOP|a\(0) & \RX_TOP|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \RX_TOP|a\(0),
	datad => \RX_TOP|a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[7]~13_combout\);

-- Location: LC_X24_Y10_N5
\RX_TOP|data_rx[5]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(5) = DFFEAS((\RX_TOP|data_rx[5]~6\ & ((\RX_TOP|data_rx[7]~13_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[7]~13_combout\ & ((\RX_TOP|data_rx\(5)))))) # (!\RX_TOP|data_rx[5]~6\ & (((\RX_TOP|data_rx\(5))))), GLOBAL(\clk~combout\), VCC, 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx[5]~6\,
	datac => \RX_TOP|data_rx\(5),
	datad => \RX_TOP|data_rx[7]~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(5));

-- Location: LC_X24_Y11_N7
\RX_TOP|rx_data[5]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(5) = DFFEAS((((\RX_TOP|data_rx\(5)))), GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \RX_TOP|data_rx\(5),
	aclr => GND,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(5));

-- Location: LC_X24_Y10_N4
\RX_TOP|data_rx[1]~8\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[1]~8_combout\ = (\cs~combout\ & (((!\RX_TOP|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cs~combout\,
	datac => \RX_TOP|a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[1]~8_combout\);

-- Location: LC_X24_Y10_N7
\RX_TOP|data_rx[1]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(1) = DFFEAS((\RX_TOP|data_rx[1]~8_combout\ & ((\RX_TOP|Mux16~0\ & (\mosi~combout\)) # (!\RX_TOP|Mux16~0\ & ((\RX_TOP|data_rx\(1)))))) # (!\RX_TOP|data_rx[1]~8_combout\ & (((\RX_TOP|data_rx\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx[1]~8_combout\,
	datac => \RX_TOP|data_rx\(1),
	datad => \RX_TOP|Mux16~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(1));

-- Location: LC_X24_Y10_N8
\RX_TOP|rx_data[1]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(1),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(1));

-- Location: LC_X24_Y10_N9
\RX_TOP|data_rx[15]~11\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx[15]~11_combout\ = (!\RX_TOP|a\(0) & (\RX_TOP|data_rx[7]~0_combout\ & (!\RX_TOP|a\(3) & !\RX_TOP|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RX_TOP|a\(0),
	datab => \RX_TOP|data_rx[7]~0_combout\,
	datac => \RX_TOP|a\(3),
	datad => \RX_TOP|a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RX_TOP|data_rx[15]~11_combout\);

-- Location: LC_X24_Y10_N6
\RX_TOP|data_rx[13]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(13) = DFFEAS((\RX_TOP|a\(1) & ((\RX_TOP|data_rx[15]~11_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[15]~11_combout\ & ((\RX_TOP|data_rx\(13)))))) # (!\RX_TOP|a\(1) & (((\RX_TOP|data_rx\(13))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|a\(1),
	datac => \RX_TOP|data_rx[15]~11_combout\,
	datad => \RX_TOP|data_rx\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(13));

-- Location: LC_X24_Y11_N9
\RX_TOP|rx_data[13]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(13),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(13));

-- Location: LC_X23_Y10_N5
\RX_TOP|data_rx[9]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(9) = DFFEAS((\RX_TOP|a\(0) & (\RX_TOP|data_rx\(9))) # (!\RX_TOP|a\(0) & ((\RX_TOP|data_rx[9]~1\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[9]~1\ & (\RX_TOP|data_rx\(9))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|a\(0),
	datab => \RX_TOP|data_rx\(9),
	datac => \RX_TOP|data_rx[9]~1\,
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(9));

-- Location: LC_X24_Y11_N6
\RX_TOP|rx_data[9]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux2~0\ = (\SHOW_TOP|show_num[0]~0_combout\ & (((C1_rx_data[9]) # (\SHOW_TOP|show_num[0]~1_combout\)))) # (!\SHOW_TOP|show_num[0]~0_combout\ & (\RX_TOP|rx_data\(13) & ((!\SHOW_TOP|show_num[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|rx_data\(13),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|data_rx\(9),
	datad => \SHOW_TOP|show_num[0]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux2~0\,
	regout => \RX_TOP|rx_data\(9));

-- Location: LC_X24_Y11_N0
\SHOW_TOP|show_num[1]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num\(1) = DFFEAS((\SHOW_TOP|show_num[0]~1_combout\ & ((\SHOW_TOP|Mux2~0\ & (\RX_TOP|rx_data\(5))) # (!\SHOW_TOP|Mux2~0\ & ((\RX_TOP|rx_data\(1)))))) # (!\SHOW_TOP|show_num[0]~1_combout\ & (((\SHOW_TOP|Mux2~0\)))), 
-- GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \RX_TOP|rx_data\(5),
	datab => \SHOW_TOP|show_num[0]~1_combout\,
	datac => \RX_TOP|rx_data\(1),
	datad => \SHOW_TOP|Mux2~0\,
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|show_num\(1));

-- Location: LC_X23_Y10_N4
\RX_TOP|data_rx[7]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(7) = DFFEAS((\RX_TOP|data_rx[7]~13_combout\ & ((\RX_TOP|data_rx[7]~20_combout\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[7]~20_combout\ & (\RX_TOP|data_rx\(7))))) # (!\RX_TOP|data_rx[7]~13_combout\ & (((\RX_TOP|data_rx\(7))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx[7]~13_combout\,
	datab => \RX_TOP|data_rx[7]~20_combout\,
	datac => \RX_TOP|data_rx\(7),
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(7));

-- Location: LC_X24_Y11_N8
\RX_TOP|rx_data[7]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(7),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(7));

-- Location: LC_X24_Y10_N0
\RX_TOP|data_rx[3]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(3) = DFFEAS((\RX_TOP|data_rx[11]~17_combout\ & ((\RX_TOP|data_rx[7]~13_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[7]~13_combout\ & ((\RX_TOP|data_rx\(3)))))) # (!\RX_TOP|data_rx[11]~17_combout\ & (((\RX_TOP|data_rx\(3))))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx\(3),
	datac => \RX_TOP|data_rx[11]~17_combout\,
	datad => \RX_TOP|data_rx[7]~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(3));

-- Location: LC_X25_Y10_N8
\RX_TOP|rx_data[3]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(3),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(3));

-- Location: LC_X24_Y10_N1
\RX_TOP|data_rx[15]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(15) = DFFEAS((\RX_TOP|a\(1) & (((\RX_TOP|data_rx\(15))))) # (!\RX_TOP|a\(1) & ((\RX_TOP|data_rx[15]~11_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[15]~11_combout\ & ((\RX_TOP|data_rx\(15)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|a\(1),
	datac => \RX_TOP|data_rx[15]~11_combout\,
	datad => \RX_TOP|data_rx\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(15));

-- Location: LC_X24_Y11_N2
\RX_TOP|rx_data[15]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(15),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(15));

-- Location: LC_X23_Y10_N6
\RX_TOP|data_rx[11]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(11) = DFFEAS((\RX_TOP|a\(0) & (\RX_TOP|data_rx\(11))) # (!\RX_TOP|a\(0) & ((\RX_TOP|data_rx[11]~15_combout\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[11]~15_combout\ & (\RX_TOP|data_rx\(11))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx\(11),
	datab => \RX_TOP|a\(0),
	datac => \RX_TOP|data_rx[11]~15_combout\,
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(11));

-- Location: LC_X24_Y11_N3
\RX_TOP|rx_data[11]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux0~0\ = (\SHOW_TOP|show_num[0]~0_combout\ & (((C1_rx_data[11]) # (\SHOW_TOP|show_num[0]~1_combout\)))) # (!\SHOW_TOP|show_num[0]~0_combout\ & (\RX_TOP|rx_data\(15) & ((!\SHOW_TOP|show_num[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|rx_data\(15),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|data_rx\(11),
	datad => \SHOW_TOP|show_num[0]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux0~0\,
	regout => \RX_TOP|rx_data\(11));

-- Location: LC_X24_Y11_N4
\SHOW_TOP|show_num[3]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num\(3) = DFFEAS((\SHOW_TOP|show_num[0]~1_combout\ & ((\SHOW_TOP|Mux0~0\ & (\RX_TOP|rx_data\(7))) # (!\SHOW_TOP|Mux0~0\ & ((\RX_TOP|rx_data\(3)))))) # (!\SHOW_TOP|show_num[0]~1_combout\ & (((\SHOW_TOP|Mux0~0\)))), 
-- GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \RX_TOP|rx_data\(7),
	datab => \SHOW_TOP|show_num[0]~1_combout\,
	datac => \RX_TOP|rx_data\(3),
	datad => \SHOW_TOP|Mux0~0\,
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|show_num\(3));

-- Location: LC_X26_Y10_N6
\RX_TOP|data_rx[8]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(8) = DFFEAS((\RX_TOP|a\(0) & ((\RX_TOP|data_rx[9]~1\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[9]~1\ & (\RX_TOP|data_rx\(8))))) # (!\RX_TOP|a\(0) & (\RX_TOP|data_rx\(8))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx\(8),
	datab => \mosi~combout\,
	datac => \RX_TOP|a\(0),
	datad => \RX_TOP|data_rx[9]~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(8));

-- Location: LC_X26_Y11_N8
\RX_TOP|rx_data[8]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(8) = DFFEAS((((\RX_TOP|data_rx\(8)))), GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \RX_TOP|data_rx\(8),
	aclr => GND,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(8));

-- Location: LC_X23_Y10_N8
\RX_TOP|data_rx[4]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(4) = DFFEAS((\RX_TOP|data_rx[5]~6\ & ((\RX_TOP|data_rx[6]~5_combout\ & (\mosi~combout\)) # (!\RX_TOP|data_rx[6]~5_combout\ & ((\RX_TOP|data_rx\(4)))))) # (!\RX_TOP|data_rx[5]~6\ & (((\RX_TOP|data_rx\(4))))), GLOBAL(\clk~combout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mosi~combout\,
	datab => \RX_TOP|data_rx[5]~6\,
	datac => \RX_TOP|data_rx[6]~5_combout\,
	datad => \RX_TOP|data_rx\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(4));

-- Location: LC_X26_Y10_N1
\RX_TOP|rx_data[4]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(4),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(4));

-- Location: LC_X26_Y10_N8
\RX_TOP|data_rx[12]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(12) = DFFEAS((\RX_TOP|a\(1) & ((\RX_TOP|data_rx[14]~3_combout\ & ((\mosi~combout\))) # (!\RX_TOP|data_rx[14]~3_combout\ & (\RX_TOP|data_rx\(12))))) # (!\RX_TOP|a\(1) & (\RX_TOP|data_rx\(12))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|data_rx\(12),
	datab => \RX_TOP|a\(1),
	datac => \RX_TOP|data_rx[14]~3_combout\,
	datad => \mosi~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(12));

-- Location: LC_X26_Y11_N9
\RX_TOP|rx_data[12]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|rx_data\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, \RX_TOP|data_rx\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \RX_TOP|data_rx\(12),
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|rx_data\(12));

-- Location: LC_X25_Y10_N7
\RX_TOP|data_rx[0]\ : cyclone_lcell
-- Equation(s):
-- \RX_TOP|data_rx\(0) = DFFEAS((((\mosi~combout\))), GLOBAL(\clk~combout\), VCC, , \RX_TOP|rx_data[3]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mosi~combout\,
	aclr => GND,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_TOP|data_rx\(0));

-- Location: LC_X26_Y11_N6
\RX_TOP|rx_data[0]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux3~0\ = (\SHOW_TOP|show_num[0]~0_combout\ & (((\SHOW_TOP|show_num[0]~1_combout\)))) # (!\SHOW_TOP|show_num[0]~0_combout\ & ((\SHOW_TOP|show_num[0]~1_combout\ & ((C1_rx_data[0]))) # (!\SHOW_TOP|show_num[0]~1_combout\ & (\RX_TOP|rx_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RX_TOP|rx_data\(12),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|data_rx\(0),
	datad => \SHOW_TOP|show_num[0]~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RX_TOP|rx_data[3]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux3~0\,
	regout => \RX_TOP|rx_data\(0));

-- Location: LC_X26_Y11_N7
\SHOW_TOP|show_num[0]\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|show_num\(0) = DFFEAS((\SHOW_TOP|show_num[0]~0_combout\ & ((\SHOW_TOP|Mux3~0\ & ((\RX_TOP|rx_data\(4)))) # (!\SHOW_TOP|Mux3~0\ & (\RX_TOP|rx_data\(8))))) # (!\SHOW_TOP|show_num[0]~0_combout\ & (((\SHOW_TOP|Mux3~0\)))), 
-- GLOBAL(\SHOW_TOP|clk1~regout\), VCC, , !\SHOW_TOP|b\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SHOW_TOP|clk1~regout\,
	dataa => \RX_TOP|rx_data\(8),
	datab => \SHOW_TOP|show_num[0]~0_combout\,
	datac => \RX_TOP|rx_data\(4),
	datad => \SHOW_TOP|Mux3~0\,
	aclr => GND,
	ena => \SHOW_TOP|ALT_INV_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SHOW_TOP|show_num\(0));

-- Location: LC_X26_Y9_N2
\SHOW_TOP|Mux14~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux14~0_combout\ = (\SHOW_TOP|show_num\(2) & (!\SHOW_TOP|show_num\(1) & (\SHOW_TOP|show_num\(3) $ (!\SHOW_TOP|show_num\(0))))) # (!\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(0) & (\SHOW_TOP|show_num\(1) $ (!\SHOW_TOP|show_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux14~0_combout\);

-- Location: LC_X26_Y9_N7
\SHOW_TOP|Mux13~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux13~0_combout\ = (\SHOW_TOP|show_num\(1) & ((\SHOW_TOP|show_num\(0) & ((\SHOW_TOP|show_num\(3)))) # (!\SHOW_TOP|show_num\(0) & (\SHOW_TOP|show_num\(2))))) # (!\SHOW_TOP|show_num\(1) & (\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(3) $ 
-- (\SHOW_TOP|show_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux13~0_combout\);

-- Location: LC_X26_Y9_N6
\SHOW_TOP|Mux12~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux12~0_combout\ = (\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(3) & ((\SHOW_TOP|show_num\(1)) # (!\SHOW_TOP|show_num\(0))))) # (!\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(1) & (!\SHOW_TOP|show_num\(3) & !\SHOW_TOP|show_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux12~0_combout\);

-- Location: LC_X26_Y9_N4
\SHOW_TOP|Mux11~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux11~0_combout\ = (\SHOW_TOP|show_num\(1) & ((\SHOW_TOP|show_num\(2) & ((\SHOW_TOP|show_num\(0)))) # (!\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(3) & !\SHOW_TOP|show_num\(0))))) # (!\SHOW_TOP|show_num\(1) & (!\SHOW_TOP|show_num\(3) & 
-- (\SHOW_TOP|show_num\(2) $ (\SHOW_TOP|show_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8942",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux11~0_combout\);

-- Location: LC_X26_Y9_N9
\SHOW_TOP|Mux10~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux10~0_combout\ = (\SHOW_TOP|show_num\(1) & (((!\SHOW_TOP|show_num\(3) & \SHOW_TOP|show_num\(0))))) # (!\SHOW_TOP|show_num\(1) & ((\SHOW_TOP|show_num\(2) & (!\SHOW_TOP|show_num\(3))) # (!\SHOW_TOP|show_num\(2) & ((\SHOW_TOP|show_num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux10~0_combout\);

-- Location: LC_X26_Y9_N8
\SHOW_TOP|Mux9~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux9~0_combout\ = (\SHOW_TOP|show_num\(2) & (\SHOW_TOP|show_num\(0) & (\SHOW_TOP|show_num\(1) $ (\SHOW_TOP|show_num\(3))))) # (!\SHOW_TOP|show_num\(2) & (!\SHOW_TOP|show_num\(3) & ((\SHOW_TOP|show_num\(1)) # (\SHOW_TOP|show_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2d04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux9~0_combout\);

-- Location: LC_X26_Y9_N5
\SHOW_TOP|Mux8~0\ : cyclone_lcell
-- Equation(s):
-- \SHOW_TOP|Mux8~0_combout\ = (\SHOW_TOP|show_num\(0) & ((\SHOW_TOP|show_num\(3)) # (\SHOW_TOP|show_num\(2) $ (\SHOW_TOP|show_num\(1))))) # (!\SHOW_TOP|show_num\(0) & ((\SHOW_TOP|show_num\(1)) # (\SHOW_TOP|show_num\(2) $ (\SHOW_TOP|show_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6de",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHOW_TOP|show_num\(2),
	datab => \SHOW_TOP|show_num\(1),
	datac => \SHOW_TOP|show_num\(3),
	datad => \SHOW_TOP|show_num\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SHOW_TOP|Mux8~0_combout\);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\miso~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TX_TOP|miso~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_miso);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\com[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|com\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_com(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\com[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|com\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_com(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\com[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|com\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_com(2));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\com[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|com\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_com(3));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(2));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(4));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|ALT_INV_Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(5));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SHOW_TOP|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(6));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg(7));
END structure;


