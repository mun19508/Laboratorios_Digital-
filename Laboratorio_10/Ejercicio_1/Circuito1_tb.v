//Ejercicio 1
module testbench();
reg [11:0] count;
reg load;
reg clk;
reg reset;
reg  eneable_counter, eneable_fetch;
wire [3:0] Intrucciones, Operand;
wire [7:0] program_byte; //Se define el tipo de "variable" con las cuales va a
            //trabajar el modulo.
circuito c1(count[11:0], eneable_fetch, eneable_counter,  reset, clk, load,
            Intrucciones[3:0], Operand[3:0], program_byte[7:0]); //Se llaman a los modulos.
initial begin
clk = 0; reset = 1; eneable_fetch = 0; eneable_counter = 0; count = 12'h000; load = 1;
#1 reset = 0;
#1 load = 0;
#1 eneable_counter = 1;
#1 count =12'h001;
#1 eneable_fetch = 1;
#10 eneable_counter = 0;
#6 reset = 1;
#1 load = 1;
#1 load = 0;
#1 reset = 0;
#3 eneable_counter = 1;
#50 $finish;
end //Es el apartado de las pruebas asignadoles valores a las entradas.
always
#1 clk = !clk;//Se invierte el valor de clk, para simular una verdadera
              //señal de reloj.
initial begin
  $dumpfile("Circuito1_tb.vcd");
  $dumpvars(0, testbench);
end //Se crea el archivo para mostrar las pruebas.
endmodule
