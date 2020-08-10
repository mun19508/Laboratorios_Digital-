//Nombre del modulo
module T4SOP();

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

// Minterminos
and A1(M1, notA, notB, notC, notD);
and A2(M2, notA, notB, c, notD);
and A3(M3, notA, notB, c, d);
and A4(M4, notA, b, c, notD);
and A5(M5, notA, b, c, d);
and A6(M6, a, notB, notC, notD);
and A7(M7, a, notB, c, notD);
or O10(Y, M1, M2, M3, M4, M5, M6, M7);

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
    $dumpfile("T4SOP_tb.vcd");
    $dumpvars(0, T4SOP);
  end
endmodule
