module top_module(
    input a, // Declare an input wires a, b, c, d
    input b,
    input c,
    input d,
    output out, // Declare an output wires out, out_n
    output out_n   ); 
	wire w1; // Declare intermediate wires
    wire w2;
    assign w1= a&b;
    assign w2= c&d;
    assign out=w1||w2;
    assign out_n= !(w1||w2);
    
endmodule
