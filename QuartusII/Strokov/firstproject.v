module firstproject
(
input wire A,
input wire B,
output wire C
);
 
assign C = A * B;
endmodule

module D_trigger
(
input wire D,
input wire C,
output reg out
);

always @ (posedge C)
begin
	out = D;
end 

endmodule

module eight_trig
(
input wire [7:0]A,
input wire [7:0]B,
input wire [7:0]C,
input wire clk,
output reg [7:0]DATA_OUT
);

reg [7:0] multiplication;
reg [7:0] sum;

always@(posedge clk) 
begin
	multiplication <= A * B;
	sum <= multiplication + C;
	DATA_OUT <= sum;
end
endmodule 