----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sauvens Fleurinord
-- 
-- Create Date: 02/01/2021 11:53:51 AM
-- Design Name: LUT_Primitive
-- Module Name: LUT_primitive - primitive
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

Library UNISIM;
use UNISIM.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_primitive is
    Port ( X : in STD_LOGIC_VECTOR (1 downto 0);
           Y : in STD_LOGIC_VECTOR (1 downto 0);
           Z : out STD_LOGIC);
end LUT_primitive;

architecture primitive of LUT_primitive is

begin
   LUT4_inst : LUT4
   generic map (
      INIT => X"8421")
   port map (
      O => Z,   -- LUT general output
      I0 => X(0), -- LUT input
      I1 => X(1), -- LUT input
      I2 => Y(0), -- LUT input
      I3 => Y(1)  -- LUT input
   );
 
 


end primitive;

