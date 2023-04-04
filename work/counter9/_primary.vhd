library verilog;
use verilog.vl_types.all;
entity counter9 is
    port(
        count7seg       : out    vl_logic_vector(6 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        en              : out    vl_logic
    );
end counter9;
