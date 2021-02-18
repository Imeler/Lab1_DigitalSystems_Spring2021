----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sauvens Fleurinord
-- 
-- Create Date: 02/01/2021 09:14:27 AM
-- Design Name: When_Else
-- Module Name: When_Else - Dataflow
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

entity When_Else is
    Port ( X : in STD_LOGIC_VECTOR (1 downto 0);
           Y : in STD_LOGIC_VECTOR (1 downto 0);
           Z : out STD_LOGIC);
end When_Else;

architecture Dataflow of When_Else is

begin

Z <= '1' WHEN (X = Y) ELSE '0';

end Dataflow;
