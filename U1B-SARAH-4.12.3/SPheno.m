OnlyLowEnergySPheno = True;


MINPAR={{1, LambdahINPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        {4, Lambda4INPUT},
        {5, Lambda5INPUT},
        {6, mujINPUT},
        {7, YA1INPUT},
        {8, YA2INPUT},
        {9, YB1INPUT},
        {10, YB2INPUT},
        {11, YC1INPUT},
        {12, YC2INPUT},
        {13, YRGINPUT},
        {14, YRHINPUT},
        {15, vXInput},
        {16, g1pINPUT},
        {17, g1p1INPUT},
        {18, g11pINPUT}               

};

ParametersToSolveTadpoles = {muh,mui};

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
 {L4, Lambda4INPUT},
 {L5, Lambda5INPUT},
 {muj, mujINPUT},
 
 {YA1, YA1INPUT},
 {YA2, YA2INPUT},
 {YB1, YB1INPUT},
 {YB2, YB2INPUT},
 {YC1, YC1INPUT},
 {YC2, YC2INPUT},
 {YRG, YRGINPUT},
 {YRH, YRHINPUT},
 {vX, vXInput},
 
 {LD, LHInput[LD]},
 {LE, LHInput[LE]},
 {Fi, LHInput[Fi]},
 {Fj, LHInput[Fj]},
 {m1, LHInput[m1]},
 {m2, LHInput[m2]},
 {L6, LHInput[L6]},
 {L7, LHInput[L7]}
};

AddTreeLevelUnitarityLimits=True;

ListDecayParticles = {Fu,Fe,Fd,hh,VZp,Fx,Fvv,FeD,Hm,ss};
ListDecayParticles3B = {{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={ LambdahINPUT -> -0.127, Lambda2INPUT -> -7.2*10^-2, Lambda3INPUT -> 1.2*10^-3, Lambda4INPUT -> -7.2*10^-3,
    
    Lambda5INPUT -> 1.0*10^-3, g1pINPUT->0.5, g11pINPUT -> 0.0, g1p1INPUT -> 0.0, vXInput->2500, 
    
    YA1INPUT -> 0.1, YA2INPUT -> 0.01, YB1INPUT -> 0.2, YB2INPUT -> 0.02, YC1INPUT -> 0.3, YC2INPUT -> 0.03, 
        
    mujINPUT -> 4.0*10^8, mu1INPUT -> 2000000., mu2INPUT -> 3.0*10^8, YRGINPUT -> 0.02, YRHINPUT -> 0.012, 
    
    L6[1,1] -> 1.0*10^-2, L6[1,2] -> 2.0*10^-2, L6[2,1] -> 3.0*10^-2, L6[2,2] -> 3.0*10^-2, 
    
    L7[1,1] -> 1.1*10^-2, L7[1,2] -> 2.0*10^-3, L7[2,1] -> 3.1*10^-2, L7[2,2] -> 4.0*10^-2, 
    
    m1[1,1] -> 2.0*10^6, m1[2,2] -> 2.0*10^7, m2[1,1] -> 2.0*10^8, m2[2,2] -> 2.0*10^9, 
    
    LD[1,1] -> 1.0*10^-1, LD[1,2] -> 2.0*10^-2, LD[1,3] -> 3.0*10^-2, LD[2,1] -> 1.0*10^-2, LD[2,2] -> 2.0*10^-2, LD[2,3] -> 3.0*10^-2, 
    
    LE[1,1] -> 1.0*10^-1, LE[1,2] -> 2.0*10^-2, LE[2,1] -> 1.0*10^-3, LE[2,2] -> 2.0*10^-2, 
    
    Fi[1,1] -> 1.0*10^-1, Fi[1,2] -> 2.0*10^-2, Fi[2,1] -> 1.0*10^-2, Fi[2,2] -> 2.0*10^-2,
    
    Fj[1,1] -> 1.0*10^-2, Fj[1,2] -> 2.0*10^-3, Fj[2,1] -> 1.0*10^-3, Fj[2,2] -> 2.0*10^-3
};


