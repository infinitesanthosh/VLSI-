//9. Write a module using replication operator: assign y = {a, {4{b[0]}}, c[1]};
module replication_example (
    input  wire a,
    input  wire [3:0] b,
    input  wire [1:0] c,
    output wire [6:0] y
);
    assign y = {a, {4{b[0]}}, c[1]};
endmodule
/*Use of this Code / Concept in Verilog
Bit Replication is commonly used in hardware design for:

Signal expansion: Expanding a single bit to multiple bits for driving buses or registers.
Pattern generation: Creating repeated bit patterns for masks, control signals, or initialization.
Simplifying code: Instead of manually writing repeated bits, replication operator makes code concise and readable.
Concatenation combined with replication allows flexible construction of complex signals from smaller parts.

Example use cases:

Creating a mask where a bit controls multiple lines.
Generating a bus where all bits are set to the same value.
Constructing control signals that depend on a single bit replicated multiple times.*/
