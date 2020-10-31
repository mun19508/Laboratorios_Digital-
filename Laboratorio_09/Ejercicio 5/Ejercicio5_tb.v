module testbench();
  reg [6:0]Direccion;
  wire [12:0]Dato; //Se define el tipo de "variable" con las cuales va a trabajar
              //el modulo.
  ROM memoria(Direccion, Dato); //Se llama al modulo.
  initial begin
      $display("|      Direccion      |         Valor        |");
      $display("----------------------------------------------");
    $monitor("|      %b      |    %b       |", Direccion, Dato);
  end //Se inicia la fase de las pruebas.
  initial begin
           Direccion = 7'b0000111; //caso 2
        #1 Direccion = 7'b0000011; // caso 3
        #1 Direccion = 7'b0001101; //caso 4
        #1 Direccion = 7'b0001011; // caso 5
        #1 Direccion = 7'b0010111; //caso 6
        #1 Direccion = 7'b0011111; // caso 7
        #1 Direccion = 7'b0011001;
        #1 Direccion = 7'b0100101;
        #1 Direccion = 7'b0000110;  // caso 1
        #1 Direccion = 7'b0100011; //caso 8
        #1 Direccion = 7'b0101111; //caso 9
        #1 Direccion = 7'b0110101; //caso 10
        #1 Direccion = 7'b0111111; //caso 11
        #1 Direccion = 7'b1000111; //caso 12
        #1 Direccion = 7'b1000101; //caso 13
        #1 Direccion = 7'b1001011; //caso 14
        #1 Direccion = 7'b1001001; //caso 15
        #1 Direccion = 7'b1010001; //caso 16
        #1 Direccion = 7'b1011001; //Casos 17
        #1 Direccion = 7'b0101101;
        #1 Direccion = 7'b1100101; //Caso 18
        #1 Direccion = 7'b1101011;//Caso 19
        #1 Direccion = 7'b0110011;
        #1 Direccion = 7'b1111001; //Caso 21
        #1 Direccion = 7'b0111001;
        #1 Direccion = 7'b1110111; //caso 20
  end    //Se finaliza las pruebas luego de cierto tiempo.
  initial begin
    $dumpfile("Ejercicio5_tb.vcd");
    $dumpvars(0, testbench);
  end //Se crea el archivo para mostrar las pruebas.
endmodule
