`include "alu.v"

module tb_ALU;
    reg [15:0] A, B;
    reg [2:0] control;
    wire [15:0] Out;
    wire Zero;
    
    ALU uut (
        .A(A),
        .B(B),
        .control(control),
        .Out(Out),
        .Zero(Zero)
    );
    
    initial begin
        $monitor("A = %b, B = %b, control = %b, Out = %b, Zero = %b", A, B, control, Out, Zero);
        $dumpfile("tb_ALU.vcd");
        $dumpvars(0, tb_ALU);
        
        A = 16'b0000000000000001; B = 16'b0000000000000010; control = 3'b000; #10; 
        A = 16'b0000000000000100; B = 16'b0000000000000010; control = 3'b001; #10; 
        A = 16'b1111001100110011; B = 16'b0000110011001100; control = 3'b010; #10; 
        A = 16'b1111001100110011; B = 16'b0000110011001100; control = 3'b011; #10; 
        A = 16'b0000000000000001; B = 16'b0000000000000001; control = 3'b101; #10; 
        A = 16'b0000000000000000; B = 16'b0000000000000000; control = 3'b100; #10; 
        A = 16'b0000000000000001; B = 16'b0000000000000000; control = 3'b110; #10;
        A = 16'b0000000000000001; B = 16'b0000000000000000; control = 3'b111; #10;

        $finish;
    end
endmodule
