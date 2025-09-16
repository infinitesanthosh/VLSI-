//10.Implement a 9-bit even parity generator using ^x and ~: assign ep = ^x; assign op = ~ep;
module parity9 (
    input  wire [8:0] x,
    output wire       ep, 
    output wire       op
);
  assign ep = ~(^x); //1 for even parity
    assign op = ^x;    //1 if odd number of ones
endmodule
/*How this code works in context
The module takes a 9-bit input x.
It calculates:
ep — a bit indicating if x has an even number of 1's.
op — a bit indicating if x has an odd number of 1's.
This can be used to generate parity bits or check parity in communication systems.
Use of this code
Error detection:
Parity bits are appended to data to detect errors. For example, if data is transmitted with an even parity bit, the receiver can check if the received data plus parity bit has an even number of 1's. If not, an error occurred.

Simple hardware implementation:
Using the XOR reduction operator ^ and bitwise NOT ~ makes parity calculation efficient and concise in hardware.

Data integrity:
Parity bits help ensure data integrity in memory, communication protocols, and storage devices.*/
