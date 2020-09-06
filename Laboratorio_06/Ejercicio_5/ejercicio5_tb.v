module testbench();
  reg [0:3] d;               //entrada
  wire [0:3] y;            //salida
  reg reset, set, clk;    //reloj y resetear

  FlipFlopD fp(d, clk, reset, set, out);
  initial begin
    d = 4'b0000; reset= 0; set=0;
    #1
    d=4'b0001;
    #2
    d=4'b0010;
    #4
    d=4'b0100;
    #4
    d=4'b1000;
    #1
    reset =1;
    #1
    d=4'b0001;
    #2
    d=4'b0010;
    #4
    d=4'b0100;
    #4
    d=4'b1000;
    #1
    d = 4'b0000; reset= 0; set=0;
    #1
    d=4'b0001;
    #2
    d=4'b0010;
    #4
    d=4'b0100;
    #4
    d=4'b1000;
    d = 4'b0000; reset= 0; set=1;
    #3
    d=4'b0010;
    #4
    d=4'b0100;
    #1
    reset =1;
    #1
    d=4'b0001;
    #2
    d=4'b0010;
end

initial begin
    clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #2 clk = 1;
    #2 clk = 0;
    #1 $finish;
end
  initial begin
    $dumpfile("ejercicio5_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule
