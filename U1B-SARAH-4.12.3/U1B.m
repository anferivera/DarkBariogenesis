Off[General::spell]

Model`Name = "U1B";
Model`NameLaTeX =" U(1)B extension for Bariogenesis";
Model`Authors = "Andres Rivera. Base in SM by F.Staub";
Model`Date = "2021-09-02";

(* 2014-11-06: Changed sign in Lagrangian *)
(* 2020-22-07 Introduccing new scalar bi2 for Bariogenesis *)
(* 2021-21-07 Introducing the U(1)B*)
(*2021-18-08  changin H hypercharge*)

(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Global Symmetries *)

(*Global[[1]] = {Z[2], Z2};*)

(* Gauge Superfields *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False};
Gauge[[2]]={WB, SU[2], left,         g2,True};
Gauge[[3]]={G,  SU[3], color,       g3,False};
Gauge[[4]]={Bp,  U[1], U1B,       g1p, False};

(* Chiral Superfields *)

FermionFields[[1]] = {q, 3, {uL, dL},            1/6, 2,  3, -5/9};  
FermionFields[[2]] = {l, 3, {vL, eL},           -1/2, 2,  1,    0};
FermionFields[[3]] = {d, 3, conj[dR],            1/3, 1, -3,  5/9};
FermionFields[[4]] = {u, 3, conj[uR],           -2/3, 1, -3,  5/9};
FermionFields[[5]] = {e, 3, conj[eR],              1, 1,  1,    0};

FermionFields[[6]] = {v, 2, conj[vR],              0, 1,  1,   -5};
FermionFields[[7]] = {x3, 1, x3L,                  0, 1,  1,    3};
FermionFields[[8]] = {x4, 1, conj[x4R],            0, 1,  1,    2};
FermionFields[[9]] = {x5, 1, conj[x5R],            1, 1,  1,    1}; (*like e in SM*)
FermionFields[[10]] = {x6, 1, x6L,                -1, 1,  1,   -6};  (*thirth electron *)

FermionFields[[11]] = {lp, 1, {vp, ep},         -1/2, 2,  1,   -1}; (*like l in SM*)
FermionFields[[12]] = {lpp, 1,conj[{-epp,vpp}],  1/2, 2,  1,    6}; (*thirt doublet*)

ScalarFields[[1]] = {H,  1, {Hp, H0},           1/2, 2,  1,  0};
ScalarFields[[2]] = {bi,  1, BiD,                 0, 1,  1,  5};
ScalarFields[[3]] = {S1,  1, s1,                 -1, 1,  1, -1};
ScalarFields[[4]] = {S2,  1, s2,                 -1, 1,  1,  4};


(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][Additional]= {
     {LagHC, {AddHC->True}},
     {LagNoHC,{ AddHC->False}},
	 {LagS1,{ AddHC->False}},	
	 {LagS2,{ AddHC->False}},
     {Lagint , {AddHC->True}}
};

LagHC = - (+ Yd conj[H].d.q + Ye conj[H].e.l + Yu H.u.q);

LagNoHC = -(muh conj[H].H - Lh conj[H].H.conj[H].H + MuP conj[bi].bi - L2 conj[bi].bi.conj[bi].bi - L3 conj[bi].bi.conj[H].H );

LagS1 = -(mu1 conj[S1].S1  + L22 conj[S1].S1.conj[S1].S1 + L32 conj[S1].S1.conj[H].H );
LagS2 = -(mu2 conj[S2].S2 + L23 conj[S2].S2.conj[S2].S2 + L33 conj[S2].S2.conj[H].H );

Lagint = -( YRA conj[bi].x3.x4 + YRB bi.x5.x6 + YRC conj[bi].lp.lpp + YRD conj[S1].l.lp + YRE S2.x5.v + YRF conj[S1].S2.conj[bi] + YRG conj[H].x5.lp + YRH H.x6.lpp );

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
     {{conj[Hp],s1,s2},{Hm,ZP}},

     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
     
     {{vL, conj[vR]}, {VL,ZM}},
     {{{ep,x6L}, { conj[x5R],conj[epp]}}, {{ELD,VeD}, {ERD,UeD}}}     
};  

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  VL, conj[VL]},
 
 Fx ->{  x3L,x4R}, 
 Fvv ->{  vp, vpp},

(* Fed ->{  ep, x5R}, (*second electron*)
 Fes ->{  epp, x6L},(*thirth electron*) *)

 FeD ->{  ELD, conj[ERD]} (*New two electrons*)
 
};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};



