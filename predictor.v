module predictor(input wire request, result, clk, taken, output reg prediction);
 input wire request,
  input wire result,
  input wire clk,
  input wire taken,
  output reg prediction
);

  reg previous_request;
  reg previous_result;

  always @(posedge clk) begin
    // Store the previous values of request and result
    previous_request <= request;
    previous_result <= result;

    // Make prediction based on the previous values
    if (previous_request && previous_result && taken)
      prediction <= 1; // Taken
    else
      prediction <= 0; // Not taken
  end


endmodule