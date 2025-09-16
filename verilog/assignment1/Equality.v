//13.Demonstrate the difference between == and === using operands with unknown bits (x,z).
module eq_vs_case_eq;
    reg [1:0] a, b;
    initial begin
        a = 2'b1x; b = 2'b10;
        $display("a=%b b=%b (==) %0d (===) %0d", a, b, (a==b), (a===b));
        // (a==b) is X if any operand has x/z (or returns 1/0? simulation may produce x -> treated as unknown)
        // (a===b) is 1 only if bits exactly match including x/z pattern.
        a = 2'b1z; b = 2'b1z;
        $display("a=%b b=%b (==)%0d (===)%0d", a, b, (a==b), (a===b));
        #1 $finish;
    end
endmodule
// Equality vs Case Equality in Verilog
// ==  : normal equality → returns X if operands have X or Z
// === : case equality   → strict bit match, includes X and Z
// Rule to remember: "== may give X, === always gives 0 or 1"
