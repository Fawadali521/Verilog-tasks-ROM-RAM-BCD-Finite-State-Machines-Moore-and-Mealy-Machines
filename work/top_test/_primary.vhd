library verilog;
use verilog.vl_types.all;
entity top_test is
    port(
        clk             : out    vl_logic;
        clr             : out    vl_logic;
        q               : in     vl_logic_vector(3 downto 0)
    );
end top_test;
