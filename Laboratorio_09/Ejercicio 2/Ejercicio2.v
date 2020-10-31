//Ejercicio 2: Flip Flop Tipo T
//Daniel Mundo 19508
module FlipFlopT(input eneable, reset, clk, output wire Q);
  FlipFlopD f1(eneable, reset, clk, ~Q, Q);
endmodule //Este modulo describe que durante cada flanco de reloj la entrada "D"
          //del FlipFlop tipo D es el valor inverso de la salida actual "Q".
module FlipFlopD(input eneable1, reset1, clk1, input D, output reg Q1);
  always @ (posedge clk1, posedge reset1)
  begin
    if (reset1) Q1 <= 1'b0;
    else if (eneable1) Q1 <= D;
    end
endmodule //Del ejercicio 1, el funcionamiento se explica en el archivo:
        // "Ejercicio1.v", carpeta Ejercicio 1.
