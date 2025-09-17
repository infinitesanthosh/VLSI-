// 9 Basic Logic Gates in Verilog (Dataflow Modeling)
module basic_gates (
    input  wire a,
    input  wire b,
    output wire and_out,
    output wire or_out,
    output wire not_a,
    output wire nand_out,
    output wire nor_out,
    output wire xor_out,
    output wire xnor_out,
    output wire buf_a,
    output wire buf_b
);

    assign and_out  = a & b;    // AND
    assign or_out   = a | b;    // OR
    assign not_a    = ~a;       // NOT (only on 'a' here)
    assign nand_out = ~(a & b); // NAND
    assign nor_out  = ~(a | b); // NOR
    assign xor_out  = a ^ b;    // XOR
    assign xnor_out = ~(a ^ b); // XNOR
    assign buf_a    = a;        // Buffer (just passes input)
    assign buf_b    = b;        // Buffer (just passes input)

endmodule
