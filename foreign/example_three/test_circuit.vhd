library IEEE;
use IEEE.std_logic_1164.all;

entity testbed is
end testbed;

architecture test_xcvr of testbed is

    component transceiver
        port ( a: inout std_logic_vector(7 downto 0);
               b: inout std_logic_vector(7 downto 0);
               dir: in std_logic;
               oe:  in std_logic
             );
    end component;

    component tester
        port ( portDIR: out std_logic;
               portOE:  out std_logic;
               portA: inout std_logic_vector(7 downto 0);
               portB: inout std_logic_vector(7 downto 0)
             );
    end component;

    signal busA, busB: std_logic_vector(7 downto 0);
    signal tDIR, tOE: std_logic;

begin

    uut: transceiver port map ( busA, busB, tDIR, tOE );

    drv: tester port map ( tDIR, tOE, busA, busB );

end test_xcvr;
