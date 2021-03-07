library verilog;
use verilog.vl_types.all;
entity DiceTest_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk1            : in     vl_logic;
        Sw              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DiceTest_vlg_sample_tst;
