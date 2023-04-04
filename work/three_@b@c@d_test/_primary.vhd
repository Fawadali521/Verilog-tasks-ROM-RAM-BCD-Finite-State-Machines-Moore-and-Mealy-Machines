library verilog;
use verilog.vl_types.all;
entity three_bcd_test is
    port(
        bcdu            : in     vl_logic_vector(3 downto 0);
        bcdt            : in     vl_logic_vector(3 downto 0);
        bcdh            : in     vl_logic_vector(3 downto 0);
        clock           : out    vl_logic;
        clr             : out    vl_logic
    );
end three_bcd_test;
