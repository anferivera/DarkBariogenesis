

ParticleDefinitions[GaugeES] = {
      {H0,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 1,
                 LaTeX -> "H^0",
                 OutputName -> "H0" }},                         
      
      
      {Hp,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 2,
                 LaTeX -> "H^+",
                 OutputName -> "Hp" }},

                 
      {VB,   { Description -> "B-Boson"}},                                                   
      {VG,   { Description -> "Gluon"}},          
      {VWB,  { Description -> "W-Bosons"}},          
      {gB,   { Description -> "B-Boson Ghost"}},                                                   
      {gG,   { Description -> "Gluon Ghost" }},          
      {gWB,  { Description -> "W-Boson Ghost"}}
      
      };
      
            
  ParticleDefinitions[EWSB] = {
      
    {hh   ,  { Description -> "Higgs",
                 PDG -> {25,35},
                 Width -> Automatic, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 1,
                 LaTeX -> "h",
                 OutputName -> "h" }}, 
                 
    {Ah   ,  {  Description -> "Pseudo-Scalar Higgs",
                 PDG -> {0,0},
                 Width -> {0,0}, 
                 Mass ->{0,0},
                 FeynArtsNr -> 2,
                 LaTeX -> "A_h",
                 OutputName -> "Ah" }},                      

    {Hm,   { Description -> "Charged Higgs", 
	     PDG -> {0, 900037, 900038, 900039, 900040},
	     PDG.IX -> {0, -10000602,  -10000603,  -10000604,  -10000605},
	     Width -> {0, External, External, External, External},
	     Mass -> {0, LesHouches, LesHouches, LesHouches, LesHouches},
	     ElectricCharge -> -1,
	     Latex -> {"Hm","\\sigma^{1}","\\sigma^{2}","\\sigma^{3}","\\sigma^{4}"},
	     OutputName -> {"Hm","s1","s2","s3","s4"}}},  
               
    {ss   , {  Description -> "Singlet",
               PDG -> {6666635},
               PDG.IX -> {101000002},
               FeynArtsNr -> 10,
               Mass -> LesHouches,               
               LaTeX -> "S",
               ElectricCharge -> 0,
               LHPC -> {"gold"},
               OutputName -> "Ss" }},
               
      
    {VP,   { Description -> "Photon"}}, 
    {VZ,   { Description -> "Z-Boson",
    			 Goldstone -> Ah[{1}] }}, 
    {VG,   { Description -> "Gluon" }},          
    {VWm,  { Description -> "W-Boson",
	                 Goldstone-> Hm[{1}] }},         
    {gP,   { Description -> "Photon Ghost"}},                                                   
    {gWm,  { Description -> "Negative W-Boson Ghost"}}, 
    {gWmC, { Description -> "Positive W-Boson Ghost" }}, 
    {gZ,   { Description -> "Z-Boson Ghost" }},
    {gG,   { Description -> "Gluon Ghost" }},          
    {VZp,  { Description -> "Z'-Boson",
      			 Goldstone -> Ah[{2}]}},  
    {gZp,  { Description -> "Z'-Ghost" }}, 
                 
    {Fd,   { Description -> "Down-Quarks"}},   
    {Fu,   { Description -> "Up-Quarks"}},   
    {Fe,   { Description -> "Leptons" }},
           
    {Fv,   { Description -> "Neutrinos",
                 PDG ->{12,14,16,881012,881014},
                 PDG.IX ->{-110000001,-110000002,-110000003,-110000004,-110000005},
                 Width -> {0,0,0,0,0}, 
                 Mass -> {0,0,0,0,0},
                 FeynArtsNr -> 1,
                 ElectricCharge -> 0,
                 LaTeX -> "\\nu",
                 OutputName -> "nu"  }},                             
                
    {Fx,  {  PDG -> {210001},
                PDG.IX ->{-2110001},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "\\chi^{0}",
                ElectricCharge -> 0,
                FeynArtsNr -> 6,
                OutputName -> "Chi0" }},
               
     {Fvv,  {  PDG -> {210003},
                PDG.IX ->{-2110003},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "\\nu^{d}",
                ElectricCharge -> 0,
                FeynArtsNr -> 8,
                OutputName -> "nud" }},                
    
     {FeD,  {  PDG -> {210002,210004},
                PDG.IX ->{-2110002,-2110004},
                Mass -> LesHouches,
                Width -> Automatic,
                LaTeX -> "eD",
                ElectricCharge -> -1,
                FeynArtsNr -> 9,
                OutputName -> "eD" }}     
     
        };    
          
        
 WeylFermionAndIndermediate = {
     
   {H,      {   PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "H",
                 OutputName -> "" }},

    {S1,      {  PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "S_1",
                 OutputName -> "" }},

    {S2,      {  PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "S_2",
                 OutputName -> "" }},

    {dR,     {LaTeX -> "d_R" }},
    {eR,     {LaTeX -> "e_R" }},
    {lep,     {LaTeX -> "l" }},
    {uR,     {LaTeX -> "u_R" }},
    {q,     {LaTeX -> "q" }},
    {eL,     {LaTeX -> "e_L" }},
    {dL,     {LaTeX -> "d_L" }},
    {uL,     {LaTeX -> "u_L" }},
    {vL,     {LaTeX -> "\\nu_L" }},
    {vR,     {LaTeX -> "\\nu_R" }},

    {DR,     {LaTeX -> "D_R" }},
    {ER,     {LaTeX -> "E_R" }},
    {UR,     {LaTeX -> "U_R" }},
    {EL,     {LaTeX -> "E_L" }},
    {DL,     {LaTeX -> "D_L" }},
    {UL,     {LaTeX -> "U_L" }},

    {VL,     {LaTeX -> "V_L" }},
    {VR,     {LaTeX -> "V_R" }},

    {v,     {LaTeX -> "\\nu_R" }},    
    {vR,     {LaTeX -> "V_R" }},
    {x3,     {LaTeX -> "x3_L" }},    
    {x3L,     {LaTeX -> "x3_L" }},
    {x4,     {LaTeX -> "x4_L" }},    
    {x4R,     {LaTeX -> "x4_R" }},
    {x5,     {LaTeX -> "x5_R" }},    
    {x5R,     {LaTeX -> "x5_R" }},
    {x6,     {LaTeX -> "x6_L" }},    
    {x6L,     {LaTeX -> "x6_L" }},
   
    {vp,     {LaTeX -> "v_p" }},
    {ep,     {LaTeX -> "e_p" }},
    {vpp,     {LaTeX -> "vp_p" }},
    {epp,     {LaTeX -> "ep_p" }},
    {lp,     {LaTeX -> "l_p" }},
    {lpp,     {LaTeX -> "lp_p" }}

        };       


