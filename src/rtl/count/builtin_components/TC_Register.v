module TC_Register (clk, rst, load, save, in, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    input clk;
    input rst;
    input load;
    input save;
    input [BIT_WIDTH-1:0] in;
    output reg [BIT_WIDTH-1:0] out;

    reg [BIT_WIDTH-1:0] value;
    reg reset;
    
    initial begin
        out = {BIT_WIDTH{1'b0}};
        value = {BIT_WIDTH{1'b0}};
    end
    
    // modified - The original output would not compile.
    //            Removed "load", since my design didn't require it and simplified this file.

    always @ (posedge clk) begin
        if (rst)
            out <= {BIT_WIDTH{1'b0}};
        else
            out <= value;
        reset <= rst;
    end
    always @ (negedge clk) begin
        if (reset)
            value <= {BIT_WIDTH{1'b0}};
        else if (save)
            value <= in;
    end

 endmodule
