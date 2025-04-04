`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// University:  BYU-Idaho 
// Engineer: BYU-Idaho
// 
// Create Date: 12/1/2015
// Design Name: Final project template for ECEN 160L
// Module Name: finalProject
// Project Name: 
// Target Devices: Basys 3 FPGA board
// 
// Dependencies: 
// 
// Revision:
// Revision 3.00 - 3/29/18 - Modified for 3-port Register File CPU
// Revision 2.00 - 3/23/16 - Modified to use Program_ROM and Instruction_Decoder
//                           modules - Shane Jensen, Joseph Hawker, Brother Jones
// Revision 1.00 - File Created
// Additional Comments:
//     Students may use the modules supplied with this project to do their own
//     designs, or may use this by filling in the "..." sections with appropriate
//     Verilog code and editing the Instruction_Decoder and Program_ROM modules.
//
//     Requirements for the project are given in a Final Project handout.
//
//     See comments in the code below and the .v files for more details.
// 
//////////////////////////////////////////////////////////////////////////////////


module finalProject(
    input clk,             // Push button for single stepping processor - button R
    input reset,           // Push button for asynchronous reset - button U
    input [2:0] clkSpeed,  // Lower three switches determine clock to use
    input clk100MHz,       // The 100 MHz on-board clock
    output [6:0] seg,      // Outputs to use the seven segment displays
    output [3:0] an,
    output dp
    );
    
    // Wires, busses and registers 
     .
     .
     .
    reg  [26:0] clkDiv;        // A 27 bit counter to divide down the 100 MHz
    reg  clock;  
    wire deBncClk;  
    

    // Debounce the single step push button clock input
    debouncer DB0(.clk100MHz(clk100MHz), .rst(1'b0), .btn(clk), .debBtn(deBncClk));

    // Use the counter to divide down the 100 MHz clock
    always @(posedge clk100MHz) 
        clkDiv <= clkDiv + 1;

    // Select the clock speed to use for the CPU, based on the three lower switches.
    // When all switches are off, select the pushbutton switch.
    always @(clkSpeed, deBncClk, clkDiv)
      case(clkSpeed)
        0: clock = deBncClk;
        1: clock = clkDiv[26];
        2: clock = clkDiv[25];
        3: clock = clkDiv[24];
        4: clock = clkDiv[23];
        5: clock = clkDiv[22];
        6: clock = clkDiv[21];
        7: clock = clkDiv[20];
      endcase


    // Instantiate all modules
    Program_counter PCNT(clock,  );         //Add port names that correspond with the ports in your Binary Counter
    Program_ROM PRGROM(  );                 //Add port names that correspond with the ports in the program PROM module
    Instruction_Decoder  InstDec(  );       //Add port names that correspond with the ports in the instruction decoder module
    alu ALU(  );                            //Add port names that correspond with the ports in your ALU module
    RegFile Reg(  );                        //Add port names that correspond with the ports in your RegFile module
    sevenSegment SEVSEG({ ... , ... }, ... , clock, clk100MHz, seg, an, dp); //You can concatenate Port A and Port B to create
                                                                             //your ASCII code to send to the display
    
// Add your code for the Register input MUX
    
endmodule

//  Sequential logic for Binary Counter
module Program_counter(
    input clk,
    ...
    );
    
    always @ (posedge clk ...)
    ...
    
endmodule

//  Combinational logic for ALU
module  alu(
    ...
    ); 

    ...

endmodule

// 3-port Register File
module RegFile(
    ...
    );
    
    ...
endmodule
