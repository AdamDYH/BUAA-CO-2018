`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:44 09/27/2018 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder(
    input [3:0] A,
    input [3:0] B,
    input Clk,
    input En,
    output [3:0] Sum,
    output Overflow
    );

reg [3:0] a, b;
assign {Overflow, Sum} = a + b;

initial
begin
	a <= 0;
	b <= 0;
end

always @(posedge Clk)
begin
	if (En)
	begin
		a <= A;
		b <= B;
	end
end

endmodule
