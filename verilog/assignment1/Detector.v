//11.Write a module to detect all-zero and all-one using:assign zero = ~(|x); assign one = &x;
module all_zero_one_det (
    input  wire [7:0] x,
    output wire       zero,
    output wire       one
);
    assign zero = ~(|x); // NOR of bits -> 1 if all zeros
    assign one  = &x;    // AND of bits -> 1 if all ones
endmodule
/*Use of this Code in Verilog
Detecting special conditions:
This module is useful for detecting if a bus or register is in a special state:

All zeros: Often used to detect reset conditions, idle states, or cleared registers.
All ones: Can indicate maximum value, error flags, or specific control states.
Control logic:

The outputs zero and one can be used to trigger specific actions in your design, such as enabling/disabling modules, generating interrupts, or changing modes.
Simplifies hardware design:

Using reduction operators (| and &) and bitwise negation (~) provides a concise and efficient way to check these conditions without writing complex loops or multiple comparisons.
Common in state machines and counters:

For example, a counter might need to detect when it reaches zero or its maximum count (all ones).*/
