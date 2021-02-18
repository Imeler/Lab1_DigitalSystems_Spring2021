----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sauvens Fleurinord 
-- 
-- Create Date: 02/01/2021 10:46:59 AM
-- Design Name: Comparator_Top
-- Module Name: Comparator_Top - Structural
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator_Top is
    Port ( X_in : in STD_LOGIC_VECTOR (1 downto 0);
           Y_in : in STD_LOGIC_VECTOR (1 downto 0);
           Z_out : out STD_LOGIC_VECTOR (3 downto 0));
end Comparator_Top;

-- Structural  Architecture
architecture  structural  of  comparator_top  is
-- Component  Declarations
component  if_then_else  is
port( X,Y : in  std_logic_vector (1  downto  0);
Z : out  std_logic );
end  component;

-- Calling When Else module
component  When_Else  is
port( X,Y : in  std_logic_vector (1  downto  0);
Z : out  std_logic );
end  component;

-- Calling boolean_equation module
component  boolean_equation  is port( X,Y : in  std_logic_vector (1  downto  0);
Z : out  std_logic );
end  component;

-- Calling LUT_primitive module
component  LUT_primitive  is port( X,Y : in  std_logic_vector (1  downto  0);
Z : out  std_logic );
end  component;

begin
-- Component  Port  Maps
if_then_else0 : if_then_else  port  map(
X => X_in ,
Y => Y_in ,
Z => Z_out (3));
when_else0 : When_Else  port  map(
X => X_in ,
Y => Y_in ,
Z => Z_out (2));
boolean_equation0 : boolean_equation  port  map(
X => X_in ,
Y => Y_in ,
Z => Z_out (1));
LUT_primitive0 : LUT_primitive  port  map(
X => X_in ,
Y => Y_in ,
Z => Z_out (0));
end  structural;













