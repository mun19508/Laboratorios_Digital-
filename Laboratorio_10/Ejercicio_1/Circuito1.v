//Ejercicio 1: Ciurcuito 1
//Daniel Mundo 19508
module FlipFlopD(input wire eneable2, reset2, clk2, input wire [7:0]D,
                  output reg [3:0] Q0, Q1);
  always @ (posedge clk2, posedge reset2) begin
    if (reset2) begin
        Q0 <= 0;
        Q1 <= 0;
    end
    else if (eneable2) begin
        Q1 <= D[3:0];
        Q0 <= D[7:4];
    end
  end
endmodule //El modulo describe que durante el flanco positivo de "clk" va reali-
        //zar la operacion de comprobar si "reset" esta encendido o no, en caso
        //afirmativo la salida "Q" es igual a 0 sino es igual al valor en ese
        //instante de la entrada "D".
//------------------------------------------------------------------------------
module circuito(input wire [11:0] valor,
                input wire eneable_fetch, eneable_counter, reset, clk, load,
                output wire [3:0] instr, oprnd, output wire [7:0] prog_b);
    wire [11:0] count_w;
    //wire [7:0] prog_b;
    counter_12b c0(eneable_counter, reset, clk, load, valor, count_w);
    ROM r0(count_w, prog_b);
    FlipFlopD f0(eneable_fetch, reset, clk, prog_b, instr, oprnd);
endmodule
