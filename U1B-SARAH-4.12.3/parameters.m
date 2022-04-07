ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},

{g11p,        {Description -> "Mixed Gauge Coupling 2"}},
{g1p1,        {Description -> "Mixed Gauge Coupling 1"}},

(*{g1p,       {   Description -> "B-L-Coupling"}},*)

{g1p,{ 
     Dependence -> None, 
     DependenceNum -> None, 
     DependenceOptional -> None, 
     DependenceSPheno -> None, 
     Real -> True, 
     LesHouches -> {gauge, 12}, 
     LaTeX -> "g_{1p}", 
     OutputName -> g1p}},

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
                                                                                                                                                       
{Mu,         { Description -> "SM Mu Parameter"}},         (*posible warning*)                               
{\[Lambda],  { Description -> "SM Higgs Selfcouplings"}},
{vH,          { Description -> "EW-VEV",
               DependenceSPheno -> None }},

{vX,      {  LaTeX -> "vx",
             Dependence ->  None, 
             OutputName -> vX,
             Real -> True,
             LesHouches -> {BL,43} }},
             
{vX2,      {  LaTeX -> "vx2",
             Dependence ->  None, 
             OutputName -> vX2,
             Real -> True,
             LesHouches -> {BL,44} }},

{ThetaW,    { Description -> "Weinberg-Angle"}},
{ThetaWp,  { Description -> "Theta'", DependenceNum -> None  }},

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix"}},

{Lh, {OutputName -> lamh,
      LaTeX -> "l_h",
      LesHouches -> {BL,1}}},


{L2, {OutputName -> lam2,
      LaTeX -> "\\lambda_{2}",
      LesHouches -> {BL,2}}},
      
{L3, {OutputName -> lam3,
      LaTeX -> "\\lambda_{3}",
      LesHouches -> {BL,3}}}, 
      
{L4, {OutputName -> lam4,
      LaTeX -> "\\lambda_{4}",
      LesHouches -> {BL,4}}},
      
{L5, {OutputName -> lam5,
      LaTeX -> "\\lambda_{5}",
      LesHouches -> {BL,5}}},   
      
{mui, {OutputName -> mui,
      LaTeX -> "\\mu_i'",
      LesHouches -> {BL,11}}},     
      
{muj, {OutputName -> muj,
      LaTeX -> "\\mu_j'",
      LesHouches -> {BL,12}}},         

{muh, {OutputName -> muh,
      LaTeX -> "\\mu_h",
      LesHouches -> {BL,15}}},
      
{L6, {OutputName -> lam6,
      LaTeX -> "\\lambda_{6}",
      LesHouches -> L6}}, 
      
{L7, {OutputName -> lam7,
      LaTeX -> "\\lambda_{7}",
      LesHouches -> L7}},     

{m1, {OutputName -> m1,
      LaTeX -> "\\mu_1",
      LesHouches -> m1}},
  
{m2, {OutputName -> m2,
      LaTeX -> "\\mu_2",
      LesHouches -> m2}}, 
      
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
                             
{YA1,       { LaTeX -> "\\lambda_{a1}",   
              Real -> True, 
              LesHouches -> YA1,
              OutputName-> YA1 }},  
              
{YA2,       { LaTeX -> "\\lambda_{a2}",   
              Real -> True, 
              LesHouches -> YA2,
              OutputName-> YA2 }},                 
              
{YB1,       { LaTeX -> "\\lambda_{b1}",   
              Real -> True, 
              LesHouches -> YB1,
              OutputName-> YB1 }},      

{YB2,       { LaTeX -> "\\lambda_{b2}",   
              Real -> True, 
              LesHouches -> YB2,
              OutputName-> YB2 }}, 
              
{YC1,       { LaTeX -> "\\lambda_{c1}",   
              Real -> True, 
              LesHouches -> YC1,
              OutputName-> YC1 }}, 

{YC2,       { LaTeX -> "\\lambda_{c2}",   
              Real -> True, 
              LesHouches -> YC2,
              OutputName-> YC2 }}, 
              
{LD,       { LaTeX -> "\\lambda_d", 
              Real -> False, 
              LesHouches -> LD,
              OutputName-> LD }},     
              
{LE,       { LaTeX -> "\\lambda_e", 
                Real -> False, 
                LesHouches -> LE,
                OutputName-> LE }},
                
{Fi,       { LaTeX -> "\\lambda_{fi}", 
                Real -> True, 
                LesHouches -> Fi,
                OutputName-> Fi }},

{Fj,       { LaTeX -> "\\lambda_{fj}", 
                Real -> True, 
                LesHouches -> Fj,
                OutputName-> Fj }},
                
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
 

