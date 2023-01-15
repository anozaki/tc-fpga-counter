module TC_BitMemory (clk, rst, save, in, out);
    parameter UUID = 0;
    parameter NAME = "";
    input clk;
    input rst;
    input save;
    input [0:0] in;
    output reg [0:0] out;

    reg [0:0] value;
    reg reset;
    
    initial begin
        out = 1'b0;
        value = 1'b0;
    end
    
    always @ (posedge clk) begin
        if (rst)
        out <= 1'b0;
        else
        out <= value;
        reset <= rst;
    end
    always @ (negedge clk) begin
        if (reset)
        value <= 1'b0;
        else if (save)
        value <= in;
    end
endmodule
