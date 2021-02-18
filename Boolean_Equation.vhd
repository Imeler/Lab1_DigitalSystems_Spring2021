----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sauvens Fleurinord
-- 
-- Create Date: 02/01/2021 09:18:43 AM
-- Design Name: Boolean_Equation
-- Module Name: Boolean_Equation - Dataflow
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

entity Boolean_Equation is
    Port ( X : in STD_LOGIC_VECTOR (1 downto 0);
           Y : in STD_LOGIC_VECTOR (1 downto 0);
           Z : out STD_LOGIC);
end Boolean_Equation;

architecture  dataflow  of  boolean_equation  is

signal  temp : std_logic_vector (3  downto  0);
begin
    temp (3)<= (not X(1)  and  not X(0)  and  not Y(1)  and  not Y(0));
    temp (2)<= (not X(1)  and      X(0)  and  not Y(1)  and      Y(0));
    temp (1)<= (     X(1)  and  not X(0)  and      Y(1)  and  not Y(0));
    temp (0)<= (     X(1)  and      X(0)  and      Y(1)  and      Y(0));
    Z  <= temp (3) or temp (2) or temp (1) or temp (0);
    end  dataflow;

