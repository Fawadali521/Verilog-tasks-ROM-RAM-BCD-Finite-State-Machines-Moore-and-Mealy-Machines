library verilog;
use verilog.vl_types.all;
entity bcd is
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0);
        dp              : out    vl_logic;
        enable          : in     vl_logic
    );
end bcd;
