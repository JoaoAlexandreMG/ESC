module ALU (
    input [15:0] A,   
    input [15:0] B,    
    input [2:0] control, 
    output reg [15:0] Out, 
    output Zero 
);
    
    always @(*) begin
        case(control)
            3'b000: Out = A & B; 
            3'b001: Out = A | B;       
            3'b010: Out = A + B;      
            3'b011: Out = A - B;    
            3'b100: Out = ~A;           
            3'b101: Out = (A == B) ? 16'b1 : 16'b0; 
            3'b110: Out = A << 1;
            3'b111: Out = A >> 1;
            default: Out = 16'b0;      
        endcase
    end

    assign Zero = (Out == 16'b0) ? 1'b1 : 1'b0;

endmodule
