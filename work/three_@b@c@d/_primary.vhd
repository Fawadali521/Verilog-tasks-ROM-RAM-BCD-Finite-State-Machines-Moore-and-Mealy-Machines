library verilog;
use verilog.vl_types.all;
entity three_bcd is
    port(
        bcdu            : out    vl_logic_vector(3 downto 0);
        bcdt            : out    vl_logic_vector(3 downto 0);
        bcdh            : out    vl_logic_vector(3 downto 0);
        clock           : in     vl_logic;
        clr             : in     vl_logic
    );
end three_bcd;
