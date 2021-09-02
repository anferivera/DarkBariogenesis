OnlyLowEnergySPheno = True;


MINPAR={{1, LambdahINPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        
        {4, YRAINPUT},
        {5, YRBINPUT},
        {6, YRCINPUT},
        {7, YRFINPUT},
        {8, YRGINPUT},
        {9, YRHINPUT},
        {10, vXInput},
        
        {11, g1pINPUT},
        {12, g1p1INPUT},
        {13, g11pINPUT},
        
        {14, Lambda22INPUT},
        {15, Lambda32INPUT},
        {16, mu1INPUT},
        
        {17, Lambda23INPUT},
        {18, Lambda33INPUT},
        {19, mu2INPUT}                

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
 {YRF, YRFINPUT},
 {YRG, YRGINPUT},
 {YRH, YRHINPUT},
 
 {vX, vXInput},
 
 {L22, Lambda22INPUT},
 {L32, Lambda32INPUT},
 {mu1, mu1INPUT},
 
 {L23, Lambda23INPUT},
 {L33, Lambda33INPUT},
 {mu2, mu2INPUT},
 
 {YRD, LHInput[YRD]},
 {YRE, LHInput[YRE]}
};

AddTreeLevelUnitarityLimits=True;

ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp,Fx,Fvv,FeD,Hm};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={ LambdahINPUT -> -0.127, Lambda2INPUT -> -7.2*10^-2,  Lambda3INPUT -> 1.2*10^-3,  g1pINPUT->0.5, g11pINPUT -> 0.0, g1p1INPUT -> 0.0, vXInput->2500, YRAINPUT -> 0.1, YRBINPUT -> 0.2, YRCINPUT -> 0.3, YRD[1] -> 0.005, YRD[2] -> 0.002, YRD[3] -> 0.003,  Lambda22INPUT -> 0.003, Lambda32INPUT -> 0.004, mu1INPUT -> 2000000., mu2INPUT -> 3.0*10^8, Lambda23INPUT -> 0.004, Lambda33INPUT -> 0.005, YRGINPUT -> 0.02, YRHINPUT -> 0.012, YRE[1] -> 0.0021, YRE[2] -> 0.001, YRFINPUT -> 0.001 };


