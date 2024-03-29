// Synthesizable Sign-Magnitude Fixed-Point Adder with FixedPoint Size of N bits and Fraction Size of F bits
// Developed by Mehdi0xC, Winter 2018-2019
`include "config.svh"
module adder 
//##############################################################################################
//##############################################################################################
// PARAMETERs-----------------------------------------------------------------------------------
// INPUT AND OUTPUTS----------------------------------------------------------------------------
    (
    input logic [`N-1:0] a, b,
    output logic [`N-1:0] c
    );
// MODULES INSTANTIATIONS-----------------------------------------------------------------------
// VARIABLES -----------------------------------------------------------------------------------
    logic [`N-1:0] result;
    assign c = result;
// INITIALIZATIONS------------------------------------------------------------------------------
// MAIN-----------------------------------------------------------------------------------------
    always @(a,b) 
    begin
        if(a[`N-1] == b[`N-1]) 
        begin						
            result[`N-2:0] = a[`N-2:0] + b[`N-2:0];		
            result[`N-1] = a[`N-1];						
        end											
        else if(a[`N-1] == 0 && b[`N-1] == 1) 
        begin
            if( a[`N-2:0] > b[`N-2:0] ) 
            begin					
                result[`N-2:0] = a[`N-2:0] - b[`N-2:0];			
                result[`N-1] = 0;										
            end
            else 
            begin												
                result[`N-2:0] = b[`N-2:0] - a[`N-2:0];			
                if (result[`N-2:0] == 0)
                    result[`N-1] = 0;										
                else
                    result[`N-1] = 1;									
                end
            end
        else 
        begin												
            if( a[`N-2:0] > b[`N-2:0] ) 
            begin					
                result[`N-2:0] = a[`N-2:0] - b[`N-2:0];			
                if (result[`N-2:0] == 0)
                    result[`N-1] = 0;										
                else
                    result[`N-1] = 1;										
                end
            else 
            begin												
                result[`N-2:0] = b[`N-2:0] - a[`N-2:0];			
                result[`N-1] = 0;										
            end
        end
	end
//##############################################################################################
//##############################################################################################
endmodule
