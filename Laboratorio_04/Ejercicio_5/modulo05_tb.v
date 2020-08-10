//Modulo para la condiciones de las entradas
//Entradas: A, B, C, D - Salida: Y
module testbench();                       //Declaracion de entradas y salidas
  reg A1, B1, C1,
      A2, B2, C2,
      A3, B3, C3,
      A4, B4, C4,
      A5, B5, C5,
      A6, B6, C6;                  //Entradas
  wire Y1, Y2, Y3, Y4, Y5, Y6;    //Salidas
//Modulos de 'modulo05.v'
  POS_GM  P1(A1, B1, C1, Y1);
  SOP_GM  S1(A2, B2, C2, Y2);
  ER_GM   E1(A3, B3, C3, Y3);
  POS_BM  P2(A4, B4, C4, Y4);
  SOP_BM  S2(A5, B5, C5, Y5);
  ER_BM   E2(A6, B6, C6, Y6);

  initial begin                             //POS_GM
    $display("POS");
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

  initial begin                             //SOP_GM
    #8
    $display("SOP");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A2, B2, C2, Y2);
        A2=0; B2=0; C2=0;
    #1  A2=0; B2=0; C2=1;
    #1  A2=0; B2=1; C2=1;
    #1  A2=0; B2=1; C2=0;
    #1  A2=1; B2=1; C2=0;
    #1  A2=1; B2=0; C2=0;
    #1  A2=1; B2=0; C2=1;
    #1  A2=1; B2=1; C2=1;
  end

  initial begin                             //ER_GM
    #16
    $display("Ecuacion reducida");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A3, B3, C3, Y3);
        A3=0; B3=0; C3=0;
    #1  A3=0; B3=0; C3=1;
    #1  A3=0; B3=1; C3=1;
    #1  A3=0; B3=1; C3=0;
    #1  A3=1; B3=1; C3=0;
    #1  A3=1; B3=0; C3=0;
    #1  A3=1; B3=0; C3=1;
    #1  A3=1; B3=1; C3=1;
  end

  initial begin                             //POS_BM
    #32
    $display("POS");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A4, B4, C4, Y4);
        A4=0; B4=0; C4=0;
    #1  A4=0; B4=0; C4=1;
    #1  A4=0; B4=1; C4=1;
    #1  A4=0; B4=1; C4=0;
    #1  A4=1; B4=1; C4=0;
    #1  A4=1; B4=0; C4=0;
    #1  A4=1; B4=0; C4=1;
    #1  A4=1; B4=1; C4=1;
  end

  initial begin                             //SOP_BM
    #40
    $display("SOP");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A5, B5, C5, Y5);
        A5=0; B5=0; C5=0;
    #1  A5=0; B5=0; C5=1;
    #1  A5=0; B5=1; C5=1;
    #1  A5=0; B5=1; C5=0;
    #1  A5=1; B5=1; C5=0;
    #1  A5=1; B5=0; C5=0;
    #1  A5=1; B5=0; C5=1;
    #1  A5=1; B5=1; C5=1;
  end

  initial begin                             //ER_BM
      #48
      $display("Ecuacion reducida");
      $display("A B C | Y");
      $display("------|--");
      $monitor("%b %b %b | %b", A6, B6, C6, Y6);
          A6=0; B6=0; C6=0;
      #1  A6=0; B6=0; C6=1;
      #1  A6=0; B6=1; C6=1;
      #1  A6=0; B6=1; C6=0;
      #1  A6=1; B6=1; C6=0;
      #1  A6=1; B6=0; C6=0;
      #1  A6=1; B6=0; C6=1;
      #1  A6=1; B6=1; C6=1;
    end

    initial                                  //Finalizacion de las condiciones
      #56 $finish;

  initial begin
    $dumpfile("modulo05_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule
