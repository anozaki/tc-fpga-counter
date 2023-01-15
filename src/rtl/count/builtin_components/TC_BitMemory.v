module TC_BitMemory (clk, rst, save, in, out);
    parameter UUID = 0;
    parameter NAME = "";
    input clk;
    input rst;
    input save;
    input [0:0] in;
    output reg [0:0] out;

    initial begin
        out = 1'b0;
    end
    
    always @ (posedge clk) begin
        if (rst)
            out <= 1'b0;
        else if (save)
            out <= in;
    end
endmodule
