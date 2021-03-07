library verilog;
use verilog.vl_types.all;
entity DiceTest is
    port(
        o6              : out    vl_logic;
        Z               : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        Sw              : in     vl_logic;
        o5              : out    vl_logic;
        o3              : out    vl_logic;
        o2              : out    vl_logic;
        o1              : out    vl_logic;
        o0              : out    vl_logic;
        o4              : out    vl_logic;
        COM             : out    vl_logic;
        r4              : out    vl_logic;
        Y               : out    vl_logic_vector(2 downto 0);
        clk1            : in     vl_logic;
        r5              : out    vl_logic;
        r6              : out    vl_logic;
        r3              : out    vl_logic;
        r2              : out    vl_logic;
        r1              : out    vl_logic;
        r0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic
    );
end DiceTest;
