//Nombre del modulo
module T3POS();

// Entradas
reg a, b, c, d;
// Salidas
wire M1, M2, M3, M4, M5, M6, M7, M8, M9;
wire notA, notB, notC, notD;
wire Y;

// Negacion de entradas
not N1(notA, a);
not N2(notB, b);
not N3(notC, c);
not N4(notD, d);

// Maxterminos
or O1(M1, a, notB, c, d);
or O2(M2, a, notB, c, notD);
or O3(M3, a, notB, notC, d);
or O4(M4, a, notB, notC, notD);
or O5(M5, notA, b, c, notD);
or O6(M6, notA, b, notC, notD);
or O7(M7, notA, notB, c, d);
or O8(M8, notA, notB, c, notD);
or O9(M9, notA, notB, notC, notD);
and A10(Y, M1, M2, M3, M4, M5, M6, M7, M8, M9);

//Condiciones
initial begin
  $monitor ("a=%b, b=%b, c=%b, d=%b, Y=%b", a, b, c, d, Y);
  a =0; b =0; c =0; d=0;
  #1 a =1;                             //1000
  #1 a =0; b =1;                       //0100
  #1 b =0; c =1;                       //0010
  #1 c =0; d =1;                       //0001
  #1 c =1;                             //0011
  #1 a =1; c =0;                       //1001
  #1 a =0; b =1;                       //0101
  #1 a =1; d =0;                       //1100
  #1 a =0; c =1;                       //0110
  #1 a =1; b =0;                       //1010
  #1 a =0; b =1; d =1;                 //0111
  #1 a =1; b =0;                       //1011
  #1 b =1; c =0;                       //1101
  #1 c =1; d =0;                       //1110
  #1 d =1; $finish;                    //1111
end

initial
  begin
    $dumpfile("T3POS_tb.vcd");
    $dumpvars(0, T3POS);
  end
endmodule
