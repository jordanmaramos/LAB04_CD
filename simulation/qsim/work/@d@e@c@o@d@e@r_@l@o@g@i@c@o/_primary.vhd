library verilog;
use verilog.vl_types.all;
entity DECODER_LOGICO is
    port(
        A3              : in     vl_logic;
        A2              : in     vl_logic;
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        S0              : out    vl_logic;
        S1              : out    vl_logic;
        S2              : out    vl_logic;
        S3              : out    vl_logic;
        S4              : out    vl_logic;
        S5              : out    vl_logic;
        S6              : out    vl_logic
    );
end DECODER_LOGICO;
