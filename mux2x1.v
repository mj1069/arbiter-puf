module mux2x1(
  input in_0, in_1,sel,
  output reg out
);
  assign out = sel ? in_1 : in_0;
endmodule
