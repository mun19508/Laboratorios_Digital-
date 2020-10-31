//Ejercicio 3: Flip Flop Tipo JK
//Daniel Mundo 19508
module FlipFlopD(input e, r, c, input d, output reg q);
  always @ (posedge c, posedge r)
  begin
    if (r) q <= 1'b0;
    else if (e) q <= d;
    end
endmodule//Del ejercicio 1, el funcionamiento se explica en el archivo:
        // "Ejercicio1.v" carpeta Ejercicio 1.
module Combination(input wire j, k, q,output wire D);
  //Cables auxiliares
  wire notk, notq, y0, y1;
//Niegan las entradas
  not n1(notk, k);
  not n2(notq, q);
//Operacion D = ~K*Q + J*~Q
  and a1(y0, notk, q);
  and a2(y1, j, notq);
  or  o1(D, y1, y0);
endmodule //En este modulo se describe de manera estructural la nube combinacio-
        //nal que va conectada antes del FlipFlop tipo D.
module FlipFlopJK(input eneable, reset, clk, input J, K, output wire Q);
  wire y;
  FlipFlopD   f1(eneable, reset, clk, y, Q);
  Combination m1(J, K, Q, y);
endmodule //En este modulo se une la salida de la nube combinacional a la entra-
        //das "D" del Flip FLop tipo D, teniendo tambien, dicha nube combinacio-
      //nal como parte de sus entradas la salida "Q" del FlipFlop.
