module predictor(input wire request, result, clk, taken, output reg prediction);
  reg previous_request;
  reg previous_result;
  reg state[1:0] = 3
  always @(posedge clk) begin
    
    if (request)
      begin
        prediction <= state[1]    
      end


    if (result)
      begin
        if(taken)
          begin
            if(state <3)
              begin
                state<= state + 1
              end
          end
        else if(taken==0)
          begin
            if (state>0)
            begin
              state<= state -1
            end
          end
      end
      
  end


endmodule