//Ejercicio 3: ALU
//Daniel Mundo 19508
//Se implementa una ALU de modo behavorial
module ALU(input [2:0] Select,
           input [3:0] A, B,
           output [3:0] Out,
           output CarryOut);
  wire [4:0]carry;
  reg [3:0]result;
  assign Out = result;
  assign carry = {1'b0, A}+{1'b0, B};
  assign CarryOut = carry[4];
  always @ ( * )
  begin
    case (Select)
    3'b000: //A AND B
      result = A & B;
    3'b001: //A OR B
      result = A | B;
    3'b010: //A + B
      result = A + B;
    3'b011: //no se utiliza, debe de poner en uno toda la salida
      result = 4'b1111;
    3'b100: //A AND B'
      result = A & ~B;
    3'b101:  //A OR B'
      result = A | ~B;
    3'b110: //A - B
      result = A - B;
    3'b111: //SLT
      result = (A<B)? 4'd1:4'd0;
    default:result = A & B;
    endcase
  end
endmodule //
