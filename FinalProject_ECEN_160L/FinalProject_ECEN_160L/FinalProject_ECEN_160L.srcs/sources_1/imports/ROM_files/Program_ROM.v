`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: BYU-Idaho
// 
// Module Name: Program_ROM
// Project Name: ECEN 160L CPU
// Tool Versions: 
// Description: A ROM containing the program in machine code for the CPU designed
//              in ECEN 160L
//
// 
// Revision 2.00 - Revised for 256X16-bits Joseph Hawker
// Revision 1.00 - Program completed
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module Program_ROM( 
    input [7:0] count, 
    output [3:0] opCode, 
    output [2:0] AddrD,
    output [2:0] AddrA,
    output [2:0] AddrB,
    output [3:0] Data 
    );
    
    reg [15:0] operation;
    
    assign opCode = operation[15:12];
    assign AddrD = operation[10:8];
    assign AddrA = operation[6:4];
    assign AddrB = operation[2:0];
    assign Data = operation[3:0];
    
    always @ (count) 
      begin
        case (count)
              0: operation <= 16'h0000;
              1: operation <= 16'h0000;
              2: operation <= 16'h0000;
              3: operation <= 16'h0000;
              4: operation <= 16'h0000;
              5: operation <= 16'h0000;
              6: operation <= 16'h0000;
              7: operation <= 16'h0000;
              8: operation <= 16'h0000;
              9: operation <= 16'h0000;
             10: operation <= 16'h0000;
             11: operation <= 16'h0000;
             12: operation <= 16'h0000;
             13: operation <= 16'h0000;
             14: operation <= 16'h0000;
             15: operation <= 16'h0000;
             16: operation <= 16'h0000;
             17: operation <= 16'h0000;
             18: operation <= 16'h0000;
             19: operation <= 16'h0000;
             20: operation <= 16'h0000;
             21: operation <= 16'h0000;
             22: operation <= 16'h0000;
             23: operation <= 16'h0000;
             24: operation <= 16'h0000;
             25: operation <= 16'h0000;
             26: operation <= 16'h0000;
             27: operation <= 16'h0000;
             28: operation <= 16'h0000;
             29: operation <= 16'h0000;
             30: operation <= 16'h0000;
             31: operation <= 16'h0000;
             32: operation <= 16'h0000;
             33: operation <= 16'h0000;
             34: operation <= 16'h0000;
             35: operation <= 16'h0000;
             36: operation <= 16'h0000;
             37: operation <= 16'h0000;
             38: operation <= 16'h0000;
             39: operation <= 16'h0000;
             40: operation <= 16'h0000;
             41: operation <= 16'h0000;
             42: operation <= 16'h0000;
             43: operation <= 16'h0000;
             44: operation <= 16'h0000;
             45: operation <= 16'h0000;
             46: operation <= 16'h0000;
             47: operation <= 16'h0000;
             48: operation <= 16'h0000;
             49: operation <= 16'h0000;
             50: operation <= 16'h0000;
             51: operation <= 16'h0000;
             52: operation <= 16'h0000;
             53: operation <= 16'h0000;
             54: operation <= 16'h0000;
             55: operation <= 16'h0000;
             56: operation <= 16'h0000;
             57: operation <= 16'h0000;
             58: operation <= 16'h0000;
             59: operation <= 16'h0000;
             60: operation <= 16'h0000;
             61: operation <= 16'h0000;
             62: operation <= 16'h0000;
             63: operation <= 16'h0000;
             64: operation <= 16'h0000;
             65: operation <= 16'h0000;
             66: operation <= 16'h0000;
             67: operation <= 16'h0000;
             68: operation <= 16'h0000;
             69: operation <= 16'h0000;
             70: operation <= 16'h0000;
             71: operation <= 16'h0000;
             72: operation <= 16'h0000;
             73: operation <= 16'h0000;
             74: operation <= 16'h0000;
             75: operation <= 16'h0000;
             76: operation <= 16'h0000;
             77: operation <= 16'h0000;
             78: operation <= 16'h0000;
             79: operation <= 16'h0000;
             80: operation <= 16'h0000;
             81: operation <= 16'h0000;
             82: operation <= 16'h0000;
             83: operation <= 16'h0000;
             84: operation <= 16'h0000;
             85: operation <= 16'h0000;
             86: operation <= 16'h0000;
             87: operation <= 16'h0000;
             88: operation <= 16'h0000;
             89: operation <= 16'h0000;
             90: operation <= 16'h0000;
             91: operation <= 16'h0000;
             92: operation <= 16'h0000;
             93: operation <= 16'h0000;
             94: operation <= 16'h0000;
             95: operation <= 16'h0000;
             96: operation <= 16'h0000;
             97: operation <= 16'h0000;
             98: operation <= 16'h0000;
             99: operation <= 16'h0000;
            100: operation <= 16'h0000;
            101: operation <= 16'h0000;
            102: operation <= 16'h0000;
            103: operation <= 16'h0000;
            104: operation <= 16'h0000;
            105: operation <= 16'h0000;
            106: operation <= 16'h0000;
            107: operation <= 16'h0000;
            108: operation <= 16'h0000;
            109: operation <= 16'h0000;
            110: operation <= 16'h0000;
            111: operation <= 16'h0000;
            112: operation <= 16'h0000;
            113: operation <= 16'h0000;
            114: operation <= 16'h0000;
            115: operation <= 16'h0000;
            116: operation <= 16'h0000;
            117: operation <= 16'h0000;
            118: operation <= 16'h0000;
            119: operation <= 16'h0000;
            120: operation <= 16'h0000;
            121: operation <= 16'h0000;
            122: operation <= 16'h0000;
            123: operation <= 16'h0000;
            124: operation <= 16'h0000;
            125: operation <= 16'h0000;
            126: operation <= 16'h0000;
            127: operation <= 16'h0000;
            128: operation <= 16'h0000;
            129: operation <= 16'h0000;
            130: operation <= 16'h0000;
            131: operation <= 16'h0000;
            132: operation <= 16'h0000;
            133: operation <= 16'h0000;
            134: operation <= 16'h0000;
            135: operation <= 16'h0000;
            136: operation <= 16'h0000;
            137: operation <= 16'h0000;
            138: operation <= 16'h0000;
            139: operation <= 16'h0000;
            140: operation <= 16'h0000;
            141: operation <= 16'h0000;
            142: operation <= 16'h0000;
            143: operation <= 16'h0000;
            144: operation <= 16'h0000;
            145: operation <= 16'h0000;
            146: operation <= 16'h0000;
            147: operation <= 16'h0000;
            148: operation <= 16'h0000;
            149: operation <= 16'h0000;
            150: operation <= 16'h0000;
            151: operation <= 16'h0000;
            152: operation <= 16'h0000;
            153: operation <= 16'h0000;
            154: operation <= 16'h0000;
            155: operation <= 16'h0000;
            156: operation <= 16'h0000;
            157: operation <= 16'h0000;
            158: operation <= 16'h0000;
            159: operation <= 16'h0000;
            160: operation <= 16'h0000;
            161: operation <= 16'h0000;
            162: operation <= 16'h0000;
            163: operation <= 16'h0000;
            164: operation <= 16'h0000;
            165: operation <= 16'h0000;
            166: operation <= 16'h0000;
            167: operation <= 16'h0000;
            168: operation <= 16'h0000;
            169: operation <= 16'h0000;
            170: operation <= 16'h0000;
            171: operation <= 16'h0000;
            172: operation <= 16'h0000;
            173: operation <= 16'h0000;
            174: operation <= 16'h0000;
            175: operation <= 16'h0000;
            176: operation <= 16'h0000;
            177: operation <= 16'h0000;
            178: operation <= 16'h0000;
            179: operation <= 16'h0000;
            180: operation <= 16'h0000;
            181: operation <= 16'h0000;
            182: operation <= 16'h0000;
            183: operation <= 16'h0000;
            184: operation <= 16'h0000;
            185: operation <= 16'h0000;
            186: operation <= 16'h0000;
            187: operation <= 16'h0000;
            188: operation <= 16'h0000;
            189: operation <= 16'h0000;
            190: operation <= 16'h0000;
            191: operation <= 16'h0000;
            192: operation <= 16'h0000;
            193: operation <= 16'h0000;
            194: operation <= 16'h0000;
            195: operation <= 16'h0000;
            196: operation <= 16'h0000;
            197: operation <= 16'h0000;
            198: operation <= 16'h0000;
            199: operation <= 16'h0000;
            200: operation <= 16'h0000;
            201: operation <= 16'h0000;
            202: operation <= 16'h0000;
            203: operation <= 16'h0000;
            204: operation <= 16'h0000;
            205: operation <= 16'h0000;
            206: operation <= 16'h0000;
            207: operation <= 16'h0000;
            208: operation <= 16'h0000;
            209: operation <= 16'h0000;
            210: operation <= 16'h0000;
            211: operation <= 16'h0000;
            212: operation <= 16'h0000;
            213: operation <= 16'h0000;
            214: operation <= 16'h0000;
            215: operation <= 16'h0000;
            216: operation <= 16'h0000;
            217: operation <= 16'h0000;
            218: operation <= 16'h0000;
            219: operation <= 16'h0000;
            220: operation <= 16'h0000;
            221: operation <= 16'h0000;
            222: operation <= 16'h0000;
            223: operation <= 16'h0000;
            224: operation <= 16'h0000;
            225: operation <= 16'h0000;
            226: operation <= 16'h0000;
            227: operation <= 16'h0000;
            228: operation <= 16'h0000;
            229: operation <= 16'h0000;
            230: operation <= 16'h0000;
            231: operation <= 16'h0000;
            232: operation <= 16'h0000;
            233: operation <= 16'h0000;
            234: operation <= 16'h0000;
            235: operation <= 16'h0000;
            236: operation <= 16'h0000;
            237: operation <= 16'h0000;
            238: operation <= 16'h0000;
            239: operation <= 16'h0000;
            240: operation <= 16'h0000;
            241: operation <= 16'h0000;
            242: operation <= 16'h0000;
            243: operation <= 16'h0000;
            244: operation <= 16'h0000;
            245: operation <= 16'h0000;
            246: operation <= 16'h0000;
            247: operation <= 16'h0000;
            248: operation <= 16'h0000;
            249: operation <= 16'h0000;
            250: operation <= 16'h0000;
            251: operation <= 16'h0000;
            252: operation <= 16'h0000;
            253: operation <= 16'h0000;
            254: operation <= 16'h0000;
            255: operation <= 16'h0000;
            default operation <= 16'h0000;
        endcase
    end
    
endmodule
