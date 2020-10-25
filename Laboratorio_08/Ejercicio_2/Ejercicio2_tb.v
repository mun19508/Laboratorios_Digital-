//Ejercicio 2
module testbench();
reg [11:0] P;
wire [7:0] D;
ROM mem(P,D);
initial
begin
#1
  $display("--------------ROM-------------");
  $display("|    Localidad  |     Dato   |");
  $monitor("| %b  |  %b  |", P, D);
     P = 12'h000;
  #5 P = 12'h001;
  #5 P = 12'h002;
  #5 P = 12'h003;
  #5 P = 12'h004;
  #5 P = 12'h005;
  #5 P = 12'h006;
  #5 P = 12'h007;
  #5 P = 12'h008;
  #5 P = 12'h009;
  #5 P = 12'h00A;
  #500 $finish;
end
initial begin
       $dumpfile("Ejercicio2_tb.vcd");
       $dumpvars(0,testbench);
   end

endmodule
