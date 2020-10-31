//Test Bench: Ejercicio 3
module testbench();
reg J, K;
reg clk;
reg reset;
reg eneable;
wire Q;  //Se define el tipo de "variable" con las cuales va a trabajar
        //el modulo.
FlipFlopJK f2(eneable, reset, clk, J, K, Q); //Se llama al modulo.
initial begin
clk = 0; reset = 1; eneable = 1; J=0; K=0;
#1 reset = 0; J=1;
#5 K=1;
#3 J=0;
#3 J=1;
#5 $finish;
end //Es el apartado de las pruebas asignadoles valores a las entradas.
always
#1 clk = !clk;
//Se invierte el valor de clk, para simular una verdadera señal de reloj.
initial begin
  $dumpfile("Ejercicio3_tb.vcd");
  $dumpvars(0, testbench);
end //Se crea el archivo para mostrar las pruebas.
endmodule
