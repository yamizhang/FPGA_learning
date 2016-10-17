library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity spi_pro is
port(	clk:in std_logic;
		clk_in:in std_logic;
		mosi:in std_logic;
		miso:out std_logic;
		cs:in std_logic;
		com:out std_logic_vector(3 downto 0);
		seg:out std_logic_vector(7 downto 0));
end spi_pro;

architecture behave of spi_pro is

component rx_part port(	clk:in std_logic;
								cs:in std_logic;
								mosi:in std_logic;
								rx_data:out std_logic_vector(15 downto 0));
end component;

component tx_part port(	clk:in std_logic;
								cs:in std_logic;
								miso:out std_logic
								);
end component;

component show_part  port(	clk_in:std_logic;
									show_data:in std_logic_vector(15 downto 0);
									com:out std_logic_vector(3 downto 0);
									seg:out std_logic_vector(7 downto 0));
end component;

signal data_rtos:std_logic_vector(15 downto 0);

begin 

RX_TOP:rx_part	port map(clk=>clk,
										cs=>cs,
										mosi=>mosi,
										rx_data=>data_rtos
										);
										
TX_TOP:tx_part port map(clk=>clk,
										cs=>cs,
										miso=>miso
										);
										
SHOW_TOP:show_part port map(clk_in=>clk_in,
											show_data=>data_rtos,
											com=>com,
											seg=>seg
											);
											
end behave;
