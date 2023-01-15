/*
   Parameters:
     STAGES = 4
*/
module dff_pipeline (
    input clk,
    input rst_in,
    output reg rst_out
  );
  
  localparam STAGES = 3'h4;
  
  
  reg [3:0] M_stage_d, M_stage_q = 4'hf;
  
  always @* begin
    M_stage_d = M_stage_q;
    
    M_stage_d = {M_stage_q[0+2-:3], 1'h0};
    rst_out = M_stage_q[3+0-:1];
  end
  
  always @(posedge clk) begin
    if (rst_in == 1'b1) begin
      M_stage_q <= 4'hf;
    end else begin
      M_stage_q <= M_stage_d;
    end
  end
  
endmodule