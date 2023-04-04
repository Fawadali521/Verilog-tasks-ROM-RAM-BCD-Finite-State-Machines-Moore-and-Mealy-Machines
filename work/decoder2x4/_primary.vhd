library verilog;
use verilog.vl_types.all;
entity decoder2x4 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        f1              : out    vl_logic;
        f2              : out    vl_logic;
        f3              : out    vl_logic;
        f4              : out    vl_logic;
        f5              : out    vl_logic;
        f6              : out    vl_logic;
        f7              : out    vl_logic;
        f8              : out    vl_logic
    );
end decoder2x4;
