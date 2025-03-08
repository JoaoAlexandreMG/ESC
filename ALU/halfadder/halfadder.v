`include "../../gates01/gxor.v"
`include "../../gates01/gand.v"

module halfadder(
    input A, B,
    output Sum, Carry
);

    gxor xor1 (A, B, Sum);  
    gand and1 (A, B, Carry);

endmodule
