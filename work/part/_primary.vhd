library verilog;
use verilog.vl_types.all;
entity part is
    port(
        x               : out    vl_logic;
        o               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic
    );
end part;
