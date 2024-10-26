module tb_comparator();

reg [4:0] stim;

comparator_primitives comparator_primitives_0(
   .a(stim[3:2]),
   .b (stim[1:0]),
   .l (l),
   .g (g)
);



initial 
   $vcdpluson;

initial begin
   for (stim = 0; stim < 16; stim = stim + 1) begin
      #2;
      $display("a=%d b=%d l=%b g=%b", stim[3:2], stim[1:0], l, g );
      #2;
   end

   $finish();

end
endmodule
