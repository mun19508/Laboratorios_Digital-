// Implementación de un Flip Flop tipo D
// Daniel Mundo 19508
module FlipFlopD(input wire [3:0] d,
                input wire clk, reset, set,
                output reg [3:0] q);
  always @ (posedge clk) q <= (reset ? 4'b0000 : d)
                            | (set ? 4'b1111 : 4'b0000);
  always @ ( posedge reset) q <= 4'b0000;
endmodule
