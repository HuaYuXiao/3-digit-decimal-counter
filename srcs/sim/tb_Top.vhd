library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all; 
 
entity tb_decimal_counter is 
end tb_decimal_counter; 

architecture behavior of tb_decimal_counter is  
component New_Decimal_Counter 
  port (clk_sys, reset_global, load:  in std_logic;
         d1_in,  d10_in,       d100_in:  in  std_logic_vector(3 downto 0);
         d1_out, d10_out,      d100_out: out std_logic_vector(3 downto 0));
end component; 
    
signal clk_sys_tb, reset_global_tb, load_tb :              std_logic;
signal d1_in_tb,   d10_in_tb,       d100_in_tb:            std_logic_vector(3 downto 0);
signal d1_out_tb,  d10_out_tb,      d100_out_tb:           std_logic_vector(3 downto 0);

begin
   uut: New_Decimal_Counter PORT MAP ( clk_sys=>clk_sys_tb, reset_global=>reset_global_tb, load=>load_tb,
                                       d1_in=>d1_in_tb,     d10_in=>d10_in_tb,             d100_in=>d100_in_tb,
                                       d1_out=> d1_out_tb,  d10_out=> d10_out_tb,          d100_out=> d100_out_tb
                                      );
   reset_global_tb<='1','0' after 10 ns;
   load_tb<='1';
   d1_in_tb<=X"1";   d10_in_tb<=X"1";  d100_in_tb<=X"1";
   clock_gen: process
   constant period : time := 10 ns;
   begin
     clk_sys_tb <= '0';
     wait for period/2;
     clk_sys_tb <= '1';
     wait for period/2;
   end process;

end behavior;
