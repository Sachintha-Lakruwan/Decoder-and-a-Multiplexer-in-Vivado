----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/20/2024 02:58:47 PM
-- Design Name:
-- Module Name: TBDecoder2to_4 - Behavioral
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

entity TBDecoder2to_4 is
-- Port ( );
end TBDecoder2to_4;

architecture Behavioral of TBDecoder2to_4 is
COMPONENT Decoder2to_4
Port ( I : in STDLOGICVECTOR (1 downto 0);
   EN : in STD_LOGIC;
   Y : out STD*LOGIC*VECTOR (3 downto 0));
END COMPONENT;

SIGNAL EN : std_logic;

SIGNAL Y : stdlogicvector(3 downto 0);
SIGNAL I : stdlogicvector(1 downto 0);

begin
UUT: Decoder2to_4 PORT MAP(
I => I,
EN => EN,
Y => Y
);

process
begin
EN <= '0';
I(0) <= '1';
I(1) <= '0';
WAIT FOR 100ns;
EN <= '1';
I(0) <= '0';
I(1) <= '0';
WAIT FOR 100ns;
I(0) <= '1';
I(1) <= '0';
WAIT FOR 100ns;
I(0) <= '0';
I(1) <= '1';
WAIT FOR 100ns;
I(0) <= '1';
WAIT FOR 100ns;
I(0) <= '0';
I(1) <= '0';
EN <= '0';
WAIT;
end process;

end Behavioral;