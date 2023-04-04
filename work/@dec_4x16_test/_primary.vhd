library verilog;
use verilog.vl_types.all;
entity dec_4x16_test is
    port(
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        en              : out    vl_logic;
        output          : in     vl_logic_vector(15 downto 0)
    );
end dec_4x16_test;
