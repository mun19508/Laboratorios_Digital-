//Ejercicio 2: Memoria ROM
//Daniel Mundo 19508
module ROM(input wire [11:0]direccion,
            output wire [7:0]dato);
  reg [7:0] Memoria [0:4095];
  initial begin
    $readmemh("Archivo_Hex.txt", Memoria);
  end
  assign dato = Memoria[direccion];

endmodule
