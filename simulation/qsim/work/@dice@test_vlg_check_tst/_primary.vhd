library verilog;
use verilog.vl_types.all;
entity DiceTest_vlg_check_tst is
    port(
        COM             : in     vl_logic;
        o0              : in     vl_logic;
        o1              : in     vl_logic;
        o2              : in     vl_logic;
        o3              : in     vl_logic;
        o4              : in     vl_logic;
        o5              : in     vl_logic;
        o6              : in     vl_logic;
        r0              : in     vl_logic;
        r1              : in     vl_logic;
        r2              : in     vl_logic;
        r3              : in     vl_logic;
        r4              : in     vl_logic;
        r5              : in     vl_logic;
        r6              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        s3              : in     vl_logic;
        s4              : in     vl_logic;
        s5              : in     vl_logic;
        Y               : in     vl_logic_vector(2 downto 0);
        Z               : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end DiceTest_vlg_check_tst;
