/* Conditional Operator ?:
Syntax:
condition ? expr_if_true : expr_if_false
Works like if-else but in one line.
Evaluates the condition:
If condition = 1 → choose left expression
If condition = 0 → choose right expression
Think of it as a hardware multiplexer shortcut.*/

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//15.Write a 2-to-1 MUX using conditional operator ?:
module mux2_1 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule

//16.Design a 4-to-1 MUX using nested conditional operators ?: as in the slide example.
module mux4_1 (
    input  wire [3:0] i,    // inputs i[3:0]
    input  wire [1:0] sel,
    output wire       y
);
    assign y = (sel==2'b00) ? i[0] :
               (sel==2'b01) ? i[1] :
               (sel==2'b10) ? i[2] : i[3];
endmodule

//21.Design a parametric N-bit 4-to-1 MUX using conditional operator (N = 4 default).
module mux4_1_param #(parameter N = 4)(
    input  wire [N-1:0] i0,
    input  wire [N-1:0] i1,
    input  wire [N-1:0] i2,
    input  wire [N-1:0] i3,
    input  wire [1:0]   sel,
    output wire [N-1:0] y
);
    assign y = (sel == 2'b00) ? i0 :
               (sel == 2'b01) ? i1 :
               (sel == 2'b10) ? i2 : i3;
endmodule
