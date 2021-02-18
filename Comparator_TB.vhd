----------------------------------------------------------------------------------
-- Company: FAU
-- Engineer: Sauvens Fleurinord 
-- 
-- Create Date: 02/01/2021 11:17:27 AM
-- Design Name: Test Bench for Comparator
-- Module Name: Comparator_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.std_logic_arith.all;
-- Entity  Declaration
entity  comparator_tb  is
--Notice  that in  testbenches , no  inputs  and  outputs
end  comparator_tb;

-- Behavioral  Architecture
architecture  behavioral  of  comparator_tb  is
-- Component  Declaration
component  comparator_top  port(
X_in , Y_in : in   std_logic_vector (1  downto  0);
Z_out :       out  std_logic_vector (3  downto  0));
end  component;-- Signals  are  used  instead  of  inputs  and  outputs

signal  X_in ,Y_in : std_logic_vector (1  downto  0);
signal  Z_out : std_logic_vector (3  downto  0);

begin
-- Component  Instantiation
-- UUT means unit under testing

uut: Comparator_Top  PORT  MAP(
X_in => X_in ,
Y_in => Y_in ,
Z_out => Z_out
);


--   Test  Bench  Statements
tb : process
begin
 for i in 0 to 3 loop
 for j in 0 to 3 loop
    X_in  <= conv_std_logic_vector(i,2);
    Y_in  <= conv_std_logic_vector(j,2);
    wait  for  100 ns;
 end  loop;
 end  loop;

end  process tb;
end  behavioral;






