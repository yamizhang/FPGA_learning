library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.std_logic_unsigned.all;

entity KEY_LED is
port(	clk:in std_logic;
		com:out std_logic_vector(3 downto 0);
		seg:out std_logic_vector(7 downto 0);
		keyin : in  STD_LOGIC_VECTOR (3 downto 0); 
		keydrv : out  STD_LOGIC_VECTOR(3 downto 0)); 
end KEY_LED;

architecture behave of KEY_LED is

component  keyboard
Port ( clk : in  STD_LOGIC;  --扫描时钟，周期10ms 
       keyin : in  STD_LOGIC_VECTOR (3 downto 0); 
		 keydrv : out  STD_LOGIC_VECTOR(3 downto 0);   
		 keyvalue : out  STD_LOGIC_VECTOR(4 downto 0)
); 
--输出扫描信号 
end component; 

component show_part  port(	clk_in:std_logic;
									show_data:in std_logic_vector(4 downto 0);
									com:out std_logic_vector(3 downto 0);
									seg:out std_logic_vector(7 downto 0));
end component;


signal data_rtos:std_logic_vector(4 downto 0);

begin 

KEY_TOP:keyboard	port map(clk=>clk,
										keyin=>keyin,
										keydrv=>keydrv,
										keyvalue=>data_rtos
										);
										
										
SHOW_TOP:show_part port map(clk_in=>clk,
											show_data=>data_rtos,
											com=>com,
											seg=>seg
											);
											
end behave;