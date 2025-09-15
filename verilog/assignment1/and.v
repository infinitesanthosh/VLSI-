//Write a Verilog module using a continuous assignment to implement out = a & b.
module and_continuous (
    input  wire a,
    input  wire b,
    output wire out
);
    assign out = a & b;
endmodule
