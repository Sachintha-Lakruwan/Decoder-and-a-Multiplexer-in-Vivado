----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2024 11:59:01 AM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TBDecoder3to8 is
-- Port ( );
end TBDecoder3to8;

architecture Behavioral of TBDecoder3to8 is
component Decoder_3_to_8


Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
   EN : in STD_LOGIC;
   Y : out STD_LOGIC_VECTOR (7 downto 0));

end component;

SIGNAL EN : std_logic;
SIGNAL I : std_logic_vector(2 downto 0);
SIGNAL Y : std_logic_vector(7 downto 0);

begin

   UUT: Decoder_3_to_8 PORT MAP(
   I => I,
   EN => EN,
   Y => Y
   );

   process
   begin

   EN <= '1';
   I(0) <= '0';
   I(1) <= '0';
   I(2) <= '0';
   WAIT FOR 100ns;
   I(1) <= '1';
   I(2) <= '1';
   WAIT FOR 100ns;
   I(0) <= '1';
   I(2) <= '0';
   WAIT FOR 100ns;
   I(1) <= '0';
   I(2) <= '1';
   WAIT FOR 100ns;
   I(1) <= '1';
   I(2) <= '0';
   WAIT FOR 100ns;
   I(0) <= '0';
   I(1) <= '0';
   I(2) <= '0';
   EN <= '0';
   WAIT;
   end process;
end Behavioral;
