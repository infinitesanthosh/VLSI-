//Demonstrate implicit net declaration by creating a module where undeclared out is assigned using assign out = a | b;.
module implicit_net (
    input  wire a,
    input  wire b
    // out is NOT declared intentionally (implicit net)
);
    assign out = a | b; // out becomes an implicit wire
endmodule
