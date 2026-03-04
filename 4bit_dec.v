module dec_4bit
(
    input [3:0] a,
    output [3:0] out,
    output cout
);

sub_4bit dec(a[3:0], 4'b0001, out[3:0], cout);

endmodule