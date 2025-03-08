`include "others/gxor.v"
`include "others/gand.v"
`include "others/gor.v"

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
