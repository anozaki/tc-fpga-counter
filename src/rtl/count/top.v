/// Top-v
module top (clk, rst_n, io_sel_0, io_sel_1, io_sel_2, io_sel_3, io_seg, hex_sel_btn, debug_timer, debug_reset);
  input clk;
  input rst_n;
  input hex_sel_btn;

  output io_sel_0;
  output io_sel_1;
  output io_sel_2;
  output io_sel_3;
  output [7:0] io_seg;
  output debug_timer;
  output debug_reset;
  wire [7:0] io_led_t;

  wire io_sel_0_t;
  wire io_sel_1_t;
  wire io_sel_2_t;
  wire io_sel_3_t;
  wire [7:0] io_seg_t;

    Count test_counter (
        .clk(clk),
        .rst(~rst_n),
        .debug(debug_timer),
        .sel1(io_sel_0_t),
        .sel2(io_sel_1_t),
        .sel3(io_sel_2_t),
        .sel4(io_sel_3_t),
        .seg(io_seg_t),
        .cycle(100_000_000),
        .segtiming(200),
        .hex(hex_sel_btn)
    );

    assign io_seg = ~io_seg_t;
    assign io_sel_0 = ~io_sel_0_t;
    assign io_sel_1 = ~io_sel_1_t;
    assign io_sel_2 = ~io_sel_2_t;
    assign io_sel_3 = ~io_sel_3_t;
    assign debug_reset = ~rst_n;

endmodule