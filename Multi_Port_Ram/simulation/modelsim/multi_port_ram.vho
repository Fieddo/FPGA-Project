-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "08/26/2018 20:28:13"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE multi_port_ram_data_type IS

TYPE q_3_0_type IS ARRAY (3 DOWNTO 0) OF std_logic;
TYPE q_3_0_0_9_type IS ARRAY (0 TO 9) OF q_3_0_type;
SUBTYPE q_type IS q_3_0_0_9_type;

END multi_port_ram_data_type;

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.MULTI_PORT_RAM_DATA_TYPE.ALL;

ENTITY 	multi_port_ram IS
    PORT (
	data : IN std_logic_vector(3 DOWNTO 0);
	addr : IN std_logic_vector(3 DOWNTO 0);
	we : IN std_logic;
	clk : IN std_logic;
	q : BUFFER q_type
	);
END multi_port_ram;

-- Design Ports Information
-- q[9][0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9][1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9][2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9][3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8][0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8][1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8][2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8][3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7][0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7][1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7][2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7][3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6][0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6][1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6][2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6][3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5][0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5][1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5][2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5][3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4][0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4][1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4][2]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4][3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3][0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3][1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3][2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3][3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2][0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2][1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2][2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2][3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1][0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1][1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1][2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1][3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0][0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0][1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0][2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0][3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multi_port_ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : q_type;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \q[9][0]~output_o\ : std_logic;
SIGNAL \q[9][1]~output_o\ : std_logic;
SIGNAL \q[9][2]~output_o\ : std_logic;
SIGNAL \q[9][3]~output_o\ : std_logic;
SIGNAL \q[8][0]~output_o\ : std_logic;
SIGNAL \q[8][1]~output_o\ : std_logic;
SIGNAL \q[8][2]~output_o\ : std_logic;
SIGNAL \q[8][3]~output_o\ : std_logic;
SIGNAL \q[7][0]~output_o\ : std_logic;
SIGNAL \q[7][1]~output_o\ : std_logic;
SIGNAL \q[7][2]~output_o\ : std_logic;
SIGNAL \q[7][3]~output_o\ : std_logic;
SIGNAL \q[6][0]~output_o\ : std_logic;
SIGNAL \q[6][1]~output_o\ : std_logic;
SIGNAL \q[6][2]~output_o\ : std_logic;
SIGNAL \q[6][3]~output_o\ : std_logic;
SIGNAL \q[5][0]~output_o\ : std_logic;
SIGNAL \q[5][1]~output_o\ : std_logic;
SIGNAL \q[5][2]~output_o\ : std_logic;
SIGNAL \q[5][3]~output_o\ : std_logic;
SIGNAL \q[4][0]~output_o\ : std_logic;
SIGNAL \q[4][1]~output_o\ : std_logic;
SIGNAL \q[4][2]~output_o\ : std_logic;
SIGNAL \q[4][3]~output_o\ : std_logic;
SIGNAL \q[3][0]~output_o\ : std_logic;
SIGNAL \q[3][1]~output_o\ : std_logic;
SIGNAL \q[3][2]~output_o\ : std_logic;
SIGNAL \q[3][3]~output_o\ : std_logic;
SIGNAL \q[2][0]~output_o\ : std_logic;
SIGNAL \q[2][1]~output_o\ : std_logic;
SIGNAL \q[2][2]~output_o\ : std_logic;
SIGNAL \q[2][3]~output_o\ : std_logic;
SIGNAL \q[1][0]~output_o\ : std_logic;
SIGNAL \q[1][1]~output_o\ : std_logic;
SIGNAL \q[1][2]~output_o\ : std_logic;
SIGNAL \q[1][3]~output_o\ : std_logic;
SIGNAL \q[0][0]~output_o\ : std_logic;
SIGNAL \q[0][1]~output_o\ : std_logic;
SIGNAL \q[0][2]~output_o\ : std_logic;
SIGNAL \q[0][3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \ram[9][0]~feeder_combout\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \ram[9][0]~q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \ram[9][1]~q\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \ram[9][2]~q\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \ram[9][3]~q\ : std_logic;
SIGNAL \ram[8][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \ram[8][0]~q\ : std_logic;
SIGNAL \ram[8][1]~q\ : std_logic;
SIGNAL \ram[8][2]~q\ : std_logic;
SIGNAL \ram[8][3]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \ram[7][0]~q\ : std_logic;
SIGNAL \ram[7][1]~q\ : std_logic;
SIGNAL \ram[7][2]~feeder_combout\ : std_logic;
SIGNAL \ram[7][2]~q\ : std_logic;
SIGNAL \ram[7][3]~feeder_combout\ : std_logic;
SIGNAL \ram[7][3]~q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \ram[6][0]~q\ : std_logic;
SIGNAL \ram[6][1]~q\ : std_logic;
SIGNAL \ram[6][2]~feeder_combout\ : std_logic;
SIGNAL \ram[6][2]~q\ : std_logic;
SIGNAL \ram[6][3]~q\ : std_logic;
SIGNAL \ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \ram[5][0]~q\ : std_logic;
SIGNAL \ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \ram[5][1]~q\ : std_logic;
SIGNAL \ram[5][2]~feeder_combout\ : std_logic;
SIGNAL \ram[5][2]~q\ : std_logic;
SIGNAL \ram[5][3]~feeder_combout\ : std_logic;
SIGNAL \ram[5][3]~q\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \ram[4][0]~q\ : std_logic;
SIGNAL \ram[4][1]~q\ : std_logic;
SIGNAL \ram[4][2]~feeder_combout\ : std_logic;
SIGNAL \ram[4][2]~q\ : std_logic;
SIGNAL \ram[4][3]~q\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \ram[3][0]~q\ : std_logic;
SIGNAL \ram[3][1]~q\ : std_logic;
SIGNAL \ram[3][2]~q\ : std_logic;
SIGNAL \ram[3][3]~q\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \ram[2][0]~q\ : std_logic;
SIGNAL \ram[2][1]~q\ : std_logic;
SIGNAL \ram[2][2]~feeder_combout\ : std_logic;
SIGNAL \ram[2][2]~q\ : std_logic;
SIGNAL \ram[2][3]~feeder_combout\ : std_logic;
SIGNAL \ram[2][3]~q\ : std_logic;
SIGNAL \ram[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \ram[1][0]~q\ : std_logic;
SIGNAL \ram[1][1]~feeder_combout\ : std_logic;
SIGNAL \ram[1][1]~q\ : std_logic;
SIGNAL \ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \ram[1][2]~q\ : std_logic;
SIGNAL \ram[1][3]~feeder_combout\ : std_logic;
SIGNAL \ram[1][3]~q\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \ram[0][0]~q\ : std_logic;
SIGNAL \ram[0][1]~q\ : std_logic;
SIGNAL \ram[0][2]~q\ : std_logic;
SIGNAL \ram[0][3]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_data <= data;
ww_addr <= addr;
ww_we <= we;
ww_clk <= clk;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X17_Y25_N16
\q[9][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[9][0]~q\,
	devoe => ww_devoe,
	o => \q[9][0]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\q[9][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[9][1]~q\,
	devoe => ww_devoe,
	o => \q[9][1]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\q[9][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[9][2]~q\,
	devoe => ww_devoe,
	o => \q[9][2]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\q[9][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[9][3]~q\,
	devoe => ww_devoe,
	o => \q[9][3]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\q[8][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[8][0]~q\,
	devoe => ww_devoe,
	o => \q[8][0]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\q[8][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[8][1]~q\,
	devoe => ww_devoe,
	o => \q[8][1]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\q[8][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[8][2]~q\,
	devoe => ww_devoe,
	o => \q[8][2]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\q[8][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[8][3]~q\,
	devoe => ww_devoe,
	o => \q[8][3]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\q[7][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[7][0]~q\,
	devoe => ww_devoe,
	o => \q[7][0]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\q[7][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[7][1]~q\,
	devoe => ww_devoe,
	o => \q[7][1]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\q[7][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[7][2]~q\,
	devoe => ww_devoe,
	o => \q[7][2]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\q[7][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[7][3]~q\,
	devoe => ww_devoe,
	o => \q[7][3]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\q[6][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[6][0]~q\,
	devoe => ww_devoe,
	o => \q[6][0]~output_o\);

-- Location: IOOBUF_X31_Y15_N9
\q[6][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[6][1]~q\,
	devoe => ww_devoe,
	o => \q[6][1]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\q[6][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[6][2]~q\,
	devoe => ww_devoe,
	o => \q[6][2]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\q[6][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[6][3]~q\,
	devoe => ww_devoe,
	o => \q[6][3]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\q[5][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[5][0]~q\,
	devoe => ww_devoe,
	o => \q[5][0]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\q[5][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[5][1]~q\,
	devoe => ww_devoe,
	o => \q[5][1]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\q[5][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[5][2]~q\,
	devoe => ww_devoe,
	o => \q[5][2]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\q[5][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[5][3]~q\,
	devoe => ww_devoe,
	o => \q[5][3]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\q[4][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[4][0]~q\,
	devoe => ww_devoe,
	o => \q[4][0]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\q[4][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[4][1]~q\,
	devoe => ww_devoe,
	o => \q[4][1]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\q[4][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[4][2]~q\,
	devoe => ww_devoe,
	o => \q[4][2]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\q[4][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[4][3]~q\,
	devoe => ww_devoe,
	o => \q[4][3]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\q[3][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[3][0]~q\,
	devoe => ww_devoe,
	o => \q[3][0]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\q[3][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[3][1]~q\,
	devoe => ww_devoe,
	o => \q[3][1]~output_o\);

-- Location: IOOBUF_X31_Y20_N16
\q[3][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[3][2]~q\,
	devoe => ww_devoe,
	o => \q[3][2]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\q[3][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[3][3]~q\,
	devoe => ww_devoe,
	o => \q[3][3]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\q[2][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[2][0]~q\,
	devoe => ww_devoe,
	o => \q[2][0]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\q[2][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[2][1]~q\,
	devoe => ww_devoe,
	o => \q[2][1]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\q[2][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[2][2]~q\,
	devoe => ww_devoe,
	o => \q[2][2]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\q[2][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[2][3]~q\,
	devoe => ww_devoe,
	o => \q[2][3]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\q[1][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[1][0]~q\,
	devoe => ww_devoe,
	o => \q[1][0]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\q[1][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[1][1]~q\,
	devoe => ww_devoe,
	o => \q[1][1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\q[1][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[1][2]~q\,
	devoe => ww_devoe,
	o => \q[1][2]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\q[1][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[1][3]~q\,
	devoe => ww_devoe,
	o => \q[1][3]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\q[0][0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[0][0]~q\,
	devoe => ww_devoe,
	o => \q[0][0]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\q[0][1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[0][1]~q\,
	devoe => ww_devoe,
	o => \q[0][1]~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\q[0][2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[0][2]~q\,
	devoe => ww_devoe,
	o => \q[0][2]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\q[0][3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram[0][3]~q\,
	devoe => ww_devoe,
	o => \q[0][3]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y15_N15
\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X19_Y11_N16
\ram[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[9][0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram[9][0]~feeder_combout\);

-- Location: IOIBUF_X10_Y15_N22
\we~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X10_Y15_N15
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X31_Y11_N22
\addr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X31_Y14_N1
\addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X19_Y11_N24
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\addr[2]~input_o\ & !\addr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[2]~input_o\,
	datac => \addr[1]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\we~input_o\ & (\addr[0]~input_o\ & (\addr[3]~input_o\ & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \addr[0]~input_o\,
	datac => \addr[3]~input_o\,
	datad => \Decoder0~8_combout\,
	combout => \Decoder0~9_combout\);

-- Location: FF_X19_Y11_N17
\ram[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[9][0]~feeder_combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[9][0]~q\);

-- Location: IOIBUF_X31_Y4_N1
\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: FF_X19_Y11_N3
\ram[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[9][1]~q\);

-- Location: IOIBUF_X31_Y4_N22
\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X19_Y11_N5
\ram[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[9][2]~q\);

-- Location: IOIBUF_X31_Y7_N15
\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: FF_X19_Y11_N7
\ram[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[9][3]~q\);

-- Location: LCCOMB_X19_Y11_N0
\ram[8][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[8][0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram[8][0]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N28
\Decoder0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\we~input_o\ & (!\addr[0]~input_o\ & (\addr[3]~input_o\ & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \addr[0]~input_o\,
	datac => \addr[3]~input_o\,
	datad => \Decoder0~8_combout\,
	combout => \Decoder0~10_combout\);

-- Location: FF_X19_Y11_N1
\ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[8][0]~feeder_combout\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[8][0]~q\);

-- Location: FF_X19_Y11_N11
\ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[8][1]~q\);

-- Location: FF_X19_Y11_N21
\ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[8][2]~q\);

-- Location: FF_X19_Y11_N31
\ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[8][3]~q\);

-- Location: LCCOMB_X19_Y11_N22
\Decoder0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\we~input_o\ & (\addr[0]~input_o\ & !\addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \addr[0]~input_o\,
	datac => \addr[3]~input_o\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Decoder0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\addr[2]~input_o\ & (\Decoder0~11_combout\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datac => \Decoder0~11_combout\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~12_combout\);

-- Location: FF_X19_Y18_N17
\ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[7][0]~q\);

-- Location: FF_X19_Y18_N11
\ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[7][1]~q\);

-- Location: LCCOMB_X19_Y18_N12
\ram[7][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[7][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[7][2]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[7][2]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[7][2]~q\);

-- Location: LCCOMB_X19_Y18_N6
\ram[7][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[7][3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram[7][3]~feeder_combout\);

-- Location: FF_X19_Y18_N7
\ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[7][3]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[7][3]~q\);

-- Location: LCCOMB_X19_Y11_N8
\Decoder0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\we~input_o\ & (!\addr[0]~input_o\ & !\addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \addr[0]~input_o\,
	datac => \addr[3]~input_o\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X30_Y13_N24
\Decoder0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\Decoder0~13_combout\ & (\addr[2]~input_o\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datac => \addr[2]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~14_combout\);

-- Location: FF_X30_Y13_N1
\ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[6][0]~q\);

-- Location: FF_X30_Y13_N3
\ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[6][1]~q\);

-- Location: LCCOMB_X30_Y13_N12
\ram[6][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[6][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[6][2]~feeder_combout\);

-- Location: FF_X30_Y13_N13
\ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[6][2]~feeder_combout\,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[6][2]~q\);

-- Location: FF_X30_Y13_N15
\ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[6][3]~q\);

-- Location: LCCOMB_X18_Y4_N0
\ram[5][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[5][0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram[5][0]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N18
\Decoder0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (\Decoder0~11_combout\ & (\addr[2]~input_o\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \addr[2]~input_o\,
	datac => \addr[1]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: FF_X18_Y4_N1
\ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[5][0]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[5][0]~q\);

-- Location: LCCOMB_X18_Y4_N10
\ram[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[5][1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram[5][1]~feeder_combout\);

-- Location: FF_X18_Y4_N11
\ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[5][1]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[5][1]~q\);

-- Location: LCCOMB_X18_Y4_N20
\ram[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[5][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[5][2]~feeder_combout\);

-- Location: FF_X18_Y4_N21
\ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[5][2]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[5][2]~q\);

-- Location: LCCOMB_X18_Y4_N6
\ram[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[5][3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram[5][3]~feeder_combout\);

-- Location: FF_X18_Y4_N7
\ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[5][3]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[5][3]~q\);

-- Location: LCCOMB_X30_Y13_N26
\Decoder0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (\Decoder0~13_combout\ & (\addr[2]~input_o\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datac => \addr[2]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~16_combout\);

-- Location: FF_X30_Y13_N17
\ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[4][0]~q\);

-- Location: FF_X30_Y13_N11
\ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[4][1]~q\);

-- Location: LCCOMB_X30_Y13_N28
\ram[4][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[4][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[4][2]~feeder_combout\);

-- Location: FF_X30_Y13_N29
\ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[4][2]~feeder_combout\,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[4][2]~q\);

-- Location: FF_X30_Y13_N31
\ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[4][3]~q\);

-- Location: LCCOMB_X30_Y13_N4
\Decoder0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (\Decoder0~11_combout\ & (!\addr[2]~input_o\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~11_combout\,
	datac => \addr[2]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~17_combout\);

-- Location: FF_X30_Y20_N17
\ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[3][0]~q\);

-- Location: FF_X30_Y20_N3
\ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[3][1]~q\);

-- Location: FF_X30_Y20_N13
\ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[3][2]~q\);

-- Location: FF_X30_Y20_N23
\ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[3][3]~q\);

-- Location: LCCOMB_X20_Y12_N24
\Decoder0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (\Decoder0~13_combout\ & (!\addr[2]~input_o\ & \addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datab => \addr[2]~input_o\,
	datac => \addr[1]~input_o\,
	combout => \Decoder0~18_combout\);

-- Location: FF_X19_Y18_N25
\ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[2][0]~q\);

-- Location: FF_X19_Y18_N3
\ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[2][1]~q\);

-- Location: LCCOMB_X19_Y18_N4
\ram[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[2][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[2][2]~feeder_combout\);

-- Location: FF_X19_Y18_N5
\ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[2][2]~feeder_combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[2][2]~q\);

-- Location: LCCOMB_X19_Y18_N22
\ram[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[2][3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram[2][3]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[2][3]~feeder_combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[2][3]~q\);

-- Location: LCCOMB_X18_Y4_N8
\ram[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[1][0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram[1][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N2
\Decoder0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (!\addr[2]~input_o\ & (\Decoder0~11_combout\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datac => \Decoder0~11_combout\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~19_combout\);

-- Location: FF_X18_Y4_N9
\ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[1][0]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[1][0]~q\);

-- Location: LCCOMB_X18_Y4_N18
\ram[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[1][1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram[1][1]~feeder_combout\);

-- Location: FF_X18_Y4_N19
\ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[1][1]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[1][1]~q\);

-- Location: LCCOMB_X18_Y4_N12
\ram[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[1][2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \ram[1][2]~feeder_combout\);

-- Location: FF_X18_Y4_N13
\ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[1][2]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[1][2]~q\);

-- Location: LCCOMB_X18_Y4_N30
\ram[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram[1][3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram[1][3]~feeder_combout\);

-- Location: FF_X18_Y4_N31
\ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram[1][3]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[1][3]~q\);

-- Location: LCCOMB_X30_Y13_N22
\Decoder0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (\Decoder0~13_combout\ & (!\addr[2]~input_o\ & !\addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datac => \addr[2]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Decoder0~20_combout\);

-- Location: FF_X30_Y20_N1
\ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[0][0]~q\);

-- Location: FF_X30_Y20_N19
\ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[0][1]~q\);

-- Location: FF_X30_Y20_N5
\ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[0][2]~q\);

-- Location: FF_X30_Y20_N31
\ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram[0][3]~q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_q(9)(0) <= \q[9][0]~output_o\;

ww_q(9)(1) <= \q[9][1]~output_o\;

ww_q(9)(2) <= \q[9][2]~output_o\;

ww_q(9)(3) <= \q[9][3]~output_o\;

ww_q(8)(0) <= \q[8][0]~output_o\;

ww_q(8)(1) <= \q[8][1]~output_o\;

ww_q(8)(2) <= \q[8][2]~output_o\;

ww_q(8)(3) <= \q[8][3]~output_o\;

ww_q(7)(0) <= \q[7][0]~output_o\;

ww_q(7)(1) <= \q[7][1]~output_o\;

ww_q(7)(2) <= \q[7][2]~output_o\;

ww_q(7)(3) <= \q[7][3]~output_o\;

ww_q(6)(0) <= \q[6][0]~output_o\;

ww_q(6)(1) <= \q[6][1]~output_o\;

ww_q(6)(2) <= \q[6][2]~output_o\;

ww_q(6)(3) <= \q[6][3]~output_o\;

ww_q(5)(0) <= \q[5][0]~output_o\;

ww_q(5)(1) <= \q[5][1]~output_o\;

ww_q(5)(2) <= \q[5][2]~output_o\;

ww_q(5)(3) <= \q[5][3]~output_o\;

ww_q(4)(0) <= \q[4][0]~output_o\;

ww_q(4)(1) <= \q[4][1]~output_o\;

ww_q(4)(2) <= \q[4][2]~output_o\;

ww_q(4)(3) <= \q[4][3]~output_o\;

ww_q(3)(0) <= \q[3][0]~output_o\;

ww_q(3)(1) <= \q[3][1]~output_o\;

ww_q(3)(2) <= \q[3][2]~output_o\;

ww_q(3)(3) <= \q[3][3]~output_o\;

ww_q(2)(0) <= \q[2][0]~output_o\;

ww_q(2)(1) <= \q[2][1]~output_o\;

ww_q(2)(2) <= \q[2][2]~output_o\;

ww_q(2)(3) <= \q[2][3]~output_o\;

ww_q(1)(0) <= \q[1][0]~output_o\;

ww_q(1)(1) <= \q[1][1]~output_o\;

ww_q(1)(2) <= \q[1][2]~output_o\;

ww_q(1)(3) <= \q[1][3]~output_o\;

ww_q(0)(0) <= \q[0][0]~output_o\;

ww_q(0)(1) <= \q[0][1]~output_o\;

ww_q(0)(2) <= \q[0][2]~output_o\;

ww_q(0)(3) <= \q[0][3]~output_o\;
END structure;


