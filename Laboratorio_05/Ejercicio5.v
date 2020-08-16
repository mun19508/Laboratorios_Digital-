//Laboratorio_5, Ejercicio 5
//Daniel Mundo
//19508
//Electronica Digital 1, seccion 11
// Mux 2:1
module Mux2(input wire I0, I1, s0, output wire y0);
  assign Y = s0 ? I1 : I0;                            //defino los parametros y la ecuacion del mux 2:1
endmodule

//Mux 4:1
module Mux4(input wire w0, w1, w2, w3, s0, s1, output wire y1);
  wire m0, m1;
  Mux2 u0(w0, w1, s0, m0);                            //realizo la operacion con tres mux 2:1 para tener
  Mux2 u1(w2, w3, s0, m1);                           // dos condiciones y cuatro entradas
  Mux2 u2(m0, m1, s1, y1);
endmodule

//Mux 8:1
module Mux8(input wire d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2, output wire y2);
  wire n0, n1;
  Mux4 u3(d0, d1, d2, d3, s0, s1, n0);                  //realizo la operacion con dos mux 4:1 & un mux 2:1
  Mux4 u4(d4, d5, d6, d7, s0, s1, n1);                 //tres condiciones y ocho entradas
  Mux2 u5(n0, n1, s2, y);
endmodule

//Aplicacion tabla 01
module T1M8(input wire A, B, C, output wire Y0);
  wire l, h;
  assign l = 1'b0;
  assign h = 1'b1;
  Mux8 N1(l, h, h, l, h, l, l, h, A, B, C, Y0);
endmodule

module T1M4(input wire A, B, C, output wire Y1);
  wire w0;
  assign w0 = ~C;
  Mux4 N1(C, w0, w0, C, A, B, Y1);
endmodule

module T1M2(input wire A, B, C, output wire Y2);
  wire w2, w3;
  assign w2 = B * ~C + ~B * C;
  assign w3 = ~w2;
  Mux2 N2(w2, w3, A, Y2);
endmodule

//Aplicacion tabla 02
module T2M8(input wire A, B, C, output wire Y3);
  wire L, H;
  assign L = 1'b0;
  assign H = 1'b1;
  Mux8 N3 (H, L, L, L, L, H, H, L, A, B, C, Y3);
endmodule

module T2M4(input wire A, B, C, output wire Y4);
  wire w4;
  assign w5 = ~C;
  Mux4 N4( 1'b1, 1'b0, 1'b1, w5, A, B, Y4);
endmodule

module T2M2(input wire A, B, C, output wire Y5);
  wire w6, w7;
  assign w6 = B & ~C || ~B & C;
  assign w7 = ~(C | B);
  Mux2 N5(w7, w6, A, Y5);
endmodule
