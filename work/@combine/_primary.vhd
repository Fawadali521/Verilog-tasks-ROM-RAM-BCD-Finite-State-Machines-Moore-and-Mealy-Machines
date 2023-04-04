library verilog;
use verilog.vl_types.all;
entity combine is
    generic(
        en              : integer := 1
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        out_data        : out    vl_logic_vector(15 downto 0)
    );
end combine;
