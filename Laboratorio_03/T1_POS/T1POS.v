//Nombre del modulo
module T1POS();

// Entradas
reg a, b, c;
// Salidas
wire M1, M2, M3;
wire notA, notB, notC;
wire Y;

// Negacion de entradas
not N1(notA, a);
not N2(notB, b);
not N3(notC, c);

// Maxterminos
or O1(M1, a, b, notC);
or O2(M2, a, notB, notC);
or O3(M3, notA, notB, c);
and A4(Y, M1, M2, M3);
//Condiciones
initial begin
  $monitor ("a=%b, b=%b, c=%b, Y=%b", a, b, c, Y);
  a =0; b =0; c =0;
  #1 a =1;
  #1 b =1;
  #1 b =0; c =1;
  #1 a =0; b =1; c =0;
  #1 c =1;
  #1 b =0;
  #1 a =1; b =1; $finish;
end

initial
  begin
    $dumpfile("T1POS_tb.vcd");
    $dumpvars(0, T1POS);
  end
endmodule
