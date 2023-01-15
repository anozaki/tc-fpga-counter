
module TC_Constant(out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    parameter value = {BIT_WIDTH{1'b0}};
    output [BIT_WIDTH-1:0] out;
    
    assign out = value;
endmodule
