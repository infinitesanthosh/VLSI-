//14.Implement logical left and right shift on a 4-bit input vector using assign.
module shift4 (
    input  wire [3:0] in,
    input  wire [1:0] shamt, // shift amount 0..3
    output wire [3:0] lshift,
    output wire [3:0] rshift
);
    assign lshift = in << shamt; // logical left shift
    assign rshift = in >> shamt; // logical right shift (fills with 0)
endmodule
// Logical Shift Notes:
// << : logical left shift → bits move left, right side filled with 0
// >> : logical right shift → bits move right, left side filled with 0
// Rule: logical shifts always insert 0s, not Zs
// (Z fill is not used in synthesis, only in simulation modeling)
