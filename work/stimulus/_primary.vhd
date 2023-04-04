library verilog;
use verilog.vl_types.all;
entity stimulus is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        clk             : out    vl_logic;
        rst             : out    vl_logic
    );
end stimulus;
