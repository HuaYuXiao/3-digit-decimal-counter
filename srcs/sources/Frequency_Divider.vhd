library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity frequency_divider is
	port(
		clk_in , reset		:in std_logic;	
		clk_out	    :out std_logic	
		);
end frequency_divider;
 
architecture behavior of frequency_divider is
signal counter: std_logic_vector(26 downto 0);
begin
	process(clk_in, reset) is
	begin
		if reset = '1' then	
		    -- clk_out<='0';
		    -- counter <="0000000000000000000000000	;
		     counter <="000000000000000000000000000"	;
		elsif( clk_in 'event and clk_in='1') then
		-- if counter = "1001 1000 1001 0110 1000 0000" then
		     if counter = "101111101011110000100000000" then
--			 if counter = 500000  then
                  clk_out <='1';
                  -- counter <="000000000000000000000000000"; 
			      counter <="000000000000000000000000000"; 
		       else
		      counter<=counter + '1';
		      clk_out<='0';
		      end if;
		  end if; 
	end process;
	end architecture behavior; 
		
