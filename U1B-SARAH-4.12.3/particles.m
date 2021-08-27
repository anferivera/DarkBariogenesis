

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
                 Width -> {0, External}, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 2,
                 LaTeX -> "A_h",
                 OutputName -> "Ah" }},                      

    {Hm,   { Description -> "Charged Higgs", 
	     PDG -> {0, 900037, 900038},
	     PDG.IX -> {0, -10000602,  -10000603},
	     Width -> {0, External, External},
	     Mass -> {0, LesHouches, LesHouches},
	     ElectricCharge -> -1,
	     Latex -> {"Hm^-","S^-_1","S^-_2"},
	     OutputName -> {"Hm","s1","s2"}}},  
                 
   (* {Ssc,   {  Description -> "Singlet",
               PDG -> {635,636},
               PDG.IX -> {-1010000003,-1010000004},
               Mass -> LesHouches,
               Width -> Automatic,
               FeynArtsNr -> 4,
               LaTeX -> "\\sigma",
               ElectricCharge -> 1,
               (*LHPC -> {"gold"},*)
               OutputName -> "Sigmas" }},   *)              
      
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
		   PDG ->{12,14,16,8810012,8810014} }},   
           
    (*{Fv,   { Description -> "Neutrinos",
                   PDG ->{12,14,16,8810012,8810014},
                    PDG.IX ->{-110000001,-110000002,-110000003,-110000004,-110000005},
                 Width -> {0,0,0,0,0}, 
                 Mass -> {0,0,0,0,0},
                 FeynArtsNr -> 1,
                 ElectricCharge -> 0,
                 LaTeX -> "\\nu",
                 OutputName -> "nu"  }},   *)        
           
    (*New fermions*)       
                
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
                LaTeX -> "eR^{p}",
                ElectricCharge -> -1,
                FeynArtsNr -> 7,
                OutputName -> "eRp" }},
                                       
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
                LaTeX -> "eR^{pp}",
                ElectricCharge -> -1,
                FeynArtsNr -> 9,
                OutputName -> "eRpp" }}       
     
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
   {vR,     {LaTeX -> "\\nu_R" }},
   

   {DR,     {LaTeX -> "D_R" }},
   {ER,     {LaTeX -> "E_R" }},
   {UR,     {LaTeX -> "U_R" }},
   {EL,     {LaTeX -> "E_L" }},
   {DL,     {LaTeX -> "D_L" }},
   {UL,     {LaTeX -> "U_L" }},
   
   {VL,     {LaTeX -> "V_L" }},
   {VR,     {LaTeX -> "V_R" }},

(* new fermions *)

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


