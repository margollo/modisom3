gap> T := rec( dim := 3,
               fld := GF(2),
               rnk := 2,
               wgs := [ 1, 1, 2 ],
               wds := [ ,, [ 2, 1 ] ],
               tab := [] );;
gap> T.tab[1] := [[0,0,0],[0,0,1]] * One(T.fld);;
gap> T.tab[2] := [[0,0,1],[0,0,0]] * One(T.fld);;
gap> GetEntryTable( T, 3, 1 );
[ 0*Z(2), 0*Z(2), 0*Z(2) ]
gap> A := GroupRing(GF(2), SmallGroup(8,3));
<algebra-with-one over GF(2), with 3 generators>
gap> NilpotentTableOfRad(A);
rec( dim := 7, fld := GF(2), rnk := 2,
  tab :=
    [
      [ [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ] ],
      [ [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ] ],,
      [ [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ],
          [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ] ] ],
  wds := [ ,, [ 1, 2 ],, [ 1, 4 ], [ 2, 4 ], [ 1, 6 ] ],
  wgs := [ 1, 1, 2, 2, 3, 3, 4 ] )
gap> G := SmallGroup(3^7, 19);;
gap> T := ModIsomTable(G, 8);;
gap> T.dim;
135

gap> FG := GroupRing(GF(3), G);;
gap> TT := TableOfRadQuotient(FG, 8);;
gap> TT.dim;
135

gap> T := ModIsomTable(G, 38);;
gap> T.dim;
2186

gap> T := ModIsomTable(G, 39);;
gap> T.dim;
2186
gap> G := DihedralGroup(8);;
gap> T := ModIsomTable(G, 4);;
gap> T.dim;
7
gap> pcgs := T.pre.jen.pcgs;
Pcgs([ f1, f2, f3 ])
gap> List(pcgs, Order);
[ 2, 4, 2 ]
gap> pcgs[3] in Center(G);
true
gap> T.pre.exps{[1..7]};
[ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 1, 0 ], [ 0, 0, 1 ], [ 1, 0, 1 ], [ 0, 1, 1 ],
  [ 1, 1, 1 ]]
gap> v := Z(2)^0*[0,1,1,0,1,0,0];
[ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ]
gap> w := Z(2)^0*[1,1,0,1,0,0,0];
[ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ]
gap> MultByTable(T,v,w);
[ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ]
gap> G := SmallGroup(3^7, 19);
<pc group of size 2187 with 7 generators>
gap> T := ModIsomTable(G, 4);;
gap> FG := GroupRing(GF(3), G);
<algebra-with-one over GF(3), with 7 generators>
gap> iota := Embedding(G, FG);
<mapping: Group( [ f1, f2, f3, f4, f5, f6, f7
 ] ) -> AlgebraWithOne( GF(3), ... ) >
gap> a := (T.pre.jen.pcgs[1])^iota;
(Z(3)^0)*f1
gap> b := (T.pre.jen.pcgs[2])^iota;
(Z(3)^0)*f2
gap> z := One(FG);
(Z(3)^0)*<identity> of ...
gap> r := (z + (a-z)*(b-z) )^-1;;
gap> Size(Support(r-z));
1376
gap> el := MIPElementAlgebraToTable(r-z, FG, T);
[ 0*Z(3), 0*Z(3), 0*Z(3), Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3),
  0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3),
  0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ]
gap> MIPElementTableToAlgebra(el, T, FG);
(Z(3))*<identity> of ...+(Z(3)^0)*f3+(Z(3)^0)*f1^2+(Z(3))*f1*f2+(Z(3))*f1*f3+(
Z(3)^0)*f2^2+(Z(3))*f2*f3+(Z(3)^0)*f1^2*f2+(Z(3)^0)*f1*f2^2+(Z(3)^
0)*f1*f2*f3+(Z(3)^0)*f1^2*f2^2
gap> d := (T.pre.jen.pcgs[4])^iota;
(Z(3)^0)*f4
gap> el := MIPElementAlgebraToTable(d-z, FG, T);
[ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3),
  0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3),
  0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ]
gap> Position(last, Z(3)^0);
11
gap> T.pre.poswone[4];
11
