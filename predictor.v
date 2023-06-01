module predictor(input wire request, result, clk, taken, output reg prediction);
  reg previous_request;
  reg previous_result;

  always @(posedge clk) begin
    
    previous_request <= request;
    previous_result <= result;
    if (previous_request && previous_result && taken)
      prediction <= 1;
    else
      prediction <= 0; 
  end


endmodule