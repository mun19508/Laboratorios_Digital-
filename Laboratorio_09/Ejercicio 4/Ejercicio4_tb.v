//Test Bench: Ejercicio 4
module testbench();
reg [3:0]I;
reg T;
wire [3:0]Y; //Se define el tipo de "variable" con las cuales va a trabajar
            //el modulo.
Buffer4bits CON(T, I,Y); //Se llama al modulo.
initial begin
  $display("-------------Buffer Tri Estado-------------");
  $display("|   Entrada   |   Eneable   |   Salida    |");
  $monitor("|   %b      |      %b      |    %b     |", I, T, Y);
  I = 4'h0; T = 0;
  #2 T = 1; I = 4'h1;
  #2 T = 1; I = 4'hF;
  #2 T = 0; I = 4'hA;
end //Se inicia la fase de las pruebas.
initial
  #10 $finish;
  //Se finaliza las pruebas luego de cierto tiempo.
initial begin
  $dumpfile("Ejercicio4_tb.vcd");
  $dumpvars(0, testbench);
end //Se crea el archivo para mostrar las pruebas.
endmodule
