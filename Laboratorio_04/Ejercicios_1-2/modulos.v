//Ejercicio 1
//Tabla_01
module Tabla_01(input wire A,B,C, output wire Y);
  assign Y = (~A & ~B) | (~B & ~C) | (A & C) | (A & B);
endmodule

//Tabla_02
module Tabla_02(input wire B, output wire Y);
  assign Y = ~B;
endmodule

//Tabla_03
module Tabla_03(input wire A,B,C,D, output wire Y);
  assign Y = (~A & ~B & ~C & ~D) | (~A & ~B & C & D) | (A & ~B & C & ~D) | (A & ~B & ~C & D) | (A & B & ~C & ~D) | (A & B & C & D) | (~A & B & C & ~D) | (~A & B & ~C & D);
endmodule

//Tabla_04
module Tabla_04(input wire A,B,C,D, output wire Y);
  assign Y = (A & B) | (A & C) | (A & ~D);
endmodule

//Ejercicio 2:
//Inciso_1
module Inciso_1(input wire A,B,C,D, output wire Y);
  wire notB, notD, notC, p0, p1, p2, p3;
  not  (notB, B);
  not  (notC, C);
  not  (notD, D);
  and  (p0, A, notB);
  and  (p1, A, notD);
  and  (p2, A, notC);
  and  (p3, notB, notC, notD);
  or   (Y, p0, p1, p2, p3);
endmodule

//Inciso_2
module Inciso_2(input wire B,C, output wire Y);
  wire notB;
  not (notB, B);
  or  (Y, notB, C);
endmodule

//Inciso_3
module Inciso_3(input wire A,B,C,D, output wire Y);
  wire notC, p0, p1;
  not (notC, C);
  and (p0, notC, D);
  and (p1, A, D);
  or  (Y, p0, p1, B);
endmodule

//Inciso_4
module Inciso_4(input wire A,B,C, output wire Y);
  wire notA, notC, p0;
  not (notA, A);
  not (notC, C);
  and (p0, notA, notC);
  or  (Y, p0, B);
endmodule
