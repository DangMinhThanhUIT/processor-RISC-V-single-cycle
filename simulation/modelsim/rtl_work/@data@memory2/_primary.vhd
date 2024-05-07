library verilog;
use verilog.vl_types.all;
entity DataMemory2 is
    port(
        CLK             : in     vl_logic;
        Address         : in     vl_logic_vector(31 downto 0);
        WriteData       : in     vl_logic_vector(31 downto 0);
        WriteEn         : in     vl_logic;
        ReadEn          : in     vl_logic;
        ReadData        : out    vl_logic_vector(31 downto 0)
    );
end DataMemory2;
