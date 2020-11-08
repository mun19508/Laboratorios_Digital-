//Circuito 2; ALU, Acumulador & Buffers Triestado
module testbench();
reg[3:0] B;
reg[2:0] S;
reg eneableOut, eneableACU, reset, clk;
wire[3:0] Out;
wire C,Z;
Circuito2 c2(B, S, reset, clk, eneableOut, eneableACU, Out, Z, C);
initial begin
reset=0; eneableACU=0; eneableOut=0; S=0; B= 0; clk = 0;
#1 reset=1;
#1 reset=0;
#1 B= 10;
#2 eneableOut = 1;
#2 S = 0; //deja pasar el dato de 10
#1 eneableACU = 1;
#1 eneableACU = 0;  //valor actual del acumulador es 10
#1 B= 10;
#1 S = 1; //resta acumulador - B, Zero se enciende
#1 eneableACU = 1;
#1 eneableACU = 0; //se carga el valor en el acumulador valor 0
#1 B = 15;
#1 S = 2; //deja pasar B
#1 eneableACU = 1;
#1 eneableACU = 0;// acumulador en 15
#1 eneableOut = 0; //bus driver alu en alta impedancia
#1 eneableOut = 1; //valor de salida de la ALU
#2 B = 1;
#1 S = 3; //se suma acumulador y B, se enciende Carry
#1 eneableACU = 1; //se carga 1 al acumulador
#1 eneableACU = 0;
#2 S = 4;  //NOR entre acu y el dato de entrada
#1 reset = 1;
#1 S = 0;
#1 $finish;
end
always
#1 clk = !clk;//Se invierte el valor de clk, parBsimular unBverdader señal de relo
initial begin
       $dumpfile("ALU_tb.vcd");
       $dumpvars(0,testbench);
end
endmodule
