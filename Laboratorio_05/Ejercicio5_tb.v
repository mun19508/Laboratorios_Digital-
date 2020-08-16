//Modulo para la condiciones de las entradas
//Entradas: A, B, C - Salida: Y
module testbench();                       //Declaracion de entradas y salidas
  reg A, B, C, D, E, F;                        //A0, B0, C0, A1, B1, C1, A2, B2, C2,
              //Entradas
  wire Y0, Y1, Y2, Y3, Y4, Y5;    //Salidas
//Modulos de 'Ejercicio5.v'
  //Mux2  M0);
  //Mux4  M1;
  //Mux8  M2;
  T1M2  T0(A, B, C, Y0);
  T1M4  T1(A, B, C, Y1);
  T1M8  T2(A, B, C, Y2);
  T2M2  T3(D, E, F, Y3);
  T2M4  T4(D, E, F, Y4);
  T2M8  T5(D, E, F, Y5);

  initial begin                             //IMPLEMENTACION DE TABLA 01

    $display("Tabla 01");
    $display("Mux 2:1            Mux 4:1            Mux 8:1" );
    $display("------             -------            --------");
    $monitor("%b %b %b | %b   %b %b %b | %b       %b %b %b | %b",
              A, B, C, Y0, A, B, C, Y1, A, B, C, Y2);
        A=0; B=0; C=0;
    #1  A=0; B=0; C=1;
    #1  A=0; B=1; C=1;
    #1  A=0; B=1; C=0;
    #1  A=1; B=1; C=0;
    #1  A=1; B=0; C=0;
    #1  A=1; B=0; C=1;
    #1  A=1; B=1; C=1;
  end

  initial begin                             //IMPLEMENTACION DE TABLA 02
    #8
    $display("Tabla 02");
    $display("Mux 2:1            Mux 4:1            Mux 8:1" );
    $display("-------------   --------------      -----------");
    $monitor("%b %b %b | %b   %b %b %b | %b       %b %b %b | %b",
              D, E, F, Y3, D, E, F, Y4, D, E, F, Y5);
          D=0; E=0; F=0;
      #1  D=0; E=0; F=1;
      #1  D=0; E=1; F=1;
      #1  D=0; E=1; F=0;
      #1  D=1; E=1; F=0;
      #1  D=1; E=0; F=0;
      #1  D=1; E=0; F=1;
      #1  D=1; E=1; F=1;
    end

    initial                                  //Finalizacion de las condiciones
      #20 $finish;

  initial begin
    $dumpfile("Ejercicio5_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule
