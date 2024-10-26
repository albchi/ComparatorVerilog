// module : comparator_primtives
// input : a, b (each 2 bits wide)
// output : g, l (each 1 bit wide)
// description : comparator will compare a to b
// if a == b , l==0 g==0
// if a > b  , l==0 g==1
// if a < b  , l==1 g==0
//
//

module comparator_primitives(a, b, g, l);


input [1:0] a, b;
output g, l;


wire m, n, o, p, q, r;

and and_0(m, a[1], ~b[1]);
and and_1(n, a[1], a[0], ~b[0]);
and and_2(o, ~b[1], a[0], ~b[0]);
and and_3(p, ~a[1], b[1]);
and and_4(q, ~a[1], ~a[0], b[0]);
and and_5(r, b[1], ~a[0],  b[0]);

or or_0(g, m,n,o);
or or_1(l, p,q,r);


endmodule 
