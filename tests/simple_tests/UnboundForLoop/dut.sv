module dut (
  input wire clk,
  input wire [5:0]        i,
  input wire signed [3:0] D,
  output reg signed [3:0] Q );
  integer j;
  always @ * begin
    Q = D;
    for(j=0;j<i;j=j+1) Q = (Q >> 1) | (D[3] << 3);
  end
endmodule
