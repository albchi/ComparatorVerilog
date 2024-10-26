// module : comparator
// input : a, b (each 2 bits wide)
// output : g, l (each 1 bit wide)
// description : comparator will compare a to b
// if a == b , l==0 g==0
// if a > b  , l==0 g==1
// if a < b  , l==1 g==0
//
//

module comparator(a, b, g, l);


input [1:0] a, b;
output g, l;
reg g, l;

// wire [1:0] c;
reg [1:0] c;
wire  d;

or or0(d, a, b, c);
// or or0(d, a, b);

always @( a or b) begin
   if ( a == b) 
      begin
         g = 1'b0;
         l = 1'b0;
      end
   else if ( a > b ) 
      begin
         g = 1'b1;
         l = 1'b0;
      end
   else if ( a < b) 
      begin
         g = 1'b0;
         l = 1'b1;
      end

   else
      begin
         g = 1'b1;
         l = 1'b1;
      end

end

   
endmodule 
