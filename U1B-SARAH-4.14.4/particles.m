

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
      {gWB,  { Description -> "W-Boson Ghost"}},
      
     {ss,  {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "si1",
                 OutputName -> "sigma1" }},     

      {sc,  {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "si2",
                 OutputName -> "sigma2" }}   
      
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
                 Width -> {0, External}, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 2,
                 LaTeX -> "A_h",
                 OutputName -> "Ah" }},                      
      
      
     {Hm,     {   Description -> "Charged Higgs", 
                 PDG -> {0},
                 Width -> 0, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 3,
                 LaTeX -> "H^-",
                 OutputName -> "Hm" }},
                 
   (* {ss,     {  (*Description -> "",*)
               PDG -> {6666635},
               PDG.IX -> {101000002},
               FeynArtsNr -> 10,
               Width -> Automatic,
               Mass -> Automatic,               
               LaTeX -> "\\sigma_1",
               ElectricCharge -> 1,
               (*LHPC -> {"gold"},*)
               OutputName -> "sigma1" }},     
               
    {sc,     {  (*Description -> "",*)
               PDG -> {6666636},
               PDG.IX -> {101000003},
               FeynArtsNr -> 11,
               Width -> Automatic,
               Mass -> Automatic,               
               LaTeX -> "\\sigma_2",
               ElectricCharge -> 1,
               (*LHPC -> {"gold"},*)
               OutputName -> "sigma2" }}, *)
   
    {Ssc,   {  Description -> "Singlet",
               PDG -> {635,636},
               PDG.IX -> {-1010000003,-1010000004},
               Mass -> LesHouches,
               Width -> Automatic,
               FeynArtsNr -> 4,
               LaTeX -> "\\sigma",
               ElectricCharge -> 1,
               (*LHPC -> {"gold"},*)
               OutputName -> "Sigmas" }}, 
      
      {VP,   { Description -> "Photon"}}, 
      {VZ,   { Description -> "Z-Boson",
      			 Goldstone -> Ah[{1}] }}, 
      {VG,   { Description -> "Gluon" }},          
      {VWm,  { Description -> "W-Boson",
                Goldstone->Hm }},         
      {gP,   { Description -> "Photon Ghost"}},                                                   
      {gWm,  { Description -> "Negative W-Boson Ghost"}}, 
      {gWmC, { Description -> "Positive W-Boson Ghost" }}, 
      {gZ,   { Description -> "Z-Boson Ghost" }},
      {gG,   { Description -> "Gluon Ghost" }},          
      {VZp,    { Description -> "Z'-Boson",
      			 Goldstone -> Ah[{2}]}},  
      {gZp,    { Description -> "Z'-Ghost" }},    
                                                
      {Fd,   { Description -> "Down-Quarks"}},   
      {Fu,   { Description -> "Up-Quarks"}},   
      {Fe,   { Description -> "Leptons" }},
      {Fv,   { Description -> "Neutrinos",
      			PDG ->{12,14,16} }},
                
      {Fx,  {  PDG -> {210001},
                PDG.IX ->{-2110001},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "\\chi^{0}",
                ElectricCharge -> 0,
                FeynArtsNr -> 6,
                OutputName -> "Chi0" }},
                
     {Fes,  {  PDG -> {210002},
                PDG.IX ->{-2110002},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "e2",
                ElectricCharge -> -1,
                FeynArtsNr -> 7,
                OutputName -> "E2s" }},
                                       
     {Fvv,  {  PDG -> {210003},
                PDG.IX ->{-2110003},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "\\nu^{d}",
                ElectricCharge -> 0,
                FeynArtsNr -> 8,
                OutputName -> "nud" }},
                
     {Fed,  {  PDG -> {210004},
                PDG.IX ->{-2110004},
                Mass -> Automatic,
                Width -> Automatic,
                LaTeX -> "e3",
                ElectricCharge -> -1,
                FeynArtsNr -> 9,
                OutputName -> "E3s" }}       
     
        };    
          
        
 WeylFermionAndIndermediate = {
     
   {H,      {   PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "H",
                 OutputName -> "" }},
                 
   {S,      {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "\\sigma_1",
                 OutputName -> "" }},
                 
   {Sc,      {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "\\sigma_2",
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
   
   
   {VL,     {LaTeX -> "V_L" }},
   {VR,     {LaTeX -> "V_R" }},


   {DR,     {LaTeX -> "D_R" }},
   {ER,     {LaTeX -> "E_R" }},
   {UR,     {LaTeX -> "U_R" }},
   {EL,     {LaTeX -> "E_L" }},
   {DL,     {LaTeX -> "D_L" }},
   {UL,     {LaTeX -> "U_L" }},

(* new fermions *)

   {v,     {LaTeX -> "\\nu_R" }},    
   {vvR,     {LaTeX -> "Vv_R" }},
   {vr3,     {LaTeX -> "\\nu_3" }},    
   {VR3,     {LaTeX -> "V_3" }},
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


