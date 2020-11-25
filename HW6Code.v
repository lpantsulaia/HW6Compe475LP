
module HW6Code(
		input clock,
		input selector,
		input[7:0] jumpTo,
		output[7:0] R15output,
		output reg[7:0] out
    );
	
	wire[7:0] muxOut;
//	if(selector == 1) 
//		assign muxOut = jumpTo;
//	
//	else 
//		assign muxOut = out+1;

assign muxOut = selector==0 ? out+1 : jumpTo; 
	
	
	assign R15output = out+2;
	
	
	always @(posedge clock) begin
		out<=muxOut;
	end

endmodule
