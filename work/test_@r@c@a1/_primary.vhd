library verilog;
use verilog.vl_types.all;
entity test_rca1 is
    port(
        co              : in     vl_logic;
        su              : in     vl_logic_vector(3 downto 0);
        a               : out    vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0)
    );
end test_rca1;
