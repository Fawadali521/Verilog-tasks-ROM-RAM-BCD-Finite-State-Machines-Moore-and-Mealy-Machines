library verilog;
use verilog.vl_types.all;
entity mux21 is
    port(
        \OUT\           : out    vl_logic;
        i               : in     vl_logic_vector(0 to 1);
        sel             : in     vl_logic
    );
end mux21;
