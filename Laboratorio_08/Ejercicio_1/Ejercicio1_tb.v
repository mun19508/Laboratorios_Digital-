module testbench();
reg [11:0] data;
reg clk;
reg reset;
reg load;
reg eneable;
wire [11:0] counter;

counter_12b C1( clk, reset, load, eneable, data, counter);

initial begin
clk = 0; reset = 1; eneable = 0; data = 12'hFFFE; load = 0;
#1 load = 1;  reset = 0;
#5 eneable = 1; load = 0;
#2 data = 12'h00F7; load = 1;
#4 load = 0;
#6 reset = 1;
#3 eneable = 1; reset = 0;
#7 $finish;
end

always
#1 clk = !clk;

initial begin
  $dumpfile("Ejercicio1_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
