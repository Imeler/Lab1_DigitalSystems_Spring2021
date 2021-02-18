----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sauvens Fleurinord
-- 
-- Create Date: 02/01/2021 09:02:28 AM
-- Design Name: If_Then_Else
-- Module Name: Comparator_Top - Behavioral
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
--USE IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity If_Then_Else is
    Port ( X : in STD_LOGIC_VECTOR (1 downto 0);
           Y : in STD_LOGIC_VECTOR (1 downto 0);
           Z : out STD_LOGIC);
end If_Then_Else;

architecture Behavioral of If_Then_Else is

begin
    P1 :    process (X, Y)
    
    begin
        if (X = y) THEN
            Z <= '1';
        else
            Z <= '0';
        end if;
     
     end process;
    
    

end Behavioral;
