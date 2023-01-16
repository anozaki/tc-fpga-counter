module TC_Shl (in, shift, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    parameter SHIFT_WIDTH = (BIT_WIDTH == 8 ? 3 : BIT_WIDTH == 16 ? 4 : BIT_WIDTH == 32 ? 5 : BIT_WIDTH == 64 ? 6 : 1);
    input [BIT_WIDTH-1:0] in;
    input [SHIFT_WIDTH-1:0] shift;
    output [BIT_WIDTH-1:0] out;
    
    assign out = in << shift;
endmodule
