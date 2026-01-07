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
if len(sys.argv)!=3:
    print('plotNCO.py < option1: FCW > <option2: MODE>')
    print('     Plot graph from text file.')
    print('     < option1: FCW  > FCW value(1~524288)')
    print('     < option2: MODE > MODE     (0 or 1)')
    sys.exit(1);

#1. open target file ./TestVec/${FCW}_NCO.txt
FCW = int(sys.argv[1])
MODE = int(sys.argv[2])
fileDir = "./test_vec"
if MODE != 0:
    fileModeNCO = "us"
else :
    fileModeNCO = "s"
fileCat = "_NCO"
fileType = ".txt"
fileName = fileDir + "/" + fileModeNCO + str(FCW) + fileCat + fileType
with open(fileName, 'r') as file:
    lines = file.readlines()

#2. read data from file ${FCW}_NCO.txt
i = []
#sub1
s1_phase = []
s1_isNeg = []

#sub2
s2_x = []
s2_y = []

#sub3
s3_x = []
s3_y = []

#FT
s3_xFT = []
s3_yFT = []

#read data
for line in lines[1:-2]:  
    data = line.split()

    i.append(int(data[0])) 
    s1_phase.append(int(data[1]))
    s1_isNeg.append(int(data[2]))
    s2_x.append(int(data[3])) 
    s2_y.append(int(data[4])) 
    s3_x.append(int(data[5])) 
    s3_y.append(int(data[6])) 
    if float(data[7]) < -50:
        s3_xFT.append(-50)
    else :
        s3_xFT.append(float(data[7]))
    if float(data[7]) < -50:
        s3_yFT.append(-50)
    else :
        s3_yFT.append(float(data[8]))

#read setting
settingOfNCO = lines[-1].split()
sample_num = int(settingOfNCO[0])
nco_fcw = int(settingOfNCO[1])
nco_mode = int(settingOfNCO[2])
sys_clk = float(settingOfNCO[3])
nco_clk = float(settingOfNCO[4])

xPeak1 = int(settingOfNCO[5])
xPeak2 = int(settingOfNCO[6])
xSFDR = float(settingOfNCO[7])

yPeak1 = int(settingOfNCO[8])
yPeak2 = int(settingOfNCO[9])
ySFDR = float(settingOfNCO[10])

#3. 플롯
fcwBaseCLK = sys_clk / 2**20 * nco_fcw
freqRes = sys_clk / sample_num

#unsigned변환 과정에서 바이어스 추가로 DC성분이 가장 크게 나타남, 따라서 0제외하고 가장 큰 주파수 찾기
#if(nco_mode == 0):
#    indexOfMaxXFT = i[s3_xFT.index(max(xFT[0:-1]))]
#    indexOfMaxYFT = i[s3_yFT.index(max(yFT[0:-1]))]
#else:
#    indexOfMaxXFT = i[s3_xFT.index(max(xFT[1:-1]))] #DC 제거
#    indexOfMaxYFT = i[s3_yFT.index(max(yFT[1:-1]))] #DC 제거


fig, axes = plt.subplots(
    nrows=4, ncols=2, 
    figsize=(8,10),
    tight_layout = True
)

#sub1
axes[0,0].plot(i, s1_phase)
axes[0,0].set_title("Phase Accumulator Output")
axes[0,0].set_ylabel("phase", fontsize=10, color='black')
axes[0,0].set_xlabel("sample index", fontsize=10, color='black')

axes[0,1].plot(i, s1_isNeg)
axes[0,1].set_title("sub1 output: isNeg")
axes[0,1].set_ylabel("bool", fontsize=10, color='black')
axes[0,1].set_xlabel("sample index", fontsize=10, color='black')

#sub2
axes[1,0].plot(i, s2_x)
axes[1,0].set_title("CORDIC output: X")
axes[1,0].set_ylim(-2200,2200)
axes[1,0].set_ylabel("cos(phase)", fontsize=10, color='black')
axes[1,0].set_xlabel("sample index", fontsize=10, color='black')

axes[2,0].plot(i, s3_x)
axes[2,0].set_title("Output Termianl output: X")
axes[2,0].set_ylabel("cos(phase)", fontsize=10, color='black')
axes[2,0].set_xlabel("sample index", fontsize=10, color='black')

axes[3,0].plot(i, s3_xFT)
axes[3,0].set_title("NCO output X FFT")
axes[3,0].plot(xPeak1, s3_xFT[xPeak1], 'ro', markersize = 5)
axes[3,0].plot(xPeak2, s3_xFT[xPeak2], 'ro', markersize = 5)
axes[3,0].set_ylabel("Power(dB)", fontsize=10, color='black')
axes[3,0].set_xlabel("sample index", fontsize=10, color='black')

#sub3
axes[1,1].plot(i, s2_y)
axes[1,1].set_title("sub2 output: Y")
axes[1,1].set_ylabel("sin(phase)", fontsize=10, color='black')
axes[1,1].set_xlabel("sample index", fontsize=10, color='black')

axes[2,1].plot(i, s3_y)
axes[2,1].set_title("sub3 output: Y")
axes[2,1].set_ylabel("sin(phase)", fontsize=10, color='black')
axes[2,1].set_xlabel("sample index", fontsize=10, color='black')

axes[3,1].plot(i, s3_yFT)
axes[3,1].set_title("NCO output Y FFT")
axes[3,1].plot(yPeak1, s3_yFT[yPeak1], 'ro', markersize = 5)
axes[3,1].plot(yPeak2, s3_yFT[yPeak2], 'ro', markersize = 5)
axes[3,1].set_ylabel("Power(dB)", fontsize=10, color='black')
axes[3,1].set_xlabel("sample index", fontsize=10, color='black')


plt.show()

'''
if (str(sys.argv[1])=='circle'):#cos
    #plot layout
    plt.figure(figsize=(6, 6))
    plt.title("<C Algorithm> NCO Circle")
    plt.xlabel("cos(θ)")
    plt.ylabel("sin(θ)")

    #plot data
    plt.scatter(x, y, s = 2)
elif (str(sys.argv[1])=='x'):#cos
    #plot layout
    plt.title("Input Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.xticks(np.arange(0, SAMPLE_NUM, SAMPLE_NUM/16))

    #plot data
    plt.plot(i, x)
elif (str(sys.argv[1])=='xFT'):
    #plot layout
    plt.title("DFT_x Plot [Target freq: %.2f kHz]"%(fcwBaseCLK/1000)) 
    plt.xlabel('Freq(MHz)') 
    plt.ylabel('Power(log)') 
    plt.xticks(np.arange(0, SAMPLE_NUM, SAMPLE_NUM/16))

    #plot data
    freqAnnotate = "Freq: %.2f kHz" %(indexOfMaxXFT*freqRes/1000) #index base freq
    plt.annotate(
        freqAnnotate, 
        xy=(indexOfMaxXFT, xFT[indexOfMaxXFT]), 
        xytext=(indexOfMaxXFT+100, xFT[indexOfMaxXFT]),
        fontsize=10
    ) 
    plt.plot(i, xFT)
elif (str(sys.argv[1])=='y'):#sin
    #plot layout
    plt.title("Output Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.xticks(np.arange(0, SAMPLE_NUM, SAMPLE_NUM/16))

    #plot data
    plt.plot(i, y)
elif (str(sys.argv[1])=='yFT'):
    #plot layout
    plt.title("DFT_y Plot [Target freq at FCW=%d: %.2f kHz]"%(FCW,(fcwBaseCLK/1000)))
    plt.xlabel('Freq(MHz)') 
    plt.ylabel('Power(log)') 
    plt.xticks(np.arange(0, SAMPLE_NUM, SAMPLE_NUM/16))

    #plot data
    freqAnnotate = "Freq: %.2f kHz" %(indexOfMaxYFT*freqRes/1000) #index base freq
    plt.annotate(
        freqAnnotate, 
        xy=(indexOfMaxYFT,yFT[indexOfMaxYFT]), 
        xytext=(indexOfMaxYFT+SAMPLE_NUM/10, yFT[indexOfMaxYFT]),
        arrowprops=dict(
            facecolor='black',
            shrink=0.05,       # 양 끝을 5%만 축소하여 화살표를 길게 만듭니다.
            linewidth=0.2,     # 화살표 선의 두께를 얇게 설정
            width=1,
            headwidth=5,       # 화살촉의 너비를 작게 설정
            headlength=8       # 화살촉의 길이를 설정
        ),
        fontsize=10
    ) 
    plt.plot(indexOfMaxYFT, yFT[indexOfMaxYFT], 'ro', markersize = 5)

    plt.plot(i, yFT)
'''


