###+++++++++ python rutine to get the anlytical neutrino eigenvalues +++++++++++++
#...v2.py no tiene en cuenta elementos cruzados en la matrix LAMBDA. Solo L1 and L2

import numpy as np

#Loop factor
def LF(me,mH,Vl1,Ul1):
    
    mk = 1./(16.*np.pi**2)*Vl1*Ul1*me*(me**2*np.log(me**2)-mH**2*np.log(mH**2))/(me**2-mH**2)
    
    return mk  

#sum over L
def SUML(me1,me2,mHj,V11,V21,U11,U21):
    
    kk = LF(me1,mHj,V11,U11) + LF(me2,mHj,V21,U21)
    
    return kk

#Lambda j term
def Lj(Zja,Zjb,me1,me2,mHj,V11,V21,U11,U21):
    
    kj = Zja*Zjb*SUML(me1,me2,mHj,V11,V21,U11,U21)
    
    return kj  

#sum over j={2,5} and depend from a and b
def Lab(Z2a,Z3a,Z4a,Z5a,Z2b,Z3b,Z4b,Z5b,me1,me2,mH2,mH3,mH4,mH5,V11,V21,U11,U21):
    
    sj = Lj(Z2a,Z2b,me1,me2,mH2,V11,V21,U11,U21)+Lj(Z3a,Z3b,me1,me2,mH3,V11,V21,U11,U21)+\
         Lj(Z4a,Z4b,me1,me2,mH4,V11,V21,U11,U21)+Lj(Z5a,Z5b,me1,me2,mH5,V11,V21,U11,U21)
    
    return sj

def Mab(Z22,Z23,Z24,Z25,Z32,Z33,Z34,Z35,Z42,Z43,Z44,Z45,Z52,Z53,Z54,Z55,me1,me2,mH2,mH3,mH4,\
    mH5,V11,V21,U11,U21,hd11,hd12,hd13,hd21,hd22,hd23,he11,he12,he13,he21,he22,he23):

    #Matrix elements LAMBDAab
    L1 = Lab(Z22,Z32,Z42,Z52,Z24,Z34,Z44,Z54,me1,me2,mH2,mH3,mH4,mH5,V11,V21,U11,U21)
    L2 = Lab(Z23,Z33,Z43,Z53,Z25,Z35,Z45,Z55,me1,me2,mH2,mH3,mH4,mH5,V11,V21,U11,U21)
    
    M11 = hd11*L1*he11 + hd21*L2*he21
    M12 = hd11*L1*he12 + hd21*L2*he22
    M13 = hd11*L1*he13 + hd21*L2*he23
    M21 = hd12*L1*he11 + hd22*L2*he21
    M22 = hd12*L1*he12 + hd22*L2*he22
    M23 = hd12*L1*he13 + hd22*L2*he23
    M31 = hd13*L1*he11 + hd23*L2*he21
    M32 = hd13*L1*he12 + hd23*L2*he22
    M33 = hd13*L1*he13 + hd23*L2*he23
    
    Mvik = np.matrix( [[M11, M12, M13],
                   [M21, M22, M23],
                   [M31, M32, M33]] )
    
    #eigenvalues e eigenvectors
    (Mdiag2,V)=np.linalg.eig(Mvik*np.transpose(Mvik))
    
    #took eigenvalues
    MX1 = np.sqrt(np.abs(Mdiag2[0]))
    MX2 = np.sqrt(np.abs(Mdiag2[1]))
    MX3 = np.sqrt(np.abs(Mdiag2[2]))
    
    ## reorganize the eigenvalues (neutrino masses)
    mn1 = 0.0
    mn2 = 0.0
    mn3 = 0.0

    if MX1 < MX2 and MX1 < MX3:
        mn1 = MX1

        if MX2 < MX3:
            mn2 = MX2
            mn3 = MX3
        else:
            mn2 = MX3
            mn3 = MX2  

    if MX2 < MX1 and MX2 < MX3:
        mn1 = MX2

        if MX1 < MX3:
            mn2 = MX1
            mn3 = MX3
        else:
            mn2 = MX3
            mn3 = MX1   

    if MX3 < MX1 and MX3 < MX2:
        mn1 = MX3

        if MX1 < MX2:
            mn2 = MX1
            mn3 = MX2
        else:
            mn2 = MX2
            mn3 = MX1
    
    return mn1,mn2,mn3

#run all dataframe
MatrixDiag_new=np.vectorize(Mab,doc='Input for pyfunc below:\
Z22,Z23,Z24,Z25,Z32,Z33,Z34,Z35,Z42,Z43,Z44,Z45,Z52,Z53,Z54,Z55,\
         me1,me2,mH2,mH3,mH4,mH5,V11,V21,U11,U21,hd11,hd12,hd13,hd21,hd22,hd23,he11,he12,he13,he21,he22,he23')
