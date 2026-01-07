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
y3 = []     # Output Time seq
y4 = []     # Output spectrum

with open('outUntimedNCO.txt', 'r') as file:
    lines = file.readlines()

for line in lines[:-1]:  
    data = line.split()
    x.append(int(data[0])) 
    y1.append(int(data[1])) 
    y2.append(float(data[2])) 
    y3.append(int(data[3])) 
    y4.append(float(data[4])) 

last_data = lines[-1].split()
F_SAMPLE = int(last_data[0])  # 중요한 숫자 1
FWC = int(last_data[1])
CLK = int(last_data[2])
MODE = int(last_data[3])

outputFreq = CLK / 2**20 * FWC
deltaFreq = CLK / F_SAMPLE

#unsigned변환 과정에서 바이어스 추가로 DC성분이 가장 크게 나타남, 따라서 0제외하고 가장 큰 주파수 찾기
if(MODE == 0):
    y2max = x[y2.index(max(y2[0:-1]))]
    y4max = x[y4.index(max(y4[0:-1]))]
else:
    y2max = x[y2.index(max(y2[1:-1]))]
    y4max = x[y4.index(max(y4[1:-1]))]

if (str(sys.argv[1])=='Circle'):#cos
    plt.figure(figsize=(6, 6))
    plt.title("<C Algorithm> NCO Circle")
    plt.xlabel("cos(θ)")
    plt.ylabel("sin(θ)")
    plt.scatter(y1, y3, s = 2)
elif (str(sys.argv[1])=='x'):#cos
    plt.title("Input Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.plot(x, y1)
elif (str(sys.argv[1])=='xFT'):#cos quality
    plt.title("FT of x [Target freq: %.2f MHz]" %outputFreq) 
    plt.xlabel('Freq(MHz)') 
    plt.ylabel('Power(log)') 
    freq_annotate = "peak: %.2f MHz" %(y2max*deltaFreq)
    plt.annotate(freq_annotate, xy=(y2max ,y2[y2max]), xytext=(y2max+100, y2[y2max]),fontsize=10) 
    plt.plot(x, y2)
elif (str(sys.argv[1])=='y'):#sin
    plt.title("Output Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.plot(x, y3)
elif (str(sys.argv[1])=='yFT'):#cos quality
    plt.title("FT of y [Target freq: %.2f MHz]" %outputFreq) 
    plt.xlabel('Freq(MHz)') 
    plt.ylabel('Power(log)') 
    freq_annotate = "peak: %.2f MHz" %(y4max*deltaFreq)
    plt.annotate(freq_annotate, xy=(y4max ,y4[y4max]), xytext=(y4max+100, y4[y4max]),fontsize=10) 
    plt.plot(x, y4)

plt.show()
