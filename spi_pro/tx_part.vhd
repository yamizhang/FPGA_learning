library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tx_part is
port(	clk:in std_logic;
		cs:in std_logic;
		miso:out std_logic);
end tx_part;

architecture behave of tx_part is
--signal data_tx:std_logic_vector(15 downto 0);--8080
begin
	process(clk,cs)
	variable a:integer range 0 to 20;
	variable data_tx:std_logic_vector(15 downto 0);--8080
	begin	
	data_tx:="0110000101100011";
	--miso<=data_tx(15);
	
	if(cs='1')then
		if(clk'event and clk='0')then
			case a is
				when 0=>miso<=data_tx(15);
				when 1=>miso<=data_tx(14);
				when 2=>miso<=data_tx(13);
				when 3=>miso<=data_tx(12);
				when 4=>miso<=data_tx(11);
				when 5=>miso<=data_tx(10);
				when 6=>miso<=data_tx(9);
				when 7=>miso<=data_tx(8);			
				when 8=>miso<=data_tx(7);
				when 9=>miso<=data_tx(6);
				when 10=>miso<=data_tx(5);
				when 11=>miso<=data_tx(4);	
				when 12=>miso<=data_tx(3);
				when 13=>miso<=data_tx(2);
				when 14=>miso<=data_tx(1);
				when 15=>miso<=data_tx(0);
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