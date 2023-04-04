library verilog;
use verilog.vl_types.all;
entity moore_lock is
    generic(
        a               : integer := 0;
        b               : integer := 1;
        c               : integer := 2;
        d               : integer := 3
    );
    port(
        \in\            : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        openlock        : out    vl_logic;
        alarm           : out    vl_logic
    );
end moore_lock;
