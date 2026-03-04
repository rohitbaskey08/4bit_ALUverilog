module bit4_alu
(
    input en,
    input [3:0] a, b,
    input [2:0] opcode,
    output reg [3:0] out,
    output reg cout
);

wire [3:0] add_out, sub_out, and_out, or_out, xor_out;
wire [3:0] inc_out, dec_out, not_out;
wire add_cout, sub_cout, inc_cout, dec_cout;


// Module instantiations
add_4bit add(a, b, 1'b0, add_out, add_cout);
sub_4bit sub(a, b, sub_out, sub_cout);
and_gate4 andg(a, b, and_out);
or_gate4 org(a, b, or_out);
exor_gate4 xorg(a, b, xor_out);
not_gate4 notg(a, not_out);
inc_4bit inc(a, inc_out, inc_cout);
dec_4bit dec(a, dec_out, dec_cout);


always @(*) begin

    out  = 4'b0000;
    cout = 1'b0;

    if(en) begin

        case(opcode)

            3'b000: begin   // ADD
                out  = add_out;
                cout = add_cout;
            end

            3'b001: begin   // SUB
                out  = sub_out;
                cout = sub_cout;
            end

            3'b010: begin   // AND
                out = and_out;
            end

            3'b011: begin   // OR
                out = or_out;
            end

            3'b100: begin   // XOR
                out = xor_out;
            end

            3'b101: begin   // NOT
                out = not_out;
            end

            3'b110: begin   // INC
                out  = inc_out;
                cout = inc_cout;
            end

            3'b111: begin   // DEC
                out  = dec_out;
                cout = dec_cout;
            end

        endcase

    end

end

endmodule
