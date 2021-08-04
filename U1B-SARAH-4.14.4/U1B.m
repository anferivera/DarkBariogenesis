Off[General::spell]

Model`Name = "U1B";
Model`NameLaTeX =" U(1)B extension for Bariogenesis";
Model`Authors = "Andres Rivera. Base in SM by F.Staub";
Model`Date = "2021-07-21";

(* 2014-11-06: Changed sign in Lagrangian *)
(* 2020-22-07 Introduccing new scalar bi2 for Bariogenesis *)
(* 2021-21-07 Introducing the U(1)B*)

(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Global Symmetries *)

Global[[1]] = {Z[2], Z2};

(* Gauge Superfields *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False,1};
Gauge[[2]]={WB, SU[2], left,         g2,True,1};
Gauge[[3]]={G,  SU[3], color,       g3,False,1};
Gauge[[4]]={Bp,  U[1], U1B,       g1p, False,1};

(* Chiral Superfields *)

FermionFields[[1]] = {q, 3, {uL, dL},            1/6, 2,  3, -5/9, 1};  
FermionFields[[2]] = {l, 3, {vL, eL},          -1/2, 2,  1,     0, 1};
FermionFields[[3]] = {d, 3, conj[dR],            1/3, 1, -3,  5/9, 1};
FermionFields[[4]] = {u, 3, conj[uR],           -2/3, 1, -3,  5/9, 1};
FermionFields[[5]] = {e, 3, conj[eR],             1, 1,  1,     0, 1};

FermionFields[[6]] = {v, 2, conj[vvR],              0, 1,  1,  -5, 1};
FermionFields[[7]] = {vr3, 1, conj[vR3],             0, 1,  1,  0, 1};
FermionFields[[8]] = {x3, 1, x3L,                  0, 1,  1,   3, -1};
FermionFields[[9]] = {x4, 1, conj[x4R],           0, 1,  1,    2, -1};
FermionFields[[10]] = {x5, 1, conj[x5R],          1, 1,  1,    1,  1};
FermionFields[[11]] = {x6, 1, x6L,                -1, 1,  1,  -6,  1};

FermionFields[[12]] = {lp, 1, {vp, ep},        -1/2, 2,  1,   -1,  1};
FermionFields[[13]] = {lpp, 1,conj[{-epp,vpp}],   1/2, 2,  1,   6,  1};

ScalarFields[[1]] = {H, 1, {H0, Hm},           -1/2, 2,  1,    0,  1};
ScalarFields[[2]] = {bi,   1, BiD,                0, 1,  1,    5,  1};
ScalarFields[[3]] = {S,   1, ss,                   1, 1,  1,    1, 1};
ScalarFields[[4]] = {Sc,   1, sc,                  1, 1,  1,    6, 1};


(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][Additional]= {
	{LagHC, {AddHC->True}},
     {LagNoHC,{ AddHC->False}},
     {Lagint , {AddHC->True}}
};

LagHC = - (+ Yd H.d.q + Ye H.e.l - Yu conj[H].u.q );

LagNoHC = -(mu2 conj[H].H - L1 conj[H].H.conj[H].H + MuP conj[bi].bi - L2 conj[bi].bi.conj[bi].bi - L3 conj[bi].bi.conj[H].H 
+ MP2 conj[S].S - L22 conj[S].S.conj[S].S - L32 conj[S].S.conj[H].H 
+ MPc2 conj[Sc].Sc - L23 conj[Sc].Sc.conj[Sc].Sc - L33 conj[Sc].Sc.conj[H].H 
);

Lagint = -( YRA x3.x4.conj[bi] + YRB x5.x6.bi + YRC lp.lpp.conj[bi] + YRD l.lp.S + YRE conj[x5].Sc.v + YRF S.conj[Sc].bi + YRG H.x5.lp );

(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3],VBp},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW}
};
        
          	
(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {H0, {vH, 1/Sqrt[2]}, {sigmaH, \[ImaginaryI]/Sqrt[2]},{phiH, 1/Sqrt[2]}},
     {BiD,{vX, 1/Sqrt[2]}, {sigmaB, \[ImaginaryI]/Sqrt[2]},{phiB, 1/Sqrt[2]}}   };
 

DEFINITION[EWSB][MatterSector]=   
    {
     {{phiH,phiB},{hh,ZH}},
     {{sigmaH,sigmaB},{Ah,ZA}},
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
     
     {{{vL}, {conj[vvR],conj[vR3]}}, {{VL, Vv}, {VR, Vvr}}},
     {{ss,sc}, {Ssc, VSs}}

};  

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  VL, conj[VR]},
 Fx ->{  x3L,x4R}, 
 Fes ->{  x6L, x5R},
 Fvv ->{  vp, vpp}, 
 Fed ->{  ep, epp}
};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};



