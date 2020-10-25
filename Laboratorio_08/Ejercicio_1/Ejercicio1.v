//Ejercicio 1: Contador con load
//Daniel Mundo 19508
module counter_12b(input clk, reset, load, eneable,
                  input [11:0] b,
                  output reg [11:0] c);
always @ (posedge clk, posedge load)
begin
    if (reset)
      c <= 12'b0;
    else if (load)
      c <= b;
    if (eneable)
    begin
      if (c == 12'b111111111111)
      c <= 12'b0;
    else
      c <= c + 12'b000000000001;
      end
end
endmodule //counter
