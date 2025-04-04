`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: BYU-Idaho
// Company: Brigham Young University - Idaho
// 
// Module Name: Instruction_Decoder
// Project Name: ECEN 160L CPU
// Target Devices: Basys 3, Nexys 4 DDR
// Tool Versions: Vivado 2015.4
// Description: An instruction decoder for the CPU design for ECEN 160L
// 
// Revision: 2.0 - Revised for 3-port Register File CPU 3/29/2018
// Revision: 1.0 - Some renaming of signals - Joseph Hawker
// Revision 0.50 - Blank module completed
// Revision 0.01 - File created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Instruction_Decoder( 
            input [3:0] opcode,
            output [2:0] ALUFuncSel, 
            output [1:0] regSourceSel, 
            output dispWE, regWE
            );
    
    reg [7:0] data;
    
    assign ALUFuncSel = data[6:4];
    assign regSourceSel = data[3:2];
    assign dispWE = data[1];
    assign regWE = data[0];
    
    always @ (opcode) begin
        case (opcode)
    		0: data <= 8'h00;
            1: data <= 8'h00;
            2: data <= 8'h00;
            3: data <= 8'h00;
            4: data <= 8'h00;
            5: data <= 8'h00;
            6: data <= 8'h00;
            7: data <= 8'h00;
            8: data <= 8'h00;
            9: data <= 8'h00;
           10: data <= 8'h00;
           11: data <= 8'h00;
           12: data <= 8'h00;
           13: data <= 8'h00;
           14: data <= 8'h00;
           15: data <= 8'h00;
           default data <= 8'h00;
        endcase
    end
    
endmodule
