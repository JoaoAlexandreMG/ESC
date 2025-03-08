`include "others/gand16.v"
`include "others/gor16.v"
`include "others/gxor16.v"
`include "others/gnot16.v"
`include "others/fulladder16.v"
`include "others/mux16.v"

module alu (
    input [15:0] A, B,
    input [2:0] control,
    output [15:0] Out,
    output Zero
);
    wire [15:0] and_out, or_out, xor_out, sum_out, not_out, mux_out;
    wire cout, overflow;

    // AND gate
    gand16 and_gate (.A(A), .B(B), .Out(and_out));

    // OR gate
    gor16 or_gate (.A(A), .B(B), .Out(or_out));

    // XOR gate
    gxor16 xor_gate (.A(A), .B(B), .Out(xor_out));

    // NOT gate
    gnot16 not_gate (.A(A), .Out(not_out));

    // Full Adder for sum (A + B)
    fulladder16 sum_adder (.A(A), .B(B), .Cin(1'b0), .Sum(sum_out), .Cout(cout));  // Corrigido aqui para 1'b0

    // Multiplexers to choose the output based on the control signal
    mux16 mux0 (.A(and_out), .B(or_out), .sel(control[0]), .Out(mux_out));
    mux16 mux1 (.A(mux_out), .B(xor_out), .sel(control[1]), .Out(Out));

    // Zero flag
    assign Zero = (Out == 16'b0);

endmodule
