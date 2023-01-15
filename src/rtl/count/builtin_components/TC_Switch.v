module TC_Switch(en, in, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 1;
    input en;
    input [BIT_WIDTH-1:0] in;
    output [BIT_WIDTH-1:0] out;
    reg [BIT_WIDTH-1:0] outval;
    
    always @ (en or in) begin
        case(en)
        1'b0 : outval = {BIT_WIDTH{1'b0}};
        1'b1 : outval = in;
        endcase
    end
    assign out = outval;
endmodule
