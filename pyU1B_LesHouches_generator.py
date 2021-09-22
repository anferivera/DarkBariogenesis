#!/usr/bin/env python

#Created by Andres Rivera. File for red LSHAFiles
# 16-09-2021

import pyslha

def buildSLHAinFile():

    ########################### CREATED THE LHAFILE #######################
    #Read the blocks, but do not read all its entries.
    LHA = pyslha.readSLHAFile('LesHouches.in.U1B_low', ignorenomass=True)

    #Add entries with coments (some of them were vacum)
    #Block MODSEL      #     
    LHA.blocks['MODSEL'].entries[1]='0               #  1/0: High/low scale input' 
    LHA.blocks['MODSEL'].entries[2]='1              # Boundary Condition'  
    LHA.blocks['MODSEL'].entries[6]='1               # Generation Mixing' 
    LHA.blocks['MODSEL'].entries[12]='173.5          # Renormalization scale' 

    #Block SMINPUTS    # Standard Model inputs 
    LHA.blocks['SMINPUTS'].entries[2]='1.166370E-05    # G_F,Fermi constant' 
    LHA.blocks['SMINPUTS'].entries[3]='1.187000E-01    # alpha_s(MZ) SM MSbar' 
    LHA.blocks['SMINPUTS'].entries[4]='9.118870E+01    # Z-boson pole mass' 
    LHA.blocks['SMINPUTS'].entries[5]='4.180000E+00    # m_b(mb) SM MSbar' 
    LHA.blocks['SMINPUTS'].entries[6]='1.735000E+02    # m_top(pole)' 
    LHA.blocks['SMINPUTS'].entries[7]='1.776690E+00    # m_tau(pole)' 

    #Block MINPAR      # Input parameters 
    LHA.blocks['MINPAR'].entries[1]='-1.3000000E-01    # LambdahINPUT'
    LHA.blocks['MINPAR'].entries[2]='-7.2000000E-02    # Lambda2INPUT'
    LHA.blocks['MINPAR'].entries[3]='1.2000000E-04    # Lambda3INPUT'
    LHA.blocks['MINPAR'].entries[4]='-7.2000000E-03    # Lambda4INPUT'
    LHA.blocks['MINPAR'].entries[5]='1.0000000E-03    # Lambda5INPUT'
    LHA.blocks['MINPAR'].entries[6]='4.0000000E+08    # mujINPUT'
    LHA.blocks['MINPAR'].entries[7]='1.0000000E-01    # YA1INPUT'
    LHA.blocks['MINPAR'].entries[8]='1.0000000E-02    # YA2INPUT'
    LHA.blocks['MINPAR'].entries[9]='2.0000000E-01    # YB1INPUT'
    LHA.blocks['MINPAR'].entries[10]='2.0000000E-02    # YB2INPUT'
    LHA.blocks['MINPAR'].entries[11]='3.0000000E-01    # YC1INPUT'
    LHA.blocks['MINPAR'].entries[12]='3.0000000E-02    # YC2INPUT'
    LHA.blocks['MINPAR'].entries[13]='2.0000000E-02    # YRGINPUT'
    LHA.blocks['MINPAR'].entries[14]='1.2000000E-02    # YRHINPUT'
    LHA.blocks['MINPAR'].entries[15]='2.5000000E+03    # vXInput'
    LHA.blocks['MINPAR'].entries[16]='5.0000000E-01    # g1pINPUT'
    LHA.blocks['MINPAR'].entries[17]='0.0000000E+00    # g1p1INPUT'
    LHA.blocks['MINPAR'].entries[18]='0.0000000E+00    # g11pINPUT'
    
    #Block SPhenoInput   # SPheno specific input 
    LHA.blocks['SPHENOINPUT'].entries[1]='-1              # error level' 
    LHA.blocks['SPHENOINPUT'].entries[2]='0              # SPA conventions' 
    LHA.blocks['SPHENOINPUT'].entries[7]='1              # Skip 2-loop Higgs corrections' 
    LHA.blocks['SPHENOINPUT'].entries[8]='3              # Method used for two-loop calculation' 
    LHA.blocks['SPHENOINPUT'].entries[9]='1              # Gaugeless limit used at two-loop' 
    LHA.blocks['SPHENOINPUT'].entries[10]='0              # safe-mode used at two-loop' 
    LHA.blocks['SPHENOINPUT'].entries[11]='1               # calculate branching ratios' 
    LHA.blocks['SPHENOINPUT'].entries[13]='1               # 3-Body decays: none (0), fermion (1), scalar (2), both (3)' 
    LHA.blocks['SPHENOINPUT'].entries[14]='0               # Run couplings to scale of decaying particle' 
    LHA.blocks['SPHENOINPUT'].entries[12]='1.000E-04       # write only branching ratios larger than this value' 
    LHA.blocks['SPHENOINPUT'].entries[15]='1.000E-30       # write only decay if width larger than this value' 
    LHA.blocks['SPHENOINPUT'].entries[31]='-1              # fixed GUT scale (-1: dynamical GUT scale)' 
    LHA.blocks['SPHENOINPUT'].entries[32]='0               # Strict unification' 
    LHA.blocks['SPHENOINPUT'].entries[34]='1.000E-04       # Precision of mass calculation' 
    LHA.blocks['SPHENOINPUT'].entries[35]='40              # Maximal number of iterations'
    LHA.blocks['SPHENOINPUT'].entries[36]='5               # Minimal number of iterations before discarding points'
    LHA.blocks['SPHENOINPUT'].entries[37]='1               # Set Yukawa scheme'  
    LHA.blocks['SPHENOINPUT'].entries[38]='1               # 1- or 2-Loop RGEs' 
    LHA.blocks['SPHENOINPUT'].entries[50]='0               # Majorana phases: use only positive masses (put 0 to use file with CalcHep/Micromegas!)' 
    LHA.blocks['SPHENOINPUT'].entries[51]='0               # Write Output in CKM basis' 
    LHA.blocks['SPHENOINPUT'].entries[52]='1               # Write spectrum in case of tachyonic states' 
    LHA.blocks['SPHENOINPUT'].entries[55]='0               # Calculate loop corrected masses' 
    LHA.blocks['SPHENOINPUT'].entries[61]='0               # Running SM parameters'
    LHA.blocks['SPHENOINPUT'].entries[57]='1               # Calculate low energy constraints' 
    LHA.blocks['SPHENOINPUT'].entries[60]='1               # Include possible, kinetic mixing'
    LHA.blocks['SPHENOINPUT'].entries[65]='1               # Solution tadpole equation' 
    LHA.blocks['SPHENOINPUT'].entries[66]='1               # Two-Scale Matching' 
    LHA.blocks['SPHENOINPUT'].entries[67]='1               # effective Higgs mass calculation' 
    LHA.blocks['SPHENOINPUT'].entries[75]='0               # Write WHIZARD files' 
    LHA.blocks['SPHENOINPUT'].entries[76]='1               # Write HiggsBounds file'   
    LHA.blocks['SPHENOINPUT'].entries[77]='1               # Output for MicrOmegas (running masses for light quarks; real mixing matrices)'   
    LHA.blocks['SPHENOINPUT'].entries[78]='0               # Output for MadGraph (writes also vanishing blocks)'   
    LHA.blocks['SPHENOINPUT'].entries[79]='1               # Write WCXF files (exchange format for Wilson coefficients)' 
    LHA.blocks['SPHENOINPUT'].entries[86]='0.              # Maximal width to be counted as invisible in Higgs decays; -1: only LSP' 
    LHA.blocks['SPHENOINPUT'].entries[510]='0.              # Write tree level values for tadpole solutions' 
    LHA.blocks['SPHENOINPUT'].entries[515]='0               # Write parameter values at GUT scale' 
    LHA.blocks['SPHENOINPUT'].entries[520]='1.              # Write effective Higgs couplings (HiggsBounds blocks): put 0 to use file with MadGraph!' 
    LHA.blocks['SPHENOINPUT'].entries[521]='1.              # Diphoton/Digluon widths including higher order' 
    LHA.blocks['SPHENOINPUT'].entries[525]='0.              # Write loop contributions to diphoton decay of Higgs' 
    LHA.blocks['SPHENOINPUT'].entries[530]='1.              # Write Blocks for Vevacious' 

    #Block DECAYOPTIONS   # Options to turn on/off specific decays 
    LHA.blocks['DECAYOPTIONS'].entries[1]='1     # Calc 3-Body decays of Fv' 
    LHA.blocks['DECAYOPTIONS'].entries[2]='1     # Calc 3-Body decays of Fu' 
    LHA.blocks['DECAYOPTIONS'].entries[3]='1     # Calc 3-Body decays of Fe' 
    LHA.blocks['DECAYOPTIONS'].entries[4]='1     # Calc 3-Body decays of Fd' 

    #Block FIIN    #  
    LHA.blocks['FIIN'].entries[1,1]='   1.0000000E-01         # Fi(1,1)'
    LHA.blocks['FIIN'].entries[1,2]='   2.0000000E-02         # Fi(1,2)'
    LHA.blocks['FIIN'].entries[2,1]='   1.0000000E-02         # Fi(2,1)'
    LHA.blocks['FIIN'].entries[2,2]='   2.0000000E-02         # Fi(2,2)'

    #Block FJIN    #  
    LHA.blocks['FJIN'].entries[1,1]='   1.0000000E-02         # Fj(1,1)'
    LHA.blocks['FJIN'].entries[1,2]='   2.0000000E-03         # Fj(1,2)'
    LHA.blocks['FJIN'].entries[2,1]='   1.0000000E-03         # Fj(2,1)'
    LHA.blocks['FJIN'].entries[2,2]='   2.0000000E-03         # Fj(2,2)'

    #Block L6IN    #  
    LHA.blocks['L6IN'].entries[1,1]='   1.0000000E-02         # lam6(1,1)'
    LHA.blocks['L6IN'].entries[1,2]='   0.0000000E-02         # lam6(1,2)'
    LHA.blocks['L6IN'].entries[2,1]='   0.0000000E-02         # lam6(2,1)'
    LHA.blocks['L6IN'].entries[2,2]='   4.0000000E-02         # lam6(2,2)'

    #Block L7IN    #  
    LHA.blocks['L7IN'].entries[1,1]='   1.1000000E-02         # lam7(1,1)'
    LHA.blocks['L7IN'].entries[1,2]='   0.0000000E-03         # lam7(1,2)'
    LHA.blocks['L7IN'].entries[2,1]='   0.1000000E-02         # lam7(2,1)'
    LHA.blocks['L7IN'].entries[2,2]='   5.0000000E-02         # lam7(2,2)'

    #$Block LDIN    #  
    LHA.blocks['LDIN'].entries[1,1]='   1.0000000E-01         # LD(1,1)'
    LHA.blocks['LDIN'].entries[1,2]='   2.0000000E-02         # LD(1,2)'
    LHA.blocks['LDIN'].entries[1,3]='   3.0000000E-02         # LD(1,3)'
    LHA.blocks['LDIN'].entries[2,1]='   1.0000000E-02         # LD(2,1)'
    LHA.blocks['LDIN'].entries[2,2]='   2.0000000E-02         # LD(2,2)'
    LHA.blocks['LDIN'].entries[2,3]='   3.0000000E-02         # LD(2,3)'

    #Block LEIN    #  
    LHA.blocks['LEIN'].entries[1,1]='   1.0000000E-01         # LE(1,1)'
    LHA.blocks['LEIN'].entries[1,2]='   2.0000000E-02         # LE(1,2)'
    LHA.blocks['LEIN'].entries[2,1]='   1.0000000E-03         # LE(2,1)'
    LHA.blocks['LEIN'].entries[2,2]='   2.0000000E-02         # LE(2,2)'

    #Block M1IN    #  
    LHA.blocks['M1IN'].entries[1,1]='   2.0000000E+06         # m1(1,1)'
    LHA.blocks['M1IN'].entries[1,2]='   0.000000E+00         # m1(1,2)'
    LHA.blocks['M1IN'].entries[2,1]='   0.000000E+00         # m1(2,1)'
    LHA.blocks['M1IN'].entries[2,2]='   2.0000000E+07         # m1(2,2)'

    #Block M2IN    #  
    LHA.blocks['M2IN'].entries[1,1]='   2.0000000E+08         # m2(1,1)'
    LHA.blocks['M2IN'].entries[1,2]='   0.000000E+00         # m2(1,2)'
    LHA.blocks['M2IN'].entries[2,1]='   0.000000E+00         # m2(2,1)'
    LHA.blocks['M2IN'].entries[2,2]='   2.0000000E+9         # m2(2,2)'

    #############################################################

    return LHA

# Example: Modific the LesHouches_low   
#LHA.blocks['MINPAR'].entries[2]='%.7E    # MDFInput' %222
#xdict['MINPAR'].entries[3]='%.6E    # MS12Input' %MS12      

#Write the file
#pyslha.writeSLHAFile('InputFile',LHA)
 
