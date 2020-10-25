//ejercicio 3
module testbench();

reg [3:0] A, B;
reg [2:0] S;

wire [3:0] O;
wire C;
integer i;
ALU a1(S,A,B,O,C);

initial
begin
S = 3'b0;
A = 4'd10;
B = 4'd6;

for (i=0; i<=7;i=i+1)
begin
S = S + 3'd1;
#10;
end

A = 4'd10;
B= 4'd16;

end

initial begin
       $dumpfile("Ejercicio3_tb.vcd");
       $dumpvars(0,testbench);
   end

endmodule
