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

    gand16 and_gate (.A(A), .B(B), .Out(and_out));

    gor16 or_gate (.A(A), .B(B), .Out(or_out));

    gxor16 xor_gate (.A(A), .B(B), .Out(xor_out));

    gnot16 not_gate (.A(A), .Out(not_out));

    fulladder16 sum_adder (.A(A), .B(B), .Cin(1'b0), .Sum(sum_out), .Cout(cout)); 

    mux16 mux0 (.A(and_out), .B(or_out), .sel(control[0]), .Out(mux_out));
    mux16 mux1 (.A(mux_out), .B(xor_out), .sel(control[1]), .Out(Out));

    assign Zero = (Out == 16'b0);

endmodule
