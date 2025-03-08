`include "others/gxor.v"
`include "others/gand.v"

module halfadder(
    input A, B,
    output Sum, Carry
);

    gxor xor1 (A, B, Sum);  
    gand and1 (A, B, Carry);

endmodule
