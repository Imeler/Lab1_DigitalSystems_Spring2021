----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2021 09:20:43 PM
-- Design Name: 
-- Module Name: Seven_Segment_Decoder - Behavioral
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

entity Seven_Segment_Decoder is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           segment_display : out STD_LOGIC_VECTOR (6 downto 0));
end Seven_Segment_Decoder;

architecture Behavioral of Seven_Segment_Decoder is

begin


end Behavioral;
