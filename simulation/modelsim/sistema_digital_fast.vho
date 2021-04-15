-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/15/2021 11:45:02"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bo_aula1_7 IS
    PORT (
	clk : IN std_logic;
	set : IN std_logic;
	dec : IN std_logic;
	cac : IN std_logic;
	rac : IN std_logic;
	zero : OUT std_logic;
	overflow : OUT std_logic;
	valor : IN std_logic_vector(7 DOWNTO 0);
	soma : OUT std_logic_vector(7 DOWNTO 0)
	);
END bo_aula1_7;

-- Design Ports Information
-- zero	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- overflow	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[6]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dec	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rac	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cac	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- valor[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bo_aula1_7 IS
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
SIGNAL ww_set : std_logic;
SIGNAL ww_dec : std_logic;
SIGNAL ww_cac : std_logic;
SIGNAL ww_rac : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_valor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_soma : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_out[5]~19_combout\ : std_logic;
SIGNAL \cont_out[0]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \set~combout\ : std_logic;
SIGNAL \dec~combout\ : std_logic;
SIGNAL \cont_out[0]~10_combout\ : std_logic;
SIGNAL \cont_out[0]~9\ : std_logic;
SIGNAL \cont_out[1]~11_combout\ : std_logic;
SIGNAL \cont_out[1]~12\ : std_logic;
SIGNAL \cont_out[2]~13_combout\ : std_logic;
SIGNAL \cont_out[2]~14\ : std_logic;
SIGNAL \cont_out[3]~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cont_out[3]~16\ : std_logic;
SIGNAL \cont_out[4]~17_combout\ : std_logic;
SIGNAL \cont_out[4]~18\ : std_logic;
SIGNAL \cont_out[5]~20\ : std_logic;
SIGNAL \cont_out[6]~22\ : std_logic;
SIGNAL \cont_out[7]~23_combout\ : std_logic;
SIGNAL \cont_out[6]~21_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \acum_out[0]~8_combout\ : std_logic;
SIGNAL \rac~combout\ : std_logic;
SIGNAL \cac~combout\ : std_logic;
SIGNAL \acum_out[0]~10_combout\ : std_logic;
SIGNAL \acum_out[0]~9\ : std_logic;
SIGNAL \acum_out[1]~11_combout\ : std_logic;
SIGNAL \acum_out[1]~12\ : std_logic;
SIGNAL \acum_out[2]~13_combout\ : std_logic;
SIGNAL \acum_out[2]~14\ : std_logic;
SIGNAL \acum_out[3]~15_combout\ : std_logic;
SIGNAL \acum_out[3]~16\ : std_logic;
SIGNAL \acum_out[4]~17_combout\ : std_logic;
SIGNAL \acum_out[4]~18\ : std_logic;
SIGNAL \acum_out[5]~19_combout\ : std_logic;
SIGNAL \acum_out[5]~20\ : std_logic;
SIGNAL \acum_out[6]~21_combout\ : std_logic;
SIGNAL \acum_out[6]~22\ : std_logic;
SIGNAL \acum_out[7]~23_combout\ : std_logic;
SIGNAL cont_out : std_logic_vector(7 DOWNTO 0);
SIGNAL acum_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \valor~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_set <= set;
ww_dec <= dec;
ww_cac <= cac;
ww_rac <= rac;
zero <= ww_zero;
overflow <= ww_overflow;
ww_valor <= valor;
soma <= ww_soma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X30_Y35_N11
\cont_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[5]~19_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(5));

-- Location: LCCOMB_X30_Y35_N10
\cont_out[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[5]~19_combout\ = (cont_out(5) & (\cont_out[4]~18\ & VCC)) # (!cont_out(5) & (!\cont_out[4]~18\))
-- \cont_out[5]~20\ = CARRY((!cont_out(5) & !\cont_out[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_out(5),
	datad => VCC,
	cin => \cont_out[4]~18\,
	combout => \cont_out[5]~19_combout\,
	cout => \cont_out[5]~20\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[0]~I\ : cycloneii_io
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
	padio => ww_valor(0),
	combout => \valor~combout\(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[1]~I\ : cycloneii_io
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
	padio => ww_valor(1),
	combout => \valor~combout\(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[2]~I\ : cycloneii_io
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
	padio => ww_valor(2),
	combout => \valor~combout\(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[4]~I\ : cycloneii_io
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
	padio => ww_valor(4),
	combout => \valor~combout\(4));

-- Location: LCCOMB_X30_Y35_N0
\cont_out[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[0]~8_combout\ = cont_out(0) $ (VCC)
-- \cont_out[0]~9\ = CARRY(cont_out(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_out(0),
	datad => VCC,
	combout => \cont_out[0]~8_combout\,
	cout => \cont_out[0]~9\);

-- Location: LCCOMB_X30_Y35_N20
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\set~I\ : cycloneii_io
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
	padio => ww_set,
	combout => \set~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec~I\ : cycloneii_io
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
	padio => ww_dec,
	combout => \dec~combout\);

-- Location: LCCOMB_X30_Y35_N22
\cont_out[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[0]~10_combout\ = (\set~combout\) # (\dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~combout\,
	datad => \dec~combout\,
	combout => \cont_out[0]~10_combout\);

-- Location: LCFF_X30_Y35_N1
\cont_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[0]~8_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(0));

-- Location: LCCOMB_X30_Y35_N2
\cont_out[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[1]~11_combout\ = (cont_out(1) & (\cont_out[0]~9\ & VCC)) # (!cont_out(1) & (!\cont_out[0]~9\))
-- \cont_out[1]~12\ = CARRY((!cont_out(1) & !\cont_out[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_out(1),
	datad => VCC,
	cin => \cont_out[0]~9\,
	combout => \cont_out[1]~11_combout\,
	cout => \cont_out[1]~12\);

-- Location: LCFF_X30_Y35_N3
\cont_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[1]~11_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(1));

-- Location: LCCOMB_X30_Y35_N4
\cont_out[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[2]~13_combout\ = (cont_out(2) & ((GND) # (!\cont_out[1]~12\))) # (!cont_out(2) & (\cont_out[1]~12\ $ (GND)))
-- \cont_out[2]~14\ = CARRY((cont_out(2)) # (!\cont_out[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_out(2),
	datad => VCC,
	cin => \cont_out[1]~12\,
	combout => \cont_out[2]~13_combout\,
	cout => \cont_out[2]~14\);

-- Location: LCFF_X30_Y35_N5
\cont_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[2]~13_combout\,
	sdata => VCC,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(2));

-- Location: LCCOMB_X30_Y35_N6
\cont_out[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[3]~15_combout\ = (cont_out(3) & (\cont_out[2]~14\ & VCC)) # (!cont_out(3) & (!\cont_out[2]~14\))
-- \cont_out[3]~16\ = CARRY((!cont_out(3) & !\cont_out[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_out(3),
	datad => VCC,
	cin => \cont_out[2]~14\,
	combout => \cont_out[3]~15_combout\,
	cout => \cont_out[3]~16\);

-- Location: LCFF_X30_Y35_N7
\cont_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[3]~15_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(3));

-- Location: LCCOMB_X30_Y35_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cont_out(1) & (!cont_out(0) & (!cont_out(2) & !cont_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_out(1),
	datab => cont_out(0),
	datac => cont_out(2),
	datad => cont_out(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y35_N8
\cont_out[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[4]~17_combout\ = (cont_out(4) & ((GND) # (!\cont_out[3]~16\))) # (!cont_out(4) & (\cont_out[3]~16\ $ (GND)))
-- \cont_out[4]~18\ = CARRY((cont_out(4)) # (!\cont_out[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_out(4),
	datad => VCC,
	cin => \cont_out[3]~16\,
	combout => \cont_out[4]~17_combout\,
	cout => \cont_out[4]~18\);

-- Location: LCFF_X30_Y35_N9
\cont_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[4]~17_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(4));

-- Location: LCCOMB_X30_Y35_N12
\cont_out[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[6]~21_combout\ = (cont_out(6) & ((GND) # (!\cont_out[5]~20\))) # (!cont_out(6) & (\cont_out[5]~20\ $ (GND)))
-- \cont_out[6]~22\ = CARRY((cont_out(6)) # (!\cont_out[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont_out(6),
	datad => VCC,
	cin => \cont_out[5]~20\,
	combout => \cont_out[6]~21_combout\,
	cout => \cont_out[6]~22\);

-- Location: LCCOMB_X30_Y35_N14
\cont_out[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_out[7]~23_combout\ = cont_out(7) $ (!\cont_out[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont_out(7),
	cin => \cont_out[6]~22\,
	combout => \cont_out[7]~23_combout\);

-- Location: LCFF_X30_Y35_N15
\cont_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[7]~23_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(7));

-- Location: LCFF_X30_Y35_N13
\cont_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cont_out[6]~21_combout\,
	sdata => \~GND~combout\,
	sload => \set~combout\,
	ena => \cont_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_out(6));

-- Location: LCCOMB_X30_Y35_N26
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cont_out(5) & (!cont_out(4) & (!cont_out(7) & !cont_out(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_out(5),
	datab => cont_out(4),
	datac => cont_out(7),
	datad => cont_out(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y35_N0
\acum_out[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[0]~8_combout\ = (\valor~combout\(0) & (acum_out(0) $ (VCC))) # (!\valor~combout\(0) & (acum_out(0) & VCC))
-- \acum_out[0]~9\ = CARRY((\valor~combout\(0) & acum_out(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor~combout\(0),
	datab => acum_out(0),
	datad => VCC,
	combout => \acum_out[0]~8_combout\,
	cout => \acum_out[0]~9\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rac~I\ : cycloneii_io
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
	padio => ww_rac,
	combout => \rac~combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cac~I\ : cycloneii_io
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
	padio => ww_cac,
	combout => \cac~combout\);

-- Location: LCCOMB_X37_Y35_N16
\acum_out[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[0]~10_combout\ = (\cac~combout\) # (\rac~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cac~combout\,
	datad => \rac~combout\,
	combout => \acum_out[0]~10_combout\);

-- Location: LCFF_X37_Y35_N1
\acum_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[0]~8_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(0));

-- Location: LCCOMB_X37_Y35_N2
\acum_out[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[1]~11_combout\ = (\valor~combout\(1) & ((acum_out(1) & (\acum_out[0]~9\ & VCC)) # (!acum_out(1) & (!\acum_out[0]~9\)))) # (!\valor~combout\(1) & ((acum_out(1) & (!\acum_out[0]~9\)) # (!acum_out(1) & ((\acum_out[0]~9\) # (GND)))))
-- \acum_out[1]~12\ = CARRY((\valor~combout\(1) & (!acum_out(1) & !\acum_out[0]~9\)) # (!\valor~combout\(1) & ((!\acum_out[0]~9\) # (!acum_out(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor~combout\(1),
	datab => acum_out(1),
	datad => VCC,
	cin => \acum_out[0]~9\,
	combout => \acum_out[1]~11_combout\,
	cout => \acum_out[1]~12\);

-- Location: LCFF_X37_Y35_N3
\acum_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[1]~11_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(1));

-- Location: LCCOMB_X37_Y35_N4
\acum_out[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[2]~13_combout\ = ((\valor~combout\(2) $ (acum_out(2) $ (!\acum_out[1]~12\)))) # (GND)
-- \acum_out[2]~14\ = CARRY((\valor~combout\(2) & ((acum_out(2)) # (!\acum_out[1]~12\))) # (!\valor~combout\(2) & (acum_out(2) & !\acum_out[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor~combout\(2),
	datab => acum_out(2),
	datad => VCC,
	cin => \acum_out[1]~12\,
	combout => \acum_out[2]~13_combout\,
	cout => \acum_out[2]~14\);

-- Location: LCFF_X37_Y35_N5
\acum_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[2]~13_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(2));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[3]~I\ : cycloneii_io
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
	padio => ww_valor(3),
	combout => \valor~combout\(3));

-- Location: LCCOMB_X37_Y35_N6
\acum_out[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[3]~15_combout\ = (acum_out(3) & ((\valor~combout\(3) & (\acum_out[2]~14\ & VCC)) # (!\valor~combout\(3) & (!\acum_out[2]~14\)))) # (!acum_out(3) & ((\valor~combout\(3) & (!\acum_out[2]~14\)) # (!\valor~combout\(3) & ((\acum_out[2]~14\) # 
-- (GND)))))
-- \acum_out[3]~16\ = CARRY((acum_out(3) & (!\valor~combout\(3) & !\acum_out[2]~14\)) # (!acum_out(3) & ((!\acum_out[2]~14\) # (!\valor~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => acum_out(3),
	datab => \valor~combout\(3),
	datad => VCC,
	cin => \acum_out[2]~14\,
	combout => \acum_out[3]~15_combout\,
	cout => \acum_out[3]~16\);

-- Location: LCFF_X37_Y35_N7
\acum_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[3]~15_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(3));

-- Location: LCCOMB_X37_Y35_N8
\acum_out[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[4]~17_combout\ = ((\valor~combout\(4) $ (acum_out(4) $ (!\acum_out[3]~16\)))) # (GND)
-- \acum_out[4]~18\ = CARRY((\valor~combout\(4) & ((acum_out(4)) # (!\acum_out[3]~16\))) # (!\valor~combout\(4) & (acum_out(4) & !\acum_out[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor~combout\(4),
	datab => acum_out(4),
	datad => VCC,
	cin => \acum_out[3]~16\,
	combout => \acum_out[4]~17_combout\,
	cout => \acum_out[4]~18\);

-- Location: LCFF_X37_Y35_N9
\acum_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[4]~17_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(4));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[5]~I\ : cycloneii_io
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
	padio => ww_valor(5),
	combout => \valor~combout\(5));

-- Location: LCCOMB_X37_Y35_N10
\acum_out[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[5]~19_combout\ = (acum_out(5) & ((\valor~combout\(5) & (\acum_out[4]~18\ & VCC)) # (!\valor~combout\(5) & (!\acum_out[4]~18\)))) # (!acum_out(5) & ((\valor~combout\(5) & (!\acum_out[4]~18\)) # (!\valor~combout\(5) & ((\acum_out[4]~18\) # 
-- (GND)))))
-- \acum_out[5]~20\ = CARRY((acum_out(5) & (!\valor~combout\(5) & !\acum_out[4]~18\)) # (!acum_out(5) & ((!\acum_out[4]~18\) # (!\valor~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => acum_out(5),
	datab => \valor~combout\(5),
	datad => VCC,
	cin => \acum_out[4]~18\,
	combout => \acum_out[5]~19_combout\,
	cout => \acum_out[5]~20\);

-- Location: LCFF_X37_Y35_N11
\acum_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[5]~19_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(5));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[6]~I\ : cycloneii_io
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
	padio => ww_valor(6),
	combout => \valor~combout\(6));

-- Location: LCCOMB_X37_Y35_N12
\acum_out[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[6]~21_combout\ = ((acum_out(6) $ (\valor~combout\(6) $ (!\acum_out[5]~20\)))) # (GND)
-- \acum_out[6]~22\ = CARRY((acum_out(6) & ((\valor~combout\(6)) # (!\acum_out[5]~20\))) # (!acum_out(6) & (\valor~combout\(6) & !\acum_out[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => acum_out(6),
	datab => \valor~combout\(6),
	datad => VCC,
	cin => \acum_out[5]~20\,
	combout => \acum_out[6]~21_combout\,
	cout => \acum_out[6]~22\);

-- Location: LCFF_X37_Y35_N13
\acum_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[6]~21_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(6));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valor[7]~I\ : cycloneii_io
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
	padio => ww_valor(7),
	combout => \valor~combout\(7));

-- Location: LCCOMB_X37_Y35_N14
\acum_out[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \acum_out[7]~23_combout\ = acum_out(7) $ (\acum_out[6]~22\ $ (\valor~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => acum_out(7),
	datad => \valor~combout\(7),
	cin => \acum_out[6]~22\,
	combout => \acum_out[7]~23_combout\);

-- Location: LCFF_X37_Y35_N15
\acum_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \acum_out[7]~23_combout\,
	sclr => \rac~combout\,
	ena => \acum_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => acum_out(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
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
	datain => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\overflow~I\ : cycloneii_io
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
	padio => ww_overflow);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[0]~I\ : cycloneii_io
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
	datain => acum_out(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[1]~I\ : cycloneii_io
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
	datain => acum_out(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[2]~I\ : cycloneii_io
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
	datain => acum_out(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[3]~I\ : cycloneii_io
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
	datain => acum_out(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[4]~I\ : cycloneii_io
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
	datain => acum_out(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[5]~I\ : cycloneii_io
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
	datain => acum_out(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(5));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[6]~I\ : cycloneii_io
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
	datain => acum_out(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(6));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma[7]~I\ : cycloneii_io
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
	datain => acum_out(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma(7));
END structure;


