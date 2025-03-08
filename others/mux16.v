module mux16 (
    input [15:0] A, B, 
    input sel,       
    output [15:0] Out     
);
    assign Out = (sel == 0) ? A : B;
endmodule