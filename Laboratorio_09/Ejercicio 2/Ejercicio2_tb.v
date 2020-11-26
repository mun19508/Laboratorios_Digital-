//Test Bench: Ejercicio 2
module testbench();
reg clk;
reg reset;
reg eneable;
wire Q; //Se define el tipo de "variable" con las cuales va a trabajar
      //el modulo.
FlipFlopD f3(eneable, reset, clk, ~Q, Q); //Se llama al modulo.
initial begin
clk = 0; reset = 1; eneable = 1;
#1 reset = 0;
#10 eneable = 0; reset = 1;
#3 eneable = 1; reset = 0;
#10 $finish;
end //Es el apartado de las pruebas asignadoles valores a las entradas.
always
#5 clk = !clk; //Se invierte el valor de clk, para simular una verdadera
              //señal de reloj.
initial begin
  $dumpfile("Ejercicio2_tb.vcd");
  $dumpvars(0, testbench);
end  //Se crea el archivo para mostrar las pruebas.
endmodule
