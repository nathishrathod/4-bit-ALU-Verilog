`timescale 1ns / 1ps

module alu_tb;

reg [3:0] a, b;
reg [1:0] sel;
wire [3:0] out;

alu uut (.a(a), .b(b), .sel(sel), .out(out));

initial begin
    a = 4'b0101; // 5
    b = 4'b0011; // 3

    sel = 2'b00; #10;  // Add
    sel = 2'b01; #10;  // Sub
    sel = 2'b10; #10;  // AND
    sel = 2'b11; #10;  // OR

    $finish;
end

endmodule
