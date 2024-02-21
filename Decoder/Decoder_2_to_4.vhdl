----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2024 02:43:25 PM
-- Design Name:
-- Module Name: Decoder2to_4 - Behavioral
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
use IEEE.STDLOGIC1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder2to_4 is
Port ( I : in STD*LOGIC*VECTOR (1 downto 0);
       EN : in STD_LOGIC;
       Y : out STD*LOGIC*VECTOR (3 downto 0));
end Decoder2to_4;

architecture Behavioral of Decoder2to_4 is
begin
    Y(0) <= EN AND I(0) AND I(1);
    Y(1) <= EN AND (NOT I(0)) AND I(1);
    Y(2) <= EN AND I(0) AND (NOT I(1));
    Y(3) <= EN AND (NOT I(0)) AND (NOT I(1));
end Behavioral;