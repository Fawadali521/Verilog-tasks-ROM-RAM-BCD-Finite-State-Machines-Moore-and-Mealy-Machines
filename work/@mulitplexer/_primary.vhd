library verilog;
use verilog.vl_types.all;
entity mulitplexer is
    port(
        d0              : in     vl_logic_vector(7 downto 0);
        d1              : in     vl_logic_vector(7 downto 0);
        d2              : in     vl_logic_vector(7 downto 0);
        d3              : in     vl_logic_vector(7 downto 0);
        d4              : in     vl_logic_vector(7 downto 0);
        d5              : in     vl_logic_vector(7 downto 0);
        d6              : in     vl_logic_vector(7 downto 0);
        d7              : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end mulitplexer;
