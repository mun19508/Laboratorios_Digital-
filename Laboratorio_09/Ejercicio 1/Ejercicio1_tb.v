// Test bench: Ejercicio 1
//Daniel Mundo 19508
module testbench();
reg [3:0]D;
reg clk;
reg reset;
reg eneable;
wire [3:0]Q; //Se define el tipo de "variable" con las cuales va a trabajar
            //el modulo.
FlipFlopD4 f1(eneable, reset, clk, D[3:0], Q[3:0]);
FlipFlopD2 f2(eneable, reset, clk, D[1:0], Q[1:0]);
FlipFlopD f3(eneable, reset, clk, D[0], Q[0]); //Se llaman a los modulos.
initial begin
clk = 0; reset = 1; eneable = 0; D=4'b1;
#1 reset = 0;
#5 eneable = 1; D=4'b0010;
#3 D=3'b0;
#4 eneable = 0; D=4'b0011;
#6 reset = 1;
#3 eneable = 1; reset = 0; D=3'b0100;
#10 $finish;
end //Es el apartado de las pruebas asignadoles valores a las entradas.
always
#1 clk = !clk;//Se invierte el valor de clk, para simular una verdadera
              //señal de reloj.
initial begin
  $dumpfile("Ejercicio1_tb.vcd");
  $dumpvars(0, testbench);
end //Se crea el archivo para mostrar las pruebas.
endmodule
