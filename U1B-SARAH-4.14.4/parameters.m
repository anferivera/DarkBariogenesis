ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},

{g11p,        {Description -> "Mixed Gauge Coupling 2"}},
{g1p1,        {Description -> "Mixed Gauge Coupling 1"}},
{g1p,       {   Description -> "B-L-Coupling"}},

{MZp,       {   Description -> "Z' mass"}},


{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{e,         { Description -> "electric charge"}},
{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},
 

{Yu,        { Description -> "Up-Yukawa-Coupling",
			 DependenceNum ->  Sqrt[2]/vH* {{Mass[Fu,1],0,0},
             									{0, Mass[Fu,2],0},
             									{0, 0, Mass[Fu,3]}}}}, 
             									
{Yd,        { Description -> "Down-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fd,1],0,0},
             									{0, Mass[Fd,2],0},
             									{0, 0, Mass[Fd,3]}}}},
             									
{Ye,        { Description -> "Lepton-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fe,1],0,0},
             									{0, Mass[Fe,2],0},
             									{0, 0, Mass[Fe,3]}}}}, 
                                                                            
                                                                           
{Mu,         { Description -> "SM Mu Parameter"}},                                        
{\[Lambda],  { Description -> "SM Higgs Selfcouplings"}},
{vH,          { Description -> "EW-VEV",
               DependenceSPheno -> None }},
{vX,      {  LaTeX -> "x",
             Dependence ->  None, 
             OutputName -> vX,
             Real -> True,
             LesHouches -> {BL,43} }},
  
 (*{vX2,      {  LaTeX -> "x2",
             Dependence ->  None, 
             OutputName -> vX2,
             Real -> True,
	LesHouches -> {BL,44} }},*)             

{ThetaW,    { Description -> "Weinberg-Angle"}},
{ThetaWp,  { Description -> "Theta'", DependenceNum -> None  }},

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix"}},

{Yx, {OutputName -> Yx,
      LaTeX -> "Y_x",
      LesHouches -> YX}},

{Yv, {OutputName -> Yv,
      LaTeX -> "Y_\\nu",
      LesHouches -> Yv}},

{L1, {OutputName -> lam1,
      LaTeX -> "\\lambda_1",
      LesHouches -> {BL,1}}},


{L2, {OutputName -> lam2,
      LaTeX -> "\\lambda_2",
      LesHouches -> {BL,2}}},

{L22, {OutputName -> lam22,
      LaTeX -> "\\lambda_22",
      LesHouches -> {BL,22}}},

{L23, {OutputName -> lam23,
      LaTeX -> "\\lambda_23",
      LesHouches -> {BL,23}}},

{L3, {OutputName -> lam3,
      LaTeX -> "\\lambda_3",
      LesHouches -> {BL,3}}},
      
{L32, {OutputName -> lam32,
      LaTeX -> "\\lambda_32",
      LesHouches -> {BL,4}}}, 
      
{L33, {OutputName -> lam33,
      LaTeX -> "\\lambda_33",
      LesHouches -> {BL,24}}},       

{MuP, {OutputName -> MUP,
      LaTeX -> "\\mu'",
      LesHouches -> {BL,10}}},

{MuP2, {OutputName -> MUP2,
      LaTeX -> "\\mu 2'",
      LesHouches -> {BL,12}}},      

{mu2, {OutputName -> mu,
      LaTeX -> "\\mu_2",
      LesHouches -> {BL,11}}},

{mH2, {OutputName -> mH2,
      LaTeX -> "\\m^2_H",
      LesHouches -> {BL,20}}},

{mchi2, {OutputName -> mX2,
      LaTeX -> "\\m^2_\\chi",
      LesHouches -> {BL,21}}},

{MUS, {OutputName -> muS,
      LaTeX -> "\\mu_s",
      LesHouches -> {BL,30}}},
      
{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},
{Vd,        {Description ->"Left-Down-Mixing-Matrix"}},
{Uu,        {Description ->"Right-Up-Mixing-Matrix"}},
{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 
{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}},
{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}},

(* new *)

(*{Vv, {Description ->"Neutrino-Mixing-Matrix"}},*)

(*{Vvr, {Description ->"New-Neutrino-Mixing-Matrix",
             LaTeX -> "U^{UR}",
             Dependence ->  None, 
             Value -> None, 
             LesHouches -> UVRMIX,
             OutputName-> UVR }},*)

{ZM,	    {Description -> "Neutrino-Mixing-Matrix"}},


{ZH,        { Description->"Scalar-Mixing-Matrix", 
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},
  
{ZA,        { Description->"Pseudo-Scalar-Mixing-Matrix", 
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},

{ZP,        { Description->"Charged-Mixing-Matrix", 
		LaTeX -> "Z^+",
		Real ->True,
		DependenceOptional -> None, 
		Value -> None, 
		LesHouches -> CHARGEMIX,
		OutputName-> ZP      }},


{VSs,       {   (* Rotation matrix *)
                LaTeX -> "VS",
                Real -> True,                 
                LesHouches ->  VSs,
                OutputName-> VSs }},

{MP2,       {(*Description -> " "*)
             LaTeX -> "M_P^2",
             Real -> True, 
             LesHouches -> MP2,
	     OutputName-> MP2}},
         
{MPc2,       {(*Description -> " "*)
             LaTeX -> "MP_c^2",
             Real -> True, 
             LesHouches -> MPc2,
	     OutputName-> MPc2}},         
  

(*{MS22,       { LaTeX -> "mss^{2}",
              Real -> True, 
              (*DependenceNum -> Sqrt[Mass[Ss[1]]^2-v^2*LamS1H]*)
              LesHouches -> MS22,
              OutputName-> MS22 }} ,*)

{LamSH,     { LaTeX -> "\\lambda^{SH}",
              Real -> True, 
              LesHouches -> LSH,
              OutputName -> "LSH" }},

{LSbi,     { LaTeX -> "\\lambda^{Sbi}",
              Real -> True, 
              LesHouches -> LSbi,
              OutputName -> "LSbi" }},
  

{LamS,      { LaTeX -> "\\lambda^{S}",
              Real -> True, 
              LesHouches -> LS,
              OutputName -> "LS" }},
              
{MDF,       { LaTeX -> "M_{\\Psi}",
              Real -> True, 
              LesHouches -> MDF,
              OutputName -> MDF }},
              
{XV,        {(*Description ->"x-Left--Mixing-Matrix",*)
             LesHouches -> XV,
             OutputName -> XV }},
             
{XU,        {(*Description ->"x-Right-Lepton-Mixing-Matrix",*)
             LesHouches -> XU,
             OutputName -> XU }},
             
{YRA,       { LaTeX -> "h_a",   
              Real -> True, 
              LesHouches -> YRA,
              OutputName-> YRA }},   
              
{YRB,       { LaTeX -> "h_b",   
              Real -> True, 
              LesHouches -> YRB,
              OutputName-> YRB }},      
 
 {YRC,       { LaTeX -> "h_c",   
              Real -> True, 
              LesHouches -> YRC,
              OutputName-> YRC }}, 
                            
              
 {YRD,       { LaTeX -> "h_d", 
              Real -> True, 
              LesHouches -> YRD,
              OutputName-> YRD }},     
              
 {YRE,       { LaTeX -> "hr_e", 
                Real -> True, 
                LesHouches -> YRE,
                OutputName-> YRE }},
                
 {YRF,       { LaTeX -> "hr_f", 
                Real -> True, 
                LesHouches -> YRF,
                OutputName-> YRF }},
                
 {YRG,       { LaTeX -> "h_g",   
              Real -> True, 
              LesHouches -> YRG,
              OutputName-> YRG }},   
              
 {YRH,       { LaTeX -> "h_h",   
              Real -> True, 
              LesHouches -> YRH,
              OutputName-> YRH }},   
              
    
 {VSs,       {   (* Rotation matrix *)
                LaTeX -> "VS",
                Real -> True,                 
                LesHouches ->  VSs,
                OutputName-> VSs }}              

 }; 
 

