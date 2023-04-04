library verilog;
use verilog.vl_types.all;
entity led is
    port(
        \in\            : in     vl_logic_vector(0 to 7);
        \out\           : out    vl_logic_vector(0 to 7)
    );
end led;
