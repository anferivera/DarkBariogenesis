OnlyLowEnergySPheno = True;


MINPAR={{1, LambdahINPUT},
        {2, Lambda21INPUT},
        {3, Lambda31INPUT},
        {4, Lambda22INPUT},
        {5, Lambda32INPUT},
        {6, YA1INPUT},
        {7, YA2INPUT},
        {8, YB1INPUT},
        {9, YB2INPUT},
        {10, YC1INPUT},
        {11, YC2INPUT},
        {12, YRGINPUT},
        {13, YRHINPUT},
        {14, vXInput},
        {15, vX2Input},
        {16, g1pINPUT},
        {17, g1p1INPUT},
        {18, g11pINPUT}               

};

ParametersToSolveTadpoles = {muh,mui,muj};

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
 {L21, Lambda21INPUT},
 {L31, Lambda31INPUT},
 {L22, Lambda22INPUT},
 {L32, Lambda32INPUT},
 
 {YA1, YA1INPUT},
 {YA2, YA2INPUT},
 {YB1, YB1INPUT},
 {YB2, YB2INPUT},
 {YC1, YC1INPUT},
 {YC2, YC2INPUT},
 {YRG, YRGINPUT},
 {YRH, YRHINPUT},
 {vX, vXInput},
 {vX2, vX2Input},
 
 {YRD, LHInput[YRD]},
 {YRE, LHInput[YRE]},
 {YF1, LHInput[YF1]},
 {YF2, LHInput[YF2]},
 {mu1, LHInput[mu1]},
 {mu2, LHInput[mu2]},
 {L41, LHInput[L41]},
 {L42, LHInput[L42]}
};

AddTreeLevelUnitarityLimits=True;

ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp,Fx,Fvv,FeD,Hm,Ah};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={ LambdahINPUT -> -0.127, Lambda21INPUT -> -7.2*10^-2, Lambda31INPUT -> 1.2*10^-3, Lambda22INPUT -> -7.2*10^-3, Lambda32INPUT -> 1.0*10^-3, g1pINPUT->0.5, g11pINPUT -> 0.0, g1p1INPUT -> 0.0, vXInput->2500, vX2Input->5000, 
    
    YA1INPUT -> 0.1, YA2INPUT -> 0.01, YB1INPUT -> 0.2, YB2INPUT -> 0.02, YC1INPUT -> 0.3, YC2INPUT -> 0.03, 
    
    Lambda22INPUT -> 0.003, Lambda23INPUT -> 0.004, 
    
    mu1INPUT -> 2000000., mu2INPUT -> 3.0*10^8, YRGINPUT -> 0.02, YRHINPUT -> 0.012, 
    
    L41[1,1] -> 1.0*10^-2, L41[1,2] -> 2.0*10^-2, L41[2,1] -> 3.0*10^-2, L41[2,2] -> 3.0*10^-2, L42[1,1] -> 1.1*10^-2, L42[1,2] -> 2.0*10^-3, L42[2,1] -> 3.1*10^-2, 
    
    L42[2,2] -> 4.0*10^-2, mu1[1,1] -> 2.0*10^6, mu1[2,2] -> 2.0*10^7, mu2[1,1] -> 2.0*10^8, mu2[2,2] -> 2.0*10^9, 
    
    YRD[1,1] -> 1.0*10^-1, YRD[1,2] -> 2.0*10^-2, YRD[1,3] -> 3.0*10^-2, YRD[2,1] -> 1.0*10^-2, YRD[2,2] -> 2.0*10^-2, YRD[2,3] -> 3.0*10^-2, 
    
    YRE[1,1] -> 1.0*10^-1, YRE[1,2] -> 2.0*10^-2, YRE[2,1] -> 1.0*10^-3, YRE[2,2] -> 2.0*10^-2, 
    
    YF1[1,1] -> 1.0*10^-1, YF1[1,2] -> 2.0*10^-2, YF1[2,1] -> 1.0*10^-2, YF1[2,2] -> 2.0*10^-2,
    
    YF2[1,1] -> 1.0*10^-2, YF2[1,2] -> 2.0*10^-3, YF2[2,1] -> 1.0*10^-3, YF2[2,2] -> 2.0*10^-3
};


