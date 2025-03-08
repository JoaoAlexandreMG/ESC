`include "../../gates01/gxor.v"
`include "../../gates01/gand.v"
`include "../../gates01/gor.v"

module fulladder(
    input A, B, Cin,
    output Sum, Cout
);
    wire sumAB, carryAB, carryCin;

    gxor xor1 (A, B, sumAB);     
    gxor xor2 (sumAB, Cin, Sum);  

    gand and1 (A, B, carryAB);     
    gand and2 (sumAB, Cin, carryCin); 
    gor or1 (carryAB, carryCin, Cout); 
endmodule
