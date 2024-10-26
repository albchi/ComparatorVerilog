module comparator_8(x,y,g,l);

input [7:0] x,y;
output g,l;


wire m,n,o,p,q,r,s,t,u,v,w,z;

comparator_primitives comparator_primitives_0 (
   .a({x[1],x[0]}), .b({y[1],y[0]}), .g(r), .l(t)
);
comparator_primitives comparator_primitives_1 (
   .a({x[3],x[2]}), .b({y[3],y[2]}), .g(q), .l(s)
);

comparator_primitives comparator_primitives_2 (
   .a({x[5],x[4]}), .b({y[5],y[4]}), .g(n), .l(p)
);

comparator_primitives comparator_primitives_3 (
   .a({x[7],x[6]}), .b({y[7],y[6]}), .g(m), .l(o)
);

comparator_primitives comparator_primitives_4 (
   .a({q,r}), .b({s,t}), .g(v), .l(z)
);

comparator_primitives comparator_primitives_5 (
   .a({m,n}), .b({o,p}), .g(u), .l(w)
);

comparator_primitives comparator_primitives_6 (
   .a({u,v}), .b({w,z}), .g(g), .l(l)
);



endmodule
