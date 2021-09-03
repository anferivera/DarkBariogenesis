OnlyLowEnergySPheno = True;


MINPAR={{1, LambdahINPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        {4, YRAINPUT},
        {5, YRBINPUT},
        {6, YRCINPUT},
        {7, YRGINPUT},
        {8, YRHINPUT},
        {9, vXInput},
        
        {10, g1pINPUT},
        {11, g1p1INPUT},
        {12, g11pINPUT}               

};

ParametersToSolveTadpoles = {MuP,muh};

DEFINITION[MatchingConditions]= {
 {Ye, YeSM},
 {Yd, YdSM},
 {Yu, YuSM},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM},
 {vH, vSM}
 };


BoundaryLowScaleInput={
 {g1p, g1pINPUT},
 {g11p, g11pINPUT},
 {g1p1, g1p1INPUT},
 
 {Lh, LambdahINPUT},
 {L2, Lambda2INPUT},
 {L3, Lambda3INPUT},

 
 {YRA, YRAINPUT},
 {YRB, YRBINPUT},
 {YRC, YRCINPUT},
 {YRG, YRGINPUT},
 {YRH, YRHINPUT},
 {vX, vXInput},
 
 {YRD, LHInput[YRD]},
 {YRE, LHInput[YRE]},
 {YRF, LHInput[YRF]},
 {mu1, LHInput[mu1]},
 {mu2, LHInput[mu2]},
 {L32, LHInput[L32]},
 {L33, LHInput[L33]},
 {L22, LHInput[L22]},
 {L23, LHInput[L23]}
};

AddTreeLevelUnitarityLimits=True;

ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp,Fx,Fvv,FeD,Hm};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={ LambdahINPUT -> -0.127, Lambda2INPUT -> -7.2*10^-2,  Lambda3INPUT -> 1.2*10^-3,  g1pINPUT->0.5, g11pINPUT -> 0.0, g1p1INPUT -> 0.0, vXInput->2500, YRAINPUT -> 0.1, YRBINPUT -> 0.2, YRCINPUT -> 0.3, Lambda22INPUT -> 0.003, Lambda23INPUT -> 0.004, mu1INPUT -> 2000000., mu2INPUT -> 3.0*10^8, YRGINPUT -> 0.02, YRHINPUT -> 0.012, L32[1,1] -> 1.0*10^-2, L32[1,2] -> 2.0*10^-2, L32[2,1] -> 3.0*10^-2, L32[2,2] -> 3.0*10^-2, L33[1,1] -> 1.1*10^-2, L33[1,2] -> 2.0*10^-3, L33[2,1] -> 3.1*10^-2, L33[2,2] -> 4.0*10^-2, mu1[1,1] -> 2.0*10^6, mu1[2,2] -> 2.0*10^8, mu2[1,1] -> 2.0*10^7, mu2[2,2] -> 2.0*10^8, YRD[1,1] -> 1.0*10^-2, YRD[1,2] -> 2.0*10^-2, YRD[1,3] -> 3.0*10^-2, YRD[2,1] -> 1.0*10^-3, YRD[2,2] -> 2.0*10^-3, YRD[2,3] -> 3.0*10^-3, YRE[1,1] -> 1.0*10^-2, YRE[1,2] -> 2.0*10^-2, YRE[2,1] -> 1.0*10^-3, YRE[2,2] -> 2.0*10^-2, YRF[1,1] -> 1.0*10^-2, YRF[1,2] -> 2.0*10^-2, YRF[2,1] -> 1.0*10^-3, YRF[2,2] -> 2.0*10^-2};


