module counter_tb;
  reg clk, reset, enable; 
  wire [31:0] count; 
    
  counter U0 ( 
  .clk    (clk), 
  .reset  (reset), 
  .enable (enable), 
  .count  (count) 
  ); 
    
endmodule 
