import parameters::*;
module multiplication (A, B, C);
	input A, B;
	output C;
	assign C = A&B;
endmodule
// D-trigger
module Dtrig (d, clk, out);
	input wire d;
	input clk;
	output reg out;
	always @(posedge clk) begin
		out <= d;
	end
endmodule
module proj1 (
input wire [0:in-1] A, 
input wire [0:in-1] B,
input wire [0:in-1] C,
input clk,
output reg [0:regout-1] register,
output reg [0:regout-1] shiftregister,
output reg [0:regout-1] shiftregister2,
output reg [0:regout-1] DATA_OUT
);

 
always @(posedge clk) begin
register <= A*B;
shiftregister <= C;
shiftregister2 <= shiftregister;

DATA_OUT <=  register + shiftregister2;
	end	
endmodule 
 