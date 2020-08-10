//Ejercicio 5
//Gate level Modelling (GM)
    //POS
module  POS_GM(input wire A, B, C, output wire Y);
  wire notA, notB, notC, w1, w2, w3, w4, w5;
  not (notA, A);
  not (notB, B);
  not (notC, C);
  or (w1, A, B, C);
  or (w2, A, B, notC);
  or (w3, A, notB, notC);
  or (w4, A, notB, C);
  or (w5, notA, notB, C);
  and (Y, w1, w2, w3, w4, w5);
endmodule

    //SOP
module  SOP_GM(input wire A, B, C, output wire Y);
  wire notB, notC, w1, w2, w3;
  not (notB, B);
  not (notC, C);
  and (w1, A, notB, notC);
  and (w2, A, notB, C);
  and (w3, A, B, C);
  or  (Y, w1, w2, w3);
endmodule

    //Ecuacion reducida (ER)
module  ER_GM(input wire A, B, C, output wire Y);
  wire notB, w1, w2;
  not (notB, B);
  and (w1, A, notB);
  and (w2, A, C);
  or  (Y, w1, w2);
endmodule

//Behavorial Modelling (BM)
      //POS
module  POS_BM(input wire A, B, C, output wire Y);
  assign Y = (A | B | C) & (A | B | ~C) & (A | ~B | ~C) & (A | ~B | C) & (~A | ~B | C);
endmodule

      //SOP
module  SOP_BM(input wire A, B, C, output wire Y);
  assign Y = (A & ~B & ~C) | (A & ~B & C) | (A & B & C);
endmodule

      //Ecuacion reducida (ER)
module  ER_BM(input wire A, B, C, output wire Y);
  assign Y = (A & ~B) | (A & C);
endmodule
