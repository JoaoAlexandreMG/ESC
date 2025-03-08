`include "fulladder.v"

module inc16 (
    input [15:0] A,    // Número de 16 bits
    output [15:0] Sum, // Resultado da soma
    output Cout        // Carry-out final
);

    wire [15:0] carry; // Fios de carry entre os full adders
    
    // Instanciando 16 full adders
    fulladder fa0 (A[0], 1'b1, 1'b0, Sum[0], carry[0]);  // Carry-in inicial em 1
    fulladder fa1 (A[1], 1'b0, carry[0], Sum[1], carry[1]);
    fulladder fa2 (A[2], 1'b0, carry[1], Sum[2], carry[2]);
    fulladder fa3 (A[3], 1'b0, carry[2], Sum[3], carry[3]);
    fulladder fa4 (A[4], 1'b0, carry[3], Sum[4], carry[4]);
    fulladder fa5 (A[5], 1'b0, carry[4], Sum[5], carry[5]);
    fulladder fa6 (A[6], 1'b0, carry[5], Sum[6], carry[6]);
    fulladder fa7 (A[7], 1'b0, carry[6], Sum[7], carry[7]);
    fulladder fa8 (A[8], 1'b0, carry[7], Sum[8], carry[8]);
    fulladder fa9 (A[9], 1'b0, carry[8], Sum[9], carry[9]);
    fulladder fa10 (A[10], 1'b0, carry[9], Sum[10], carry[10]);
    fulladder fa11 (A[11], 1'b0, carry[10], Sum[11], carry[11]);
    fulladder fa12 (A[12], 1'b0, carry[11], Sum[12], carry[12]);
    fulladder fa13 (A[13], 1'b0, carry[12], Sum[13], carry[13]);
    fulladder fa14 (A[14], 1'b0, carry[13], Sum[14], carry[14]);
    fulladder fa15 (A[15], 1'b0, carry[14], Sum[15], Cout); // Carry-out final

endmodule
