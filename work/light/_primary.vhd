library verilog;
use verilog.vl_types.all;
entity light is
    generic(
        s1              : integer := 0;
        s2              : integer := 1;
        s3              : integer := 2;
        red             : integer := 4;
        green           : integer := 2;
        yellow          : integer := 1
    );
    port(
        clk             : in     vl_logic;
        light           : out    vl_logic_vector(2 downto 0)
    );
end light;
