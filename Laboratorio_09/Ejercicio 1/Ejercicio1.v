//Ejercicio 1: Flip Flop Tipo D de dos salidas
//Daniel Mundo
module FlipFlopD(input eneable, reset, clk, input D, output reg Q);
  always @ (posedge clk, posedge reset)
  begin
    if (reset) Q <= 1'b0;
    else if (eneable) Q <= D;
    end
endmodule //El modulo describe que durante el flanco positivo de "clk" va reali-
        //zar la operacion de comprobar si "reset" esta encendido o no, en caso
        //afirmativo la salida "Q" es igual a 0 sino es igual al valor en ese
        //instante de la entrada "D".
module FlipFlopD2(input eneable2, reset2, clk2,
                  input [1:0]D2, output wire [1:0]Q2);
  FlipFlopD f1(eneable2, reset2, clk2, D2[0], Q2[0]);
  FlipFlopD f2(eneable2, reset2, clk2, D2[1], Q2[1]);
endmodule   //Este modulo llama dos veces al modulo de FlipFlopD, lo que dife-
            //rencia a los dos modulos llamados es la entrada "D" y salida "Q".
module FlipFlopD4(input eneable3, reset3, clk3, input [3:0]D3,
                  output wire [3:0]Q3);
  FlipFlopD2 f3(eneable3, reset3, clk3, D3[1:0], Q3[1:0]);
  FlipFlopD2 f4(eneable3, reset3, clk3, D3[3:2], Q3[3:2]);
endmodule //Este modulo al igual que el anterior llama 2 veces al modulo
          //FlipFlopD2, teniendo asi una salida "Q" de 4 bits. 
