library verilog;
use verilog.vl_types.all;
entity light_switch is
    generic(
        s0              : integer := 0;
        s1              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic;
        pulse           : out    vl_logic
    );
end light_switch;
