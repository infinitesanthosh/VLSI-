//12.Create a comparator module that uses ==, <, and > to output ceq, clt, and cgt.
module comparator_8bit (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire ceq,
    output wire clt,
    output wire cgt
);
    assign ceq = (a == b);
    assign clt = (a < b);
    assign cgt = (a > b);
endmodule
//This can be useful in digital circuits where decision-making depends on comparing values, such as sorting, conditional branching, or arithmetic operations.
