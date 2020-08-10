//Nombre del modulo
module T1SOP();

// Entradas
reg a, b, c;

//Cables y salidas
wire M1, M2, M3, M4, M5;
wire notA, notB, notC;
wire Y;

// Negacion de entradas
not N1(notA, a);
not N2(notB, b);
not N3(notC, c);

// Minterminos
and A1(M1, notA, notB, notC);
and A2(M2, notA, b, notC);
and A3(M3, a, notB, notC);
and A4(M4, a, notB, c);
and A5(M5, a, b, c);
or O6(Y, M1, M2, M3, M4, M5);

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
    $dumpfile("T1SOP_tb.vcd");
    $dumpvars(0, T1SOP);
  end
endmodule
