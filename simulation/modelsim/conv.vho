-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "09/11/2022 19:35:42"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	conv IS
    PORT (
	Aclk : IN std_logic;
	rst : IN std_logic;
	Xin : IN std_logic_vector(7 DOWNTO 0);
	Kin : IN std_logic_vector(7 DOWNTO 0);
	Rout : OUT std_logic_vector(7 DOWNTO 0);
	result_done : OUT std_logic
	);
END conv;

-- Design Ports Information
-- Rout[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_done	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aclk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kin[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Aclk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Xin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Kin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result_done : std_logic;
SIGNAL \Mult3~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult3~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult3~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult7~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult7~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult11~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult11~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult11~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult11~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult11~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult15~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult15~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult15~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult15~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult15~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult2~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult6~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult6~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult10~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult10~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult10~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult10~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult10~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult14~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult14~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult14~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult14~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult14~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add4~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add4~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add4~8_BX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add4~8_BY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add4~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add7~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add7~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add7~8_BX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add7~8_BY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add7~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add10~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add10~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add10~8_BX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add10~8_BY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add10~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add13~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add13~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add13~8_BX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add13~8_BY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add13~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~8\ : std_logic;
SIGNAL \Mult3~9\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult3~12\ : std_logic;
SIGNAL \Mult3~13\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult3~16\ : std_logic;
SIGNAL \Mult3~17\ : std_logic;
SIGNAL \Mult3~18\ : std_logic;
SIGNAL \Mult3~19\ : std_logic;
SIGNAL \Mult3~20\ : std_logic;
SIGNAL \Mult3~21\ : std_logic;
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult3~23\ : std_logic;
SIGNAL \Mult3~24\ : std_logic;
SIGNAL \Mult3~25\ : std_logic;
SIGNAL \Mult3~26\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult3~28\ : std_logic;
SIGNAL \Mult3~29\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult3~32\ : std_logic;
SIGNAL \Mult3~33\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~36\ : std_logic;
SIGNAL \Mult3~37\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult3~40\ : std_logic;
SIGNAL \Mult3~41\ : std_logic;
SIGNAL \Mult3~42\ : std_logic;
SIGNAL \Mult3~43\ : std_logic;
SIGNAL \Mult3~44\ : std_logic;
SIGNAL \Mult3~45\ : std_logic;
SIGNAL \Mult3~46\ : std_logic;
SIGNAL \Mult3~47\ : std_logic;
SIGNAL \Mult3~48\ : std_logic;
SIGNAL \Mult3~49\ : std_logic;
SIGNAL \Mult3~50\ : std_logic;
SIGNAL \Mult3~51\ : std_logic;
SIGNAL \Mult3~52\ : std_logic;
SIGNAL \Mult3~53\ : std_logic;
SIGNAL \Mult3~54\ : std_logic;
SIGNAL \Mult3~55\ : std_logic;
SIGNAL \Mult3~56\ : std_logic;
SIGNAL \Mult3~57\ : std_logic;
SIGNAL \Mult3~58\ : std_logic;
SIGNAL \Mult3~59\ : std_logic;
SIGNAL \Mult3~60\ : std_logic;
SIGNAL \Mult3~61\ : std_logic;
SIGNAL \Mult3~62\ : std_logic;
SIGNAL \Mult3~63\ : std_logic;
SIGNAL \Mult7~8\ : std_logic;
SIGNAL \Mult7~9\ : std_logic;
SIGNAL \Mult7~10\ : std_logic;
SIGNAL \Mult7~11\ : std_logic;
SIGNAL \Mult7~12\ : std_logic;
SIGNAL \Mult7~13\ : std_logic;
SIGNAL \Mult7~14\ : std_logic;
SIGNAL \Mult7~15\ : std_logic;
SIGNAL \Mult7~16\ : std_logic;
SIGNAL \Mult7~17\ : std_logic;
SIGNAL \Mult7~18\ : std_logic;
SIGNAL \Mult7~19\ : std_logic;
SIGNAL \Mult7~20\ : std_logic;
SIGNAL \Mult7~21\ : std_logic;
SIGNAL \Mult7~22\ : std_logic;
SIGNAL \Mult7~23\ : std_logic;
SIGNAL \Mult7~24\ : std_logic;
SIGNAL \Mult7~25\ : std_logic;
SIGNAL \Mult7~26\ : std_logic;
SIGNAL \Mult7~27\ : std_logic;
SIGNAL \Mult7~28\ : std_logic;
SIGNAL \Mult7~29\ : std_logic;
SIGNAL \Mult7~30\ : std_logic;
SIGNAL \Mult7~31\ : std_logic;
SIGNAL \Mult7~32\ : std_logic;
SIGNAL \Mult7~33\ : std_logic;
SIGNAL \Mult7~34\ : std_logic;
SIGNAL \Mult7~35\ : std_logic;
SIGNAL \Mult7~36\ : std_logic;
SIGNAL \Mult7~37\ : std_logic;
SIGNAL \Mult7~38\ : std_logic;
SIGNAL \Mult7~39\ : std_logic;
SIGNAL \Mult7~40\ : std_logic;
SIGNAL \Mult7~41\ : std_logic;
SIGNAL \Mult7~42\ : std_logic;
SIGNAL \Mult7~43\ : std_logic;
SIGNAL \Mult7~44\ : std_logic;
SIGNAL \Mult7~45\ : std_logic;
SIGNAL \Mult7~46\ : std_logic;
SIGNAL \Mult7~47\ : std_logic;
SIGNAL \Mult7~48\ : std_logic;
SIGNAL \Mult7~49\ : std_logic;
SIGNAL \Mult7~50\ : std_logic;
SIGNAL \Mult7~51\ : std_logic;
SIGNAL \Mult7~52\ : std_logic;
SIGNAL \Mult7~53\ : std_logic;
SIGNAL \Mult7~54\ : std_logic;
SIGNAL \Mult7~55\ : std_logic;
SIGNAL \Mult7~56\ : std_logic;
SIGNAL \Mult7~57\ : std_logic;
SIGNAL \Mult7~58\ : std_logic;
SIGNAL \Mult7~59\ : std_logic;
SIGNAL \Mult7~60\ : std_logic;
SIGNAL \Mult7~61\ : std_logic;
SIGNAL \Mult7~62\ : std_logic;
SIGNAL \Mult7~63\ : std_logic;
SIGNAL \Mult11~8\ : std_logic;
SIGNAL \Mult11~9\ : std_logic;
SIGNAL \Mult11~10\ : std_logic;
SIGNAL \Mult11~11\ : std_logic;
SIGNAL \Mult11~12\ : std_logic;
SIGNAL \Mult11~13\ : std_logic;
SIGNAL \Mult11~14\ : std_logic;
SIGNAL \Mult11~15\ : std_logic;
SIGNAL \Mult11~16\ : std_logic;
SIGNAL \Mult11~17\ : std_logic;
SIGNAL \Mult11~18\ : std_logic;
SIGNAL \Mult11~19\ : std_logic;
SIGNAL \Mult11~20\ : std_logic;
SIGNAL \Mult11~21\ : std_logic;
SIGNAL \Mult11~22\ : std_logic;
SIGNAL \Mult11~23\ : std_logic;
SIGNAL \Mult11~24\ : std_logic;
SIGNAL \Mult11~25\ : std_logic;
SIGNAL \Mult11~26\ : std_logic;
SIGNAL \Mult11~27\ : std_logic;
SIGNAL \Mult11~28\ : std_logic;
SIGNAL \Mult11~29\ : std_logic;
SIGNAL \Mult11~30\ : std_logic;
SIGNAL \Mult11~31\ : std_logic;
SIGNAL \Mult11~32\ : std_logic;
SIGNAL \Mult11~33\ : std_logic;
SIGNAL \Mult11~34\ : std_logic;
SIGNAL \Mult11~35\ : std_logic;
SIGNAL \Mult11~36\ : std_logic;
SIGNAL \Mult11~37\ : std_logic;
SIGNAL \Mult11~38\ : std_logic;
SIGNAL \Mult11~39\ : std_logic;
SIGNAL \Mult11~40\ : std_logic;
SIGNAL \Mult11~41\ : std_logic;
SIGNAL \Mult11~42\ : std_logic;
SIGNAL \Mult11~43\ : std_logic;
SIGNAL \Mult11~44\ : std_logic;
SIGNAL \Mult11~45\ : std_logic;
SIGNAL \Mult11~46\ : std_logic;
SIGNAL \Mult11~47\ : std_logic;
SIGNAL \Mult11~48\ : std_logic;
SIGNAL \Mult11~49\ : std_logic;
SIGNAL \Mult11~50\ : std_logic;
SIGNAL \Mult11~51\ : std_logic;
SIGNAL \Mult11~52\ : std_logic;
SIGNAL \Mult11~53\ : std_logic;
SIGNAL \Mult11~54\ : std_logic;
SIGNAL \Mult11~55\ : std_logic;
SIGNAL \Mult11~56\ : std_logic;
SIGNAL \Mult11~57\ : std_logic;
SIGNAL \Mult11~58\ : std_logic;
SIGNAL \Mult11~59\ : std_logic;
SIGNAL \Mult11~60\ : std_logic;
SIGNAL \Mult11~61\ : std_logic;
SIGNAL \Mult11~62\ : std_logic;
SIGNAL \Mult11~63\ : std_logic;
SIGNAL \Mult15~8\ : std_logic;
SIGNAL \Mult15~9\ : std_logic;
SIGNAL \Mult15~10\ : std_logic;
SIGNAL \Mult15~11\ : std_logic;
SIGNAL \Mult15~12\ : std_logic;
SIGNAL \Mult15~13\ : std_logic;
SIGNAL \Mult15~14\ : std_logic;
SIGNAL \Mult15~15\ : std_logic;
SIGNAL \Mult15~16\ : std_logic;
SIGNAL \Mult15~17\ : std_logic;
SIGNAL \Mult15~18\ : std_logic;
SIGNAL \Mult15~19\ : std_logic;
SIGNAL \Mult15~20\ : std_logic;
SIGNAL \Mult15~21\ : std_logic;
SIGNAL \Mult15~22\ : std_logic;
SIGNAL \Mult15~23\ : std_logic;
SIGNAL \Mult15~24\ : std_logic;
SIGNAL \Mult15~25\ : std_logic;
SIGNAL \Mult15~26\ : std_logic;
SIGNAL \Mult15~27\ : std_logic;
SIGNAL \Mult15~28\ : std_logic;
SIGNAL \Mult15~29\ : std_logic;
SIGNAL \Mult15~30\ : std_logic;
SIGNAL \Mult15~31\ : std_logic;
SIGNAL \Mult15~32\ : std_logic;
SIGNAL \Mult15~33\ : std_logic;
SIGNAL \Mult15~34\ : std_logic;
SIGNAL \Mult15~35\ : std_logic;
SIGNAL \Mult15~36\ : std_logic;
SIGNAL \Mult15~37\ : std_logic;
SIGNAL \Mult15~38\ : std_logic;
SIGNAL \Mult15~39\ : std_logic;
SIGNAL \Mult15~40\ : std_logic;
SIGNAL \Mult15~41\ : std_logic;
SIGNAL \Mult15~42\ : std_logic;
SIGNAL \Mult15~43\ : std_logic;
SIGNAL \Mult15~44\ : std_logic;
SIGNAL \Mult15~45\ : std_logic;
SIGNAL \Mult15~46\ : std_logic;
SIGNAL \Mult15~47\ : std_logic;
SIGNAL \Mult15~48\ : std_logic;
SIGNAL \Mult15~49\ : std_logic;
SIGNAL \Mult15~50\ : std_logic;
SIGNAL \Mult15~51\ : std_logic;
SIGNAL \Mult15~52\ : std_logic;
SIGNAL \Mult15~53\ : std_logic;
SIGNAL \Mult15~54\ : std_logic;
SIGNAL \Mult15~55\ : std_logic;
SIGNAL \Mult15~56\ : std_logic;
SIGNAL \Mult15~57\ : std_logic;
SIGNAL \Mult15~58\ : std_logic;
SIGNAL \Mult15~59\ : std_logic;
SIGNAL \Mult15~60\ : std_logic;
SIGNAL \Mult15~61\ : std_logic;
SIGNAL \Mult15~62\ : std_logic;
SIGNAL \Mult15~63\ : std_logic;
SIGNAL \Mult2~8\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
SIGNAL \Mult2~24\ : std_logic;
SIGNAL \Mult2~25\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~27\ : std_logic;
SIGNAL \Mult2~28\ : std_logic;
SIGNAL \Mult2~29\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~31\ : std_logic;
SIGNAL \Mult2~32\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Mult2~40\ : std_logic;
SIGNAL \Mult2~41\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~43\ : std_logic;
SIGNAL \Mult2~44\ : std_logic;
SIGNAL \Mult2~45\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~47\ : std_logic;
SIGNAL \Mult2~48\ : std_logic;
SIGNAL \Mult2~49\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~51\ : std_logic;
SIGNAL \Mult2~52\ : std_logic;
SIGNAL \Mult2~53\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~55\ : std_logic;
SIGNAL \Mult2~56\ : std_logic;
SIGNAL \Mult2~57\ : std_logic;
SIGNAL \Mult2~58\ : std_logic;
SIGNAL \Mult2~59\ : std_logic;
SIGNAL \Mult2~60\ : std_logic;
SIGNAL \Mult2~61\ : std_logic;
SIGNAL \Mult2~62\ : std_logic;
SIGNAL \Mult2~63\ : std_logic;
SIGNAL \Mult6~8\ : std_logic;
SIGNAL \Mult6~9\ : std_logic;
SIGNAL \Mult6~10\ : std_logic;
SIGNAL \Mult6~11\ : std_logic;
SIGNAL \Mult6~12\ : std_logic;
SIGNAL \Mult6~13\ : std_logic;
SIGNAL \Mult6~14\ : std_logic;
SIGNAL \Mult6~15\ : std_logic;
SIGNAL \Mult6~16\ : std_logic;
SIGNAL \Mult6~17\ : std_logic;
SIGNAL \Mult6~18\ : std_logic;
SIGNAL \Mult6~19\ : std_logic;
SIGNAL \Mult6~20\ : std_logic;
SIGNAL \Mult6~21\ : std_logic;
SIGNAL \Mult6~22\ : std_logic;
SIGNAL \Mult6~23\ : std_logic;
SIGNAL \Mult6~24\ : std_logic;
SIGNAL \Mult6~25\ : std_logic;
SIGNAL \Mult6~26\ : std_logic;
SIGNAL \Mult6~27\ : std_logic;
SIGNAL \Mult6~28\ : std_logic;
SIGNAL \Mult6~29\ : std_logic;
SIGNAL \Mult6~30\ : std_logic;
SIGNAL \Mult6~31\ : std_logic;
SIGNAL \Mult6~32\ : std_logic;
SIGNAL \Mult6~33\ : std_logic;
SIGNAL \Mult6~34\ : std_logic;
SIGNAL \Mult6~35\ : std_logic;
SIGNAL \Mult6~36\ : std_logic;
SIGNAL \Mult6~37\ : std_logic;
SIGNAL \Mult6~38\ : std_logic;
SIGNAL \Mult6~39\ : std_logic;
SIGNAL \Mult6~40\ : std_logic;
SIGNAL \Mult6~41\ : std_logic;
SIGNAL \Mult6~42\ : std_logic;
SIGNAL \Mult6~43\ : std_logic;
SIGNAL \Mult6~44\ : std_logic;
SIGNAL \Mult6~45\ : std_logic;
SIGNAL \Mult6~46\ : std_logic;
SIGNAL \Mult6~47\ : std_logic;
SIGNAL \Mult6~48\ : std_logic;
SIGNAL \Mult6~49\ : std_logic;
SIGNAL \Mult6~50\ : std_logic;
SIGNAL \Mult6~51\ : std_logic;
SIGNAL \Mult6~52\ : std_logic;
SIGNAL \Mult6~53\ : std_logic;
SIGNAL \Mult6~54\ : std_logic;
SIGNAL \Mult6~55\ : std_logic;
SIGNAL \Mult6~56\ : std_logic;
SIGNAL \Mult6~57\ : std_logic;
SIGNAL \Mult6~58\ : std_logic;
SIGNAL \Mult6~59\ : std_logic;
SIGNAL \Mult6~60\ : std_logic;
SIGNAL \Mult6~61\ : std_logic;
SIGNAL \Mult6~62\ : std_logic;
SIGNAL \Mult6~63\ : std_logic;
SIGNAL \Mult10~8\ : std_logic;
SIGNAL \Mult10~9\ : std_logic;
SIGNAL \Mult10~10\ : std_logic;
SIGNAL \Mult10~11\ : std_logic;
SIGNAL \Mult10~12\ : std_logic;
SIGNAL \Mult10~13\ : std_logic;
SIGNAL \Mult10~14\ : std_logic;
SIGNAL \Mult10~15\ : std_logic;
SIGNAL \Mult10~16\ : std_logic;
SIGNAL \Mult10~17\ : std_logic;
SIGNAL \Mult10~18\ : std_logic;
SIGNAL \Mult10~19\ : std_logic;
SIGNAL \Mult10~20\ : std_logic;
SIGNAL \Mult10~21\ : std_logic;
SIGNAL \Mult10~22\ : std_logic;
SIGNAL \Mult10~23\ : std_logic;
SIGNAL \Mult10~24\ : std_logic;
SIGNAL \Mult10~25\ : std_logic;
SIGNAL \Mult10~26\ : std_logic;
SIGNAL \Mult10~27\ : std_logic;
SIGNAL \Mult10~28\ : std_logic;
SIGNAL \Mult10~29\ : std_logic;
SIGNAL \Mult10~30\ : std_logic;
SIGNAL \Mult10~31\ : std_logic;
SIGNAL \Mult10~32\ : std_logic;
SIGNAL \Mult10~33\ : std_logic;
SIGNAL \Mult10~34\ : std_logic;
SIGNAL \Mult10~35\ : std_logic;
SIGNAL \Mult10~36\ : std_logic;
SIGNAL \Mult10~37\ : std_logic;
SIGNAL \Mult10~38\ : std_logic;
SIGNAL \Mult10~39\ : std_logic;
SIGNAL \Mult10~40\ : std_logic;
SIGNAL \Mult10~41\ : std_logic;
SIGNAL \Mult10~42\ : std_logic;
SIGNAL \Mult10~43\ : std_logic;
SIGNAL \Mult10~44\ : std_logic;
SIGNAL \Mult10~45\ : std_logic;
SIGNAL \Mult10~46\ : std_logic;
SIGNAL \Mult10~47\ : std_logic;
SIGNAL \Mult10~48\ : std_logic;
SIGNAL \Mult10~49\ : std_logic;
SIGNAL \Mult10~50\ : std_logic;
SIGNAL \Mult10~51\ : std_logic;
SIGNAL \Mult10~52\ : std_logic;
SIGNAL \Mult10~53\ : std_logic;
SIGNAL \Mult10~54\ : std_logic;
SIGNAL \Mult10~55\ : std_logic;
SIGNAL \Mult10~56\ : std_logic;
SIGNAL \Mult10~57\ : std_logic;
SIGNAL \Mult10~58\ : std_logic;
SIGNAL \Mult10~59\ : std_logic;
SIGNAL \Mult10~60\ : std_logic;
SIGNAL \Mult10~61\ : std_logic;
SIGNAL \Mult10~62\ : std_logic;
SIGNAL \Mult10~63\ : std_logic;
SIGNAL \Mult14~8\ : std_logic;
SIGNAL \Mult14~9\ : std_logic;
SIGNAL \Mult14~10\ : std_logic;
SIGNAL \Mult14~11\ : std_logic;
SIGNAL \Mult14~12\ : std_logic;
SIGNAL \Mult14~13\ : std_logic;
SIGNAL \Mult14~14\ : std_logic;
SIGNAL \Mult14~15\ : std_logic;
SIGNAL \Mult14~16\ : std_logic;
SIGNAL \Mult14~17\ : std_logic;
SIGNAL \Mult14~18\ : std_logic;
SIGNAL \Mult14~19\ : std_logic;
SIGNAL \Mult14~20\ : std_logic;
SIGNAL \Mult14~21\ : std_logic;
SIGNAL \Mult14~22\ : std_logic;
SIGNAL \Mult14~23\ : std_logic;
SIGNAL \Mult14~24\ : std_logic;
SIGNAL \Mult14~25\ : std_logic;
SIGNAL \Mult14~26\ : std_logic;
SIGNAL \Mult14~27\ : std_logic;
SIGNAL \Mult14~28\ : std_logic;
SIGNAL \Mult14~29\ : std_logic;
SIGNAL \Mult14~30\ : std_logic;
SIGNAL \Mult14~31\ : std_logic;
SIGNAL \Mult14~32\ : std_logic;
SIGNAL \Mult14~33\ : std_logic;
SIGNAL \Mult14~34\ : std_logic;
SIGNAL \Mult14~35\ : std_logic;
SIGNAL \Mult14~36\ : std_logic;
SIGNAL \Mult14~37\ : std_logic;
SIGNAL \Mult14~38\ : std_logic;
SIGNAL \Mult14~39\ : std_logic;
SIGNAL \Mult14~40\ : std_logic;
SIGNAL \Mult14~41\ : std_logic;
SIGNAL \Mult14~42\ : std_logic;
SIGNAL \Mult14~43\ : std_logic;
SIGNAL \Mult14~44\ : std_logic;
SIGNAL \Mult14~45\ : std_logic;
SIGNAL \Mult14~46\ : std_logic;
SIGNAL \Mult14~47\ : std_logic;
SIGNAL \Mult14~48\ : std_logic;
SIGNAL \Mult14~49\ : std_logic;
SIGNAL \Mult14~50\ : std_logic;
SIGNAL \Mult14~51\ : std_logic;
SIGNAL \Mult14~52\ : std_logic;
SIGNAL \Mult14~53\ : std_logic;
SIGNAL \Mult14~54\ : std_logic;
SIGNAL \Mult14~55\ : std_logic;
SIGNAL \Mult14~56\ : std_logic;
SIGNAL \Mult14~57\ : std_logic;
SIGNAL \Mult14~58\ : std_logic;
SIGNAL \Mult14~59\ : std_logic;
SIGNAL \Mult14~60\ : std_logic;
SIGNAL \Mult14~61\ : std_logic;
SIGNAL \Mult14~62\ : std_logic;
SIGNAL \Mult14~63\ : std_logic;
SIGNAL \Add4~16\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~63\ : std_logic;
SIGNAL \Add4~64\ : std_logic;
SIGNAL \Add4~65\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~68\ : std_logic;
SIGNAL \Add4~69\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~71\ : std_logic;
SIGNAL \Add7~16\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~64\ : std_logic;
SIGNAL \Add7~65\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~67\ : std_logic;
SIGNAL \Add7~68\ : std_logic;
SIGNAL \Add7~69\ : std_logic;
SIGNAL \Add7~70\ : std_logic;
SIGNAL \Add7~71\ : std_logic;
SIGNAL \Add10~16\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~24\ : std_logic;
SIGNAL \Add10~25\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~28\ : std_logic;
SIGNAL \Add10~29\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~31\ : std_logic;
SIGNAL \Add10~32\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~35\ : std_logic;
SIGNAL \Add10~36\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~39\ : std_logic;
SIGNAL \Add10~40\ : std_logic;
SIGNAL \Add10~41\ : std_logic;
SIGNAL \Add10~42\ : std_logic;
SIGNAL \Add10~43\ : std_logic;
SIGNAL \Add10~44\ : std_logic;
SIGNAL \Add10~45\ : std_logic;
SIGNAL \Add10~46\ : std_logic;
SIGNAL \Add10~47\ : std_logic;
SIGNAL \Add10~48\ : std_logic;
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~50\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~52\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~54\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~56\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~58\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~60\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62\ : std_logic;
SIGNAL \Add10~63\ : std_logic;
SIGNAL \Add10~64\ : std_logic;
SIGNAL \Add10~65\ : std_logic;
SIGNAL \Add10~66\ : std_logic;
SIGNAL \Add10~67\ : std_logic;
SIGNAL \Add10~68\ : std_logic;
SIGNAL \Add10~69\ : std_logic;
SIGNAL \Add10~70\ : std_logic;
SIGNAL \Add10~71\ : std_logic;
SIGNAL \Add13~16\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~20\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~24\ : std_logic;
SIGNAL \Add13~25\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~27\ : std_logic;
SIGNAL \Add13~28\ : std_logic;
SIGNAL \Add13~29\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~32\ : std_logic;
SIGNAL \Add13~33\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~36\ : std_logic;
SIGNAL \Add13~37\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~40\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~42\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~44\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~46\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~48\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~50\ : std_logic;
SIGNAL \Add13~51\ : std_logic;
SIGNAL \Add13~52\ : std_logic;
SIGNAL \Add13~53\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~55\ : std_logic;
SIGNAL \Add13~56\ : std_logic;
SIGNAL \Add13~57\ : std_logic;
SIGNAL \Add13~58\ : std_logic;
SIGNAL \Add13~59\ : std_logic;
SIGNAL \Add13~60\ : std_logic;
SIGNAL \Add13~61\ : std_logic;
SIGNAL \Add13~62\ : std_logic;
SIGNAL \Add13~63\ : std_logic;
SIGNAL \Add13~64\ : std_logic;
SIGNAL \Add13~65\ : std_logic;
SIGNAL \Add13~66\ : std_logic;
SIGNAL \Add13~67\ : std_logic;
SIGNAL \Add13~68\ : std_logic;
SIGNAL \Add13~69\ : std_logic;
SIGNAL \Add13~70\ : std_logic;
SIGNAL \Add13~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Aclk~input_o\ : std_logic;
SIGNAL \Aclk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \kaddr~0_combout\ : std_logic;
SIGNAL \kaddr[2]~1_combout\ : std_logic;
SIGNAL \kaddr[1]~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \daddr~1_combout\ : std_logic;
SIGNAL \daddr[3]~3_combout\ : std_logic;
SIGNAL \daddr[1]~2_combout\ : std_logic;
SIGNAL \daddr~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \out_cnt~1_combout\ : std_logic;
SIGNAL \kernel[0][0]~feeder_combout\ : std_logic;
SIGNAL \Kin[0]~input_o\ : std_logic;
SIGNAL \kernel[0][2]~1_combout\ : std_logic;
SIGNAL \kernel[0][0]~q\ : std_logic;
SIGNAL \kernel[1][0]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][0]~2_combout\ : std_logic;
SIGNAL \kernel[1][0]~q\ : std_logic;
SIGNAL \kernel[2][2]~3_combout\ : std_logic;
SIGNAL \kernel[2][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \kernel[3][0]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][1]~0_combout\ : std_logic;
SIGNAL \kernel[3][0]~q\ : std_logic;
SIGNAL \kernel[0][1]~feeder_combout\ : std_logic;
SIGNAL \Kin[1]~input_o\ : std_logic;
SIGNAL \kernel[0][1]~q\ : std_logic;
SIGNAL \kernel[2][1]~q\ : std_logic;
SIGNAL \kernel[1][1]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \kernel[3][1]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][1]~q\ : std_logic;
SIGNAL \kernel[0][2]~feeder_combout\ : std_logic;
SIGNAL \Kin[2]~input_o\ : std_logic;
SIGNAL \kernel[0][2]~q\ : std_logic;
SIGNAL \kernel[2][2]~q\ : std_logic;
SIGNAL \kernel[1][2]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \kernel[3][2]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][2]~q\ : std_logic;
SIGNAL \kernel[0][3]~feeder_combout\ : std_logic;
SIGNAL \Kin[3]~input_o\ : std_logic;
SIGNAL \kernel[0][3]~q\ : std_logic;
SIGNAL \kernel[1][3]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][3]~q\ : std_logic;
SIGNAL \kernel[2][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \kernel[3][3]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][3]~q\ : std_logic;
SIGNAL \kernel[0][4]~feeder_combout\ : std_logic;
SIGNAL \Kin[4]~input_o\ : std_logic;
SIGNAL \kernel[0][4]~q\ : std_logic;
SIGNAL \kernel[1][4]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][4]~q\ : std_logic;
SIGNAL \kernel[2][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \kernel[3][4]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][4]~q\ : std_logic;
SIGNAL \kernel[1][5]~feeder_combout\ : std_logic;
SIGNAL \Kin[5]~input_o\ : std_logic;
SIGNAL \kernel[1][5]~q\ : std_logic;
SIGNAL \kernel[0][5]~feeder_combout\ : std_logic;
SIGNAL \kernel[0][5]~q\ : std_logic;
SIGNAL \kernel[2][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \kernel[3][5]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][5]~q\ : std_logic;
SIGNAL \kernel[0][6]~feeder_combout\ : std_logic;
SIGNAL \Kin[6]~input_o\ : std_logic;
SIGNAL \kernel[0][6]~q\ : std_logic;
SIGNAL \kernel[2][6]~feeder_combout\ : std_logic;
SIGNAL \kernel[2][6]~q\ : std_logic;
SIGNAL \kernel[1][6]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \kernel[3][6]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][6]~q\ : std_logic;
SIGNAL \kernel[2][7]~feeder_combout\ : std_logic;
SIGNAL \Kin[7]~input_o\ : std_logic;
SIGNAL \kernel[2][7]~q\ : std_logic;
SIGNAL \kernel[0][7]~feeder_combout\ : std_logic;
SIGNAL \kernel[0][7]~q\ : std_logic;
SIGNAL \kernel[1][7]~feeder_combout\ : std_logic;
SIGNAL \kernel[1][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \kernel[3][7]~feeder_combout\ : std_logic;
SIGNAL \kernel[3][7]~q\ : std_logic;
SIGNAL \pattern[3][0]~feeder_combout\ : std_logic;
SIGNAL \Xin[0]~input_o\ : std_logic;
SIGNAL \pattern[3][6]~8_combout\ : std_logic;
SIGNAL \pattern[3][0]~q\ : std_logic;
SIGNAL \pattern[0][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][6]~5_combout\ : std_logic;
SIGNAL \pattern[0][0]~q\ : std_logic;
SIGNAL \pattern[1][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][6]~6_combout\ : std_logic;
SIGNAL \pattern[1][0]~q\ : std_logic;
SIGNAL \pattern[2][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][7]~7_combout\ : std_logic;
SIGNAL \pattern[2][0]~q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \pattern[8][7]~3_combout\ : std_logic;
SIGNAL \pattern[8][0]~q\ : std_logic;
SIGNAL \pattern[4][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][2]~0_combout\ : std_logic;
SIGNAL \pattern[4][0]~q\ : std_logic;
SIGNAL \pattern[6][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][7]~4_combout\ : std_logic;
SIGNAL \pattern[6][0]~q\ : std_logic;
SIGNAL \pattern[5][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][7]~1_combout\ : std_logic;
SIGNAL \pattern[5][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \pattern[7][0]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][6]~2_combout\ : std_logic;
SIGNAL \pattern[7][0]~q\ : std_logic;
SIGNAL \pattern[3][1]~feeder_combout\ : std_logic;
SIGNAL \Xin[1]~input_o\ : std_logic;
SIGNAL \pattern[3][1]~q\ : std_logic;
SIGNAL \pattern[2][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][1]~q\ : std_logic;
SIGNAL \pattern[0][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][1]~q\ : std_logic;
SIGNAL \pattern[1][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][1]~q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \pattern[8][1]~q\ : std_logic;
SIGNAL \pattern[6][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][1]~q\ : std_logic;
SIGNAL \pattern[5][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][1]~q\ : std_logic;
SIGNAL \pattern[4][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \pattern[7][1]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][1]~q\ : std_logic;
SIGNAL \pattern[3][2]~feeder_combout\ : std_logic;
SIGNAL \Xin[2]~input_o\ : std_logic;
SIGNAL \pattern[3][2]~q\ : std_logic;
SIGNAL \pattern[2][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][2]~q\ : std_logic;
SIGNAL \pattern[0][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][2]~q\ : std_logic;
SIGNAL \pattern[1][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][2]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \pattern[8][2]~q\ : std_logic;
SIGNAL \pattern[6][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][2]~q\ : std_logic;
SIGNAL \pattern[5][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][2]~q\ : std_logic;
SIGNAL \pattern[4][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \pattern[7][2]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][2]~q\ : std_logic;
SIGNAL \pattern[3][3]~feeder_combout\ : std_logic;
SIGNAL \Xin[3]~input_o\ : std_logic;
SIGNAL \pattern[3][3]~q\ : std_logic;
SIGNAL \pattern[1][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][3]~q\ : std_logic;
SIGNAL \pattern[0][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][3]~q\ : std_logic;
SIGNAL \pattern[2][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][3]~q\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \pattern[8][3]~q\ : std_logic;
SIGNAL \pattern[5][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][3]~q\ : std_logic;
SIGNAL \pattern[6][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][3]~q\ : std_logic;
SIGNAL \pattern[4][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \pattern[7][3]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][3]~q\ : std_logic;
SIGNAL \pattern[3][4]~feeder_combout\ : std_logic;
SIGNAL \Xin[4]~input_o\ : std_logic;
SIGNAL \pattern[3][4]~q\ : std_logic;
SIGNAL \pattern[0][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][4]~q\ : std_logic;
SIGNAL \pattern[2][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][4]~q\ : std_logic;
SIGNAL \pattern[1][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][4]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \pattern[8][4]~q\ : std_logic;
SIGNAL \pattern[6][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][4]~q\ : std_logic;
SIGNAL \pattern[4][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][4]~q\ : std_logic;
SIGNAL \pattern[5][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \pattern[7][4]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][4]~q\ : std_logic;
SIGNAL \pattern[1][5]~feeder_combout\ : std_logic;
SIGNAL \Xin[5]~input_o\ : std_logic;
SIGNAL \pattern[1][5]~q\ : std_logic;
SIGNAL \pattern[3][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[3][5]~q\ : std_logic;
SIGNAL \pattern[2][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][5]~q\ : std_logic;
SIGNAL \pattern[0][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][5]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \pattern[8][5]~q\ : std_logic;
SIGNAL \pattern[5][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][5]~q\ : std_logic;
SIGNAL \pattern[4][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][5]~q\ : std_logic;
SIGNAL \pattern[6][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[6][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \pattern[7][5]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][5]~q\ : std_logic;
SIGNAL \pattern[6][6]~feeder_combout\ : std_logic;
SIGNAL \Xin[6]~input_o\ : std_logic;
SIGNAL \pattern[6][6]~q\ : std_logic;
SIGNAL \pattern[4][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][6]~q\ : std_logic;
SIGNAL \pattern[5][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \pattern[3][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[3][6]~q\ : std_logic;
SIGNAL \pattern[1][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][6]~q\ : std_logic;
SIGNAL \pattern[0][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][6]~q\ : std_logic;
SIGNAL \pattern[2][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[2][6]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \pattern[8][6]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \pattern[7][6]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][6]~q\ : std_logic;
SIGNAL \pattern[2][7]~feeder_combout\ : std_logic;
SIGNAL \Xin[7]~input_o\ : std_logic;
SIGNAL \pattern[2][7]~q\ : std_logic;
SIGNAL \pattern[0][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[0][7]~q\ : std_logic;
SIGNAL \pattern[3][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[3][7]~q\ : std_logic;
SIGNAL \pattern[1][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[1][7]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \pattern[8][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[8][7]~q\ : std_logic;
SIGNAL \pattern[4][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[4][7]~q\ : std_logic;
SIGNAL \pattern[6][7]~q\ : std_logic;
SIGNAL \pattern[5][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[5][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \pattern[7][7]~feeder_combout\ : std_logic;
SIGNAL \pattern[7][7]~q\ : std_logic;
SIGNAL \Add10~8_resulta\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Mult10~mac_resulta\ : std_logic;
SIGNAL \Mult10~333\ : std_logic;
SIGNAL \Mult10~334\ : std_logic;
SIGNAL \Mult10~335\ : std_logic;
SIGNAL \Mult10~336\ : std_logic;
SIGNAL \Mult10~337\ : std_logic;
SIGNAL \Mult10~338\ : std_logic;
SIGNAL \Mult10~339\ : std_logic;
SIGNAL \Mult11~mac_resulta\ : std_logic;
SIGNAL \out_cnt~0_combout\ : std_logic;
SIGNAL \Add13~8_resulta\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Mult14~mac_resulta\ : std_logic;
SIGNAL \Mult14~333\ : std_logic;
SIGNAL \Mult14~334\ : std_logic;
SIGNAL \Mult14~335\ : std_logic;
SIGNAL \Mult14~336\ : std_logic;
SIGNAL \Mult14~337\ : std_logic;
SIGNAL \Mult14~338\ : std_logic;
SIGNAL \Mult14~339\ : std_logic;
SIGNAL \Mult15~mac_resulta\ : std_logic;
SIGNAL \Add7~8_resulta\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Mult6~mac_resulta\ : std_logic;
SIGNAL \Mult6~333\ : std_logic;
SIGNAL \Mult6~334\ : std_logic;
SIGNAL \Mult6~335\ : std_logic;
SIGNAL \Mult6~336\ : std_logic;
SIGNAL \Mult6~337\ : std_logic;
SIGNAL \Mult6~338\ : std_logic;
SIGNAL \Mult6~339\ : std_logic;
SIGNAL \Mult7~mac_resulta\ : std_logic;
SIGNAL \Add4~8_resulta\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Mult2~mac_resulta\ : std_logic;
SIGNAL \Mult2~333\ : std_logic;
SIGNAL \Mult2~334\ : std_logic;
SIGNAL \Mult2~335\ : std_logic;
SIGNAL \Mult2~336\ : std_logic;
SIGNAL \Mult2~337\ : std_logic;
SIGNAL \Mult2~338\ : std_logic;
SIGNAL \Mult2~339\ : std_logic;
SIGNAL \Mult3~mac_resulta\ : std_logic;
SIGNAL \Rout~0_combout\ : std_logic;
SIGNAL \Rout[6]~1_combout\ : std_logic;
SIGNAL \Rout[0]~reg0_q\ : std_logic;
SIGNAL \Mult11~333\ : std_logic;
SIGNAL \Mult15~333\ : std_logic;
SIGNAL \Mult3~333\ : std_logic;
SIGNAL \Mult7~333\ : std_logic;
SIGNAL \Rout~2_combout\ : std_logic;
SIGNAL \Rout[1]~reg0_q\ : std_logic;
SIGNAL \Mult3~334\ : std_logic;
SIGNAL \Mult11~334\ : std_logic;
SIGNAL \Mult15~334\ : std_logic;
SIGNAL \Mult7~334\ : std_logic;
SIGNAL \Rout~3_combout\ : std_logic;
SIGNAL \Rout[2]~reg0_q\ : std_logic;
SIGNAL \Mult11~335\ : std_logic;
SIGNAL \Mult15~335\ : std_logic;
SIGNAL \Mult7~335\ : std_logic;
SIGNAL \Mult3~335\ : std_logic;
SIGNAL \Rout~4_combout\ : std_logic;
SIGNAL \Rout[3]~reg0_q\ : std_logic;
SIGNAL \Mult15~336\ : std_logic;
SIGNAL \Mult11~336\ : std_logic;
SIGNAL \Mult7~336\ : std_logic;
SIGNAL \Mult3~336\ : std_logic;
SIGNAL \Rout~5_combout\ : std_logic;
SIGNAL \Rout[4]~reg0_q\ : std_logic;
SIGNAL \Mult15~337\ : std_logic;
SIGNAL \Mult11~337\ : std_logic;
SIGNAL \Mult3~337\ : std_logic;
SIGNAL \Mult7~337\ : std_logic;
SIGNAL \Rout~6_combout\ : std_logic;
SIGNAL \Rout[5]~reg0_q\ : std_logic;
SIGNAL \Mult11~338\ : std_logic;
SIGNAL \Mult15~338\ : std_logic;
SIGNAL \Mult7~338\ : std_logic;
SIGNAL \Mult3~338\ : std_logic;
SIGNAL \Rout~7_combout\ : std_logic;
SIGNAL \Rout[6]~reg0_q\ : std_logic;
SIGNAL \Mult15~339\ : std_logic;
SIGNAL \Mult11~339\ : std_logic;
SIGNAL \Mult7~339\ : std_logic;
SIGNAL \Mult3~339\ : std_logic;
SIGNAL \Rout~8_combout\ : std_logic;
SIGNAL \Rout[7]~reg0_q\ : std_logic;
SIGNAL \result_done~0_combout\ : std_logic;
SIGNAL \result_done~reg0_q\ : std_logic;
SIGNAL out_cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL kaddr : std_logic_vector(4 DOWNTO 0);
SIGNAL daddr : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_pattern[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[3][0]~q\ : std_logic;
SIGNAL ALT_INV_daddr : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_kaddr : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Mult15~339\ : std_logic;
SIGNAL \ALT_INV_Mult15~338\ : std_logic;
SIGNAL \ALT_INV_Mult15~337\ : std_logic;
SIGNAL \ALT_INV_Mult15~336\ : std_logic;
SIGNAL \ALT_INV_Mult15~335\ : std_logic;
SIGNAL \ALT_INV_Mult15~334\ : std_logic;
SIGNAL \ALT_INV_Mult15~333\ : std_logic;
SIGNAL \ALT_INV_Mult15~mac_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult11~339\ : std_logic;
SIGNAL \ALT_INV_Mult11~338\ : std_logic;
SIGNAL \ALT_INV_Mult11~337\ : std_logic;
SIGNAL \ALT_INV_Mult11~336\ : std_logic;
SIGNAL \ALT_INV_Mult11~335\ : std_logic;
SIGNAL \ALT_INV_Mult11~334\ : std_logic;
SIGNAL \ALT_INV_Mult11~333\ : std_logic;
SIGNAL \ALT_INV_Mult11~mac_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult7~339\ : std_logic;
SIGNAL \ALT_INV_Mult7~338\ : std_logic;
SIGNAL \ALT_INV_Mult7~337\ : std_logic;
SIGNAL \ALT_INV_Mult7~336\ : std_logic;
SIGNAL \ALT_INV_Mult7~335\ : std_logic;
SIGNAL \ALT_INV_Mult7~334\ : std_logic;
SIGNAL \ALT_INV_Mult7~333\ : std_logic;
SIGNAL \ALT_INV_Mult7~mac_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult3~339\ : std_logic;
SIGNAL \ALT_INV_Mult3~338\ : std_logic;
SIGNAL \ALT_INV_Mult3~337\ : std_logic;
SIGNAL \ALT_INV_Mult3~336\ : std_logic;
SIGNAL \ALT_INV_Mult3~335\ : std_logic;
SIGNAL \ALT_INV_Mult3~334\ : std_logic;
SIGNAL \ALT_INV_Mult3~333\ : std_logic;
SIGNAL \ALT_INV_Mult3~mac_resulta\ : std_logic;
SIGNAL ALT_INV_out_cnt : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_result_done~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_pattern[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_kernel[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_pattern[5][0]~q\ : std_logic;

BEGIN

ww_Aclk <= Aclk;
ww_rst <= rst;
ww_Xin <= Xin;
ww_Kin <= Kin;
Rout <= ww_Rout;
result_done <= ww_result_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult3~mac_AX_bus\ <= (\kernel[3][7]~q\ & \kernel[3][6]~q\ & \kernel[3][5]~q\ & \kernel[3][4]~q\ & \kernel[3][3]~q\ & \kernel[3][2]~q\ & \kernel[3][1]~q\ & \kernel[3][0]~q\);

\Mult3~mac_AY_bus\ <= (\pattern[4][7]~q\ & \pattern[4][6]~q\ & \pattern[4][5]~q\ & \pattern[4][4]~q\ & \pattern[4][3]~q\ & \pattern[4][2]~q\ & \pattern[4][1]~q\ & \pattern[4][0]~q\);

\Mult3~mac_BX_bus\ <= (\Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & 
\Mult2~339\ & \Mult2~339\);

\Mult3~mac_BY_bus\ <= (\Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~339\ & \Mult2~338\ & \Mult2~337\ & \Mult2~336\ & \Mult2~335\ & \Mult2~334\ & 
\Mult2~333\ & \Mult2~mac_resulta\);

\Mult3~mac_resulta\ <= \Mult3~mac_RESULTA_bus\(0);
\Mult3~333\ <= \Mult3~mac_RESULTA_bus\(1);
\Mult3~334\ <= \Mult3~mac_RESULTA_bus\(2);
\Mult3~335\ <= \Mult3~mac_RESULTA_bus\(3);
\Mult3~336\ <= \Mult3~mac_RESULTA_bus\(4);
\Mult3~337\ <= \Mult3~mac_RESULTA_bus\(5);
\Mult3~338\ <= \Mult3~mac_RESULTA_bus\(6);
\Mult3~339\ <= \Mult3~mac_RESULTA_bus\(7);
\Mult3~8\ <= \Mult3~mac_RESULTA_bus\(8);
\Mult3~9\ <= \Mult3~mac_RESULTA_bus\(9);
\Mult3~10\ <= \Mult3~mac_RESULTA_bus\(10);
\Mult3~11\ <= \Mult3~mac_RESULTA_bus\(11);
\Mult3~12\ <= \Mult3~mac_RESULTA_bus\(12);
\Mult3~13\ <= \Mult3~mac_RESULTA_bus\(13);
\Mult3~14\ <= \Mult3~mac_RESULTA_bus\(14);
\Mult3~15\ <= \Mult3~mac_RESULTA_bus\(15);
\Mult3~16\ <= \Mult3~mac_RESULTA_bus\(16);
\Mult3~17\ <= \Mult3~mac_RESULTA_bus\(17);
\Mult3~18\ <= \Mult3~mac_RESULTA_bus\(18);
\Mult3~19\ <= \Mult3~mac_RESULTA_bus\(19);
\Mult3~20\ <= \Mult3~mac_RESULTA_bus\(20);
\Mult3~21\ <= \Mult3~mac_RESULTA_bus\(21);
\Mult3~22\ <= \Mult3~mac_RESULTA_bus\(22);
\Mult3~23\ <= \Mult3~mac_RESULTA_bus\(23);
\Mult3~24\ <= \Mult3~mac_RESULTA_bus\(24);
\Mult3~25\ <= \Mult3~mac_RESULTA_bus\(25);
\Mult3~26\ <= \Mult3~mac_RESULTA_bus\(26);
\Mult3~27\ <= \Mult3~mac_RESULTA_bus\(27);
\Mult3~28\ <= \Mult3~mac_RESULTA_bus\(28);
\Mult3~29\ <= \Mult3~mac_RESULTA_bus\(29);
\Mult3~30\ <= \Mult3~mac_RESULTA_bus\(30);
\Mult3~31\ <= \Mult3~mac_RESULTA_bus\(31);
\Mult3~32\ <= \Mult3~mac_RESULTA_bus\(32);
\Mult3~33\ <= \Mult3~mac_RESULTA_bus\(33);
\Mult3~34\ <= \Mult3~mac_RESULTA_bus\(34);
\Mult3~35\ <= \Mult3~mac_RESULTA_bus\(35);
\Mult3~36\ <= \Mult3~mac_RESULTA_bus\(36);
\Mult3~37\ <= \Mult3~mac_RESULTA_bus\(37);
\Mult3~38\ <= \Mult3~mac_RESULTA_bus\(38);
\Mult3~39\ <= \Mult3~mac_RESULTA_bus\(39);
\Mult3~40\ <= \Mult3~mac_RESULTA_bus\(40);
\Mult3~41\ <= \Mult3~mac_RESULTA_bus\(41);
\Mult3~42\ <= \Mult3~mac_RESULTA_bus\(42);
\Mult3~43\ <= \Mult3~mac_RESULTA_bus\(43);
\Mult3~44\ <= \Mult3~mac_RESULTA_bus\(44);
\Mult3~45\ <= \Mult3~mac_RESULTA_bus\(45);
\Mult3~46\ <= \Mult3~mac_RESULTA_bus\(46);
\Mult3~47\ <= \Mult3~mac_RESULTA_bus\(47);
\Mult3~48\ <= \Mult3~mac_RESULTA_bus\(48);
\Mult3~49\ <= \Mult3~mac_RESULTA_bus\(49);
\Mult3~50\ <= \Mult3~mac_RESULTA_bus\(50);
\Mult3~51\ <= \Mult3~mac_RESULTA_bus\(51);
\Mult3~52\ <= \Mult3~mac_RESULTA_bus\(52);
\Mult3~53\ <= \Mult3~mac_RESULTA_bus\(53);
\Mult3~54\ <= \Mult3~mac_RESULTA_bus\(54);
\Mult3~55\ <= \Mult3~mac_RESULTA_bus\(55);
\Mult3~56\ <= \Mult3~mac_RESULTA_bus\(56);
\Mult3~57\ <= \Mult3~mac_RESULTA_bus\(57);
\Mult3~58\ <= \Mult3~mac_RESULTA_bus\(58);
\Mult3~59\ <= \Mult3~mac_RESULTA_bus\(59);
\Mult3~60\ <= \Mult3~mac_RESULTA_bus\(60);
\Mult3~61\ <= \Mult3~mac_RESULTA_bus\(61);
\Mult3~62\ <= \Mult3~mac_RESULTA_bus\(62);
\Mult3~63\ <= \Mult3~mac_RESULTA_bus\(63);

\Mult7~mac_AX_bus\ <= (\kernel[3][7]~q\ & \kernel[3][6]~q\ & \kernel[3][5]~q\ & \kernel[3][4]~q\ & \kernel[3][3]~q\ & \kernel[3][2]~q\ & \kernel[3][1]~q\ & \kernel[3][0]~q\);

\Mult7~mac_AY_bus\ <= (\pattern[5][7]~q\ & \pattern[5][6]~q\ & \pattern[5][5]~q\ & \pattern[5][4]~q\ & \pattern[5][3]~q\ & \pattern[5][2]~q\ & \pattern[5][1]~q\ & \pattern[5][0]~q\);

\Mult7~mac_BX_bus\ <= (\Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & 
\Mult6~339\ & \Mult6~339\);

\Mult7~mac_BY_bus\ <= (\Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~339\ & \Mult6~338\ & \Mult6~337\ & \Mult6~336\ & \Mult6~335\ & \Mult6~334\ & 
\Mult6~333\ & \Mult6~mac_resulta\);

\Mult7~mac_resulta\ <= \Mult7~mac_RESULTA_bus\(0);
\Mult7~333\ <= \Mult7~mac_RESULTA_bus\(1);
\Mult7~334\ <= \Mult7~mac_RESULTA_bus\(2);
\Mult7~335\ <= \Mult7~mac_RESULTA_bus\(3);
\Mult7~336\ <= \Mult7~mac_RESULTA_bus\(4);
\Mult7~337\ <= \Mult7~mac_RESULTA_bus\(5);
\Mult7~338\ <= \Mult7~mac_RESULTA_bus\(6);
\Mult7~339\ <= \Mult7~mac_RESULTA_bus\(7);
\Mult7~8\ <= \Mult7~mac_RESULTA_bus\(8);
\Mult7~9\ <= \Mult7~mac_RESULTA_bus\(9);
\Mult7~10\ <= \Mult7~mac_RESULTA_bus\(10);
\Mult7~11\ <= \Mult7~mac_RESULTA_bus\(11);
\Mult7~12\ <= \Mult7~mac_RESULTA_bus\(12);
\Mult7~13\ <= \Mult7~mac_RESULTA_bus\(13);
\Mult7~14\ <= \Mult7~mac_RESULTA_bus\(14);
\Mult7~15\ <= \Mult7~mac_RESULTA_bus\(15);
\Mult7~16\ <= \Mult7~mac_RESULTA_bus\(16);
\Mult7~17\ <= \Mult7~mac_RESULTA_bus\(17);
\Mult7~18\ <= \Mult7~mac_RESULTA_bus\(18);
\Mult7~19\ <= \Mult7~mac_RESULTA_bus\(19);
\Mult7~20\ <= \Mult7~mac_RESULTA_bus\(20);
\Mult7~21\ <= \Mult7~mac_RESULTA_bus\(21);
\Mult7~22\ <= \Mult7~mac_RESULTA_bus\(22);
\Mult7~23\ <= \Mult7~mac_RESULTA_bus\(23);
\Mult7~24\ <= \Mult7~mac_RESULTA_bus\(24);
\Mult7~25\ <= \Mult7~mac_RESULTA_bus\(25);
\Mult7~26\ <= \Mult7~mac_RESULTA_bus\(26);
\Mult7~27\ <= \Mult7~mac_RESULTA_bus\(27);
\Mult7~28\ <= \Mult7~mac_RESULTA_bus\(28);
\Mult7~29\ <= \Mult7~mac_RESULTA_bus\(29);
\Mult7~30\ <= \Mult7~mac_RESULTA_bus\(30);
\Mult7~31\ <= \Mult7~mac_RESULTA_bus\(31);
\Mult7~32\ <= \Mult7~mac_RESULTA_bus\(32);
\Mult7~33\ <= \Mult7~mac_RESULTA_bus\(33);
\Mult7~34\ <= \Mult7~mac_RESULTA_bus\(34);
\Mult7~35\ <= \Mult7~mac_RESULTA_bus\(35);
\Mult7~36\ <= \Mult7~mac_RESULTA_bus\(36);
\Mult7~37\ <= \Mult7~mac_RESULTA_bus\(37);
\Mult7~38\ <= \Mult7~mac_RESULTA_bus\(38);
\Mult7~39\ <= \Mult7~mac_RESULTA_bus\(39);
\Mult7~40\ <= \Mult7~mac_RESULTA_bus\(40);
\Mult7~41\ <= \Mult7~mac_RESULTA_bus\(41);
\Mult7~42\ <= \Mult7~mac_RESULTA_bus\(42);
\Mult7~43\ <= \Mult7~mac_RESULTA_bus\(43);
\Mult7~44\ <= \Mult7~mac_RESULTA_bus\(44);
\Mult7~45\ <= \Mult7~mac_RESULTA_bus\(45);
\Mult7~46\ <= \Mult7~mac_RESULTA_bus\(46);
\Mult7~47\ <= \Mult7~mac_RESULTA_bus\(47);
\Mult7~48\ <= \Mult7~mac_RESULTA_bus\(48);
\Mult7~49\ <= \Mult7~mac_RESULTA_bus\(49);
\Mult7~50\ <= \Mult7~mac_RESULTA_bus\(50);
\Mult7~51\ <= \Mult7~mac_RESULTA_bus\(51);
\Mult7~52\ <= \Mult7~mac_RESULTA_bus\(52);
\Mult7~53\ <= \Mult7~mac_RESULTA_bus\(53);
\Mult7~54\ <= \Mult7~mac_RESULTA_bus\(54);
\Mult7~55\ <= \Mult7~mac_RESULTA_bus\(55);
\Mult7~56\ <= \Mult7~mac_RESULTA_bus\(56);
\Mult7~57\ <= \Mult7~mac_RESULTA_bus\(57);
\Mult7~58\ <= \Mult7~mac_RESULTA_bus\(58);
\Mult7~59\ <= \Mult7~mac_RESULTA_bus\(59);
\Mult7~60\ <= \Mult7~mac_RESULTA_bus\(60);
\Mult7~61\ <= \Mult7~mac_RESULTA_bus\(61);
\Mult7~62\ <= \Mult7~mac_RESULTA_bus\(62);
\Mult7~63\ <= \Mult7~mac_RESULTA_bus\(63);

\Mult11~mac_AX_bus\ <= (\kernel[3][7]~q\ & \kernel[3][6]~q\ & \kernel[3][5]~q\ & \kernel[3][4]~q\ & \kernel[3][3]~q\ & \kernel[3][2]~q\ & \kernel[3][1]~q\ & \kernel[3][0]~q\);

\Mult11~mac_AY_bus\ <= (\pattern[7][7]~q\ & \pattern[7][6]~q\ & \pattern[7][5]~q\ & \pattern[7][4]~q\ & \pattern[7][3]~q\ & \pattern[7][2]~q\ & \pattern[7][1]~q\ & \pattern[7][0]~q\);

\Mult11~mac_BX_bus\ <= (\Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & 
\Mult10~339\ & \Mult10~339\ & \Mult10~339\);

\Mult11~mac_BY_bus\ <= (\Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~339\ & \Mult10~338\ & \Mult10~337\ & \Mult10~336\ & \Mult10~335\ & 
\Mult10~334\ & \Mult10~333\ & \Mult10~mac_resulta\);

\Mult11~mac_resulta\ <= \Mult11~mac_RESULTA_bus\(0);
\Mult11~333\ <= \Mult11~mac_RESULTA_bus\(1);
\Mult11~334\ <= \Mult11~mac_RESULTA_bus\(2);
\Mult11~335\ <= \Mult11~mac_RESULTA_bus\(3);
\Mult11~336\ <= \Mult11~mac_RESULTA_bus\(4);
\Mult11~337\ <= \Mult11~mac_RESULTA_bus\(5);
\Mult11~338\ <= \Mult11~mac_RESULTA_bus\(6);
\Mult11~339\ <= \Mult11~mac_RESULTA_bus\(7);
\Mult11~8\ <= \Mult11~mac_RESULTA_bus\(8);
\Mult11~9\ <= \Mult11~mac_RESULTA_bus\(9);
\Mult11~10\ <= \Mult11~mac_RESULTA_bus\(10);
\Mult11~11\ <= \Mult11~mac_RESULTA_bus\(11);
\Mult11~12\ <= \Mult11~mac_RESULTA_bus\(12);
\Mult11~13\ <= \Mult11~mac_RESULTA_bus\(13);
\Mult11~14\ <= \Mult11~mac_RESULTA_bus\(14);
\Mult11~15\ <= \Mult11~mac_RESULTA_bus\(15);
\Mult11~16\ <= \Mult11~mac_RESULTA_bus\(16);
\Mult11~17\ <= \Mult11~mac_RESULTA_bus\(17);
\Mult11~18\ <= \Mult11~mac_RESULTA_bus\(18);
\Mult11~19\ <= \Mult11~mac_RESULTA_bus\(19);
\Mult11~20\ <= \Mult11~mac_RESULTA_bus\(20);
\Mult11~21\ <= \Mult11~mac_RESULTA_bus\(21);
\Mult11~22\ <= \Mult11~mac_RESULTA_bus\(22);
\Mult11~23\ <= \Mult11~mac_RESULTA_bus\(23);
\Mult11~24\ <= \Mult11~mac_RESULTA_bus\(24);
\Mult11~25\ <= \Mult11~mac_RESULTA_bus\(25);
\Mult11~26\ <= \Mult11~mac_RESULTA_bus\(26);
\Mult11~27\ <= \Mult11~mac_RESULTA_bus\(27);
\Mult11~28\ <= \Mult11~mac_RESULTA_bus\(28);
\Mult11~29\ <= \Mult11~mac_RESULTA_bus\(29);
\Mult11~30\ <= \Mult11~mac_RESULTA_bus\(30);
\Mult11~31\ <= \Mult11~mac_RESULTA_bus\(31);
\Mult11~32\ <= \Mult11~mac_RESULTA_bus\(32);
\Mult11~33\ <= \Mult11~mac_RESULTA_bus\(33);
\Mult11~34\ <= \Mult11~mac_RESULTA_bus\(34);
\Mult11~35\ <= \Mult11~mac_RESULTA_bus\(35);
\Mult11~36\ <= \Mult11~mac_RESULTA_bus\(36);
\Mult11~37\ <= \Mult11~mac_RESULTA_bus\(37);
\Mult11~38\ <= \Mult11~mac_RESULTA_bus\(38);
\Mult11~39\ <= \Mult11~mac_RESULTA_bus\(39);
\Mult11~40\ <= \Mult11~mac_RESULTA_bus\(40);
\Mult11~41\ <= \Mult11~mac_RESULTA_bus\(41);
\Mult11~42\ <= \Mult11~mac_RESULTA_bus\(42);
\Mult11~43\ <= \Mult11~mac_RESULTA_bus\(43);
\Mult11~44\ <= \Mult11~mac_RESULTA_bus\(44);
\Mult11~45\ <= \Mult11~mac_RESULTA_bus\(45);
\Mult11~46\ <= \Mult11~mac_RESULTA_bus\(46);
\Mult11~47\ <= \Mult11~mac_RESULTA_bus\(47);
\Mult11~48\ <= \Mult11~mac_RESULTA_bus\(48);
\Mult11~49\ <= \Mult11~mac_RESULTA_bus\(49);
\Mult11~50\ <= \Mult11~mac_RESULTA_bus\(50);
\Mult11~51\ <= \Mult11~mac_RESULTA_bus\(51);
\Mult11~52\ <= \Mult11~mac_RESULTA_bus\(52);
\Mult11~53\ <= \Mult11~mac_RESULTA_bus\(53);
\Mult11~54\ <= \Mult11~mac_RESULTA_bus\(54);
\Mult11~55\ <= \Mult11~mac_RESULTA_bus\(55);
\Mult11~56\ <= \Mult11~mac_RESULTA_bus\(56);
\Mult11~57\ <= \Mult11~mac_RESULTA_bus\(57);
\Mult11~58\ <= \Mult11~mac_RESULTA_bus\(58);
\Mult11~59\ <= \Mult11~mac_RESULTA_bus\(59);
\Mult11~60\ <= \Mult11~mac_RESULTA_bus\(60);
\Mult11~61\ <= \Mult11~mac_RESULTA_bus\(61);
\Mult11~62\ <= \Mult11~mac_RESULTA_bus\(62);
\Mult11~63\ <= \Mult11~mac_RESULTA_bus\(63);

\Mult15~mac_AX_bus\ <= (\kernel[3][7]~q\ & \kernel[3][6]~q\ & \kernel[3][5]~q\ & \kernel[3][4]~q\ & \kernel[3][3]~q\ & \kernel[3][2]~q\ & \kernel[3][1]~q\ & \kernel[3][0]~q\);

\Mult15~mac_AY_bus\ <= (\pattern[8][7]~q\ & \pattern[8][6]~q\ & \pattern[8][5]~q\ & \pattern[8][4]~q\ & \pattern[8][3]~q\ & \pattern[8][2]~q\ & \pattern[8][1]~q\ & \pattern[8][0]~q\);

\Mult15~mac_BX_bus\ <= (\Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & 
\Mult14~339\ & \Mult14~339\ & \Mult14~339\);

\Mult15~mac_BY_bus\ <= (\Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~339\ & \Mult14~338\ & \Mult14~337\ & \Mult14~336\ & \Mult14~335\ & 
\Mult14~334\ & \Mult14~333\ & \Mult14~mac_resulta\);

\Mult15~mac_resulta\ <= \Mult15~mac_RESULTA_bus\(0);
\Mult15~333\ <= \Mult15~mac_RESULTA_bus\(1);
\Mult15~334\ <= \Mult15~mac_RESULTA_bus\(2);
\Mult15~335\ <= \Mult15~mac_RESULTA_bus\(3);
\Mult15~336\ <= \Mult15~mac_RESULTA_bus\(4);
\Mult15~337\ <= \Mult15~mac_RESULTA_bus\(5);
\Mult15~338\ <= \Mult15~mac_RESULTA_bus\(6);
\Mult15~339\ <= \Mult15~mac_RESULTA_bus\(7);
\Mult15~8\ <= \Mult15~mac_RESULTA_bus\(8);
\Mult15~9\ <= \Mult15~mac_RESULTA_bus\(9);
\Mult15~10\ <= \Mult15~mac_RESULTA_bus\(10);
\Mult15~11\ <= \Mult15~mac_RESULTA_bus\(11);
\Mult15~12\ <= \Mult15~mac_RESULTA_bus\(12);
\Mult15~13\ <= \Mult15~mac_RESULTA_bus\(13);
\Mult15~14\ <= \Mult15~mac_RESULTA_bus\(14);
\Mult15~15\ <= \Mult15~mac_RESULTA_bus\(15);
\Mult15~16\ <= \Mult15~mac_RESULTA_bus\(16);
\Mult15~17\ <= \Mult15~mac_RESULTA_bus\(17);
\Mult15~18\ <= \Mult15~mac_RESULTA_bus\(18);
\Mult15~19\ <= \Mult15~mac_RESULTA_bus\(19);
\Mult15~20\ <= \Mult15~mac_RESULTA_bus\(20);
\Mult15~21\ <= \Mult15~mac_RESULTA_bus\(21);
\Mult15~22\ <= \Mult15~mac_RESULTA_bus\(22);
\Mult15~23\ <= \Mult15~mac_RESULTA_bus\(23);
\Mult15~24\ <= \Mult15~mac_RESULTA_bus\(24);
\Mult15~25\ <= \Mult15~mac_RESULTA_bus\(25);
\Mult15~26\ <= \Mult15~mac_RESULTA_bus\(26);
\Mult15~27\ <= \Mult15~mac_RESULTA_bus\(27);
\Mult15~28\ <= \Mult15~mac_RESULTA_bus\(28);
\Mult15~29\ <= \Mult15~mac_RESULTA_bus\(29);
\Mult15~30\ <= \Mult15~mac_RESULTA_bus\(30);
\Mult15~31\ <= \Mult15~mac_RESULTA_bus\(31);
\Mult15~32\ <= \Mult15~mac_RESULTA_bus\(32);
\Mult15~33\ <= \Mult15~mac_RESULTA_bus\(33);
\Mult15~34\ <= \Mult15~mac_RESULTA_bus\(34);
\Mult15~35\ <= \Mult15~mac_RESULTA_bus\(35);
\Mult15~36\ <= \Mult15~mac_RESULTA_bus\(36);
\Mult15~37\ <= \Mult15~mac_RESULTA_bus\(37);
\Mult15~38\ <= \Mult15~mac_RESULTA_bus\(38);
\Mult15~39\ <= \Mult15~mac_RESULTA_bus\(39);
\Mult15~40\ <= \Mult15~mac_RESULTA_bus\(40);
\Mult15~41\ <= \Mult15~mac_RESULTA_bus\(41);
\Mult15~42\ <= \Mult15~mac_RESULTA_bus\(42);
\Mult15~43\ <= \Mult15~mac_RESULTA_bus\(43);
\Mult15~44\ <= \Mult15~mac_RESULTA_bus\(44);
\Mult15~45\ <= \Mult15~mac_RESULTA_bus\(45);
\Mult15~46\ <= \Mult15~mac_RESULTA_bus\(46);
\Mult15~47\ <= \Mult15~mac_RESULTA_bus\(47);
\Mult15~48\ <= \Mult15~mac_RESULTA_bus\(48);
\Mult15~49\ <= \Mult15~mac_RESULTA_bus\(49);
\Mult15~50\ <= \Mult15~mac_RESULTA_bus\(50);
\Mult15~51\ <= \Mult15~mac_RESULTA_bus\(51);
\Mult15~52\ <= \Mult15~mac_RESULTA_bus\(52);
\Mult15~53\ <= \Mult15~mac_RESULTA_bus\(53);
\Mult15~54\ <= \Mult15~mac_RESULTA_bus\(54);
\Mult15~55\ <= \Mult15~mac_RESULTA_bus\(55);
\Mult15~56\ <= \Mult15~mac_RESULTA_bus\(56);
\Mult15~57\ <= \Mult15~mac_RESULTA_bus\(57);
\Mult15~58\ <= \Mult15~mac_RESULTA_bus\(58);
\Mult15~59\ <= \Mult15~mac_RESULTA_bus\(59);
\Mult15~60\ <= \Mult15~mac_RESULTA_bus\(60);
\Mult15~61\ <= \Mult15~mac_RESULTA_bus\(61);
\Mult15~62\ <= \Mult15~mac_RESULTA_bus\(62);
\Mult15~63\ <= \Mult15~mac_RESULTA_bus\(63);

\Mult2~mac_AX_bus\ <= (\kernel[2][7]~q\ & \kernel[2][6]~q\ & \kernel[2][5]~q\ & \kernel[2][4]~q\ & \kernel[2][3]~q\ & \kernel[2][2]~q\ & \kernel[2][1]~q\ & \kernel[2][0]~q\);

\Mult2~mac_AY_bus\ <= (\pattern[3][7]~q\ & \pattern[3][6]~q\ & \pattern[3][5]~q\ & \pattern[3][4]~q\ & \pattern[3][3]~q\ & \pattern[3][2]~q\ & \pattern[3][1]~q\ & \pattern[3][0]~q\);

\Mult2~mac_BX_bus\ <= (\Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\);

\Mult2~mac_BY_bus\ <= (\Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~15\ & \Add4~14\ & \Add4~13\ & \Add4~12\ & \Add4~11\ & \Add4~10\ & \Add4~9\ & \Add4~8_resulta\);

\Mult2~mac_resulta\ <= \Mult2~mac_RESULTA_bus\(0);
\Mult2~333\ <= \Mult2~mac_RESULTA_bus\(1);
\Mult2~334\ <= \Mult2~mac_RESULTA_bus\(2);
\Mult2~335\ <= \Mult2~mac_RESULTA_bus\(3);
\Mult2~336\ <= \Mult2~mac_RESULTA_bus\(4);
\Mult2~337\ <= \Mult2~mac_RESULTA_bus\(5);
\Mult2~338\ <= \Mult2~mac_RESULTA_bus\(6);
\Mult2~339\ <= \Mult2~mac_RESULTA_bus\(7);
\Mult2~8\ <= \Mult2~mac_RESULTA_bus\(8);
\Mult2~9\ <= \Mult2~mac_RESULTA_bus\(9);
\Mult2~10\ <= \Mult2~mac_RESULTA_bus\(10);
\Mult2~11\ <= \Mult2~mac_RESULTA_bus\(11);
\Mult2~12\ <= \Mult2~mac_RESULTA_bus\(12);
\Mult2~13\ <= \Mult2~mac_RESULTA_bus\(13);
\Mult2~14\ <= \Mult2~mac_RESULTA_bus\(14);
\Mult2~15\ <= \Mult2~mac_RESULTA_bus\(15);
\Mult2~16\ <= \Mult2~mac_RESULTA_bus\(16);
\Mult2~17\ <= \Mult2~mac_RESULTA_bus\(17);
\Mult2~18\ <= \Mult2~mac_RESULTA_bus\(18);
\Mult2~19\ <= \Mult2~mac_RESULTA_bus\(19);
\Mult2~20\ <= \Mult2~mac_RESULTA_bus\(20);
\Mult2~21\ <= \Mult2~mac_RESULTA_bus\(21);
\Mult2~22\ <= \Mult2~mac_RESULTA_bus\(22);
\Mult2~23\ <= \Mult2~mac_RESULTA_bus\(23);
\Mult2~24\ <= \Mult2~mac_RESULTA_bus\(24);
\Mult2~25\ <= \Mult2~mac_RESULTA_bus\(25);
\Mult2~26\ <= \Mult2~mac_RESULTA_bus\(26);
\Mult2~27\ <= \Mult2~mac_RESULTA_bus\(27);
\Mult2~28\ <= \Mult2~mac_RESULTA_bus\(28);
\Mult2~29\ <= \Mult2~mac_RESULTA_bus\(29);
\Mult2~30\ <= \Mult2~mac_RESULTA_bus\(30);
\Mult2~31\ <= \Mult2~mac_RESULTA_bus\(31);
\Mult2~32\ <= \Mult2~mac_RESULTA_bus\(32);
\Mult2~33\ <= \Mult2~mac_RESULTA_bus\(33);
\Mult2~34\ <= \Mult2~mac_RESULTA_bus\(34);
\Mult2~35\ <= \Mult2~mac_RESULTA_bus\(35);
\Mult2~36\ <= \Mult2~mac_RESULTA_bus\(36);
\Mult2~37\ <= \Mult2~mac_RESULTA_bus\(37);
\Mult2~38\ <= \Mult2~mac_RESULTA_bus\(38);
\Mult2~39\ <= \Mult2~mac_RESULTA_bus\(39);
\Mult2~40\ <= \Mult2~mac_RESULTA_bus\(40);
\Mult2~41\ <= \Mult2~mac_RESULTA_bus\(41);
\Mult2~42\ <= \Mult2~mac_RESULTA_bus\(42);
\Mult2~43\ <= \Mult2~mac_RESULTA_bus\(43);
\Mult2~44\ <= \Mult2~mac_RESULTA_bus\(44);
\Mult2~45\ <= \Mult2~mac_RESULTA_bus\(45);
\Mult2~46\ <= \Mult2~mac_RESULTA_bus\(46);
\Mult2~47\ <= \Mult2~mac_RESULTA_bus\(47);
\Mult2~48\ <= \Mult2~mac_RESULTA_bus\(48);
\Mult2~49\ <= \Mult2~mac_RESULTA_bus\(49);
\Mult2~50\ <= \Mult2~mac_RESULTA_bus\(50);
\Mult2~51\ <= \Mult2~mac_RESULTA_bus\(51);
\Mult2~52\ <= \Mult2~mac_RESULTA_bus\(52);
\Mult2~53\ <= \Mult2~mac_RESULTA_bus\(53);
\Mult2~54\ <= \Mult2~mac_RESULTA_bus\(54);
\Mult2~55\ <= \Mult2~mac_RESULTA_bus\(55);
\Mult2~56\ <= \Mult2~mac_RESULTA_bus\(56);
\Mult2~57\ <= \Mult2~mac_RESULTA_bus\(57);
\Mult2~58\ <= \Mult2~mac_RESULTA_bus\(58);
\Mult2~59\ <= \Mult2~mac_RESULTA_bus\(59);
\Mult2~60\ <= \Mult2~mac_RESULTA_bus\(60);
\Mult2~61\ <= \Mult2~mac_RESULTA_bus\(61);
\Mult2~62\ <= \Mult2~mac_RESULTA_bus\(62);
\Mult2~63\ <= \Mult2~mac_RESULTA_bus\(63);

\Mult6~mac_AX_bus\ <= (\kernel[2][7]~q\ & \kernel[2][6]~q\ & \kernel[2][5]~q\ & \kernel[2][4]~q\ & \kernel[2][3]~q\ & \kernel[2][2]~q\ & \kernel[2][1]~q\ & \kernel[2][0]~q\);

\Mult6~mac_AY_bus\ <= (\pattern[4][7]~q\ & \pattern[4][6]~q\ & \pattern[4][5]~q\ & \pattern[4][4]~q\ & \pattern[4][3]~q\ & \pattern[4][2]~q\ & \pattern[4][1]~q\ & \pattern[4][0]~q\);

\Mult6~mac_BX_bus\ <= (\Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\);

\Mult6~mac_BY_bus\ <= (\Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~15\ & \Add7~14\ & \Add7~13\ & \Add7~12\ & \Add7~11\ & \Add7~10\ & \Add7~9\ & \Add7~8_resulta\);

\Mult6~mac_resulta\ <= \Mult6~mac_RESULTA_bus\(0);
\Mult6~333\ <= \Mult6~mac_RESULTA_bus\(1);
\Mult6~334\ <= \Mult6~mac_RESULTA_bus\(2);
\Mult6~335\ <= \Mult6~mac_RESULTA_bus\(3);
\Mult6~336\ <= \Mult6~mac_RESULTA_bus\(4);
\Mult6~337\ <= \Mult6~mac_RESULTA_bus\(5);
\Mult6~338\ <= \Mult6~mac_RESULTA_bus\(6);
\Mult6~339\ <= \Mult6~mac_RESULTA_bus\(7);
\Mult6~8\ <= \Mult6~mac_RESULTA_bus\(8);
\Mult6~9\ <= \Mult6~mac_RESULTA_bus\(9);
\Mult6~10\ <= \Mult6~mac_RESULTA_bus\(10);
\Mult6~11\ <= \Mult6~mac_RESULTA_bus\(11);
\Mult6~12\ <= \Mult6~mac_RESULTA_bus\(12);
\Mult6~13\ <= \Mult6~mac_RESULTA_bus\(13);
\Mult6~14\ <= \Mult6~mac_RESULTA_bus\(14);
\Mult6~15\ <= \Mult6~mac_RESULTA_bus\(15);
\Mult6~16\ <= \Mult6~mac_RESULTA_bus\(16);
\Mult6~17\ <= \Mult6~mac_RESULTA_bus\(17);
\Mult6~18\ <= \Mult6~mac_RESULTA_bus\(18);
\Mult6~19\ <= \Mult6~mac_RESULTA_bus\(19);
\Mult6~20\ <= \Mult6~mac_RESULTA_bus\(20);
\Mult6~21\ <= \Mult6~mac_RESULTA_bus\(21);
\Mult6~22\ <= \Mult6~mac_RESULTA_bus\(22);
\Mult6~23\ <= \Mult6~mac_RESULTA_bus\(23);
\Mult6~24\ <= \Mult6~mac_RESULTA_bus\(24);
\Mult6~25\ <= \Mult6~mac_RESULTA_bus\(25);
\Mult6~26\ <= \Mult6~mac_RESULTA_bus\(26);
\Mult6~27\ <= \Mult6~mac_RESULTA_bus\(27);
\Mult6~28\ <= \Mult6~mac_RESULTA_bus\(28);
\Mult6~29\ <= \Mult6~mac_RESULTA_bus\(29);
\Mult6~30\ <= \Mult6~mac_RESULTA_bus\(30);
\Mult6~31\ <= \Mult6~mac_RESULTA_bus\(31);
\Mult6~32\ <= \Mult6~mac_RESULTA_bus\(32);
\Mult6~33\ <= \Mult6~mac_RESULTA_bus\(33);
\Mult6~34\ <= \Mult6~mac_RESULTA_bus\(34);
\Mult6~35\ <= \Mult6~mac_RESULTA_bus\(35);
\Mult6~36\ <= \Mult6~mac_RESULTA_bus\(36);
\Mult6~37\ <= \Mult6~mac_RESULTA_bus\(37);
\Mult6~38\ <= \Mult6~mac_RESULTA_bus\(38);
\Mult6~39\ <= \Mult6~mac_RESULTA_bus\(39);
\Mult6~40\ <= \Mult6~mac_RESULTA_bus\(40);
\Mult6~41\ <= \Mult6~mac_RESULTA_bus\(41);
\Mult6~42\ <= \Mult6~mac_RESULTA_bus\(42);
\Mult6~43\ <= \Mult6~mac_RESULTA_bus\(43);
\Mult6~44\ <= \Mult6~mac_RESULTA_bus\(44);
\Mult6~45\ <= \Mult6~mac_RESULTA_bus\(45);
\Mult6~46\ <= \Mult6~mac_RESULTA_bus\(46);
\Mult6~47\ <= \Mult6~mac_RESULTA_bus\(47);
\Mult6~48\ <= \Mult6~mac_RESULTA_bus\(48);
\Mult6~49\ <= \Mult6~mac_RESULTA_bus\(49);
\Mult6~50\ <= \Mult6~mac_RESULTA_bus\(50);
\Mult6~51\ <= \Mult6~mac_RESULTA_bus\(51);
\Mult6~52\ <= \Mult6~mac_RESULTA_bus\(52);
\Mult6~53\ <= \Mult6~mac_RESULTA_bus\(53);
\Mult6~54\ <= \Mult6~mac_RESULTA_bus\(54);
\Mult6~55\ <= \Mult6~mac_RESULTA_bus\(55);
\Mult6~56\ <= \Mult6~mac_RESULTA_bus\(56);
\Mult6~57\ <= \Mult6~mac_RESULTA_bus\(57);
\Mult6~58\ <= \Mult6~mac_RESULTA_bus\(58);
\Mult6~59\ <= \Mult6~mac_RESULTA_bus\(59);
\Mult6~60\ <= \Mult6~mac_RESULTA_bus\(60);
\Mult6~61\ <= \Mult6~mac_RESULTA_bus\(61);
\Mult6~62\ <= \Mult6~mac_RESULTA_bus\(62);
\Mult6~63\ <= \Mult6~mac_RESULTA_bus\(63);

\Mult10~mac_AX_bus\ <= (\kernel[2][7]~q\ & \kernel[2][6]~q\ & \kernel[2][5]~q\ & \kernel[2][4]~q\ & \kernel[2][3]~q\ & \kernel[2][2]~q\ & \kernel[2][1]~q\ & \kernel[2][0]~q\);

\Mult10~mac_AY_bus\ <= (\pattern[6][7]~q\ & \pattern[6][6]~q\ & \pattern[6][5]~q\ & \pattern[6][4]~q\ & \pattern[6][3]~q\ & \pattern[6][2]~q\ & \pattern[6][1]~q\ & \pattern[6][0]~q\);

\Mult10~mac_BX_bus\ <= (\Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\
);

\Mult10~mac_BY_bus\ <= (\Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~15\ & \Add10~14\ & \Add10~13\ & \Add10~12\ & \Add10~11\ & \Add10~10\ & \Add10~9\ & 
\Add10~8_resulta\);

\Mult10~mac_resulta\ <= \Mult10~mac_RESULTA_bus\(0);
\Mult10~333\ <= \Mult10~mac_RESULTA_bus\(1);
\Mult10~334\ <= \Mult10~mac_RESULTA_bus\(2);
\Mult10~335\ <= \Mult10~mac_RESULTA_bus\(3);
\Mult10~336\ <= \Mult10~mac_RESULTA_bus\(4);
\Mult10~337\ <= \Mult10~mac_RESULTA_bus\(5);
\Mult10~338\ <= \Mult10~mac_RESULTA_bus\(6);
\Mult10~339\ <= \Mult10~mac_RESULTA_bus\(7);
\Mult10~8\ <= \Mult10~mac_RESULTA_bus\(8);
\Mult10~9\ <= \Mult10~mac_RESULTA_bus\(9);
\Mult10~10\ <= \Mult10~mac_RESULTA_bus\(10);
\Mult10~11\ <= \Mult10~mac_RESULTA_bus\(11);
\Mult10~12\ <= \Mult10~mac_RESULTA_bus\(12);
\Mult10~13\ <= \Mult10~mac_RESULTA_bus\(13);
\Mult10~14\ <= \Mult10~mac_RESULTA_bus\(14);
\Mult10~15\ <= \Mult10~mac_RESULTA_bus\(15);
\Mult10~16\ <= \Mult10~mac_RESULTA_bus\(16);
\Mult10~17\ <= \Mult10~mac_RESULTA_bus\(17);
\Mult10~18\ <= \Mult10~mac_RESULTA_bus\(18);
\Mult10~19\ <= \Mult10~mac_RESULTA_bus\(19);
\Mult10~20\ <= \Mult10~mac_RESULTA_bus\(20);
\Mult10~21\ <= \Mult10~mac_RESULTA_bus\(21);
\Mult10~22\ <= \Mult10~mac_RESULTA_bus\(22);
\Mult10~23\ <= \Mult10~mac_RESULTA_bus\(23);
\Mult10~24\ <= \Mult10~mac_RESULTA_bus\(24);
\Mult10~25\ <= \Mult10~mac_RESULTA_bus\(25);
\Mult10~26\ <= \Mult10~mac_RESULTA_bus\(26);
\Mult10~27\ <= \Mult10~mac_RESULTA_bus\(27);
\Mult10~28\ <= \Mult10~mac_RESULTA_bus\(28);
\Mult10~29\ <= \Mult10~mac_RESULTA_bus\(29);
\Mult10~30\ <= \Mult10~mac_RESULTA_bus\(30);
\Mult10~31\ <= \Mult10~mac_RESULTA_bus\(31);
\Mult10~32\ <= \Mult10~mac_RESULTA_bus\(32);
\Mult10~33\ <= \Mult10~mac_RESULTA_bus\(33);
\Mult10~34\ <= \Mult10~mac_RESULTA_bus\(34);
\Mult10~35\ <= \Mult10~mac_RESULTA_bus\(35);
\Mult10~36\ <= \Mult10~mac_RESULTA_bus\(36);
\Mult10~37\ <= \Mult10~mac_RESULTA_bus\(37);
\Mult10~38\ <= \Mult10~mac_RESULTA_bus\(38);
\Mult10~39\ <= \Mult10~mac_RESULTA_bus\(39);
\Mult10~40\ <= \Mult10~mac_RESULTA_bus\(40);
\Mult10~41\ <= \Mult10~mac_RESULTA_bus\(41);
\Mult10~42\ <= \Mult10~mac_RESULTA_bus\(42);
\Mult10~43\ <= \Mult10~mac_RESULTA_bus\(43);
\Mult10~44\ <= \Mult10~mac_RESULTA_bus\(44);
\Mult10~45\ <= \Mult10~mac_RESULTA_bus\(45);
\Mult10~46\ <= \Mult10~mac_RESULTA_bus\(46);
\Mult10~47\ <= \Mult10~mac_RESULTA_bus\(47);
\Mult10~48\ <= \Mult10~mac_RESULTA_bus\(48);
\Mult10~49\ <= \Mult10~mac_RESULTA_bus\(49);
\Mult10~50\ <= \Mult10~mac_RESULTA_bus\(50);
\Mult10~51\ <= \Mult10~mac_RESULTA_bus\(51);
\Mult10~52\ <= \Mult10~mac_RESULTA_bus\(52);
\Mult10~53\ <= \Mult10~mac_RESULTA_bus\(53);
\Mult10~54\ <= \Mult10~mac_RESULTA_bus\(54);
\Mult10~55\ <= \Mult10~mac_RESULTA_bus\(55);
\Mult10~56\ <= \Mult10~mac_RESULTA_bus\(56);
\Mult10~57\ <= \Mult10~mac_RESULTA_bus\(57);
\Mult10~58\ <= \Mult10~mac_RESULTA_bus\(58);
\Mult10~59\ <= \Mult10~mac_RESULTA_bus\(59);
\Mult10~60\ <= \Mult10~mac_RESULTA_bus\(60);
\Mult10~61\ <= \Mult10~mac_RESULTA_bus\(61);
\Mult10~62\ <= \Mult10~mac_RESULTA_bus\(62);
\Mult10~63\ <= \Mult10~mac_RESULTA_bus\(63);

\Mult14~mac_AX_bus\ <= (\kernel[2][7]~q\ & \kernel[2][6]~q\ & \kernel[2][5]~q\ & \kernel[2][4]~q\ & \kernel[2][3]~q\ & \kernel[2][2]~q\ & \kernel[2][1]~q\ & \kernel[2][0]~q\);

\Mult14~mac_AY_bus\ <= (\pattern[7][7]~q\ & \pattern[7][6]~q\ & \pattern[7][5]~q\ & \pattern[7][4]~q\ & \pattern[7][3]~q\ & \pattern[7][2]~q\ & \pattern[7][1]~q\ & \pattern[7][0]~q\);

\Mult14~mac_BX_bus\ <= (\Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\
);

\Mult14~mac_BY_bus\ <= (\Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~15\ & \Add13~14\ & \Add13~13\ & \Add13~12\ & \Add13~11\ & \Add13~10\ & \Add13~9\ & 
\Add13~8_resulta\);

\Mult14~mac_resulta\ <= \Mult14~mac_RESULTA_bus\(0);
\Mult14~333\ <= \Mult14~mac_RESULTA_bus\(1);
\Mult14~334\ <= \Mult14~mac_RESULTA_bus\(2);
\Mult14~335\ <= \Mult14~mac_RESULTA_bus\(3);
\Mult14~336\ <= \Mult14~mac_RESULTA_bus\(4);
\Mult14~337\ <= \Mult14~mac_RESULTA_bus\(5);
\Mult14~338\ <= \Mult14~mac_RESULTA_bus\(6);
\Mult14~339\ <= \Mult14~mac_RESULTA_bus\(7);
\Mult14~8\ <= \Mult14~mac_RESULTA_bus\(8);
\Mult14~9\ <= \Mult14~mac_RESULTA_bus\(9);
\Mult14~10\ <= \Mult14~mac_RESULTA_bus\(10);
\Mult14~11\ <= \Mult14~mac_RESULTA_bus\(11);
\Mult14~12\ <= \Mult14~mac_RESULTA_bus\(12);
\Mult14~13\ <= \Mult14~mac_RESULTA_bus\(13);
\Mult14~14\ <= \Mult14~mac_RESULTA_bus\(14);
\Mult14~15\ <= \Mult14~mac_RESULTA_bus\(15);
\Mult14~16\ <= \Mult14~mac_RESULTA_bus\(16);
\Mult14~17\ <= \Mult14~mac_RESULTA_bus\(17);
\Mult14~18\ <= \Mult14~mac_RESULTA_bus\(18);
\Mult14~19\ <= \Mult14~mac_RESULTA_bus\(19);
\Mult14~20\ <= \Mult14~mac_RESULTA_bus\(20);
\Mult14~21\ <= \Mult14~mac_RESULTA_bus\(21);
\Mult14~22\ <= \Mult14~mac_RESULTA_bus\(22);
\Mult14~23\ <= \Mult14~mac_RESULTA_bus\(23);
\Mult14~24\ <= \Mult14~mac_RESULTA_bus\(24);
\Mult14~25\ <= \Mult14~mac_RESULTA_bus\(25);
\Mult14~26\ <= \Mult14~mac_RESULTA_bus\(26);
\Mult14~27\ <= \Mult14~mac_RESULTA_bus\(27);
\Mult14~28\ <= \Mult14~mac_RESULTA_bus\(28);
\Mult14~29\ <= \Mult14~mac_RESULTA_bus\(29);
\Mult14~30\ <= \Mult14~mac_RESULTA_bus\(30);
\Mult14~31\ <= \Mult14~mac_RESULTA_bus\(31);
\Mult14~32\ <= \Mult14~mac_RESULTA_bus\(32);
\Mult14~33\ <= \Mult14~mac_RESULTA_bus\(33);
\Mult14~34\ <= \Mult14~mac_RESULTA_bus\(34);
\Mult14~35\ <= \Mult14~mac_RESULTA_bus\(35);
\Mult14~36\ <= \Mult14~mac_RESULTA_bus\(36);
\Mult14~37\ <= \Mult14~mac_RESULTA_bus\(37);
\Mult14~38\ <= \Mult14~mac_RESULTA_bus\(38);
\Mult14~39\ <= \Mult14~mac_RESULTA_bus\(39);
\Mult14~40\ <= \Mult14~mac_RESULTA_bus\(40);
\Mult14~41\ <= \Mult14~mac_RESULTA_bus\(41);
\Mult14~42\ <= \Mult14~mac_RESULTA_bus\(42);
\Mult14~43\ <= \Mult14~mac_RESULTA_bus\(43);
\Mult14~44\ <= \Mult14~mac_RESULTA_bus\(44);
\Mult14~45\ <= \Mult14~mac_RESULTA_bus\(45);
\Mult14~46\ <= \Mult14~mac_RESULTA_bus\(46);
\Mult14~47\ <= \Mult14~mac_RESULTA_bus\(47);
\Mult14~48\ <= \Mult14~mac_RESULTA_bus\(48);
\Mult14~49\ <= \Mult14~mac_RESULTA_bus\(49);
\Mult14~50\ <= \Mult14~mac_RESULTA_bus\(50);
\Mult14~51\ <= \Mult14~mac_RESULTA_bus\(51);
\Mult14~52\ <= \Mult14~mac_RESULTA_bus\(52);
\Mult14~53\ <= \Mult14~mac_RESULTA_bus\(53);
\Mult14~54\ <= \Mult14~mac_RESULTA_bus\(54);
\Mult14~55\ <= \Mult14~mac_RESULTA_bus\(55);
\Mult14~56\ <= \Mult14~mac_RESULTA_bus\(56);
\Mult14~57\ <= \Mult14~mac_RESULTA_bus\(57);
\Mult14~58\ <= \Mult14~mac_RESULTA_bus\(58);
\Mult14~59\ <= \Mult14~mac_RESULTA_bus\(59);
\Mult14~60\ <= \Mult14~mac_RESULTA_bus\(60);
\Mult14~61\ <= \Mult14~mac_RESULTA_bus\(61);
\Mult14~62\ <= \Mult14~mac_RESULTA_bus\(62);
\Mult14~63\ <= \Mult14~mac_RESULTA_bus\(63);

\Add4~8_AX_bus\ <= (\kernel[1][7]~q\ & \kernel[1][6]~q\ & \kernel[1][5]~q\ & \kernel[1][4]~q\ & \kernel[1][3]~q\ & \kernel[1][2]~q\ & \kernel[1][1]~q\ & \kernel[1][0]~q\);

\Add4~8_AY_bus\ <= (\pattern[1][7]~q\ & \pattern[1][6]~q\ & \pattern[1][5]~q\ & \pattern[1][4]~q\ & \pattern[1][3]~q\ & \pattern[1][2]~q\ & \pattern[1][1]~q\ & \pattern[1][0]~q\);

\Add4~8_BX_bus\ <= (\kernel[0][7]~q\ & \kernel[0][6]~q\ & \kernel[0][5]~q\ & \kernel[0][4]~q\ & \kernel[0][3]~q\ & \kernel[0][2]~q\ & \kernel[0][1]~q\ & \kernel[0][0]~q\);

\Add4~8_BY_bus\ <= (\pattern[0][7]~q\ & \pattern[0][6]~q\ & \pattern[0][5]~q\ & \pattern[0][4]~q\ & \pattern[0][3]~q\ & \pattern[0][2]~q\ & \pattern[0][1]~q\ & \pattern[0][0]~q\);

\Add4~8_resulta\ <= \Add4~8_RESULTA_bus\(0);
\Add4~9\ <= \Add4~8_RESULTA_bus\(1);
\Add4~10\ <= \Add4~8_RESULTA_bus\(2);
\Add4~11\ <= \Add4~8_RESULTA_bus\(3);
\Add4~12\ <= \Add4~8_RESULTA_bus\(4);
\Add4~13\ <= \Add4~8_RESULTA_bus\(5);
\Add4~14\ <= \Add4~8_RESULTA_bus\(6);
\Add4~15\ <= \Add4~8_RESULTA_bus\(7);
\Add4~16\ <= \Add4~8_RESULTA_bus\(8);
\Add4~17\ <= \Add4~8_RESULTA_bus\(9);
\Add4~18\ <= \Add4~8_RESULTA_bus\(10);
\Add4~19\ <= \Add4~8_RESULTA_bus\(11);
\Add4~20\ <= \Add4~8_RESULTA_bus\(12);
\Add4~21\ <= \Add4~8_RESULTA_bus\(13);
\Add4~22\ <= \Add4~8_RESULTA_bus\(14);
\Add4~23\ <= \Add4~8_RESULTA_bus\(15);
\Add4~24\ <= \Add4~8_RESULTA_bus\(16);
\Add4~25\ <= \Add4~8_RESULTA_bus\(17);
\Add4~26\ <= \Add4~8_RESULTA_bus\(18);
\Add4~27\ <= \Add4~8_RESULTA_bus\(19);
\Add4~28\ <= \Add4~8_RESULTA_bus\(20);
\Add4~29\ <= \Add4~8_RESULTA_bus\(21);
\Add4~30\ <= \Add4~8_RESULTA_bus\(22);
\Add4~31\ <= \Add4~8_RESULTA_bus\(23);
\Add4~32\ <= \Add4~8_RESULTA_bus\(24);
\Add4~33\ <= \Add4~8_RESULTA_bus\(25);
\Add4~34\ <= \Add4~8_RESULTA_bus\(26);
\Add4~35\ <= \Add4~8_RESULTA_bus\(27);
\Add4~36\ <= \Add4~8_RESULTA_bus\(28);
\Add4~37\ <= \Add4~8_RESULTA_bus\(29);
\Add4~38\ <= \Add4~8_RESULTA_bus\(30);
\Add4~39\ <= \Add4~8_RESULTA_bus\(31);
\Add4~40\ <= \Add4~8_RESULTA_bus\(32);
\Add4~41\ <= \Add4~8_RESULTA_bus\(33);
\Add4~42\ <= \Add4~8_RESULTA_bus\(34);
\Add4~43\ <= \Add4~8_RESULTA_bus\(35);
\Add4~44\ <= \Add4~8_RESULTA_bus\(36);
\Add4~45\ <= \Add4~8_RESULTA_bus\(37);
\Add4~46\ <= \Add4~8_RESULTA_bus\(38);
\Add4~47\ <= \Add4~8_RESULTA_bus\(39);
\Add4~48\ <= \Add4~8_RESULTA_bus\(40);
\Add4~49\ <= \Add4~8_RESULTA_bus\(41);
\Add4~50\ <= \Add4~8_RESULTA_bus\(42);
\Add4~51\ <= \Add4~8_RESULTA_bus\(43);
\Add4~52\ <= \Add4~8_RESULTA_bus\(44);
\Add4~53\ <= \Add4~8_RESULTA_bus\(45);
\Add4~54\ <= \Add4~8_RESULTA_bus\(46);
\Add4~55\ <= \Add4~8_RESULTA_bus\(47);
\Add4~56\ <= \Add4~8_RESULTA_bus\(48);
\Add4~57\ <= \Add4~8_RESULTA_bus\(49);
\Add4~58\ <= \Add4~8_RESULTA_bus\(50);
\Add4~59\ <= \Add4~8_RESULTA_bus\(51);
\Add4~60\ <= \Add4~8_RESULTA_bus\(52);
\Add4~61\ <= \Add4~8_RESULTA_bus\(53);
\Add4~62\ <= \Add4~8_RESULTA_bus\(54);
\Add4~63\ <= \Add4~8_RESULTA_bus\(55);
\Add4~64\ <= \Add4~8_RESULTA_bus\(56);
\Add4~65\ <= \Add4~8_RESULTA_bus\(57);
\Add4~66\ <= \Add4~8_RESULTA_bus\(58);
\Add4~67\ <= \Add4~8_RESULTA_bus\(59);
\Add4~68\ <= \Add4~8_RESULTA_bus\(60);
\Add4~69\ <= \Add4~8_RESULTA_bus\(61);
\Add4~70\ <= \Add4~8_RESULTA_bus\(62);
\Add4~71\ <= \Add4~8_RESULTA_bus\(63);

\Add7~8_AX_bus\ <= (\kernel[1][7]~q\ & \kernel[1][6]~q\ & \kernel[1][5]~q\ & \kernel[1][4]~q\ & \kernel[1][3]~q\ & \kernel[1][2]~q\ & \kernel[1][1]~q\ & \kernel[1][0]~q\);

\Add7~8_AY_bus\ <= (\pattern[2][7]~q\ & \pattern[2][6]~q\ & \pattern[2][5]~q\ & \pattern[2][4]~q\ & \pattern[2][3]~q\ & \pattern[2][2]~q\ & \pattern[2][1]~q\ & \pattern[2][0]~q\);

\Add7~8_BX_bus\ <= (\kernel[0][7]~q\ & \kernel[0][6]~q\ & \kernel[0][5]~q\ & \kernel[0][4]~q\ & \kernel[0][3]~q\ & \kernel[0][2]~q\ & \kernel[0][1]~q\ & \kernel[0][0]~q\);

\Add7~8_BY_bus\ <= (\pattern[1][7]~q\ & \pattern[1][6]~q\ & \pattern[1][5]~q\ & \pattern[1][4]~q\ & \pattern[1][3]~q\ & \pattern[1][2]~q\ & \pattern[1][1]~q\ & \pattern[1][0]~q\);

\Add7~8_resulta\ <= \Add7~8_RESULTA_bus\(0);
\Add7~9\ <= \Add7~8_RESULTA_bus\(1);
\Add7~10\ <= \Add7~8_RESULTA_bus\(2);
\Add7~11\ <= \Add7~8_RESULTA_bus\(3);
\Add7~12\ <= \Add7~8_RESULTA_bus\(4);
\Add7~13\ <= \Add7~8_RESULTA_bus\(5);
\Add7~14\ <= \Add7~8_RESULTA_bus\(6);
\Add7~15\ <= \Add7~8_RESULTA_bus\(7);
\Add7~16\ <= \Add7~8_RESULTA_bus\(8);
\Add7~17\ <= \Add7~8_RESULTA_bus\(9);
\Add7~18\ <= \Add7~8_RESULTA_bus\(10);
\Add7~19\ <= \Add7~8_RESULTA_bus\(11);
\Add7~20\ <= \Add7~8_RESULTA_bus\(12);
\Add7~21\ <= \Add7~8_RESULTA_bus\(13);
\Add7~22\ <= \Add7~8_RESULTA_bus\(14);
\Add7~23\ <= \Add7~8_RESULTA_bus\(15);
\Add7~24\ <= \Add7~8_RESULTA_bus\(16);
\Add7~25\ <= \Add7~8_RESULTA_bus\(17);
\Add7~26\ <= \Add7~8_RESULTA_bus\(18);
\Add7~27\ <= \Add7~8_RESULTA_bus\(19);
\Add7~28\ <= \Add7~8_RESULTA_bus\(20);
\Add7~29\ <= \Add7~8_RESULTA_bus\(21);
\Add7~30\ <= \Add7~8_RESULTA_bus\(22);
\Add7~31\ <= \Add7~8_RESULTA_bus\(23);
\Add7~32\ <= \Add7~8_RESULTA_bus\(24);
\Add7~33\ <= \Add7~8_RESULTA_bus\(25);
\Add7~34\ <= \Add7~8_RESULTA_bus\(26);
\Add7~35\ <= \Add7~8_RESULTA_bus\(27);
\Add7~36\ <= \Add7~8_RESULTA_bus\(28);
\Add7~37\ <= \Add7~8_RESULTA_bus\(29);
\Add7~38\ <= \Add7~8_RESULTA_bus\(30);
\Add7~39\ <= \Add7~8_RESULTA_bus\(31);
\Add7~40\ <= \Add7~8_RESULTA_bus\(32);
\Add7~41\ <= \Add7~8_RESULTA_bus\(33);
\Add7~42\ <= \Add7~8_RESULTA_bus\(34);
\Add7~43\ <= \Add7~8_RESULTA_bus\(35);
\Add7~44\ <= \Add7~8_RESULTA_bus\(36);
\Add7~45\ <= \Add7~8_RESULTA_bus\(37);
\Add7~46\ <= \Add7~8_RESULTA_bus\(38);
\Add7~47\ <= \Add7~8_RESULTA_bus\(39);
\Add7~48\ <= \Add7~8_RESULTA_bus\(40);
\Add7~49\ <= \Add7~8_RESULTA_bus\(41);
\Add7~50\ <= \Add7~8_RESULTA_bus\(42);
\Add7~51\ <= \Add7~8_RESULTA_bus\(43);
\Add7~52\ <= \Add7~8_RESULTA_bus\(44);
\Add7~53\ <= \Add7~8_RESULTA_bus\(45);
\Add7~54\ <= \Add7~8_RESULTA_bus\(46);
\Add7~55\ <= \Add7~8_RESULTA_bus\(47);
\Add7~56\ <= \Add7~8_RESULTA_bus\(48);
\Add7~57\ <= \Add7~8_RESULTA_bus\(49);
\Add7~58\ <= \Add7~8_RESULTA_bus\(50);
\Add7~59\ <= \Add7~8_RESULTA_bus\(51);
\Add7~60\ <= \Add7~8_RESULTA_bus\(52);
\Add7~61\ <= \Add7~8_RESULTA_bus\(53);
\Add7~62\ <= \Add7~8_RESULTA_bus\(54);
\Add7~63\ <= \Add7~8_RESULTA_bus\(55);
\Add7~64\ <= \Add7~8_RESULTA_bus\(56);
\Add7~65\ <= \Add7~8_RESULTA_bus\(57);
\Add7~66\ <= \Add7~8_RESULTA_bus\(58);
\Add7~67\ <= \Add7~8_RESULTA_bus\(59);
\Add7~68\ <= \Add7~8_RESULTA_bus\(60);
\Add7~69\ <= \Add7~8_RESULTA_bus\(61);
\Add7~70\ <= \Add7~8_RESULTA_bus\(62);
\Add7~71\ <= \Add7~8_RESULTA_bus\(63);

\Add10~8_AX_bus\ <= (\kernel[1][7]~q\ & \kernel[1][6]~q\ & \kernel[1][5]~q\ & \kernel[1][4]~q\ & \kernel[1][3]~q\ & \kernel[1][2]~q\ & \kernel[1][1]~q\ & \kernel[1][0]~q\);

\Add10~8_AY_bus\ <= (\pattern[4][7]~q\ & \pattern[4][6]~q\ & \pattern[4][5]~q\ & \pattern[4][4]~q\ & \pattern[4][3]~q\ & \pattern[4][2]~q\ & \pattern[4][1]~q\ & \pattern[4][0]~q\);

\Add10~8_BX_bus\ <= (\kernel[0][7]~q\ & \kernel[0][6]~q\ & \kernel[0][5]~q\ & \kernel[0][4]~q\ & \kernel[0][3]~q\ & \kernel[0][2]~q\ & \kernel[0][1]~q\ & \kernel[0][0]~q\);

\Add10~8_BY_bus\ <= (\pattern[3][7]~q\ & \pattern[3][6]~q\ & \pattern[3][5]~q\ & \pattern[3][4]~q\ & \pattern[3][3]~q\ & \pattern[3][2]~q\ & \pattern[3][1]~q\ & \pattern[3][0]~q\);

\Add10~8_resulta\ <= \Add10~8_RESULTA_bus\(0);
\Add10~9\ <= \Add10~8_RESULTA_bus\(1);
\Add10~10\ <= \Add10~8_RESULTA_bus\(2);
\Add10~11\ <= \Add10~8_RESULTA_bus\(3);
\Add10~12\ <= \Add10~8_RESULTA_bus\(4);
\Add10~13\ <= \Add10~8_RESULTA_bus\(5);
\Add10~14\ <= \Add10~8_RESULTA_bus\(6);
\Add10~15\ <= \Add10~8_RESULTA_bus\(7);
\Add10~16\ <= \Add10~8_RESULTA_bus\(8);
\Add10~17\ <= \Add10~8_RESULTA_bus\(9);
\Add10~18\ <= \Add10~8_RESULTA_bus\(10);
\Add10~19\ <= \Add10~8_RESULTA_bus\(11);
\Add10~20\ <= \Add10~8_RESULTA_bus\(12);
\Add10~21\ <= \Add10~8_RESULTA_bus\(13);
\Add10~22\ <= \Add10~8_RESULTA_bus\(14);
\Add10~23\ <= \Add10~8_RESULTA_bus\(15);
\Add10~24\ <= \Add10~8_RESULTA_bus\(16);
\Add10~25\ <= \Add10~8_RESULTA_bus\(17);
\Add10~26\ <= \Add10~8_RESULTA_bus\(18);
\Add10~27\ <= \Add10~8_RESULTA_bus\(19);
\Add10~28\ <= \Add10~8_RESULTA_bus\(20);
\Add10~29\ <= \Add10~8_RESULTA_bus\(21);
\Add10~30\ <= \Add10~8_RESULTA_bus\(22);
\Add10~31\ <= \Add10~8_RESULTA_bus\(23);
\Add10~32\ <= \Add10~8_RESULTA_bus\(24);
\Add10~33\ <= \Add10~8_RESULTA_bus\(25);
\Add10~34\ <= \Add10~8_RESULTA_bus\(26);
\Add10~35\ <= \Add10~8_RESULTA_bus\(27);
\Add10~36\ <= \Add10~8_RESULTA_bus\(28);
\Add10~37\ <= \Add10~8_RESULTA_bus\(29);
\Add10~38\ <= \Add10~8_RESULTA_bus\(30);
\Add10~39\ <= \Add10~8_RESULTA_bus\(31);
\Add10~40\ <= \Add10~8_RESULTA_bus\(32);
\Add10~41\ <= \Add10~8_RESULTA_bus\(33);
\Add10~42\ <= \Add10~8_RESULTA_bus\(34);
\Add10~43\ <= \Add10~8_RESULTA_bus\(35);
\Add10~44\ <= \Add10~8_RESULTA_bus\(36);
\Add10~45\ <= \Add10~8_RESULTA_bus\(37);
\Add10~46\ <= \Add10~8_RESULTA_bus\(38);
\Add10~47\ <= \Add10~8_RESULTA_bus\(39);
\Add10~48\ <= \Add10~8_RESULTA_bus\(40);
\Add10~49\ <= \Add10~8_RESULTA_bus\(41);
\Add10~50\ <= \Add10~8_RESULTA_bus\(42);
\Add10~51\ <= \Add10~8_RESULTA_bus\(43);
\Add10~52\ <= \Add10~8_RESULTA_bus\(44);
\Add10~53\ <= \Add10~8_RESULTA_bus\(45);
\Add10~54\ <= \Add10~8_RESULTA_bus\(46);
\Add10~55\ <= \Add10~8_RESULTA_bus\(47);
\Add10~56\ <= \Add10~8_RESULTA_bus\(48);
\Add10~57\ <= \Add10~8_RESULTA_bus\(49);
\Add10~58\ <= \Add10~8_RESULTA_bus\(50);
\Add10~59\ <= \Add10~8_RESULTA_bus\(51);
\Add10~60\ <= \Add10~8_RESULTA_bus\(52);
\Add10~61\ <= \Add10~8_RESULTA_bus\(53);
\Add10~62\ <= \Add10~8_RESULTA_bus\(54);
\Add10~63\ <= \Add10~8_RESULTA_bus\(55);
\Add10~64\ <= \Add10~8_RESULTA_bus\(56);
\Add10~65\ <= \Add10~8_RESULTA_bus\(57);
\Add10~66\ <= \Add10~8_RESULTA_bus\(58);
\Add10~67\ <= \Add10~8_RESULTA_bus\(59);
\Add10~68\ <= \Add10~8_RESULTA_bus\(60);
\Add10~69\ <= \Add10~8_RESULTA_bus\(61);
\Add10~70\ <= \Add10~8_RESULTA_bus\(62);
\Add10~71\ <= \Add10~8_RESULTA_bus\(63);

\Add13~8_AX_bus\ <= (\kernel[1][7]~q\ & \kernel[1][6]~q\ & \kernel[1][5]~q\ & \kernel[1][4]~q\ & \kernel[1][3]~q\ & \kernel[1][2]~q\ & \kernel[1][1]~q\ & \kernel[1][0]~q\);

\Add13~8_AY_bus\ <= (\pattern[5][7]~q\ & \pattern[5][6]~q\ & \pattern[5][5]~q\ & \pattern[5][4]~q\ & \pattern[5][3]~q\ & \pattern[5][2]~q\ & \pattern[5][1]~q\ & \pattern[5][0]~q\);

\Add13~8_BX_bus\ <= (\kernel[0][7]~q\ & \kernel[0][6]~q\ & \kernel[0][5]~q\ & \kernel[0][4]~q\ & \kernel[0][3]~q\ & \kernel[0][2]~q\ & \kernel[0][1]~q\ & \kernel[0][0]~q\);

\Add13~8_BY_bus\ <= (\pattern[4][7]~q\ & \pattern[4][6]~q\ & \pattern[4][5]~q\ & \pattern[4][4]~q\ & \pattern[4][3]~q\ & \pattern[4][2]~q\ & \pattern[4][1]~q\ & \pattern[4][0]~q\);

\Add13~8_resulta\ <= \Add13~8_RESULTA_bus\(0);
\Add13~9\ <= \Add13~8_RESULTA_bus\(1);
\Add13~10\ <= \Add13~8_RESULTA_bus\(2);
\Add13~11\ <= \Add13~8_RESULTA_bus\(3);
\Add13~12\ <= \Add13~8_RESULTA_bus\(4);
\Add13~13\ <= \Add13~8_RESULTA_bus\(5);
\Add13~14\ <= \Add13~8_RESULTA_bus\(6);
\Add13~15\ <= \Add13~8_RESULTA_bus\(7);
\Add13~16\ <= \Add13~8_RESULTA_bus\(8);
\Add13~17\ <= \Add13~8_RESULTA_bus\(9);
\Add13~18\ <= \Add13~8_RESULTA_bus\(10);
\Add13~19\ <= \Add13~8_RESULTA_bus\(11);
\Add13~20\ <= \Add13~8_RESULTA_bus\(12);
\Add13~21\ <= \Add13~8_RESULTA_bus\(13);
\Add13~22\ <= \Add13~8_RESULTA_bus\(14);
\Add13~23\ <= \Add13~8_RESULTA_bus\(15);
\Add13~24\ <= \Add13~8_RESULTA_bus\(16);
\Add13~25\ <= \Add13~8_RESULTA_bus\(17);
\Add13~26\ <= \Add13~8_RESULTA_bus\(18);
\Add13~27\ <= \Add13~8_RESULTA_bus\(19);
\Add13~28\ <= \Add13~8_RESULTA_bus\(20);
\Add13~29\ <= \Add13~8_RESULTA_bus\(21);
\Add13~30\ <= \Add13~8_RESULTA_bus\(22);
\Add13~31\ <= \Add13~8_RESULTA_bus\(23);
\Add13~32\ <= \Add13~8_RESULTA_bus\(24);
\Add13~33\ <= \Add13~8_RESULTA_bus\(25);
\Add13~34\ <= \Add13~8_RESULTA_bus\(26);
\Add13~35\ <= \Add13~8_RESULTA_bus\(27);
\Add13~36\ <= \Add13~8_RESULTA_bus\(28);
\Add13~37\ <= \Add13~8_RESULTA_bus\(29);
\Add13~38\ <= \Add13~8_RESULTA_bus\(30);
\Add13~39\ <= \Add13~8_RESULTA_bus\(31);
\Add13~40\ <= \Add13~8_RESULTA_bus\(32);
\Add13~41\ <= \Add13~8_RESULTA_bus\(33);
\Add13~42\ <= \Add13~8_RESULTA_bus\(34);
\Add13~43\ <= \Add13~8_RESULTA_bus\(35);
\Add13~44\ <= \Add13~8_RESULTA_bus\(36);
\Add13~45\ <= \Add13~8_RESULTA_bus\(37);
\Add13~46\ <= \Add13~8_RESULTA_bus\(38);
\Add13~47\ <= \Add13~8_RESULTA_bus\(39);
\Add13~48\ <= \Add13~8_RESULTA_bus\(40);
\Add13~49\ <= \Add13~8_RESULTA_bus\(41);
\Add13~50\ <= \Add13~8_RESULTA_bus\(42);
\Add13~51\ <= \Add13~8_RESULTA_bus\(43);
\Add13~52\ <= \Add13~8_RESULTA_bus\(44);
\Add13~53\ <= \Add13~8_RESULTA_bus\(45);
\Add13~54\ <= \Add13~8_RESULTA_bus\(46);
\Add13~55\ <= \Add13~8_RESULTA_bus\(47);
\Add13~56\ <= \Add13~8_RESULTA_bus\(48);
\Add13~57\ <= \Add13~8_RESULTA_bus\(49);
\Add13~58\ <= \Add13~8_RESULTA_bus\(50);
\Add13~59\ <= \Add13~8_RESULTA_bus\(51);
\Add13~60\ <= \Add13~8_RESULTA_bus\(52);
\Add13~61\ <= \Add13~8_RESULTA_bus\(53);
\Add13~62\ <= \Add13~8_RESULTA_bus\(54);
\Add13~63\ <= \Add13~8_RESULTA_bus\(55);
\Add13~64\ <= \Add13~8_RESULTA_bus\(56);
\Add13~65\ <= \Add13~8_RESULTA_bus\(57);
\Add13~66\ <= \Add13~8_RESULTA_bus\(58);
\Add13~67\ <= \Add13~8_RESULTA_bus\(59);
\Add13~68\ <= \Add13~8_RESULTA_bus\(60);
\Add13~69\ <= \Add13~8_RESULTA_bus\(61);
\Add13~70\ <= \Add13~8_RESULTA_bus\(62);
\Add13~71\ <= \Add13~8_RESULTA_bus\(63);
\ALT_INV_pattern[4][7]~q\ <= NOT \pattern[4][7]~q\;
\ALT_INV_pattern[4][6]~q\ <= NOT \pattern[4][6]~q\;
\ALT_INV_pattern[4][5]~q\ <= NOT \pattern[4][5]~q\;
\ALT_INV_pattern[4][4]~q\ <= NOT \pattern[4][4]~q\;
\ALT_INV_pattern[4][3]~q\ <= NOT \pattern[4][3]~q\;
\ALT_INV_pattern[4][2]~q\ <= NOT \pattern[4][2]~q\;
\ALT_INV_pattern[4][1]~q\ <= NOT \pattern[4][1]~q\;
\ALT_INV_pattern[4][0]~q\ <= NOT \pattern[4][0]~q\;
\ALT_INV_kernel[3][7]~q\ <= NOT \kernel[3][7]~q\;
\ALT_INV_kernel[3][6]~q\ <= NOT \kernel[3][6]~q\;
\ALT_INV_kernel[3][5]~q\ <= NOT \kernel[3][5]~q\;
\ALT_INV_kernel[3][4]~q\ <= NOT \kernel[3][4]~q\;
\ALT_INV_kernel[3][3]~q\ <= NOT \kernel[3][3]~q\;
\ALT_INV_kernel[3][2]~q\ <= NOT \kernel[3][2]~q\;
\ALT_INV_kernel[3][1]~q\ <= NOT \kernel[3][1]~q\;
\ALT_INV_kernel[3][0]~q\ <= NOT \kernel[3][0]~q\;
ALT_INV_daddr(2) <= NOT daddr(2);
ALT_INV_daddr(0) <= NOT daddr(0);
ALT_INV_kaddr(0) <= NOT kaddr(0);
\ALT_INV_Mult15~339\ <= NOT \Mult15~339\;
\ALT_INV_Mult15~338\ <= NOT \Mult15~338\;
\ALT_INV_Mult15~337\ <= NOT \Mult15~337\;
\ALT_INV_Mult15~336\ <= NOT \Mult15~336\;
\ALT_INV_Mult15~335\ <= NOT \Mult15~335\;
\ALT_INV_Mult15~334\ <= NOT \Mult15~334\;
\ALT_INV_Mult15~333\ <= NOT \Mult15~333\;
\ALT_INV_Mult15~mac_resulta\ <= NOT \Mult15~mac_resulta\;
\ALT_INV_Mult11~339\ <= NOT \Mult11~339\;
\ALT_INV_Mult11~338\ <= NOT \Mult11~338\;
\ALT_INV_Mult11~337\ <= NOT \Mult11~337\;
\ALT_INV_Mult11~336\ <= NOT \Mult11~336\;
\ALT_INV_Mult11~335\ <= NOT \Mult11~335\;
\ALT_INV_Mult11~334\ <= NOT \Mult11~334\;
\ALT_INV_Mult11~333\ <= NOT \Mult11~333\;
\ALT_INV_Mult11~mac_resulta\ <= NOT \Mult11~mac_resulta\;
\ALT_INV_Mult7~339\ <= NOT \Mult7~339\;
\ALT_INV_Mult7~338\ <= NOT \Mult7~338\;
\ALT_INV_Mult7~337\ <= NOT \Mult7~337\;
\ALT_INV_Mult7~336\ <= NOT \Mult7~336\;
\ALT_INV_Mult7~335\ <= NOT \Mult7~335\;
\ALT_INV_Mult7~334\ <= NOT \Mult7~334\;
\ALT_INV_Mult7~333\ <= NOT \Mult7~333\;
\ALT_INV_Mult7~mac_resulta\ <= NOT \Mult7~mac_resulta\;
\ALT_INV_Mult3~339\ <= NOT \Mult3~339\;
\ALT_INV_Mult3~338\ <= NOT \Mult3~338\;
\ALT_INV_Mult3~337\ <= NOT \Mult3~337\;
\ALT_INV_Mult3~336\ <= NOT \Mult3~336\;
\ALT_INV_Mult3~335\ <= NOT \Mult3~335\;
\ALT_INV_Mult3~334\ <= NOT \Mult3~334\;
\ALT_INV_Mult3~333\ <= NOT \Mult3~333\;
\ALT_INV_Mult3~mac_resulta\ <= NOT \Mult3~mac_resulta\;
ALT_INV_out_cnt(0) <= NOT out_cnt(0);
\ALT_INV_result_done~reg0_q\ <= NOT \result_done~reg0_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_daddr(3) <= NOT daddr(3);
ALT_INV_daddr(1) <= NOT daddr(1);
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
ALT_INV_kaddr(1) <= NOT kaddr(1);
ALT_INV_kaddr(2) <= NOT kaddr(2);
ALT_INV_out_cnt(1) <= NOT out_cnt(1);
\ALT_INV_pattern[3][7]~q\ <= NOT \pattern[3][7]~q\;
\ALT_INV_pattern[2][7]~q\ <= NOT \pattern[2][7]~q\;
\ALT_INV_pattern[1][7]~q\ <= NOT \pattern[1][7]~q\;
\ALT_INV_pattern[0][7]~q\ <= NOT \pattern[0][7]~q\;
\ALT_INV_pattern[6][7]~q\ <= NOT \pattern[6][7]~q\;
\ALT_INV_pattern[3][6]~q\ <= NOT \pattern[3][6]~q\;
\ALT_INV_pattern[2][6]~q\ <= NOT \pattern[2][6]~q\;
\ALT_INV_pattern[1][6]~q\ <= NOT \pattern[1][6]~q\;
\ALT_INV_pattern[0][6]~q\ <= NOT \pattern[0][6]~q\;
\ALT_INV_pattern[6][6]~q\ <= NOT \pattern[6][6]~q\;
\ALT_INV_pattern[3][5]~q\ <= NOT \pattern[3][5]~q\;
\ALT_INV_pattern[2][5]~q\ <= NOT \pattern[2][5]~q\;
\ALT_INV_pattern[1][5]~q\ <= NOT \pattern[1][5]~q\;
\ALT_INV_pattern[0][5]~q\ <= NOT \pattern[0][5]~q\;
\ALT_INV_pattern[6][5]~q\ <= NOT \pattern[6][5]~q\;
\ALT_INV_pattern[3][4]~q\ <= NOT \pattern[3][4]~q\;
\ALT_INV_pattern[2][4]~q\ <= NOT \pattern[2][4]~q\;
\ALT_INV_pattern[1][4]~q\ <= NOT \pattern[1][4]~q\;
\ALT_INV_pattern[0][4]~q\ <= NOT \pattern[0][4]~q\;
\ALT_INV_pattern[6][4]~q\ <= NOT \pattern[6][4]~q\;
\ALT_INV_pattern[3][3]~q\ <= NOT \pattern[3][3]~q\;
\ALT_INV_pattern[2][3]~q\ <= NOT \pattern[2][3]~q\;
\ALT_INV_pattern[1][3]~q\ <= NOT \pattern[1][3]~q\;
\ALT_INV_pattern[0][3]~q\ <= NOT \pattern[0][3]~q\;
\ALT_INV_pattern[6][3]~q\ <= NOT \pattern[6][3]~q\;
\ALT_INV_pattern[3][2]~q\ <= NOT \pattern[3][2]~q\;
\ALT_INV_pattern[2][2]~q\ <= NOT \pattern[2][2]~q\;
\ALT_INV_pattern[1][2]~q\ <= NOT \pattern[1][2]~q\;
\ALT_INV_pattern[0][2]~q\ <= NOT \pattern[0][2]~q\;
\ALT_INV_pattern[6][2]~q\ <= NOT \pattern[6][2]~q\;
\ALT_INV_pattern[3][1]~q\ <= NOT \pattern[3][1]~q\;
\ALT_INV_pattern[2][1]~q\ <= NOT \pattern[2][1]~q\;
\ALT_INV_pattern[1][1]~q\ <= NOT \pattern[1][1]~q\;
\ALT_INV_pattern[0][1]~q\ <= NOT \pattern[0][1]~q\;
\ALT_INV_pattern[6][1]~q\ <= NOT \pattern[6][1]~q\;
\ALT_INV_pattern[3][0]~q\ <= NOT \pattern[3][0]~q\;
\ALT_INV_pattern[2][0]~q\ <= NOT \pattern[2][0]~q\;
\ALT_INV_pattern[1][0]~q\ <= NOT \pattern[1][0]~q\;
\ALT_INV_pattern[0][0]~q\ <= NOT \pattern[0][0]~q\;
\ALT_INV_pattern[6][0]~q\ <= NOT \pattern[6][0]~q\;
\ALT_INV_kernel[2][7]~q\ <= NOT \kernel[2][7]~q\;
\ALT_INV_kernel[1][7]~q\ <= NOT \kernel[1][7]~q\;
\ALT_INV_kernel[0][7]~q\ <= NOT \kernel[0][7]~q\;
\ALT_INV_kernel[2][6]~q\ <= NOT \kernel[2][6]~q\;
\ALT_INV_kernel[1][6]~q\ <= NOT \kernel[1][6]~q\;
\ALT_INV_kernel[0][6]~q\ <= NOT \kernel[0][6]~q\;
\ALT_INV_kernel[2][5]~q\ <= NOT \kernel[2][5]~q\;
\ALT_INV_kernel[1][5]~q\ <= NOT \kernel[1][5]~q\;
\ALT_INV_kernel[0][5]~q\ <= NOT \kernel[0][5]~q\;
\ALT_INV_kernel[2][4]~q\ <= NOT \kernel[2][4]~q\;
\ALT_INV_kernel[1][4]~q\ <= NOT \kernel[1][4]~q\;
\ALT_INV_kernel[0][4]~q\ <= NOT \kernel[0][4]~q\;
\ALT_INV_kernel[2][3]~q\ <= NOT \kernel[2][3]~q\;
\ALT_INV_kernel[1][3]~q\ <= NOT \kernel[1][3]~q\;
\ALT_INV_kernel[0][3]~q\ <= NOT \kernel[0][3]~q\;
\ALT_INV_kernel[2][2]~q\ <= NOT \kernel[2][2]~q\;
\ALT_INV_kernel[1][2]~q\ <= NOT \kernel[1][2]~q\;
\ALT_INV_kernel[0][2]~q\ <= NOT \kernel[0][2]~q\;
\ALT_INV_kernel[2][1]~q\ <= NOT \kernel[2][1]~q\;
\ALT_INV_kernel[1][1]~q\ <= NOT \kernel[1][1]~q\;
\ALT_INV_kernel[0][1]~q\ <= NOT \kernel[0][1]~q\;
\ALT_INV_kernel[2][0]~q\ <= NOT \kernel[2][0]~q\;
\ALT_INV_kernel[1][0]~q\ <= NOT \kernel[1][0]~q\;
\ALT_INV_kernel[0][0]~q\ <= NOT \kernel[0][0]~q\;
\ALT_INV_pattern[8][7]~q\ <= NOT \pattern[8][7]~q\;
\ALT_INV_pattern[8][6]~q\ <= NOT \pattern[8][6]~q\;
\ALT_INV_pattern[8][5]~q\ <= NOT \pattern[8][5]~q\;
\ALT_INV_pattern[8][4]~q\ <= NOT \pattern[8][4]~q\;
\ALT_INV_pattern[8][3]~q\ <= NOT \pattern[8][3]~q\;
\ALT_INV_pattern[8][2]~q\ <= NOT \pattern[8][2]~q\;
\ALT_INV_pattern[8][1]~q\ <= NOT \pattern[8][1]~q\;
\ALT_INV_pattern[8][0]~q\ <= NOT \pattern[8][0]~q\;
\ALT_INV_pattern[7][7]~q\ <= NOT \pattern[7][7]~q\;
\ALT_INV_pattern[7][6]~q\ <= NOT \pattern[7][6]~q\;
\ALT_INV_pattern[7][5]~q\ <= NOT \pattern[7][5]~q\;
\ALT_INV_pattern[7][4]~q\ <= NOT \pattern[7][4]~q\;
\ALT_INV_pattern[7][3]~q\ <= NOT \pattern[7][3]~q\;
\ALT_INV_pattern[7][2]~q\ <= NOT \pattern[7][2]~q\;
\ALT_INV_pattern[7][1]~q\ <= NOT \pattern[7][1]~q\;
\ALT_INV_pattern[7][0]~q\ <= NOT \pattern[7][0]~q\;
\ALT_INV_pattern[5][7]~q\ <= NOT \pattern[5][7]~q\;
\ALT_INV_pattern[5][6]~q\ <= NOT \pattern[5][6]~q\;
\ALT_INV_pattern[5][5]~q\ <= NOT \pattern[5][5]~q\;
\ALT_INV_pattern[5][4]~q\ <= NOT \pattern[5][4]~q\;
\ALT_INV_pattern[5][3]~q\ <= NOT \pattern[5][3]~q\;
\ALT_INV_pattern[5][2]~q\ <= NOT \pattern[5][2]~q\;
\ALT_INV_pattern[5][1]~q\ <= NOT \pattern[5][1]~q\;
\ALT_INV_pattern[5][0]~q\ <= NOT \pattern[5][0]~q\;

-- Location: IOOBUF_X34_Y0_N76
\Rout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(0));

-- Location: IOOBUF_X36_Y0_N36
\Rout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(1));

-- Location: IOOBUF_X38_Y0_N36
\Rout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(2));

-- Location: IOOBUF_X36_Y0_N2
\Rout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(3));

-- Location: IOOBUF_X34_Y0_N42
\Rout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(4));

-- Location: IOOBUF_X36_Y0_N19
\Rout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(5));

-- Location: IOOBUF_X36_Y0_N53
\Rout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(6));

-- Location: IOOBUF_X34_Y0_N59
\Rout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Rout(7));

-- Location: IOOBUF_X34_Y0_N93
\result_done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result_done~reg0_q\,
	devoe => ww_devoe,
	o => ww_result_done);

-- Location: IOIBUF_X89_Y35_N61
\Aclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aclk,
	o => \Aclk~input_o\);

-- Location: CLKCTRL_G10
\Aclk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Aclk~input_o\,
	outclk => \Aclk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y0_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: MLABCELL_X28_Y9_N48
\kaddr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \kaddr~0_combout\ = ( kaddr(0) & ( kaddr(2) ) ) # ( !kaddr(0) & ( kaddr(2) & ( !kaddr(1) ) ) ) # ( !kaddr(0) & ( !kaddr(2) & ( kaddr(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_kaddr(1),
	datae => ALT_INV_kaddr(0),
	dataf => ALT_INV_kaddr(2),
	combout => \kaddr~0_combout\);

-- Location: FF_X28_Y9_N50
\kaddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kaddr~0_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kaddr(0));

-- Location: MLABCELL_X28_Y9_N6
\kaddr[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \kaddr[2]~1_combout\ = ( kaddr(2) & ( kaddr(0) & ( !\rst~input_o\ ) ) ) # ( !kaddr(2) & ( kaddr(0) & ( (!\rst~input_o\ & kaddr(1)) ) ) ) # ( kaddr(2) & ( !kaddr(0) & ( !\rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datac => ALT_INV_kaddr(1),
	datae => ALT_INV_kaddr(2),
	dataf => ALT_INV_kaddr(0),
	combout => \kaddr[2]~1_combout\);

-- Location: FF_X28_Y9_N8
\kaddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kaddr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kaddr(2));

-- Location: MLABCELL_X28_Y9_N3
\kaddr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \kaddr[1]~2_combout\ = ( kaddr(1) & ( kaddr(0) & ( (!\rst~input_o\ & kaddr(2)) ) ) ) # ( !kaddr(1) & ( kaddr(0) & ( (!\rst~input_o\ & !kaddr(2)) ) ) ) # ( kaddr(1) & ( !kaddr(0) & ( !\rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datac => ALT_INV_kaddr(2),
	datae => ALT_INV_kaddr(1),
	dataf => ALT_INV_kaddr(0),
	combout => \kaddr[1]~2_combout\);

-- Location: FF_X28_Y9_N5
\kaddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kaddr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kaddr(1));

-- Location: MLABCELL_X28_Y8_N0
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( kaddr(0) & ( !kaddr(2) ) ) # ( !kaddr(0) & ( !kaddr(1) $ (!kaddr(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_kaddr(1),
	datac => ALT_INV_kaddr(2),
	dataf => ALT_INV_kaddr(0),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X28_Y8_N6
\daddr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \daddr~1_combout\ = ( daddr(1) & ( (!daddr(0) & !\rst~input_o\) ) ) # ( !daddr(1) & ( (daddr(0) & !\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(0),
	datac => \ALT_INV_rst~input_o\,
	datae => ALT_INV_daddr(1),
	combout => \daddr~1_combout\);

-- Location: LABCELL_X31_Y7_N18
\daddr[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \daddr[3]~3_combout\ = ( daddr(3) & ( !\rst~input_o\ ) ) # ( !daddr(3) & ( !\rst~input_o\ & ( (daddr(1) & (daddr(0) & daddr(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(1),
	datac => ALT_INV_daddr(0),
	datad => ALT_INV_daddr(2),
	datae => ALT_INV_daddr(3),
	dataf => \ALT_INV_rst~input_o\,
	combout => \daddr[3]~3_combout\);

-- Location: FF_X31_Y7_N20
\daddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \daddr[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => daddr(3));

-- Location: LABCELL_X27_Y8_N48
\daddr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \daddr[1]~2_combout\ = ( \rst~input_o\ & ( daddr(0) ) ) # ( !\rst~input_o\ & ( daddr(0) & ( (!daddr(3)) # ((!daddr(2) & !daddr(1))) ) ) ) # ( \rst~input_o\ & ( !daddr(0) ) ) # ( !\rst~input_o\ & ( !daddr(0) & ( !daddr(3) $ (((!daddr(2) & !daddr(1)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010111111111111111111101010111010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => ALT_INV_daddr(1),
	datae => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_daddr(0),
	combout => \daddr[1]~2_combout\);

-- Location: FF_X28_Y8_N8
\daddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \daddr~1_combout\,
	ena => \daddr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => daddr(1));

-- Location: LABCELL_X31_Y7_N27
\daddr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \daddr~0_combout\ = ( daddr(0) & ( daddr(3) & ( (daddr(2)) # (daddr(1)) ) ) ) # ( !daddr(0) & ( daddr(3) & ( (!daddr(1) & !daddr(2)) ) ) ) # ( !daddr(0) & ( !daddr(3) & ( (daddr(2)) # (daddr(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000011000000110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(1),
	datac => ALT_INV_daddr(2),
	datae => ALT_INV_daddr(0),
	dataf => ALT_INV_daddr(3),
	combout => \daddr~0_combout\);

-- Location: FF_X31_Y7_N29
\daddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \daddr~0_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => daddr(0));

-- Location: MLABCELL_X28_Y8_N18
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( daddr(2) & ( daddr(1) & ( !daddr(0) ) ) ) # ( !daddr(2) & ( daddr(1) & ( daddr(0) ) ) ) # ( daddr(2) & ( !daddr(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(0),
	datae => ALT_INV_daddr(2),
	dataf => ALT_INV_daddr(1),
	combout => \Add1~0_combout\);

-- Location: FF_X28_Y8_N20
\daddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Add1~0_combout\,
	sclr => \rst~input_o\,
	ena => \daddr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => daddr(2));

-- Location: LABCELL_X30_Y8_N39
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( daddr(0) & ( (!daddr(3)) # ((!daddr(2) & !daddr(1))) ) ) # ( !daddr(0) & ( !daddr(3) $ (((!daddr(2) & !daddr(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(2),
	datab => ALT_INV_daddr(3),
	datac => ALT_INV_daddr(1),
	dataf => ALT_INV_daddr(0),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X27_Y8_N27
\out_cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_cnt~1_combout\ = ( out_cnt(0) & ( \LessThan0~0_combout\ ) ) # ( !out_cnt(0) & ( \LessThan0~0_combout\ ) ) # ( out_cnt(0) & ( !\LessThan0~0_combout\ & ( \LessThan3~0_combout\ ) ) ) # ( !out_cnt(0) & ( !\LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datae => ALT_INV_out_cnt(0),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \out_cnt~1_combout\);

-- Location: FF_X27_Y8_N29
\out_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \out_cnt~1_combout\,
	asdata => VCC,
	sload => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_cnt(0));

-- Location: MLABCELL_X21_Y6_N42
\kernel[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][0]~feeder_combout\ = \Mux15~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux15~0_combout\,
	combout => \kernel[0][0]~feeder_combout\);

-- Location: IOIBUF_X8_Y0_N52
\Kin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(0),
	o => \Kin[0]~input_o\);

-- Location: LABCELL_X24_Y8_N6
\kernel[0][2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][2]~1_combout\ = ( kaddr(1) & ( kaddr(2) & ( \rst~input_o\ ) ) ) # ( !kaddr(1) & ( kaddr(2) & ( \rst~input_o\ ) ) ) # ( kaddr(1) & ( !kaddr(2) & ( \rst~input_o\ ) ) ) # ( !kaddr(1) & ( !kaddr(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	datae => ALT_INV_kaddr(1),
	dataf => ALT_INV_kaddr(2),
	combout => \kernel[0][2]~1_combout\);

-- Location: FF_X21_Y6_N44
\kernel[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][0]~feeder_combout\,
	asdata => \Kin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][0]~q\);

-- Location: MLABCELL_X21_Y10_N33
\kernel[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][0]~feeder_combout\ = ( \Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \kernel[1][0]~feeder_combout\);

-- Location: LABCELL_X24_Y8_N15
\kernel[1][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][0]~2_combout\ = ( kaddr(1) & ( kaddr(0) & ( \rst~input_o\ ) ) ) # ( !kaddr(1) & ( kaddr(0) & ( \rst~input_o\ ) ) ) # ( kaddr(1) & ( !kaddr(0) & ( (!kaddr(2)) # (\rst~input_o\) ) ) ) # ( !kaddr(1) & ( !kaddr(0) & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datac => ALT_INV_kaddr(2),
	datae => ALT_INV_kaddr(1),
	dataf => ALT_INV_kaddr(0),
	combout => \kernel[1][0]~2_combout\);

-- Location: FF_X21_Y10_N35
\kernel[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][0]~feeder_combout\,
	asdata => \Kin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][0]~q\);

-- Location: LABCELL_X24_Y8_N57
\kernel[2][2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[2][2]~3_combout\ = ( kaddr(1) & ( \rst~input_o\ ) ) # ( !kaddr(1) & ( \rst~input_o\ ) ) # ( kaddr(1) & ( !\rst~input_o\ & ( (kaddr(0) & !kaddr(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datac => ALT_INV_kaddr(2),
	datae => ALT_INV_kaddr(1),
	dataf => \ALT_INV_rst~input_o\,
	combout => \kernel[2][2]~3_combout\);

-- Location: FF_X23_Y8_N14
\kernel[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux15~0_combout\,
	asdata => \Kin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][0]~q\);

-- Location: LABCELL_X23_Y8_N12
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \kernel[2][0]~q\ & ( \kernel[3][0]~q\ & ( ((!kaddr(0) & (\kernel[0][0]~q\)) # (kaddr(0) & ((\kernel[1][0]~q\)))) # (kaddr(1)) ) ) ) # ( !\kernel[2][0]~q\ & ( \kernel[3][0]~q\ & ( (!kaddr(0) & (!kaddr(1) & (\kernel[0][0]~q\))) # 
-- (kaddr(0) & (((\kernel[1][0]~q\)) # (kaddr(1)))) ) ) ) # ( \kernel[2][0]~q\ & ( !\kernel[3][0]~q\ & ( (!kaddr(0) & (((\kernel[0][0]~q\)) # (kaddr(1)))) # (kaddr(0) & (!kaddr(1) & ((\kernel[1][0]~q\)))) ) ) ) # ( !\kernel[2][0]~q\ & ( !\kernel[3][0]~q\ & ( 
-- (!kaddr(1) & ((!kaddr(0) & (\kernel[0][0]~q\)) # (kaddr(0) & ((\kernel[1][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datab => ALT_INV_kaddr(1),
	datac => \ALT_INV_kernel[0][0]~q\,
	datad => \ALT_INV_kernel[1][0]~q\,
	datae => \ALT_INV_kernel[2][0]~q\,
	dataf => \ALT_INV_kernel[3][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X23_Y8_N24
\kernel[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][0]~feeder_combout\ = ( \Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \kernel[3][0]~feeder_combout\);

-- Location: LABCELL_X24_Y8_N39
\kernel[3][1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][1]~0_combout\ = ( kaddr(1) & ( \rst~input_o\ ) ) # ( !kaddr(1) & ( \rst~input_o\ ) ) # ( !kaddr(1) & ( !\rst~input_o\ & ( (!kaddr(0) & kaddr(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datac => ALT_INV_kaddr(2),
	datae => ALT_INV_kaddr(1),
	dataf => \ALT_INV_rst~input_o\,
	combout => \kernel[3][1]~0_combout\);

-- Location: FF_X23_Y8_N26
\kernel[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][0]~feeder_combout\,
	asdata => \Kin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][0]~q\);

-- Location: MLABCELL_X21_Y6_N9
\kernel[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][1]~feeder_combout\ = ( \Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \kernel[0][1]~feeder_combout\);

-- Location: IOIBUF_X26_Y0_N92
\Kin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(1),
	o => \Kin[1]~input_o\);

-- Location: FF_X21_Y6_N11
\kernel[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][1]~feeder_combout\,
	asdata => \Kin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][1]~q\);

-- Location: FF_X23_Y8_N44
\kernel[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	asdata => \Kin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][1]~q\);

-- Location: MLABCELL_X21_Y8_N42
\kernel[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][1]~feeder_combout\ = \Mux14~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux14~0_combout\,
	combout => \kernel[1][1]~feeder_combout\);

-- Location: FF_X21_Y8_N44
\kernel[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][1]~feeder_combout\,
	asdata => \Kin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][1]~q\);

-- Location: LABCELL_X23_Y8_N42
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \kernel[2][1]~q\ & ( \kernel[1][1]~q\ & ( (!kaddr(0) & (((kaddr(1))) # (\kernel[0][1]~q\))) # (kaddr(0) & (((!kaddr(1)) # (\kernel[3][1]~q\)))) ) ) ) # ( !\kernel[2][1]~q\ & ( \kernel[1][1]~q\ & ( (!kaddr(0) & (\kernel[0][1]~q\ & 
-- ((!kaddr(1))))) # (kaddr(0) & (((!kaddr(1)) # (\kernel[3][1]~q\)))) ) ) ) # ( \kernel[2][1]~q\ & ( !\kernel[1][1]~q\ & ( (!kaddr(0) & (((kaddr(1))) # (\kernel[0][1]~q\))) # (kaddr(0) & (((\kernel[3][1]~q\ & kaddr(1))))) ) ) ) # ( !\kernel[2][1]~q\ & ( 
-- !\kernel[1][1]~q\ & ( (!kaddr(0) & (\kernel[0][1]~q\ & ((!kaddr(1))))) # (kaddr(0) & (((\kernel[3][1]~q\ & kaddr(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datab => \ALT_INV_kernel[0][1]~q\,
	datac => \ALT_INV_kernel[3][1]~q\,
	datad => ALT_INV_kaddr(1),
	datae => \ALT_INV_kernel[2][1]~q\,
	dataf => \ALT_INV_kernel[1][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X23_Y8_N33
\kernel[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][1]~feeder_combout\ = ( \Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \kernel[3][1]~feeder_combout\);

-- Location: FF_X23_Y8_N35
\kernel[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][1]~feeder_combout\,
	asdata => \Kin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][1]~q\);

-- Location: MLABCELL_X21_Y6_N12
\kernel[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][2]~feeder_combout\ = ( \Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \kernel[0][2]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N18
\Kin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(2),
	o => \Kin[2]~input_o\);

-- Location: FF_X21_Y6_N14
\kernel[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][2]~feeder_combout\,
	asdata => \Kin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][2]~q\);

-- Location: FF_X23_Y8_N50
\kernel[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	asdata => \Kin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][2]~q\);

-- Location: MLABCELL_X21_Y6_N57
\kernel[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][2]~feeder_combout\ = ( \Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \kernel[1][2]~feeder_combout\);

-- Location: FF_X21_Y6_N59
\kernel[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][2]~feeder_combout\,
	asdata => \Kin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][2]~q\);

-- Location: LABCELL_X23_Y8_N48
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \kernel[2][2]~q\ & ( \kernel[1][2]~q\ & ( (!kaddr(0) & (((kaddr(1))) # (\kernel[0][2]~q\))) # (kaddr(0) & (((!kaddr(1)) # (\kernel[3][2]~q\)))) ) ) ) # ( !\kernel[2][2]~q\ & ( \kernel[1][2]~q\ & ( (!kaddr(0) & (\kernel[0][2]~q\ & 
-- ((!kaddr(1))))) # (kaddr(0) & (((!kaddr(1)) # (\kernel[3][2]~q\)))) ) ) ) # ( \kernel[2][2]~q\ & ( !\kernel[1][2]~q\ & ( (!kaddr(0) & (((kaddr(1))) # (\kernel[0][2]~q\))) # (kaddr(0) & (((\kernel[3][2]~q\ & kaddr(1))))) ) ) ) # ( !\kernel[2][2]~q\ & ( 
-- !\kernel[1][2]~q\ & ( (!kaddr(0) & (\kernel[0][2]~q\ & ((!kaddr(1))))) # (kaddr(0) & (((\kernel[3][2]~q\ & kaddr(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datab => \ALT_INV_kernel[0][2]~q\,
	datac => \ALT_INV_kernel[3][2]~q\,
	datad => ALT_INV_kaddr(1),
	datae => \ALT_INV_kernel[2][2]~q\,
	dataf => \ALT_INV_kernel[1][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X23_Y8_N0
\kernel[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][2]~feeder_combout\ = \Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux13~0_combout\,
	combout => \kernel[3][2]~feeder_combout\);

-- Location: FF_X23_Y8_N2
\kernel[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][2]~feeder_combout\,
	asdata => \Kin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][2]~q\);

-- Location: MLABCELL_X21_Y6_N36
\kernel[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][3]~feeder_combout\ = ( \Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \kernel[0][3]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N35
\Kin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(3),
	o => \Kin[3]~input_o\);

-- Location: FF_X21_Y6_N38
\kernel[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][3]~feeder_combout\,
	asdata => \Kin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][3]~q\);

-- Location: MLABCELL_X21_Y8_N39
\kernel[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][3]~feeder_combout\ = ( \Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \kernel[1][3]~feeder_combout\);

-- Location: FF_X21_Y8_N41
\kernel[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][3]~feeder_combout\,
	asdata => \Kin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][3]~q\);

-- Location: FF_X23_Y8_N8
\kernel[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	asdata => \Kin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][3]~q\);

-- Location: LABCELL_X23_Y8_N6
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \kernel[2][3]~q\ & ( kaddr(0) & ( (!kaddr(1) & ((\kernel[1][3]~q\))) # (kaddr(1) & (\kernel[3][3]~q\)) ) ) ) # ( !\kernel[2][3]~q\ & ( kaddr(0) & ( (!kaddr(1) & ((\kernel[1][3]~q\))) # (kaddr(1) & (\kernel[3][3]~q\)) ) ) ) # ( 
-- \kernel[2][3]~q\ & ( !kaddr(0) & ( (kaddr(1)) # (\kernel[0][3]~q\) ) ) ) # ( !\kernel[2][3]~q\ & ( !kaddr(0) & ( (\kernel[0][3]~q\ & !kaddr(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kernel[0][3]~q\,
	datab => ALT_INV_kaddr(1),
	datac => \ALT_INV_kernel[3][3]~q\,
	datad => \ALT_INV_kernel[1][3]~q\,
	datae => \ALT_INV_kernel[2][3]~q\,
	dataf => ALT_INV_kaddr(0),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X23_Y8_N3
\kernel[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][3]~feeder_combout\ = \Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	combout => \kernel[3][3]~feeder_combout\);

-- Location: FF_X23_Y8_N5
\kernel[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][3]~feeder_combout\,
	asdata => \Kin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][3]~q\);

-- Location: MLABCELL_X21_Y10_N24
\kernel[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][4]~feeder_combout\ = ( \Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \kernel[0][4]~feeder_combout\);

-- Location: IOIBUF_X26_Y0_N75
\Kin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(4),
	o => \Kin[4]~input_o\);

-- Location: FF_X21_Y10_N26
\kernel[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][4]~feeder_combout\,
	asdata => \Kin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][4]~q\);

-- Location: MLABCELL_X21_Y6_N24
\kernel[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][4]~feeder_combout\ = ( \Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \kernel[1][4]~feeder_combout\);

-- Location: FF_X21_Y6_N26
\kernel[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][4]~feeder_combout\,
	asdata => \Kin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][4]~q\);

-- Location: FF_X23_Y8_N38
\kernel[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	asdata => \Kin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][4]~q\);

-- Location: LABCELL_X23_Y8_N36
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \kernel[2][4]~q\ & ( \kernel[3][4]~q\ & ( ((!kaddr(0) & (\kernel[0][4]~q\)) # (kaddr(0) & ((\kernel[1][4]~q\)))) # (kaddr(1)) ) ) ) # ( !\kernel[2][4]~q\ & ( \kernel[3][4]~q\ & ( (!kaddr(0) & (!kaddr(1) & (\kernel[0][4]~q\))) # 
-- (kaddr(0) & (((\kernel[1][4]~q\)) # (kaddr(1)))) ) ) ) # ( \kernel[2][4]~q\ & ( !\kernel[3][4]~q\ & ( (!kaddr(0) & (((\kernel[0][4]~q\)) # (kaddr(1)))) # (kaddr(0) & (!kaddr(1) & ((\kernel[1][4]~q\)))) ) ) ) # ( !\kernel[2][4]~q\ & ( !\kernel[3][4]~q\ & ( 
-- (!kaddr(1) & ((!kaddr(0) & (\kernel[0][4]~q\)) # (kaddr(0) & ((\kernel[1][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_kaddr(0),
	datab => ALT_INV_kaddr(1),
	datac => \ALT_INV_kernel[0][4]~q\,
	datad => \ALT_INV_kernel[1][4]~q\,
	datae => \ALT_INV_kernel[2][4]~q\,
	dataf => \ALT_INV_kernel[3][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X23_Y8_N54
\kernel[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][4]~feeder_combout\ = \Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux11~0_combout\,
	combout => \kernel[3][4]~feeder_combout\);

-- Location: FF_X23_Y8_N56
\kernel[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][4]~feeder_combout\,
	asdata => \Kin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][4]~q\);

-- Location: MLABCELL_X21_Y10_N15
\kernel[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][5]~feeder_combout\ = ( \Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \kernel[1][5]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N52
\Kin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(5),
	o => \Kin[5]~input_o\);

-- Location: FF_X21_Y10_N17
\kernel[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][5]~feeder_combout\,
	asdata => \Kin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][5]~q\);

-- Location: MLABCELL_X21_Y10_N57
\kernel[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][5]~feeder_combout\ = ( \Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \kernel[0][5]~feeder_combout\);

-- Location: FF_X21_Y10_N59
\kernel[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][5]~feeder_combout\,
	asdata => \Kin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][5]~q\);

-- Location: FF_X23_Y8_N20
\kernel[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	asdata => \Kin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][5]~q\);

-- Location: LABCELL_X23_Y8_N18
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \kernel[2][5]~q\ & ( kaddr(1) & ( (!kaddr(0)) # (\kernel[3][5]~q\) ) ) ) # ( !\kernel[2][5]~q\ & ( kaddr(1) & ( (kaddr(0) & \kernel[3][5]~q\) ) ) ) # ( \kernel[2][5]~q\ & ( !kaddr(1) & ( (!kaddr(0) & ((\kernel[0][5]~q\))) # (kaddr(0) 
-- & (\kernel[1][5]~q\)) ) ) ) # ( !\kernel[2][5]~q\ & ( !kaddr(1) & ( (!kaddr(0) & ((\kernel[0][5]~q\))) # (kaddr(0) & (\kernel[1][5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kernel[1][5]~q\,
	datab => \ALT_INV_kernel[0][5]~q\,
	datac => ALT_INV_kaddr(0),
	datad => \ALT_INV_kernel[3][5]~q\,
	datae => \ALT_INV_kernel[2][5]~q\,
	dataf => ALT_INV_kaddr(1),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X23_Y8_N57
\kernel[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][5]~feeder_combout\ = ( \Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \kernel[3][5]~feeder_combout\);

-- Location: FF_X23_Y8_N59
\kernel[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][5]~feeder_combout\,
	asdata => \Kin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][5]~q\);

-- Location: MLABCELL_X21_Y8_N0
\kernel[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][6]~feeder_combout\ = ( \Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \kernel[0][6]~feeder_combout\);

-- Location: IOIBUF_X26_Y0_N41
\Kin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(6),
	o => \Kin[6]~input_o\);

-- Location: FF_X21_Y8_N2
\kernel[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][6]~feeder_combout\,
	asdata => \Kin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][6]~q\);

-- Location: MLABCELL_X25_Y8_N12
\kernel[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[2][6]~feeder_combout\ = ( \Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \kernel[2][6]~feeder_combout\);

-- Location: FF_X25_Y8_N14
\kernel[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[2][6]~feeder_combout\,
	asdata => \Kin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][6]~q\);

-- Location: MLABCELL_X21_Y10_N6
\kernel[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][6]~feeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux9~0_combout\,
	combout => \kernel[1][6]~feeder_combout\);

-- Location: FF_X21_Y10_N8
\kernel[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][6]~feeder_combout\,
	asdata => \Kin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][6]~q\);

-- Location: MLABCELL_X25_Y8_N24
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \kernel[1][6]~q\ & ( kaddr(1) & ( (!kaddr(0) & (\kernel[2][6]~q\)) # (kaddr(0) & ((\kernel[3][6]~q\))) ) ) ) # ( !\kernel[1][6]~q\ & ( kaddr(1) & ( (!kaddr(0) & (\kernel[2][6]~q\)) # (kaddr(0) & ((\kernel[3][6]~q\))) ) ) ) # ( 
-- \kernel[1][6]~q\ & ( !kaddr(1) & ( (kaddr(0)) # (\kernel[0][6]~q\) ) ) ) # ( !\kernel[1][6]~q\ & ( !kaddr(1) & ( (\kernel[0][6]~q\ & !kaddr(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kernel[0][6]~q\,
	datab => \ALT_INV_kernel[2][6]~q\,
	datac => ALT_INV_kaddr(0),
	datad => \ALT_INV_kernel[3][6]~q\,
	datae => \ALT_INV_kernel[1][6]~q\,
	dataf => ALT_INV_kaddr(1),
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X25_Y8_N39
\kernel[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][6]~feeder_combout\ = ( \Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \kernel[3][6]~feeder_combout\);

-- Location: FF_X25_Y8_N41
\kernel[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][6]~feeder_combout\,
	asdata => \Kin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][6]~q\);

-- Location: MLABCELL_X25_Y8_N18
\kernel[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[2][7]~feeder_combout\ = ( \Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \kernel[2][7]~feeder_combout\);

-- Location: IOIBUF_X26_Y0_N58
\Kin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kin(7),
	o => \Kin[7]~input_o\);

-- Location: FF_X25_Y8_N20
\kernel[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[2][7]~feeder_combout\,
	asdata => \Kin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[2][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[2][7]~q\);

-- Location: MLABCELL_X21_Y8_N30
\kernel[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[0][7]~feeder_combout\ = ( \Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \kernel[0][7]~feeder_combout\);

-- Location: FF_X21_Y8_N32
\kernel[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[0][7]~feeder_combout\,
	asdata => \Kin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[0][7]~q\);

-- Location: MLABCELL_X21_Y10_N45
\kernel[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[1][7]~feeder_combout\ = \Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	combout => \kernel[1][7]~feeder_combout\);

-- Location: FF_X21_Y10_N47
\kernel[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[1][7]~feeder_combout\,
	asdata => \Kin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[1][7]~q\);

-- Location: MLABCELL_X25_Y8_N6
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \kernel[1][7]~q\ & ( kaddr(0) & ( (!kaddr(1)) # (\kernel[3][7]~q\) ) ) ) # ( !\kernel[1][7]~q\ & ( kaddr(0) & ( (\kernel[3][7]~q\ & kaddr(1)) ) ) ) # ( \kernel[1][7]~q\ & ( !kaddr(0) & ( (!kaddr(1) & ((\kernel[0][7]~q\))) # (kaddr(1) 
-- & (\kernel[2][7]~q\)) ) ) ) # ( !\kernel[1][7]~q\ & ( !kaddr(0) & ( (!kaddr(1) & ((\kernel[0][7]~q\))) # (kaddr(1) & (\kernel[2][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kernel[2][7]~q\,
	datab => \ALT_INV_kernel[3][7]~q\,
	datac => \ALT_INV_kernel[0][7]~q\,
	datad => ALT_INV_kaddr(1),
	datae => \ALT_INV_kernel[1][7]~q\,
	dataf => ALT_INV_kaddr(0),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X25_Y8_N42
\kernel[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \kernel[3][7]~feeder_combout\ = ( \Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \kernel[3][7]~feeder_combout\);

-- Location: FF_X25_Y8_N44
\kernel[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \kernel[3][7]~feeder_combout\,
	asdata => \Kin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan3~0_combout\,
	ena => \kernel[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kernel[3][7]~q\);

-- Location: LABCELL_X19_Y8_N6
\pattern[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[3][0]~feeder_combout\);

-- Location: IOIBUF_X32_Y0_N1
\Xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(0),
	o => \Xin[0]~input_o\);

-- Location: LABCELL_X27_Y8_N12
\pattern[3][6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][6]~8_combout\ = ( \rst~input_o\ & ( daddr(0) ) ) # ( \rst~input_o\ & ( !daddr(0) ) ) # ( !\rst~input_o\ & ( !daddr(0) & ( (!daddr(3) & (daddr(2) & !daddr(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => ALT_INV_daddr(1),
	datae => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_daddr(0),
	combout => \pattern[3][6]~8_combout\);

-- Location: FF_X19_Y8_N8
\pattern[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][0]~q\);

-- Location: LABCELL_X31_Y6_N6
\pattern[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[0][0]~feeder_combout\);

-- Location: LABCELL_X30_Y6_N45
\pattern[0][6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][6]~5_combout\ = ( daddr(3) & ( \rst~input_o\ ) ) # ( !daddr(3) & ( ((!daddr(1) & !daddr(2))) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111010101010101010101010111010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datab => ALT_INV_daddr(1),
	datac => ALT_INV_daddr(2),
	datae => ALT_INV_daddr(3),
	combout => \pattern[0][6]~5_combout\);

-- Location: FF_X31_Y6_N8
\pattern[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][0]~q\);

-- Location: MLABCELL_X25_Y6_N18
\pattern[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][0]~feeder_combout\ = \Mux7~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[1][0]~feeder_combout\);

-- Location: LABCELL_X30_Y6_N24
\pattern[1][6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][6]~6_combout\ = ( daddr(3) & ( daddr(0) & ( \rst~input_o\ ) ) ) # ( !daddr(3) & ( daddr(0) & ( \rst~input_o\ ) ) ) # ( daddr(3) & ( !daddr(0) & ( \rst~input_o\ ) ) ) # ( !daddr(3) & ( !daddr(0) & ( ((!daddr(2) & daddr(1))) # (\rst~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(2),
	datac => \ALT_INV_rst~input_o\,
	datad => ALT_INV_daddr(1),
	datae => ALT_INV_daddr(3),
	dataf => ALT_INV_daddr(0),
	combout => \pattern[1][6]~6_combout\);

-- Location: FF_X25_Y6_N20
\pattern[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][0]~q\);

-- Location: LABCELL_X19_Y6_N18
\pattern[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[2][0]~feeder_combout\);

-- Location: LABCELL_X27_Y6_N42
\pattern[2][7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][7]~7_combout\ = ( \rst~input_o\ & ( daddr(0) ) ) # ( !\rst~input_o\ & ( daddr(0) & ( (!daddr(2) & (!daddr(3) & daddr(1))) ) ) ) # ( \rst~input_o\ & ( !daddr(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000110000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_daddr(2),
	datac => ALT_INV_daddr(3),
	datad => ALT_INV_daddr(1),
	datae => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_daddr(0),
	combout => \pattern[2][7]~7_combout\);

-- Location: FF_X19_Y6_N20
\pattern[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][0]~q\);

-- Location: LABCELL_X30_Y6_N48
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \pattern[1][0]~q\ & ( \pattern[2][0]~q\ & ( (!daddr(0) & (((daddr(1)) # (\pattern[0][0]~q\)))) # (daddr(0) & (((!daddr(1))) # (\pattern[3][0]~q\))) ) ) ) # ( !\pattern[1][0]~q\ & ( \pattern[2][0]~q\ & ( (!daddr(0) & (((daddr(1)) # 
-- (\pattern[0][0]~q\)))) # (daddr(0) & (\pattern[3][0]~q\ & ((daddr(1))))) ) ) ) # ( \pattern[1][0]~q\ & ( !\pattern[2][0]~q\ & ( (!daddr(0) & (((\pattern[0][0]~q\ & !daddr(1))))) # (daddr(0) & (((!daddr(1))) # (\pattern[3][0]~q\))) ) ) ) # ( 
-- !\pattern[1][0]~q\ & ( !\pattern[2][0]~q\ & ( (!daddr(0) & (((\pattern[0][0]~q\ & !daddr(1))))) # (daddr(0) & (\pattern[3][0]~q\ & ((daddr(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[3][0]~q\,
	datab => ALT_INV_daddr(0),
	datac => \ALT_INV_pattern[0][0]~q\,
	datad => ALT_INV_daddr(1),
	datae => \ALT_INV_pattern[1][0]~q\,
	dataf => \ALT_INV_pattern[2][0]~q\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X30_Y8_N15
\pattern[8][7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[8][7]~3_combout\ = ( daddr(0) & ( ((daddr(3) & (!daddr(2) & !daddr(1)))) # (\rst~input_o\) ) ) # ( !daddr(0) & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000000111111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => ALT_INV_daddr(1),
	datad => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_daddr(0),
	combout => \pattern[8][7]~3_combout\);

-- Location: FF_X31_Y8_N52
\pattern[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux7~2_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][0]~q\);

-- Location: LABCELL_X19_Y10_N30
\pattern[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[4][0]~feeder_combout\);

-- Location: LABCELL_X27_Y8_N33
\pattern[4][2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][2]~0_combout\ = ( daddr(0) & ( ((!daddr(1) & (daddr(2) & !daddr(3)))) # (\rst~input_o\) ) ) # ( !daddr(0) & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111011001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => \ALT_INV_rst~input_o\,
	datac => ALT_INV_daddr(2),
	datad => ALT_INV_daddr(3),
	dataf => ALT_INV_daddr(0),
	combout => \pattern[4][2]~0_combout\);

-- Location: FF_X19_Y10_N32
\pattern[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][0]~q\);

-- Location: LABCELL_X31_Y8_N18
\pattern[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[6][0]~feeder_combout\);

-- Location: LABCELL_X29_Y6_N54
\pattern[6][7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][7]~4_combout\ = ( daddr(0) & ( ((!daddr(3) & (daddr(2) & daddr(1)))) # (\rst~input_o\) ) ) # ( !daddr(0) & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => \ALT_INV_rst~input_o\,
	datad => ALT_INV_daddr(1),
	dataf => ALT_INV_daddr(0),
	combout => \pattern[6][7]~4_combout\);

-- Location: FF_X31_Y8_N20
\pattern[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][0]~q\);

-- Location: LABCELL_X19_Y14_N24
\pattern[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[5][0]~feeder_combout\);

-- Location: LABCELL_X27_Y8_N39
\pattern[5][7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][7]~1_combout\ = ( daddr(0) & ( \rst~input_o\ ) ) # ( !daddr(0) & ( ((daddr(1) & (daddr(2) & !daddr(3)))) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011001101110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => \ALT_INV_rst~input_o\,
	datac => ALT_INV_daddr(2),
	datad => ALT_INV_daddr(3),
	dataf => ALT_INV_daddr(0),
	combout => \pattern[5][7]~1_combout\);

-- Location: FF_X19_Y14_N26
\pattern[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][0]~q\);

-- Location: LABCELL_X31_Y8_N27
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( daddr(0) & ( \pattern[5][0]~q\ & ( (!daddr(1)) # (\pattern[7][0]~q\) ) ) ) # ( !daddr(0) & ( \pattern[5][0]~q\ & ( (!daddr(1) & (\pattern[4][0]~q\)) # (daddr(1) & ((\pattern[6][0]~q\))) ) ) ) # ( daddr(0) & ( !\pattern[5][0]~q\ & ( 
-- (daddr(1) & \pattern[7][0]~q\) ) ) ) # ( !daddr(0) & ( !\pattern[5][0]~q\ & ( (!daddr(1) & (\pattern[4][0]~q\)) # (daddr(1) & ((\pattern[6][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => \ALT_INV_pattern[7][0]~q\,
	datac => \ALT_INV_pattern[4][0]~q\,
	datad => \ALT_INV_pattern[6][0]~q\,
	datae => ALT_INV_daddr(0),
	dataf => \ALT_INV_pattern[5][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X31_Y8_N51
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \pattern[8][0]~q\ & ( \Mux7~0_combout\ & ( ((daddr(3)) # (daddr(2))) # (\Mux7~1_combout\) ) ) ) # ( !\pattern[8][0]~q\ & ( \Mux7~0_combout\ & ( (!daddr(3) & ((daddr(2)) # (\Mux7~1_combout\))) ) ) ) # ( \pattern[8][0]~q\ & ( 
-- !\Mux7~0_combout\ & ( ((\Mux7~1_combout\ & !daddr(2))) # (daddr(3)) ) ) ) # ( !\pattern[8][0]~q\ & ( !\Mux7~0_combout\ & ( (\Mux7~1_combout\ & (!daddr(2) & !daddr(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111111101011111000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~1_combout\,
	datac => ALT_INV_daddr(2),
	datad => ALT_INV_daddr(3),
	datae => \ALT_INV_pattern[8][0]~q\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: MLABCELL_X21_Y12_N27
\pattern[7][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][0]~feeder_combout\ = ( \Mux7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \pattern[7][0]~feeder_combout\);

-- Location: LABCELL_X27_Y8_N9
\pattern[7][6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][6]~2_combout\ = ( daddr(0) & ( \rst~input_o\ ) ) # ( !daddr(0) & ( ((daddr(3) & (!daddr(2) & !daddr(1)))) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011011100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => \ALT_INV_rst~input_o\,
	datac => ALT_INV_daddr(2),
	datad => ALT_INV_daddr(1),
	dataf => ALT_INV_daddr(0),
	combout => \pattern[7][6]~2_combout\);

-- Location: FF_X21_Y12_N29
\pattern[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][0]~feeder_combout\,
	asdata => \Xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][0]~q\);

-- Location: LABCELL_X19_Y8_N3
\pattern[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[3][1]~feeder_combout\);

-- Location: IOIBUF_X30_Y0_N1
\Xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(1),
	o => \Xin[1]~input_o\);

-- Location: FF_X19_Y8_N5
\pattern[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][1]~q\);

-- Location: LABCELL_X19_Y6_N9
\pattern[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[2][1]~feeder_combout\);

-- Location: FF_X19_Y6_N11
\pattern[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][1]~q\);

-- Location: LABCELL_X31_Y6_N27
\pattern[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[0][1]~feeder_combout\);

-- Location: FF_X31_Y6_N29
\pattern[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][1]~q\);

-- Location: LABCELL_X30_Y6_N6
\pattern[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][1]~feeder_combout\ = \Mux6~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[1][1]~feeder_combout\);

-- Location: FF_X30_Y6_N8
\pattern[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][1]~q\);

-- Location: LABCELL_X30_Y6_N12
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \pattern[0][1]~q\ & ( \pattern[1][1]~q\ & ( (!daddr(1)) # ((!daddr(0) & ((\pattern[2][1]~q\))) # (daddr(0) & (\pattern[3][1]~q\))) ) ) ) # ( !\pattern[0][1]~q\ & ( \pattern[1][1]~q\ & ( (!daddr(1) & (daddr(0))) # (daddr(1) & 
-- ((!daddr(0) & ((\pattern[2][1]~q\))) # (daddr(0) & (\pattern[3][1]~q\)))) ) ) ) # ( \pattern[0][1]~q\ & ( !\pattern[1][1]~q\ & ( (!daddr(1) & (!daddr(0))) # (daddr(1) & ((!daddr(0) & ((\pattern[2][1]~q\))) # (daddr(0) & (\pattern[3][1]~q\)))) ) ) ) # ( 
-- !\pattern[0][1]~q\ & ( !\pattern[1][1]~q\ & ( (daddr(1) & ((!daddr(0) & ((\pattern[2][1]~q\))) # (daddr(0) & (\pattern[3][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => ALT_INV_daddr(0),
	datac => \ALT_INV_pattern[3][1]~q\,
	datad => \ALT_INV_pattern[2][1]~q\,
	datae => \ALT_INV_pattern[0][1]~q\,
	dataf => \ALT_INV_pattern[1][1]~q\,
	combout => \Mux6~1_combout\);

-- Location: FF_X31_Y8_N43
\pattern[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux6~2_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][1]~q\);

-- Location: LABCELL_X31_Y8_N3
\pattern[6][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[6][1]~feeder_combout\);

-- Location: FF_X31_Y8_N5
\pattern[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][1]~q\);

-- Location: LABCELL_X19_Y14_N3
\pattern[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[5][1]~feeder_combout\);

-- Location: FF_X19_Y14_N5
\pattern[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][1]~q\);

-- Location: LABCELL_X19_Y10_N48
\pattern[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[4][1]~feeder_combout\);

-- Location: FF_X19_Y10_N50
\pattern[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][1]~q\);

-- Location: LABCELL_X31_Y8_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( daddr(1) & ( \pattern[7][1]~q\ & ( (daddr(0)) # (\pattern[6][1]~q\) ) ) ) # ( !daddr(1) & ( \pattern[7][1]~q\ & ( (!daddr(0) & ((\pattern[4][1]~q\))) # (daddr(0) & (\pattern[5][1]~q\)) ) ) ) # ( daddr(1) & ( !\pattern[7][1]~q\ & ( 
-- (\pattern[6][1]~q\ & !daddr(0)) ) ) ) # ( !daddr(1) & ( !\pattern[7][1]~q\ & ( (!daddr(0) & ((\pattern[4][1]~q\))) # (daddr(0) & (\pattern[5][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[6][1]~q\,
	datab => ALT_INV_daddr(0),
	datac => \ALT_INV_pattern[5][1]~q\,
	datad => \ALT_INV_pattern[4][1]~q\,
	datae => ALT_INV_daddr(1),
	dataf => \ALT_INV_pattern[7][1]~q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X31_Y8_N42
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \pattern[8][1]~q\ & ( \Mux6~0_combout\ & ( ((daddr(3)) # (daddr(2))) # (\Mux6~1_combout\) ) ) ) # ( !\pattern[8][1]~q\ & ( \Mux6~0_combout\ & ( (!daddr(3) & ((daddr(2)) # (\Mux6~1_combout\))) ) ) ) # ( \pattern[8][1]~q\ & ( 
-- !\Mux6~0_combout\ & ( ((\Mux6~1_combout\ & !daddr(2))) # (daddr(3)) ) ) ) # ( !\pattern[8][1]~q\ & ( !\Mux6~0_combout\ & ( (\Mux6~1_combout\ & (!daddr(2) & !daddr(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011110100111101110000011100000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => ALT_INV_daddr(2),
	datac => ALT_INV_daddr(3),
	datae => \ALT_INV_pattern[8][1]~q\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X21_Y12_N45
\pattern[7][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][1]~feeder_combout\ = ( \Mux6~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \pattern[7][1]~feeder_combout\);

-- Location: FF_X21_Y12_N47
\pattern[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][1]~feeder_combout\,
	asdata => \Xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][1]~q\);

-- Location: LABCELL_X19_Y8_N27
\pattern[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][2]~feeder_combout\ = \Mux5~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[3][2]~feeder_combout\);

-- Location: IOIBUF_X32_Y0_N35
\Xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(2),
	o => \Xin[2]~input_o\);

-- Location: FF_X19_Y8_N29
\pattern[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][2]~q\);

-- Location: LABCELL_X19_Y6_N51
\pattern[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[2][2]~feeder_combout\);

-- Location: FF_X19_Y6_N53
\pattern[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][2]~q\);

-- Location: LABCELL_X31_Y6_N21
\pattern[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[0][2]~feeder_combout\);

-- Location: FF_X31_Y6_N23
\pattern[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][2]~q\);

-- Location: LABCELL_X24_Y6_N57
\pattern[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[1][2]~feeder_combout\);

-- Location: FF_X24_Y6_N59
\pattern[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][2]~q\);

-- Location: LABCELL_X29_Y6_N9
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \pattern[1][2]~q\ & ( daddr(0) & ( (!daddr(1)) # (\pattern[3][2]~q\) ) ) ) # ( !\pattern[1][2]~q\ & ( daddr(0) & ( (\pattern[3][2]~q\ & daddr(1)) ) ) ) # ( \pattern[1][2]~q\ & ( !daddr(0) & ( (!daddr(1) & ((\pattern[0][2]~q\))) # 
-- (daddr(1) & (\pattern[2][2]~q\)) ) ) ) # ( !\pattern[1][2]~q\ & ( !daddr(0) & ( (!daddr(1) & ((\pattern[0][2]~q\))) # (daddr(1) & (\pattern[2][2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[3][2]~q\,
	datab => ALT_INV_daddr(1),
	datac => \ALT_INV_pattern[2][2]~q\,
	datad => \ALT_INV_pattern[0][2]~q\,
	datae => \ALT_INV_pattern[1][2]~q\,
	dataf => ALT_INV_daddr(0),
	combout => \Mux5~1_combout\);

-- Location: FF_X29_Y6_N16
\pattern[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux5~2_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][2]~q\);

-- Location: LABCELL_X29_Y6_N33
\pattern[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[6][2]~feeder_combout\);

-- Location: FF_X29_Y6_N35
\pattern[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][2]~q\);

-- Location: LABCELL_X19_Y14_N48
\pattern[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[5][2]~feeder_combout\);

-- Location: FF_X19_Y14_N50
\pattern[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][2]~q\);

-- Location: LABCELL_X19_Y8_N33
\pattern[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][2]~feeder_combout\ = \Mux5~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[4][2]~feeder_combout\);

-- Location: FF_X19_Y8_N35
\pattern[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][2]~q\);

-- Location: LABCELL_X29_Y6_N27
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \pattern[5][2]~q\ & ( \pattern[4][2]~q\ & ( (!daddr(1)) # ((!daddr(0) & ((\pattern[6][2]~q\))) # (daddr(0) & (\pattern[7][2]~q\))) ) ) ) # ( !\pattern[5][2]~q\ & ( \pattern[4][2]~q\ & ( (!daddr(1) & (((!daddr(0))))) # (daddr(1) & 
-- ((!daddr(0) & ((\pattern[6][2]~q\))) # (daddr(0) & (\pattern[7][2]~q\)))) ) ) ) # ( \pattern[5][2]~q\ & ( !\pattern[4][2]~q\ & ( (!daddr(1) & (((daddr(0))))) # (daddr(1) & ((!daddr(0) & ((\pattern[6][2]~q\))) # (daddr(0) & (\pattern[7][2]~q\)))) ) ) ) # ( 
-- !\pattern[5][2]~q\ & ( !\pattern[4][2]~q\ & ( (daddr(1) & ((!daddr(0) & ((\pattern[6][2]~q\))) # (daddr(0) & (\pattern[7][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[7][2]~q\,
	datab => ALT_INV_daddr(1),
	datac => ALT_INV_daddr(0),
	datad => \ALT_INV_pattern[6][2]~q\,
	datae => \ALT_INV_pattern[5][2]~q\,
	dataf => \ALT_INV_pattern[4][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X29_Y6_N15
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \pattern[8][2]~q\ & ( \Mux5~0_combout\ & ( ((daddr(2)) # (\Mux5~1_combout\)) # (daddr(3)) ) ) ) # ( !\pattern[8][2]~q\ & ( \Mux5~0_combout\ & ( (!daddr(3) & ((daddr(2)) # (\Mux5~1_combout\))) ) ) ) # ( \pattern[8][2]~q\ & ( 
-- !\Mux5~0_combout\ & ( ((\Mux5~1_combout\ & !daddr(2))) # (daddr(3)) ) ) ) # ( !\pattern[8][2]~q\ & ( !\Mux5~0_combout\ & ( (!daddr(3) & (\Mux5~1_combout\ & !daddr(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000011101010111010100101010001010100111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => \ALT_INV_Mux5~1_combout\,
	datac => ALT_INV_daddr(2),
	datae => \ALT_INV_pattern[8][2]~q\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X21_Y12_N48
\pattern[7][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][2]~feeder_combout\ = ( \Mux5~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \pattern[7][2]~feeder_combout\);

-- Location: FF_X21_Y12_N50
\pattern[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][2]~feeder_combout\,
	asdata => \Xin[2]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][2]~q\);

-- Location: LABCELL_X19_Y8_N57
\pattern[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[3][3]~feeder_combout\);

-- Location: IOIBUF_X32_Y0_N52
\Xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(3),
	o => \Xin[3]~input_o\);

-- Location: FF_X19_Y8_N59
\pattern[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][3]~q\);

-- Location: LABCELL_X30_Y6_N18
\pattern[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][3]~feeder_combout\ = \Mux4~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[1][3]~feeder_combout\);

-- Location: FF_X30_Y6_N20
\pattern[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][3]~q\);

-- Location: LABCELL_X31_Y6_N57
\pattern[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][3]~feeder_combout\ = \Mux4~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[0][3]~feeder_combout\);

-- Location: FF_X31_Y6_N59
\pattern[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][3]~q\);

-- Location: LABCELL_X19_Y6_N15
\pattern[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[2][3]~feeder_combout\);

-- Location: FF_X19_Y6_N17
\pattern[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][3]~q\);

-- Location: LABCELL_X30_Y6_N3
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \pattern[0][3]~q\ & ( \pattern[2][3]~q\ & ( (!daddr(0)) # ((!daddr(1) & ((\pattern[1][3]~q\))) # (daddr(1) & (\pattern[3][3]~q\))) ) ) ) # ( !\pattern[0][3]~q\ & ( \pattern[2][3]~q\ & ( (!daddr(0) & (((daddr(1))))) # (daddr(0) & 
-- ((!daddr(1) & ((\pattern[1][3]~q\))) # (daddr(1) & (\pattern[3][3]~q\)))) ) ) ) # ( \pattern[0][3]~q\ & ( !\pattern[2][3]~q\ & ( (!daddr(0) & (((!daddr(1))))) # (daddr(0) & ((!daddr(1) & ((\pattern[1][3]~q\))) # (daddr(1) & (\pattern[3][3]~q\)))) ) ) ) # 
-- ( !\pattern[0][3]~q\ & ( !\pattern[2][3]~q\ & ( (daddr(0) & ((!daddr(1) & ((\pattern[1][3]~q\))) # (daddr(1) & (\pattern[3][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[3][3]~q\,
	datab => ALT_INV_daddr(0),
	datac => ALT_INV_daddr(1),
	datad => \ALT_INV_pattern[1][3]~q\,
	datae => \ALT_INV_pattern[0][3]~q\,
	dataf => \ALT_INV_pattern[2][3]~q\,
	combout => \Mux4~1_combout\);

-- Location: FF_X30_Y8_N13
\pattern[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux4~2_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][3]~q\);

-- Location: LABCELL_X19_Y14_N9
\pattern[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[5][3]~feeder_combout\);

-- Location: FF_X19_Y14_N11
\pattern[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][3]~q\);

-- Location: LABCELL_X30_Y8_N9
\pattern[6][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[6][3]~feeder_combout\);

-- Location: FF_X30_Y8_N11
\pattern[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][3]~q\);

-- Location: LABCELL_X19_Y8_N42
\pattern[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[4][3]~feeder_combout\);

-- Location: FF_X19_Y8_N44
\pattern[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][3]~q\);

-- Location: LABCELL_X30_Y8_N18
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \pattern[4][3]~q\ & ( \pattern[7][3]~q\ & ( (!daddr(0) & (((!daddr(1)) # (\pattern[6][3]~q\)))) # (daddr(0) & (((daddr(1))) # (\pattern[5][3]~q\))) ) ) ) # ( !\pattern[4][3]~q\ & ( \pattern[7][3]~q\ & ( (!daddr(0) & 
-- (((\pattern[6][3]~q\ & daddr(1))))) # (daddr(0) & (((daddr(1))) # (\pattern[5][3]~q\))) ) ) ) # ( \pattern[4][3]~q\ & ( !\pattern[7][3]~q\ & ( (!daddr(0) & (((!daddr(1)) # (\pattern[6][3]~q\)))) # (daddr(0) & (\pattern[5][3]~q\ & ((!daddr(1))))) ) ) ) # ( 
-- !\pattern[4][3]~q\ & ( !\pattern[7][3]~q\ & ( (!daddr(0) & (((\pattern[6][3]~q\ & daddr(1))))) # (daddr(0) & (\pattern[5][3]~q\ & ((!daddr(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[5][3]~q\,
	datab => \ALT_INV_pattern[6][3]~q\,
	datac => ALT_INV_daddr(0),
	datad => ALT_INV_daddr(1),
	datae => \ALT_INV_pattern[4][3]~q\,
	dataf => \ALT_INV_pattern[7][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X30_Y8_N12
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~0_combout\ & ( (!daddr(3) & (((\Mux4~1_combout\)) # (daddr(2)))) # (daddr(3) & (((\pattern[8][3]~q\)))) ) ) # ( !\Mux4~0_combout\ & ( (!daddr(3) & (!daddr(2) & (\Mux4~1_combout\))) # (daddr(3) & (((\pattern[8][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_pattern[8][3]~q\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X21_Y12_N21
\pattern[7][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][3]~feeder_combout\ = ( \Mux4~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \pattern[7][3]~feeder_combout\);

-- Location: FF_X21_Y12_N23
\pattern[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][3]~feeder_combout\,
	asdata => \Xin[3]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][3]~q\);

-- Location: LABCELL_X19_Y8_N12
\pattern[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][4]~feeder_combout\ = \Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[3][4]~feeder_combout\);

-- Location: IOIBUF_X32_Y0_N18
\Xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(4),
	o => \Xin[4]~input_o\);

-- Location: FF_X19_Y8_N14
\pattern[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][4]~q\);

-- Location: LABCELL_X31_Y6_N51
\pattern[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][4]~feeder_combout\ = ( \Mux3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[0][4]~feeder_combout\);

-- Location: FF_X31_Y6_N53
\pattern[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][4]~q\);

-- Location: LABCELL_X19_Y6_N33
\pattern[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][4]~feeder_combout\ = \Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[2][4]~feeder_combout\);

-- Location: FF_X19_Y6_N35
\pattern[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][4]~q\);

-- Location: LABCELL_X27_Y6_N54
\pattern[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][4]~feeder_combout\ = \Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[1][4]~feeder_combout\);

-- Location: FF_X27_Y6_N56
\pattern[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][4]~q\);

-- Location: LABCELL_X30_Y6_N54
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \pattern[2][4]~q\ & ( \pattern[1][4]~q\ & ( (!daddr(0) & (((daddr(1)) # (\pattern[0][4]~q\)))) # (daddr(0) & (((!daddr(1))) # (\pattern[3][4]~q\))) ) ) ) # ( !\pattern[2][4]~q\ & ( \pattern[1][4]~q\ & ( (!daddr(0) & 
-- (((\pattern[0][4]~q\ & !daddr(1))))) # (daddr(0) & (((!daddr(1))) # (\pattern[3][4]~q\))) ) ) ) # ( \pattern[2][4]~q\ & ( !\pattern[1][4]~q\ & ( (!daddr(0) & (((daddr(1)) # (\pattern[0][4]~q\)))) # (daddr(0) & (\pattern[3][4]~q\ & ((daddr(1))))) ) ) ) # ( 
-- !\pattern[2][4]~q\ & ( !\pattern[1][4]~q\ & ( (!daddr(0) & (((\pattern[0][4]~q\ & !daddr(1))))) # (daddr(0) & (\pattern[3][4]~q\ & ((daddr(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[3][4]~q\,
	datab => ALT_INV_daddr(0),
	datac => \ALT_INV_pattern[0][4]~q\,
	datad => ALT_INV_daddr(1),
	datae => \ALT_INV_pattern[2][4]~q\,
	dataf => \ALT_INV_pattern[1][4]~q\,
	combout => \Mux3~1_combout\);

-- Location: FF_X30_Y8_N43
\pattern[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux3~2_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][4]~q\);

-- Location: LABCELL_X30_Y8_N48
\pattern[6][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][4]~feeder_combout\ = ( \Mux3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[6][4]~feeder_combout\);

-- Location: FF_X30_Y8_N50
\pattern[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][4]~q\);

-- Location: LABCELL_X19_Y10_N39
\pattern[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][4]~feeder_combout\ = ( \Mux3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[4][4]~feeder_combout\);

-- Location: FF_X19_Y10_N41
\pattern[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][4]~q\);

-- Location: LABCELL_X19_Y14_N12
\pattern[5][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][4]~feeder_combout\ = ( \Mux3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[5][4]~feeder_combout\);

-- Location: FF_X19_Y14_N14
\pattern[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][4]~q\);

-- Location: LABCELL_X30_Y8_N27
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \pattern[4][4]~q\ & ( \pattern[5][4]~q\ & ( (!daddr(1)) # ((!daddr(0) & ((\pattern[6][4]~q\))) # (daddr(0) & (\pattern[7][4]~q\))) ) ) ) # ( !\pattern[4][4]~q\ & ( \pattern[5][4]~q\ & ( (!daddr(0) & (daddr(1) & ((\pattern[6][4]~q\)))) 
-- # (daddr(0) & ((!daddr(1)) # ((\pattern[7][4]~q\)))) ) ) ) # ( \pattern[4][4]~q\ & ( !\pattern[5][4]~q\ & ( (!daddr(0) & ((!daddr(1)) # ((\pattern[6][4]~q\)))) # (daddr(0) & (daddr(1) & (\pattern[7][4]~q\))) ) ) ) # ( !\pattern[4][4]~q\ & ( 
-- !\pattern[5][4]~q\ & ( (daddr(1) & ((!daddr(0) & ((\pattern[6][4]~q\))) # (daddr(0) & (\pattern[7][4]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(0),
	datab => ALT_INV_daddr(1),
	datac => \ALT_INV_pattern[7][4]~q\,
	datad => \ALT_INV_pattern[6][4]~q\,
	datae => \ALT_INV_pattern[4][4]~q\,
	dataf => \ALT_INV_pattern[5][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X30_Y8_N42
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \pattern[8][4]~q\ & ( \Mux3~0_combout\ & ( ((daddr(3)) # (\Mux3~1_combout\)) # (daddr(2)) ) ) ) # ( !\pattern[8][4]~q\ & ( \Mux3~0_combout\ & ( (!daddr(3) & ((\Mux3~1_combout\) # (daddr(2)))) ) ) ) # ( \pattern[8][4]~q\ & ( 
-- !\Mux3~0_combout\ & ( ((!daddr(2) & \Mux3~1_combout\)) # (daddr(3)) ) ) ) # ( !\pattern[8][4]~q\ & ( !\Mux3~0_combout\ & ( (!daddr(2) & (\Mux3~1_combout\ & !daddr(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001011110010111101110000011100000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(2),
	datab => \ALT_INV_Mux3~1_combout\,
	datac => ALT_INV_daddr(3),
	datae => \ALT_INV_pattern[8][4]~q\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X21_Y12_N12
\pattern[7][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][4]~feeder_combout\ = ( \Mux3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \pattern[7][4]~feeder_combout\);

-- Location: FF_X21_Y12_N14
\pattern[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][4]~feeder_combout\,
	asdata => \Xin[4]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][4]~q\);

-- Location: LABCELL_X30_Y6_N39
\pattern[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][5]~feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[1][5]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N1
\Xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(5),
	o => \Xin[5]~input_o\);

-- Location: FF_X30_Y6_N41
\pattern[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][5]~q\);

-- Location: LABCELL_X19_Y8_N48
\pattern[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][5]~feeder_combout\ = ( \Mux2~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[3][5]~feeder_combout\);

-- Location: FF_X19_Y8_N50
\pattern[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][5]~q\);

-- Location: LABCELL_X19_Y6_N36
\pattern[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][5]~feeder_combout\ = ( \Mux2~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[2][5]~feeder_combout\);

-- Location: FF_X19_Y6_N38
\pattern[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][5]~q\);

-- Location: LABCELL_X31_Y6_N36
\pattern[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][5]~feeder_combout\ = ( \Mux2~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[0][5]~feeder_combout\);

-- Location: FF_X31_Y6_N38
\pattern[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][5]~q\);

-- Location: LABCELL_X30_Y6_N30
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \pattern[0][5]~q\ & ( daddr(0) & ( (!daddr(1) & (\pattern[1][5]~q\)) # (daddr(1) & ((\pattern[3][5]~q\))) ) ) ) # ( !\pattern[0][5]~q\ & ( daddr(0) & ( (!daddr(1) & (\pattern[1][5]~q\)) # (daddr(1) & ((\pattern[3][5]~q\))) ) ) ) # ( 
-- \pattern[0][5]~q\ & ( !daddr(0) & ( (!daddr(1)) # (\pattern[2][5]~q\) ) ) ) # ( !\pattern[0][5]~q\ & ( !daddr(0) & ( (daddr(1) & \pattern[2][5]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => \ALT_INV_pattern[1][5]~q\,
	datac => \ALT_INV_pattern[3][5]~q\,
	datad => \ALT_INV_pattern[2][5]~q\,
	datae => \ALT_INV_pattern[0][5]~q\,
	dataf => ALT_INV_daddr(0),
	combout => \Mux2~1_combout\);

-- Location: FF_X31_Y8_N37
\pattern[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux2~2_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][5]~q\);

-- Location: LABCELL_X19_Y14_N21
\pattern[5][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][5]~feeder_combout\ = ( \Mux2~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[5][5]~feeder_combout\);

-- Location: FF_X19_Y14_N23
\pattern[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][5]~q\);

-- Location: LABCELL_X19_Y10_N42
\pattern[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][5]~feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[4][5]~feeder_combout\);

-- Location: FF_X19_Y10_N44
\pattern[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][5]~q\);

-- Location: LABCELL_X31_Y8_N54
\pattern[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][5]~feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[6][5]~feeder_combout\);

-- Location: FF_X31_Y8_N56
\pattern[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][5]~q\);

-- Location: LABCELL_X31_Y8_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \pattern[6][5]~q\ & ( \pattern[7][5]~q\ & ( ((!daddr(0) & ((\pattern[4][5]~q\))) # (daddr(0) & (\pattern[5][5]~q\))) # (daddr(1)) ) ) ) # ( !\pattern[6][5]~q\ & ( \pattern[7][5]~q\ & ( (!daddr(1) & ((!daddr(0) & ((\pattern[4][5]~q\))) 
-- # (daddr(0) & (\pattern[5][5]~q\)))) # (daddr(1) & (((daddr(0))))) ) ) ) # ( \pattern[6][5]~q\ & ( !\pattern[7][5]~q\ & ( (!daddr(1) & ((!daddr(0) & ((\pattern[4][5]~q\))) # (daddr(0) & (\pattern[5][5]~q\)))) # (daddr(1) & (((!daddr(0))))) ) ) ) # ( 
-- !\pattern[6][5]~q\ & ( !\pattern[7][5]~q\ & ( (!daddr(1) & ((!daddr(0) & ((\pattern[4][5]~q\))) # (daddr(0) & (\pattern[5][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(1),
	datab => \ALT_INV_pattern[5][5]~q\,
	datac => \ALT_INV_pattern[4][5]~q\,
	datad => ALT_INV_daddr(0),
	datae => \ALT_INV_pattern[6][5]~q\,
	dataf => \ALT_INV_pattern[7][5]~q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X31_Y8_N36
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \pattern[8][5]~q\ & ( \Mux2~0_combout\ & ( ((\Mux2~1_combout\) # (daddr(2))) # (daddr(3)) ) ) ) # ( !\pattern[8][5]~q\ & ( \Mux2~0_combout\ & ( (!daddr(3) & ((\Mux2~1_combout\) # (daddr(2)))) ) ) ) # ( \pattern[8][5]~q\ & ( 
-- !\Mux2~0_combout\ & ( ((!daddr(2) & \Mux2~1_combout\)) # (daddr(3)) ) ) ) # ( !\pattern[8][5]~q\ & ( !\Mux2~0_combout\ & ( (!daddr(3) & (!daddr(2) & \Mux2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000010111010101110100101010001010100111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => ALT_INV_daddr(2),
	datac => \ALT_INV_Mux2~1_combout\,
	datae => \ALT_INV_pattern[8][5]~q\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X21_Y12_N54
\pattern[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][5]~feeder_combout\ = ( \Mux2~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \pattern[7][5]~feeder_combout\);

-- Location: FF_X21_Y12_N56
\pattern[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][5]~feeder_combout\,
	asdata => \Xin[5]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][5]~q\);

-- Location: LABCELL_X31_Y6_N30
\pattern[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[6][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[6][6]~feeder_combout\);

-- Location: IOIBUF_X30_Y0_N35
\Xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(6),
	o => \Xin[6]~input_o\);

-- Location: FF_X31_Y6_N32
\pattern[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[6][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][6]~q\);

-- Location: LABCELL_X19_Y10_N9
\pattern[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[4][6]~feeder_combout\);

-- Location: FF_X19_Y10_N11
\pattern[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][6]~q\);

-- Location: LABCELL_X19_Y14_N54
\pattern[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[5][6]~feeder_combout\);

-- Location: FF_X19_Y14_N56
\pattern[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][6]~q\);

-- Location: LABCELL_X27_Y6_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \pattern[5][6]~q\ & ( \pattern[7][6]~q\ & ( ((!daddr(1) & ((\pattern[4][6]~q\))) # (daddr(1) & (\pattern[6][6]~q\))) # (daddr(0)) ) ) ) # ( !\pattern[5][6]~q\ & ( \pattern[7][6]~q\ & ( (!daddr(1) & (((!daddr(0) & \pattern[4][6]~q\)))) 
-- # (daddr(1) & (((daddr(0))) # (\pattern[6][6]~q\))) ) ) ) # ( \pattern[5][6]~q\ & ( !\pattern[7][6]~q\ & ( (!daddr(1) & (((\pattern[4][6]~q\) # (daddr(0))))) # (daddr(1) & (\pattern[6][6]~q\ & (!daddr(0)))) ) ) ) # ( !\pattern[5][6]~q\ & ( 
-- !\pattern[7][6]~q\ & ( (!daddr(0) & ((!daddr(1) & ((\pattern[4][6]~q\))) # (daddr(1) & (\pattern[6][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[6][6]~q\,
	datab => ALT_INV_daddr(1),
	datac => ALT_INV_daddr(0),
	datad => \ALT_INV_pattern[4][6]~q\,
	datae => \ALT_INV_pattern[5][6]~q\,
	dataf => \ALT_INV_pattern[7][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X19_Y8_N39
\pattern[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[3][6]~feeder_combout\);

-- Location: FF_X19_Y8_N41
\pattern[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][6]~q\);

-- Location: MLABCELL_X25_Y6_N3
\pattern[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[1][6]~feeder_combout\);

-- Location: FF_X25_Y6_N5
\pattern[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][6]~q\);

-- Location: LABCELL_X31_Y6_N42
\pattern[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[0][6]~feeder_combout\);

-- Location: FF_X31_Y6_N44
\pattern[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][6]~q\);

-- Location: LABCELL_X19_Y6_N54
\pattern[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][6]~feeder_combout\ = ( \Mux1~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[2][6]~feeder_combout\);

-- Location: FF_X19_Y6_N56
\pattern[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][6]~q\);

-- Location: LABCELL_X27_Y6_N24
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \pattern[2][6]~q\ & ( daddr(0) & ( (!daddr(1) & ((\pattern[1][6]~q\))) # (daddr(1) & (\pattern[3][6]~q\)) ) ) ) # ( !\pattern[2][6]~q\ & ( daddr(0) & ( (!daddr(1) & ((\pattern[1][6]~q\))) # (daddr(1) & (\pattern[3][6]~q\)) ) ) ) # ( 
-- \pattern[2][6]~q\ & ( !daddr(0) & ( (daddr(1)) # (\pattern[0][6]~q\) ) ) ) # ( !\pattern[2][6]~q\ & ( !daddr(0) & ( (\pattern[0][6]~q\ & !daddr(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[3][6]~q\,
	datab => \ALT_INV_pattern[1][6]~q\,
	datac => \ALT_INV_pattern[0][6]~q\,
	datad => ALT_INV_daddr(1),
	datae => \ALT_INV_pattern[2][6]~q\,
	dataf => ALT_INV_daddr(0),
	combout => \Mux1~1_combout\);

-- Location: FF_X27_Y6_N41
\pattern[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux1~2_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][6]~q\);

-- Location: LABCELL_X27_Y6_N39
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \pattern[8][6]~q\ & ( daddr(3) ) ) # ( \pattern[8][6]~q\ & ( !daddr(3) & ( (!daddr(2) & ((\Mux1~1_combout\))) # (daddr(2) & (\Mux1~0_combout\)) ) ) ) # ( !\pattern[8][6]~q\ & ( !daddr(3) & ( (!daddr(2) & ((\Mux1~1_combout\))) # 
-- (daddr(2) & (\Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datac => ALT_INV_daddr(2),
	datad => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_pattern[8][6]~q\,
	dataf => ALT_INV_daddr(3),
	combout => \Mux1~2_combout\);

-- Location: MLABCELL_X21_Y12_N39
\pattern[7][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][6]~feeder_combout\ = \Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~2_combout\,
	combout => \pattern[7][6]~feeder_combout\);

-- Location: FF_X21_Y12_N41
\pattern[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][6]~feeder_combout\,
	asdata => \Xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][6]~q\);

-- Location: LABCELL_X19_Y6_N24
\pattern[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[2][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[2][7]~feeder_combout\);

-- Location: IOIBUF_X30_Y0_N18
\Xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(7),
	o => \Xin[7]~input_o\);

-- Location: FF_X19_Y6_N26
\pattern[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[2][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[2][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[2][7]~q\);

-- Location: LABCELL_X31_Y6_N12
\pattern[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[0][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[0][7]~feeder_combout\);

-- Location: FF_X31_Y6_N14
\pattern[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[0][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[0][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[0][7]~q\);

-- Location: LABCELL_X19_Y8_N18
\pattern[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[3][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[3][7]~feeder_combout\);

-- Location: FF_X19_Y8_N20
\pattern[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[3][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[3][7]~q\);

-- Location: MLABCELL_X25_Y6_N39
\pattern[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[1][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[1][7]~feeder_combout\);

-- Location: FF_X25_Y6_N41
\pattern[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[1][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[1][7]~q\);

-- Location: LABCELL_X29_Y6_N39
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \pattern[1][7]~q\ & ( daddr(0) & ( (!daddr(1)) # (\pattern[3][7]~q\) ) ) ) # ( !\pattern[1][7]~q\ & ( daddr(0) & ( (daddr(1) & \pattern[3][7]~q\) ) ) ) # ( \pattern[1][7]~q\ & ( !daddr(0) & ( (!daddr(1) & ((\pattern[0][7]~q\))) # 
-- (daddr(1) & (\pattern[2][7]~q\)) ) ) ) # ( !\pattern[1][7]~q\ & ( !daddr(0) & ( (!daddr(1) & ((\pattern[0][7]~q\))) # (daddr(1) & (\pattern[2][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pattern[2][7]~q\,
	datab => ALT_INV_daddr(1),
	datac => \ALT_INV_pattern[0][7]~q\,
	datad => \ALT_INV_pattern[3][7]~q\,
	datae => \ALT_INV_pattern[1][7]~q\,
	dataf => ALT_INV_daddr(0),
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X30_Y8_N3
\pattern[8][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[8][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[8][7]~feeder_combout\);

-- Location: FF_X30_Y8_N5
\pattern[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[8][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[8][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[8][7]~q\);

-- Location: LABCELL_X19_Y10_N12
\pattern[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[4][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[4][7]~feeder_combout\);

-- Location: FF_X19_Y10_N14
\pattern[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[4][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[4][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[4][7]~q\);

-- Location: FF_X30_Y8_N59
\pattern[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Mux0~2_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[6][7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[6][7]~q\);

-- Location: LABCELL_X19_Y14_N33
\pattern[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[5][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[5][7]~feeder_combout\);

-- Location: FF_X19_Y14_N35
\pattern[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[5][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[5][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[5][7]~q\);

-- Location: LABCELL_X30_Y8_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \pattern[7][7]~q\ & ( \pattern[5][7]~q\ & ( ((!daddr(1) & (\pattern[4][7]~q\)) # (daddr(1) & ((\pattern[6][7]~q\)))) # (daddr(0)) ) ) ) # ( !\pattern[7][7]~q\ & ( \pattern[5][7]~q\ & ( (!daddr(0) & ((!daddr(1) & (\pattern[4][7]~q\)) # 
-- (daddr(1) & ((\pattern[6][7]~q\))))) # (daddr(0) & (!daddr(1))) ) ) ) # ( \pattern[7][7]~q\ & ( !\pattern[5][7]~q\ & ( (!daddr(0) & ((!daddr(1) & (\pattern[4][7]~q\)) # (daddr(1) & ((\pattern[6][7]~q\))))) # (daddr(0) & (daddr(1))) ) ) ) # ( 
-- !\pattern[7][7]~q\ & ( !\pattern[5][7]~q\ & ( (!daddr(0) & ((!daddr(1) & (\pattern[4][7]~q\)) # (daddr(1) & ((\pattern[6][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(0),
	datab => ALT_INV_daddr(1),
	datac => \ALT_INV_pattern[4][7]~q\,
	datad => \ALT_INV_pattern[6][7]~q\,
	datae => \ALT_INV_pattern[7][7]~q\,
	dataf => \ALT_INV_pattern[5][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X30_Y8_N57
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \pattern[8][7]~q\ & ( \Mux0~0_combout\ & ( ((daddr(2)) # (\Mux0~1_combout\)) # (daddr(3)) ) ) ) # ( !\pattern[8][7]~q\ & ( \Mux0~0_combout\ & ( (!daddr(3) & ((daddr(2)) # (\Mux0~1_combout\))) ) ) ) # ( \pattern[8][7]~q\ & ( 
-- !\Mux0~0_combout\ & ( ((\Mux0~1_combout\ & !daddr(2))) # (daddr(3)) ) ) ) # ( !\pattern[8][7]~q\ & ( !\Mux0~0_combout\ & ( (!daddr(3) & (\Mux0~1_combout\ & !daddr(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000011101110101010100100010101010100111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_daddr(3),
	datab => \ALT_INV_Mux0~1_combout\,
	datad => ALT_INV_daddr(2),
	datae => \ALT_INV_pattern[8][7]~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: MLABCELL_X21_Y12_N33
\pattern[7][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pattern[7][7]~feeder_combout\ = ( \Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~2_combout\,
	combout => \pattern[7][7]~feeder_combout\);

-- Location: FF_X21_Y12_N35
\pattern[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \pattern[7][7]~feeder_combout\,
	asdata => \Xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => \LessThan0~0_combout\,
	ena => \pattern[7][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pattern[7][7]~q\);

-- Location: DSP_X20_Y8_N0
\Add10~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 8,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 8,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Add10~8_AX_bus\,
	ay => \Add10~8_AY_bus\,
	bx => \Add10~8_BX_bus\,
	by => \Add10~8_BY_bus\,
	resulta => \Add10~8_RESULTA_bus\);

-- Location: DSP_X32_Y8_N0
\Mult10~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult10~mac_AX_bus\,
	ay => \Mult10~mac_AY_bus\,
	bx => \Mult10~mac_BX_bus\,
	by => \Mult10~mac_BY_bus\,
	resulta => \Mult10~mac_RESULTA_bus\);

-- Location: DSP_X32_Y10_N0
\Mult11~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult11~mac_AX_bus\,
	ay => \Mult11~mac_AY_bus\,
	bx => \Mult11~mac_BX_bus\,
	by => \Mult11~mac_BY_bus\,
	resulta => \Mult11~mac_RESULTA_bus\);

-- Location: LABCELL_X27_Y8_N18
\out_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_cnt~0_combout\ = ( !out_cnt(1) & ( out_cnt(0) & ( (!\LessThan0~0_combout\ & (!\rst~input_o\ & !\LessThan3~0_combout\)) ) ) ) # ( out_cnt(1) & ( !out_cnt(0) & ( (!\LessThan0~0_combout\ & (!\rst~input_o\ & !\LessThan3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datae => ALT_INV_out_cnt(1),
	dataf => ALT_INV_out_cnt(0),
	combout => \out_cnt~0_combout\);

-- Location: FF_X27_Y8_N20
\out_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \out_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_cnt(1));

-- Location: DSP_X20_Y14_N0
\Add13~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 8,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 8,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Add13~8_AX_bus\,
	ay => \Add13~8_AY_bus\,
	bx => \Add13~8_BX_bus\,
	by => \Add13~8_BY_bus\,
	resulta => \Add13~8_RESULTA_bus\);

-- Location: DSP_X20_Y12_N0
\Mult14~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult14~mac_AX_bus\,
	ay => \Mult14~mac_AY_bus\,
	bx => \Mult14~mac_BX_bus\,
	by => \Mult14~mac_BY_bus\,
	resulta => \Mult14~mac_RESULTA_bus\);

-- Location: DSP_X20_Y10_N0
\Mult15~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult15~mac_AX_bus\,
	ay => \Mult15~mac_AY_bus\,
	bx => \Mult15~mac_BX_bus\,
	by => \Mult15~mac_BY_bus\,
	resulta => \Mult15~mac_RESULTA_bus\);

-- Location: DSP_X20_Y6_N0
\Add7~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 8,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 8,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Add7~8_AX_bus\,
	ay => \Add7~8_AY_bus\,
	bx => \Add7~8_BX_bus\,
	by => \Add7~8_BY_bus\,
	resulta => \Add7~8_RESULTA_bus\);

-- Location: DSP_X20_Y4_N0
\Mult6~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult6~mac_AX_bus\,
	ay => \Mult6~mac_AY_bus\,
	bx => \Mult6~mac_BX_bus\,
	by => \Mult6~mac_BY_bus\,
	resulta => \Mult6~mac_RESULTA_bus\);

-- Location: DSP_X32_Y4_N0
\Mult7~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult7~mac_AX_bus\,
	ay => \Mult7~mac_AY_bus\,
	bx => \Mult7~mac_BX_bus\,
	by => \Mult7~mac_BY_bus\,
	resulta => \Mult7~mac_RESULTA_bus\);

-- Location: DSP_X32_Y6_N0
\Add4~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 8,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 8,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Add4~8_AX_bus\,
	ay => \Add4~8_AY_bus\,
	bx => \Add4~8_BX_bus\,
	by => \Add4~8_BY_bus\,
	resulta => \Add4~8_RESULTA_bus\);

-- Location: DSP_X32_Y14_N0
\Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult2~mac_AX_bus\,
	ay => \Mult2~mac_AY_bus\,
	bx => \Mult2~mac_BX_bus\,
	by => \Mult2~mac_BY_bus\,
	resulta => \Mult2~mac_RESULTA_bus\);

-- Location: DSP_X32_Y12_N0
\Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult3~mac_AX_bus\,
	ay => \Mult3~mac_AY_bus\,
	bx => \Mult3~mac_BX_bus\,
	by => \Mult3~mac_BY_bus\,
	resulta => \Mult3~mac_RESULTA_bus\);

-- Location: LABCELL_X31_Y10_N36
\Rout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~0_combout\ = ( \Mult7~mac_resulta\ & ( \Mult3~mac_resulta\ & ( (!out_cnt(0) & (((\Mult15~mac_resulta\) # (out_cnt(1))))) # (out_cnt(0) & (((!out_cnt(1))) # (\Mult11~mac_resulta\))) ) ) ) # ( !\Mult7~mac_resulta\ & ( \Mult3~mac_resulta\ & ( 
-- (!out_cnt(0) & (((!out_cnt(1) & \Mult15~mac_resulta\)))) # (out_cnt(0) & (((!out_cnt(1))) # (\Mult11~mac_resulta\))) ) ) ) # ( \Mult7~mac_resulta\ & ( !\Mult3~mac_resulta\ & ( (!out_cnt(0) & (((\Mult15~mac_resulta\) # (out_cnt(1))))) # (out_cnt(0) & 
-- (\Mult11~mac_resulta\ & (out_cnt(1)))) ) ) ) # ( !\Mult7~mac_resulta\ & ( !\Mult3~mac_resulta\ & ( (!out_cnt(0) & (((!out_cnt(1) & \Mult15~mac_resulta\)))) # (out_cnt(0) & (\Mult11~mac_resulta\ & (out_cnt(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => \ALT_INV_Mult11~mac_resulta\,
	datac => ALT_INV_out_cnt(1),
	datad => \ALT_INV_Mult15~mac_resulta\,
	datae => \ALT_INV_Mult7~mac_resulta\,
	dataf => \ALT_INV_Mult3~mac_resulta\,
	combout => \Rout~0_combout\);

-- Location: MLABCELL_X28_Y8_N15
\Rout[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout[6]~1_combout\ = ( \LessThan3~0_combout\ & ( \LessThan0~0_combout\ ) ) # ( !\LessThan3~0_combout\ & ( \LessThan0~0_combout\ ) ) # ( \LessThan3~0_combout\ & ( !\LessThan0~0_combout\ ) ) # ( !\LessThan3~0_combout\ & ( !\LessThan0~0_combout\ & ( 
-- \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \Rout[6]~1_combout\);

-- Location: FF_X31_Y10_N37
\Rout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~0_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[0]~reg0_q\);

-- Location: LABCELL_X31_Y10_N54
\Rout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~2_combout\ = ( \Mult3~333\ & ( \Mult7~333\ & ( (!out_cnt(0) & (((\Mult15~333\)) # (out_cnt(1)))) # (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~333\)))) ) ) ) # ( !\Mult3~333\ & ( \Mult7~333\ & ( (!out_cnt(0) & (((\Mult15~333\)) # (out_cnt(1)))) # 
-- (out_cnt(0) & (out_cnt(1) & (\Mult11~333\))) ) ) ) # ( \Mult3~333\ & ( !\Mult7~333\ & ( (!out_cnt(0) & (!out_cnt(1) & ((\Mult15~333\)))) # (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~333\)))) ) ) ) # ( !\Mult3~333\ & ( !\Mult7~333\ & ( (!out_cnt(0) & 
-- (!out_cnt(1) & ((\Mult15~333\)))) # (out_cnt(0) & (out_cnt(1) & (\Mult11~333\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult11~333\,
	datad => \ALT_INV_Mult15~333\,
	datae => \ALT_INV_Mult3~333\,
	dataf => \ALT_INV_Mult7~333\,
	combout => \Rout~2_combout\);

-- Location: FF_X31_Y10_N55
\Rout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~2_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[1]~reg0_q\);

-- Location: LABCELL_X31_Y10_N48
\Rout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~3_combout\ = ( \Mult15~334\ & ( \Mult7~334\ & ( (!out_cnt(0)) # ((!out_cnt(1) & (\Mult3~334\)) # (out_cnt(1) & ((\Mult11~334\)))) ) ) ) # ( !\Mult15~334\ & ( \Mult7~334\ & ( (!out_cnt(0) & (out_cnt(1))) # (out_cnt(0) & ((!out_cnt(1) & (\Mult3~334\)) 
-- # (out_cnt(1) & ((\Mult11~334\))))) ) ) ) # ( \Mult15~334\ & ( !\Mult7~334\ & ( (!out_cnt(0) & (!out_cnt(1))) # (out_cnt(0) & ((!out_cnt(1) & (\Mult3~334\)) # (out_cnt(1) & ((\Mult11~334\))))) ) ) ) # ( !\Mult15~334\ & ( !\Mult7~334\ & ( (out_cnt(0) & 
-- ((!out_cnt(1) & (\Mult3~334\)) # (out_cnt(1) & ((\Mult11~334\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult3~334\,
	datad => \ALT_INV_Mult11~334\,
	datae => \ALT_INV_Mult15~334\,
	dataf => \ALT_INV_Mult7~334\,
	combout => \Rout~3_combout\);

-- Location: FF_X31_Y10_N49
\Rout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~3_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[2]~reg0_q\);

-- Location: LABCELL_X31_Y10_N18
\Rout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~4_combout\ = ( \Mult7~335\ & ( \Mult3~335\ & ( (!out_cnt(0) & (((\Mult15~335\)) # (out_cnt(1)))) # (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~335\)))) ) ) ) # ( !\Mult7~335\ & ( \Mult3~335\ & ( (!out_cnt(0) & (!out_cnt(1) & ((\Mult15~335\)))) # 
-- (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~335\)))) ) ) ) # ( \Mult7~335\ & ( !\Mult3~335\ & ( (!out_cnt(0) & (((\Mult15~335\)) # (out_cnt(1)))) # (out_cnt(0) & (out_cnt(1) & (\Mult11~335\))) ) ) ) # ( !\Mult7~335\ & ( !\Mult3~335\ & ( (!out_cnt(0) & 
-- (!out_cnt(1) & ((\Mult15~335\)))) # (out_cnt(0) & (out_cnt(1) & (\Mult11~335\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult11~335\,
	datad => \ALT_INV_Mult15~335\,
	datae => \ALT_INV_Mult7~335\,
	dataf => \ALT_INV_Mult3~335\,
	combout => \Rout~4_combout\);

-- Location: FF_X31_Y10_N19
\Rout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~4_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[3]~reg0_q\);

-- Location: LABCELL_X31_Y10_N0
\Rout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~5_combout\ = ( \Mult7~336\ & ( \Mult3~336\ & ( (!out_cnt(0) & (((\Mult15~336\)) # (out_cnt(1)))) # (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~336\)))) ) ) ) # ( !\Mult7~336\ & ( \Mult3~336\ & ( (!out_cnt(0) & (!out_cnt(1) & (\Mult15~336\))) # 
-- (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~336\)))) ) ) ) # ( \Mult7~336\ & ( !\Mult3~336\ & ( (!out_cnt(0) & (((\Mult15~336\)) # (out_cnt(1)))) # (out_cnt(0) & (out_cnt(1) & ((\Mult11~336\)))) ) ) ) # ( !\Mult7~336\ & ( !\Mult3~336\ & ( (!out_cnt(0) & 
-- (!out_cnt(1) & (\Mult15~336\))) # (out_cnt(0) & (out_cnt(1) & ((\Mult11~336\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult15~336\,
	datad => \ALT_INV_Mult11~336\,
	datae => \ALT_INV_Mult7~336\,
	dataf => \ALT_INV_Mult3~336\,
	combout => \Rout~5_combout\);

-- Location: FF_X31_Y10_N1
\Rout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~5_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[4]~reg0_q\);

-- Location: LABCELL_X31_Y10_N42
\Rout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~6_combout\ = ( \Mult3~337\ & ( \Mult7~337\ & ( (!out_cnt(0) & (((out_cnt(1))) # (\Mult15~337\))) # (out_cnt(0) & (((!out_cnt(1)) # (\Mult11~337\)))) ) ) ) # ( !\Mult3~337\ & ( \Mult7~337\ & ( (!out_cnt(0) & (((out_cnt(1))) # (\Mult15~337\))) # 
-- (out_cnt(0) & (((out_cnt(1) & \Mult11~337\)))) ) ) ) # ( \Mult3~337\ & ( !\Mult7~337\ & ( (!out_cnt(0) & (\Mult15~337\ & (!out_cnt(1)))) # (out_cnt(0) & (((!out_cnt(1)) # (\Mult11~337\)))) ) ) ) # ( !\Mult3~337\ & ( !\Mult7~337\ & ( (!out_cnt(0) & 
-- (\Mult15~337\ & (!out_cnt(1)))) # (out_cnt(0) & (((out_cnt(1) & \Mult11~337\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => \ALT_INV_Mult15~337\,
	datac => ALT_INV_out_cnt(1),
	datad => \ALT_INV_Mult11~337\,
	datae => \ALT_INV_Mult3~337\,
	dataf => \ALT_INV_Mult7~337\,
	combout => \Rout~6_combout\);

-- Location: FF_X31_Y10_N43
\Rout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~6_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[5]~reg0_q\);

-- Location: LABCELL_X31_Y10_N24
\Rout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~7_combout\ = ( \Mult7~338\ & ( \Mult3~338\ & ( (!out_cnt(0) & (((\Mult15~338\)) # (out_cnt(1)))) # (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~338\)))) ) ) ) # ( !\Mult7~338\ & ( \Mult3~338\ & ( (!out_cnt(0) & (!out_cnt(1) & ((\Mult15~338\)))) # 
-- (out_cnt(0) & ((!out_cnt(1)) # ((\Mult11~338\)))) ) ) ) # ( \Mult7~338\ & ( !\Mult3~338\ & ( (!out_cnt(0) & (((\Mult15~338\)) # (out_cnt(1)))) # (out_cnt(0) & (out_cnt(1) & (\Mult11~338\))) ) ) ) # ( !\Mult7~338\ & ( !\Mult3~338\ & ( (!out_cnt(0) & 
-- (!out_cnt(1) & ((\Mult15~338\)))) # (out_cnt(0) & (out_cnt(1) & (\Mult11~338\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_out_cnt(0),
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult11~338\,
	datad => \ALT_INV_Mult15~338\,
	datae => \ALT_INV_Mult7~338\,
	dataf => \ALT_INV_Mult3~338\,
	combout => \Rout~7_combout\);

-- Location: FF_X31_Y10_N25
\Rout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~7_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[6]~reg0_q\);

-- Location: LABCELL_X31_Y10_N30
\Rout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Rout~8_combout\ = ( \Mult7~339\ & ( \Mult3~339\ & ( (!out_cnt(1) & (((out_cnt(0))) # (\Mult15~339\))) # (out_cnt(1) & (((!out_cnt(0)) # (\Mult11~339\)))) ) ) ) # ( !\Mult7~339\ & ( \Mult3~339\ & ( (!out_cnt(1) & (((out_cnt(0))) # (\Mult15~339\))) # 
-- (out_cnt(1) & (((\Mult11~339\ & out_cnt(0))))) ) ) ) # ( \Mult7~339\ & ( !\Mult3~339\ & ( (!out_cnt(1) & (\Mult15~339\ & ((!out_cnt(0))))) # (out_cnt(1) & (((!out_cnt(0)) # (\Mult11~339\)))) ) ) ) # ( !\Mult7~339\ & ( !\Mult3~339\ & ( (!out_cnt(1) & 
-- (\Mult15~339\ & ((!out_cnt(0))))) # (out_cnt(1) & (((\Mult11~339\ & out_cnt(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult15~339\,
	datab => ALT_INV_out_cnt(1),
	datac => \ALT_INV_Mult11~339\,
	datad => ALT_INV_out_cnt(0),
	datae => \ALT_INV_Mult7~339\,
	dataf => \ALT_INV_Mult3~339\,
	combout => \Rout~8_combout\);

-- Location: FF_X31_Y10_N31
\Rout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \Rout~8_combout\,
	sclr => \Rout[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Rout[7]~reg0_q\);

-- Location: MLABCELL_X28_Y8_N36
\result_done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result_done~0_combout\ = ( \result_done~reg0_q\ & ( \LessThan0~0_combout\ ) ) # ( \result_done~reg0_q\ & ( !\LessThan0~0_combout\ ) ) # ( !\result_done~reg0_q\ & ( !\LessThan0~0_combout\ & ( !\LessThan3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_result_done~reg0_q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \result_done~0_combout\);

-- Location: FF_X28_Y8_N37
\result_done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aclk~inputCLKENA0_outclk\,
	d => \result_done~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result_done~reg0_q\);

-- Location: LABCELL_X67_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


