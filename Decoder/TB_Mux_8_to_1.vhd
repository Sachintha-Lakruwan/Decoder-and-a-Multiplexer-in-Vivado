----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 03:43:43 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1
 Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
 D : in STD_LOGIC_VECTOR (7 downto 0);
 EN : in STD_LOGIC;
 Y : out STD_LOGIC);
END COMPONENT;

SIGNAL S : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL D : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL EN : STD_LOGIC;
SIGNAL Y : STD_LOGIC;

begin
UTT: Mux_8_to_1 PORT MAP(
 S => S,
 D => D,
 EN => EN,
 Y => Y
);
PROCESS
BEGIN
    EN <='1';
    S <="000";
    D <= "01100001";
    WAIT FOR 100 ns;
    
    S <="011";
    D <= "01000010";
    WAIT FOR 100 ns;
    
    S <="110";
    D <= "10000100";
    WAIT FOR 100 ns;
        
    S <="101";
    D <= "01001000";
    WAIT FOR 100 ns;
    
    S <="110";
    D <= "00110000";
    WAIT FOR 100 ns;
    
    EN <='0';
    WAIT;
    
END PROCESS;

end Behavioral;