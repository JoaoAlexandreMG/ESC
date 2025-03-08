`include "halfadder.v"

module tb_halfadder;
    reg A, B;
    wire Sum, Carry;
    
    halfadder uut (
        .A(A), 
        .B(B), 
        .Sum(Sum), 
        .Carry(Carry)
    );
    
    initial begin
        $monitor("A = %b, B = %b, Sum = %b, Carry = %b", A, B, Sum, Carry);
        $dumpfile("tb_halfadder.vcd");
        $dumpvars(0, tb_halfadder);
        
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $finish;
    end
endmodule
