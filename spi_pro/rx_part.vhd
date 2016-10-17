library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rx_part is
port(	clk:in std_logic;
		cs:in std_logic;
		mosi:in std_logic;
		rx_data:out std_logic_vector(15 downto 0));
end rx_part;

architecture behave of rx_part is
signal data_rx:std_logic_vector(15 downto 0);
begin
	process(clk,cs)
	
	variable a:integer range 0 to 17:=0;
	begin
	if(cs='1')then
		if(clk'event and clk='1')then
			case a is
				when 0=>data_rx(15)<=mosi;
				when 1=>data_rx(14)<=mosi;
				when 2=>data_rx(13)<=mosi;
				when 3=>data_rx(12)<=mosi;
				when 4=>data_rx(11)<=mosi;
				when 5=>data_rx(10)<=mosi;
				when 6=>data_rx(9)<=mosi;
				when 7=>data_rx(8)<=mosi;			
				when 8=>data_rx(7)<=mosi;
				when 9=>data_rx(6)<=mosi;
				when 10=>data_rx(5)<=mosi;
				when 11=>data_rx(4)<=mosi;	
				when 12=>data_rx(3)<=mosi;
				when 13=>data_rx(2)<=mosi;
				when 14=>data_rx(1)<=mosi;
				when 15=>data_rx(0)<=mosi;	rx_data<=data_rx;
				when others=>null;
			end case;

			if(a=15)then
				a:=0;
			else 
				a:=a+1;
			end if;
		end if;
	else 
		a:=0;
	end if;
end process;
			
end behave;			
			
			
