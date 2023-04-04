library verilog;
use verilog.vl_types.all;
entity synchron is
    port(
        \in\            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        synin           : out    vl_logic
    );
end synchron;
