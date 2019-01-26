// Verilog code for Read Pointer sub-module 
`timescale 1 ns/100 ps
 module read_pointer(rptr,fifo_rd,rd,fifo_empty,clk,rst_n);  
  input rd,fifo_empty,clk,rst_n;  
  output[4:0] rptr;  
  output fifo_rd;  
  reg[4:0] rptr;  
  assign fifo_rd = (~fifo_empty)& rd;  
  always @(posedge clk or negedge rst_n)  
  begin  
   if(~rst_n) rptr <= 5'b00000;  
   else if(fifo_rd)  
    rptr <= rptr + 5'b00001;  
   else  
    rptr <= rptr;  
  end  
 endmodule  
