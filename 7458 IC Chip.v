module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
		wire w1;
    	wire w2;
    	wire w3;
    	wire w4;
	assign w1 = p1a&&p1b&&p1c;
    assign w2 = p1e&&p1f&&p1d;
    assign w3 = p2a&&p2b;
    assign w4 = p2c&&p2d;
    assign p1y = w1||w2;
    assign p2y = w3||w4;

endmodule


//The following is a shorter version, without the need for declaring extra wires:

//module top_module ( 
//    input p1a, p1b, p1c, p1d, p1e, p1f,
//    output p1y,
//    input p2a, p2b, p2c, p2d,
//    output p2y );
//    assign p1y = (p1a&p1b&p1c)||(p1e&p1f&p1d);
//    assign p2y = (p2a&p2b)||(p2c&p2d);
//        
//endmodule
