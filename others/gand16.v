module gand16 (
    input [15:0] A, B, 
    output [15:0] Out    
);
    assign Out = A & B;
endmodule