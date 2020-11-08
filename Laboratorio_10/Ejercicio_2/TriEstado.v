//Ejercicio 3: Tri Estado de 4 bits
//Daniel Mundo 19508
module Buffer4bits(input T, input [3:0]I, output wire [3:0]Y);
  assign Y = (T) ? I: 4'bz ;
endmodule //El modulo realiza la operecion que mientras "T" sea 0 la salida "Y"
        //va a estar en alta impedancia, en caso contrario sera el valor que
        // tenga en ese instante la entrada "I".
