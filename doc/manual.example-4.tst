gap> bins := BinsByGT(2,6);
[ [ 156, 158, 160 ], [ 155, 157 ], [ 173, 176 ], [ 179, 180 ], [ 20, 22 ] ]
gap> List(bins, bin -> MIPSplitGroupsByAlgebras(2, 6, bin));
[ rec( bins := [  ], splits := [ [ 7, [ 156, 158, 160 ] ] ], time := 2195 ),
  rec( bins := [  ], splits := [ [ 7, [ 155, 157 ] ] ], time := 1505 ),
  rec( bins := [  ], splits := [ [ 7, [ 173, 176 ] ] ], time := 3294 ),
  rec( bins := [  ], splits := [ [ 7, [ 179, 180 ] ] ], time := 3233 ),
  rec( bins := [  ], splits := [ [ 4, [ 20, 22 ] ] ], time := 160 ) ]
gap> bins := BinsByGTAllFields(2,6);
[ [ 156, 158, 160 ], [ 155, 157 ], [ 173, 176 ], [ 179, 180 ], [ 104, 105 ],
  [ 13, 14 ], [ 20, 22 ], [ 18, 19 ] ]
gap> List(bins, bin -> MIPSplitGroupsByAlgebras(2, 6, bin, 2));
[ rec( bins := [  ], splits := [ [ 7, [ 156, 158, 160 ] ] ], time := 34833 ),
  rec( bins := [  ], splits := [ [ 7, [ 155, 157 ] ] ], time := 22479 ),
  rec( bins := [  ], splits := [ [ 7, [ 173, 176 ] ] ], time := 9806 ),
  rec( bins := [  ], splits := [ [ 7, [ 179, 180 ] ] ], time := 7819 ),
  rec( bins := [  ], splits := [ [ 4, [ 104, 105 ] ] ], time := 2226 ),
  rec( bins := [  ], splits := [ [ 6, [ 13, 14 ] ] ], time := 707 ),
  rec( bins := [  ], splits := [ [ 6, [ 20, 22 ] ] ], time := 3917 ),
  rec( bins := [  ], splits := [ [ 6, [ 18, 19 ] ] ], time := 2891 ) ]

R := SmallGroup(64, 19);
Q := SmallGroup(64, 18);

DR := DirectProduct(R,Q);
GDR := GeneratorsOfGroup(DR);
z1 := GDR[3];
z2 := GDR[9];
N := Group(z1*z2^(-1));
G := DR/N;

DR := DirectProduct(Q,Q);
GDR := GeneratorsOfGroup(DR);
z1 := GDR[3];
z2 := GDR[9];
N := Group(z1*z2^(-1));
H := DR/N;

gap> MIPSplitGroupsByGroupTheoreticalInvariantsAllFields([G,H]);
[ [ Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]),
      Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]) ] ]

# the groups can not be split over all fields by group-theoretical invariants

gap> MIPSplitGroupsByAlgebras([G,H]);
rec( bins := [  ],
  splits :=
    [
      [ 4,
          [ Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]),
              Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]) ] ]
     ], time := 44473 )

# over the field of 2 elements it is enough to consider
# the 5-th power of the augmentation ideal

gap> SetInfoLevel(InfoModIsom, 1);
gap> MIPSplitGroupsByAlgebras([G,H], 2);
#I  Refine bin
#I    Weights yields bins [ [ 1, 2 ] ]
#I    Layer 1 yields bins [ [ 1, 2 ] ]
#I  layer 2 of dim 15 aut group has order 2961100800 * 2^0
#I     cover is determined
#I     dim(M) = 16 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 2 of dim 15 aut group has order 2961100800 * 2^0
#I     cover is determined
#I     dim(M) = 16 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 2 yields bins [ [ 1, 2 ] ]
#I  layer 3 of dim 39 aut group has order 2937600 * 2^88
#I     cover is determined
#I     dim(M) = 29 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 3 of dim 39 aut group has order 2937600 * 2^88
#I     cover is determined
#I     dim(M) = 29 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 3 yields bins [ [ 1, 2 ] ]
#I  layer 4 of dim 81 aut group has order 2937600 * 2^240
#I     cover is determined
#I     dim(M) = 51 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 4 of dim 81 aut group has order 2937600 * 2^240
#I     cover is determined
#I     dim(M) = 51 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 4 yields bins [ [ 1, 2 ] ]
#I  layer 5 of dim 145 aut group has order 7200 * 2^496
#I     cover is determined
#I     dim(M) = 73 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 5 of dim 145 aut group has order 7200 * 2^496
#I     cover is determined
#I     dim(M) = 73 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 5 yields bins [ [ 1, 2 ] ]
#I  layer 6 of dim 231 aut group has order 7200 * 2^800
#I     cover is determined
#I     dim(M) = 95 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
^CError, user interrupt in
  AddRowVector( u, GetEntryTable( T, i, j ), v[i] * w[j]
 ); at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/tables/tables.gi:87 called from
MultByTable( Q, new[Q.wds[i][1]], new[Q.wds[i][2]]
 ) at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/autiso/induc.gi:135 called from
InduceAutoToQuot( Q, G.agAutos[i]
 ) at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/autiso/induc.gi:151 called from
InduceAutosToQuot( G, Q
 ); at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/autiso/autiso.gi:57 called from
ExtendCanoForm( tabs[i], j
 ); at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/grpalg/chkbins.gi:117 called from
MIPBinSplit( p, n, false, start, step, list, f
 ) at /home/leo/gap-4.10.1/pkg/modisom-2.5.3/gap/grpalg/chkbins.gi:177 called from
...  at *stdin*:39
you can 'return;'
brk> quit;   # this was not progressing for several hours

gap> Size(G) = Size(H);
true
gap> Size(G) = 2^10;
true

gap> MIPBinSplit(2, 10, 4, 4, 1, [G,H], 2);
#I  Refine bin
#I    Weights yields bins [ [ 1, 2 ] ]
#I    Layer 1 yields bins [ [ 1, 2 ] ]
#I  layer 2 of dim 15 aut group has order 2961100800 * 2^0
#I     cover is determined
#I     dim(M) = 16 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 2 of dim 15 aut group has order 2961100800 * 2^0
#I     cover is determined
#I     dim(M) = 16 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 2 yields bins [ [ 1, 2 ] ]
#I  layer 3 of dim 39 aut group has order 2937600 * 2^88
#I     cover is determined
#I     dim(M) = 29 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 3 of dim 39 aut group has order 2937600 * 2^88
#I     cover is determined
#I     dim(M) = 29 and dim(U) = 5
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 3 yields bins [ [ 1, 2 ] ]
#I  layer 4 of dim 81 aut group has order 2937600 * 2^240
#I     cover is determined
#I     dim(M) = 51 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I  layer 4 of dim 81 aut group has order 2937600 * 2^240
#I     cover is determined
#I     dim(M) = 51 and dim(U) = 9
#I     extended autos
#I     computed stabilizer
#I     got quotient
#I     induced autos
#I    Layer 4 yields bins [ [ 1, 2 ] ]
rec(
  bins :=
    [
      [ Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]),
          Group([ f1, f2, f7, f3, f4, f10, f5, f6, f7, f8, f9, f10 ]) ] ],
  splits := [  ], time := 9469981 )

gap> G := SmallGroup(64, 20);
<pc group of size 64 with 6 generators>
gap> H := SmallGroup(64, 22);
<pc group of size 64 with 6 generators>
gap> TG := ModIsomTable(G, 5);;
gap> TH := ModIsomTable(H, 5);;
gap> KernelSizePowerMap(TG, 1, 1, 2);
3
gap> KernelSizePowerMap(TH, 1, 1, 2);
1
gap> TG := ModIsomTable(G, 5, 2);;
gap> TH := ModIsomTable(H, 5, 2);;
gap> KernelSizePowerMap(TG, 1, 1, 2);
7
gap> KernelSizePowerMap(TH, 1, 1, 2);
7
