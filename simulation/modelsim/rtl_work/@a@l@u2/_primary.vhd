library verilog;
use verilog.vl_types.all;
entity ALU2 is
    port(
        SrcA            : in     vl_logic_vector(31 downto 0);
        SrcB            : in     vl_logic_vector(31 downto 0);
        ALUControl      : in     vl_logic_vector(3 downto 0);
        ALUResult       : out    vl_logic_vector(31 downto 0);
        Zero            : out    vl_logic;
        Sign            : out    vl_logic
    );
end ALU2;
