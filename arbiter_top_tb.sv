module arbiter_top_tb;
  parameter N = 128;
  reg in;
  reg reset;
  reg [N-1:0]sel;
  wire out;
  arbiter_top #(N) dut (in,reset,sel,out);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    in = 0;
    reset = 0; 
    sel = 0;
  
    repeat (100) begin   
      #10; in = $random;    
      sel = $random;  
      $display("input = %b, challenge = %b, response = %b",in,sel,out); 
    end
    #10; $finish;
  end
endmodule
