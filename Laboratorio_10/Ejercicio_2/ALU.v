//Ejercicio 2: Circuito 2; ALU, Acumulador & Buffers Triestado
//Daniel Mundo 19508
module ACU(input wire [3:0]D, input wire eneable, reset, clk, output reg [3:0]Q);
  always @ (posedge clk, posedge reset) begin
    if (reset) Q <= 0;
    else if (eneable) begin
        Q <= D;
    end
  end
endmodule //Es parecido a un FlipFlop tipo D de cuatro bits de  entrada y salida,
          //si el bit eneable esta en uno deja pasar la entrada D y si reset es-
          //ta en uno limpia la salida.
module ALU_aritmetica(input wire [3:0] A,B, input wire [2:0] Select,
                      output wire Zero, Carry, output wire [3:0] Y ); //B corresponde a la
                      //salida del ACU.
  reg [4:0] Oprnd;
  assign Zero = ~(Y[3]|Y[2]|Y[1]|Y[0]); //Solo si todos los bits son cero, Zero esta en 1.
  assign Carry = Oprnd[4]; //Se enciende solo si el quinto bit de Oprnd es 1.
  assign Y = Oprnd[4:0];
  always @ (A, B, Select) begin // siempre que cambie control, A o B.
    case (Select)
      3'b000: Oprnd <= A; //Deja pasar A
      3'b001: Oprnd <= A-B; //Resta A con B, tambien sirve para saber si A > B
      3'b010: Oprnd <= B; //Deja pasar B
      3'b011: Oprnd <= A+B; //Adiciona A con B
      3'b100: Oprnd <= ~(A|B); //NOR de A y B
      default: Oprnd <= 0;
    endcase
  end
endmodule
module Circuito2(input [3:0]DataIn, input [2:0] Select, input clk, reset, enTri, enACU,
                 output wire [3:0] DataOut, output wire Z, C);
  wire [3:0] ALUOut, ACUOut;
  ALU_aritmetica A1(ACUOut, DataIn, Select, Z, C, ALUOut);
  Buffer4bits busDriver(enTri, ALUOut, DataOut);
  ACU A0(ALUOut, enACU, reset, clk, ACUOut);
endmodule 
