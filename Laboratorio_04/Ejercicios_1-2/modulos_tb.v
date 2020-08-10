//Modulo para la condiciones de las entradas
//Entradas: A, B, C, D - Salida: Y
module testbench();                       //Declaracion de entradas y salidas
  reg A1, B1, C1,
      B2,
      A3, B3, C3, D3,
      A4, B4, C4, D4,
      A5, B5, C5, D5,
      B6, C6,
      A7, B7, C7, D7,
      A8, B8, C8;                         //Entradas
  wire Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8;    //Salidas
//Modulos de 'modulos.v'
  Tabla_01  T1(A1, B1, C1, Y1);
  Tabla_02  T2(B2, Y2);
  Tabla_03  T3(A3, B3, C3, D3, Y3);
  Tabla_04  T4(A4, B4, C4, D4, Y4);
  Inciso_1  I1(A5, B5, C5, D5, Y5);
  Inciso_2  I2(B6, C6, Y6);
  Inciso_3  I3(A7, B7, C7, D7, Y7);
  Inciso_4  I4(A8, B8, C8, Y8);
//Concdiciones para cada ejercicio
  initial begin                             //Tabla_01
    $display("Tabla_01");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A1, B1, C1, Y1);
        A1=0; B1=0; C1=0;
    #1  A1=0; B1=0; C1=1;
    #1  A1=0; B1=1; C1=1;
    #1  A1=0; B1=1; C1=0;
    #1  A1=1; B1=1; C1=0;
    #1  A1=1; B1=0; C1=0;
    #1  A1=1; B1=0; C1=1;
    #1  A1=1; B1=1; C1=1;
  end

  initial begin                             //Tabla_02
    #8
    $display("Tabla_02");
    $display("B | Y");
    $display("--|--");
    $monitor("%b | %b", B2, Y2);
        B2=0;
    #1  B2=1;
  end

  initial begin                             //Tabla_03
    #10
    $display("Tabla_03");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A3, B3, C3, D3, Y3);
        A3=0; B3=0; C3=0; D3=0;
    #1  A3=0; B3=0; C3=0; D3=1;
    #1  A3=0; B3=0; C3=1; D3=1;
    #1  A3=0; B3=1; C3=1; D3=1;
    #1  A3=1; B3=1; C3=1; D3=1;
    #1  A3=1; B3=1; C3=1; D3=0;
    #1  A3=0; B3=1; C3=1; D3=0;
    #1  A3=0; B3=0; C3=1; D3=0;
    #1  A3=1; B3=0; C3=1; D3=0;
    #1  A3=1; B3=0; C3=0; D3=0;
    #1  A3=1; B3=1; C3=0; D3=0;
    #1  A3=0; B3=1; C3=0; D3=0;
    #1  A3=0; B3=1; C3=0; D3=1;
    #1  A3=1; B3=1; C3=0; D3=1;
    #1  A3=1; B3=0; C3=0; D3=1;
    #1  A3=1; B3=0; C3=1; D3=1;
  end

  initial begin                             //Tabla_04
    #27
    $display("Tabla_04");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A4, B4, C4, D4, Y4);
        A4=0; B4=0; C4=0; D4=0;
    #1  A4=0; B4=0; C4=0; D4=1;
    #1  A4=0; B4=0; C4=1; D4=1;
    #1  A4=0; B4=1; C4=1; D4=1;
    #1  A4=1; B4=1; C4=1; D4=1;
    #1  A4=1; B4=1; C4=1; D4=0;
    #1  A4=0; B4=1; C4=1; D4=0;
    #1  A4=0; B4=0; C4=1; D4=0;
    #1  A4=1; B4=0; C4=1; D4=0;
    #1  A4=1; B4=0; C4=0; D4=0;
    #1  A4=1; B4=1; C4=0; D4=0;
    #1  A4=0; B4=1; C4=0; D4=0;
    #1  A4=0; B4=1; C4=0; D4=1;
    #1  A4=1; B4=1; C4=0; D4=1;
    #1  A4=1; B4=0; C4=0; D4=1;
    #1  A4=1; B4=0; C4=1; D4=1;
  end

  initial begin                             //Inciso_1
    #42
    $display("Inciso_1");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A5, B5, C5, D5, Y5);
        A5=0; B5=0; C5=0; D5=0;
    #1  A5=0; B5=0; C5=0; D5=1;
    #1  A5=0; B5=0; C5=1; D5=1;
    #1  A5=0; B5=1; C5=1; D5=1;
    #1  A5=1; B5=1; C5=1; D5=1;
    #1  A5=1; B5=1; C5=1; D5=0;
    #1  A5=0; B5=1; C5=1; D5=0;
    #1  A5=0; B5=0; C5=1; D5=0;
    #1  A5=1; B5=0; C5=1; D5=0;
    #1  A5=1; B5=0; C5=0; D5=0;
    #1  A5=1; B5=1; C5=0; D5=0;
    #1  A5=0; B5=1; C5=0; D5=0;
    #1  A5=0; B5=1; C5=0; D5=1;
    #1  A5=1; B5=1; C5=0; D5=1;
    #1  A5=1; B5=0; C5=0; D5=1;
    #1  A5=1; B5=0; C5=1; D5=1;
  end

  initial begin                             //Inciso_2
    #58
    $display("Inciso_2");
    $display("B C | Y");
    $display("----|--");
    $monitor("%b %b | %b", B6, C6, Y6);
        B6=0; C6=0;
    #1  B6=1; C6=0;
    #1  B6=1; C6=1;
    #1  B6=0; C6=1;
  end

  initial begin                             //Inciso_3
    #62
    $display("Inciso_3");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A7, B7, C7, D7, Y7);
        A7=0; B7=0; C7=0; D7=0;
    #1  A7=0; B7=0; C7=0; D7=1;
    #1  A7=0; B7=0; C7=1; D7=1;
    #1  A7=0; B7=1; C7=1; D7=1;
    #1  A7=1; B7=1; C7=1; D7=1;
    #1  A7=1; B7=1; C7=1; D7=0;
    #1  A7=0; B7=1; C7=1; D7=0;
    #1  A7=0; B7=0; C7=1; D7=0;
    #1  A7=1; B7=0; C7=1; D7=0;
    #1  A7=1; B7=0; C7=0; D7=0;
    #1  A7=1; B7=1; C7=0; D7=0;
    #1  A7=0; B7=1; C7=0; D7=0;
    #1  A7=0; B7=1; C7=0; D7=1;
    #1  A7=1; B7=1; C7=0; D7=1;
    #1  A7=1; B7=0; C7=0; D7=1;
    #1  A7=1; B7=0; C7=1; D7=1;
  end

  initial begin                             //Inciso_4
    #78
    $display("Inciso_4");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A8, B8, C8, Y8);
        A8=0; B8=0; C8=0;
    #1  A8=0; B8=0; C8=1;
    #1  A8=0; B8=1; C8=1;
    #1  A8=0; B8=1; C8=0;
    #1  A8=1; B8=1; C8=0;
    #1  A8=1; B8=0; C8=0;
    #1  A8=1; B8=0; C8=1;
    #1  A8=1; B8=1; C8=1;
  end

  initial                                  //Finalizacion de las condiciones
    #86 $finish;

  initial begin
    $dumpfile("modulos_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
