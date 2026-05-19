module sub_4bit
(
    input [3:0] a, b,
    output [3:0] out,
    output cout
);

wire [3:0] b_in;

not_gate4 ones_comp(b[3:0], b_in[3:0]);

add_4bit sub_out(
    .a(a),
    .b(b_in),
    .cin(1'b1),
    .s(out),
    .cout(cout)
);
endmodule