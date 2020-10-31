//Ejercicio 5: Rom con cases y don't cares
//Daniel Mundo 19508
module ROM(input [6:0]direccion, output reg [12:0] valor);
always @ ( direccion ) begin
  casez(direccion)
    7'b??????0 : valor <= 13'b1000000001000;
    7'b00001?1 : valor <= 13'b0100000001000;
    7'b00000?1 : valor <= 13'b1000000001000;
    7'b00011?1 : valor <= 13'b1000000001000;
    7'b00010?1 : valor <= 13'b0100000001000;
    7'b0010??1 : valor <= 13'b0001001000010;
    7'b0011??1 : valor <= 13'b1001001100000;
    7'b0100??1 : valor <= 13'b0011010000010;
    7'b0101??1 : valor <= 13'b0011010000100;
    7'b0110??1 : valor <= 13'b1011010100000;
    7'b0111??1 : valor <= 13'b1000000111000;
    7'b1000?11 : valor <= 13'b0100000001000;
    7'b1000?01 : valor <= 13'b1000000001000;
    7'b1001?11 : valor <= 13'b1000000001000;
    7'b1001?01 : valor <= 13'b0100000001000;
    7'b1010??1 : valor <= 13'b0011011000010;
    7'b1011??1 : valor <= 13'b1011011100000;
    7'b1100??1 : valor <= 13'b0100000001000;
    7'b1101??1 : valor <= 13'b0000000001001;
    7'b1110??1 : valor <= 13'b0011100000010;
    7'b1111??1 : valor <= 13'b1011100100000;
    default: valor <= 0;//cualquier valor que no coincida con los anteriores es 0.
  endcase
end
endmodule //Es una memoria ROM que implementa la instruccion "casez", que posi-
          //bilita el uso de don't cares, esta memoria en vez de recuperar valo-
          //res desde un archivo los recupera desde "si mismo".
