module adder_1c (a, b,cin, sum, cout);
	input [3:0] a;
	input [3:0] b;
	input cin;
	output [3:0] sum;
	output cout;

	wire c1, c2, c3;

	adder fa0(a[0], b[0], cin, sum[0], c1);
	adder fa1(a[1], b[1], c1, sum[1], c2);
	adder fa2(a[2], b[2], c2, sum[2], c3);
	adder fa3(a[3], b[3], c3, sum[3], cout);

endmodule



module adder (a, b, cin, sum, cout);

	input a, b, cin;
	output reg sum, cout;

always_comb 
begin

case ({a,b,cin})

	3'b000: begin sum=1'b0; cout=1'b0; end
	3'b001: begin sum=1'b1; cout=1'b0; end
	3'b010: begin sum=1'b1; cout=1'b0; end
	3'b011: begin sum=1'b0; cout=1'b1; end
	3'b100: begin sum=1'b1; cout=1'b0; end
	3'b101: begin sum=1'b0; cout=1'b1; end
	3'b110: begin sum=1'b0; cout=1'b1; end
	3'b111: begin sum=1'b1; cout=1'b1; end
	default: begin sum=1'bx; cout=1'bx; end

endcase
end
endmodule	



