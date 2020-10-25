module testbench();
reg [11:0] data;
reg clk;
reg reset;
reg load;
reg eneable;
wire [11:0] counter;

counter_12b C1( clk, reset, load, eneable, data, counter);

initial begin
clk = 0; reset = 1; eneable = 0;
#1 data = 12'b111111111110; load = 1;
#6 reset = 1;
#2 reset = 0;
#2 load  = 0;
#2 eneable = 1;
#2 data = 12'b1;
#800 reset = 1;
#1  reset = 0; load = 1;
#50 eneable = 0;
#100 $finish;
end

always
#1 clk = !clk;

initial begin
  $dumpfile("Ejercicio1_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
