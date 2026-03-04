module inc_4bit
(
    input  [3:0] a,
    output [3:0] out,
    output cout
);

wire cin = 1'b1;
wire [3:0] b = 4'b0000;

add_4bit inc_alu(a[3:0], b[3:0], cin, out[3:0], cout);

endmodule