`include "modules/inc16.v"

module tb_inc16;
    reg [15:0] A;  
    wire [15:0] Sum; 
    wire Cout;      
    
    inc16 uut (
        .A(A), 
        .Sum(Sum), 
        .Cout(Cout)
    );
    
    initial begin
        $monitor("A = %b, Sum = %b, Cout = %b", A, Sum, Cout);
        $dumpfile("tb_inc16.vcd");
        $dumpvars(0, tb_inc16);
        
        A = 16'b0000000000000001; #10; 
        A = 16'b1111111111111111; #10; 
        A = 16'b1010101010101010; #10; 
        A = 16'b0000000000000000; #10;  
        
        $finish;
    end
endmodule
