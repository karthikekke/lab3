module adder_1d_tb;
reg [3:0] a;
reg [3:0] b;
reg cin=0;
wire [3:0] sum;
wire cout;
adder_1d rca(a,b,cin,sum,cout);
initial begin
for(int i=0;i<16;i=i+1) begin
#2; a=i;
	for(int j=0;j<16;j=j+1) begin
		#2; b=j;
		
	end
end
end
endmodule

