// Synthesizable Sign-Magnitude Fixed-Point Multiplier with FixedPoint Size of N bits and Fraction Size of F bits
// Developed by Mehdi0xC, Winter 2018-2019
`include "config.svh"
module multiplier 
//##############################################################################################
//##############################################################################################
// PARAMETERs-----------------------------------------------------------------------------------
// INPUT AND OUTPUTS----------------------------------------------------------------------------
	(
	 input logic		[`N-1:0]	a, b,
	 output	logic		[`N-1:0]	c
	 );
// VARIABLES -----------------------------------------------------------------------------------
	logic [2*`N-1:0]	result;
	logic [`N-1:0] finalResult;
	assign c = finalResult;
// MODULES INSTANTIATIONS-----------------------------------------------------------------------
// INITIALIZATIONS------------------------------------------------------------------------------	
// MAIN-----------------------------------------------------------------------------------------
	always @(a, b)	
	begin						
		result <= a[`N-2:0] * b[`N-2:0];													
	end
	
	always @(result) 
	begin											
		finalResult[`N-1] <= a[`N-1] ^ b[`N-1];	
		finalResult[`N-2:0] <= result[`N-2+`F:`F];							
	end
//##############################################################################################
//##############################################################################################
endmodule
