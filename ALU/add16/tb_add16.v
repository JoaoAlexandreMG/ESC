`include "add16.v"

module tb_add16;
    reg [15:0] A, B;  
    reg Cin;        
    wire [15:0] Sum;   
    wire Cout;   
    
    add16 uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );
    
    initial begin
        $monitor("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        $dumpfile("tb_add16.vcd");
        $dumpvars(0, tb_add16);
        
        A = 16'b0000000000000001; B = 16'b0000000000000010; Cin = 0; #10;
        A = 16'b1111111111111111; B = 16'b0000000000000001; Cin = 0; #10;
        A = 16'b1111111111111111; B = 16'b1111111111111111; Cin = 1; #10;
        A = 16'b1010101010101010; B = 16'b0101010101010101; Cin = 0; #10;
        
        $finish;
    end
endmodule
