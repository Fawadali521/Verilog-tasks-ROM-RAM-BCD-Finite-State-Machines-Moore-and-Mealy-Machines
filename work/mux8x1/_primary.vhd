library verilog;
use verilog.vl_types.all;
entity mux8x1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        e               : in     vl_logic;
        f               : in     vl_logic;
        g               : in     vl_logic;
        h               : in     vl_logic;
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        sel3            : in     vl_logic;
        z               : out    vl_logic
    );
end mux8x1;
