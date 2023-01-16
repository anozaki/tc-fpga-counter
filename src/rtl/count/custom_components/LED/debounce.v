module debounce (clk, rst, Input, Output);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] Input;
  output  wire [0:0] Output;

  TC_Add # (.UUID(64'd1034884700093803003 ^ UUID), .BIT_WIDTH(64'd16)) Add16_0 (.in0(16'd0), .in1(wire_5), .ci(wire_1), .out(wire_4), .co());
  TC_Mux # (.UUID(64'd3461153118768180239 ^ UUID), .BIT_WIDTH(64'd16)) Mux16_1 (.sel(wire_1), .in0(16'd0), .in1(wire_6), .out(wire_5));
  TC_DelayLine # (.UUID(64'd2761690982520336461 ^ UUID), .BIT_WIDTH(64'd16)) DelayLine16_2 (.clk(clk), .rst(rst), .in(wire_0), .out(wire_6));
  TC_Mux # (.UUID(64'd2720605976339844099 ^ UUID), .BIT_WIDTH(64'd16)) Mux16_3 (.sel(wire_3), .in0(wire_4), .in1(wire_5), .out(wire_0));
  TC_IndexerBit # (.UUID(64'd3845562737410750437 ^ UUID), .INDEX(64'd15)) IndexerBit_4 (.in({{48{1'b0}}, wire_0 }), .out(wire_2));
  TC_DelayLine # (.UUID(64'd1588202465197477437 ^ UUID), .BIT_WIDTH(64'd1)) DelayLine1_5 (.clk(clk), .rst(rst), .in(wire_2), .out(wire_3));

  wire [15:0] wire_0;
  wire [0:0] wire_1;
  assign wire_1 = Input;
  wire [0:0] wire_2;
  assign Output = wire_2;
  wire [0:0] wire_3;
  wire [15:0] wire_4;
  wire [15:0] wire_5;
  wire [15:0] wire_6;

endmodule
