//???_E94084016
`timescale 1ns/1ns 
module test();

  reg [3:0] a;
  reg [3:0] b;
  reg op;
  wire [3:0] sum;
  wire Cout;

  BCD bcd (.sum(sum), .Cout(Cout), .op(op), .a(a), .b(b));

  initial begin
  	// Initialize Inputs
    op = 0;  a = 0;  b = 0; 
		#1 op=0; a = 1;  b = 8;  
		#1 op=0; a = 2;  b = 9;   
		#1 op=0; a = 3;  b = 10;   
		#1 op=0; a = 4;  b = 11; 
		#1 op=0; a = 5;  b = 10;   
		#1 op=0; a = 6;  b = 11;   
		#1 op=0; a = 7;  b = 12;   
		#1 op=1; a = 7;  b = 0; 
		#1 op=1; a = 6;  b = 1;   
		#1 op=1; a = 5;  b = 3;   
		#1 op=1; a = 4;  b = 4;   
		#1 op=1; a = 15;  b = 5; 
		#1 op=1; a = 12;  b = 6;   
		#1 op=1; a = 11;  b = 7;
		#1 op=1; a = 11;  b = 6;
		#1 op=1; a = 15;  b = 3;
		#1 op=1; a = 11;  b = 1;
		#1 op=1; a = 7;  b = 5;
		#1 op=1; a = 14;  b = 3;
		#1 op=1; a = 11;  b = 7;
		#1 $finish;
	end
        
 endmodule