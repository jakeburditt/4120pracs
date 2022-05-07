`timescale 1ns / 1ps

module testBench;
    reg clk;
    wire [15:0] sine;
    wire [31:0] sine2;
   
    //initates and connects the sine generator to the testBench
    sine_gen baseSineGen(
        .clk (clk),
        .sineOutput (sine)
    );

    
    shifter baseShifter(
        .clk (clk),
        .sine2Output (sine2)
    );    
        
    
    //frequency control
    parameter freq = 100000000; //100 MHz
    parameter SIZE = 1024; 
    parameter clockRate = 0.0048; //clock time (make this an output from the sine modules)
    
    //Generate a clock with the above frequency control
    initial
    begin 
    clk = 1'b0;
    end
    always #clockRate clk = ~clk; //#1 is one nano second delay (#x controlls the speed)
    
endmodule
