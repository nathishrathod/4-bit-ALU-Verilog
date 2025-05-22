`timescale 1ns / 1ps

module alu(
    input [3:0] a, b,
    input [1:0] sel,
    output reg [3:0] out
);

always @(*) begin
    case (sel)
        2'b00: out = a + b;  // Addition
        2'b01: out = a - b;  // Subtraction
        2'b10: out = a & b;  // AND
        2'b11: out = a | b;  // OR
        default: out = 4'b0000;
    endcase
end

endmodule
