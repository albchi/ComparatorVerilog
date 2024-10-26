module tb_comparator_8();

reg [16:0] stim;

comparator_8 comparator_8_0(
   .x (stim[15:8]), // a
   .y (stim[7:0]), // b
   .l (l),
   .g (g)
);


initial begin
   $vcdpluson;
   for (stim = 0; stim < 17'h10000; stim = stim + 1) begin
      #2;
      $display("a=%d b=%d l=%d g=%d", stim[15:8], stim[7:0], l, g );
      
      // self-checking
      if (stim[15:8] == stim[7:0] )  begin // a == b
         if (l == 0 && g == 0) 
            $display("pass");
         else
            $display("fail : a==b");
      end
      else if (stim[15:8] < stim[7:0] ) begin // a < b 
         if (l == 1 && g == 0)
            $display("pass");
         else
            $display("fail : a<b");

      end
      else if (stim[15:8] > stim[7:0] ) begin // a > b 
         if (l == 0 && g == 1) 
            $display("pass");
         else
            $display("fail : a>b");

      end
      else
         $display("ERROR - should not be here!");
      #2;
   end

   $finish();

end

endmodule
