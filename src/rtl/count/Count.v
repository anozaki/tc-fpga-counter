module Count (clk, rst, cycle, debug, sel1, sel2, sel3, sel4, seg);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [31:0] cycle;
  output  wire [0:0] debug;
  output  wire [0:0] sel1;
  output  wire [0:0] sel2;
  output  wire [0:0] sel3;
  output  wire [0:0] sel4;
  output  wire [7:0] seg;

  TC_Counter # (.UUID(64'd2825092236961754806 ^ UUID), .BIT_WIDTH(64'd32), .count(32'd1)) Counter32_0 (.clk(clk), .rst(rst), .save(wire_3), .in(wire_38), .out(wire_36));
  TC_Equal # (.UUID(64'd2815436595443163428 ^ UUID), .BIT_WIDTH(64'd32)) Equal32_1 (.in0(wire_36), .in1(wire_5), .out(wire_3));
  TC_Constant # (.UUID(64'd2195057612476342464 ^ UUID), .BIT_WIDTH(64'd32), .value(32'h0)) Constant32_2 (.out(wire_38));
  TC_Constant # (.UUID(64'd546252498989508678 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_3 (.out(wire_22));
  TC_Not # (.UUID(64'd2422787759609528762 ^ UUID), .BIT_WIDTH(64'd1)) Not_4 (.in(wire_23), .out(wire_8));
  TC_BitMemory # (.UUID(64'd1705741650994387132 ^ UUID)) BitMemory_5 (.clk(clk), .rst(rst), .save(wire_3), .in(wire_8), .out(wire_23));
  TC_Counter # (.UUID(64'd483971983369626439 ^ UUID), .BIT_WIDTH(64'd8), .count(8'd1)) Counter8_6 (.clk(clk), .rst(rst), .save(wire_13), .in(wire_21), .out(wire_40));
  TC_Splitter8 # (.UUID(64'd4101664230818326465 ^ UUID)) Splitter8_7 (.in(wire_33), .out0(wire_15), .out1(wire_20), .out2(wire_26), .out3(), .out4(), .out5(), .out6(), .out7());
  TC_Decoder3 # (.UUID(64'd3597258672609514624 ^ UUID)) Decoder3_8 (.dis(1'd0), .sel0(wire_15), .sel1(wire_20), .sel2(wire_26), .out0(wire_14), .out1(wire_12), .out2(wire_16), .out3(wire_7), .out4(), .out5(), .out6(), .out7());
  TC_Constant # (.UUID(64'd3936481746850418435 ^ UUID), .BIT_WIDTH(64'd8), .value(8'hC8)) Constant8_9 (.out(wire_19));
  TC_Equal # (.UUID(64'd117864268316446527 ^ UUID), .BIT_WIDTH(64'd8)) Equal8_10 (.in0(wire_19), .in1(wire_40), .out(wire_13));
  TC_Add # (.UUID(64'd1980091076031166279 ^ UUID), .BIT_WIDTH(64'd8)) Add8_11 (.in0(wire_33), .in1(wire_9), .ci(1'd0), .out(wire_4), .co());
  TC_Constant # (.UUID(64'd2518862973311040322 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_12 (.out(wire_21));
  TC_Register # (.UUID(64'd2081291577489777194 ^ UUID), .BIT_WIDTH(64'd8)) Register8_13 (.clk(clk), .rst(rst), .load(wire_30), .save(wire_13), .in(wire_29), .out(wire_33));
  TC_Constant # (.UUID(64'd153928343309100327 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h1)) Constant8_14 (.out(wire_9));
  TC_Constant # (.UUID(64'd1286628564572084475 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_15 (.out(wire_30));
  TC_Mux # (.UUID(64'd2948685002671300977 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_16 (.sel(wire_31), .in0(wire_4), .in1(wire_39), .out(wire_29));
  TC_Constant # (.UUID(64'd3545286715238984315 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_17 (.out(wire_39));
  TC_Constant # (.UUID(64'd4122733212507919227 ^ UUID), .BIT_WIDTH(64'd16), .value(16'h1)) Constant16_18 (.out(wire_24));
  TC_Register # (.UUID(64'd1625823934977110048 ^ UUID), .BIT_WIDTH(64'd16)) Register16_19 (.clk(clk), .rst(rst), .load(wire_22), .save(wire_3), .in(wire_25), .out(wire_6));
  TC_Add # (.UUID(64'd122654855124550273 ^ UUID), .BIT_WIDTH(64'd16)) Add16_20 (.in0(wire_24), .in1(wire_6), .ci(1'd0), .out(wire_25), .co());
  TC_Mul # (.UUID(64'd3153334337711300085 ^ UUID), .BIT_WIDTH(64'd16)) DivMod16_21 (.in0(wire_6), .in1(wire_0), .out0(wire_18), .out1(wire_11));
  TC_Mul # (.UUID(64'd1019817654100684335 ^ UUID), .BIT_WIDTH(64'd16)) DivMod16_22 (.in0(wire_18), .in1(wire_0), .out0(wire_34), .out1(wire_37));
  TC_Mul # (.UUID(64'd1272800169210062040 ^ UUID), .BIT_WIDTH(64'd16)) DivMod16_23 (.in0(wire_34), .in1(wire_0), .out0(wire_28), .out1(wire_17));
  TC_Mul # (.UUID(64'd2764462783378612215 ^ UUID), .BIT_WIDTH(64'd16)) DivMod16_24 (.in0(wire_28), .in1(wire_0), .out0(), .out1(wire_10));
  TC_Constant # (.UUID(64'd2381158419837267810 ^ UUID), .BIT_WIDTH(64'd16), .value(16'hA)) Constant16_25 (.out(wire_0));
  BCDto7 # (.UUID(64'd1597852324588432281 ^ UUID)) BCDto7_26 (.clk(clk), .rst(rst), .Input(wire_11[7:0]), .Output(wire_35));
  BCDto7 # (.UUID(64'd2214513227759376550 ^ UUID)) BCDto7_27 (.clk(clk), .rst(rst), .Input(wire_37[7:0]), .Output(wire_32));
  BCDto7 # (.UUID(64'd3044709782342299070 ^ UUID)) BCDto7_28 (.clk(clk), .rst(rst), .Input(wire_17[7:0]), .Output(wire_1));
  BCDto7 # (.UUID(64'd1468960662727354083 ^ UUID)) BCDto7_29 (.clk(clk), .rst(rst), .Input(wire_10[7:0]), .Output(wire_27));
  TC_Switch # (.UUID(64'd256255929719074981 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_30 (.en(wire_14), .in(wire_35), .out(wire_2_3));
  TC_Switch # (.UUID(64'd2563149550945562995 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_31 (.en(wire_12), .in(wire_32), .out(wire_2_2));
  TC_Switch # (.UUID(64'd581565553225179143 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_32 (.en(wire_16), .in(wire_1), .out(wire_2_0));
  TC_Switch # (.UUID(64'd737480421798412485 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_33 (.en(wire_7), .in(wire_27), .out(wire_2_1));
  TC_IndexerBit # (.UUID(64'd2496807660048089843 ^ UUID), .INDEX(64'd2)) IndexerBit_34 (.in({{56{1'b0}}, wire_4 }), .out(wire_31));

  wire [15:0] wire_0;
  wire [7:0] wire_1;
  wire [7:0] wire_2;
  wire [7:0] wire_2_0;
  wire [7:0] wire_2_1;
  wire [7:0] wire_2_2;
  wire [7:0] wire_2_3;
  assign wire_2 = wire_2_0|wire_2_1|wire_2_2|wire_2_3;
  assign seg = wire_2;
  wire [0:0] wire_3;
  wire [7:0] wire_4;
  wire [31:0] wire_5;
  assign wire_5 = cycle;
  wire [15:0] wire_6;
  wire [0:0] wire_7;
  assign sel4 = wire_7;
  wire [0:0] wire_8;
  wire [7:0] wire_9;
  wire [15:0] wire_10;
  wire [15:0] wire_11;
  wire [0:0] wire_12;
  assign sel2 = wire_12;
  wire [0:0] wire_13;
  wire [0:0] wire_14;
  assign sel1 = wire_14;
  wire [0:0] wire_15;
  wire [0:0] wire_16;
  assign sel3 = wire_16;
  wire [15:0] wire_17;
  wire [15:0] wire_18;
  wire [7:0] wire_19;
  wire [0:0] wire_20;
  wire [7:0] wire_21;
  wire [0:0] wire_22;
  wire [0:0] wire_23;
  assign debug = wire_23;
  wire [15:0] wire_24;
  wire [15:0] wire_25;
  wire [0:0] wire_26;
  wire [7:0] wire_27;
  wire [15:0] wire_28;
  wire [7:0] wire_29;
  wire [0:0] wire_30;
  wire [0:0] wire_31;
  wire [7:0] wire_32;
  wire [7:0] wire_33;
  wire [15:0] wire_34;
  wire [7:0] wire_35;
  wire [31:0] wire_36;
  wire [15:0] wire_37;
  wire [31:0] wire_38;
  wire [7:0] wire_39;
  wire [7:0] wire_40;

endmodule
