`timescale 1ns/1ps

module tb_alu();
    reg [3:0] A, B;
    reg [1:0] OP;
    wire [3:0] RES;
    wire C, Z, N;
    
    // Instantiate the ALU
    alu_4bit uut (
        .A(A), .B(B), .OP(OP),
        .RES(RES), .C(C), .Z(Z), .N(N)
    );
    
    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu);
  
        $display("Starting ALU Testbench");
        $display(" A   B  OP | RES C Z N | Operation");
        $display("-----------------------------------");
        
        // Test ADD: 5 + 3 = 8
        A = 4'b0101; B = 4'b0011; OP = 2'b00;
        #10;
        $display("%h  %h  %b  | %h  %b %b %b | ADD", A, B, OP, RES, C, Z, N);
        
        // Test SUB: 5 - 3 = 2
        A = 4'b0101; B = 4'b0011; OP = 2'b01;
        #10;
        $display("%h  %h  %b  | %h  %b %b %b | SUB", A, B, OP, RES, C, Z, N);
        
        // Test AND: 5 & 3 = 1
        A = 4'b0101; B = 4'b0011; OP = 2'b10;
        #10;
        $display("%h  %h  %b  | %h  %b %b %b | AND", A, B, OP, RES, C, Z, N);
        
        // Test OR: 5 | 3 = 7
        A = 4'b0101; B = 4'b0011; OP = 2'b11;
        #10;
        $display("%h  %h  %b  | %h  %b %b %b | OR", A, B, OP, RES, C, Z, N);
        
        // Test Zero flag: 0 + 0 = 0
        A = 4'b0000; B = 4'b0000; OP = 2'b00;
        #10;
        $display("%h  %h  %b  | %h  %b %b %b | ADD (zero test)", A, B, OP, RES, C, Z, N);
        
        $finish;
    end
    
endmodule
