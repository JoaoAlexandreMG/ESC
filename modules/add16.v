`include "modules/fulladder.v"

module add16 (
    input [15:0] A, B,
    input Cin,
    output [15:0] Sum,
    output Cout
);

    wire [15:0] carry;  
    
    fulladder fa0 (A[0], B[0], Cin, Sum[0], carry[0]);
    fulladder fa1 (A[1], B[1], carry[0], Sum[1], carry[1]);
    fulladder fa2 (A[2], B[2], carry[1], Sum[2], carry[2]);
    fulladder fa3 (A[3], B[3], carry[2], Sum[3], carry[3]);
    fulladder fa4 (A[4], B[4], carry[3], Sum[4], carry[4]);
    fulladder fa5 (A[5], B[5], carry[4], Sum[5], carry[5]);
    fulladder fa6 (A[6], B[6], carry[5], Sum[6], carry[6]);
    fulladder fa7 (A[7], B[7], carry[6], Sum[7], carry[7]);
    fulladder fa8 (A[8], B[8], carry[7], Sum[8], carry[8]);
    fulladder fa9 (A[9], B[9], carry[8], Sum[9], carry[9]);
    fulladder fa10 (A[10], B[10], carry[9], Sum[10], carry[10]);
    fulladder fa11 (A[11], B[11], carry[10], Sum[11], carry[11]);
    fulladder fa12 (A[12], B[12], carry[11], Sum[12], carry[12]);
    fulladder fa13 (A[13], B[13], carry[12], Sum[13], carry[13]);
    fulladder fa14 (A[14], B[14], carry[13], Sum[14], carry[14]);
    fulladder fa15 (A[15], B[15], carry[14], Sum[15], Cout);

endmodule
