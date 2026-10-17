module alu_4bit (
    input [3:0] A,        // 4-bit input A
    input [3:0] B,        // 4-bit input B
    input [1:0] OP,       // 2-bit operation selector
    output reg [3:0] RES, // 4-bit result
    output reg C,         // Carry flag
    output reg Z,         // Zero flag
    output reg N          // Negative flag
);

    always @(*) begin
        case (OP)
            2'b00: {C, RES} = A + B;           // ADD
            2'b01: {C, RES} = A - B;           // SUB
            2'b10: RES = A & B;                // AND
            2'b11: RES = A | B;                // OR
            default: RES = 4'b0000;
        endcase
        
        // Set flags
        Z = (RES == 4'b0000);   // Zero flag
        N = RES[3];             // Negative flag (MSB)
        // Carry is already set from ADD/SUB operation
    end
    
endmodule
