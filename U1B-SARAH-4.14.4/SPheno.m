OnlyLowEnergySPheno = True;


MINPAR={{1, Lambda1INPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        
        {4, YRAINPUT},
        {5, YRBINPUT},
        {6, YRCINPUT},
        {7, YRFINPUT},
        {8, YRGINPUT},
        {9, vXInput},
        
        {10, g1pINPUT},
        {11, g1p1INPUT},
        {12, g11pINPUT},
        
        {13, Lambda22INPUT},
        {14, Lambda32INPUT},
        {15, MP2INPUT},
        
        {16, Lambda23INPUT},
        {17, Lambda33INPUT},
        {18, MPc2INPUT}                

};

ParametersToSolveTadpoles = {MuP,mu2};

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
 
 {L1, Lambda1INPUT},
 {L2, Lambda2INPUT},
 {L3, Lambda3INPUT},
 
 {YRA, YRAINPUT},
 {YRB, YRBINPUT},
 {YRC, YRCINPUT},
 {YRF, YRFINPUT},
 {YRG, YRGINPUT},
 
 {vX, vXInput},
 
 {L22, Lambda22INPUT},
 {L32, Lambda32INPUT},
 {MP2, MP2INPUT},
 
 {L23, Lambda23INPUT},
 {L33, Lambda33INPUT},
 {MPc2, MPc2INPUT},
 
 {YRD, LHInput[YRD]},
 {YRE, LHInput[YRE]}
};

AddTreeLevelUnitarityLimits=True;

ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp,Fx,Fes,Fvv,Fed,Ssc};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={ Lambda1INPUT -> -0.127, Lambda2INPUT -> -7.2*10^-2,  Lambda3INPUT -> 1.2*10^-3,  g1pINPUT->0.5, vXInput->2500, YRAINPUT -> 0.1, YRBINPUT -> 0.2, YRCINPUT -> 0.3, YRD[1,1] -> 0.005,  Lambda22INPUT -> 0.003, Lambda32INPUT -> 0.004, MP2INPUT -> 2000000., MPc2INPUT -> 3.0*10^8, Lambda23INPUT -> 0.004, Lambda33INPUT -> 0.005, YRGINPUT -> 0.02, YREIN[1,1] -> 0.0021, YRFINPUT -> 0.001, g11pINPUT -> 0.00001, g1p1INPUT -> 0.0001 };


