module TC_IndexerBit (in, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter INDEX = 0;
    input [63:0] in;
    output out;
    
    assign out = in[INDEX];
endmodule
