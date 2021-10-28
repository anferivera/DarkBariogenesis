
#How to compute sigmav_bb, sigmav_w+w-, LUX y XENON1T(2017) constraints

''' Experimental annihilation cross section, lower limit taken
from b bbar and W+W- as a function of the dark matter mass, dawarf galaxies 
Fermi limit 2014 http://arxiv.org/pdf/1503.02641.pdf
'''

import numpy as np
def sigmav_bb_fit(x):

    c = 2.15034522e-32
    b = 1.66066271e-28
    a = 2.59843102e-27
    
    g = a + b*x + c*x**2 
    return g  

def sigmav_ww_fit(x):

    c = 6.16045106e-32
    b = 1.88303853e-28
    a = 1.08024182e-26
    
    g = a + b*x + c*x**2 
    return g  

def LUXconstraint_official(x):
    '''Evaluate LUX limits for DD [arXiv: astro-ph.CO/1310.8214 ]'''
    m = np.array([7.89119649, 10., 12., 17., 30., 200., 450., 1000., 2000., 3500., 5000.])
    A = np.array([0.00000000e+00, 8.48911168e-41, 1.95004609e-42, 3.75121862e-44, 3.28089421e-45, 5.80846495e-46, 1.39568112e-45, 3.05245738e-45, 5.63013735e-45, 1.07867168e-44, 1.93910180e-44])
    B = np.array([0.00000000e+00, -9.02408269e-01, -5.20772861e-01, -1.90971186e-01, -5.03032503e-02, 7.66657692e-03, 3.11852240e-03, 1.34049663e-03, 7.28957975e-04, 3.94487035e-04, 2.23523977e-04])
    imax=10
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit*1E36

def sigmaSI_LUX_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(LUXconstraint_official,x)

def XENON1Tconstraint_official(x):
    '''Evaluate XENON1T limits for DD [arXiv: 1206.6288v1]'''
    m = np.array([5.13300657, 6., 7., 8., 10., 12., 15., 22., 28., 40., 70., 170., 250., 400., 900., 2000.,3100 ])
    A = np.array([0.00000000e+00, 9.12202809e-31, 1.05982015e-34, 6.87776035e-38, 7.11912593e-40, 9.09058495e-42, 4.75346716e-43, 8.00154523e-45, 3.48707854e-46, 1.06581517e-46, 2.23043755e-47, 1.24518124e-47, 1.53905355e-47, 2.05705600e-47, 3.78566641e-47, 7.31147326e-47, 1.27722554e-46 ])
    B = np.array([0.00000000e+00, -4.27599323e+00, -2.76279703e+00, -1.71395963e+00, -1.16210971e+00, -7.44082481e-01, -5.02777951e-01, -2.35307322e-01, -8.70057359e-02, -4.52449357e-02, -3.62262032e-03, 5.56327336e-03, 4.32584727e-03, 3.10054027e-03, 1.60037074e-03, 8.62949144e-04, 6.50844801e-04 ])
    imax=15
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit*1E36

##Sigma en pb (1cm^{2}=10^{-36})
def sigmaSI_XENON1T_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(XENON1Tconstraint_official,x)

def LZD(x):
    '''Evaluate LZ limits for DD [arXiv: ]'''
    m = np.array([10.60025849, 12., 14., 16., 21., 29., 45., 90., 150., 250., 500., 800., 1000.])
    A = np.array([0.0e+00, 3.10588391e-41, 6.69344429e-44, 2.10998769e-45, 1.63435544e-46, 1.91178923e-47,
         2.34308832e-48, 1.23169246e-48, 1.38612862e-48, 2.20357573e-48, 3.70848425e-48, 6.58601742e-48,
         7.52299150e-48 ])
    B = np.array([0., -1.11252193, -0.5910568, -0.3448143, -0.18839292, -0.0807743, -0.00596433, 0.00915993, 
                  0.00768896, 0.00462341, 0.00264555, 0.00150855, 0.00128546 ])
    imax=12
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit*1E36

##Sigma en pb (1cm^{2}=10^{-36})
def sigmaSI_LZ_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(LZD,x)

def LZSD(x):
    '''Evaluate LZ_SD limits for neutrons [arXiv: ]'''
    m = np.array([6.58504786e+00, 7.20000000e+00, 8.00000000e+00, 1.05000000e+01, 1.50000000e+01, 2.60000000e+01,
         5.50000000e+01, 2.00000000e+02, 4.00000000e+02, 8.00000000e+02, 3.00000000e+03, 5.00000000e+03,
         1.00000000e+04])
    A = np.array([0.0e+00, 1.31901452e+21, 1.02268703e+06, 1.57948466e+00, 2.60204800e-03, 2.22883044e-05,
         9.84296242e-07, 4.32655553e-07, 7.60122238e-07, 1.22750956e-06, 3.62687194e-06, 6.88865943e-06,
         1.60477108e-05])
    B = np.array([0.0e+00, -7.66185201e+00, -2.73881084e+00, -1.08709259e+00, -4.57354814e-01,  
                  -1.39287839e-01, -1.15734794e-02,   5.96618745e-03, 3.11533708e-03, 
                  1.87244069e-03,   5.98999177e-04,   3.11011385e-04, 1.41241670e-04 ])
    imax=12
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit

##Sigma en pb (1cm^{2}=10^{-36})
def sigmaSD_LZ_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(LZSD,x)

def ICSD(x):
    '''Evaluate IC_SD limits for neutrons [arXiv:1212.4097 ]'''
    m = np.array([19.86002533, 48., 100., 200., 300., 500., 700., 1000., 2000., 4970., 4900.023])
    A = np.array([0., 1.26588466e-37, 2.81508950e-40, 4.25660198e-40, 2.20452212e-40, 1.24144558e-40,\
                  4.58415505e-41, 6.75725554e-41, 1.03833800e-40, 5.98998012e-40])
    B = np.array([0., -0.1307281, -0.00110903, -0.0054291, -0.00210022, 0.00029103, 0.00240022, 0.00184148,\
                  0.00149857, 0.00067175])
    imax=9
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0
            print('ERROR: Out of range')
    return limit*1E36

##Sigma en pb (1cm^{2}=10^{-36})
def sigmaSD_IC_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(ICSD,x)

def ww_CTA(x):
    '''Evaluate CTA limits for ww_einasto [arXiv: 1408.4131]'''
    m = np.array([48.72960482, 65., 90., 110., 150., 200., 250., 330., 430., 550., 800., 1100., 1500., 2300., 3500.,\
                  4600., 6200., 8500., 11000.])
    A = np.array([0.0e+00, 8.86943515e-22, 2.02950859e-23, 1.92945934e-24, 2.54362802e-25, 9.95742820e-26,\
                  8.37030064e-26, 5.46569716e-26, 4.20803928e-26, 3.63510866e-26, 3.92276756e-26, 3.36142673e-26,\
                  3.16708216e-26, 6.25231296e-26, 2.97560110e-26, 8.89632779e-26, 4.68348925e-26, 3.91102083e-26,\
                  1.07612292e-25])
    B = np.array([0.0e+00, -1.15156180e-01, -5.56962511e-02, -2.82156418e-02, -1.00060991e-02,\
                  -3.76662634e-03, -2.68968153e-03, -8.41841709e-04, -1.42632056e-05, 3.08530462e-04,\
                  1.51355950e-04, 3.12922582e-04, 3.44835004e-04, -1.16368032e-04, 2.01595152e-04,\
                  -9.78583449e-05, 4.04265714e-05, 7.11082280e-05, -4.56937018e-05])
    imax=18
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit

##Sigma en pb (1cm^{2}=10^{-36})
def ww_einasto_CTA_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(ww_CTA,x)

def bb_einasto_CTA(x):
    '''Evaluate CTA limits for bb_einasto [arXiv: 1408.4131]'''
    m = np.array([49.64824662, 65., 95., 150., 220., 330., 450., 700., 1500., 3000., 6500., 10000.])
    A = np.array([0.00000000e+00, 6.13694634e-24, 1.45549354e-24, 3.75112380e-25, 1.43040497e-25, 7.76987981e-26,\
                  5.23647901e-26, 4.81183215e-26, 4.01929563e-26, 4.47908230e-26, 6.16986292e-26, 8.32185224e-26])
    B = np.array([0.00000000e+00, -4.67466538e-02, -2.52768942e-02, -1.08399682e-02, -4.23381626e-03,\
                  -1.46845519e-03, -2.00012632e-04, 2.19574002e-17, 2.63884089e-04, 2.00134669e-04, 9.34582643e-05,\
                  4.57238426e-05])
    imax=11
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit

##Sigma en pb (1cm^{2}=10^{-36})
def bb_einasto_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(bb_einasto_CTA,x)

def bb_contracted_CTA(x):
    '''Evaluate CTA limits for bb_einasto [arXiv: 1408.4131]'''
    m = np.array([50.41926391, 70., 100., 150., 220., 330. , 450., 700., 1500., 3000., 6500., 10000.])
    A = np.array([0.00000000e+00, 8.80296506e-25, 1.99278034e-25, 5.30699339e-26, 2.37042138e-26, 1.42860502e-26,\
                  1.05084899e-26, 7.61169438e-27, 7.14197682e-27, 8.16993661e-27, 1.11599090e-26, 1.40338982e-26])
    B = np.array([0.00000000e+00, -4.34555494e-02, -2.24659328e-02, -9.19578384e-03, -3.95981097e-03,\
                  -1.63565095e-03, -5.74015153e-04, 1.48789714e-04, 2.62791338e-04, 1.82678536e-04,\
                  8.31800227e-05, 4.80958968e-05])
    imax=11
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit

##Sigma en pb (1cm^{2}=10^{-36})
def bb_contracted_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(bb_contracted_CTA,x)


def LUXSD(x):
    '''Evaluate LUX_SD limits for neutrons [arXiv:1602.0389 ]'''
    m = np.array([3.53625593e+00, 4.00000000e+00, 5.00000000e+00, 7.00000000e+00, 9.00000000e+00, 1.30000000e+01,
                  1.80000000e+01, 3.00000000e+01, 6.50000000e+01, 2.00000000e+02, 6.00000000e+02, 1.70000000e+03,
                  7.00000000e+03, 2.00000000e+04, 6.00000000e+04, 1.10000000e+05])
    A = np.array([0.00000000e+00, 8.95563843e-22, 4.30794656e-31, 7.90536493e-35, 9.91894286e-37, 2.08810511e-38,
                  1.40659130e-39, 2.23878897e-40, 6.94367149e-41, 7.51322155e-41, 1.81387793e-40, 4.87908778e-40,
                  1.60612357e-39, 5.73578274e-39, 1.83736421e-38, 3.73901326e-38])
    B = np.array([0.00000000e+00, -8.67927584e+00, -3.15657909e+00, -1.45170551e+00, -8.04308506e-01, 
                  -3.56237829e-01, -1.34709982e-01, -3.11498218e-02, 8.31924565e-03, 7.39122925e-03, 
                  2.77145864e-03, 9.74963548e-04, 2.81313494e-04, 8.26180521e-05, 2.58823631e-05, 1.31388669e-05])
    imax=15
    for i in range(1,imax+1):
        if x>=m[i-1] and x<=m[i]:
            limit = A[i]*np.exp(B[i]*x)
        if x<m[0] or x>m[imax]:
            limit = 0.0	
            print('ERROR: Out of range')
    return limit*1E36

##Sigma en pb (1cm^{2}=10^{-36})
def sigmaSD_LUX_f(x):
    import numpy as np
    x=np.asarray(x)
    if not x.shape: 
        x=[x] 
    
    return map(LUXSD,x)
