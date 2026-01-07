#!/usr/bin/env python3
#
# Python script to plot the result of FIR8 C-algorithm
# Author: goodkook@gmail.com
#

# For 'matplotlib',
# python3 -m pip install -U matplotlib

import os, sys
import matplotlib.pyplot as plt
import numpy as np

#
# Start here -------------------------------------------
#
if len(sys.argv)!=2:
    print('plotDFT.py <option>')
    print('     Plot graph from text file. <option> is one of followings,')
    print('        input, inputDFT, filter, filterDFT')
    sys.exit(1);

x  = []
y1 = []     # Input Time seq
y2 = []     # Input spectrum
#y3 = []     # Output Time seq
#y4 = []     # Output spectrum

for line in open('V_nco_tb_out.txt', 'r'): 
    lines = [i for i in line.split()] 
    x.append(int(lines[0])) 
    y1.append(int(lines[1])) 
    y2.append(int(lines[2]))
#    y3.append(int(lines[3]))
#    y4.append(float(lines[4]))

#y2max = y2.index(max(y2))
#y4max = y4.index(max(y4))
if (str(sys.argv[1])=='Circle'):#cos
    plt.figure(figsize=(6, 6))
    plt.title("<Verilated> NCO Circle")
    plt.annotate("Signed output", xy=(0,0), xytext=(-680,0),fontsize=10) 
    plt.annotate("Unsigned output", xy=(2048,2048), xytext=(1300,2048),fontsize=10) 
    plt.xlabel("cos(θ)")
    plt.ylabel("sin(θ)")
    plt.scatter(y1, y2, s = 2)
elif (str(sys.argv[1])=='x'):#cos
    plt.title("<Verilated> Cos") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    #plt.xticks(np.arange(0, 4800, 500))
    plt.plot(x, y1)
elif (str(sys.argv[1])=='y'):#sin
    plt.title("<Verilated> Sin") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    #plt.xticks(np.arange(0, 4800, 500))
    plt.plot(x, y2)

plt.show()
