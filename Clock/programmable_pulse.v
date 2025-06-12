/*
Verilog module to generate a pulse with programmable pulse width 
and a compile-time programmable period using parameters.
*/

module pulse_generator (
    input clk,
    input rst,
    output reg pulse
);

  // Compile-time programmable period (in clock cycles)
  parameter PERIOD = 10;
  // Compile-time programmable pulse width (in clock cycles)
  parameter PULSE_WIDTH = 3;

  reg [3:0] counter;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      counter <= 0;
      pulse <= 0;
    end else begin
      counter <= counter + 1;
      if (counter == (PERIOD -1)) begin
        counter <= 0; // Reset counter
      end
    end
  end

  // Generate pulse based on the counter and pulse width
  always @(*) begin
    if (counter >= 0 && counter <= (PULSE_WIDTH-1)) begin
      pulse <= 1;
    end else begin
      pulse <= 0;
    end
  end
endmodule
