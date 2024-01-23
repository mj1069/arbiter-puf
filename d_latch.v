module d_latch(
  input d_in, clk, reset,
  output reg q_out
);
  always @( clk) begin
    if(reset)
      q_out <= 1'b0;
    else if (!reset)
      q_out <= d_in;
  end
endmodule
