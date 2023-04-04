library verilog;
use verilog.vl_types.all;
entity bcd is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        clock           : in     vl_logic;
        clr             : in     vl_logic
    );
end bcd;
