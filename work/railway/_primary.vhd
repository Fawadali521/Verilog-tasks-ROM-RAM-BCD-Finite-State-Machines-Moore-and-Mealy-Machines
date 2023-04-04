library verilog;
use verilog.vl_types.all;
entity railway is
    generic(
        red             : integer := 4;
        green           : integer := 1;
        yellow          : integer := 2;
        s0              : integer := 0;
        s1              : integer := 1;
        s2              : integer := 2;
        s3              : integer := 3
    );
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        rail_detect     : in     vl_logic;
        gate            : out    vl_logic_vector(1 downto 0);
        light           : out    vl_logic_vector(2 downto 0);
        state           : out    vl_logic_vector(1 downto 0)
    );
end railway;
