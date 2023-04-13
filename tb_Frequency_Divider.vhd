library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_Frequency_Divider is
end entity tb_Frequency_Divider;

architecture behavior of tb_Frequency_Divider is  
component Frequency_Divider is
    port( 
        clk_in , reset		:in std_logic;	
		clk_out	            :out std_logic
			); 
end component; 
    
signal  clk_in_tb, reset_tb : std_logic; 
signal  clk_out_tb : std_logic; 

begin
   uut: Frequency_Divider PORT MAP (  clk_in=> clk_in_tb, reset=>reset_tb, clk_out=>clk_out_tb);
   
   reset_tb<='1', '0' after 10 ns;
   clock_gen: process
   constant period : time := 10 ns;
   begin
    clk_in_tb <= '0';
     wait for period/2;
    clk_in_tb <= '1';
     wait for period/2;
   end process;

end behavior;