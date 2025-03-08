`include "modules/alu.v"

module tb_alu;
    reg [15:0] A, B;
    reg [2:0] control;
    wire [15:0] Out;
    wire Zero;

    alu uut (
        .A(A),
        .B(B),
        .control(control),
        .Out(Out),
        .Zero(Zero)
    );

    initial begin
        $monitor("A = %b, B = %b, control = %b, Out = %b, Zero = %b", A, B, control, Out, Zero);
        $dumpfile("tb_alu.vcd");
        $dumpvars(0, tb_alu);

        A = 16'b0000000000000001; B = 16'b0000000000000010; control = 3'b010; #10; 
        A = 16'b0000000000000100; B = 16'b0000000000000010; control = 3'b011; #10; 
        A = 16'b1111001100110011; B = 16'b0000110011001100; control = 3'b000; #10; 
        A = 16'b1111001100110011; B = 16'b0000110011001100; control = 3'b001; #10; 
        A = 16'b0000000000000001; B = 16'b0000000000000001; control = 3'b101; #10; 
        A = 16'b0000000000000000; B = 16'b0000000000000000; control = 3'b100; #10; 

        $finish;
    end
endmodule
