module TC_DelayLine (clk, rst, in, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    input clk;
    input rst;
    input [BIT_WIDTH-1:0] in;
    output reg [BIT_WIDTH-1:0] out;
   
    initial begin
        out = {BIT_WIDTH{1'b0}};
    end
    
    always @ (posedge clk) begin
        if (rst)
            out <= 1'b0;
        else
            out <= in;
    end
endmodule
