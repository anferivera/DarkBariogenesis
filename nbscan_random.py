#!/usr/bin/env python
# coding: utf-8

# ## Bariogenesis

import scipy.integrate
import numpy as np
import pandas as pd
import time

import subprocess
import sys
import random

### Definitions of general functions. We've set $\kappa=1$ 

infinite = np.inf

def my_heaviside(x1,x2):
    
    if x1 < 0:
        x = 0.
        
    elif x1 == 0.:
        x = x2        
    
    else:
        x=1.
    
    return x

def mycosh(x):
    ### Our own definition of coh(x) to avoid evaluating np.cosh(x) at |x|>150 since this will have precission issues 
    ###
        
    if abs(x)< 150.0:
        return np.cosh(x)
    else:
        return 1.e60

def Scpv(xpm, vpzsq, pzovom, th, lam, so, Lw, mo, Tn, vw, z):
    # This is the definition of the CP-violation source from Cline's work
    
    mchi1=abs(so*(1.0 + np.tanh(z/Lw))/2.0) #error 1/2: corrected
    mchisq=((mo+lam*np.cos(th)*mchi1))**2.0 + (lam*np.sin(th)*mchi1)**2.0 #revisar
    
    #vz = p/np.sqrt(p**2.0 + mchisq)
    scpv = -(2.0*vw*np.pi/(lam*Tn**2.0)*pzovom)*(mo*so*(-2.0+mycosh(2.0*z/Lw))*np.sin(th)/(Lw**3*mycosh(z/Lw)**4.0))
    
    # From Andres' code, I took the idea of renormalizing this function 
    if np.isnan(scpv):
        Scpv_renormalizado = 1.e50
    else:
        Scpv_renormalizado = scpv
        
    return Scpv_renormalizado
    
def xiL(vw2,xpm, vpzsq, pzovom, th, lam, so, Lw, mo, Tn, vw, Mzp, z):
    # \xi_{L} \def 3(n_{\chi_L} - n_{\chi^c_L})/T_c^3
    
    gfcn= lambda z: 1.0/(vw*np.sqrt(1.0+8.0*vpzsq/(3.0*vw2)))*(my_heaviside(z,1.0)*np.exp(-z*Tn*(3.0+np.sqrt(9.0+24.0*vpzsq/vw2))*vw*lam**2.0/(8.0*np.pi*vpzsq))
            +my_heaviside(-z,0.0)*np.exp(-z*Tn*(3.0-np.sqrt(9.0+24.0*vpzsq/vw2))*vw*lam**2.0/(8.0*np.pi*vpzsq)))
    inttemp = lambda zo: Scpv(xpm, vpzsq, pzovom, th, lam, so, Lw, mo, Tn, vw, zo)*gfcn(z-zo)
    return scipy.integrate.quad(inttemp,-30.,30.,limit=40)[0]

def DelnBeq(th, lam, so, Lw, mo, Tn, vw, Mzp, qS, gp, z):
    ###  thermal equilibrium asymmetry
    
    vw2=vw**2
    xpm=mo/Tn 
    vpzsq= (3.0*xpm+2.0)/(xpm**2.0+3.0*xpm+2.0)
    pzovom=((1.0-xpm)*np.exp(-xpm)+xpm**2.0*scipy.special.erf(xpm))/(4.0*(mo)**2.0*scipy.special.kn(2, xpm))
    
    inttemp = lambda z1: xiL(vw2, xpm, vpzsq,  pzovom, th, lam, so, Lw, mo, Tn, vw, Mzp, z1)*np.exp(-Mzp*abs(z-z1))
    return gp*qS*Tn**2/3.0*gp/(Mzp)*(1.0/3.0*qS*Tn**3)*scipy.integrate.quad(inttemp,-30.,30.,limit=40)[0]

yd = pd.read_csv('good-points.csv')
del[yd['Unnamed: 0']]

yd = yd.reset_index()
del[yd['index']]

#fixed parameters
qS=5.0 #charge of Phi
gweak = 0.774371 #weak coupling

t1= time.time()

#Num is the amount of points to run.. it is the i-esimo point. Entry using the keyboard
Num = int(sys.argv[1])

yt=[]

for i in range(0,1):

    Mzpt=yd['MZp'][i]
    gpt= yd['g1p'][i]
    mot= yd['mchi'][i]
    
    for j in range(0,1):
        #print(j)
        ## random parameters
        tht = np.random.uniform(-np.pi/2.,np.pi/2.)
        lamt= np.exp(np.random.uniform(np.log(1.*10**(-2)),np.log(10**(0))))
        sot= np.random.uniform(100.,500.)
        Tnt= np.random.uniform(100.,500.)
        Lwt= np.random.uniform(1./Tnt,10./Tnt)
        vwt= np.random.uniform(0.05,0.5)
        
        xt=[]
        xt2=[]
        for zt in np.arange(0,20.,.36): 
            ### This for loop creates an interpolation of \Delta n_{B eq} vs z. To be used in the numerical integral that
            ### follows

            delnbt=DelnBeq(tht, lamt, sot, Lwt, mot, Tnt, vwt, Mzpt, qS, gpt,zt)
            #print(zt, ' ',delnbt)
            xt.append(delnbt)
            xt2.append(zt)

        Gamma0=120.0*(gweak**2.0/(4.0*np.pi))**5.0*Tnt
        dnbfcn = lambda z: np.interp(z,xt2,xt)
        inttemp = lambda z: dnbfcn(z)*np.exp(-z*Gamma0/vwt)
        delnbt= scipy.integrate.quad(inttemp,0.0,20.0,limit=40)[0]*Gamma0/vwt

        #entdens=(2.0*math.pi**2.0)*100.0*(125.0)**3.0/45.0 ### This is s ~ Tc^3 Tc =125.0
        #print('MZ\'=',Mzpt, ' gp=',gpt,delnbt/entdens)
        yt.append([Mzpt,gpt,delnbt,mot,tht,lamt,sot,Tnt,Lwt,vwt])

yt=np.asarray(yt)

ydt=pd.DataFrame(yt,columns=['MZp','gp','Deltan_B','mot','tht','lamt','sot','Tnt','Lwt','vwt'])

#argv[2] will be the number in the end of the file extension: example: xd_scan1.csv
ydt.to_csv('Mzvsgp3-'+sys.argv[2]+'.csv')

t2= time.time()
print ("The program spent", t2-t1, "s running:","times -> Mzvsgp3-",sys.argv[2],".csv")


