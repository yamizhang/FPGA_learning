library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity show_part is
port(	clk_in:std_logic;
		show_data:in std_logic_vector(15 downto 0);
		com:out std_logic_vector(3 downto 0);
		seg:out std_logic_vector(7 downto 0));
end show_part;

architecture behave of show_part is
signal show_num: std_logic_vector(3 downto 0):="0000";
signal clk1:std_logic:='0';

begin 

process(clk_in)
variable count:integer range 0 to 49999999;
	begin
	if(clk_in'event and clk_in='1')then
		if(count>4800)then
			count:=0;
			clk1<=not clk1;
		else 
			count:=count+1;
		end if;
	end if;
end process;

process(clk1)
variable b:integer range 0 to 5;
	begin 
	if(clk1'event and clk1='1')then
		if(b=4)then
			b:=0;
		else 
			b:=b+1;
		end if;
		case b is
			when 1=>show_num<=show_data(3 downto 0);com<="0001";
			when 2=>show_num<=show_data(7 downto 4);com<="0010";
			when 3=>show_num<=show_data(11 downto 8);com<="0100";
			when 4=>show_num<=show_data(15 downto 12);com<="1000";
			when others=>null;
		end case;
	end if;
end process;

process(show_num,clk_in)
	begin
	--if(clk_in'event and clk_in='1')then
		case show_num is
		when "0000"=>seg<="00111111";
		when "0001"=>seg<="00000110";
		when "0010"=>seg<="01011011";
		when "0011"=>seg<="01001111";		
		when "0100"=>seg<="01100110";
		when "0101"=>seg<="01101101";
		when "0110"=>seg<="01111101";	
		when "0111"=>seg<="00000111";	
		when "1000"=>seg<="01111111";
		when "1001"=>seg<="01101111";
		when "1010"=>seg<="01110111";
		when "1011"=>seg<="01111100";	
		when "1100"=>seg<="00111001";	
		when "1101"=>seg<="01011110";
		when "1110"=>seg<="01111001";
		when "1111"=>seg<="01110001";
		when others=>null;		
		end case;
	--end if;
	end process;
	
end behave;
	
			
