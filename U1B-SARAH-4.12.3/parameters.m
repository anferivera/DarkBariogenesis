ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},

{g11p,        {Description -> "Mixed Gauge Coupling 2"}},
{g1p1,        {Description -> "Mixed Gauge Coupling 1"}},

{g1p,       {   Description -> "B-L-Coupling"}},

(*{g1p,        {Description -> "chargeB-Coupling", 
		 LaTeX -> "g_{X}",
             Dependence -> None, 
             LesHouches -> {gauge,4},
             OutputName -> gX }},

{MZp,       {   Description -> "Z' mass"}},*)


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
                                                                                                                                                       
{Mu,         { Description -> "SM Mu Parameter"}},         (*posible warning*)                               
{\[Lambda],  { Description -> "SM Higgs Selfcouplings"}},
{vH,          { Description -> "EW-VEV",
               DependenceSPheno -> None }},
{vX,      {  LaTeX -> "x",
             Dependence ->  None, 
             OutputName -> vX,
             Real -> True,
             LesHouches -> {BL,43} }},

{ThetaW,    { Description -> "Weinberg-Angle"}},
{ThetaWp,  { Description -> "Theta'", DependenceNum -> None  }},

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix"}},

{Lh, {OutputName -> lamh,
      LaTeX -> "l_h",
      LesHouches -> {BL,1}}},


{L2, {OutputName -> lam2,
      LaTeX -> "\\lambda_2",
      LesHouches -> {BL,2}}},
      
{L3, {OutputName -> lam3,
      LaTeX -> "\\lambda_3",
      LesHouches -> {BL,3}}},   
      
{MuP, {OutputName -> MUP,
      LaTeX -> "\\mu_p'",
      LesHouches -> {BL,11}}},       

{muh, {OutputName -> muh,
      LaTeX -> "\\mu_h",
      LesHouches -> {BL,15}}},
      
{L22, {OutputName -> lam22,
      LaTeX -> "\\lambda_{22}",
      LesHouches -> L22}},

{L23, {OutputName -> lam23,
      LaTeX -> "\\lambda_{23}",
      LesHouches -> L23}},
      
{L32, {OutputName -> lam32,
      LaTeX -> "\\lambda_{32}",
      LesHouches -> L32}}, 
      
{L33, {OutputName -> lam33,
      LaTeX -> "\\lambda_{33}",
      LesHouches -> L33}},     

{mu1, {OutputName -> mu1,
      LaTeX -> "\\mu_1",
      LesHouches -> mu1}},
  
{mu2, {OutputName -> mu2,
      LaTeX -> "\\mu_2",
      LesHouches -> mu2}}, 
      
{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},
{Vd,        {Description ->"Left-Down-Mixing-Matrix"}},
{Uu,        {Description ->"Right-Up-Mixing-Matrix"}},
{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 
{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}},
{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}},

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

{LSbi,     { LaTeX -> "\\lambda^{Sbi}",
              Real -> True, 
              LesHouches -> LSbi,
              OutputName -> "LSbi" }},
                             
{YRA,       { LaTeX -> "\\lambda_a",   
              Real -> True, 
              LesHouches -> YRA,
              OutputName-> YRA }},   
              
{YRB,       { LaTeX -> "\\lambda_b",   
              Real -> True, 
              LesHouches -> YRB,
              OutputName-> YRB }},      
 
 {YRC,       { LaTeX -> "\\lambda_c",   
              Real -> True, 
              LesHouches -> YRC,
              OutputName-> YRC }}, 
              
 {YRD,       { LaTeX -> "\\lambda_d", 
              Real -> False, 
              LesHouches -> YRD,
              OutputName-> YRD }},     
              
 {YRE,       { LaTeX -> "\\lambda_e", 
                Real -> False, 
                LesHouches -> YRE,
                OutputName-> YRE }},
                
 {YRF,       { LaTeX -> "\\lambda_f", 
                Real -> True, 
                LesHouches -> YRF,
                OutputName-> YRF }},
                
 {YRG,       { LaTeX -> "\\lambda_g",   
              Real -> False, 
              LesHouches -> YRG,
              OutputName-> YRG }},   
              
 {YRH,       { LaTeX -> "\\lambda_h",   
              Real -> True, 
              LesHouches -> YRH,
              OutputName-> YRH }},
              
 {VeD,       {Description ->"New-Left-Lepton-Mixing-Matrix", 
 			 LaTeX -> "UD^e_L",
             Dependence ->  None, 
             Value -> None, 
             LesHouches -> UELDMIX,
             OutputName-> ZELD      }},            
            
 {UeD,       {Description ->"New-Right-Lepton-Mixing-Matrix", 
 			 LaTeX -> "UD^e_R",
             Dependence ->  None, 
             Value -> None, 
             LesHouches -> UERDMIX,
             OutputName-> ZERD      }}             

 }; 
 

