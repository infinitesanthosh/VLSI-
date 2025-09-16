module concat_example (
    input  wire a,
    input  wire [1:0] b,
    input  wire [1:0] c,
    output wire [2:0] y
);
    assign y = {a, b[0], c[1]};
endmodule
/*Use of this code
This code demonstrates bit concatenation in Verilog, which is a common operation when you want to combine bits from different signals into a single vector.
It can be used in hardware design where you need to create control signals, address lines, or data buses by selecting and combining bits from various sources.
For example, this could be part of a larger design where specific bits from different registers or inputs are combined to form a command or address.*/
