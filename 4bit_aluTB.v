


`timescale 1ns/1ps

module bit4_alu_tb;

reg en;
reg [3:0] a, b;
reg [2:0] opcode;

wire [3:0] out;
wire cout;

localparam period = 20;
// Instantiate the ALU
bit4_alu uut (
    .en(en),
    .a(a),
    .b(b),
    .opcode(opcode),
    .out(out),
    .cout(cout)
);


initial                                                
	begin                                                  
		a = 4'b0000;  // initial
		b = 4'b0000;
		en = 1'b0;
	        opcode = 3'b000;

		#period;

		#5 en = 1'b1;
		#1 opcode = 3'b000;  // add
		a = 4'b1111;
		b = 4'b1111;
		#2 en = 1'b0;

		#period;

		#5 en = 1'b1;
		#1 opcode = 3'b011;  // or
		a = 4'b1100;
		b = 8'b0011;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1opcode = 3'b101;  // not
		a = 4'b1010;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1 opcode = 3'b001;  //subtract
		a = 4'b0000;
		b = 4'b0001;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1 opcode = 3'b010;  // and
		a = 4'b1100;
		b = 8'b0011;
		#2 en = 1'b0;
		
		#period;
	                                     
	end   
endmodule