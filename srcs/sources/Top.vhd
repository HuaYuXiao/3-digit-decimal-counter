library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity New_Decimal_Counter is
  port (clk_sys,reset_global,load:  in std_logic;
         d1_in,  d10_in,  d100_in:  in  std_logic_vector(3 downto 0);
         d1_out, d10_out, d100_out: out std_logic_vector(3 downto 0));
end entity New_Decimal_Counter;

architecture structure of New_Decimal_Counter is 

component frequency_divider is
    port (
          clk_in , reset: in std_logic;
          clk_out: out std_logic);  
end component frequency_divider;

component decimal_counter is 
   port (CLK, reset_dec, load_dec:               in std_logic;
          d1_in_dec,  d10_in_dec,  d100_in_dec:  in  std_logic_vector(3 downto 0);
          d1_out_dec, d10_out_dec, d100_out_dec: out std_logic_vector(3 downto 0)
          );
end component decimal_counter;

signal clk_1 : std_logic;

begin
  --clk_1<='1';
  frequencydivider: frequency_divider port map (clk_in=>clk_sys, reset=>reset_global, clk_out=>clk_1);
  decimalcounter: decimal_counter port map(
       CLK=>clk_1, reset_dec=>reset_global, load_dec=>load,
       d1_in_dec=>d1_in, d10_in_dec=>d10_in, d100_in_dec=>d100_in,
       d1_out_dec=>d1_out, d10_out_dec=>d10_out, d100_out_dec=>d100_out);
end STRUCTURE;

