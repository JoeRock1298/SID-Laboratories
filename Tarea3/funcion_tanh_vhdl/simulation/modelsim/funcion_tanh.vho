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

-- DATE "04/18/2022 13:43:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tanh_mem_9k IS
    PORT (
	clk : IN std_logic;
	dataa : IN std_logic_vector(31 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0)
	);
END tanh_mem_9k;

-- Design Ports Information
-- result[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[31]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[22]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[20]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[18]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[19]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[17]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[16]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[14]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[12]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[13]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[11]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[10]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[9]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[28]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[27]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[26]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[25]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[23]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[24]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[29]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[30]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tanh_mem_9k IS
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
SIGNAL ww_dataa : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dataa[30]~input_o\ : std_logic;
SIGNAL \dataa[29]~input_o\ : std_logic;
SIGNAL \dataa[28]~input_o\ : std_logic;
SIGNAL \dataa[27]~input_o\ : std_logic;
SIGNAL \dataa[26]~input_o\ : std_logic;
SIGNAL \dataa[25]~input_o\ : std_logic;
SIGNAL \dataa[24]~input_o\ : std_logic;
SIGNAL \dataa[23]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \frac~0_combout\ : std_logic;
SIGNAL \result~35_combout\ : std_logic;
SIGNAL \result~36_combout\ : std_logic;
SIGNAL \result~37_combout\ : std_logic;
SIGNAL \result~38_combout\ : std_logic;
SIGNAL \dataa[11]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \result~32_combout\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \dataa[8]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[10]~input_o\ : std_logic;
SIGNAL \dataa[9]~input_o\ : std_logic;
SIGNAL \result~33_combout\ : std_logic;
SIGNAL \dataa[22]~input_o\ : std_logic;
SIGNAL \dataa[21]~input_o\ : std_logic;
SIGNAL \dataa[19]~input_o\ : std_logic;
SIGNAL \dataa[18]~input_o\ : std_logic;
SIGNAL \dataa[20]~input_o\ : std_logic;
SIGNAL \result~30_combout\ : std_logic;
SIGNAL \dataa[14]~input_o\ : std_logic;
SIGNAL \dataa[13]~input_o\ : std_logic;
SIGNAL \dataa[15]~input_o\ : std_logic;
SIGNAL \dataa[16]~input_o\ : std_logic;
SIGNAL \dataa[17]~input_o\ : std_logic;
SIGNAL \dataa[12]~input_o\ : std_logic;
SIGNAL \result~31_combout\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \result~34_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \exp~0_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \Classfp~0_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \exp~1_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \Selector30~4_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector30~5_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector30~9_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector30~3_combout\ : std_logic;
SIGNAL \frac~1_combout\ : std_logic;
SIGNAL \frac~2_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~130_cout\ : std_logic;
SIGNAL \Add3~126_cout\ : std_logic;
SIGNAL \Add3~122_cout\ : std_logic;
SIGNAL \Add3~118_cout\ : std_logic;
SIGNAL \Add3~114_cout\ : std_logic;
SIGNAL \Add3~110_cout\ : std_logic;
SIGNAL \Add3~106_cout\ : std_logic;
SIGNAL \Add3~102_cout\ : std_logic;
SIGNAL \Add3~98_cout\ : std_logic;
SIGNAL \Add3~94_cout\ : std_logic;
SIGNAL \Add3~90_cout\ : std_logic;
SIGNAL \Add3~86_cout\ : std_logic;
SIGNAL \Add3~82_cout\ : std_logic;
SIGNAL \Add3~78_cout\ : std_logic;
SIGNAL \Add3~74_cout\ : std_logic;
SIGNAL \Add3~70_cout\ : std_logic;
SIGNAL \Add3~66_cout\ : std_logic;
SIGNAL \Add3~62_cout\ : std_logic;
SIGNAL \Add3~58_cout\ : std_logic;
SIGNAL \Add3~54_cout\ : std_logic;
SIGNAL \Add3~50_cout\ : std_logic;
SIGNAL \Add3~46_cout\ : std_logic;
SIGNAL \Add3~42_cout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~6_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \Selector32~7_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \rounds~0_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \rounds~1_combout\ : std_logic;
SIGNAL \valor11[0]~0_combout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \valor11[1]~1_combout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \valor11[2]~2_combout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \valor11[3]~3_combout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \valor11[4]~4_combout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \valor11[5]~5_combout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \valor11[6]~6_combout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \valor11[7]~7_combout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \valor11[8]~8_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \find_leftmost~14_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \find_leftmost~15_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \find_leftmost~1_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \find_leftmost~4_combout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \find_leftmost~16_combout\ : std_logic;
SIGNAL \find_leftmost~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \find_leftmost~2_combout\ : std_logic;
SIGNAL \find_leftmost~17_combout\ : std_logic;
SIGNAL \find_leftmost~12_combout\ : std_logic;
SIGNAL \find_leftmost~13_combout\ : std_logic;
SIGNAL \find_leftmost~9_combout\ : std_logic;
SIGNAL \find_leftmost~10_combout\ : std_logic;
SIGNAL \find_leftmost~11_combout\ : std_logic;
SIGNAL \find_leftmost~3_combout\ : std_logic;
SIGNAL \find_leftmost~5_combout\ : std_logic;
SIGNAL \find_leftmost~6_combout\ : std_logic;
SIGNAL \find_leftmost~7_combout\ : std_logic;
SIGNAL \find_leftmost~8_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \find_leftmost~18_combout\ : std_logic;
SIGNAL \find_leftmost~19_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \find_leftmost~20_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \ShiftLeft1~0_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \ShiftLeft1~1_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \find_leftmost~21_combout\ : std_logic;
SIGNAL \ShiftLeft1~2_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \ShiftLeft1~3_combout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \ShiftLeft1~4_combout\ : std_logic;
SIGNAL \result~8_combout\ : std_logic;
SIGNAL \ShiftLeft1~5_combout\ : std_logic;
SIGNAL \result~9_combout\ : std_logic;
SIGNAL \ShiftLeft1~6_combout\ : std_logic;
SIGNAL \result~10_combout\ : std_logic;
SIGNAL \ShiftLeft1~7_combout\ : std_logic;
SIGNAL \result~11_combout\ : std_logic;
SIGNAL \result~12_combout\ : std_logic;
SIGNAL \ShiftLeft1~8_combout\ : std_logic;
SIGNAL \result~13_combout\ : std_logic;
SIGNAL \ShiftLeft1~9_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \ShiftLeft1~10_combout\ : std_logic;
SIGNAL \result~15_combout\ : std_logic;
SIGNAL \ShiftLeft1~11_combout\ : std_logic;
SIGNAL \result~63_combout\ : std_logic;
SIGNAL \ShiftLeft1~12_combout\ : std_logic;
SIGNAL \result~59_combout\ : std_logic;
SIGNAL \ShiftLeft1~13_combout\ : std_logic;
SIGNAL \result~55_combout\ : std_logic;
SIGNAL \ShiftLeft1~14_combout\ : std_logic;
SIGNAL \result~51_combout\ : std_logic;
SIGNAL \result~16_combout\ : std_logic;
SIGNAL \result~17_combout\ : std_logic;
SIGNAL \result~47_combout\ : std_logic;
SIGNAL \result~18_combout\ : std_logic;
SIGNAL \result~19_combout\ : std_logic;
SIGNAL \result~43_combout\ : std_logic;
SIGNAL \result~20_combout\ : std_logic;
SIGNAL \result~21_combout\ : std_logic;
SIGNAL \result~39_combout\ : std_logic;
SIGNAL \find_leftmost~22_combout\ : std_logic;
SIGNAL \find_leftmost~23_combout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \result~22_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \result~23_combout\ : std_logic;
SIGNAL \find_leftmost~24_combout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \result~24_combout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \result~25_combout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \result~26_combout\ : std_logic;
SIGNAL \find_leftmost~25_combout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \result~27_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \result~28_combout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \result~29_combout\ : std_logic;
SIGNAL \dataa[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_rounds~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~33_combout\ : std_logic;
SIGNAL \ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~31_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~28_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~26_combout\ : std_logic;
SIGNAL \ALT_INV_Selector34~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~25_combout\ : std_logic;
SIGNAL \ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~23_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~22_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~3_combout\ : std_logic;
SIGNAL \ALT_INV_Classfp~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \ALT_INV_rounds~0_combout\ : std_logic;
SIGNAL \ALT_INV_frac~2_combout\ : std_logic;
SIGNAL \ALT_INV_frac~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \ALT_INV_frac~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \ALT_INV_exp~1_combout\ : std_logic;
SIGNAL \ALT_INV_exp~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_result~38_combout\ : std_logic;
SIGNAL \ALT_INV_result~37_combout\ : std_logic;
SIGNAL \ALT_INV_result~36_combout\ : std_logic;
SIGNAL \ALT_INV_result~35_combout\ : std_logic;
SIGNAL \ALT_INV_result~34_combout\ : std_logic;
SIGNAL \ALT_INV_result~33_combout\ : std_logic;
SIGNAL \ALT_INV_result~32_combout\ : std_logic;
SIGNAL \ALT_INV_result~31_combout\ : std_logic;
SIGNAL \ALT_INV_result~30_combout\ : std_logic;
SIGNAL \ALT_INV_result~21_combout\ : std_logic;
SIGNAL \ALT_INV_result~20_combout\ : std_logic;
SIGNAL \ALT_INV_result~19_combout\ : std_logic;
SIGNAL \ALT_INV_result~18_combout\ : std_logic;
SIGNAL \ALT_INV_result~17_combout\ : std_logic;
SIGNAL \ALT_INV_result~16_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~8_combout\ : std_logic;
SIGNAL \ALT_INV_result~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~3_combout\ : std_logic;
SIGNAL \ALT_INV_result~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~2_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft1~0_combout\ : std_logic;
SIGNAL \ALT_INV_result~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~20_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~19_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~18_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~17_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~16_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~15_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~14_combout\ : std_logic;
SIGNAL \ALT_INV_result~0_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~13_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~12_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~11_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~10_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~9_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~8_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~7_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~6_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~5_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~4_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~3_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~1_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \ALT_INV_dataa[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~46_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~43_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~25_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~24_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~23_combout\ : std_logic;
SIGNAL \ALT_INV_find_leftmost~22_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~42_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~41_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~40_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~39_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~38_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~37_combout\ : std_logic;
SIGNAL \ALT_INV_Selector28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~36_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~35_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~34_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dataa <= dataa;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\valor11[8]~8_combout\ & \valor11[7]~7_combout\ & \valor11[6]~6_combout\ & \valor11[5]~5_combout\ & \valor11[4]~4_combout\ & \valor11[3]~3_combout\ & \valor11[2]~2_combout\ & 
\valor11[1]~1_combout\ & \valor11[0]~0_combout\);

\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memoria_rtl_0|auto_generated|ram_block1a1\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memoria_rtl_0|auto_generated|ram_block1a2\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memoria_rtl_0|auto_generated|ram_block1a3\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memoria_rtl_0|auto_generated|ram_block1a4\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memoria_rtl_0|auto_generated|ram_block1a5\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memoria_rtl_0|auto_generated|ram_block1a6\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memoria_rtl_0|auto_generated|ram_block1a7\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memoria_rtl_0|auto_generated|ram_block1a8\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memoria_rtl_0|auto_generated|ram_block1a9\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memoria_rtl_0|auto_generated|ram_block1a10\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memoria_rtl_0|auto_generated|ram_block1a11\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memoria_rtl_0|auto_generated|ram_block1a12\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memoria_rtl_0|auto_generated|ram_block1a13\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memoria_rtl_0|auto_generated|ram_block1a14\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memoria_rtl_0|auto_generated|ram_block1a15\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\memoria_rtl_0|auto_generated|ram_block1a16\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\memoria_rtl_0|auto_generated|ram_block1a17\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\memoria_rtl_0|auto_generated|ram_block1a18\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\memoria_rtl_0|auto_generated|ram_block1a19\ <= \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\ALT_INV_rounds~1_combout\ <= NOT \rounds~1_combout\;
\ALT_INV_Selector33~1_combout\ <= NOT \Selector33~1_combout\;
\ALT_INV_ShiftRight0~33_combout\ <= NOT \ShiftRight0~33_combout\;
\ALT_INV_Selector33~0_combout\ <= NOT \Selector33~0_combout\;
\ALT_INV_ShiftRight0~32_combout\ <= NOT \ShiftRight0~32_combout\;
\ALT_INV_ShiftRight0~31_combout\ <= NOT \ShiftRight0~31_combout\;
\ALT_INV_ShiftRight0~30_combout\ <= NOT \ShiftRight0~30_combout\;
\ALT_INV_ShiftRight0~29_combout\ <= NOT \ShiftRight0~29_combout\;
\ALT_INV_ShiftRight0~28_combout\ <= NOT \ShiftRight0~28_combout\;
\ALT_INV_ShiftRight0~27_combout\ <= NOT \ShiftRight0~27_combout\;
\ALT_INV_ShiftRight0~26_combout\ <= NOT \ShiftRight0~26_combout\;
\ALT_INV_Selector34~1_combout\ <= NOT \Selector34~1_combout\;
\ALT_INV_ShiftRight0~25_combout\ <= NOT \ShiftRight0~25_combout\;
\ALT_INV_Selector34~0_combout\ <= NOT \Selector34~0_combout\;
\ALT_INV_ShiftRight0~24_combout\ <= NOT \ShiftRight0~24_combout\;
\ALT_INV_ShiftRight0~23_combout\ <= NOT \ShiftRight0~23_combout\;
\ALT_INV_ShiftRight0~22_combout\ <= NOT \ShiftRight0~22_combout\;
\ALT_INV_ShiftRight0~21_combout\ <= NOT \ShiftRight0~21_combout\;
\ALT_INV_ShiftRight0~20_combout\ <= NOT \ShiftRight0~20_combout\;
\ALT_INV_ShiftRight0~19_combout\ <= NOT \ShiftRight0~19_combout\;
\ALT_INV_ShiftRight0~18_combout\ <= NOT \ShiftRight0~18_combout\;
\ALT_INV_Selector32~7_combout\ <= NOT \Selector32~7_combout\;
\ALT_INV_Selector32~6_combout\ <= NOT \Selector32~6_combout\;
\ALT_INV_Selector32~5_combout\ <= NOT \Selector32~5_combout\;
\ALT_INV_Selector32~4_combout\ <= NOT \Selector32~4_combout\;
\ALT_INV_ShiftRight0~17_combout\ <= NOT \ShiftRight0~17_combout\;
\ALT_INV_Selector32~3_combout\ <= NOT \Selector32~3_combout\;
\ALT_INV_Classfp~0_combout\ <= NOT \Classfp~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_ShiftRight0~16_combout\ <= NOT \ShiftRight0~16_combout\;
\ALT_INV_Selector32~2_combout\ <= NOT \Selector32~2_combout\;
\ALT_INV_Selector32~1_combout\ <= NOT \Selector32~1_combout\;
\ALT_INV_Selector32~0_combout\ <= NOT \Selector32~0_combout\;
\ALT_INV_ShiftRight0~15_combout\ <= NOT \ShiftRight0~15_combout\;
\ALT_INV_ShiftRight0~14_combout\ <= NOT \ShiftRight0~14_combout\;
\ALT_INV_ShiftRight0~13_combout\ <= NOT \ShiftRight0~13_combout\;
\ALT_INV_ShiftRight0~12_combout\ <= NOT \ShiftRight0~12_combout\;
\ALT_INV_ShiftRight0~11_combout\ <= NOT \ShiftRight0~11_combout\;
\ALT_INV_ShiftRight0~10_combout\ <= NOT \ShiftRight0~10_combout\;
\ALT_INV_ShiftRight0~9_combout\ <= NOT \ShiftRight0~9_combout\;
\ALT_INV_ShiftRight0~8_combout\ <= NOT \ShiftRight0~8_combout\;
\ALT_INV_rounds~0_combout\ <= NOT \rounds~0_combout\;
\ALT_INV_frac~2_combout\ <= NOT \frac~2_combout\;
\ALT_INV_frac~1_combout\ <= NOT \frac~1_combout\;
\ALT_INV_ShiftRight0~7_combout\ <= NOT \ShiftRight0~7_combout\;
\ALT_INV_ShiftRight0~6_combout\ <= NOT \ShiftRight0~6_combout\;
\ALT_INV_frac~0_combout\ <= NOT \frac~0_combout\;
\ALT_INV_ShiftRight0~5_combout\ <= NOT \ShiftRight0~5_combout\;
\ALT_INV_ShiftRight0~4_combout\ <= NOT \ShiftRight0~4_combout\;
\ALT_INV_ShiftRight0~3_combout\ <= NOT \ShiftRight0~3_combout\;
\ALT_INV_ShiftRight0~2_combout\ <= NOT \ShiftRight0~2_combout\;
\ALT_INV_ShiftRight0~1_combout\ <= NOT \ShiftRight0~1_combout\;
\ALT_INV_exp~1_combout\ <= NOT \exp~1_combout\;
\ALT_INV_exp~0_combout\ <= NOT \exp~0_combout\;
\ALT_INV_ShiftRight0~0_combout\ <= NOT \ShiftRight0~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_result~38_combout\ <= NOT \result~38_combout\;
\ALT_INV_result~37_combout\ <= NOT \result~37_combout\;
\ALT_INV_result~36_combout\ <= NOT \result~36_combout\;
\ALT_INV_result~35_combout\ <= NOT \result~35_combout\;
\ALT_INV_result~34_combout\ <= NOT \result~34_combout\;
\ALT_INV_result~33_combout\ <= NOT \result~33_combout\;
\ALT_INV_result~32_combout\ <= NOT \result~32_combout\;
\ALT_INV_result~31_combout\ <= NOT \result~31_combout\;
\ALT_INV_result~30_combout\ <= NOT \result~30_combout\;
\ALT_INV_result~21_combout\ <= NOT \result~21_combout\;
\ALT_INV_result~20_combout\ <= NOT \result~20_combout\;
\ALT_INV_result~19_combout\ <= NOT \result~19_combout\;
\ALT_INV_result~18_combout\ <= NOT \result~18_combout\;
\ALT_INV_result~17_combout\ <= NOT \result~17_combout\;
\ALT_INV_result~16_combout\ <= NOT \result~16_combout\;
\ALT_INV_ShiftLeft1~14_combout\ <= NOT \ShiftLeft1~14_combout\;
\ALT_INV_ShiftLeft1~13_combout\ <= NOT \ShiftLeft1~13_combout\;
\ALT_INV_ShiftLeft1~12_combout\ <= NOT \ShiftLeft1~12_combout\;
\ALT_INV_ShiftLeft1~11_combout\ <= NOT \ShiftLeft1~11_combout\;
\ALT_INV_ShiftLeft1~10_combout\ <= NOT \ShiftLeft1~10_combout\;
\ALT_INV_ShiftLeft1~9_combout\ <= NOT \ShiftLeft1~9_combout\;
\ALT_INV_ShiftLeft1~8_combout\ <= NOT \ShiftLeft1~8_combout\;
\ALT_INV_result~11_combout\ <= NOT \result~11_combout\;
\ALT_INV_ShiftLeft1~7_combout\ <= NOT \ShiftLeft1~7_combout\;
\ALT_INV_ShiftLeft1~6_combout\ <= NOT \ShiftLeft1~6_combout\;
\ALT_INV_ShiftLeft1~5_combout\ <= NOT \ShiftLeft1~5_combout\;
\ALT_INV_ShiftLeft1~4_combout\ <= NOT \ShiftLeft1~4_combout\;
\ALT_INV_ShiftLeft1~3_combout\ <= NOT \ShiftLeft1~3_combout\;
\ALT_INV_result~6_combout\ <= NOT \result~6_combout\;
\ALT_INV_ShiftLeft1~2_combout\ <= NOT \ShiftLeft1~2_combout\;
\ALT_INV_find_leftmost~21_combout\ <= NOT \find_leftmost~21_combout\;
\ALT_INV_ShiftLeft1~1_combout\ <= NOT \ShiftLeft1~1_combout\;
\ALT_INV_ShiftLeft1~0_combout\ <= NOT \ShiftLeft1~0_combout\;
\ALT_INV_result~1_combout\ <= NOT \result~1_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_find_leftmost~20_combout\ <= NOT \find_leftmost~20_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_find_leftmost~19_combout\ <= NOT \find_leftmost~19_combout\;
\ALT_INV_find_leftmost~18_combout\ <= NOT \find_leftmost~18_combout\;
\ALT_INV_find_leftmost~17_combout\ <= NOT \find_leftmost~17_combout\;
\ALT_INV_find_leftmost~16_combout\ <= NOT \find_leftmost~16_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_find_leftmost~15_combout\ <= NOT \find_leftmost~15_combout\;
\ALT_INV_find_leftmost~14_combout\ <= NOT \find_leftmost~14_combout\;
\ALT_INV_result~0_combout\ <= NOT \result~0_combout\;
\ALT_INV_find_leftmost~13_combout\ <= NOT \find_leftmost~13_combout\;
\ALT_INV_find_leftmost~12_combout\ <= NOT \find_leftmost~12_combout\;
\ALT_INV_find_leftmost~11_combout\ <= NOT \find_leftmost~11_combout\;
\ALT_INV_find_leftmost~10_combout\ <= NOT \find_leftmost~10_combout\;
\ALT_INV_find_leftmost~9_combout\ <= NOT \find_leftmost~9_combout\;
\ALT_INV_find_leftmost~8_combout\ <= NOT \find_leftmost~8_combout\;
\ALT_INV_find_leftmost~7_combout\ <= NOT \find_leftmost~7_combout\;
\ALT_INV_find_leftmost~6_combout\ <= NOT \find_leftmost~6_combout\;
\ALT_INV_find_leftmost~5_combout\ <= NOT \find_leftmost~5_combout\;
\ALT_INV_find_leftmost~4_combout\ <= NOT \find_leftmost~4_combout\;
\ALT_INV_find_leftmost~3_combout\ <= NOT \find_leftmost~3_combout\;
\ALT_INV_find_leftmost~2_combout\ <= NOT \find_leftmost~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_find_leftmost~1_combout\ <= NOT \find_leftmost~1_combout\;
\ALT_INV_find_leftmost~0_combout\ <= NOT \find_leftmost~0_combout\;
\ALT_INV_Selector30~9_combout\ <= NOT \Selector30~9_combout\;
\ALT_INV_Selector30~5_combout\ <= NOT \Selector30~5_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\ALT_INV_Selector20~1_combout\ <= NOT \Selector20~1_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add6~1_sumout\ <= NOT \Add6~1_sumout\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a1\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a2\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a3\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a4\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a5\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a6\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a7\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a8\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a9\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a10\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a11\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a12\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a13\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a14\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a15\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a16\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a17\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a18\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a19\;
\memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \memoria_rtl_0|auto_generated|ram_block1a0~portadataout\;
\ALT_INV_dataa[30]~input_o\ <= NOT \dataa[30]~input_o\;
\ALT_INV_dataa[29]~input_o\ <= NOT \dataa[29]~input_o\;
\ALT_INV_dataa[24]~input_o\ <= NOT \dataa[24]~input_o\;
\ALT_INV_dataa[23]~input_o\ <= NOT \dataa[23]~input_o\;
\ALT_INV_dataa[25]~input_o\ <= NOT \dataa[25]~input_o\;
\ALT_INV_dataa[26]~input_o\ <= NOT \dataa[26]~input_o\;
\ALT_INV_dataa[27]~input_o\ <= NOT \dataa[27]~input_o\;
\ALT_INV_dataa[28]~input_o\ <= NOT \dataa[28]~input_o\;
\ALT_INV_dataa[7]~input_o\ <= NOT \dataa[7]~input_o\;
\ALT_INV_dataa[6]~input_o\ <= NOT \dataa[6]~input_o\;
\ALT_INV_dataa[8]~input_o\ <= NOT \dataa[8]~input_o\;
\ALT_INV_dataa[9]~input_o\ <= NOT \dataa[9]~input_o\;
\ALT_INV_dataa[10]~input_o\ <= NOT \dataa[10]~input_o\;
\ALT_INV_dataa[11]~input_o\ <= NOT \dataa[11]~input_o\;
\ALT_INV_dataa[1]~input_o\ <= NOT \dataa[1]~input_o\;
\ALT_INV_dataa[0]~input_o\ <= NOT \dataa[0]~input_o\;
\ALT_INV_dataa[2]~input_o\ <= NOT \dataa[2]~input_o\;
\ALT_INV_dataa[3]~input_o\ <= NOT \dataa[3]~input_o\;
\ALT_INV_dataa[4]~input_o\ <= NOT \dataa[4]~input_o\;
\ALT_INV_dataa[5]~input_o\ <= NOT \dataa[5]~input_o\;
\ALT_INV_dataa[13]~input_o\ <= NOT \dataa[13]~input_o\;
\ALT_INV_dataa[12]~input_o\ <= NOT \dataa[12]~input_o\;
\ALT_INV_dataa[14]~input_o\ <= NOT \dataa[14]~input_o\;
\ALT_INV_dataa[15]~input_o\ <= NOT \dataa[15]~input_o\;
\ALT_INV_dataa[16]~input_o\ <= NOT \dataa[16]~input_o\;
\ALT_INV_dataa[17]~input_o\ <= NOT \dataa[17]~input_o\;
\ALT_INV_dataa[19]~input_o\ <= NOT \dataa[19]~input_o\;
\ALT_INV_dataa[18]~input_o\ <= NOT \dataa[18]~input_o\;
\ALT_INV_dataa[20]~input_o\ <= NOT \dataa[20]~input_o\;
\ALT_INV_dataa[21]~input_o\ <= NOT \dataa[21]~input_o\;
\ALT_INV_dataa[22]~input_o\ <= NOT \dataa[22]~input_o\;
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_ShiftRight0~46_combout\ <= NOT \ShiftRight0~46_combout\;
\ALT_INV_ShiftRight0~45_combout\ <= NOT \ShiftRight0~45_combout\;
\ALT_INV_ShiftRight0~44_combout\ <= NOT \ShiftRight0~44_combout\;
\ALT_INV_ShiftRight0~43_combout\ <= NOT \ShiftRight0~43_combout\;
\ALT_INV_Selector15~1_combout\ <= NOT \Selector15~1_combout\;
\ALT_INV_Add4~1_combout\ <= NOT \Add4~1_combout\;
\ALT_INV_find_leftmost~25_combout\ <= NOT \find_leftmost~25_combout\;
\ALT_INV_find_leftmost~24_combout\ <= NOT \find_leftmost~24_combout\;
\ALT_INV_find_leftmost~23_combout\ <= NOT \find_leftmost~23_combout\;
\ALT_INV_find_leftmost~22_combout\ <= NOT \find_leftmost~22_combout\;
\ALT_INV_Selector23~3_combout\ <= NOT \Selector23~3_combout\;
\ALT_INV_Selector23~2_combout\ <= NOT \Selector23~2_combout\;
\ALT_INV_ShiftRight0~42_combout\ <= NOT \ShiftRight0~42_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_ShiftRight0~41_combout\ <= NOT \ShiftRight0~41_combout\;
\ALT_INV_Selector25~1_combout\ <= NOT \Selector25~1_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_ShiftRight0~40_combout\ <= NOT \ShiftRight0~40_combout\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_ShiftRight0~39_combout\ <= NOT \ShiftRight0~39_combout\;
\ALT_INV_Selector27~1_combout\ <= NOT \Selector27~1_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_ShiftRight0~38_combout\ <= NOT \ShiftRight0~38_combout\;
\ALT_INV_Selector30~4_combout\ <= NOT \Selector30~4_combout\;
\ALT_INV_ShiftRight0~37_combout\ <= NOT \ShiftRight0~37_combout\;
\ALT_INV_Selector28~1_combout\ <= NOT \Selector28~1_combout\;
\ALT_INV_Selector28~0_combout\ <= NOT \Selector28~0_combout\;
\ALT_INV_ShiftRight0~36_combout\ <= NOT \ShiftRight0~36_combout\;
\ALT_INV_Selector29~1_combout\ <= NOT \Selector29~1_combout\;
\ALT_INV_Selector29~0_combout\ <= NOT \Selector29~0_combout\;
\ALT_INV_ShiftRight0~35_combout\ <= NOT \ShiftRight0~35_combout\;
\ALT_INV_Selector30~3_combout\ <= NOT \Selector30~3_combout\;
\ALT_INV_Selector30~2_combout\ <= NOT \Selector30~2_combout\;
\ALT_INV_Selector30~1_combout\ <= NOT \Selector30~1_combout\;
\ALT_INV_Selector30~0_combout\ <= NOT \Selector30~0_combout\;
\ALT_INV_ShiftRight0~34_combout\ <= NOT \ShiftRight0~34_combout\;

-- Location: IOOBUF_X20_Y81_N53
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X26_Y81_N76
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X6_Y81_N53
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X64_Y0_N36
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOOBUF_X32_Y0_N19
\result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~2_combout\,
	devoe => ww_devoe,
	o => ww_result(4));

-- Location: IOOBUF_X26_Y0_N76
\result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~3_combout\,
	devoe => ww_devoe,
	o => ww_result(5));

-- Location: IOOBUF_X28_Y0_N19
\result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~4_combout\,
	devoe => ww_devoe,
	o => ww_result(6));

-- Location: IOOBUF_X22_Y0_N2
\result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~5_combout\,
	devoe => ww_devoe,
	o => ww_result(7));

-- Location: IOOBUF_X34_Y0_N42
\result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~7_combout\,
	devoe => ww_devoe,
	o => ww_result(8));

-- Location: IOOBUF_X32_Y0_N53
\result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~8_combout\,
	devoe => ww_devoe,
	o => ww_result(9));

-- Location: IOOBUF_X34_Y0_N93
\result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~9_combout\,
	devoe => ww_devoe,
	o => ww_result(10));

-- Location: IOOBUF_X32_Y0_N2
\result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~10_combout\,
	devoe => ww_devoe,
	o => ww_result(11));

-- Location: IOOBUF_X30_Y0_N2
\result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~12_combout\,
	devoe => ww_devoe,
	o => ww_result(12));

-- Location: IOOBUF_X34_Y0_N76
\result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~13_combout\,
	devoe => ww_devoe,
	o => ww_result(13));

-- Location: IOOBUF_X26_Y0_N93
\result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~14_combout\,
	devoe => ww_devoe,
	o => ww_result(14));

-- Location: IOOBUF_X34_Y0_N59
\result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~15_combout\,
	devoe => ww_devoe,
	o => ww_result(15));

-- Location: IOOBUF_X24_Y0_N2
\result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~63_combout\,
	devoe => ww_devoe,
	o => ww_result(16));

-- Location: IOOBUF_X28_Y0_N53
\result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~59_combout\,
	devoe => ww_devoe,
	o => ww_result(17));

-- Location: IOOBUF_X28_Y0_N36
\result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~55_combout\,
	devoe => ww_devoe,
	o => ww_result(18));

-- Location: IOOBUF_X30_Y0_N53
\result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~51_combout\,
	devoe => ww_devoe,
	o => ww_result(19));

-- Location: IOOBUF_X38_Y0_N36
\result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~47_combout\,
	devoe => ww_devoe,
	o => ww_result(20));

-- Location: IOOBUF_X26_Y0_N59
\result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~43_combout\,
	devoe => ww_devoe,
	o => ww_result(21));

-- Location: IOOBUF_X30_Y0_N19
\result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~39_combout\,
	devoe => ww_devoe,
	o => ww_result(22));

-- Location: IOOBUF_X36_Y0_N2
\result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~22_combout\,
	devoe => ww_devoe,
	o => ww_result(23));

-- Location: IOOBUF_X40_Y0_N19
\result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~23_combout\,
	devoe => ww_devoe,
	o => ww_result(24));

-- Location: IOOBUF_X28_Y0_N2
\result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~24_combout\,
	devoe => ww_devoe,
	o => ww_result(25));

-- Location: IOOBUF_X38_Y0_N2
\result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~25_combout\,
	devoe => ww_devoe,
	o => ww_result(26));

-- Location: IOOBUF_X32_Y0_N36
\result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~26_combout\,
	devoe => ww_devoe,
	o => ww_result(27));

-- Location: IOOBUF_X40_Y0_N36
\result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~27_combout\,
	devoe => ww_devoe,
	o => ww_result(28));

-- Location: IOOBUF_X36_Y0_N36
\result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~28_combout\,
	devoe => ww_devoe,
	o => ww_result(29));

-- Location: IOOBUF_X38_Y0_N19
\result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~29_combout\,
	devoe => ww_devoe,
	o => ww_result(30));

-- Location: IOOBUF_X66_Y0_N93
\result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dataa[31]~input_o\,
	devoe => ww_devoe,
	o => ww_result(31));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N1
\dataa[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(30),
	o => \dataa[30]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\dataa[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(29),
	o => \dataa[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\dataa[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(28),
	o => \dataa[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\dataa[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(27),
	o => \dataa[27]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\dataa[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(26),
	o => \dataa[26]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\dataa[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(25),
	o => \dataa[25]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\dataa[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(24),
	o => \dataa[24]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\dataa[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(23),
	o => \dataa[23]~input_o\);

-- Location: LABCELL_X46_Y2_N0
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \dataa[23]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add0~22\ = CARRY(( \dataa[23]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[23]~input_o\,
	cin => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X46_Y2_N3
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \dataa[24]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \dataa[24]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[24]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X46_Y2_N6
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \dataa[25]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \dataa[25]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[25]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X46_Y2_N9
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \dataa[26]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \dataa[26]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[26]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X46_Y2_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \dataa[27]~input_o\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~2\ = CARRY(( \dataa[27]~input_o\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataa[27]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X46_Y2_N15
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \dataa[28]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \dataa[28]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[28]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X46_Y2_N18
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \dataa[29]~input_o\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \dataa[29]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[29]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X46_Y2_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\dataa[30]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\dataa[30]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataa[30]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X46_Y2_N24
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\dataa[30]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataa[30]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\);

-- Location: LABCELL_X46_Y2_N51
\ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = ( !\Add0~5_sumout\ & ( (!\Add0~17_sumout\ & (!\Add0~9_sumout\ & !\Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \ShiftRight0~0_combout\);

-- Location: LABCELL_X50_Y3_N21
\frac~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \frac~0_combout\ = ( \Add0~1_sumout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \frac~0_combout\);

-- Location: LABCELL_X46_Y2_N30
\result~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~35_combout\ = ( !\dataa[25]~input_o\ & ( (!\dataa[24]~input_o\ & (!\dataa[26]~input_o\ & !\dataa[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[24]~input_o\,
	datab => \ALT_INV_dataa[26]~input_o\,
	datac => \ALT_INV_dataa[23]~input_o\,
	dataf => \ALT_INV_dataa[25]~input_o\,
	combout => \result~35_combout\);

-- Location: LABCELL_X46_Y2_N39
\result~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~36_combout\ = ( \result~35_combout\ & ( (((\dataa[28]~input_o\) # (\dataa[27]~input_o\)) # (\dataa[30]~input_o\)) # (\dataa[29]~input_o\) ) ) # ( !\result~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[29]~input_o\,
	datab => \ALT_INV_dataa[30]~input_o\,
	datac => \ALT_INV_dataa[27]~input_o\,
	datad => \ALT_INV_dataa[28]~input_o\,
	dataf => \ALT_INV_result~35_combout\,
	combout => \result~36_combout\);

-- Location: LABCELL_X46_Y2_N33
\result~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~37_combout\ = ( \dataa[25]~input_o\ & ( (\dataa[24]~input_o\ & (\dataa[26]~input_o\ & \dataa[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[24]~input_o\,
	datab => \ALT_INV_dataa[26]~input_o\,
	datad => \ALT_INV_dataa[23]~input_o\,
	dataf => \ALT_INV_dataa[25]~input_o\,
	combout => \result~37_combout\);

-- Location: LABCELL_X46_Y2_N36
\result~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~38_combout\ = ( \dataa[27]~input_o\ & ( (\dataa[29]~input_o\ & (\dataa[30]~input_o\ & (\result~37_combout\ & \dataa[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[29]~input_o\,
	datab => \ALT_INV_dataa[30]~input_o\,
	datac => \ALT_INV_result~37_combout\,
	datad => \ALT_INV_dataa[28]~input_o\,
	dataf => \ALT_INV_dataa[27]~input_o\,
	combout => \result~38_combout\);

-- Location: IOIBUF_X62_Y0_N35
\dataa[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(11),
	o => \dataa[11]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\dataa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\dataa[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\dataa[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\dataa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\dataa[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: MLABCELL_X52_Y3_N30
\result~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~32_combout\ = ( !\dataa[4]~input_o\ & ( (!\dataa[1]~input_o\ & (!\dataa[2]~input_o\ & (!\dataa[3]~input_o\ & !\dataa[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[1]~input_o\,
	datab => \ALT_INV_dataa[2]~input_o\,
	datac => \ALT_INV_dataa[3]~input_o\,
	datad => \ALT_INV_dataa[0]~input_o\,
	datae => \ALT_INV_dataa[4]~input_o\,
	combout => \result~32_combout\);

-- Location: IOIBUF_X50_Y0_N41
\dataa[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\dataa[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(8),
	o => \dataa[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\dataa[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\dataa[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(10),
	o => \dataa[10]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\dataa[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(9),
	o => \dataa[9]~input_o\);

-- Location: LABCELL_X51_Y3_N30
\result~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~33_combout\ = ( !\dataa[9]~input_o\ & ( (!\dataa[7]~input_o\ & (!\dataa[8]~input_o\ & (!\dataa[6]~input_o\ & !\dataa[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[7]~input_o\,
	datab => \ALT_INV_dataa[8]~input_o\,
	datac => \ALT_INV_dataa[6]~input_o\,
	datad => \ALT_INV_dataa[10]~input_o\,
	dataf => \ALT_INV_dataa[9]~input_o\,
	combout => \result~33_combout\);

-- Location: IOIBUF_X52_Y0_N52
\dataa[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(22),
	o => \dataa[22]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\dataa[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(21),
	o => \dataa[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\dataa[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(19),
	o => \dataa[19]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\dataa[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(18),
	o => \dataa[18]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\dataa[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(20),
	o => \dataa[20]~input_o\);

-- Location: LABCELL_X50_Y2_N0
\result~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~30_combout\ = ( !\dataa[20]~input_o\ & ( (!\dataa[22]~input_o\ & (!\dataa[21]~input_o\ & (!\dataa[19]~input_o\ & !\dataa[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[22]~input_o\,
	datab => \ALT_INV_dataa[21]~input_o\,
	datac => \ALT_INV_dataa[19]~input_o\,
	datad => \ALT_INV_dataa[18]~input_o\,
	dataf => \ALT_INV_dataa[20]~input_o\,
	combout => \result~30_combout\);

-- Location: IOIBUF_X60_Y0_N1
\dataa[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(14),
	o => \dataa[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\dataa[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(13),
	o => \dataa[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\dataa[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(15),
	o => \dataa[15]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\dataa[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(16),
	o => \dataa[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\dataa[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(17),
	o => \dataa[17]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\dataa[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(12),
	o => \dataa[12]~input_o\);

-- Location: MLABCELL_X52_Y2_N0
\result~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~31_combout\ = ( !\dataa[17]~input_o\ & ( !\dataa[12]~input_o\ & ( (!\dataa[14]~input_o\ & (!\dataa[13]~input_o\ & (!\dataa[15]~input_o\ & !\dataa[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[14]~input_o\,
	datab => \ALT_INV_dataa[13]~input_o\,
	datac => \ALT_INV_dataa[15]~input_o\,
	datad => \ALT_INV_dataa[16]~input_o\,
	datae => \ALT_INV_dataa[17]~input_o\,
	dataf => \ALT_INV_dataa[12]~input_o\,
	combout => \result~31_combout\);

-- Location: IOIBUF_X56_Y0_N52
\dataa[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: MLABCELL_X52_Y3_N6
\result~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~34_combout\ = ( \result~31_combout\ & ( !\dataa[5]~input_o\ & ( (!\dataa[11]~input_o\ & (\result~32_combout\ & (\result~33_combout\ & \result~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[11]~input_o\,
	datab => \ALT_INV_result~32_combout\,
	datac => \ALT_INV_result~33_combout\,
	datad => \ALT_INV_result~30_combout\,
	datae => \ALT_INV_result~31_combout\,
	dataf => \ALT_INV_dataa[5]~input_o\,
	combout => \result~34_combout\);

-- Location: MLABCELL_X52_Y3_N57
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \result~38_combout\ & ( \result~34_combout\ ) ) # ( !\result~38_combout\ & ( \result~34_combout\ & ( !\result~36_combout\ ) ) ) # ( \result~38_combout\ & ( !\result~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~36_combout\,
	datae => \ALT_INV_result~38_combout\,
	dataf => \ALT_INV_result~34_combout\,
	combout => \Selector15~0_combout\);

-- Location: MLABCELL_X47_Y2_N54
\Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = ( \Selector15~0_combout\ ) # ( !\Selector15~0_combout\ & ( !\frac~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_frac~0_combout\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LABCELL_X48_Y3_N39
\ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = ( \Add0~33_sumout\ & ( \Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \ShiftRight0~13_combout\);

-- Location: LABCELL_X46_Y2_N42
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( \Add0~5_sumout\ & ( !\Add0~17_sumout\ ) ) # ( !\Add0~5_sumout\ & ( (!\Add0~17_sumout\ & ((\Add0~13_sumout\) # (\Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Add1~0_combout\);

-- Location: LABCELL_X50_Y3_N18
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \result~36_combout\ & ( (!\result~38_combout\ & (\Add1~0_combout\)) # (\result~38_combout\ & ((\result~34_combout\))) ) ) # ( !\result~36_combout\ & ( (!\result~34_combout\ & ((\Add1~0_combout\))) # (\result~34_combout\ & 
-- (\result~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_result~38_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_result~34_combout\,
	dataf => \ALT_INV_result~36_combout\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X50_Y2_N39
\exp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \exp~0_combout\ = (\Add0~21_sumout\ & ((\result~36_combout\) # (\result~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_result~34_combout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_result~36_combout\,
	combout => \exp~0_combout\);

-- Location: LABCELL_X50_Y2_N3
\ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = ( \exp~0_combout\ & ( \Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_exp~0_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: LABCELL_X50_Y2_N21
\Classfp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Classfp~0_combout\ = (!\result~34_combout\ & !\result~36_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_result~34_combout\,
	datad => \ALT_INV_result~36_combout\,
	combout => \Classfp~0_combout\);

-- Location: LABCELL_X50_Y2_N9
\ShiftRight0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = ( \dataa[22]~input_o\ & ( (!\Classfp~0_combout\ & \Add0~25_sumout\) ) ) # ( !\dataa[22]~input_o\ & ( (!\Classfp~0_combout\ & (!\Add0~21_sumout\ & \Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Classfp~0_combout\,
	datab => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_dataa[22]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: LABCELL_X50_Y2_N6
\ShiftRight0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = ( \dataa[21]~input_o\ & ( (!\Classfp~0_combout\ & (((\dataa[22]~input_o\ & \Add0~25_sumout\)) # (\Add0~21_sumout\))) # (\Classfp~0_combout\ & (((\dataa[22]~input_o\)))) ) ) # ( !\dataa[21]~input_o\ & ( (!\Classfp~0_combout\ & 
-- ((!\Add0~21_sumout\ & (\dataa[22]~input_o\ & \Add0~25_sumout\)) # (\Add0~21_sumout\ & ((!\Add0~25_sumout\))))) # (\Classfp~0_combout\ & (((\dataa[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100001101001001110000110100100111001011110010011100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Classfp~0_combout\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_dataa[22]~input_o\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_dataa[21]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: LABCELL_X50_Y2_N36
\exp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \exp~1_combout\ = (!\Add0~25_sumout\ & ((\result~36_combout\) # (\result~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_result~34_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_result~36_combout\,
	combout => \exp~1_combout\);

-- Location: LABCELL_X50_Y2_N45
\ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = ( \dataa[20]~input_o\ & ( (!\exp~0_combout\ & (((\exp~1_combout\) # (\dataa[21]~input_o\)))) # (\exp~0_combout\ & (((!\exp~1_combout\)) # (\dataa[22]~input_o\))) ) ) # ( !\dataa[20]~input_o\ & ( (!\exp~0_combout\ & 
-- (((\exp~1_combout\) # (\dataa[21]~input_o\)))) # (\exp~0_combout\ & (\dataa[22]~input_o\ & ((\exp~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011011101000011001101110100111111110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[22]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[21]~input_o\,
	datad => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[20]~input_o\,
	combout => \ShiftRight0~1_combout\);

-- Location: LABCELL_X50_Y2_N54
\ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = ( \exp~1_combout\ & ( \dataa[20]~input_o\ & ( (!\exp~0_combout\ & (\dataa[22]~input_o\)) # (\exp~0_combout\ & ((\dataa[21]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( \dataa[20]~input_o\ & ( (!\exp~0_combout\) # 
-- (\dataa[19]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[20]~input_o\ & ( (!\exp~0_combout\ & (\dataa[22]~input_o\)) # (\exp~0_combout\ & ((\dataa[21]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[20]~input_o\ & ( (\dataa[19]~input_o\ & 
-- \exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[19]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[22]~input_o\,
	datad => \ALT_INV_dataa[21]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[20]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: LABCELL_X46_Y3_N15
\ShiftRight0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (!\Add0~29_sumout\ & (\ShiftRight0~14_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~14_combout\,
	datab => \ALT_INV_ShiftRight0~8_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	combout => \ShiftRight0~43_combout\);

-- Location: MLABCELL_X52_Y2_N42
\ShiftRight0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = ( \dataa[20]~input_o\ & ( \dataa[18]~input_o\ & ( ((!\exp~1_combout\ & ((\dataa[19]~input_o\))) # (\exp~1_combout\ & (\dataa[21]~input_o\))) # (\exp~0_combout\) ) ) ) # ( !\dataa[20]~input_o\ & ( \dataa[18]~input_o\ & ( 
-- (!\exp~1_combout\ & (((\dataa[19]~input_o\) # (\exp~0_combout\)))) # (\exp~1_combout\ & (\dataa[21]~input_o\ & (!\exp~0_combout\))) ) ) ) # ( \dataa[20]~input_o\ & ( !\dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((!\exp~0_combout\ & 
-- \dataa[19]~input_o\)))) # (\exp~1_combout\ & (((\exp~0_combout\)) # (\dataa[21]~input_o\))) ) ) ) # ( !\dataa[20]~input_o\ & ( !\dataa[18]~input_o\ & ( (!\exp~0_combout\ & ((!\exp~1_combout\ & ((\dataa[19]~input_o\))) # (\exp~1_combout\ & 
-- (\dataa[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[21]~input_o\,
	datab => \ALT_INV_exp~1_combout\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[19]~input_o\,
	datae => \ALT_INV_dataa[20]~input_o\,
	dataf => \ALT_INV_dataa[18]~input_o\,
	combout => \ShiftRight0~26_combout\);

-- Location: LABCELL_X48_Y3_N24
\ShiftRight0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (!\Add0~29_sumout\ & ((\ShiftRight0~31_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_ShiftRight0~26_combout\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: MLABCELL_X52_Y2_N30
\ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = ( \dataa[19]~input_o\ & ( \dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((!\exp~0_combout\) # (\dataa[17]~input_o\)))) # (\exp~1_combout\ & (((\exp~0_combout\)) # (\dataa[20]~input_o\))) ) ) ) # ( !\dataa[19]~input_o\ & ( 
-- \dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((!\exp~0_combout\) # (\dataa[17]~input_o\)))) # (\exp~1_combout\ & (\dataa[20]~input_o\ & (!\exp~0_combout\))) ) ) ) # ( \dataa[19]~input_o\ & ( !\dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((\exp~0_combout\ 
-- & \dataa[17]~input_o\)))) # (\exp~1_combout\ & (((\exp~0_combout\)) # (\dataa[20]~input_o\))) ) ) ) # ( !\dataa[19]~input_o\ & ( !\dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((\exp~0_combout\ & \dataa[17]~input_o\)))) # (\exp~1_combout\ & 
-- (\dataa[20]~input_o\ & (!\exp~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[20]~input_o\,
	datab => \ALT_INV_exp~1_combout\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[17]~input_o\,
	datae => \ALT_INV_dataa[19]~input_o\,
	dataf => \ALT_INV_dataa[18]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LABCELL_X50_Y2_N51
\ShiftRight0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = ( \ShiftRight0~18_combout\ & ( (\Add0~29_sumout\) # (\ShiftRight0~23_combout\) ) ) # ( !\ShiftRight0~18_combout\ & ( (\ShiftRight0~23_combout\ & !\Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~23_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~18_combout\,
	combout => \ShiftRight0~45_combout\);

-- Location: MLABCELL_X52_Y2_N36
\ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = ( \exp~1_combout\ & ( \dataa[18]~input_o\ & ( (\exp~0_combout\) # (\dataa[19]~input_o\) ) ) ) # ( !\exp~1_combout\ & ( \dataa[18]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[17]~input_o\))) # (\exp~0_combout\ & 
-- (\dataa[16]~input_o\)) ) ) ) # ( \exp~1_combout\ & ( !\dataa[18]~input_o\ & ( (\dataa[19]~input_o\ & !\exp~0_combout\) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[18]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[17]~input_o\))) # (\exp~0_combout\ & 
-- (\dataa[16]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[19]~input_o\,
	datab => \ALT_INV_dataa[16]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[17]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[18]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: MLABCELL_X47_Y2_N57
\ShiftRight0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = ( \ShiftRight0~2_combout\ & ( (\Add0~29_sumout\) # (\ShiftRight0~1_combout\) ) ) # ( !\ShiftRight0~2_combout\ & ( (\ShiftRight0~1_combout\ & !\Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LABCELL_X50_Y2_N42
\Selector30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~4_combout\ = ( \Add0~29_sumout\ & ( !\Classfp~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Classfp~0_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Selector30~4_combout\);

-- Location: LABCELL_X46_Y3_N45
\ShiftRight0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = ( !\Classfp~0_combout\ & ( !\Add0~29_sumout\ $ (!\Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Classfp~0_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: MLABCELL_X52_Y2_N18
\ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = ( \dataa[16]~input_o\ & ( \dataa[18]~input_o\ & ( (!\exp~0_combout\) # ((!\exp~1_combout\ & (\dataa[15]~input_o\)) # (\exp~1_combout\ & ((\dataa[17]~input_o\)))) ) ) ) # ( !\dataa[16]~input_o\ & ( \dataa[18]~input_o\ & ( 
-- (!\exp~1_combout\ & (\dataa[15]~input_o\ & (\exp~0_combout\))) # (\exp~1_combout\ & (((!\exp~0_combout\) # (\dataa[17]~input_o\)))) ) ) ) # ( \dataa[16]~input_o\ & ( !\dataa[18]~input_o\ & ( (!\exp~1_combout\ & (((!\exp~0_combout\)) # 
-- (\dataa[15]~input_o\))) # (\exp~1_combout\ & (((\exp~0_combout\ & \dataa[17]~input_o\)))) ) ) ) # ( !\dataa[16]~input_o\ & ( !\dataa[18]~input_o\ & ( (\exp~0_combout\ & ((!\exp~1_combout\ & (\dataa[15]~input_o\)) # (\exp~1_combout\ & 
-- ((\dataa[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[15]~input_o\,
	datab => \ALT_INV_exp~1_combout\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[17]~input_o\,
	datae => \ALT_INV_dataa[16]~input_o\,
	dataf => \ALT_INV_dataa[18]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: LABCELL_X46_Y3_N12
\ShiftRight0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = ( \ShiftRight0~9_combout\ & ( (!\Selector30~4_combout\ & (((\ShiftRight0~8_combout\ & \ShiftRight0~37_combout\)))) # (\Selector30~4_combout\ & (((!\ShiftRight0~37_combout\)) # (\ShiftRight0~14_combout\))) ) ) # ( 
-- !\ShiftRight0~9_combout\ & ( (\ShiftRight0~37_combout\ & ((!\Selector30~4_combout\ & ((\ShiftRight0~8_combout\))) # (\Selector30~4_combout\ & (\ShiftRight0~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100001111001101010000111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~14_combout\,
	datab => \ALT_INV_ShiftRight0~8_combout\,
	datac => \ALT_INV_Selector30~4_combout\,
	datad => \ALT_INV_ShiftRight0~37_combout\,
	dataf => \ALT_INV_ShiftRight0~9_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: MLABCELL_X52_Y2_N48
\ShiftRight0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = ( \exp~1_combout\ & ( \dataa[14]~input_o\ & ( (!\exp~0_combout\ & (\dataa[17]~input_o\)) # (\exp~0_combout\ & ((\dataa[16]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( \dataa[14]~input_o\ & ( (\exp~0_combout\) # 
-- (\dataa[15]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[14]~input_o\ & ( (!\exp~0_combout\ & (\dataa[17]~input_o\)) # (\exp~0_combout\ & ((\dataa[16]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[14]~input_o\ & ( (\dataa[15]~input_o\ & 
-- !\exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[15]~input_o\,
	datab => \ALT_INV_dataa[17]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[16]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[14]~input_o\,
	combout => \ShiftRight0~27_combout\);

-- Location: LABCELL_X48_Y3_N42
\ShiftRight0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = ( \ShiftRight0~27_combout\ & ( (!\Selector30~4_combout\ & (((\ShiftRight0~26_combout\ & \ShiftRight0~37_combout\)))) # (\Selector30~4_combout\ & (((!\ShiftRight0~37_combout\)) # (\ShiftRight0~31_combout\))) ) ) # ( 
-- !\ShiftRight0~27_combout\ & ( (\ShiftRight0~37_combout\ & ((!\Selector30~4_combout\ & ((\ShiftRight0~26_combout\))) # (\Selector30~4_combout\ & (\ShiftRight0~31_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101101010101000110110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~4_combout\,
	datab => \ALT_INV_ShiftRight0~31_combout\,
	datac => \ALT_INV_ShiftRight0~26_combout\,
	datad => \ALT_INV_ShiftRight0~37_combout\,
	dataf => \ALT_INV_ShiftRight0~27_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: MLABCELL_X52_Y2_N6
\ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = ( \exp~1_combout\ & ( \dataa[14]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[16]~input_o\))) # (\exp~0_combout\ & (\dataa[15]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( \dataa[14]~input_o\ & ( (!\exp~0_combout\) # 
-- (\dataa[13]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[14]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[16]~input_o\))) # (\exp~0_combout\ & (\dataa[15]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[14]~input_o\ & ( (\dataa[13]~input_o\ & 
-- \exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[15]~input_o\,
	datab => \ALT_INV_dataa[13]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[16]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[14]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: LABCELL_X50_Y2_N48
\ShiftRight0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = ( \ShiftRight0~19_combout\ & ( (!\Selector30~4_combout\ & (((\ShiftRight0~18_combout\ & \ShiftRight0~37_combout\)))) # (\Selector30~4_combout\ & (((!\ShiftRight0~37_combout\)) # (\ShiftRight0~23_combout\))) ) ) # ( 
-- !\ShiftRight0~19_combout\ & ( (\ShiftRight0~37_combout\ & ((!\Selector30~4_combout\ & ((\ShiftRight0~18_combout\))) # (\Selector30~4_combout\ & (\ShiftRight0~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100110011000111010011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~23_combout\,
	datab => \ALT_INV_Selector30~4_combout\,
	datac => \ALT_INV_ShiftRight0~18_combout\,
	datad => \ALT_INV_ShiftRight0~37_combout\,
	dataf => \ALT_INV_ShiftRight0~19_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: MLABCELL_X52_Y2_N12
\ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = ( \exp~1_combout\ & ( \dataa[12]~input_o\ & ( (!\exp~0_combout\ & (\dataa[15]~input_o\)) # (\exp~0_combout\ & ((\dataa[14]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( \dataa[12]~input_o\ & ( (\exp~0_combout\) # 
-- (\dataa[13]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[12]~input_o\ & ( (!\exp~0_combout\ & (\dataa[15]~input_o\)) # (\exp~0_combout\ & ((\dataa[14]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[12]~input_o\ & ( (\dataa[13]~input_o\ & 
-- !\exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[15]~input_o\,
	datab => \ALT_INV_dataa[13]~input_o\,
	datac => \ALT_INV_dataa[14]~input_o\,
	datad => \ALT_INV_exp~0_combout\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[12]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: LABCELL_X50_Y3_N6
\ShiftRight0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = ( \ShiftRight0~37_combout\ & ( (!\Selector30~4_combout\ & (\ShiftRight0~2_combout\)) # (\Selector30~4_combout\ & ((\ShiftRight0~1_combout\))) ) ) # ( !\ShiftRight0~37_combout\ & ( (\ShiftRight0~3_combout\ & 
-- \Selector30~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~2_combout\,
	datab => \ALT_INV_ShiftRight0~3_combout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	datad => \ALT_INV_Selector30~4_combout\,
	dataf => \ALT_INV_ShiftRight0~37_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: MLABCELL_X52_Y2_N24
\ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = ( \exp~1_combout\ & ( \dataa[12]~input_o\ & ( (!\exp~0_combout\ & (\dataa[14]~input_o\)) # (\exp~0_combout\ & ((\dataa[13]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( \dataa[12]~input_o\ & ( (!\exp~0_combout\) # 
-- (\dataa[11]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[12]~input_o\ & ( (!\exp~0_combout\ & (\dataa[14]~input_o\)) # (\exp~0_combout\ & ((\dataa[13]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[12]~input_o\ & ( (\exp~0_combout\ & 
-- \dataa[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[14]~input_o\,
	datab => \ALT_INV_dataa[13]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[11]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[12]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: LABCELL_X46_Y3_N30
\ShiftRight0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = ( \ShiftRight0~10_combout\ & ( \ShiftRight0~9_combout\ & ( ((!\Add0~29_sumout\ & (\ShiftRight0~14_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~8_combout\)))) # (\Add0~33_sumout\) ) ) ) # ( !\ShiftRight0~10_combout\ & ( 
-- \ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\ & (\ShiftRight0~14_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~8_combout\))))) # (\Add0~33_sumout\ & (!\Add0~29_sumout\)) ) ) ) # ( \ShiftRight0~10_combout\ & ( 
-- !\ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\ & (\ShiftRight0~14_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~8_combout\))))) # (\Add0~33_sumout\ & (\Add0~29_sumout\)) ) ) ) # ( !\ShiftRight0~10_combout\ & ( 
-- !\ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\ & (\ShiftRight0~14_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_ShiftRight0~8_combout\,
	datae => \ALT_INV_ShiftRight0~10_combout\,
	dataf => \ALT_INV_ShiftRight0~9_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: MLABCELL_X52_Y2_N54
\ShiftRight0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = ( \exp~1_combout\ & ( \dataa[11]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[13]~input_o\))) # (\exp~0_combout\ & (\dataa[12]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( \dataa[11]~input_o\ & ( (!\exp~0_combout\) # 
-- (\dataa[10]~input_o\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[11]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[13]~input_o\))) # (\exp~0_combout\ & (\dataa[12]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[11]~input_o\ & ( (\dataa[10]~input_o\ & 
-- \exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[12]~input_o\,
	datab => \ALT_INV_dataa[10]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	datad => \ALT_INV_dataa[13]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[11]~input_o\,
	combout => \ShiftRight0~28_combout\);

-- Location: LABCELL_X48_Y3_N54
\ShiftRight0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = ( \ShiftRight0~26_combout\ & ( \ShiftRight0~28_combout\ & ( ((!\Add0~33_sumout\ & (\ShiftRight0~31_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~27_combout\)))) # (\Add0~29_sumout\) ) ) ) # ( !\ShiftRight0~26_combout\ & ( 
-- \ShiftRight0~28_combout\ & ( (!\Add0~33_sumout\ & (\ShiftRight0~31_combout\ & (!\Add0~29_sumout\))) # (\Add0~33_sumout\ & (((\ShiftRight0~27_combout\) # (\Add0~29_sumout\)))) ) ) ) # ( \ShiftRight0~26_combout\ & ( !\ShiftRight0~28_combout\ & ( 
-- (!\Add0~33_sumout\ & (((\Add0~29_sumout\)) # (\ShiftRight0~31_combout\))) # (\Add0~33_sumout\ & (((!\Add0~29_sumout\ & \ShiftRight0~27_combout\)))) ) ) ) # ( !\ShiftRight0~26_combout\ & ( !\ShiftRight0~28_combout\ & ( (!\Add0~29_sumout\ & 
-- ((!\Add0~33_sumout\ & (\ShiftRight0~31_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~27_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_ShiftRight0~31_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_ShiftRight0~27_combout\,
	datae => \ALT_INV_ShiftRight0~26_combout\,
	dataf => \ALT_INV_ShiftRight0~28_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LABCELL_X51_Y3_N48
\ShiftRight0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = ( \exp~1_combout\ & ( \dataa[9]~input_o\ & ( (!\exp~0_combout\ & (\dataa[12]~input_o\)) # (\exp~0_combout\ & ((\dataa[11]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( \dataa[9]~input_o\ & ( (\dataa[10]~input_o\) # 
-- (\exp~0_combout\) ) ) ) # ( \exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (!\exp~0_combout\ & (\dataa[12]~input_o\)) # (\exp~0_combout\ & ((\dataa[11]~input_o\))) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (!\exp~0_combout\ & 
-- \dataa[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[12]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[10]~input_o\,
	datad => \ALT_INV_dataa[11]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[9]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LABCELL_X50_Y2_N12
\ShiftRight0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = ( \Add0~29_sumout\ & ( \ShiftRight0~18_combout\ & ( (!\Add0~33_sumout\) # (\ShiftRight0~20_combout\) ) ) ) # ( !\Add0~29_sumout\ & ( \ShiftRight0~18_combout\ & ( (!\Add0~33_sumout\ & (\ShiftRight0~23_combout\)) # 
-- (\Add0~33_sumout\ & ((\ShiftRight0~19_combout\))) ) ) ) # ( \Add0~29_sumout\ & ( !\ShiftRight0~18_combout\ & ( (\ShiftRight0~20_combout\ & \Add0~33_sumout\) ) ) ) # ( !\Add0~29_sumout\ & ( !\ShiftRight0~18_combout\ & ( (!\Add0~33_sumout\ & 
-- (\ShiftRight0~23_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~23_combout\,
	datab => \ALT_INV_ShiftRight0~20_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ShiftRight0~19_combout\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~18_combout\,
	combout => \ShiftRight0~34_combout\);

-- Location: LABCELL_X51_Y3_N6
\ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = ( \dataa[11]~input_o\ & ( \dataa[9]~input_o\ & ( (!\exp~0_combout\) # ((!\exp~1_combout\ & ((\dataa[8]~input_o\))) # (\exp~1_combout\ & (\dataa[10]~input_o\))) ) ) ) # ( !\dataa[11]~input_o\ & ( \dataa[9]~input_o\ & ( 
-- (!\exp~1_combout\ & ((!\exp~0_combout\) # ((\dataa[8]~input_o\)))) # (\exp~1_combout\ & (\exp~0_combout\ & (\dataa[10]~input_o\))) ) ) ) # ( \dataa[11]~input_o\ & ( !\dataa[9]~input_o\ & ( (!\exp~1_combout\ & (\exp~0_combout\ & ((\dataa[8]~input_o\)))) # 
-- (\exp~1_combout\ & ((!\exp~0_combout\) # ((\dataa[10]~input_o\)))) ) ) ) # ( !\dataa[11]~input_o\ & ( !\dataa[9]~input_o\ & ( (\exp~0_combout\ & ((!\exp~1_combout\ & ((\dataa[8]~input_o\))) # (\exp~1_combout\ & (\dataa[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exp~1_combout\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[10]~input_o\,
	datad => \ALT_INV_dataa[8]~input_o\,
	datae => \ALT_INV_dataa[11]~input_o\,
	dataf => \ALT_INV_dataa[9]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LABCELL_X50_Y3_N12
\ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = ( \ShiftRight0~2_combout\ & ( \ShiftRight0~4_combout\ & ( ((!\Add0~33_sumout\ & (\ShiftRight0~1_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~3_combout\)))) # (\Add0~29_sumout\) ) ) ) # ( !\ShiftRight0~2_combout\ & ( 
-- \ShiftRight0~4_combout\ & ( (!\Add0~33_sumout\ & (\ShiftRight0~1_combout\ & (!\Add0~29_sumout\))) # (\Add0~33_sumout\ & (((\ShiftRight0~3_combout\) # (\Add0~29_sumout\)))) ) ) ) # ( \ShiftRight0~2_combout\ & ( !\ShiftRight0~4_combout\ & ( 
-- (!\Add0~33_sumout\ & (((\Add0~29_sumout\)) # (\ShiftRight0~1_combout\))) # (\Add0~33_sumout\ & (((!\Add0~29_sumout\ & \ShiftRight0~3_combout\)))) ) ) ) # ( !\ShiftRight0~2_combout\ & ( !\ShiftRight0~4_combout\ & ( (!\Add0~29_sumout\ & ((!\Add0~33_sumout\ 
-- & (\ShiftRight0~1_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_ShiftRight0~3_combout\,
	datae => \ALT_INV_ShiftRight0~2_combout\,
	dataf => \ALT_INV_ShiftRight0~4_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: LABCELL_X51_Y3_N42
\ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = ( \exp~1_combout\ & ( \dataa[9]~input_o\ & ( (\exp~0_combout\) # (\dataa[10]~input_o\) ) ) ) # ( !\exp~1_combout\ & ( \dataa[9]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[8]~input_o\))) # (\exp~0_combout\ & (\dataa[7]~input_o\)) 
-- ) ) ) # ( \exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (\dataa[10]~input_o\ & !\exp~0_combout\) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[8]~input_o\))) # (\exp~0_combout\ & (\dataa[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[10]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[7]~input_o\,
	datad => \ALT_INV_dataa[8]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[9]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LABCELL_X46_Y3_N36
\ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = ( \ShiftRight0~10_combout\ & ( \ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & (((\ShiftRight0~8_combout\)) # (\Add0~29_sumout\))) # (\Add0~33_sumout\ & ((!\Add0~29_sumout\) # ((\ShiftRight0~11_combout\)))) ) ) ) # ( 
-- !\ShiftRight0~10_combout\ & ( \ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & (((\ShiftRight0~8_combout\)) # (\Add0~29_sumout\))) # (\Add0~33_sumout\ & (\Add0~29_sumout\ & (\ShiftRight0~11_combout\))) ) ) ) # ( \ShiftRight0~10_combout\ & ( 
-- !\ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & (!\Add0~29_sumout\ & ((\ShiftRight0~8_combout\)))) # (\Add0~33_sumout\ & ((!\Add0~29_sumout\) # ((\ShiftRight0~11_combout\)))) ) ) ) # ( !\ShiftRight0~10_combout\ & ( !\ShiftRight0~9_combout\ & ( 
-- (!\Add0~33_sumout\ & (!\Add0~29_sumout\ & ((\ShiftRight0~8_combout\)))) # (\Add0~33_sumout\ & (\Add0~29_sumout\ & (\ShiftRight0~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_ShiftRight0~8_combout\,
	datae => \ALT_INV_ShiftRight0~10_combout\,
	dataf => \ALT_INV_ShiftRight0~9_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LABCELL_X46_Y3_N9
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \ShiftRight0~14_combout\ & ( (!\Add0~1_sumout\ & ((\ShiftRight0~13_combout\))) # (\Add0~1_sumout\ & (\ShiftRight0~12_combout\)) ) ) # ( !\ShiftRight0~14_combout\ & ( (\ShiftRight0~12_combout\ & \Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~12_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_ShiftRight0~14_combout\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X51_Y3_N0
\ShiftRight0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = ( \exp~1_combout\ & ( \dataa[9]~input_o\ & ( (!\exp~0_combout\) # (\dataa[8]~input_o\) ) ) ) # ( !\exp~1_combout\ & ( \dataa[9]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[7]~input_o\))) # (\exp~0_combout\ & (\dataa[6]~input_o\)) 
-- ) ) ) # ( \exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (\exp~0_combout\ & \dataa[8]~input_o\) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[9]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[7]~input_o\))) # (\exp~0_combout\ & (\dataa[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[6]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[7]~input_o\,
	datad => \ALT_INV_dataa[8]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[9]~input_o\,
	combout => \ShiftRight0~29_combout\);

-- Location: LABCELL_X48_Y3_N12
\ShiftRight0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = ( \ShiftRight0~26_combout\ & ( \Add0~29_sumout\ & ( (!\Add0~33_sumout\ & ((\ShiftRight0~27_combout\))) # (\Add0~33_sumout\ & (\ShiftRight0~29_combout\)) ) ) ) # ( !\ShiftRight0~26_combout\ & ( \Add0~29_sumout\ & ( 
-- (!\Add0~33_sumout\ & ((\ShiftRight0~27_combout\))) # (\Add0~33_sumout\ & (\ShiftRight0~29_combout\)) ) ) ) # ( \ShiftRight0~26_combout\ & ( !\Add0~29_sumout\ & ( (!\Add0~33_sumout\) # (\ShiftRight0~28_combout\) ) ) ) # ( !\ShiftRight0~26_combout\ & ( 
-- !\Add0~29_sumout\ & ( (\ShiftRight0~28_combout\ & \Add0~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~29_combout\,
	datab => \ALT_INV_ShiftRight0~28_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ShiftRight0~27_combout\,
	datae => \ALT_INV_ShiftRight0~26_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LABCELL_X48_Y3_N45
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \ShiftRight0~30_combout\ & ( ((\ShiftRight0~31_combout\ & \ShiftRight0~13_combout\)) # (\Add0~1_sumout\) ) ) # ( !\ShiftRight0~30_combout\ & ( (\ShiftRight0~31_combout\ & (!\Add0~1_sumout\ & \ShiftRight0~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~31_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_ShiftRight0~30_combout\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X51_Y3_N54
\ShiftRight0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = ( \exp~1_combout\ & ( \dataa[5]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[8]~input_o\))) # (\exp~0_combout\ & (\dataa[7]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( \dataa[5]~input_o\ & ( (\exp~0_combout\) # (\dataa[6]~input_o\) ) 
-- ) ) # ( \exp~1_combout\ & ( !\dataa[5]~input_o\ & ( (!\exp~0_combout\ & ((\dataa[8]~input_o\))) # (\exp~0_combout\ & (\dataa[7]~input_o\)) ) ) ) # ( !\exp~1_combout\ & ( !\dataa[5]~input_o\ & ( (\dataa[6]~input_o\ & !\exp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[6]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[7]~input_o\,
	datad => \ALT_INV_dataa[8]~input_o\,
	datae => \ALT_INV_exp~1_combout\,
	dataf => \ALT_INV_dataa[5]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: LABCELL_X50_Y2_N30
\ShiftRight0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = ( \Add0~29_sumout\ & ( \ShiftRight0~19_combout\ & ( (!\Add0~33_sumout\) # (\ShiftRight0~21_combout\) ) ) ) # ( !\Add0~29_sumout\ & ( \ShiftRight0~19_combout\ & ( (!\Add0~33_sumout\ & (\ShiftRight0~18_combout\)) # 
-- (\Add0~33_sumout\ & ((\ShiftRight0~20_combout\))) ) ) ) # ( \Add0~29_sumout\ & ( !\ShiftRight0~19_combout\ & ( (\ShiftRight0~21_combout\ & \Add0~33_sumout\) ) ) ) # ( !\Add0~29_sumout\ & ( !\ShiftRight0~19_combout\ & ( (!\Add0~33_sumout\ & 
-- (\ShiftRight0~18_combout\)) # (\Add0~33_sumout\ & ((\ShiftRight0~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~18_combout\,
	datab => \ALT_INV_ShiftRight0~21_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ShiftRight0~20_combout\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~19_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LABCELL_X48_Y3_N36
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \ShiftRight0~23_combout\ & ( (!\Add0~1_sumout\ & ((\ShiftRight0~13_combout\))) # (\Add0~1_sumout\ & (\ShiftRight0~22_combout\)) ) ) # ( !\ShiftRight0~23_combout\ & ( (\Add0~1_sumout\ & \ShiftRight0~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_ShiftRight0~22_combout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \Selector18~0_combout\);

-- Location: MLABCELL_X52_Y3_N42
\ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = ( \dataa[4]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & ((\dataa[7]~input_o\))) # (\exp~0_combout\ & (\dataa[6]~input_o\)) ) ) ) # ( !\dataa[4]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & ((\dataa[7]~input_o\))) 
-- # (\exp~0_combout\ & (\dataa[6]~input_o\)) ) ) ) # ( \dataa[4]~input_o\ & ( !\exp~1_combout\ & ( (\dataa[5]~input_o\) # (\exp~0_combout\) ) ) ) # ( !\dataa[4]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\ & \dataa[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[6]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[7]~input_o\,
	datad => \ALT_INV_dataa[5]~input_o\,
	datae => \ALT_INV_dataa[4]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LABCELL_X50_Y3_N9
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Add0~33_sumout\ & ( \ShiftRight0~6_combout\ ) ) # ( !\Add0~33_sumout\ & ( (!\Add0~29_sumout\ & (\ShiftRight0~2_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~2_combout\,
	datab => \ALT_INV_ShiftRight0~3_combout\,
	datac => \ALT_INV_ShiftRight0~6_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X48_Y3_N33
\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = ( \Add0~1_sumout\ & ( (!\ShiftRight0~0_combout\) # (((\Add0~33_sumout\ & !\Add0~29_sumout\)) # (\Selector15~0_combout\)) ) ) # ( !\Add0~1_sumout\ & ( (!\ShiftRight0~0_combout\) # (\Selector15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110100111111111111010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_Selector15~0_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Selector23~1_combout\);

-- Location: LABCELL_X50_Y3_N3
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Selector15~0_combout\ ) # ( !\Selector15~0_combout\ & ( (!\ShiftRight0~0_combout\) # ((\Add0~1_sumout\ & ((!\Add0~33_sumout\) # (\Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010111011101110101011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: MLABCELL_X47_Y2_N48
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( !\Selector23~1_combout\ & ( ((!\Selector23~0_combout\ & (\ShiftRight0~1_combout\ & (\ShiftRight0~13_combout\))) # (\Selector23~0_combout\ & (((\Selector19~0_combout\))))) ) ) # ( \Selector23~1_combout\ & ( 
-- (((!\Selector23~0_combout\ & ((\ShiftRight0~4_combout\))) # (\Selector23~0_combout\ & (\Selector0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_ShiftRight0~4_combout\,
	datad => \ALT_INV_Selector19~0_combout\,
	datae => \ALT_INV_Selector23~1_combout\,
	dataf => \ALT_INV_Selector23~0_combout\,
	datag => \ALT_INV_ShiftRight0~13_combout\,
	combout => \Selector19~1_combout\);

-- Location: MLABCELL_X52_Y3_N24
\ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = ( \dataa[4]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & (\dataa[6]~input_o\)) # (\exp~0_combout\ & ((\dataa[5]~input_o\))) ) ) ) # ( !\dataa[4]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & (\dataa[6]~input_o\)) 
-- # (\exp~0_combout\ & ((\dataa[5]~input_o\))) ) ) ) # ( \dataa[4]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\) # (\dataa[3]~input_o\) ) ) ) # ( !\dataa[4]~input_o\ & ( !\exp~1_combout\ & ( (\exp~0_combout\ & \dataa[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[6]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[3]~input_o\,
	datad => \ALT_INV_dataa[5]~input_o\,
	datae => \ALT_INV_dataa[4]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: LABCELL_X46_Y3_N51
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & (((!\Add0~29_sumout\)) # (\ShiftRight0~10_combout\))) # (\Add0~33_sumout\ & (((\ShiftRight0~15_combout\)))) ) ) # ( !\ShiftRight0~9_combout\ & ( (!\Add0~33_sumout\ & 
-- (\ShiftRight0~10_combout\ & (\Add0~29_sumout\))) # (\Add0~33_sumout\ & (((\ShiftRight0~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110100010111101111010001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_ShiftRight0~10_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_ShiftRight0~15_combout\,
	dataf => \ALT_INV_ShiftRight0~9_combout\,
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X46_Y3_N0
\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = ( !\Selector23~1_combout\ & ( (!\Selector23~0_combout\ & (\ShiftRight0~43_combout\ & (\Add0~33_sumout\))) # (\Selector23~0_combout\ & ((((\Selector20~0_combout\))))) ) ) # ( \Selector23~1_combout\ & ( (!\Selector23~0_combout\ & 
-- (((\ShiftRight0~11_combout\)))) # (\Selector23~0_combout\ & ((((\Selector0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111000010100000101000000010010101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_ShiftRight0~43_combout\,
	datac => \ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_Selector20~0_combout\,
	datae => \ALT_INV_Selector23~1_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	datag => \ALT_INV_Add0~33_sumout\,
	combout => \Selector20~1_combout\);

-- Location: MLABCELL_X52_Y3_N12
\ShiftRight0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = ( \dataa[2]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & ((\dataa[5]~input_o\))) # (\exp~0_combout\ & (\dataa[4]~input_o\)) ) ) ) # ( !\dataa[2]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & 
-- ((\dataa[5]~input_o\))) # (\exp~0_combout\ & (\dataa[4]~input_o\)) ) ) ) # ( \dataa[2]~input_o\ & ( !\exp~1_combout\ & ( (\dataa[3]~input_o\) # (\exp~0_combout\) ) ) ) # ( !\dataa[2]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\ & 
-- \dataa[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[4]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[3]~input_o\,
	datad => \ALT_INV_dataa[5]~input_o\,
	datae => \ALT_INV_dataa[2]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LABCELL_X48_Y3_N27
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \Add0~33_sumout\ & ( \ShiftRight0~32_combout\ ) ) # ( !\Add0~33_sumout\ & ( (!\Add0~29_sumout\ & (\ShiftRight0~27_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_ShiftRight0~27_combout\,
	datac => \ALT_INV_ShiftRight0~28_combout\,
	datad => \ALT_INV_ShiftRight0~32_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X48_Y3_N0
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( !\Selector23~1_combout\ & ( (!\Selector23~0_combout\ & (((\Add0~33_sumout\ & ((\ShiftRight0~44_combout\)))))) # (\Selector23~0_combout\ & (\Selector21~0_combout\)) ) ) # ( \Selector23~1_combout\ & ( (!\Selector23~0_combout\ & 
-- (((\ShiftRight0~29_combout\)))) # (\Selector23~0_combout\ & ((((\Selector0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000010100101111100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector21~0_combout\,
	datac => \ALT_INV_ShiftRight0~29_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_Selector23~1_combout\,
	dataf => \ALT_INV_ShiftRight0~44_combout\,
	datag => \ALT_INV_Add0~33_sumout\,
	combout => \Selector21~1_combout\);

-- Location: MLABCELL_X52_Y3_N36
\ShiftRight0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = ( \dataa[4]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\) # (\dataa[3]~input_o\) ) ) ) # ( !\dataa[4]~input_o\ & ( \exp~1_combout\ & ( (\exp~0_combout\ & \dataa[3]~input_o\) ) ) ) # ( \dataa[4]~input_o\ & ( 
-- !\exp~1_combout\ & ( (!\exp~0_combout\ & ((\dataa[2]~input_o\))) # (\exp~0_combout\ & (\dataa[1]~input_o\)) ) ) ) # ( !\dataa[4]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\ & ((\dataa[2]~input_o\))) # (\exp~0_combout\ & (\dataa[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[1]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[3]~input_o\,
	datad => \ALT_INV_dataa[2]~input_o\,
	datae => \ALT_INV_dataa[4]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LABCELL_X50_Y2_N27
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \ShiftRight0~24_combout\ & ( ((!\Add0~29_sumout\ & ((\ShiftRight0~19_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~20_combout\))) # (\Add0~33_sumout\) ) ) # ( !\ShiftRight0~24_combout\ & ( (!\Add0~33_sumout\ & 
-- ((!\Add0~29_sumout\ & ((\ShiftRight0~19_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001001011111011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_ShiftRight0~20_combout\,
	datac => \ALT_INV_ShiftRight0~19_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~24_combout\,
	combout => \Selector22~0_combout\);

-- Location: MLABCELL_X47_Y2_N42
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( !\Selector23~1_combout\ & ( ((!\Selector23~0_combout\ & (\ShiftRight0~45_combout\ & ((\Add0~33_sumout\)))) # (\Selector23~0_combout\ & (((\Selector22~0_combout\))))) ) ) # ( \Selector23~1_combout\ & ( (((!\Selector23~0_combout\ 
-- & (\ShiftRight0~21_combout\)) # (\Selector23~0_combout\ & ((\Selector0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~45_combout\,
	datab => \ALT_INV_Selector22~0_combout\,
	datac => \ALT_INV_ShiftRight0~21_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_Selector23~1_combout\,
	dataf => \ALT_INV_Selector23~0_combout\,
	datag => \ALT_INV_Add0~33_sumout\,
	combout => \Selector22~1_combout\);

-- Location: LABCELL_X50_Y3_N48
\ShiftRight0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\Add0~33_sumout\ & ((!\Add0~29_sumout\ & (\ShiftRight0~1_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	datad => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: MLABCELL_X52_Y3_N48
\ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = ( \dataa[2]~input_o\ & ( \exp~1_combout\ & ( (\dataa[3]~input_o\) # (\exp~0_combout\) ) ) ) # ( !\dataa[2]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\ & \dataa[3]~input_o\) ) ) ) # ( \dataa[2]~input_o\ & ( !\exp~1_combout\ 
-- & ( (!\exp~0_combout\ & (\dataa[1]~input_o\)) # (\exp~0_combout\ & ((\dataa[0]~input_o\))) ) ) ) # ( !\dataa[2]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\ & (\dataa[1]~input_o\)) # (\exp~0_combout\ & ((\dataa[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[1]~input_o\,
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[3]~input_o\,
	datad => \ALT_INV_dataa[0]~input_o\,
	datae => \ALT_INV_dataa[2]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~7_combout\);

-- Location: LABCELL_X50_Y3_N51
\Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ( \ShiftRight0~7_combout\ & ( ((!\Add0~29_sumout\ & ((\ShiftRight0~3_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~4_combout\))) # (\Add0~33_sumout\) ) ) # ( !\ShiftRight0~7_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\ 
-- & ((\ShiftRight0~3_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_ShiftRight0~4_combout\,
	datad => \ALT_INV_ShiftRight0~3_combout\,
	dataf => \ALT_INV_ShiftRight0~7_combout\,
	combout => \Selector23~2_combout\);

-- Location: LABCELL_X50_Y3_N54
\Selector23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = ( \Selector23~0_combout\ & ( \Selector0~0_combout\ & ( (\Selector23~1_combout\) # (\Selector23~2_combout\) ) ) ) # ( !\Selector23~0_combout\ & ( \Selector0~0_combout\ & ( (!\Selector23~1_combout\ & (\ShiftRight0~42_combout\)) # 
-- (\Selector23~1_combout\ & ((\ShiftRight0~6_combout\))) ) ) ) # ( \Selector23~0_combout\ & ( !\Selector0~0_combout\ & ( (\Selector23~2_combout\ & !\Selector23~1_combout\) ) ) ) # ( !\Selector23~0_combout\ & ( !\Selector0~0_combout\ & ( 
-- (!\Selector23~1_combout\ & (\ShiftRight0~42_combout\)) # (\Selector23~1_combout\ & ((\ShiftRight0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~42_combout\,
	datab => \ALT_INV_ShiftRight0~6_combout\,
	datac => \ALT_INV_Selector23~2_combout\,
	datad => \ALT_INV_Selector23~1_combout\,
	datae => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector23~3_combout\);

-- Location: MLABCELL_X52_Y3_N0
\ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = ( \dataa[2]~input_o\ & ( \exp~1_combout\ & ( (!\exp~0_combout\) # (\dataa[1]~input_o\) ) ) ) # ( !\dataa[2]~input_o\ & ( \exp~1_combout\ & ( (\exp~0_combout\ & \dataa[1]~input_o\) ) ) ) # ( \dataa[2]~input_o\ & ( 
-- !\exp~1_combout\ & ( (!\exp~0_combout\ & \dataa[0]~input_o\) ) ) ) # ( !\dataa[2]~input_o\ & ( !\exp~1_combout\ & ( (!\exp~0_combout\ & \dataa[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_exp~0_combout\,
	datac => \ALT_INV_dataa[1]~input_o\,
	datad => \ALT_INV_dataa[0]~input_o\,
	datae => \ALT_INV_dataa[2]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LABCELL_X46_Y3_N48
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \ShiftRight0~16_combout\ & ( ((!\Add0~29_sumout\ & (\ShiftRight0~10_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~11_combout\)))) # (\Add0~33_sumout\) ) ) # ( !\ShiftRight0~16_combout\ & ( (!\Add0~33_sumout\ & 
-- ((!\Add0~29_sumout\ & (\ShiftRight0~10_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_ShiftRight0~10_combout\,
	datac => \ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_ShiftRight0~16_combout\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X46_Y3_N54
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( \ShiftRight0~15_combout\ & ( \Selector0~0_combout\ & ( ((!\Selector23~0_combout\ & (\ShiftRight0~41_combout\)) # (\Selector23~0_combout\ & ((\Selector24~0_combout\)))) # (\Selector23~1_combout\) ) ) ) # ( 
-- !\ShiftRight0~15_combout\ & ( \Selector0~0_combout\ & ( (!\Selector23~0_combout\ & (\ShiftRight0~41_combout\ & ((!\Selector23~1_combout\)))) # (\Selector23~0_combout\ & (((\Selector23~1_combout\) # (\Selector24~0_combout\)))) ) ) ) # ( 
-- \ShiftRight0~15_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector23~0_combout\ & (((\Selector23~1_combout\)) # (\ShiftRight0~41_combout\))) # (\Selector23~0_combout\ & (((\Selector24~0_combout\ & !\Selector23~1_combout\)))) ) ) ) # ( 
-- !\ShiftRight0~15_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector23~1_combout\ & ((!\Selector23~0_combout\ & (\ShiftRight0~41_combout\)) # (\Selector23~0_combout\ & ((\Selector24~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_ShiftRight0~41_combout\,
	datac => \ALT_INV_Selector24~0_combout\,
	datad => \ALT_INV_Selector23~1_combout\,
	datae => \ALT_INV_ShiftRight0~15_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: MLABCELL_X52_Y3_N21
\ShiftRight0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = ( \exp~1_combout\ & ( (!\exp~0_combout\ & (\dataa[1]~input_o\)) # (\exp~0_combout\ & ((\dataa[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[1]~input_o\,
	datab => \ALT_INV_dataa[0]~input_o\,
	datac => \ALT_INV_exp~0_combout\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LABCELL_X48_Y3_N30
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \ShiftRight0~28_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\) # ((\ShiftRight0~29_combout\)))) # (\Add0~33_sumout\ & (((\ShiftRight0~33_combout\)))) ) ) # ( !\ShiftRight0~28_combout\ & ( (!\Add0~33_sumout\ & 
-- (\Add0~29_sumout\ & (\ShiftRight0~29_combout\))) # (\Add0~33_sumout\ & (((\ShiftRight0~33_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_ShiftRight0~29_combout\,
	datad => \ALT_INV_ShiftRight0~33_combout\,
	dataf => \ALT_INV_ShiftRight0~28_combout\,
	combout => \Selector25~0_combout\);

-- Location: LABCELL_X48_Y3_N48
\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( \Selector0~0_combout\ & ( \ShiftRight0~32_combout\ & ( ((!\Selector23~0_combout\ & ((\ShiftRight0~40_combout\))) # (\Selector23~0_combout\ & (\Selector25~0_combout\))) # (\Selector23~1_combout\) ) ) ) # ( !\Selector0~0_combout\ 
-- & ( \ShiftRight0~32_combout\ & ( (!\Selector23~0_combout\ & (((\ShiftRight0~40_combout\) # (\Selector23~1_combout\)))) # (\Selector23~0_combout\ & (\Selector25~0_combout\ & (!\Selector23~1_combout\))) ) ) ) # ( \Selector0~0_combout\ & ( 
-- !\ShiftRight0~32_combout\ & ( (!\Selector23~0_combout\ & (((!\Selector23~1_combout\ & \ShiftRight0~40_combout\)))) # (\Selector23~0_combout\ & (((\Selector23~1_combout\)) # (\Selector25~0_combout\))) ) ) ) # ( !\Selector0~0_combout\ & ( 
-- !\ShiftRight0~32_combout\ & ( (!\Selector23~1_combout\ & ((!\Selector23~0_combout\ & ((\ShiftRight0~40_combout\))) # (\Selector23~0_combout\ & (\Selector25~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector25~0_combout\,
	datac => \ALT_INV_Selector23~1_combout\,
	datad => \ALT_INV_ShiftRight0~40_combout\,
	datae => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~32_combout\,
	combout => \Selector25~1_combout\);

-- Location: LABCELL_X51_Y3_N33
\ShiftRight0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = ( \exp~1_combout\ & ( (!\Add0~21_sumout\ & \dataa[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_dataa[0]~input_o\,
	dataf => \ALT_INV_exp~1_combout\,
	combout => \ShiftRight0~25_combout\);

-- Location: LABCELL_X50_Y2_N24
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \ShiftRight0~25_combout\ & ( ((!\Add0~29_sumout\ & (\ShiftRight0~20_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~21_combout\)))) # (\Add0~33_sumout\) ) ) # ( !\ShiftRight0~25_combout\ & ( (!\Add0~33_sumout\ & 
-- ((!\Add0~29_sumout\ & (\ShiftRight0~20_combout\)) # (\Add0~29_sumout\ & ((\ShiftRight0~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101001110101011111110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_ShiftRight0~20_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_ShiftRight0~21_combout\,
	dataf => \ALT_INV_ShiftRight0~25_combout\,
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X48_Y3_N6
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ( \Selector0~0_combout\ & ( \ShiftRight0~39_combout\ & ( (!\Selector23~0_combout\ & (((!\Selector23~1_combout\) # (\ShiftRight0~24_combout\)))) # (\Selector23~0_combout\ & (((\Selector23~1_combout\)) # (\Selector26~0_combout\))) ) 
-- ) ) # ( !\Selector0~0_combout\ & ( \ShiftRight0~39_combout\ & ( (!\Selector23~0_combout\ & (((!\Selector23~1_combout\) # (\ShiftRight0~24_combout\)))) # (\Selector23~0_combout\ & (\Selector26~0_combout\ & (!\Selector23~1_combout\))) ) ) ) # ( 
-- \Selector0~0_combout\ & ( !\ShiftRight0~39_combout\ & ( (!\Selector23~0_combout\ & (((\Selector23~1_combout\ & \ShiftRight0~24_combout\)))) # (\Selector23~0_combout\ & (((\Selector23~1_combout\)) # (\Selector26~0_combout\))) ) ) ) # ( 
-- !\Selector0~0_combout\ & ( !\ShiftRight0~39_combout\ & ( (!\Selector23~0_combout\ & (((\Selector23~1_combout\ & \ShiftRight0~24_combout\)))) # (\Selector23~0_combout\ & (\Selector26~0_combout\ & (!\Selector23~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Selector23~1_combout\,
	datad => \ALT_INV_ShiftRight0~24_combout\,
	datae => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~39_combout\,
	combout => \Selector26~1_combout\);

-- Location: LABCELL_X50_Y3_N30
\Selector30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~5_combout\ = ( !\result~36_combout\ & ( ((((!\ShiftRight0~0_combout\)) # (\result~34_combout\))) ) ) # ( \result~36_combout\ & ( ((!\ShiftRight0~0_combout\) # ((\Add0~29_sumout\ & (!\Add0~33_sumout\ & \Add0~1_sumout\)))) # 
-- (\result~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100001111111111110011001111111111000011111111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_result~38_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_result~36_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	datag => \ALT_INV_result~34_combout\,
	combout => \Selector30~5_combout\);

-- Location: LABCELL_X48_Y3_N18
\Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = ( \Add0~33_sumout\ & ( (!\Classfp~0_combout\ & ((!\Add0~1_sumout\) # (!\Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Classfp~0_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Selector30~1_combout\);

-- Location: LABCELL_X48_Y3_N21
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \Add0~33_sumout\ & ( !\Classfp~0_combout\ ) ) # ( !\Add0~33_sumout\ & ( (\Add0~29_sumout\ & !\Classfp~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Classfp~0_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Selector30~0_combout\);

-- Location: LABCELL_X50_Y3_N27
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \ShiftRight0~4_combout\ & ( (!\Selector30~0_combout\) # ((\ShiftRight0~7_combout\ & \Selector30~1_combout\)) ) ) # ( !\ShiftRight0~4_combout\ & ( (\ShiftRight0~7_combout\ & \Selector30~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~7_combout\,
	datac => \ALT_INV_Selector30~1_combout\,
	datad => \ALT_INV_Selector30~0_combout\,
	dataf => \ALT_INV_ShiftRight0~4_combout\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X50_Y3_N36
\Selector30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~9_combout\ = ( !\result~36_combout\ & ( ((((!\ShiftRight0~0_combout\)) # (\result~34_combout\))) ) ) # ( \result~36_combout\ & ( ((!\ShiftRight0~0_combout\) # ((\Add0~1_sumout\ & ((!\Add0~29_sumout\) # (\Add0~33_sumout\))))) # 
-- (\result~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100001111111111110011001111111111000011111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_result~38_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_result~36_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	datag => \ALT_INV_result~34_combout\,
	combout => \Selector30~9_combout\);

-- Location: LABCELL_X50_Y3_N42
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( \Selector30~9_combout\ & ( \Selector0~0_combout\ & ( (\Selector27~0_combout\) # (\Selector30~5_combout\) ) ) ) # ( !\Selector30~9_combout\ & ( \Selector0~0_combout\ & ( (!\Selector30~5_combout\ & (\ShiftRight0~38_combout\)) # 
-- (\Selector30~5_combout\ & ((\ShiftRight0~6_combout\))) ) ) ) # ( \Selector30~9_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector30~5_combout\ & \Selector27~0_combout\) ) ) ) # ( !\Selector30~9_combout\ & ( !\Selector0~0_combout\ & ( 
-- (!\Selector30~5_combout\ & (\ShiftRight0~38_combout\)) # (\Selector30~5_combout\ & ((\ShiftRight0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~5_combout\,
	datab => \ALT_INV_ShiftRight0~38_combout\,
	datac => \ALT_INV_Selector27~0_combout\,
	datad => \ALT_INV_ShiftRight0~6_combout\,
	datae => \ALT_INV_Selector30~9_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LABCELL_X46_Y3_N6
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \ShiftRight0~16_combout\ & ( ((\ShiftRight0~11_combout\ & !\Selector30~0_combout\)) # (\Selector30~1_combout\) ) ) # ( !\ShiftRight0~16_combout\ & ( (\ShiftRight0~11_combout\ & !\Selector30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector30~1_combout\,
	datac => \ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_Selector30~0_combout\,
	dataf => \ALT_INV_ShiftRight0~16_combout\,
	combout => \Selector28~0_combout\);

-- Location: LABCELL_X51_Y3_N24
\Selector28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = ( \Selector28~0_combout\ & ( \Selector30~9_combout\ & ( (!\Selector30~5_combout\) # (\Selector0~0_combout\) ) ) ) # ( !\Selector28~0_combout\ & ( \Selector30~9_combout\ & ( (\Selector30~5_combout\ & \Selector0~0_combout\) ) ) ) # 
-- ( \Selector28~0_combout\ & ( !\Selector30~9_combout\ & ( (!\Selector30~5_combout\ & (\ShiftRight0~36_combout\)) # (\Selector30~5_combout\ & ((\ShiftRight0~15_combout\))) ) ) ) # ( !\Selector28~0_combout\ & ( !\Selector30~9_combout\ & ( 
-- (!\Selector30~5_combout\ & (\ShiftRight0~36_combout\)) # (\Selector30~5_combout\ & ((\ShiftRight0~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~5_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_ShiftRight0~36_combout\,
	datad => \ALT_INV_ShiftRight0~15_combout\,
	datae => \ALT_INV_Selector28~0_combout\,
	dataf => \ALT_INV_Selector30~9_combout\,
	combout => \Selector28~1_combout\);

-- Location: LABCELL_X51_Y3_N39
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( \ShiftRight0~33_combout\ & ( ((!\Selector30~0_combout\ & \ShiftRight0~29_combout\)) # (\Selector30~1_combout\) ) ) # ( !\ShiftRight0~33_combout\ & ( (!\Selector30~0_combout\ & \ShiftRight0~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~0_combout\,
	datab => \ALT_INV_Selector30~1_combout\,
	datad => \ALT_INV_ShiftRight0~29_combout\,
	dataf => \ALT_INV_ShiftRight0~33_combout\,
	combout => \Selector29~0_combout\);

-- Location: LABCELL_X51_Y3_N18
\Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = ( \ShiftRight0~32_combout\ & ( \Selector0~0_combout\ & ( ((!\Selector30~9_combout\ & (\ShiftRight0~35_combout\)) # (\Selector30~9_combout\ & ((\Selector29~0_combout\)))) # (\Selector30~5_combout\) ) ) ) # ( 
-- !\ShiftRight0~32_combout\ & ( \Selector0~0_combout\ & ( (!\Selector30~9_combout\ & (\ShiftRight0~35_combout\ & (!\Selector30~5_combout\))) # (\Selector30~9_combout\ & (((\Selector29~0_combout\) # (\Selector30~5_combout\)))) ) ) ) # ( 
-- \ShiftRight0~32_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector30~9_combout\ & (((\Selector30~5_combout\)) # (\ShiftRight0~35_combout\))) # (\Selector30~9_combout\ & (((!\Selector30~5_combout\ & \Selector29~0_combout\)))) ) ) ) # ( 
-- !\ShiftRight0~32_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector30~5_combout\ & ((!\Selector30~9_combout\ & (\ShiftRight0~35_combout\)) # (\Selector30~9_combout\ & ((\Selector29~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~9_combout\,
	datab => \ALT_INV_ShiftRight0~35_combout\,
	datac => \ALT_INV_Selector30~5_combout\,
	datad => \ALT_INV_Selector29~0_combout\,
	datae => \ALT_INV_ShiftRight0~32_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector29~1_combout\);

-- Location: LABCELL_X51_Y3_N36
\Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = ( \ShiftRight0~25_combout\ & ( ((!\Selector30~0_combout\ & \ShiftRight0~21_combout\)) # (\Selector30~1_combout\) ) ) # ( !\ShiftRight0~25_combout\ & ( (!\Selector30~0_combout\ & \ShiftRight0~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~0_combout\,
	datab => \ALT_INV_Selector30~1_combout\,
	datac => \ALT_INV_ShiftRight0~21_combout\,
	dataf => \ALT_INV_ShiftRight0~25_combout\,
	combout => \Selector30~2_combout\);

-- Location: LABCELL_X51_Y3_N12
\Selector30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~3_combout\ = ( \Selector30~2_combout\ & ( \ShiftRight0~24_combout\ & ( (!\Selector30~9_combout\ & (((\ShiftRight0~34_combout\) # (\Selector30~5_combout\)))) # (\Selector30~9_combout\ & (((!\Selector30~5_combout\)) # (\Selector0~0_combout\))) ) 
-- ) ) # ( !\Selector30~2_combout\ & ( \ShiftRight0~24_combout\ & ( (!\Selector30~9_combout\ & (((\ShiftRight0~34_combout\) # (\Selector30~5_combout\)))) # (\Selector30~9_combout\ & (\Selector0~0_combout\ & (\Selector30~5_combout\))) ) ) ) # ( 
-- \Selector30~2_combout\ & ( !\ShiftRight0~24_combout\ & ( (!\Selector30~9_combout\ & (((!\Selector30~5_combout\ & \ShiftRight0~34_combout\)))) # (\Selector30~9_combout\ & (((!\Selector30~5_combout\)) # (\Selector0~0_combout\))) ) ) ) # ( 
-- !\Selector30~2_combout\ & ( !\ShiftRight0~24_combout\ & ( (!\Selector30~9_combout\ & (((!\Selector30~5_combout\ & \ShiftRight0~34_combout\)))) # (\Selector30~9_combout\ & (\Selector0~0_combout\ & (\Selector30~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~9_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_Selector30~5_combout\,
	datad => \ALT_INV_ShiftRight0~34_combout\,
	datae => \ALT_INV_Selector30~2_combout\,
	dataf => \ALT_INV_ShiftRight0~24_combout\,
	combout => \Selector30~3_combout\);

-- Location: LABCELL_X50_Y3_N24
\frac~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \frac~1_combout\ = ( \frac~0_combout\ & ( (!\Add0~33_sumout\ & ((!\Add0~29_sumout\ & ((\ShiftRight0~6_combout\))) # (\Add0~29_sumout\ & (\ShiftRight0~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~7_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_ShiftRight0~6_combout\,
	dataf => \ALT_INV_frac~0_combout\,
	combout => \frac~1_combout\);

-- Location: LABCELL_X50_Y3_N0
\frac~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \frac~2_combout\ = ( \ShiftRight0~5_combout\ & ( (((\ShiftRight0~0_combout\ & !\Add0~1_sumout\)) # (\Add1~0_combout\)) # (\frac~1_combout\) ) ) # ( !\ShiftRight0~5_combout\ & ( (\Add1~0_combout\) # (\frac~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111101001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_frac~1_combout\,
	datad => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_ShiftRight0~5_combout\,
	combout => \frac~2_combout\);

-- Location: MLABCELL_X47_Y3_N0
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( VCC ) + ( (!\result~38_combout\ & (\frac~2_combout\ & ((!\result~34_combout\) # (\result~36_combout\)))) # (\result~38_combout\ & (((!\result~36_combout\ & \frac~2_combout\)) # (\result~34_combout\))) ) + ( !VCC ))
-- \Add3~6\ = CARRY(( VCC ) + ( (!\result~38_combout\ & (\frac~2_combout\ & ((!\result~34_combout\) # (\result~36_combout\)))) # (\result~38_combout\ & (((!\result~36_combout\ & \frac~2_combout\)) # (\result~34_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~38_combout\,
	datab => \ALT_INV_result~34_combout\,
	datac => \ALT_INV_result~36_combout\,
	dataf => \ALT_INV_frac~2_combout\,
	cin => GND,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X47_Y3_N3
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Selector30~3_combout\ ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Selector30~3_combout\ ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector30~3_combout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X47_Y3_N6
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Selector29~1_combout\ ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Selector29~1_combout\ ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector29~1_combout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X47_Y3_N9
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Selector28~1_combout\ ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \Selector28~1_combout\ ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector28~1_combout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X47_Y3_N12
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Selector27~1_combout\ ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Selector27~1_combout\ ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector27~1_combout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X47_Y3_N15
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Selector26~1_combout\ ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Selector26~1_combout\ ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector26~1_combout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X47_Y3_N18
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Selector25~1_combout\ ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \Selector25~1_combout\ ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector25~1_combout\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X47_Y3_N21
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Selector24~1_combout\ ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \Selector24~1_combout\ ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector24~1_combout\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X47_Y3_N24
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \Selector23~3_combout\ ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \Selector23~3_combout\ ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~3_combout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X47_Y3_N27
\Add3~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~130_cout\ = CARRY(( \Selector22~1_combout\ ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector22~1_combout\,
	cin => \Add3~38\,
	cout => \Add3~130_cout\);

-- Location: MLABCELL_X47_Y3_N30
\Add3~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~126_cout\ = CARRY(( \Selector21~1_combout\ ) + ( GND ) + ( \Add3~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector21~1_combout\,
	cin => \Add3~130_cout\,
	cout => \Add3~126_cout\);

-- Location: MLABCELL_X47_Y3_N33
\Add3~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~122_cout\ = CARRY(( \Selector20~1_combout\ ) + ( GND ) + ( \Add3~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector20~1_combout\,
	cin => \Add3~126_cout\,
	cout => \Add3~122_cout\);

-- Location: MLABCELL_X47_Y3_N36
\Add3~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~118_cout\ = CARRY(( GND ) + ( \Selector19~1_combout\ ) + ( \Add3~122_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector19~1_combout\,
	cin => \Add3~122_cout\,
	cout => \Add3~118_cout\);

-- Location: MLABCELL_X47_Y3_N39
\Add3~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~114_cout\ = CARRY(( (!\ShiftRight0~0_combout\ & (\Selector0~0_combout\)) # (\ShiftRight0~0_combout\ & ((!\Selector15~0_combout\ & ((\Selector18~0_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_Selector15~0_combout\,
	datad => \ALT_INV_Selector18~0_combout\,
	cin => \Add3~118_cout\,
	cout => \Add3~114_cout\);

-- Location: MLABCELL_X47_Y3_N42
\Add3~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~110_cout\ = CARRY(( GND ) + ( (!\Selector15~0_combout\ & ((!\ShiftRight0~0_combout\ & (\Selector0~0_combout\)) # (\ShiftRight0~0_combout\ & ((\Selector17~0_combout\))))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)) ) + ( \Add3~114_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011101010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	cin => \Add3~114_cout\,
	cout => \Add3~110_cout\);

-- Location: MLABCELL_X47_Y3_N45
\Add3~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~106_cout\ = CARRY(( (!\Selector15~0_combout\ & ((!\ShiftRight0~0_combout\ & (\Selector0~0_combout\)) # (\ShiftRight0~0_combout\ & ((\Selector16~0_combout\))))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)) ) + ( GND ) + ( \Add3~110_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101000101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_Selector16~0_combout\,
	cin => \Add3~110_cout\,
	cout => \Add3~106_cout\);

-- Location: MLABCELL_X47_Y3_N48
\Add3~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~102_cout\ = CARRY(( GND ) + ( (!\Selector15~0_combout\ & ((!\frac~0_combout\ & (\Selector0~0_combout\)) # (\frac~0_combout\ & ((\ShiftRight0~5_combout\))))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)) ) + ( \Add3~106_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101110001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_ShiftRight0~5_combout\,
	dataf => \ALT_INV_frac~0_combout\,
	cin => \Add3~106_cout\,
	cout => \Add3~102_cout\);

-- Location: MLABCELL_X47_Y3_N51
\Add3~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~98_cout\ = CARRY(( GND ) + ( (!\Selector15~0_combout\ & ((!\frac~0_combout\ & (\Selector0~0_combout\)) # (\frac~0_combout\ & ((\ShiftRight0~34_combout\))))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)) ) + ( \Add3~102_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101110001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_ShiftRight0~34_combout\,
	dataf => \ALT_INV_frac~0_combout\,
	cin => \Add3~102_cout\,
	cout => \Add3~98_cout\);

-- Location: MLABCELL_X47_Y3_N54
\Add3~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~94_cout\ = CARRY(( GND ) + ( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~35_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( \Add3~98_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~35_combout\,
	cin => \Add3~98_cout\,
	cout => \Add3~94_cout\);

-- Location: MLABCELL_X47_Y3_N57
\Add3~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~90_cout\ = CARRY(( GND ) + ( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~36_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( \Add3~94_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~36_combout\,
	cin => \Add3~94_cout\,
	cout => \Add3~90_cout\);

-- Location: MLABCELL_X47_Y2_N0
\Add3~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~86_cout\ = CARRY(( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~38_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_ShiftRight0~38_combout\,
	cin => \Add3~90_cout\,
	cout => \Add3~86_cout\);

-- Location: MLABCELL_X47_Y2_N3
\Add3~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~82_cout\ = CARRY(( GND ) + ( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~39_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( \Add3~86_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~39_combout\,
	cin => \Add3~86_cout\,
	cout => \Add3~82_cout\);

-- Location: MLABCELL_X47_Y2_N6
\Add3~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~78_cout\ = CARRY(( GND ) + ( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~40_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( \Add3~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~40_combout\,
	cin => \Add3~82_cout\,
	cout => \Add3~78_cout\);

-- Location: MLABCELL_X47_Y2_N9
\Add3~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~74_cout\ = CARRY(( GND ) + ( (!\frac~0_combout\ & (((\Selector0~0_combout\)))) # (\frac~0_combout\ & ((!\Selector15~0_combout\ & ((\ShiftRight0~41_combout\))) # (\Selector15~0_combout\ & (\Selector0~0_combout\)))) ) + ( \Add3~78_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_frac~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~41_combout\,
	cin => \Add3~78_cout\,
	cout => \Add3~74_cout\);

-- Location: MLABCELL_X47_Y2_N12
\Add3~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~70_cout\ = CARRY(( (!\Selector15~1_combout\ & (\Add0~33_sumout\ & ((\ShiftRight0~46_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_ShiftRight0~46_combout\,
	cin => \Add3~74_cout\,
	cout => \Add3~70_cout\);

-- Location: MLABCELL_X47_Y2_N15
\Add3~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~66_cout\ = CARRY(( (!\Selector15~1_combout\ & (\Add0~33_sumout\ & ((\ShiftRight0~45_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_ShiftRight0~45_combout\,
	cin => \Add3~70_cout\,
	cout => \Add3~66_cout\);

-- Location: MLABCELL_X47_Y2_N18
\Add3~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~62_cout\ = CARRY(( (!\Selector15~1_combout\ & (\Add0~33_sumout\ & ((\ShiftRight0~44_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_ShiftRight0~44_combout\,
	cin => \Add3~66_cout\,
	cout => \Add3~62_cout\);

-- Location: MLABCELL_X47_Y2_N21
\Add3~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~58_cout\ = CARRY(( GND ) + ( (!\Selector15~1_combout\ & (\Add0~33_sumout\ & ((\ShiftRight0~43_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( \Add3~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101101100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~43_combout\,
	cin => \Add3~62_cout\,
	cout => \Add3~58_cout\);

-- Location: MLABCELL_X47_Y2_N24
\Add3~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~54_cout\ = CARRY(( (!\Selector15~1_combout\ & (((\ShiftRight0~1_combout\ & \ShiftRight0~13_combout\)))) # (\Selector15~1_combout\ & (\Selector0~0_combout\)) ) + ( GND ) + ( \Add3~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	cin => \Add3~58_cout\,
	cout => \Add3~54_cout\);

-- Location: MLABCELL_X47_Y2_N27
\Add3~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~50_cout\ = CARRY(( (!\Selector15~1_combout\ & (((\ShiftRight0~23_combout\ & \ShiftRight0~13_combout\)))) # (\Selector15~1_combout\ & (\Selector0~0_combout\)) ) + ( GND ) + ( \Add3~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_ShiftRight0~23_combout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	cin => \Add3~54_cout\,
	cout => \Add3~50_cout\);

-- Location: MLABCELL_X47_Y2_N30
\Add3~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~46_cout\ = CARRY(( GND ) + ( (!\Selector15~1_combout\ & (\ShiftRight0~13_combout\ & ((\ShiftRight0~31_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( \Add3~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101101100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_ShiftRight0~13_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~31_combout\,
	cin => \Add3~50_cout\,
	cout => \Add3~46_cout\);

-- Location: MLABCELL_X47_Y2_N33
\Add3~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~42_cout\ = CARRY(( (!\Selector15~1_combout\ & (\ShiftRight0~13_combout\ & ((\ShiftRight0~14_combout\)))) # (\Selector15~1_combout\ & (((\Selector0~0_combout\)))) ) + ( GND ) + ( \Add3~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_ShiftRight0~13_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_ShiftRight0~14_combout\,
	cin => \Add3~46_cout\,
	cout => \Add3~42_cout\);

-- Location: MLABCELL_X47_Y2_N36
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~42_cout\,
	sumout => \Add3~1_sumout\);

-- Location: LABCELL_X46_Y2_N48
\ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = ( \Add0~5_sumout\ & ( (\Add0~17_sumout\ & (\Add0~9_sumout\ & \Add0~13_sumout\)) ) ) # ( !\Add0~5_sumout\ & ( (!\Add0~17_sumout\ & (!\Add0~9_sumout\ & !\Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LABCELL_X46_Y2_N45
\Selector32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = ( \result~34_combout\ & ( (\ShiftRight0~17_combout\ & (\result~36_combout\ & !\result~38_combout\)) ) ) # ( !\result~34_combout\ & ( (\ShiftRight0~17_combout\ & ((!\result~36_combout\) # (!\result~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~17_combout\,
	datac => \ALT_INV_result~36_combout\,
	datad => \ALT_INV_result~38_combout\,
	dataf => \ALT_INV_result~34_combout\,
	combout => \Selector32~4_combout\);

-- Location: LABCELL_X46_Y2_N57
\Selector32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = ( \Add0~29_sumout\ & ( (!\Add0~5_sumout\ & ((!\Add0~33_sumout\) # (!\Add0~1_sumout\))) # (\Add0~5_sumout\ & ((\Add0~1_sumout\))) ) ) # ( !\Add0~29_sumout\ & ( (\Add0~5_sumout\ & \Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001011110010111100101111001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Selector32~1_combout\);

-- Location: LABCELL_X46_Y2_N54
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \Add0~1_sumout\ & ( ((!\Add0~33_sumout\ & !\Add0~29_sumout\)) # (\Add0~5_sumout\) ) ) # ( !\Add0~1_sumout\ & ( (!\Add0~5_sumout\ & !\Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Selector32~0_combout\);

-- Location: LABCELL_X40_Y1_N18
\Selector32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = ( !\Selector32~0_combout\ & ( \Selector32~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector32~1_combout\,
	dataf => \ALT_INV_Selector32~0_combout\,
	combout => \Selector32~3_combout\);

-- Location: LABCELL_X46_Y3_N21
\Selector32~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~6_combout\ = ( \Classfp~0_combout\ & ( (\Selector32~4_combout\ & ((!\Selector32~3_combout\) # (!\Add0~5_sumout\))) ) ) # ( !\Classfp~0_combout\ & ( (\Selector32~4_combout\ & ((!\Selector32~3_combout\) # ((!\Add0~1_sumout\ & 
-- !\Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010101000101000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector32~4_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Selector32~3_combout\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_Classfp~0_combout\,
	combout => \Selector32~6_combout\);

-- Location: LABCELL_X46_Y3_N42
\Selector32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = ( \Selector32~1_combout\ & ( (\ShiftRight0~14_combout\ & (\Selector32~0_combout\ & \ShiftRight0~13_combout\)) ) ) # ( !\Selector32~1_combout\ & ( (\Selector32~0_combout\ & \ShiftRight0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~14_combout\,
	datab => \ALT_INV_Selector32~0_combout\,
	datac => \ALT_INV_ShiftRight0~15_combout\,
	datad => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_Selector32~1_combout\,
	combout => \Selector32~2_combout\);

-- Location: LABCELL_X46_Y3_N18
\Selector32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = ( \Classfp~0_combout\ & ( (\Selector32~4_combout\ & ((!\Add0~5_sumout\) # (\Selector32~3_combout\))) ) ) # ( !\Classfp~0_combout\ & ( (\Selector32~4_combout\ & (((!\Add0~1_sumout\ & !\Add0~5_sumout\)) # (\Selector32~3_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010101010000000101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector32~4_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Selector32~3_combout\,
	dataf => \ALT_INV_Classfp~0_combout\,
	combout => \Selector32~5_combout\);

-- Location: LABCELL_X46_Y3_N24
\Selector32~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~7_combout\ = ( \ShiftRight0~12_combout\ & ( \Selector0~0_combout\ & ( (!\Selector32~6_combout\ & (((!\Selector32~5_combout\) # (\ShiftRight0~16_combout\)))) # (\Selector32~6_combout\ & (((\Selector32~5_combout\)) # (\Selector32~2_combout\))) ) 
-- ) ) # ( !\ShiftRight0~12_combout\ & ( \Selector0~0_combout\ & ( (!\Selector32~6_combout\ & (((!\Selector32~5_combout\) # (\ShiftRight0~16_combout\)))) # (\Selector32~6_combout\ & (\Selector32~2_combout\ & (!\Selector32~5_combout\))) ) ) ) # ( 
-- \ShiftRight0~12_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector32~6_combout\ & (((\Selector32~5_combout\ & \ShiftRight0~16_combout\)))) # (\Selector32~6_combout\ & (((\Selector32~5_combout\)) # (\Selector32~2_combout\))) ) ) ) # ( 
-- !\ShiftRight0~12_combout\ & ( !\Selector0~0_combout\ & ( (!\Selector32~6_combout\ & (((\Selector32~5_combout\ & \ShiftRight0~16_combout\)))) # (\Selector32~6_combout\ & (\Selector32~2_combout\ & (!\Selector32~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector32~6_combout\,
	datab => \ALT_INV_Selector32~2_combout\,
	datac => \ALT_INV_Selector32~5_combout\,
	datad => \ALT_INV_ShiftRight0~16_combout\,
	datae => \ALT_INV_ShiftRight0~12_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector32~7_combout\);

-- Location: LABCELL_X40_Y1_N27
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \Selector32~1_combout\ & ( (\ShiftRight0~13_combout\ & (\Selector32~0_combout\ & \ShiftRight0~23_combout\)) ) ) # ( !\Selector32~1_combout\ & ( (\Selector32~0_combout\ & \ShiftRight0~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~13_combout\,
	datab => \ALT_INV_Selector32~0_combout\,
	datac => \ALT_INV_ShiftRight0~24_combout\,
	datad => \ALT_INV_ShiftRight0~23_combout\,
	dataf => \ALT_INV_Selector32~1_combout\,
	combout => \Selector34~0_combout\);

-- Location: LABCELL_X45_Y3_N0
\Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = ( \Selector34~0_combout\ & ( \ShiftRight0~25_combout\ & ( (!\Selector32~5_combout\ & (((\Selector0~0_combout\) # (\Selector32~6_combout\)))) # (\Selector32~5_combout\ & (((!\Selector32~6_combout\)) # (\ShiftRight0~22_combout\))) ) 
-- ) ) # ( !\Selector34~0_combout\ & ( \ShiftRight0~25_combout\ & ( (!\Selector32~5_combout\ & (((!\Selector32~6_combout\ & \Selector0~0_combout\)))) # (\Selector32~5_combout\ & (((!\Selector32~6_combout\)) # (\ShiftRight0~22_combout\))) ) ) ) # ( 
-- \Selector34~0_combout\ & ( !\ShiftRight0~25_combout\ & ( (!\Selector32~5_combout\ & (((\Selector0~0_combout\) # (\Selector32~6_combout\)))) # (\Selector32~5_combout\ & (\ShiftRight0~22_combout\ & (\Selector32~6_combout\))) ) ) ) # ( 
-- !\Selector34~0_combout\ & ( !\ShiftRight0~25_combout\ & ( (!\Selector32~5_combout\ & (((!\Selector32~6_combout\ & \Selector0~0_combout\)))) # (\Selector32~5_combout\ & (\ShiftRight0~22_combout\ & (\Selector32~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~22_combout\,
	datab => \ALT_INV_Selector32~5_combout\,
	datac => \ALT_INV_Selector32~6_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_Selector34~0_combout\,
	dataf => \ALT_INV_ShiftRight0~25_combout\,
	combout => \Selector34~1_combout\);

-- Location: LABCELL_X50_Y2_N18
\rounds~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rounds~0_combout\ = (!\result~36_combout\ & ((!\result~34_combout\ & ((!\frac~2_combout\))) # (\result~34_combout\ & (!\result~38_combout\)))) # (\result~36_combout\ & ((!\result~38_combout\ & ((!\frac~2_combout\))) # (\result~38_combout\ & 
-- (!\result~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000100100111111000010010011111100001001001111110000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~36_combout\,
	datab => \ALT_INV_result~34_combout\,
	datac => \ALT_INV_result~38_combout\,
	datad => \ALT_INV_frac~2_combout\,
	combout => \rounds~0_combout\);

-- Location: LABCELL_X40_Y1_N24
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \Selector32~1_combout\ & ( (\ShiftRight0~13_combout\ & (\Selector32~0_combout\ & \ShiftRight0~31_combout\)) ) ) # ( !\Selector32~1_combout\ & ( (\Selector32~0_combout\ & \ShiftRight0~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~13_combout\,
	datab => \ALT_INV_Selector32~0_combout\,
	datac => \ALT_INV_ShiftRight0~32_combout\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	dataf => \ALT_INV_Selector32~1_combout\,
	combout => \Selector33~0_combout\);

-- Location: LABCELL_X45_Y3_N36
\Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = ( \Selector33~0_combout\ & ( \ShiftRight0~33_combout\ & ( (!\Selector32~5_combout\ & (((\Selector0~0_combout\) # (\Selector32~6_combout\)))) # (\Selector32~5_combout\ & (((!\Selector32~6_combout\)) # (\ShiftRight0~30_combout\))) ) 
-- ) ) # ( !\Selector33~0_combout\ & ( \ShiftRight0~33_combout\ & ( (!\Selector32~5_combout\ & (((!\Selector32~6_combout\ & \Selector0~0_combout\)))) # (\Selector32~5_combout\ & (((!\Selector32~6_combout\)) # (\ShiftRight0~30_combout\))) ) ) ) # ( 
-- \Selector33~0_combout\ & ( !\ShiftRight0~33_combout\ & ( (!\Selector32~5_combout\ & (((\Selector0~0_combout\) # (\Selector32~6_combout\)))) # (\Selector32~5_combout\ & (\ShiftRight0~30_combout\ & (\Selector32~6_combout\))) ) ) ) # ( 
-- !\Selector33~0_combout\ & ( !\ShiftRight0~33_combout\ & ( (!\Selector32~5_combout\ & (((!\Selector32~6_combout\ & \Selector0~0_combout\)))) # (\Selector32~5_combout\ & (\ShiftRight0~30_combout\ & (\Selector32~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~30_combout\,
	datab => \ALT_INV_Selector32~5_combout\,
	datac => \ALT_INV_Selector32~6_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_Selector33~0_combout\,
	dataf => \ALT_INV_ShiftRight0~33_combout\,
	combout => \Selector33~1_combout\);

-- Location: LABCELL_X45_Y3_N42
\rounds~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rounds~1_combout\ = ( \Selector33~1_combout\ & ( \Selector32~7_combout\ ) ) # ( !\Selector33~1_combout\ & ( (\Selector32~7_combout\ & ((!\rounds~0_combout\) # (\Selector34~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110011001100110011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector32~7_combout\,
	datac => \ALT_INV_Selector34~1_combout\,
	datad => \ALT_INV_rounds~0_combout\,
	datae => \ALT_INV_Selector33~1_combout\,
	combout => \rounds~1_combout\);

-- Location: LABCELL_X45_Y3_N21
\valor11[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[0]~0_combout\ = ( \rounds~0_combout\ & ( (\rounds~1_combout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\))) ) ) # ( !\rounds~0_combout\ & ( ((!\rounds~1_combout\) # (\Add3~5_sumout\)) # (\Add3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111000001110000011111110111111101110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_rounds~1_combout\,
	datae => \ALT_INV_rounds~0_combout\,
	combout => \valor11[0]~0_combout\);

-- Location: LABCELL_X45_Y3_N27
\valor11[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[1]~1_combout\ = ( \Add3~1_sumout\ & ( (\rounds~1_combout\) # (\Selector30~3_combout\) ) ) # ( !\Add3~1_sumout\ & ( (!\rounds~1_combout\ & (\Selector30~3_combout\)) # (\rounds~1_combout\ & ((\Add3~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010111110101111101010011010100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector30~3_combout\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_rounds~1_combout\,
	datae => \ALT_INV_Add3~1_sumout\,
	combout => \valor11[1]~1_combout\);

-- Location: LABCELL_X45_Y3_N30
\valor11[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[2]~2_combout\ = ( \Add3~1_sumout\ & ( \Selector29~1_combout\ ) ) # ( !\Add3~1_sumout\ & ( \Selector29~1_combout\ & ( (!\rounds~1_combout\) # (\Add3~13_sumout\) ) ) ) # ( \Add3~1_sumout\ & ( !\Selector29~1_combout\ & ( \rounds~1_combout\ ) ) ) # ( 
-- !\Add3~1_sumout\ & ( !\Selector29~1_combout\ & ( (\rounds~1_combout\ & \Add3~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rounds~1_combout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datae => \ALT_INV_Add3~1_sumout\,
	dataf => \ALT_INV_Selector29~1_combout\,
	combout => \valor11[2]~2_combout\);

-- Location: LABCELL_X45_Y3_N9
\valor11[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[3]~3_combout\ = ( \Add3~1_sumout\ & ( \Selector28~1_combout\ ) ) # ( !\Add3~1_sumout\ & ( \Selector28~1_combout\ & ( (!\rounds~1_combout\) # (\Add3~17_sumout\) ) ) ) # ( \Add3~1_sumout\ & ( !\Selector28~1_combout\ & ( \rounds~1_combout\ ) ) ) # ( 
-- !\Add3~1_sumout\ & ( !\Selector28~1_combout\ & ( (\Add3~17_sumout\ & \rounds~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~17_sumout\,
	datac => \ALT_INV_rounds~1_combout\,
	datae => \ALT_INV_Add3~1_sumout\,
	dataf => \ALT_INV_Selector28~1_combout\,
	combout => \valor11[3]~3_combout\);

-- Location: LABCELL_X45_Y3_N12
\valor11[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[4]~4_combout\ = ( \Selector27~1_combout\ & ( ((!\rounds~1_combout\) # (\Add3~21_sumout\)) # (\Add3~1_sumout\) ) ) # ( !\Selector27~1_combout\ & ( (\rounds~1_combout\ & ((\Add3~21_sumout\) # (\Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_rounds~1_combout\,
	datac => \ALT_INV_Add3~21_sumout\,
	dataf => \ALT_INV_Selector27~1_combout\,
	combout => \valor11[4]~4_combout\);

-- Location: LABCELL_X45_Y3_N15
\valor11[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[5]~5_combout\ = ( \Selector26~1_combout\ & ( ((!\rounds~1_combout\) # (\Add3~25_sumout\)) # (\Add3~1_sumout\) ) ) # ( !\Selector26~1_combout\ & ( (\rounds~1_combout\ & ((\Add3~25_sumout\) # (\Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_rounds~1_combout\,
	datac => \ALT_INV_Add3~25_sumout\,
	dataf => \ALT_INV_Selector26~1_combout\,
	combout => \valor11[5]~5_combout\);

-- Location: LABCELL_X45_Y3_N48
\valor11[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[6]~6_combout\ = ( \Selector25~1_combout\ & ( ((!\rounds~1_combout\) # (\Add3~29_sumout\)) # (\Add3~1_sumout\) ) ) # ( !\Selector25~1_combout\ & ( (\rounds~1_combout\ & ((\Add3~29_sumout\) # (\Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_rounds~1_combout\,
	datac => \ALT_INV_Add3~29_sumout\,
	dataf => \ALT_INV_Selector25~1_combout\,
	combout => \valor11[6]~6_combout\);

-- Location: LABCELL_X45_Y3_N54
\valor11[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[7]~7_combout\ = ( \Selector24~1_combout\ & ( \Add3~33_sumout\ ) ) # ( !\Selector24~1_combout\ & ( \Add3~33_sumout\ & ( \rounds~1_combout\ ) ) ) # ( \Selector24~1_combout\ & ( !\Add3~33_sumout\ & ( (!\rounds~1_combout\) # (\Add3~1_sumout\) ) ) ) # 
-- ( !\Selector24~1_combout\ & ( !\Add3~33_sumout\ & ( (\rounds~1_combout\ & \Add3~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rounds~1_combout\,
	datac => \ALT_INV_Add3~1_sumout\,
	datae => \ALT_INV_Selector24~1_combout\,
	dataf => \ALT_INV_Add3~33_sumout\,
	combout => \valor11[7]~7_combout\);

-- Location: LABCELL_X45_Y3_N51
\valor11[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \valor11[8]~8_combout\ = ( \Selector23~3_combout\ & ( ((!\rounds~1_combout\) # (\Add3~37_sumout\)) # (\Add3~1_sumout\) ) ) # ( !\Selector23~3_combout\ & ( (\rounds~1_combout\ & ((\Add3~37_sumout\) # (\Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_rounds~1_combout\,
	datad => \ALT_INV_Add3~37_sumout\,
	dataf => \ALT_INV_Selector23~3_combout\,
	combout => \valor11[8]~8_combout\);

-- Location: M10K_X38_Y1_N0
\memoria_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "FFD36FFD2AFFD1FFFD13FFD08FFCFCFFCEFFFCE3FFCD6FFCCAFFCBDFFCB0FFCA2FFC95FFC87FFC79FFC6BFFC5CFFC4EFFC3FFFC30FFC20FFC11FFC01FFBF1FFBE0FFBD0FFBBFFFBAEFFB9CFFB8BFFB79FFB66FFB54FFB41FFB2EFFB1AFFB07FFAF3FFADEFFACAFFAB5FFA9FFFA8AFFA74FFA5DFFA47FFA30FFA18FFA00FF9E8FF9D0FF9B7FF99EFF984FF96AFF94FFF934FF919FF8FDFF8E1FF8C4FF8A7FF889FF86BFF84DFF82EFF80EFF7EEFF7CEFF7ADFF78BFF769FF746FF723FF700FF6DCFF6B7FF691FF66BFF645FF61EFF5F6FF5CDFF5A4FF57AFF550FF525FF4FAFF4CDFF4A0FF472FF444FF414FF3E4FF3B4FF382FF350FF31DFF2E9FF2B4FF27FFF",
	mem_init3 => "248FF211FF1D9FF1A0FF166FF12CFF0F0FF0B3FF076FF037FEFF8FEFB7FEF76FEF33FEEF0FEEABFEE65FEE1EFEDD6FED8EFED43FECF8FECABFEC5EFEC0FFEBBEFEB6DFEB1AFEAC6FEA71FEA1AFE9C2FE969FE90EFE8B2FE854FE7F5FE794FE732FE6CEFE669FE602FE59AFE530FE4C4FE457FE3E8FE377FE304FE290FE219FE1A1FE127FE0ABFE02EFDFAEFDF2CFDEA8FDE22FDD9AFDD10FDC84FDBF6FDB65FDAD2FDA3DFD9A6FD90CFD86FFD7D0FD72FFD68CFD5E5FD53CFD491FD3E3FD332FD27EFD1C8FD10FFD053FCF94FCED2FCE0CFCD44FCC79FCBABFCAD9FCA04FC92CFC850FC772FC68FFC5A9FC4C0FC3D3FC2E2FC1EDFC0F5FBFF9FBEF9FBDF5FBCE",
	mem_init2 => "DFBBE0FBAD0FB9BCFB8A3FB786FB664FB53EFB414FB2E4FB1B0FB078FAF3AFADF8FACB1FAB64FAA13FA8BCFA760FA5FFFA498FA32CFA1BAFA042F9EC5F9D41F9BB8F9A29F9894F96F8F9556F93AEF91FFF9049F8E8DF8CCAF8B00F8930F8758F8579F8392F81A4F7FAFF7DB2F7BADF79A0F778CF756FF734AF711CF6EE6F6CA8F6A61F6811F65B8F6356F60EBF5E76F5BF8F5970F56DEF5443F519DF4EEDF4C33F496EF469FF43C5F40E0F3DF0F3AF4F37EDF34DAF31BCF2E92F2B5BF2819F24CAF216EF1E05F1A90F170DF137DF0FE0F0C34F087BF04B4F00DFEFCFBEF908EF506EF0F6EECD6EE8A6EE467EE018EDBB9ED749ED2C9ECE38EC996EC4E2EC01EE",
	mem_init1 => "BB47EB65FEB164EAC57EA738EA205E9CBFE9766E91F9E8C79E86E4E813BE7B7DE75AAE6FC2E69C4E63B1E5D88E5748E50F2E4A85E4401E3D66E36B2E2FE7E2904E2208E1AF3E13C5E0C7EE051DDFDA1DF60CDEE5CDE691DDEAADD6A8DCE8ADC650DBDFADB586DACF6DA448D9B7CD9292D8989D8062D771CD6DB6D6431D5A8BD50C5D46DED3CD6D32ADD2862D1DF5D1366D08B4CFDDECF2E6CE7C9CDC89CD124CC59ACB9EBCAE17CA21EC95FEC89B7C7D4AC70B6C63FBC5718C4A0DC3CD9C2F7DC21F8C144AC0672BF871BEA45BDBEFBCD6EBBEC2BAFEABA0E7B91B8B825EB72D6B6322B5341B4332B32F7B228DB11F6B0130AF03CADF1AACDC8ABC48AAA98A98",
	mem_init0 => "B9A86ABA746CA61FEA4F60A3C91A2992A1662A03029EF719DBB09C7BD9B39A99F4598ABF976089612094C06936BB9213F90B928F5B48DFA48C9638B2F189C4E8857A86E768574083FDA828438107D7F8867E05F7C8087AF82796CD77DE8764D574B9373223718856FEBA6E4C16CA9B6B049695CA67B206604B6454A62A2060ECB5F34C5D7A55BBD559FDD583BE5677854B0B52E79511C24F4E64D7E64BAC349D7E480174628E444E64271D409363EB303CD0C3AECD39071371FA35369334BE315FB2F7202D82E2B92629A0927AD825B9323C3C21CD31FD5A1DDD01BE3919E9317EE115F2313F5A11F870FFAB0DFC70BFDC09FEB07FF505FFC03FFF0200000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/funcion_tanh.ram0_tanh_mem_9k_83e0ea2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:memoria_rtl_0|altsyncram_svd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 20,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X34_Y1_N15
\find_leftmost~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~14_combout\ = (!\memoria_rtl_0|auto_generated|ram_block1a3\ & !\memoria_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \find_leftmost~14_combout\);

-- Location: MLABCELL_X34_Y1_N18
\find_leftmost~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~15_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( !\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \find_leftmost~15_combout\);

-- Location: LABCELL_X37_Y1_N30
\find_leftmost~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~1_combout\ = (!\memoria_rtl_0|auto_generated|ram_block1a15\ & !\memoria_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \find_leftmost~1_combout\);

-- Location: LABCELL_X36_Y1_N30
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a16\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a19\ & (!\memoria_rtl_0|auto_generated|ram_block1a18\ & !\memoria_rtl_0|auto_generated|ram_block1a17\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X37_Y1_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a9\ & (!\memoria_rtl_0|auto_generated|ram_block1a10\ & !\memoria_rtl_0|auto_generated|ram_block1a8\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X36_Y1_N45
\find_leftmost~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~4_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( !\memoria_rtl_0|auto_generated|ram_block1a12\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \find_leftmost~4_combout\);

-- Location: MLABCELL_X34_Y1_N3
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a6\ & !\memoria_rtl_0|auto_generated|ram_block1a5\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X36_Y1_N6
\find_leftmost~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~16_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( \Equal0~3_combout\ & ( (\Equal0~2_combout\ & ((!\find_leftmost~1_combout\) # ((!\find_leftmost~4_combout\) # (\Equal0~1_combout\)))) ) ) ) # ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( \Equal0~3_combout\ & ( (\Equal0~2_combout\ & ((!\find_leftmost~1_combout\) # (!\find_leftmost~4_combout\))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( !\Equal0~3_combout\ & ( 
-- (\Equal0~2_combout\ & ((!\find_leftmost~1_combout\) # ((!\find_leftmost~4_combout\) # (\Equal0~1_combout\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( !\Equal0~3_combout\ & ( (\Equal0~2_combout\ & ((!\find_leftmost~1_combout\) # 
-- ((!\find_leftmost~4_combout\) # (\Equal0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100011001100110010001100110011001000100011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~1_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_find_leftmost~4_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \find_leftmost~16_combout\);

-- Location: MLABCELL_X34_Y1_N0
\find_leftmost~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~0_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a6\ & ( !\memoria_rtl_0|auto_generated|ram_block1a5\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \find_leftmost~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a18\ & ( !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a19\ & (!\memoria_rtl_0|auto_generated|ram_block1a16\ & 
-- (!\memoria_rtl_0|auto_generated|ram_block1a17\ & !\memoria_rtl_0|auto_generated|ram_block1a12\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X36_Y1_N36
\find_leftmost~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~2_combout\ = ( \Equal0~0_combout\ & ( \Equal0~1_combout\ & ( ((!\find_leftmost~0_combout\) # ((!\find_leftmost~1_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a4\))) # (\memoria_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( 
-- !\Equal0~0_combout\ & ( \Equal0~1_combout\ ) ) # ( \Equal0~0_combout\ & ( !\Equal0~1_combout\ ) ) # ( !\Equal0~0_combout\ & ( !\Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datab => \ALT_INV_find_leftmost~0_combout\,
	datac => \ALT_INV_find_leftmost~1_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \find_leftmost~2_combout\);

-- Location: LABCELL_X35_Y1_N30
\find_leftmost~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~17_combout\ = (!\find_leftmost~14_combout\ & (((\find_leftmost~16_combout\)))) # (\find_leftmost~14_combout\ & ((!\find_leftmost~2_combout\ & (\find_leftmost~15_combout\)) # (\find_leftmost~2_combout\ & ((\find_leftmost~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001111000110110000111100011011000011110001101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~14_combout\,
	datab => \ALT_INV_find_leftmost~15_combout\,
	datac => \ALT_INV_find_leftmost~16_combout\,
	datad => \ALT_INV_find_leftmost~2_combout\,
	combout => \find_leftmost~17_combout\);

-- Location: MLABCELL_X34_Y1_N12
\find_leftmost~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~12_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a2\) # (\memoria_rtl_0|auto_generated|ram_block1a3\) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( 
-- ((!\memoria_rtl_0|auto_generated|ram_block1a2\ & !\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\memoria_rtl_0|auto_generated|ram_block1a3\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111010101110101011101010111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \find_leftmost~12_combout\);

-- Location: MLABCELL_X34_Y1_N21
\find_leftmost~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~13_combout\ = ( !\find_leftmost~2_combout\ & ( \find_leftmost~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_find_leftmost~12_combout\,
	dataf => \ALT_INV_find_leftmost~2_combout\,
	combout => \find_leftmost~13_combout\);

-- Location: LABCELL_X37_Y1_N42
\find_leftmost~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~9_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a5\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a10\ & ((!\memoria_rtl_0|auto_generated|ram_block1a8\) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a9\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a10\ & ((!\memoria_rtl_0|auto_generated|ram_block1a8\) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a9\))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a5\ & ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a10\ & (((!\memoria_rtl_0|auto_generated|ram_block1a6\ & 
-- !\memoria_rtl_0|auto_generated|ram_block1a8\)) # (\memoria_rtl_0|auto_generated|ram_block1a9\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (\memoria_rtl_0|auto_generated|ram_block1a9\ & 
-- !\memoria_rtl_0|auto_generated|ram_block1a10\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000100011110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \find_leftmost~9_combout\);

-- Location: LABCELL_X37_Y1_N48
\find_leftmost~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~10_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a12\ & ( \find_leftmost~9_combout\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a15\ & ((!\memoria_rtl_0|auto_generated|ram_block1a13\) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a14\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a12\ & ( \find_leftmost~9_combout\ & ( (\memoria_rtl_0|auto_generated|ram_block1a14\ & !\memoria_rtl_0|auto_generated|ram_block1a15\) ) ) ) # ( 
-- \memoria_rtl_0|auto_generated|ram_block1a12\ & ( !\find_leftmost~9_combout\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a15\ & ((!\memoria_rtl_0|auto_generated|ram_block1a13\) # (\memoria_rtl_0|auto_generated|ram_block1a14\))) ) ) ) # ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a12\ & ( !\find_leftmost~9_combout\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a15\ & (((!\memoria_rtl_0|auto_generated|ram_block1a13\ & !\memoria_rtl_0|auto_generated|ram_block1a11\)) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a14\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100000000101110110000000000110011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \ALT_INV_find_leftmost~9_combout\,
	combout => \find_leftmost~10_combout\);

-- Location: LABCELL_X36_Y1_N54
\find_leftmost~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~11_combout\ = ( \find_leftmost~2_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a16\ & ( ((\memoria_rtl_0|auto_generated|ram_block1a17\ & !\memoria_rtl_0|auto_generated|ram_block1a18\)) # (\memoria_rtl_0|auto_generated|ram_block1a19\) 
-- ) ) ) # ( \find_leftmost~2_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a16\ & ( ((!\memoria_rtl_0|auto_generated|ram_block1a18\ & ((!\find_leftmost~10_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a17\)))) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a19\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111110101010100000000000000000101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	datab => \ALT_INV_find_leftmost~10_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	datae => \ALT_INV_find_leftmost~2_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	combout => \find_leftmost~11_combout\);

-- Location: LABCELL_X36_Y1_N42
\find_leftmost~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~3_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a16\ & ( !\memoria_rtl_0|auto_generated|ram_block1a17\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	combout => \find_leftmost~3_combout\);

-- Location: LABCELL_X37_Y1_N6
\find_leftmost~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~5_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a8\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a11\ & !\memoria_rtl_0|auto_generated|ram_block1a10\) ) ) ) # ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a8\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (\memoria_rtl_0|auto_generated|ram_block1a9\ & (!\memoria_rtl_0|auto_generated|ram_block1a11\ & !\memoria_rtl_0|auto_generated|ram_block1a10\)) ) ) ) # ( 
-- \memoria_rtl_0|auto_generated|ram_block1a8\ & ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a11\ & !\memoria_rtl_0|auto_generated|ram_block1a10\) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a8\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a11\ & (!\memoria_rtl_0|auto_generated|ram_block1a10\ & ((!\memoria_rtl_0|auto_generated|ram_block1a6\) # (\memoria_rtl_0|auto_generated|ram_block1a9\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000111100000000000001010000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \find_leftmost~5_combout\);

-- Location: LABCELL_X36_Y1_N48
\find_leftmost~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~6_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a18\ & ( \find_leftmost~1_combout\ ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a18\ & ( \find_leftmost~1_combout\ & ( ((\find_leftmost~3_combout\ & (!\find_leftmost~5_combout\ & 
-- \find_leftmost~4_combout\))) # (\memoria_rtl_0|auto_generated|ram_block1a19\) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a18\ & ( !\find_leftmost~1_combout\ ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a18\ & ( !\find_leftmost~1_combout\ & ( 
-- (\find_leftmost~3_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a19\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111101010101011101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	datab => \ALT_INV_find_leftmost~3_combout\,
	datac => \ALT_INV_find_leftmost~5_combout\,
	datad => \ALT_INV_find_leftmost~4_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	dataf => \ALT_INV_find_leftmost~1_combout\,
	combout => \find_leftmost~6_combout\);

-- Location: MLABCELL_X34_Y1_N39
\find_leftmost~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~7_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (\memoria_rtl_0|auto_generated|ram_block1a3\) # (\memoria_rtl_0|auto_generated|ram_block1a2\) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( 
-- (!\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((\memoria_rtl_0|auto_generated|ram_block1a3\) # (\memoria_rtl_0|auto_generated|ram_block1a2\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \find_leftmost~7_combout\);

-- Location: LABCELL_X35_Y1_N27
\find_leftmost~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~8_combout\ = ( \find_leftmost~7_combout\ & ( (!\find_leftmost~2_combout\) # (\find_leftmost~6_combout\) ) ) # ( !\find_leftmost~7_combout\ & ( (\find_leftmost~2_combout\ & \find_leftmost~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_find_leftmost~2_combout\,
	datac => \ALT_INV_find_leftmost~6_combout\,
	dataf => \ALT_INV_find_leftmost~7_combout\,
	combout => \find_leftmost~8_combout\);

-- Location: MLABCELL_X34_Y1_N27
\result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~0_combout\ = ( \find_leftmost~8_combout\ & ( (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\find_leftmost~11_combout\) # (\find_leftmost~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~13_combout\,
	datab => \ALT_INV_find_leftmost~11_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_find_leftmost~8_combout\,
	combout => \result~0_combout\);

-- Location: LABCELL_X36_Y1_N15
\find_leftmost~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~18_combout\ = (\Equal0~2_combout\ & ((!\find_leftmost~1_combout\) # ((!\Equal0~1_combout\) # (!\find_leftmost~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_find_leftmost~4_combout\,
	combout => \find_leftmost~18_combout\);

-- Location: LABCELL_X35_Y1_N33
\find_leftmost~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~19_combout\ = ( \find_leftmost~18_combout\ & ( (!\find_leftmost~14_combout\) # ((\find_leftmost~2_combout\) # (\find_leftmost~15_combout\)) ) ) # ( !\find_leftmost~18_combout\ & ( (\find_leftmost~14_combout\ & (\find_leftmost~15_combout\ & 
-- !\find_leftmost~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~14_combout\,
	datab => \ALT_INV_find_leftmost~15_combout\,
	datac => \ALT_INV_find_leftmost~2_combout\,
	dataf => \ALT_INV_find_leftmost~18_combout\,
	combout => \find_leftmost~19_combout\);

-- Location: LABCELL_X35_Y1_N36
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( \find_leftmost~15_combout\ & ( (((\find_leftmost~14_combout\ & !\find_leftmost~2_combout\)) # (\find_leftmost~16_combout\)) # (\find_leftmost~18_combout\) ) ) # ( !\find_leftmost~15_combout\ & ( (!\find_leftmost~14_combout\ & 
-- (((\find_leftmost~16_combout\) # (\find_leftmost~18_combout\)))) # (\find_leftmost~14_combout\ & (\find_leftmost~2_combout\ & ((\find_leftmost~16_combout\) # (\find_leftmost~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101110111011000010111011101101001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~14_combout\,
	datab => \ALT_INV_find_leftmost~2_combout\,
	datac => \ALT_INV_find_leftmost~18_combout\,
	datad => \ALT_INV_find_leftmost~16_combout\,
	dataf => \ALT_INV_find_leftmost~15_combout\,
	combout => \Add4~0_combout\);

-- Location: LABCELL_X35_Y1_N45
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\memoria_rtl_0|auto_generated|ram_block1a3\ & (!\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\memoria_rtl_0|auto_generated|ram_block1a2\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X35_Y1_N48
\find_leftmost~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~20_combout\ = (!\Equal0~2_combout\) # ((\Equal0~4_combout\ & !\find_leftmost~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000111100111111000011110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_find_leftmost~2_combout\,
	combout => \find_leftmost~20_combout\);

-- Location: LABCELL_X36_Y1_N18
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( \Equal0~4_combout\ & ( (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\find_leftmost~1_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_find_leftmost~1_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X35_Y1_N51
\result~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~1_combout\ = ( !\Equal0~5_combout\ & ( !\Add4~0_combout\ $ (!\find_leftmost~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~0_combout\,
	datac => \ALT_INV_find_leftmost~20_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~1_combout\);

-- Location: LABCELL_X35_Y1_N42
\result~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~2_combout\ = ( \result~1_combout\ & ( (!\find_leftmost~17_combout\ & (\result~0_combout\ & !\find_leftmost~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_find_leftmost~17_combout\,
	datac => \ALT_INV_result~0_combout\,
	datad => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_result~1_combout\,
	combout => \result~2_combout\);

-- Location: MLABCELL_X34_Y1_N24
\ShiftLeft1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~0_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (\find_leftmost~8_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\find_leftmost~11_combout\)) # (\find_leftmost~13_combout\))) ) ) # ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\find_leftmost~13_combout\ & (!\find_leftmost~11_combout\ & (\find_leftmost~8_combout\ & \memoria_rtl_0|auto_generated|ram_block1a0~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~13_combout\,
	datab => \ALT_INV_find_leftmost~11_combout\,
	datac => \ALT_INV_find_leftmost~8_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \ShiftLeft1~0_combout\);

-- Location: LABCELL_X31_Y1_N3
\result~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~3_combout\ = ( !\find_leftmost~17_combout\ & ( (\ShiftLeft1~0_combout\ & (\result~1_combout\ & !\find_leftmost~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~0_combout\,
	datac => \ALT_INV_result~1_combout\,
	datad => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~3_combout\);

-- Location: MLABCELL_X34_Y1_N30
\ShiftLeft1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~1_combout\ = ( \find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( ((!\find_leftmost~11_combout\ & !\find_leftmost~13_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a2\) ) ) ) # ( !\find_leftmost~8_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\find_leftmost~13_combout\) # (\find_leftmost~11_combout\))) ) ) ) # ( \find_leftmost~8_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a1\ 
-- & ( (\memoria_rtl_0|auto_generated|ram_block1a2\ & ((\find_leftmost~13_combout\) # (\find_leftmost~11_combout\))) ) ) ) # ( !\find_leftmost~8_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( 
-- (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\find_leftmost~13_combout\) # (\find_leftmost~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000000000011111100010101000101011100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \ALT_INV_find_leftmost~11_combout\,
	datac => \ALT_INV_find_leftmost~13_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datae => \ALT_INV_find_leftmost~8_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \ShiftLeft1~1_combout\);

-- Location: LABCELL_X31_Y1_N9
\result~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~4_combout\ = ( !\find_leftmost~17_combout\ & ( (!\find_leftmost~19_combout\ & (\ShiftLeft1~1_combout\ & \result~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_find_leftmost~19_combout\,
	datac => \ALT_INV_ShiftLeft1~1_combout\,
	datad => \ALT_INV_result~1_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~4_combout\);

-- Location: MLABCELL_X34_Y1_N36
\find_leftmost~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~21_combout\ = (!\find_leftmost~11_combout\ & !\find_leftmost~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_find_leftmost~11_combout\,
	datac => \ALT_INV_find_leftmost~13_combout\,
	combout => \find_leftmost~21_combout\);

-- Location: MLABCELL_X34_Y1_N6
\ShiftLeft1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~2_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a3\ & ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\find_leftmost~21_combout\) # ((!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # 
-- (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a3\ & ( \memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\)) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (\find_leftmost~8_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a2\ & \find_leftmost~21_combout\)))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( (!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\find_leftmost~21_combout\)))) # (\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a3\ & ( !\memoria_rtl_0|auto_generated|ram_block1a1\ & ( (\find_leftmost~21_combout\ & ((!\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a2\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \ALT_INV_find_leftmost~8_combout\,
	datad => \ALT_INV_find_leftmost~21_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \ShiftLeft1~2_combout\);

-- Location: LABCELL_X33_Y1_N12
\result~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (!\find_leftmost~17_combout\ & (!\find_leftmost~19_combout\ & (\ShiftLeft1~2_combout\ & \result~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~17_combout\,
	datab => \ALT_INV_find_leftmost~19_combout\,
	datac => \ALT_INV_ShiftLeft1~2_combout\,
	datad => \ALT_INV_result~1_combout\,
	combout => \result~5_combout\);

-- Location: LABCELL_X31_Y1_N42
\result~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~6_combout\ = ( !\Equal0~5_combout\ & ( (!\find_leftmost~19_combout\ & (\find_leftmost~20_combout\ & !\find_leftmost~17_combout\)) # (\find_leftmost~19_combout\ & (!\find_leftmost~20_combout\ & \find_leftmost~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~19_combout\,
	datab => \ALT_INV_find_leftmost~20_combout\,
	datac => \ALT_INV_find_leftmost~17_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~6_combout\);

-- Location: MLABCELL_X34_Y1_N42
\ShiftLeft1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~3_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a1\))) # (\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a3\)) ) ) ) # ( !\find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a4\ & ( (\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a2\) ) ) ) # ( \find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a1\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a3\)) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a4\ & ( (\memoria_rtl_0|auto_generated|ram_block1a2\ & !\find_leftmost~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \ALT_INV_find_leftmost~8_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \ShiftLeft1~3_combout\);

-- Location: LABCELL_X33_Y1_N21
\result~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~7_combout\ = ( \ShiftLeft1~3_combout\ & ( (\result~6_combout\ & ((!\find_leftmost~17_combout\) # (\result~0_combout\))) ) ) # ( !\ShiftLeft1~3_combout\ & ( (\result~0_combout\ & (\result~6_combout\ & \find_leftmost~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~0_combout\,
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_find_leftmost~17_combout\,
	dataf => \ALT_INV_ShiftLeft1~3_combout\,
	combout => \result~7_combout\);

-- Location: MLABCELL_X34_Y1_N48
\ShiftLeft1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~4_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a3\ & ( \memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a2\)))) # 
-- (\find_leftmost~8_combout\ & (((\find_leftmost~21_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a5\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a3\ & ( \memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & 
-- (((\memoria_rtl_0|auto_generated|ram_block1a2\ & \find_leftmost~21_combout\)))) # (\find_leftmost~8_combout\ & (((\find_leftmost~21_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a5\))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a2\)))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\find_leftmost~21_combout\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a3\ & ( !\memoria_rtl_0|auto_generated|ram_block1a4\ & ( (!\find_leftmost~8_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a2\ & \find_leftmost~21_combout\)))) # 
-- (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a5\ & ((!\find_leftmost~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \ALT_INV_find_leftmost~8_combout\,
	datad => \ALT_INV_find_leftmost~21_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \ShiftLeft1~4_combout\);

-- Location: LABCELL_X31_Y1_N0
\result~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~8_combout\ = ( \find_leftmost~17_combout\ & ( (\ShiftLeft1~0_combout\ & \result~6_combout\) ) ) # ( !\find_leftmost~17_combout\ & ( (\result~6_combout\ & \ShiftLeft1~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~0_combout\,
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_ShiftLeft1~4_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~8_combout\);

-- Location: MLABCELL_X34_Y1_N54
\ShiftLeft1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~5_combout\ = ( \find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a6\ & ( (!\find_leftmost~21_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a5\) ) ) ) # ( !\find_leftmost~8_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a6\ & ( (!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a4\)) # (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a3\))) ) ) ) # ( \find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a6\ & ( (\memoria_rtl_0|auto_generated|ram_block1a5\ & \find_leftmost~21_combout\) ) ) ) # ( !\find_leftmost~8_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a6\ & ( (!\find_leftmost~21_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a4\)) # (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a3\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \ALT_INV_find_leftmost~21_combout\,
	datae => \ALT_INV_find_leftmost~8_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \ShiftLeft1~5_combout\);

-- Location: LABCELL_X31_Y1_N18
\result~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~9_combout\ = ( \find_leftmost~17_combout\ & ( (\result~6_combout\ & \ShiftLeft1~1_combout\) ) ) # ( !\find_leftmost~17_combout\ & ( (\ShiftLeft1~5_combout\ & \result~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~5_combout\,
	datab => \ALT_INV_result~6_combout\,
	datad => \ALT_INV_ShiftLeft1~1_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~9_combout\);

-- Location: LABCELL_X33_Y1_N54
\ShiftLeft1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~6_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a4\)) # (\find_leftmost~8_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a6\))) ) ) ) # ( !\find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( \find_leftmost~21_combout\ & 
-- ( !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a4\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a6\))) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( (\find_leftmost~8_combout\ & \memoria_rtl_0|auto_generated|ram_block1a7\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \ALT_INV_find_leftmost~8_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \ShiftLeft1~6_combout\);

-- Location: LABCELL_X33_Y1_N0
\result~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~10_combout\ = ( \find_leftmost~17_combout\ & ( (\result~6_combout\ & \ShiftLeft1~2_combout\) ) ) # ( !\find_leftmost~17_combout\ & ( (\result~6_combout\ & \ShiftLeft1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_ShiftLeft1~2_combout\,
	datad => \ALT_INV_ShiftLeft1~6_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~10_combout\);

-- Location: LABCELL_X33_Y1_N36
\ShiftLeft1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~7_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a6\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a8\)) ) ) ) # ( \find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( (\find_leftmost~8_combout\ & \memoria_rtl_0|auto_generated|ram_block1a7\) ) ) ) # ( !\find_leftmost~21_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a5\ & ( (!\find_leftmost~8_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a6\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a8\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datab => \ALT_INV_find_leftmost~8_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \ShiftLeft1~7_combout\);

-- Location: LABCELL_X31_Y1_N45
\result~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~11_combout\ = ( !\Equal0~5_combout\ & ( (\find_leftmost~19_combout\ & !\find_leftmost~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~19_combout\,
	datab => \ALT_INV_find_leftmost~20_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~11_combout\);

-- Location: LABCELL_X33_Y1_N18
\result~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~12_combout\ = ( \ShiftLeft1~3_combout\ & ( (!\result~6_combout\ & (\result~0_combout\ & ((\result~11_combout\)))) # (\result~6_combout\ & (((\result~11_combout\) # (\ShiftLeft1~7_combout\)))) ) ) # ( !\ShiftLeft1~3_combout\ & ( 
-- (!\result~6_combout\ & (\result~0_combout\ & ((\result~11_combout\)))) # (\result~6_combout\ & (((\ShiftLeft1~7_combout\ & !\result~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010000000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~0_combout\,
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_ShiftLeft1~7_combout\,
	datad => \ALT_INV_result~11_combout\,
	dataf => \ALT_INV_ShiftLeft1~3_combout\,
	combout => \result~12_combout\);

-- Location: LABCELL_X37_Y1_N54
\ShiftLeft1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~8_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a9\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~21_combout\) # ((!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a6\)) # 
-- (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a8\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a9\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\)) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a6\))) # (\find_leftmost~8_combout\ & (((\find_leftmost~21_combout\ & \memoria_rtl_0|auto_generated|ram_block1a8\)))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a9\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a6\ & (\find_leftmost~21_combout\))) # (\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a8\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a9\ & ( !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (\find_leftmost~21_combout\ & ((!\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a6\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a8\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~8_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \ALT_INV_find_leftmost~21_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \ShiftLeft1~8_combout\);

-- Location: LABCELL_X31_Y1_N57
\result~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~13_combout\ = ( \ShiftLeft1~0_combout\ & ( (!\result~6_combout\ & (((\result~11_combout\)))) # (\result~6_combout\ & ((!\result~11_combout\ & ((\ShiftLeft1~8_combout\))) # (\result~11_combout\ & (\ShiftLeft1~4_combout\)))) ) ) # ( 
-- !\ShiftLeft1~0_combout\ & ( (\result~6_combout\ & ((!\result~11_combout\ & ((\ShiftLeft1~8_combout\))) # (\result~11_combout\ & (\ShiftLeft1~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011111101010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~4_combout\,
	datab => \ALT_INV_ShiftLeft1~8_combout\,
	datac => \ALT_INV_result~6_combout\,
	datad => \ALT_INV_result~11_combout\,
	dataf => \ALT_INV_ShiftLeft1~0_combout\,
	combout => \result~13_combout\);

-- Location: LABCELL_X37_Y1_N0
\ShiftLeft1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~9_combout\ = ( \find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a10\)) # (\find_leftmost~21_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a9\))) ) ) ) # ( !\find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a7\ & ( (\memoria_rtl_0|auto_generated|ram_block1a8\) # (\find_leftmost~21_combout\) ) ) ) # ( \find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a10\)) # (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a9\))) ) ) ) # ( !\find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a7\ & ( (!\find_leftmost~21_combout\ & \memoria_rtl_0|auto_generated|ram_block1a8\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~21_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datae => \ALT_INV_find_leftmost~8_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \ShiftLeft1~9_combout\);

-- Location: LABCELL_X31_Y1_N21
\result~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~14_combout\ = ( \ShiftLeft1~9_combout\ & ( (!\result~6_combout\ & (((\result~11_combout\ & \ShiftLeft1~1_combout\)))) # (\result~6_combout\ & (((!\result~11_combout\)) # (\ShiftLeft1~5_combout\))) ) ) # ( !\ShiftLeft1~9_combout\ & ( 
-- (\result~11_combout\ & ((!\result~6_combout\ & ((\ShiftLeft1~1_combout\))) # (\result~6_combout\ & (\ShiftLeft1~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110100110001001111010011000100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~5_combout\,
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_result~11_combout\,
	datad => \ALT_INV_ShiftLeft1~1_combout\,
	dataf => \ALT_INV_ShiftLeft1~9_combout\,
	combout => \result~14_combout\);

-- Location: LABCELL_X37_Y1_N36
\ShiftLeft1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~10_combout\ = ( \find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~21_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a10\) ) ) ) # ( !\find_leftmost~8_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a9\)) # (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a8\))) ) ) ) # ( \find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a11\ & ( (\find_leftmost~21_combout\ & \memoria_rtl_0|auto_generated|ram_block1a10\) ) ) ) # ( !\find_leftmost~8_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~21_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a9\)) # (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a8\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~21_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datae => \ALT_INV_find_leftmost~8_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \ShiftLeft1~10_combout\);

-- Location: LABCELL_X33_Y1_N3
\result~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~15_combout\ = ( \ShiftLeft1~10_combout\ & ( (!\result~6_combout\ & (\ShiftLeft1~2_combout\ & (\result~11_combout\))) # (\result~6_combout\ & (((!\result~11_combout\) # (\ShiftLeft1~6_combout\)))) ) ) # ( !\ShiftLeft1~10_combout\ & ( 
-- (\result~11_combout\ & ((!\result~6_combout\ & (\ShiftLeft1~2_combout\)) # (\result~6_combout\ & ((\ShiftLeft1~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011100110100001101110011010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~2_combout\,
	datab => \ALT_INV_result~6_combout\,
	datac => \ALT_INV_result~11_combout\,
	datad => \ALT_INV_ShiftLeft1~6_combout\,
	dataf => \ALT_INV_ShiftLeft1~10_combout\,
	combout => \result~15_combout\);

-- Location: LABCELL_X37_Y1_N12
\ShiftLeft1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~11_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a9\ & ( \memoria_rtl_0|auto_generated|ram_block1a11\ & ( ((!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a10\)) # (\find_leftmost~8_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a12\)))) # (\find_leftmost~21_combout\) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a9\ & ( \memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a10\ & (!\find_leftmost~21_combout\))) # (\find_leftmost~8_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a12\) # (\find_leftmost~21_combout\)))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a9\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~8_combout\ & (((\find_leftmost~21_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a10\))) # (\find_leftmost~8_combout\ & (((!\find_leftmost~21_combout\ & 
-- \memoria_rtl_0|auto_generated|ram_block1a12\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a9\ & ( !\memoria_rtl_0|auto_generated|ram_block1a11\ & ( (!\find_leftmost~21_combout\ & ((!\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a10\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a12\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~8_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	datac => \ALT_INV_find_leftmost~21_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \ShiftLeft1~11_combout\);

-- Location: LABCELL_X33_Y1_N6
\result~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~63_combout\ = ( !\find_leftmost~19_combout\ & ( (\result~1_combout\ & ((!\find_leftmost~17_combout\ & (\ShiftLeft1~11_combout\)) # (\find_leftmost~17_combout\ & (((\result~0_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( (\result~1_combout\ 
-- & (((!\find_leftmost~17_combout\ & ((\ShiftLeft1~3_combout\))) # (\find_leftmost~17_combout\ & (\ShiftLeft1~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100000101000000000000010100010001000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~1_combout\,
	datab => \ALT_INV_ShiftLeft1~11_combout\,
	datac => \ALT_INV_ShiftLeft1~7_combout\,
	datad => \ALT_INV_find_leftmost~17_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_ShiftLeft1~3_combout\,
	datag => \ALT_INV_result~0_combout\,
	combout => \result~63_combout\);

-- Location: LABCELL_X37_Y1_N18
\ShiftLeft1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~12_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a10\ & ( \memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & (((\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a11\)))) # 
-- (\find_leftmost~21_combout\ & (((!\find_leftmost~8_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a12\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a10\ & ( \memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & 
-- (((\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a11\)))) # (\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a12\ & ((\find_leftmost~8_combout\)))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a10\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a11\ & !\find_leftmost~8_combout\)))) # (\find_leftmost~21_combout\ & (((!\find_leftmost~8_combout\)) # 
-- (\memoria_rtl_0|auto_generated|ram_block1a12\))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a10\ & ( !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a11\ & 
-- !\find_leftmost~8_combout\)))) # (\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a12\ & ((\find_leftmost~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~21_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \ALT_INV_find_leftmost~8_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \ShiftLeft1~12_combout\);

-- Location: LABCELL_X31_Y1_N24
\result~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~59_combout\ = ( !\find_leftmost~19_combout\ & ( (\result~1_combout\ & (((!\find_leftmost~17_combout\ & (\ShiftLeft1~12_combout\)) # (\find_leftmost~17_combout\ & ((\ShiftLeft1~0_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( 
-- ((\result~1_combout\ & ((!\find_leftmost~17_combout\ & ((\ShiftLeft1~4_combout\))) # (\find_leftmost~17_combout\ & (\ShiftLeft1~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~12_combout\,
	datab => \ALT_INV_result~1_combout\,
	datac => \ALT_INV_ShiftLeft1~8_combout\,
	datad => \ALT_INV_ShiftLeft1~4_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	datag => \ALT_INV_ShiftLeft1~0_combout\,
	combout => \result~59_combout\);

-- Location: LABCELL_X37_Y1_N24
\ShiftLeft1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~13_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a14\ & ( \memoria_rtl_0|auto_generated|ram_block1a13\ & ( ((!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a12\)) # (\find_leftmost~21_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a11\)))) # (\find_leftmost~8_combout\) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a14\ & ( \memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a12\ & ((!\find_leftmost~8_combout\)))) # (\find_leftmost~21_combout\ & (((\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a11\)))) ) ) ) # ( \memoria_rtl_0|auto_generated|ram_block1a14\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~21_combout\ & (((\find_leftmost~8_combout\)) # (\memoria_rtl_0|auto_generated|ram_block1a12\))) # (\find_leftmost~21_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a11\ & 
-- !\find_leftmost~8_combout\)))) ) ) ) # ( !\memoria_rtl_0|auto_generated|ram_block1a14\ & ( !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~8_combout\ & ((!\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a12\)) # 
-- (\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a11\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~21_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \ALT_INV_find_leftmost~8_combout\,
	datae => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \ShiftLeft1~13_combout\);

-- Location: LABCELL_X31_Y1_N48
\result~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~55_combout\ = ( !\find_leftmost~19_combout\ & ( (\result~1_combout\ & (((!\find_leftmost~17_combout\ & (\ShiftLeft1~13_combout\)) # (\find_leftmost~17_combout\ & ((\ShiftLeft1~1_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( 
-- ((\result~1_combout\ & ((!\find_leftmost~17_combout\ & ((\ShiftLeft1~5_combout\))) # (\find_leftmost~17_combout\ & (\ShiftLeft1~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~13_combout\,
	datab => \ALT_INV_result~1_combout\,
	datac => \ALT_INV_ShiftLeft1~9_combout\,
	datad => \ALT_INV_ShiftLeft1~5_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	datag => \ALT_INV_ShiftLeft1~1_combout\,
	combout => \result~55_combout\);

-- Location: LABCELL_X33_Y1_N42
\ShiftLeft1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft1~14_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a12\ & ( (!\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a14\) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a12\ & ( (!\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a13\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a15\))) ) ) ) # ( \find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a12\ & ( (\find_leftmost~8_combout\ & \memoria_rtl_0|auto_generated|ram_block1a14\) ) ) ) # ( !\find_leftmost~21_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a12\ & ( (!\find_leftmost~8_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a13\)) # (\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a15\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datab => \ALT_INV_find_leftmost~8_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \ShiftLeft1~14_combout\);

-- Location: LABCELL_X33_Y1_N30
\result~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~51_combout\ = ( !\find_leftmost~17_combout\ & ( (\result~1_combout\ & ((!\find_leftmost~19_combout\ & (\ShiftLeft1~14_combout\)) # (\find_leftmost~19_combout\ & (((\ShiftLeft1~6_combout\)))))) ) ) # ( \find_leftmost~17_combout\ & ( 
-- (\result~1_combout\ & (((!\find_leftmost~19_combout\ & (\ShiftLeft1~2_combout\)) # (\find_leftmost~19_combout\ & ((\ShiftLeft1~10_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100000101000001010000000000010001000001010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~1_combout\,
	datab => \ALT_INV_ShiftLeft1~14_combout\,
	datac => \ALT_INV_ShiftLeft1~2_combout\,
	datad => \ALT_INV_find_leftmost~19_combout\,
	datae => \ALT_INV_find_leftmost~17_combout\,
	dataf => \ALT_INV_ShiftLeft1~10_combout\,
	datag => \ALT_INV_ShiftLeft1~6_combout\,
	combout => \result~51_combout\);

-- Location: LABCELL_X33_Y1_N48
\result~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~16_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a15\) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a14\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a16\)) ) ) ) # ( \find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (\memoria_rtl_0|auto_generated|ram_block1a15\ & \find_leftmost~8_combout\) ) ) ) # ( !\find_leftmost~21_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a13\ & ( (!\find_leftmost~8_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a14\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a16\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datab => \ALT_INV_find_leftmost~8_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \result~16_combout\);

-- Location: LABCELL_X33_Y1_N15
\result~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~17_combout\ = ( \ShiftLeft1~3_combout\ & ( ((!\find_leftmost~19_combout\ & (\result~16_combout\)) # (\find_leftmost~19_combout\ & ((\ShiftLeft1~7_combout\)))) # (\find_leftmost~17_combout\) ) ) # ( !\ShiftLeft1~3_combout\ & ( 
-- (!\find_leftmost~17_combout\ & ((!\find_leftmost~19_combout\ & (\result~16_combout\)) # (\find_leftmost~19_combout\ & ((\ShiftLeft1~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~17_combout\,
	datab => \ALT_INV_find_leftmost~19_combout\,
	datac => \ALT_INV_result~16_combout\,
	datad => \ALT_INV_ShiftLeft1~7_combout\,
	dataf => \ALT_INV_ShiftLeft1~3_combout\,
	combout => \result~17_combout\);

-- Location: LABCELL_X31_Y1_N12
\result~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~47_combout\ = ( !\find_leftmost~19_combout\ & ( (!\Equal0~5_combout\ & ((!\find_leftmost~17_combout\ & ((!\find_leftmost~20_combout\ & (\result~0_combout\)) # (\find_leftmost~20_combout\ & ((\result~17_combout\))))) # (\find_leftmost~17_combout\ & 
-- (!\find_leftmost~20_combout\ & ((\result~17_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( (!\find_leftmost~20_combout\ & (!\Equal0~5_combout\ & ((!\find_leftmost~17_combout\ & ((\result~17_combout\))) # (\find_leftmost~17_combout\ & 
-- (\ShiftLeft1~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100001101110000001001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~17_combout\,
	datab => \ALT_INV_find_leftmost~20_combout\,
	datac => \ALT_INV_ShiftLeft1~11_combout\,
	datad => \ALT_INV_result~17_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	datag => \ALT_INV_result~0_combout\,
	combout => \result~47_combout\);

-- Location: LABCELL_X33_Y1_N24
\result~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~18_combout\ = ( \find_leftmost~21_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a14\ & ( (!\find_leftmost~8_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a16\) ) ) ) # ( !\find_leftmost~21_combout\ & ( 
-- \memoria_rtl_0|auto_generated|ram_block1a14\ & ( (!\find_leftmost~8_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a15\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a17\)) ) ) ) # ( \find_leftmost~21_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a14\ & ( (\memoria_rtl_0|auto_generated|ram_block1a16\ & \find_leftmost~8_combout\) ) ) ) # ( !\find_leftmost~21_combout\ & ( !\memoria_rtl_0|auto_generated|ram_block1a14\ & ( (!\find_leftmost~8_combout\ & 
-- ((\memoria_rtl_0|auto_generated|ram_block1a15\))) # (\find_leftmost~8_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a17\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	datab => \ALT_INV_find_leftmost~8_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datae => \ALT_INV_find_leftmost~21_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \result~18_combout\);

-- Location: LABCELL_X31_Y1_N54
\result~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~19_combout\ = ( \find_leftmost~17_combout\ & ( \ShiftLeft1~4_combout\ ) ) # ( !\find_leftmost~17_combout\ & ( (!\find_leftmost~19_combout\ & ((\result~18_combout\))) # (\find_leftmost~19_combout\ & (\ShiftLeft1~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft1~4_combout\,
	datab => \ALT_INV_ShiftLeft1~8_combout\,
	datac => \ALT_INV_result~18_combout\,
	datad => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_find_leftmost~17_combout\,
	combout => \result~19_combout\);

-- Location: LABCELL_X31_Y1_N36
\result~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~43_combout\ = ( !\find_leftmost~19_combout\ & ( (!\Equal0~5_combout\ & ((!\find_leftmost~20_combout\ & ((!\find_leftmost~17_combout\ & ((\ShiftLeft1~0_combout\))) # (\find_leftmost~17_combout\ & (\result~19_combout\)))) # 
-- (\find_leftmost~20_combout\ & (\result~19_combout\ & ((!\find_leftmost~17_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( (!\find_leftmost~20_combout\ & (!\Equal0~5_combout\ & ((!\find_leftmost~17_combout\ & (\result~19_combout\)) # 
-- (\find_leftmost~17_combout\ & ((\ShiftLeft1~12_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110101000100010001000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_result~19_combout\,
	datab => \ALT_INV_find_leftmost~20_combout\,
	datac => \ALT_INV_ShiftLeft1~12_combout\,
	datad => \ALT_INV_find_leftmost~17_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	datag => \ALT_INV_ShiftLeft1~0_combout\,
	combout => \result~43_combout\);

-- Location: LABCELL_X36_Y1_N24
\result~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~20_combout\ = ( \find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a15\ & ( (!\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a18\))) # (\find_leftmost~21_combout\ & 
-- (\memoria_rtl_0|auto_generated|ram_block1a17\)) ) ) ) # ( !\find_leftmost~8_combout\ & ( \memoria_rtl_0|auto_generated|ram_block1a15\ & ( (\memoria_rtl_0|auto_generated|ram_block1a16\) # (\find_leftmost~21_combout\) ) ) ) # ( \find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a15\ & ( (!\find_leftmost~21_combout\ & ((\memoria_rtl_0|auto_generated|ram_block1a18\))) # (\find_leftmost~21_combout\ & (\memoria_rtl_0|auto_generated|ram_block1a17\)) ) ) ) # ( !\find_leftmost~8_combout\ & ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a15\ & ( (!\find_leftmost~21_combout\ & \memoria_rtl_0|auto_generated|ram_block1a16\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	datac => \ALT_INV_find_leftmost~21_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	datae => \ALT_INV_find_leftmost~8_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \result~20_combout\);

-- Location: LABCELL_X31_Y1_N6
\result~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~21_combout\ = ( \ShiftLeft1~9_combout\ & ( (!\find_leftmost~17_combout\ & (((\result~20_combout\)) # (\find_leftmost~19_combout\))) # (\find_leftmost~17_combout\ & (((\ShiftLeft1~5_combout\)))) ) ) # ( !\ShiftLeft1~9_combout\ & ( 
-- (!\find_leftmost~17_combout\ & (!\find_leftmost~19_combout\ & ((\result~20_combout\)))) # (\find_leftmost~17_combout\ & (((\ShiftLeft1~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~17_combout\,
	datab => \ALT_INV_find_leftmost~19_combout\,
	datac => \ALT_INV_ShiftLeft1~5_combout\,
	datad => \ALT_INV_result~20_combout\,
	dataf => \ALT_INV_ShiftLeft1~9_combout\,
	combout => \result~21_combout\);

-- Location: LABCELL_X31_Y1_N30
\result~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~39_combout\ = ( !\find_leftmost~19_combout\ & ( (!\Equal0~5_combout\ & ((!\find_leftmost~17_combout\ & ((!\find_leftmost~20_combout\ & ((\ShiftLeft1~1_combout\))) # (\find_leftmost~20_combout\ & (\result~21_combout\)))) # 
-- (\find_leftmost~17_combout\ & (\result~21_combout\ & ((!\find_leftmost~20_combout\)))))) ) ) # ( \find_leftmost~19_combout\ & ( (!\find_leftmost~20_combout\ & (!\Equal0~5_combout\ & ((!\find_leftmost~17_combout\ & (\result~21_combout\)) # 
-- (\find_leftmost~17_combout\ & ((\ShiftLeft1~13_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100100010001001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~17_combout\,
	datab => \ALT_INV_result~21_combout\,
	datac => \ALT_INV_ShiftLeft1~13_combout\,
	datad => \ALT_INV_find_leftmost~20_combout\,
	datae => \ALT_INV_find_leftmost~19_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	datag => \ALT_INV_ShiftLeft1~1_combout\,
	combout => \result~39_combout\);

-- Location: LABCELL_X36_Y1_N12
\find_leftmost~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~22_combout\ = ( \find_leftmost~0_combout\ & ( (!\find_leftmost~1_combout\) # ((!\Equal0~1_combout\) # ((!\Equal0~0_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a7\))) ) ) # ( !\find_leftmost~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_find_leftmost~0_combout\,
	combout => \find_leftmost~22_combout\);

-- Location: LABCELL_X36_Y1_N33
\find_leftmost~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~23_combout\ = ( \memoria_rtl_0|auto_generated|ram_block1a16\ & ( ((!\memoria_rtl_0|auto_generated|ram_block1a18\ & \memoria_rtl_0|auto_generated|ram_block1a17\)) # (\memoria_rtl_0|auto_generated|ram_block1a19\) ) ) # ( 
-- !\memoria_rtl_0|auto_generated|ram_block1a16\ & ( ((!\memoria_rtl_0|auto_generated|ram_block1a18\ & ((!\find_leftmost~10_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a17\)))) # (\memoria_rtl_0|auto_generated|ram_block1a19\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111011101110101011101110101010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	datac => \ALT_INV_find_leftmost~10_combout\,
	datad => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	combout => \find_leftmost~23_combout\);

-- Location: LABCELL_X35_Y1_N0
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( (!\find_leftmost~22_combout\ & ((!\memoria_rtl_0|auto_generated|ram_block1a4\ & ((\find_leftmost~12_combout\))) # (\memoria_rtl_0|auto_generated|ram_block1a4\ & (\find_leftmost~23_combout\)))) # (\find_leftmost~22_combout\ & 
-- (((\find_leftmost~23_combout\)))) ) + ( VCC ) + ( !VCC ))
-- \Add6~2\ = CARRY(( (!\find_leftmost~22_combout\ & ((!\memoria_rtl_0|auto_generated|ram_block1a4\ & ((\find_leftmost~12_combout\))) # (\memoria_rtl_0|auto_generated|ram_block1a4\ & (\find_leftmost~23_combout\)))) # (\find_leftmost~22_combout\ & 
-- (((\find_leftmost~23_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~22_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \ALT_INV_find_leftmost~23_combout\,
	datad => \ALT_INV_find_leftmost~12_combout\,
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: LABCELL_X40_Y1_N3
\result~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~22_combout\ = ( \Add6~1_sumout\ & ( !\Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~22_combout\);

-- Location: LABCELL_X35_Y1_N3
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( VCC ) + ( (!\find_leftmost~22_combout\ & ((!\memoria_rtl_0|auto_generated|ram_block1a4\ & ((\find_leftmost~7_combout\))) # (\memoria_rtl_0|auto_generated|ram_block1a4\ & (\find_leftmost~6_combout\)))) # (\find_leftmost~22_combout\ 
-- & (((\find_leftmost~6_combout\)))) ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( VCC ) + ( (!\find_leftmost~22_combout\ & ((!\memoria_rtl_0|auto_generated|ram_block1a4\ & ((\find_leftmost~7_combout\))) # (\memoria_rtl_0|auto_generated|ram_block1a4\ & (\find_leftmost~6_combout\)))) # (\find_leftmost~22_combout\ & 
-- (((\find_leftmost~6_combout\)))) ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~22_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \ALT_INV_find_leftmost~6_combout\,
	dataf => \ALT_INV_find_leftmost~7_combout\,
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: LABCELL_X40_Y1_N36
\result~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~23_combout\ = ( !\Equal0~5_combout\ & ( \Add6~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~5_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~23_combout\);

-- Location: LABCELL_X35_Y1_N24
\find_leftmost~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~24_combout\ = (!\find_leftmost~14_combout\) # (\find_leftmost~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_find_leftmost~2_combout\,
	datac => \ALT_INV_find_leftmost~14_combout\,
	combout => \find_leftmost~24_combout\);

-- Location: LABCELL_X35_Y1_N6
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( VCC ) + ( (!\find_leftmost~24_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\memoria_rtl_0|auto_generated|ram_block1a1\)))) # (\find_leftmost~24_combout\ & (!\find_leftmost~16_combout\)) ) + ( \Add6~6\ 
-- ))
-- \Add6~10\ = CARRY(( VCC ) + ( (!\find_leftmost~24_combout\ & (((\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\memoria_rtl_0|auto_generated|ram_block1a1\)))) # (\find_leftmost~24_combout\ & (!\find_leftmost~16_combout\)) ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001010000010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~16_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \ALT_INV_find_leftmost~24_combout\,
	dataf => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: LABCELL_X40_Y1_N45
\result~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~24_combout\ = ( !\Equal0~5_combout\ & ( \Add6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~9_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~24_combout\);

-- Location: LABCELL_X35_Y1_N9
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( VCC ) + ( (!\find_leftmost~24_combout\) # (!\find_leftmost~16_combout\ $ (\find_leftmost~18_combout\)) ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( VCC ) + ( (!\find_leftmost~24_combout\) # (!\find_leftmost~16_combout\ $ (\find_leftmost~18_combout\)) ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~16_combout\,
	datac => \ALT_INV_find_leftmost~24_combout\,
	dataf => \ALT_INV_find_leftmost~18_combout\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: LABCELL_X40_Y1_N48
\result~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~25_combout\ = ( \Add6~13_sumout\ & ( !\Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add6~13_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~25_combout\);

-- Location: LABCELL_X35_Y1_N12
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( !\Add4~0_combout\ $ (((!\find_leftmost~2_combout\ & ((!\Equal0~4_combout\))) # (\find_leftmost~2_combout\ & (\Equal0~2_combout\)))) ) + ( VCC ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( !\Add4~0_combout\ $ (((!\find_leftmost~2_combout\ & ((!\Equal0~4_combout\))) # (\find_leftmost~2_combout\ & (\Equal0~2_combout\)))) ) + ( VCC ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110010110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~0_combout\,
	datab => \ALT_INV_find_leftmost~2_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: LABCELL_X40_Y1_N57
\result~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~26_combout\ = ( !\Equal0~5_combout\ & ( \Add6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~17_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~26_combout\);

-- Location: LABCELL_X35_Y1_N39
\find_leftmost~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \find_leftmost~25_combout\ = ( \find_leftmost~15_combout\ & ( (!\find_leftmost~14_combout\) # (\find_leftmost~2_combout\) ) ) # ( !\find_leftmost~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~14_combout\,
	datab => \ALT_INV_find_leftmost~2_combout\,
	dataf => \ALT_INV_find_leftmost~15_combout\,
	combout => \find_leftmost~25_combout\);

-- Location: LABCELL_X35_Y1_N15
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( VCC ) + ( !\find_leftmost~25_combout\ $ (((!\Add4~0_combout\) # (!\find_leftmost~20_combout\))) ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( VCC ) + ( !\find_leftmost~25_combout\ $ (((!\Add4~0_combout\) # (!\find_leftmost~20_combout\))) ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~0_combout\,
	datac => \ALT_INV_find_leftmost~20_combout\,
	dataf => \ALT_INV_find_leftmost~25_combout\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: LABCELL_X40_Y1_N30
\result~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~27_combout\ = ( !\Equal0~5_combout\ & ( \Add6~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~21_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~27_combout\);

-- Location: LABCELL_X35_Y1_N54
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = ( \find_leftmost~14_combout\ & ( \find_leftmost~18_combout\ & ( (!\find_leftmost~2_combout\ & (!\find_leftmost~15_combout\)) # (\find_leftmost~2_combout\ & ((\Equal0~2_combout\))) ) ) ) # ( !\find_leftmost~14_combout\ & ( 
-- \find_leftmost~18_combout\ & ( \Equal0~2_combout\ ) ) ) # ( \find_leftmost~14_combout\ & ( !\find_leftmost~18_combout\ & ( (!\find_leftmost~2_combout\ & (((!\find_leftmost~15_combout\)))) # (\find_leftmost~2_combout\ & ((!\find_leftmost~16_combout\) # 
-- ((\Equal0~2_combout\)))) ) ) ) # ( !\find_leftmost~14_combout\ & ( !\find_leftmost~18_combout\ & ( (!\find_leftmost~16_combout\) # (\Equal0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111110011001010111100001111000011111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_find_leftmost~16_combout\,
	datab => \ALT_INV_find_leftmost~15_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_find_leftmost~2_combout\,
	datae => \ALT_INV_find_leftmost~14_combout\,
	dataf => \ALT_INV_find_leftmost~18_combout\,
	combout => \Add4~1_combout\);

-- Location: LABCELL_X35_Y1_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( VCC ) + ( !\Add4~1_combout\ $ ((((\find_leftmost~24_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\memoria_rtl_0|auto_generated|ram_block1a1\))) ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( VCC ) + ( !\Add4~1_combout\ $ ((((\find_leftmost~24_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\memoria_rtl_0|auto_generated|ram_block1a1\))) ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010101010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_find_leftmost~24_combout\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: LABCELL_X40_Y1_N9
\result~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~28_combout\ = ( !\Equal0~5_combout\ & ( \Add6~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~25_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~28_combout\);

-- Location: LABCELL_X35_Y1_N21
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( GND ) + ( !\Add4~1_combout\ $ ((((\find_leftmost~24_combout\) # (\memoria_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\memoria_rtl_0|auto_generated|ram_block1a1\))) ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_combout\,
	datab => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \memoria_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_find_leftmost~24_combout\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\);

-- Location: LABCELL_X40_Y1_N12
\result~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~29_combout\ = ( \Add6~29_sumout\ & ( !\Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add6~29_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \result~29_combout\);

-- Location: IOIBUF_X66_Y0_N41
\dataa[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(31),
	o => \dataa[31]~input_o\);

-- Location: LABCELL_X24_Y36_N0
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


