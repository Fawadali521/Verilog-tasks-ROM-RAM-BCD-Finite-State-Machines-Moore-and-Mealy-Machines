library verilog;
use verilog.vl_types.all;
entity level_to_pulse is
    generic(
        s0              : integer := 0;
        s1              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        synin           : in     vl_logic;
        \out\           : out    vl_logic
    );
end level_to_pulse;
