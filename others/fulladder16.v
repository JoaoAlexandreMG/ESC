`include "modules/fulladder.v"

module fulladder16 (
    input [15:0] A, B,    
    input Cin,            
    output [15:0] Sum,     
    output Cout           
);

    wire [15:0] carry; 
    genvar i;

    generate
        for (i = 0; i < 16; i = i + 1) begin : adder
            if (i == 0) begin
                fulladder fa (
                    .A(A[i]), 
                    .B(B[i]), 
                    .Cin(Cin), 
                    .Sum(Sum[i]), 
                    .Cout(carry[i])
                );
            end else begin
                fulladder fa (
                    .A(A[i]), 
                    .B(B[i]), 
                    .Cin(carry[i-1]), 
                    .Sum(Sum[i]), 
                    .Cout(carry[i])
                );
            end
        end
    endgenerate

    assign Cout = carry[15];

endmodule