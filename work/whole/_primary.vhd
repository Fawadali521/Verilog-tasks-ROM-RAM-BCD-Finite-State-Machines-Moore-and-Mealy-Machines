library verilog;
use verilog.vl_types.all;
entity whole is
    port(
        y               : out    vl_logic;
        x               : out    vl_logic_vector(2 downto 0);
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        c               : in     vl_logic
    );
end whole;
