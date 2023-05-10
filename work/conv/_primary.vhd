library verilog;
use verilog.vl_types.all;
entity conv is
    port(
        Aclk            : in     vl_logic;
        rst             : in     vl_logic;
        Xin             : in     vl_logic_vector(7 downto 0);
        Kin             : in     vl_logic_vector(7 downto 0);
        Rout            : out    vl_logic_vector(7 downto 0);
        result_done     : out    vl_logic
    );
end conv;
