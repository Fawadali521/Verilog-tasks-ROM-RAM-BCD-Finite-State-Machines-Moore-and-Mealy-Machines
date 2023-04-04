library verilog;
use verilog.vl_types.all;
entity combine_test is
    port(
        clk             : out    vl_logic;
        reset           : out    vl_logic;
        out_data        : in     vl_logic_vector(15 downto 0)
    );
end combine_test;
