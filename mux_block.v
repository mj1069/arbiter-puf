module mux_block(
  input in_up,in_down,sel,
  output out_up,out_down
);
  
  mux2x1 mux_up(in_up,in_down,sel,out_up);
  mux2x1 mux_down(in_down,in_up,sel,out_down);
  
endmodule
