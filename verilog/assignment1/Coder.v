//17.Design a 2-to-4 decoder using dataflow modeling (active-low output).
module decoder2to4_activelow (
    input  wire [1:0] a,
    input  wire       en,
    output wire [3:0] y_n // active low outputs
);
    // active-low: selected output = 0, others = 1
    assign y_n[0] = ~(en & ~a[1] & ~a[0]);
    assign y_n[1] = ~(en & ~a[1] &  a[0]);
    assign y_n[2] = ~(en &  a[1] & ~a[0]);
    assign y_n[3] = ~(en &  a[1] &  a[0]);
endmodule

//18.Implement a 4-to-2 encoder using conditional operator ?:
module enc4to2 (
    input  wire [3:0] in,
    output wire [1:0] out,
    output wire       valid
);
    assign out[1] = (in[3]) ? 1'b1 :
                    (in[2]) ? 1'b1 :
                    (in[1]) ? 1'b0 :
                    (in[0]) ? 1'b0 : 1'b0;
    assign out[0] = (in[3]) ? 1'b1 :
                    (in[2]) ? 1'b0 :
                    (in[1]) ? 1'b1 :
                    (in[0]) ? 1'b0 : 1'b0;
    assign valid = |in; // high if any input is active
endmodule

//19.Create a 4-to-2 priority encoder module using assign and nested conditions.
module priority_enc4to2 (
    input  wire [3:0] in,
    output wire [1:0] out,
    output wire       valid
);
    // Priority: in[3] highest, in[0] lowest
    assign out = in[3] ? 2'b11 :
                 in[2] ? 2'b10 :
                 in[1] ? 2'b01 :
                 in[0] ? 2'b00 : 2'b00;
    assign valid = |in;
endmodule
