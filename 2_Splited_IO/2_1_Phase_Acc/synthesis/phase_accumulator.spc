*SPICE netlist created from verilog structural netlist module phase_accumulator by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y D a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_7_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_265_14# a_225_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_265_14# a_225_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 a_225_14# a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1010 gnd a_265_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1011 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1012 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1013 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 Y a_265_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1016 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1017 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 a_225_14# a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1019 gnd a_225_14# a_265_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1020 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1021 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1023 vdd a_185_14# a_225_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 vdd a_225_14# a_265_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1025 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1026 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 gnd a_185_14# a_225_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1029 Y a_265_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1030 vdd a_265_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1031 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1007 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_7_166# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1002 a_7_166# B a_65_166# vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1003 a_65_166# C Y vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1004 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1005 a_65_166# B a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1006 vdd A a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1007 Y C a_65_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1008 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.2p ps=10.8u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 Y a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1006 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 gnd a_105_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1010 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1011 vdd a_105_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1012 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_75_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1001 gnd S a_7_22# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=6.3p ps=10.2u
M1002 Y S a_45_138# vdd pfet w=12u l=0.6u
+  ad=14.49p pd=15.6u as=5.4p ps=12.9u
M1003 gnd A a_75_22# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1004 vdd A a_75_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_45_138# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=11.7p ps=14.4u
M1006 a_45_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.3p ps=8.4u
M1007 Y a_7_22# a_45_22# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1008 a_75_146# a_7_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.49p ps=15.6u
M1009 vdd S a_7_22# vdd pfet w=6u l=0.6u
+  ad=11.7p pd=14.4u as=12.6p ps=16.2u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=2.7p ps=9.6u
M1001 a_26_14# A gnd gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=18.9p ps=22.2u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 a_34_14# B a_26_14# gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=2.7p ps=9.6u
M1004 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt XOR2X1 A B Y vdd gnd
M1000 a_74_166# a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1001 a_28_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_74_14# A Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 gnd B a_74_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1006 a_28_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1007 Y A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_28_58# gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1009 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1010 Y a_6_14# a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1011 a_44_166# a_28_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=15.3p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=4.5u l=0.6u
+  ad=7.65p pd=8.7u as=9.45p ps=13.2u
M1002 vdd a_7_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1003 vdd A a_7_14# vdd pfet w=9u l=0.6u
+  ad=15.3p pd=14.7u as=18.9p ps=22.2u
M1004 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.65p ps=8.7u
M1005 gnd a_7_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_7_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1001 a_30_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 Y B a_30_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=3.6p ps=12.6u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt TBUFX2 A EN Y vdd gnd
M1000 vdd A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 Y a_22_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 a_22_14# EN vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1003 gnd A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_44_14# A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_44_166# A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_44_166# a_22_14# Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y EN a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1008 a_22_14# EN gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1009 a_44_14# EN Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 a_163_14# a_7_14# a_153_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1001 a_77_186# CLK a_57_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_77_14# a_7_14# a_57_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1003 vdd a_83_10# a_77_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1004 vdd CLK a_7_14# vdd pfet w=12u l=0.6u
+  ad=12.15p pd=14.4u as=25.2p ps=28.2u
M1005 Q a_163_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=11.025p ps=14.4u
M1006 a_83_10# a_57_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1007 gnd CLK a_7_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=12.6p ps=16.2u
M1008 gnd a_83_10# a_77_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1009 vdd Q a_183_206# vdd pfet w=3u l=0.6u
+  ad=11.025p pd=14.4u as=1.35p ps=3.9u
M1010 a_154_186# a_83_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.25p pd=6.75u as=12.6p ps=16.2u
M1011 a_183_14# CLK a_163_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 a_45_186# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.15p ps=14.4u
M1013 a_83_10# a_57_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1014 a_57_14# a_7_14# a_45_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1015 gnd Q a_183_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=1.35p ps=3.9u
M1016 a_183_206# a_7_14# a_163_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1017 a_45_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.4u
M1018 a_57_14# CLK a_45_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1019 a_153_14# a_83_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.3p ps=10.2u
M1020 Q a_163_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.075p ps=8.4u
M1021 a_163_14# CLK a_154_186# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.25p ps=6.75u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y C a_7_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1004 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1005 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=6.3p ps=10.2u
M1002 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1003 vdd A a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=12.6p ps=16.2u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt FAX1 A B C YS YC vdd gnd
M1000 a_64_14# C a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 YS a_174_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.13p ps=16.8u
M1002 a_206_14# B a_196_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=2.7p ps=6.9u
M1003 gnd a_64_14# YC gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1004 gnd A a_206_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.7p ps=6.9u
M1005 vdd A a_206_150# vdd pfet w=14.4u l=0.6u
+  ad=14.13p pd=16.8u as=6.48p ps=15.3u
M1006 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_114_14# C gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_64_14# C a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1009 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1010 a_84_14# B a_64_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1011 a_174_14# a_64_14# a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=17.82p pd=17.1u as=12.96p ps=13.2u
M1012 vdd B a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=13.86p ps=14.4u
M1013 a_196_150# C a_174_14# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=17.82p ps=17.1u
M1014 a_206_150# B a_196_150# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=6.48p ps=15.3u
M1015 gnd A a_84_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1016 vdd A a_84_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1017 a_114_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1018 YS a_174_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=5.85p ps=8.4u
M1019 a_174_14# a_64_14# a_114_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=7.2p ps=8.4u
M1020 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 YC a_64_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1022 a_84_166# B a_64_14# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1023 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 a_114_166# A vdd vdd pfet w=12u l=0.6u
+  ad=13.86p pd=14.4u as=14.4p ps=14.4u
M1025 a_114_166# C vdd vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=12.96p ps=13.2u
M1026 gnd B a_114_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_196_14# C a_174_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=8.1p ps=8.7u
.ends

.subckt NOR2X1 A B Y vdd gnd
M1000 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1002 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=3.6p ps=12.6u
M1003 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1001 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 Y a_7_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
M1004 Y a_7_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 vdd Q a_189_206# vdd pfet w=3u l=0.6u
+  ad=10.125p pd=14.7u as=0.9p ps=3.6u
M1001 a_83_186# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1003 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=12.6p ps=16.2u
M1004 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1005 a_159_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.3p ps=10.2u
M1006 a_49_186# D vdd vdd pfet w=6u l=0.6u
+  ad=4.5p pd=7.5u as=11.25p ps=14.4u
M1007 vdd a_87_10# a_83_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1008 Q a_167_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.975p ps=8.7u
M1009 Q a_167_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=10.125p ps=14.7u
M1010 a_167_14# CLK a_159_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=0.9p ps=3.6u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1012 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 a_59_14# CLK a_49_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=4.5p ps=7.5u
M1014 a_161_186# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1015 a_189_206# CLK a_167_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.4u
M1016 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1017 a_187_14# a_11_14# a_167_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1018 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=25.2p ps=28.2u
M1019 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.7u as=1.35p ps=3.9u
M1020 a_167_14# a_11_14# a_161_186# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=1.8p ps=6.6u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 a_27_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 Y B a_27_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=5.4p ps=12.9u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1009 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1011 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1012 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1014 Y a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1016 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1017 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 vdd a_185_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1019 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1020 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 gnd a_185_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt LATCH D CLK Q vdd gnd
M1000 a_48_206# D vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=14.4p ps=14.7u
M1001 a_86_226# CLK a_58_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=9.225p ps=9.6u
M1002 gnd CLK a_8_14# gnd nfet w=6u l=0.6u
+  ad=6.3p pd=8.4u as=12.6p ps=16.2u
M1003 a_86_14# a_8_14# a_58_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.4p ps=6.6u
M1004 Q a_58_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1005 gnd Q a_86_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=1.35p ps=3.9u
M1006 a_46_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.3p ps=8.4u
M1007 Q a_58_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=13.5p ps=14.7u
M1008 a_58_14# CLK a_46_14# gnd nfet w=3u l=0.6u
+  ad=5.4p pd=6.6u as=1.8p ps=4.2u
M1009 vdd CLK a_8_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=25.2p ps=28.2u
M1010 a_58_14# a_8_14# a_48_206# vdd pfet w=6u l=0.6u
+  ad=9.225p pd=9.6u as=2.7p ps=6.9u
M1011 vdd Q a_86_226# vdd pfet w=3u l=0.6u
+  ad=13.5p pd=14.7u as=1.35p ps=3.9u
.ends

.subckt HAX1 A B YS YC vdd gnd
M1000 a_6_206# B a_24_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd a_6_206# YC vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd a_6_206# YC gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=6.21p ps=10.2u
M1003 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 a_6_206# B vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_128_166# B a_108_206# vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=13.5p ps=14.4u
M1006 a_108_206# a_6_206# vdd vdd pfet w=6u l=0.6u
+  ad=13.5p pd=14.4u as=7.2p ps=8.4u
M1007 YS a_108_206# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1008 a_96_14# a_6_206# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=6.075p ps=8.4u
M1009 a_108_206# B a_96_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 vdd A a_128_166# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=3.6p ps=12.6u
M1011 YS a_108_206# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=11.25p ps=14.4u
M1012 a_96_14# A a_108_206# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 vdd A a_6_206# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFSR R S D CLK Q vdd gnd
M1000 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1001 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1002 vdd S a_301_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 a_146_14# a_115_95# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1004 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_391_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9.45p ps=9.15u
M1006 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1008 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1009 a_281_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1010 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1011 a_301_14# S a_391_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_115_95# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1014 a_301_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1016 a_334_14# a_281_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1017 vdd a_115_95# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1018 a_301_14# a_122_10# a_281_14# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1019 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1020 a_60_10# a_115_95# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1021 a_301_14# a_115_95# a_281_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1022 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1024 a_115_95# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1025 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1026 a_354_14# a_281_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1027 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 a_115_95# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1029 a_281_14# a_115_95# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1030 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=9.45p pd=9.15u as=3.6p ps=7.2u
M1031 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt TBUFX1 A EN Y vdd gnd
M1000 a_68_166# a_26_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1001 gnd A a_68_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 a_26_14# EN gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1003 a_26_14# EN vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1004 vdd A a_68_166# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_68_14# EN Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
.ends

.subckt XNOR2X1 A B Y vdd gnd
M1000 a_74_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.4p ps=14.4u
M1001 a_29_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=16.2p ps=14.7u
M1002 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1003 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1004 Y A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_29_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=8.1p ps=8.7u
M1006 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.7u as=3.6p ps=12.6u
M1007 Y a_6_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_29_58# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
M1009 a_72_14# a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1010 a_44_166# a_29_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1011 gnd B a_72_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=2.7p ps=6.9u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=8.1p ps=8.7u
M1003 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1004 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=12.6p ps=16.2u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1001 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_65_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=23.4p ps=15.9u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 a_7_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1006 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=23.4p pd=15.9u as=5.4p ps=12.9u
M1007 vdd C a_65_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
.ends

.subckt khu_etri050_stdcells vdd gnd
XAOI22X1_0 AOI22X1_0/A AOI22X1_0/B AOI22X1_0/C AOI22X1_0/D AOI22X1_0/Y vdd gnd AOI22X1
XCLKBUF3_0 CLKBUF3_0/A CLKBUF3_0/Y vdd gnd CLKBUF3
XINVX8_0 INVX8_0/A INVX8_0/Y vdd gnd INVX8
XNOR3X1_0 NOR3X1_0/A NOR3X1_0/B NOR3X1_0/C NOR3X1_0/Y vdd gnd NOR3X1
XCLKBUF1_0 CLKBUF1_0/A CLKBUF1_0/Y vdd gnd CLKBUF1
XMUX2X1_0 MUX2X1_0/A MUX2X1_0/B MUX2X1_0/S MUX2X1_0/Y vdd gnd MUX2X1
XNAND3X1_0 NAND3X1_0/A NAND3X1_0/B NAND3X1_0/C NAND3X1_0/Y vdd gnd NAND3X1
XXOR2X1_0 XOR2X1_0/A XOR2X1_0/B XOR2X1_0/Y vdd gnd XOR2X1
XBUFX4_0 BUFX4_0/A BUFX4_0/Y vdd gnd BUFX4
XINVX4_0 INVX4_0/A INVX4_0/Y vdd gnd INVX4
XOAI21X1_0 OAI21X1_0/A OAI21X1_0/B OAI21X1_0/C OAI21X1_0/Y vdd gnd OAI21X1
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
XAOI21X1_0 AOI21X1_0/A AOI21X1_0/B AOI21X1_0/C AOI21X1_0/Y vdd gnd AOI21X1
XBUFX2_0 BUFX2_0/A BUFX2_0/Y vdd gnd BUFX2
XINVX2_0 INVX2_0/A INVX2_0/Y vdd gnd INVX2
XFAX1_0 FAX1_0/A FAX1_0/B FAX1_0/C FAX1_0/YS FAX1_0/YC vdd gnd FAX1
XNOR2X1_0 NOR2X1_0/A NOR2X1_0/B NOR2X1_0/Y vdd gnd NOR2X1
XAND2X1_0 AND2X1_0/A AND2X1_0/B AND2X1_0/Y vdd gnd AND2X1
XDFFPOSX1_0 DFFPOSX1_0/D DFFPOSX1_0/CLK DFFPOSX1_0/Q vdd gnd DFFPOSX1
XNAND2X1_0 NAND2X1_0/A NAND2X1_0/B NAND2X1_0/Y vdd gnd NAND2X1
XOR2X1_0 OR2X1_0/A OR2X1_0/B OR2X1_0/Y vdd gnd OR2X1
XCLKBUF2_0 CLKBUF2_0/A CLKBUF2_0/Y vdd gnd CLKBUF2
XLATCH_0 LATCH_0/D LATCH_0/CLK LATCH_0/Q vdd gnd LATCH
XHAX1_0 HAX1_0/A HAX1_0/B HAX1_0/YS HAX1_0/YC vdd gnd HAX1
XDFFSR_0 DFFSR_0/R DFFSR_0/S DFFSR_0/D DFFSR_0/CLK DFFSR_0/Q vdd gnd DFFSR
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt phase_accumulator vdd gnd Aout[0] Aout[1] En FCW[0] FCW[1]
+ FCW[2] FCW[3] FCW[4] FCW[5] FCW[6] FCW[7] FCW[8] FCW[9]
+ FCW[10] FCW[11] FCW[12] FCW[13] FCW[14] FCW[15] FCW[16] FCW[17]
+ FCW[18] FCW[19] ISout Vld clk 

XFILL_2__350_ gnd vdd FILL
XFILL_5__494_ gnd vdd FILL
XFILL_6__436_ gnd vdd FILL
XFILL_0__585_ gnd vdd FILL
XFILL_1__619_ gnd vdd FILL
X_588_ acc_reg[5] FCW[5] _118_ vdd gnd NOR2X1
XFILL_1__372_ gnd vdd FILL
XFILL_2__406_ gnd vdd FILL
XFILL_3__521_ gnd vdd FILL
XFILL_6__665_ gnd vdd FILL
XFILL_7__452_ gnd vdd FILL
XFILL_0__394_ gnd vdd FILL
XFILL_1__428_ gnd vdd FILL
X_397_ _229_ _230_ vdd gnd INVX1
XFILL_5__359_ gnd vdd FILL
XFILL75150x36150 gnd vdd FILL
XFILL_3__330_ gnd vdd FILL
XFILL_6__474_ gnd vdd FILL
XFILL_7__508_ gnd vdd FILL
XFILL_8__623_ gnd vdd FILL
XFILL_2__444_ gnd vdd FILL
XFILL_5__588_ gnd vdd FILL
XFILL_7__317_ gnd vdd FILL
XFILL_7__490_ gnd vdd FILL
XFILL_1__466_ gnd vdd FILL
XFILL_5__397_ gnd vdd FILL
XFILL_3__615_ gnd vdd FILL
XFILL_6__339_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_4__402_ gnd vdd FILL
XFILL_7__546_ gnd vdd FILL
XFILL_0__488_ gnd vdd FILL
XFILL_2__482_ gnd vdd FILL
XFILL_3__424_ gnd vdd FILL
XFILL_6__568_ gnd vdd FILL
XFILL_7__355_ gnd vdd FILL
XFILL_2__538_ gnd vdd FILL
XFILL_6__377_ gnd vdd FILL
X_512_ Atmp[9] _56_ vdd gnd INVX1
XFILL_4__440_ gnd vdd FILL
XFILL_7__584_ gnd vdd FILL
XFILL_2__347_ gnd vdd FILL
XFILL_3__462_ gnd vdd FILL
X_321_ _159_ _156_ _161_ vdd gnd NAND2X1
XFILL76050x50550 gnd vdd FILL
XFILL_7__393_ gnd vdd FILL
XFILL_1__369_ gnd vdd FILL
XFILL_8__335_ gnd vdd FILL
XFILL_2__576_ gnd vdd FILL
XFILL_3__518_ gnd vdd FILL
XFILL_7__449_ gnd vdd FILL
X_550_ _78_ _83_ _84_ vdd gnd NOR2X1
XFILL_5__512_ gnd vdd FILL
XFILL_1__598_ gnd vdd FILL
XFILL74550x14550 gnd vdd FILL
XFILL_2__385_ gnd vdd FILL
XFILL_0__603_ gnd vdd FILL
XFILL_3__327_ gnd vdd FILL
X_606_ _133_ _134_ _128_ _135_ vdd gnd OAI21X1
XFILL_4__534_ gnd vdd FILL
XFILL_5__321_ gnd vdd FILL
XFILL_8__373_ gnd vdd FILL
XFILL_0__412_ gnd vdd FILL
XFILL_3__556_ gnd vdd FILL
X_415_ _246_ _245_ _247_ vdd gnd NAND2X1
XFILL_4__343_ gnd vdd FILL
XFILL_7__487_ gnd vdd FILL
XFILL_8__429_ gnd vdd FILL
XFILL_5__550_ gnd vdd FILL
XFILL_3__365_ gnd vdd FILL
X_644_ _18_ clk_bF$buf4 acc_reg[11] vdd gnd DFFPOSX1
XFILL_4__572_ gnd vdd FILL
XFILL_5__606_ gnd vdd FILL
XFILL_2__479_ gnd vdd FILL
XFILL74850x57750 gnd vdd FILL
XFILL_0__450_ gnd vdd FILL
XFILL_3__594_ gnd vdd FILL
X_453_ _276_ _277_ _282_ _283_ vdd gnd OAI21X1
XFILL_4__381_ gnd vdd FILL
XFILL_5__415_ gnd vdd FILL
XFILL_8__467_ gnd vdd FILL
XFILL_6__530_ gnd vdd FILL
XFILL_0__506_ gnd vdd FILL
X_509_ Atmp[0] RdyCtl[0] _54_ vdd gnd NAND2X1
XFILL_4__437_ gnd vdd FILL
XFILL_2__500_ gnd vdd FILL
XFILL_0__315_ gnd vdd FILL
XFILL_3__459_ gnd vdd FILL
X_318_ acc_reg[8] FCW[8] _158_ vdd gnd OR2X2
XFILL_1__522_ gnd vdd FILL
XFILL_4__666_ gnd vdd FILL
X_491_ Atmp[11] RdyCtl_6_bF$buf2 _309_ vdd gnd NOR2X1
XFILL_5__453_ gnd vdd FILL
XFILL_7__602_ gnd vdd FILL
XFILL_0__544_ gnd vdd FILL
X_547_ acc_reg[1] FCW[1] _81_ vdd gnd NOR2X1
XFILL_1__331_ gnd vdd FILL
XFILL_4__475_ gnd vdd FILL
XFILL_5__509_ gnd vdd FILL
XFILL_6__624_ gnd vdd FILL
XFILL_7__411_ gnd vdd FILL
XFILL_0__353_ gnd vdd FILL
XFILL_3__497_ gnd vdd FILL
X_356_ _187_ _191_ _73__bF$buf2 _193_ vdd gnd AOI21X1
XFILL_1__560_ gnd vdd FILL
XFILL_5__318_ gnd vdd FILL
XFILL_5__491_ gnd vdd FILL
XFILL_6__433_ gnd vdd FILL
XFILL_0__409_ gnd vdd FILL
XFILL_0__582_ gnd vdd FILL
XFILL_1__616_ gnd vdd FILL
X_585_ _114_ RdyCtl_6_bF$buf4 _115_ _11_ vdd gnd AOI21X1
XFILL_2__403_ gnd vdd FILL
XFILL_5__547_ gnd vdd FILL
XFILL_8__599_ gnd vdd FILL
XFILL_0__391_ gnd vdd FILL
XFILL_1__425_ gnd vdd FILL
XFILL_4__569_ gnd vdd FILL
X_394_ _226_ RdyCtl_6_bF$buf1 _227_ _21_ vdd gnd AOI21X1
XFILL_5__356_ gnd vdd FILL
XFILL_6__471_ gnd vdd FILL
XFILL_7__505_ gnd vdd FILL
XFILL_0__447_ gnd vdd FILL
XFILL75150x57750 gnd vdd FILL
XFILL_4__378_ gnd vdd FILL
XFILL_2__441_ gnd vdd FILL
XFILL_5__585_ gnd vdd FILL
XFILL_6__527_ gnd vdd FILL
XFILL_7__314_ gnd vdd FILL
XFILL_1__463_ gnd vdd FILL
XFILL_5__394_ gnd vdd FILL
XFILL_3__612_ gnd vdd FILL
XFILL_6__336_ gnd vdd FILL
XFILL_7__543_ gnd vdd FILL
XFILL_0__485_ gnd vdd FILL
XFILL_1__519_ gnd vdd FILL
X_488_ _43_ _73__bF$buf3 _307_ _35_ vdd gnd AOI21X1
XFILL_3__421_ gnd vdd FILL
XFILL_6__565_ gnd vdd FILL
XFILL_7__352_ gnd vdd FILL
XFILL_1__328_ gnd vdd FILL
XFILL_2__535_ gnd vdd FILL
XFILL75450x10950 gnd vdd FILL
XFILL_6__374_ gnd vdd FILL
XFILL_7__408_ gnd vdd FILL
XFILL_7__581_ gnd vdd FILL
XFILL_1__557_ gnd vdd FILL
XFILL_8__523_ gnd vdd FILL
XFILL_2__344_ gnd vdd FILL
XFILL_5__488_ gnd vdd FILL
XFILL_0__579_ gnd vdd FILL
XFILL_7_CLKBUF1_insert0 gnd vdd FILL
XFILL_7_CLKBUF1_insert1 gnd vdd FILL
XFILL_7_CLKBUF1_insert2 gnd vdd FILL
XFILL_7_CLKBUF1_insert3 gnd vdd FILL
XFILL_7_CLKBUF1_insert4 gnd vdd FILL
XFILL_7_CLKBUF1_insert5 gnd vdd FILL
XFILL_7__390_ gnd vdd FILL
XFILL_1__366_ gnd vdd FILL
XFILL_8__332_ gnd vdd FILL
XFILL_2__573_ gnd vdd FILL
XFILL_3__515_ gnd vdd FILL
XFILL_7__446_ gnd vdd FILL
XFILL_0__388_ gnd vdd FILL
XFILL_1__595_ gnd vdd FILL
XFILL_8__561_ gnd vdd FILL
XFILL_2__382_ gnd vdd FILL
XFILL_0__600_ gnd vdd FILL
XFILL_3__324_ gnd vdd FILL
XFILL_6__468_ gnd vdd FILL
X_603_ _128_ _131_ _132_ vdd gnd OR2X2
XFILL_4__531_ gnd vdd FILL
XFILL_8__617_ gnd vdd FILL
XFILL_8__370_ gnd vdd FILL
XFILL_2__438_ gnd vdd FILL
XFILL_3__553_ gnd vdd FILL
X_412_ _243_ _217_ _244_ vdd gnd AND2X2
XFILL_4__340_ gnd vdd FILL
XFILL_7__484_ gnd vdd FILL
XFILL_8__426_ gnd vdd FILL
XFILL_2__667_ gnd vdd FILL
XFILL_3__609_ gnd vdd FILL
XFILL_3__362_ gnd vdd FILL
X_641_ _15_ clk_bF$buf4 acc_reg[8] vdd gnd DFFPOSX1
XFILL_5__603_ gnd vdd FILL
XFILL_2__476_ gnd vdd FILL
XFILL_3__418_ gnd vdd FILL
XFILL_3__591_ gnd vdd FILL
XFILL_4__625_ gnd vdd FILL
XFILL_7__349_ gnd vdd FILL
X_450_ _272_ _280_ vdd gnd INVX1
XFILL_5__412_ gnd vdd FILL
XFILL_1__498_ gnd vdd FILL
XFILL_8__464_ gnd vdd FILL
XFILL_5_BUFX2_insert10 gnd vdd FILL
XFILL_5_BUFX2_insert11 gnd vdd FILL
XFILL_5_BUFX2_insert12 gnd vdd FILL
XFILL_5_BUFX2_insert13 gnd vdd FILL
XFILL_5_BUFX2_insert14 gnd vdd FILL
XFILL_5_BUFX2_insert15 gnd vdd FILL
XFILL_5_BUFX2_insert16 gnd vdd FILL
XFILL_5_BUFX2_insert17 gnd vdd FILL
XFILL_5_BUFX2_insert18 gnd vdd FILL
XFILL_5_BUFX2_insert19 gnd vdd FILL
XFILL_0__503_ gnd vdd FILL
X_506_ Atmp[2] _51_ vdd gnd INVX1
XFILL_4__434_ gnd vdd FILL
XFILL_7__578_ gnd vdd FILL
XFILL_3__456_ gnd vdd FILL
X_315_ _152_ _149_ _154_ _155_ vdd gnd OAI21X1
XFILL_7__387_ gnd vdd FILL
XFILL_5__450_ gnd vdd FILL
XFILL_0__541_ gnd vdd FILL
X_544_ acc_reg[0] FCW[0] _78_ vdd gnd NAND2X1
XFILL_4__472_ gnd vdd FILL
XFILL_5__506_ gnd vdd FILL
XFILL_8__558_ gnd vdd FILL
XFILL_6__621_ gnd vdd FILL
XFILL_2__379_ gnd vdd FILL
XFILL_0__350_ gnd vdd FILL
XFILL_3__494_ gnd vdd FILL
XFILL_4__528_ gnd vdd FILL
X_353_ _189_ _188_ _190_ vdd gnd NOR2X1
XFILL_5__315_ gnd vdd FILL
XFILL_6__430_ gnd vdd FILL
XFILL_0__406_ gnd vdd FILL
X_409_ _197_ _240_ _241_ vdd gnd OR2X2
XFILL_1__613_ gnd vdd FILL
XFILL_4__337_ gnd vdd FILL
X_582_ _112_ _111_ _113_ vdd gnd NAND2X1
XFILL_2__400_ gnd vdd FILL
XFILL_5__544_ gnd vdd FILL
XFILL_8__596_ gnd vdd FILL
XFILL_3__359_ gnd vdd FILL
X_638_ _12_ clk_bF$buf3 acc_reg[5] vdd gnd DFFPOSX1
XFILL_1__422_ gnd vdd FILL
XFILL_4__566_ gnd vdd FILL
X_391_ _221_ _222_ _220_ _225_ vdd gnd OAI21X1
XFILL_5__353_ gnd vdd FILL
XFILL_7__502_ gnd vdd FILL
XFILL_0__444_ gnd vdd FILL
XFILL_3__588_ gnd vdd FILL
X_447_ acc_reg[18] FCW[18] _277_ vdd gnd NOR2X1
XFILL_4__375_ gnd vdd FILL
XFILL_5__409_ gnd vdd FILL
XFILL_5__582_ gnd vdd FILL
XFILL_6__524_ gnd vdd FILL
XFILL_3__397_ gnd vdd FILL
XFILL_1__460_ gnd vdd FILL
XFILL_5__391_ gnd vdd FILL
XFILL_6__333_ gnd vdd FILL
XFILL_7__540_ gnd vdd FILL
XFILL_0__482_ gnd vdd FILL
XFILL_1__516_ gnd vdd FILL
X_485_ acc_reg[15] _73__bF$buf0 En_bF$buf3 _306_ vdd gnd OAI21X1
XFILL_5__447_ gnd vdd FILL
XFILL_8__499_ gnd vdd FILL
XFILL_6__562_ gnd vdd FILL
XFILL_0__538_ gnd vdd FILL
XFILL_1__325_ gnd vdd FILL
XFILL_4__469_ gnd vdd FILL
XFILL_2__532_ gnd vdd FILL
XFILL_6__618_ gnd vdd FILL
XFILL_6__371_ gnd vdd FILL
XFILL_7__405_ gnd vdd FILL
XFILL_0__347_ gnd vdd FILL
XFILL_1__554_ gnd vdd FILL
XFILL_8__520_ gnd vdd FILL
XFILL_2__341_ gnd vdd FILL
XFILL_5__485_ gnd vdd FILL
XFILL_6__427_ gnd vdd FILL
XFILL_0__576_ gnd vdd FILL
X_579_ _108_ _109_ _107_ _110_ vdd gnd OAI21X1
XFILL_1__363_ gnd vdd FILL
XFILL_2__570_ gnd vdd FILL
XFILL_3__512_ gnd vdd FILL
XFILL_7__443_ gnd vdd FILL
XFILL_0__385_ gnd vdd FILL
XFILL_1__419_ gnd vdd FILL
X_388_ acc_reg[14] FCW[14] _222_ vdd gnd NOR2X1
XFILL_1__592_ gnd vdd FILL
XFILL_3__321_ gnd vdd FILL
XFILL_6__465_ gnd vdd FILL
X_600_ acc_reg[6] FCW[6] _129_ vdd gnd NAND2X1
XFILL_8__614_ gnd vdd FILL
XFILL_2__435_ gnd vdd FILL
XFILL_5__579_ gnd vdd FILL
XFILL_3__550_ gnd vdd FILL
XFILL_7__481_ gnd vdd FILL
XFILL_1__457_ gnd vdd FILL
XFILL75750x150 gnd vdd FILL
XFILL_5__388_ gnd vdd FILL
XFILL_3__606_ gnd vdd FILL
XFILL75750x3750 gnd vdd FILL
XFILL_7__537_ gnd vdd FILL
XFILL_0__479_ gnd vdd FILL
XFILL_5__600_ gnd vdd FILL
XFILL_2__473_ gnd vdd FILL
XFILL_3__415_ gnd vdd FILL
XFILL_6__559_ gnd vdd FILL
XFILL_4__622_ gnd vdd FILL
XFILL_7__346_ gnd vdd FILL
XFILL_1__495_ gnd vdd FILL
XFILL_2__529_ gnd vdd FILL
XFILL_0__500_ gnd vdd FILL
XFILL_6__368_ gnd vdd FILL
X_503_ _41_ _42_ _47_ _48_ vdd gnd OAI21X1
XFILL_4__431_ gnd vdd FILL
XFILL_7__575_ gnd vdd FILL
XFILL_2__338_ gnd vdd FILL
XFILL_3__453_ gnd vdd FILL
XFILL_6__597_ gnd vdd FILL
XFILL_7__384_ gnd vdd FILL
XFILL_8__326_ gnd vdd FILL
XFILL_2__567_ gnd vdd FILL
XFILL_3__509_ gnd vdd FILL
X_541_ FCW[0] RdyCtl_6_bF$buf1 _76_ vdd gnd NAND2X1
XFILL_5__503_ gnd vdd FILL
XFILL_1__589_ gnd vdd FILL
XFILL_8__555_ gnd vdd FILL
XFILL_2__376_ gnd vdd FILL
XFILL_3__318_ gnd vdd FILL
XFILL_3__491_ gnd vdd FILL
XFILL_4__525_ gnd vdd FILL
X_350_ _186_ _182_ _187_ vdd gnd NAND2X1
XFILL75450x18150 gnd vdd FILL
XFILL_1__398_ gnd vdd FILL
XFILL_8__364_ gnd vdd FILL
XFILL_0__403_ gnd vdd FILL
XFILL_3__547_ gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
X_406_ _233_ _237_ _238_ _22_ vdd gnd AOI21X1
XFILL_1__610_ gnd vdd FILL
XFILL_4__334_ gnd vdd FILL
XFILL_7__478_ gnd vdd FILL
XFILL_5__541_ gnd vdd FILL
XFILL_8__593_ gnd vdd FILL
XFILL_3__356_ gnd vdd FILL
X_635_ _9_ clk_bF$buf0 acc_reg[2] vdd gnd DFFPOSX1
XFILL_4__563_ gnd vdd FILL
XFILL_5__350_ gnd vdd FILL
XFILL_0__441_ gnd vdd FILL
XFILL_3__585_ gnd vdd FILL
XFILL_4__619_ gnd vdd FILL
X_444_ _272_ _261_ _273_ _274_ vdd gnd OAI21X1
XFILL_4__372_ gnd vdd FILL
XFILL_5__406_ gnd vdd FILL
XFILL_8__458_ gnd vdd FILL
XFILL_6__521_ gnd vdd FILL
XFILL_3__394_ gnd vdd FILL
XFILL_4__428_ gnd vdd FILL
XFILL_6__330_ gnd vdd FILL
XFILL_3_BUFX2_insert6 gnd vdd FILL
XFILL_3_BUFX2_insert7 gnd vdd FILL
XFILL_3_BUFX2_insert8 gnd vdd FILL
XFILL_3_BUFX2_insert9 gnd vdd FILL
XFILL_1__513_ gnd vdd FILL
X_482_ _55_ _73__bF$buf4 _304_ _32_ vdd gnd AOI21X1
XFILL_5__444_ gnd vdd FILL
XFILL_8__496_ gnd vdd FILL
XFILL_0__535_ gnd vdd FILL
X_538_ En_bF$buf3 _44_ _5_ vdd gnd NAND2X1
XFILL_1__322_ gnd vdd FILL
XFILL_4__466_ gnd vdd FILL
XFILL_6__615_ gnd vdd FILL
XFILL_7__402_ gnd vdd FILL
XFILL_0__344_ gnd vdd FILL
XFILL_3__488_ gnd vdd FILL
X_347_ acc_reg[10] RdyCtl_6_bF$buf3 En_bF$buf2 _185_ vdd gnd OAI21X1
XFILL_1__551_ gnd vdd FILL
XFILL_5__482_ gnd vdd FILL
XFILL_6__424_ gnd vdd FILL
XFILL_0__573_ gnd vdd FILL
XFILL_1__607_ gnd vdd FILL
X_576_ _104_ _106_ _107_ vdd gnd AND2X2
XFILL_1__360_ gnd vdd FILL
XFILL_5__538_ gnd vdd FILL
XFILL_7__440_ gnd vdd FILL
XFILL_0__382_ gnd vdd FILL
XFILL_1__416_ gnd vdd FILL
X_385_ _203_ _218_ _211_ _219_ vdd gnd OAI21X1
XFILL_2__623_ gnd vdd FILL
XFILL_5__347_ gnd vdd FILL
XFILL75150x64950 gnd vdd FILL
XFILL_6__462_ gnd vdd FILL
XFILL_0__438_ gnd vdd FILL
XFILL_4__369_ gnd vdd FILL
XFILL_2__432_ gnd vdd FILL
XFILL_5__576_ gnd vdd FILL
XFILL_6__518_ gnd vdd FILL
XFILL_0__667_ gnd vdd FILL
XFILL_1__454_ gnd vdd FILL
XFILL_8__420_ gnd vdd FILL
XFILL_4__598_ gnd vdd FILL
XFILL_5__385_ gnd vdd FILL
XFILL_3__603_ gnd vdd FILL
XFILL_6__327_ gnd vdd FILL
XFILL_5_CLKBUF1_insert0 gnd vdd FILL
XFILL_5_CLKBUF1_insert1 gnd vdd FILL
XFILL_5_CLKBUF1_insert2 gnd vdd FILL
XFILL_5_CLKBUF1_insert3 gnd vdd FILL
XFILL_5_CLKBUF1_insert4 gnd vdd FILL
XFILL_5_CLKBUF1_insert5 gnd vdd FILL
XFILL_7__534_ gnd vdd FILL
XFILL_0__476_ gnd vdd FILL
X_479_ acc_reg[12] _73__bF$buf4 En_bF$buf4 _303_ vdd gnd OAI21X1
XFILL_2__470_ gnd vdd FILL
XFILL_3__412_ gnd vdd FILL
XFILL_6__556_ gnd vdd FILL
XFILL_7__343_ gnd vdd FILL
XFILL_1__319_ gnd vdd FILL
XFILL_1__492_ gnd vdd FILL
XFILL_2__526_ gnd vdd FILL
XFILL_6__365_ gnd vdd FILL
X_500_ Atmp[11] _44_ _45_ vdd gnd NAND2X1
XFILL_7__572_ gnd vdd FILL
XFILL_1__548_ gnd vdd FILL
XFILL_8__514_ gnd vdd FILL
XFILL_2__335_ gnd vdd FILL
XFILL_5__479_ gnd vdd FILL
XFILL_3__450_ gnd vdd FILL
XFILL_6__594_ gnd vdd FILL
XFILL_7__381_ gnd vdd FILL
XFILL_1__357_ gnd vdd FILL
XFILL_8__323_ gnd vdd FILL
XFILL_2__564_ gnd vdd FILL
XFILL_3__506_ gnd vdd FILL
XFILL_7__437_ gnd vdd FILL
XFILL_0__379_ gnd vdd FILL
XFILL_5__500_ gnd vdd FILL
XFILL_1__586_ gnd vdd FILL
XFILL_8__552_ gnd vdd FILL
XFILL_2__373_ gnd vdd FILL
XFILL_3__315_ gnd vdd FILL
XFILL_6__459_ gnd vdd FILL
XFILL_4__522_ gnd vdd FILL
XFILL_7__666_ gnd vdd FILL
XFILL_8__608_ gnd vdd FILL
XFILL_1__395_ gnd vdd FILL
XFILL_8__361_ gnd vdd FILL
XFILL_2__429_ gnd vdd FILL
XFILL_0__400_ gnd vdd FILL
XFILL_3__544_ gnd vdd FILL
XFILL75450x39750 gnd vdd FILL
X_403_ _229_ _235_ _236_ vdd gnd NAND2X1
XFILL_4__331_ gnd vdd FILL
XFILL_7__475_ gnd vdd FILL
XFILL_8__417_ gnd vdd FILL
XFILL_8__590_ gnd vdd FILL
XFILL_3__353_ gnd vdd FILL
XFILL_6__497_ gnd vdd FILL
X_632_ _6_ clk_bF$buf1 RdyCtl[6] vdd gnd DFFPOSX1
XFILL_4__560_ gnd vdd FILL
XFILL73950x36150 gnd vdd FILL
XFILL_2__467_ gnd vdd FILL
XFILL_3__409_ gnd vdd FILL
XFILL_3__582_ gnd vdd FILL
XFILL_4__616_ gnd vdd FILL
X_441_ _269_ _270_ _271_ _24_ vdd gnd AOI21X1
XFILL_5__403_ gnd vdd FILL
XFILL76050x10950 gnd vdd FILL
XFILL_1__489_ gnd vdd FILL
XFILL_8__455_ gnd vdd FILL
XFILL_3__391_ gnd vdd FILL
XFILL_4__425_ gnd vdd FILL
XFILL_7__569_ gnd vdd FILL
XFILL_3__447_ gnd vdd FILL
XFILL_1__510_ gnd vdd FILL
XFILL_7__378_ gnd vdd FILL
XFILL_5__441_ gnd vdd FILL
XFILL_0__532_ gnd vdd FILL
X_535_ RdyCtl[1] En_bF$buf4 _2_ vdd gnd AND2X2
XFILL_4__463_ gnd vdd FILL
XFILL_8__549_ gnd vdd FILL
XFILL_6__612_ gnd vdd FILL
XFILL_0__341_ gnd vdd FILL
XFILL_3__485_ gnd vdd FILL
XFILL_4__519_ gnd vdd FILL
X_344_ _181_ _178_ _182_ vdd gnd NAND2X1
XFILL_8__358_ gnd vdd FILL
XFILL_6__421_ gnd vdd FILL
XFILL_2__599_ gnd vdd FILL
XFILL74850x50550 gnd vdd FILL
XFILL_0__570_ gnd vdd FILL
XFILL_1__604_ gnd vdd FILL
XFILL_4__328_ gnd vdd FILL
X_573_ _88_ _91_ _99_ _104_ vdd gnd NAND3X1
XFILL_5__535_ gnd vdd FILL
X_629_ _3_ clk_bF$buf1 RdyCtl[3] vdd gnd DFFPOSX1
XFILL_1__413_ gnd vdd FILL
XFILL_4__557_ gnd vdd FILL
X_382_ _214_ _215_ _216_ _20_ vdd gnd AOI21X1
XFILL_2__620_ gnd vdd FILL
XFILL_5__344_ gnd vdd FILL
XFILL_8__396_ gnd vdd FILL
XFILL_0__435_ gnd vdd FILL
XFILL_3__579_ gnd vdd FILL
X_438_ _265_ _268_ _269_ vdd gnd OR2X2
XFILL_4__366_ gnd vdd FILL
XFILL_5__573_ gnd vdd FILL
XFILL_6__515_ gnd vdd FILL
XFILL_3__388_ gnd vdd FILL
X_667_ _312_ ISout vdd gnd BUFX2
XFILL_1__451_ gnd vdd FILL
XFILL_4__595_ gnd vdd FILL
XFILL_5__382_ gnd vdd FILL
XFILL_3__600_ gnd vdd FILL
XFILL_6__324_ gnd vdd FILL
XFILL_7__531_ gnd vdd FILL
XFILL_0__473_ gnd vdd FILL
XFILL_1__507_ gnd vdd FILL
X_476_ _51_ _73__bF$buf1 _301_ _29_ vdd gnd AOI21X1
XFILL_5__438_ gnd vdd FILL
XFILL_6__553_ gnd vdd FILL
XFILL_0__529_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_7__340_ gnd vdd FILL
XFILL_1__316_ gnd vdd FILL
XFILL_2__523_ gnd vdd FILL
XFILL_5__667_ gnd vdd FILL
XFILL_6__609_ gnd vdd FILL
XFILL_6__362_ gnd vdd FILL
XFILL_0__338_ gnd vdd FILL
XFILL_1__545_ gnd vdd FILL
XFILL_8__511_ gnd vdd FILL
XFILL_2__332_ gnd vdd FILL
XFILL_5__476_ gnd vdd FILL
XFILL_6__418_ gnd vdd FILL
XFILL_6__591_ gnd vdd FILL
XFILL74550x7350 gnd vdd FILL
XFILL_7__625_ gnd vdd FILL
XFILL_0__567_ gnd vdd FILL
XFILL_1__354_ gnd vdd FILL
XFILL75150x50550 gnd vdd FILL
XFILL_4__498_ gnd vdd FILL
XFILL_2__561_ gnd vdd FILL
XFILL_3__503_ gnd vdd FILL
XFILL76050x150 gnd vdd FILL
XFILL_7__434_ gnd vdd FILL
XFILL_0__376_ gnd vdd FILL
X_379_ _210_ _213_ _214_ vdd gnd OR2X2
XFILL_1__583_ gnd vdd FILL
XFILL_2__617_ gnd vdd FILL
XFILL_2__370_ gnd vdd FILL
XFILL_6__456_ gnd vdd FILL
XFILL_8__605_ gnd vdd FILL
XFILL_1__392_ gnd vdd FILL
XFILL_2__426_ gnd vdd FILL
XFILL_3__541_ gnd vdd FILL
X_400_ _228_ _232_ _224_ _233_ vdd gnd NAND3X1
XFILL_7__472_ gnd vdd FILL
XFILL_1__448_ gnd vdd FILL
XFILL_5__379_ gnd vdd FILL
XFILL_3__350_ gnd vdd FILL
XFILL_6__494_ gnd vdd FILL
XFILL_7__528_ gnd vdd FILL
XFILL_2__464_ gnd vdd FILL
XFILL_3__406_ gnd vdd FILL
XFILL73950x57750 gnd vdd FILL
XFILL_4__613_ gnd vdd FILL
XFILL_7__337_ gnd vdd FILL
XFILL_5__400_ gnd vdd FILL
XFILL_1__486_ gnd vdd FILL
XFILL_8__452_ gnd vdd FILL
XFILL_6__359_ gnd vdd FILL
XFILL_4__422_ gnd vdd FILL
XFILL_7__566_ gnd vdd FILL
XFILL_8__508_ gnd vdd FILL
XFILL_2__329_ gnd vdd FILL
XFILL_3__444_ gnd vdd FILL
XFILL_6__588_ gnd vdd FILL
XFILL_7__375_ gnd vdd FILL
XFILL_8__317_ gnd vdd FILL
XFILL_8__490_ gnd vdd FILL
XFILL_2__558_ gnd vdd FILL
XFILL_6__397_ gnd vdd FILL
X_532_ En_bF$buf1 _74_ vdd gnd INVX2
XFILL_4__460_ gnd vdd FILL
XFILL_8__546_ gnd vdd FILL
XFILL75450x25350 gnd vdd FILL
XFILL_2__367_ gnd vdd FILL
XFILL_3__482_ gnd vdd FILL
XFILL_4__516_ gnd vdd FILL
X_341_ acc_reg[10] FCW[10] _179_ vdd gnd AND2X2
XFILL_1__389_ gnd vdd FILL
XFILL_8__355_ gnd vdd FILL
XFILL_2__596_ gnd vdd FILL
XFILL_3__538_ gnd vdd FILL
XFILL_1__601_ gnd vdd FILL
XFILL_4__325_ gnd vdd FILL
XFILL_7__469_ gnd vdd FILL
X_570_ _97_ _98_ _101_ _102_ vdd gnd OAI21X1
XFILL_5__532_ gnd vdd FILL
XFILL_8__584_ gnd vdd FILL
XFILL_0__623_ gnd vdd FILL
XFILL_3__347_ gnd vdd FILL
X_626_ _0_ clk_bF$buf5 RdyCtl[0] vdd gnd DFFPOSX1
XFILL_1__410_ gnd vdd FILL
XFILL_4__554_ gnd vdd FILL
XFILL_5__341_ gnd vdd FILL
XFILL75750x68550 gnd vdd FILL
XFILL_8__393_ gnd vdd FILL
XFILL_0__432_ gnd vdd FILL
XFILL_3__576_ gnd vdd FILL
X_435_ acc_reg[17] FCW[17] _266_ vdd gnd AND2X2
XFILL_4__363_ gnd vdd FILL
XFILL_8__449_ gnd vdd FILL
XFILL_5__570_ gnd vdd FILL
XFILL_6__512_ gnd vdd FILL
XFILL75150x3750 gnd vdd FILL
XFILL_3__385_ gnd vdd FILL
XFILL_4__419_ gnd vdd FILL
X_664_ _38_ clk_bF$buf2 _312_ vdd gnd DFFPOSX1
XFILL73050x39750 gnd vdd FILL
XFILL_4__592_ gnd vdd FILL
XFILL_6__321_ gnd vdd FILL
XFILL_2__499_ gnd vdd FILL
XFILL_0__470_ gnd vdd FILL
XFILL_1__504_ gnd vdd FILL
X_473_ acc_reg[9] _73__bF$buf1 En_bF$buf0 _300_ vdd gnd OAI21X1
XFILL_5__435_ gnd vdd FILL
XFILL_8__487_ gnd vdd FILL
XFILL_6__550_ gnd vdd FILL
XFILL_0__526_ gnd vdd FILL
X_529_ _312_ _66_ _72_ vdd gnd NAND2X1
XFILL_1__313_ gnd vdd FILL
XFILL_4__457_ gnd vdd FILL
XFILL_2__520_ gnd vdd FILL
XFILL_6__606_ gnd vdd FILL
XFILL76050x18150 gnd vdd FILL
XFILL_0__335_ gnd vdd FILL
XFILL_3__479_ gnd vdd FILL
X_338_ _175_ _176_ vdd gnd INVX1
XFILL_1__542_ gnd vdd FILL
XFILL_5__473_ gnd vdd FILL
XFILL_6__415_ gnd vdd FILL
XFILL_7__622_ gnd vdd FILL
XFILL_0__564_ gnd vdd FILL
X_567_ _98_ _97_ _99_ vdd gnd NOR2X1
XFILL_1__351_ gnd vdd FILL
XFILL_4__495_ gnd vdd FILL
XFILL_5__529_ gnd vdd FILL
XFILL_3__500_ gnd vdd FILL
XFILL_3_CLKBUF1_insert0 gnd vdd FILL
XFILL_3_CLKBUF1_insert1 gnd vdd FILL
XFILL_3_CLKBUF1_insert2 gnd vdd FILL
XFILL_3_CLKBUF1_insert3 gnd vdd FILL
XFILL_3_CLKBUF1_insert4 gnd vdd FILL
XFILL_3_CLKBUF1_insert5 gnd vdd FILL
XFILL_7__431_ gnd vdd FILL
XFILL_0__373_ gnd vdd FILL
XFILL_1__407_ gnd vdd FILL
X_376_ acc_reg[13] FCW[13] _211_ vdd gnd NAND2X1
XFILL_1__580_ gnd vdd FILL
XFILL_2__614_ gnd vdd FILL
XFILL_5__338_ gnd vdd FILL
XFILL_6__453_ gnd vdd FILL
XFILL_0__429_ gnd vdd FILL
XFILL_8__602_ gnd vdd FILL
XFILL_2__423_ gnd vdd FILL
XFILL_5__567_ gnd vdd FILL
XFILL_6__509_ gnd vdd FILL
XFILL_1__445_ gnd vdd FILL
XFILL_8__411_ gnd vdd FILL
XFILL_4__589_ gnd vdd FILL
XFILL_5__376_ gnd vdd FILL
XFILL_6__318_ gnd vdd FILL
XFILL_6__491_ gnd vdd FILL
XFILL_7__525_ gnd vdd FILL
XFILL_0__467_ gnd vdd FILL
XFILL_4__398_ gnd vdd FILL
XFILL_2__461_ gnd vdd FILL
XFILL_3__403_ gnd vdd FILL
XFILL_6__547_ gnd vdd FILL
XFILL_4__610_ gnd vdd FILL
XFILL_7__334_ gnd vdd FILL
XFILL_1__483_ gnd vdd FILL
XFILL_2__517_ gnd vdd FILL
XFILL_6__356_ gnd vdd FILL
XFILL_7__563_ gnd vdd FILL
XFILL_1__539_ gnd vdd FILL
XFILL_8__505_ gnd vdd FILL
XFILL_7_BUFX2_insert10 gnd vdd FILL
XFILL_7_BUFX2_insert11 gnd vdd FILL
XFILL_7_BUFX2_insert12 gnd vdd FILL
XFILL_7_BUFX2_insert13 gnd vdd FILL
XFILL_7_BUFX2_insert14 gnd vdd FILL
XFILL_7_BUFX2_insert15 gnd vdd FILL
XFILL_7_BUFX2_insert16 gnd vdd FILL
XFILL_7_BUFX2_insert17 gnd vdd FILL
XFILL_7_BUFX2_insert18 gnd vdd FILL
XFILL_7_BUFX2_insert19 gnd vdd FILL
XFILL_2__326_ gnd vdd FILL
XFILL_3__441_ gnd vdd FILL
XFILL_6__585_ gnd vdd FILL
XFILL_7__619_ gnd vdd FILL
XFILL_7__372_ gnd vdd FILL
XFILL_1__348_ gnd vdd FILL
XFILL_8__314_ gnd vdd FILL
XFILL_2__555_ gnd vdd FILL
XFILL_6__394_ gnd vdd FILL
XFILL_7__428_ gnd vdd FILL
XFILL_1__577_ gnd vdd FILL
XFILL_8__543_ gnd vdd FILL
XFILL_2__364_ gnd vdd FILL
XFILL_4__513_ gnd vdd FILL
XFILL_0__599_ gnd vdd FILL
XFILL75450x46950 gnd vdd FILL
XFILL_1__386_ gnd vdd FILL
XFILL_8__352_ gnd vdd FILL
XFILL_2__593_ gnd vdd FILL
XFILL74250x61350 gnd vdd FILL
XFILL_3__535_ gnd vdd FILL
XFILL74250x28950 gnd vdd FILL
XFILL_4__322_ gnd vdd FILL
XFILL_7__466_ gnd vdd FILL
XFILL_8__408_ gnd vdd FILL
XFILL_8__581_ gnd vdd FILL
XFILL_0__620_ gnd vdd FILL
XFILL_3__344_ gnd vdd FILL
XFILL_6__488_ gnd vdd FILL
X_623_ _145_ _149_ _150_ vdd gnd NOR2X1
XFILL_4__551_ gnd vdd FILL
XFILL_2__458_ gnd vdd FILL
XFILL_3__573_ gnd vdd FILL
XFILL_4__607_ gnd vdd FILL
X_432_ acc_reg[16] RdyCtl_6_bF$buf3 En_bF$buf2 _264_ vdd gnd OAI21X1
XFILL_4__360_ gnd vdd FILL
XFILL_3__382_ gnd vdd FILL
XFILL_4__416_ gnd vdd FILL
X_661_ _35_ clk_bF$buf3 Atmp[8] vdd gnd DFFPOSX1
XFILL_5__623_ gnd vdd FILL
XFILL_2__496_ gnd vdd FILL
XFILL_3__438_ gnd vdd FILL
XFILL_1__501_ gnd vdd FILL
XFILL_7__369_ gnd vdd FILL
X_470_ acc_reg[8] _73__bF$buf1 En_bF$buf0 _298_ vdd gnd OAI21X1
XFILL_5__432_ gnd vdd FILL
XFILL_0__523_ gnd vdd FILL
XFILL_3__667_ gnd vdd FILL
X_526_ acc_reg[19] _69_ vdd gnd INVX1
XFILL_4__454_ gnd vdd FILL
XFILL_7__598_ gnd vdd FILL
XFILL_6__603_ gnd vdd FILL
XFILL_0__332_ gnd vdd FILL
XFILL_3__476_ gnd vdd FILL
X_335_ _172_ _170_ _173_ _16_ vdd gnd AOI21X1
XFILL_8__349_ gnd vdd FILL
XFILL76050x39750 gnd vdd FILL
XFILL_5__470_ gnd vdd FILL
XFILL_6__412_ gnd vdd FILL
XFILL_0__561_ gnd vdd FILL
XFILL_4__319_ gnd vdd FILL
X_564_ acc_reg[3] RdyCtl_6_bF$buf4 En_bF$buf1 _96_ vdd gnd OAI21X1
XFILL75750x54150 gnd vdd FILL
XFILL_4__492_ gnd vdd FILL
XFILL_5__526_ gnd vdd FILL
XFILL_2__399_ gnd vdd FILL
XFILL_0__617_ gnd vdd FILL
XFILL74550x36150 gnd vdd FILL
XFILL_0__370_ gnd vdd FILL
XFILL_1__404_ gnd vdd FILL
XFILL_4__548_ gnd vdd FILL
X_373_ _208_ _195_ _74_ _19_ vdd gnd AOI21X1
XFILL_2__611_ gnd vdd FILL
XFILL_5__335_ gnd vdd FILL
XFILL_8__387_ gnd vdd FILL
XFILL_6__450_ gnd vdd FILL
XFILL_0__426_ gnd vdd FILL
X_429_ _257_ _258_ _260_ _261_ vdd gnd AOI21X1
XFILL_4__357_ gnd vdd FILL
XFILL_2__420_ gnd vdd FILL
XFILL_5__564_ gnd vdd FILL
XFILL_6__506_ gnd vdd FILL
XFILL_3__379_ gnd vdd FILL
X_658_ _32_ clk_bF$buf1 Atmp[5] vdd gnd DFFPOSX1
XFILL_1__442_ gnd vdd FILL
XFILL_4__586_ gnd vdd FILL
XFILL_5__373_ gnd vdd FILL
XFILL_6__315_ gnd vdd FILL
XFILL_7__522_ gnd vdd FILL
XFILL_0__464_ gnd vdd FILL
X_467_ _294_ _295_ _73__bF$buf2 _296_ vdd gnd AOI21X1
XFILL_4__395_ gnd vdd FILL
XFILL_5__429_ gnd vdd FILL
XFILL_3__400_ gnd vdd FILL
XFILL_6__544_ gnd vdd FILL
XFILL_7__331_ gnd vdd FILL
XFILL_1__480_ gnd vdd FILL
XFILL_2__514_ gnd vdd FILL
XFILL_6__353_ gnd vdd FILL
XFILL_0__329_ gnd vdd FILL
XFILL_7__560_ gnd vdd FILL
XFILL_1__536_ gnd vdd FILL
XFILL_8__502_ gnd vdd FILL
XFILL_2__323_ gnd vdd FILL
XFILL_5__467_ gnd vdd FILL
XFILL_6__409_ gnd vdd FILL
XFILL_6__582_ gnd vdd FILL
XFILL_7__616_ gnd vdd FILL
XFILL_0__558_ gnd vdd FILL
XFILL_1__345_ gnd vdd FILL
XFILL_4__489_ gnd vdd FILL
XFILL_2__552_ gnd vdd FILL
XFILL_6__391_ gnd vdd FILL
XFILL_7__425_ gnd vdd FILL
XFILL_0__367_ gnd vdd FILL
XFILL_1__574_ gnd vdd FILL
XFILL_2__608_ gnd vdd FILL
XFILL74850x3750 gnd vdd FILL
XFILL_2__361_ gnd vdd FILL
XFILL_6__447_ gnd vdd FILL
XFILL_4__510_ gnd vdd FILL
XFILL_0__596_ gnd vdd FILL
X_599_ _111_ _127_ _126_ _128_ vdd gnd AOI21X1
XFILL_1__383_ gnd vdd FILL
XFILL_2__417_ gnd vdd FILL
XFILL_2__590_ gnd vdd FILL
XFILL_3__532_ gnd vdd FILL
XFILL_7__463_ gnd vdd FILL
XFILL_1__439_ gnd vdd FILL
XFILL_8__405_ gnd vdd FILL
XFILL_3__341_ gnd vdd FILL
XFILL_6__485_ gnd vdd FILL
XFILL_7__519_ gnd vdd FILL
X_620_ acc_reg[7] FCW[7] _147_ vdd gnd NOR2X1
XFILL_1__668_ gnd vdd FILL
XFILL_2__455_ gnd vdd FILL
XFILL_5__599_ gnd vdd FILL
XFILL_3__570_ gnd vdd FILL
XFILL_4__604_ gnd vdd FILL
XFILL_7__328_ gnd vdd FILL
XFILL_1__477_ gnd vdd FILL
XFILL_8__443_ gnd vdd FILL
XFILL_4__413_ gnd vdd FILL
XFILL_7__557_ gnd vdd FILL
XFILL_0__499_ gnd vdd FILL
XFILL_5__620_ gnd vdd FILL
XFILL_2__493_ gnd vdd FILL
XFILL_3__435_ gnd vdd FILL
XFILL_6__579_ gnd vdd FILL
XFILL_7__366_ gnd vdd FILL
XFILL_8__481_ gnd vdd FILL
XFILL_2__549_ gnd vdd FILL
XFILL_0__520_ gnd vdd FILL
XFILL_6__388_ gnd vdd FILL
X_523_ RdyCtl[5] _66_ vdd gnd INVX1
XFILL_4__451_ gnd vdd FILL
XFILL_7__595_ gnd vdd FILL
XFILL_8__537_ gnd vdd FILL
XFILL_6__600_ gnd vdd FILL
XFILL_2__358_ gnd vdd FILL
XFILL74250x14550 gnd vdd FILL
XFILL_3__473_ gnd vdd FILL
XFILL_4__507_ gnd vdd FILL
X_332_ _169_ _164_ _171_ vdd gnd NOR2X1
XFILL_8__346_ gnd vdd FILL
XFILL_2__587_ gnd vdd FILL
XFILL_3__529_ gnd vdd FILL
XFILL_4__316_ gnd vdd FILL
X_561_ _88_ _91_ _93_ _94_ vdd gnd OAI21X1
XFILL_5__523_ gnd vdd FILL
XFILL_8__575_ gnd vdd FILL
XFILL_2__396_ gnd vdd FILL
XFILL_0__614_ gnd vdd FILL
XFILL_3__338_ gnd vdd FILL
X_617_ _142_ _143_ _144_ _14_ vdd gnd AOI21X1
XFILL_1__401_ gnd vdd FILL
XFILL_4__545_ gnd vdd FILL
X_370_ _205_ _202_ _206_ vdd gnd NOR2X1
XFILL_5__332_ gnd vdd FILL
XFILL_8__384_ gnd vdd FILL
XFILL74550x57750 gnd vdd FILL
XFILL_0__423_ gnd vdd FILL
XFILL_3__567_ gnd vdd FILL
X_426_ _197_ _240_ _258_ vdd gnd NOR2X1
XFILL_4__354_ gnd vdd FILL
XFILL_7__498_ gnd vdd FILL
XFILL_5__561_ gnd vdd FILL
XFILL_6__503_ gnd vdd FILL
XFILL_3__376_ gnd vdd FILL
X_655_ _29_ clk_bF$buf4 Atmp[2] vdd gnd DFFPOSX1
XFILL_4__583_ gnd vdd FILL
XFILL_5__617_ gnd vdd FILL
XFILL_5__370_ gnd vdd FILL
XFILL_0__461_ gnd vdd FILL
X_464_ _292_ _289_ _293_ vdd gnd NAND2X1
XFILL_4__392_ gnd vdd FILL
XFILL_5__426_ gnd vdd FILL
XFILL_8__478_ gnd vdd FILL
XFILL_1_CLKBUF1_insert0 gnd vdd FILL
XFILL_1_CLKBUF1_insert1 gnd vdd FILL
XFILL_1_CLKBUF1_insert2 gnd vdd FILL
XFILL_1_CLKBUF1_insert3 gnd vdd FILL
XFILL_1_CLKBUF1_insert4 gnd vdd FILL
XFILL_1_CLKBUF1_insert5 gnd vdd FILL
XFILL_6__541_ gnd vdd FILL
XFILL_0__517_ gnd vdd FILL
XFILL74850x10950 gnd vdd FILL
XFILL_4__448_ gnd vdd FILL
XFILL76050x25350 gnd vdd FILL
XFILL_2__511_ gnd vdd FILL
XFILL_6__350_ gnd vdd FILL
XFILL_0__326_ gnd vdd FILL
X_329_ _166_ _167_ _168_ vdd gnd NAND2X1
XFILL_1__533_ gnd vdd FILL
XFILL_2__320_ gnd vdd FILL
XFILL_5__464_ gnd vdd FILL
XFILL_6__406_ gnd vdd FILL
XFILL_7__613_ gnd vdd FILL
XFILL_0__555_ gnd vdd FILL
X_558_ _90_ _89_ _91_ vdd gnd NOR2X1
XFILL_1__342_ gnd vdd FILL
XFILL_4__486_ gnd vdd FILL
XFILL_7__422_ gnd vdd FILL
XFILL_0__364_ gnd vdd FILL
X_367_ acc_reg[12] FCW[12] _203_ vdd gnd NAND2X1
XFILL_1__571_ gnd vdd FILL
XFILL_2__605_ gnd vdd FILL
XFILL_5__329_ gnd vdd FILL
XFILL_6__444_ gnd vdd FILL
XFILL_0__593_ gnd vdd FILL
X_596_ _117_ _125_ vdd gnd INVX1
XFILL_1__380_ gnd vdd FILL
XFILL_2__414_ gnd vdd FILL
XFILL_5__558_ gnd vdd FILL
XFILL_7__460_ gnd vdd FILL
XFILL_1__436_ gnd vdd FILL
XFILL_8__402_ gnd vdd FILL
XFILL_5__367_ gnd vdd FILL
XFILL_6__482_ gnd vdd FILL
XFILL_7__516_ gnd vdd FILL
XFILL_0__458_ gnd vdd FILL
XBUFX2_insert6 RdyCtl[6] RdyCtl_6_bF$buf4 vdd gnd BUFX2
XBUFX2_insert7 RdyCtl[6] RdyCtl_6_bF$buf3 vdd gnd BUFX2
XBUFX2_insert8 RdyCtl[6] RdyCtl_6_bF$buf2 vdd gnd BUFX2
XBUFX2_insert9 RdyCtl[6] RdyCtl_6_bF$buf1 vdd gnd BUFX2
XFILL_1__665_ gnd vdd FILL
XFILL_4__389_ gnd vdd FILL
XFILL_2__452_ gnd vdd FILL
XFILL_5__596_ gnd vdd FILL
XFILL_6__538_ gnd vdd FILL
XFILL_4__601_ gnd vdd FILL
XFILL_7__325_ gnd vdd FILL
XFILL_1__474_ gnd vdd FILL
XFILL_8__440_ gnd vdd FILL
XFILL_2__508_ gnd vdd FILL
XFILL75150x10950 gnd vdd FILL
XFILL_3__623_ gnd vdd FILL
XFILL_6__347_ gnd vdd FILL
XFILL_4__410_ gnd vdd FILL
XFILL_7__554_ gnd vdd FILL
XFILL_0__496_ gnd vdd FILL
X_499_ RdyCtl[4] _44_ vdd gnd INVX1
XFILL_2__317_ gnd vdd FILL
XFILL_2__490_ gnd vdd FILL
XFILL_3__432_ gnd vdd FILL
XFILL_6__576_ gnd vdd FILL
XFILL_7__363_ gnd vdd FILL
XFILL_1__339_ gnd vdd FILL
XFILL_2__546_ gnd vdd FILL
XFILL_6__385_ gnd vdd FILL
XFILL_7__419_ gnd vdd FILL
X_520_ RdyCtl[1] _61_ _63_ _64_ vdd gnd OAI21X1
XFILL_7__592_ gnd vdd FILL
XFILL_1__568_ gnd vdd FILL
XFILL_8__534_ gnd vdd FILL
XFILL_2__355_ gnd vdd FILL
XFILL_5__499_ gnd vdd FILL
XFILL_3__470_ gnd vdd FILL
XFILL_4__504_ gnd vdd FILL
XFILL_1__377_ gnd vdd FILL
XFILL_2__584_ gnd vdd FILL
XFILL_3__526_ gnd vdd FILL
XFILL73950x50550 gnd vdd FILL
XFILL_4__313_ gnd vdd FILL
XFILL_7__457_ gnd vdd FILL
XFILL_0__399_ gnd vdd FILL
XFILL_5__520_ gnd vdd FILL
XFILL_8__572_ gnd vdd FILL
XFILL_2__393_ gnd vdd FILL
XFILL_0__611_ gnd vdd FILL
XFILL_3__335_ gnd vdd FILL
XFILL_6__479_ gnd vdd FILL
X_614_ _138_ _141_ _142_ vdd gnd OR2X2
XFILL_4__542_ gnd vdd FILL
XFILL_2__449_ gnd vdd FILL
XFILL_0__420_ gnd vdd FILL
XFILL_3__564_ gnd vdd FILL
X_423_ _254_ _127_ _255_ vdd gnd NAND2X1
XFILL_4__351_ gnd vdd FILL
XFILL_7__495_ gnd vdd FILL
XFILL_6__500_ gnd vdd FILL
XFILL_3__373_ gnd vdd FILL
XFILL_4__407_ gnd vdd FILL
X_652_ _26_ clk_bF$buf2 acc_reg[19] vdd gnd DFFPOSX1
XFILL_4__580_ gnd vdd FILL
XFILL_5__614_ gnd vdd FILL
XFILL_8__666_ gnd vdd FILL
XFILL_2__487_ gnd vdd FILL
XFILL_3__429_ gnd vdd FILL
X_461_ acc_reg[19] FCW[19] _290_ vdd gnd NAND2X1
XFILL_5__423_ gnd vdd FILL
XFILL_0__514_ gnd vdd FILL
X_517_ _40_ _55_ _60_ _61_ vdd gnd OAI21X1
XFILL_4__445_ gnd vdd FILL
XFILL_7__589_ gnd vdd FILL
XFILL_0__323_ gnd vdd FILL
XFILL76050x46950 gnd vdd FILL
XFILL_3__467_ gnd vdd FILL
XFILL_4_BUFX2_insert20 gnd vdd FILL
X_326_ acc_reg[9] FCW[9] _165_ vdd gnd NAND2X1
XFILL_1__530_ gnd vdd FILL
XFILL_7__398_ gnd vdd FILL
XFILL_5__461_ gnd vdd FILL
XFILL75750x61350 gnd vdd FILL
XFILL_6__403_ gnd vdd FILL
XFILL75750x28950 gnd vdd FILL
XFILL_7__610_ gnd vdd FILL
XFILL_0__552_ gnd vdd FILL
X_555_ _78_ _81_ _79_ _88_ vdd gnd OAI21X1
XFILL_4__483_ gnd vdd FILL
XFILL_5__517_ gnd vdd FILL
XFILL_8__569_ gnd vdd FILL
XFILL_0__608_ gnd vdd FILL
XFILL_0__361_ gnd vdd FILL
XFILL_4__539_ gnd vdd FILL
X_364_ _199_ _179_ _188_ _200_ vdd gnd AOI21X1
XFILL_2__602_ gnd vdd FILL
XFILL_5__326_ gnd vdd FILL
XFILL_8__378_ gnd vdd FILL
XFILL_6__441_ gnd vdd FILL
XFILL_0__417_ gnd vdd FILL
XFILL_0__590_ gnd vdd FILL
XFILL_1__624_ gnd vdd FILL
XFILL_4__348_ gnd vdd FILL
X_593_ acc_reg[5] RdyCtl_6_bF$buf4 En_bF$buf1 _123_ vdd gnd OAI21X1
XFILL_2__411_ gnd vdd FILL
XFILL_5__555_ gnd vdd FILL
X_649_ _23_ clk_bF$buf5 acc_reg[16] vdd gnd DFFPOSX1
XFILL_1__433_ gnd vdd FILL
XFILL_4__577_ gnd vdd FILL
XFILL_5__364_ gnd vdd FILL
XFILL_7__513_ gnd vdd FILL
XFILL_0__455_ gnd vdd FILL
XFILL_3__599_ gnd vdd FILL
X_458_ acc_reg[19] En_bF$buf4 _287_ vdd gnd NAND2X1
XFILL_4__386_ gnd vdd FILL
XFILL_5__593_ gnd vdd FILL
XFILL_6__535_ gnd vdd FILL
XFILL_7__322_ gnd vdd FILL
XFILL_1__471_ gnd vdd FILL
XFILL_2__505_ gnd vdd FILL
XFILL_3__620_ gnd vdd FILL
XFILL_6__344_ gnd vdd FILL
XFILL_7__551_ gnd vdd FILL
XFILL_0__493_ gnd vdd FILL
XFILL_1__527_ gnd vdd FILL
X_496_ Atmp[6] _41_ vdd gnd INVX1
XFILL_2__314_ gnd vdd FILL
XFILL_5__458_ gnd vdd FILL
XFILL_6__573_ gnd vdd FILL
XFILL_7__607_ gnd vdd FILL
XFILL_0__549_ gnd vdd FILL
XFILL_7__360_ gnd vdd FILL
XFILL_1__336_ gnd vdd FILL
XFILL_2__543_ gnd vdd FILL
XFILL_6__382_ gnd vdd FILL
XFILL_7__416_ gnd vdd FILL
XFILL_0__358_ gnd vdd FILL
XFILL75450x7350 gnd vdd FILL
XFILL_1__565_ gnd vdd FILL
XFILL74850x18150 gnd vdd FILL
XFILL_2__352_ gnd vdd FILL
XFILL_5__496_ gnd vdd FILL
XFILL_6__438_ gnd vdd FILL
XFILL_4__501_ gnd vdd FILL
XFILL_0__587_ gnd vdd FILL
XFILL_1__374_ gnd vdd FILL
XFILL_8__340_ gnd vdd FILL
XFILL_2__408_ gnd vdd FILL
XFILL_2__581_ gnd vdd FILL
XFILL_3__523_ gnd vdd FILL
XFILL_6__667_ gnd vdd FILL
XFILL_7__454_ gnd vdd FILL
XFILL_0__396_ gnd vdd FILL
X_399_ _231_ _230_ _232_ vdd gnd NOR2X1
XFILL_2__390_ gnd vdd FILL
XFILL_3__332_ gnd vdd FILL
XFILL_6__476_ gnd vdd FILL
X_611_ acc_reg[7] FCW[7] _139_ vdd gnd NAND2X1
XFILL_2__446_ gnd vdd FILL
XFILL_3__561_ gnd vdd FILL
XFILL_7__319_ gnd vdd FILL
X_420_ _251_ _250_ _252_ vdd gnd NOR2X1
XFILL_7__492_ gnd vdd FILL
XFILL_1__468_ gnd vdd FILL
XFILL_8__434_ gnd vdd FILL
XFILL_5__399_ gnd vdd FILL
XFILL_3__617_ gnd vdd FILL
XFILL_3__370_ gnd vdd FILL
XFILL_4__404_ gnd vdd FILL
XFILL_7__548_ gnd vdd FILL
XFILL_5__611_ gnd vdd FILL
XFILL_2__484_ gnd vdd FILL
XFILL_3__426_ gnd vdd FILL
XFILL_7__357_ gnd vdd FILL
XFILL_5__420_ gnd vdd FILL
XFILL_8__472_ gnd vdd FILL
XFILL_0__511_ gnd vdd FILL
XFILL_6__379_ gnd vdd FILL
X_514_ Atmp[7] _58_ vdd gnd INVX1
XFILL_4__442_ gnd vdd FILL
XFILL_7__586_ gnd vdd FILL
XFILL_8__528_ gnd vdd FILL
XFILL_2__349_ gnd vdd FILL
XFILL_0__320_ gnd vdd FILL
XFILL_3__464_ gnd vdd FILL
X_323_ acc_reg[8] RdyCtl_6_bF$buf0 En_bF$buf0 _163_ vdd gnd OAI21X1
XFILL75150x18150 gnd vdd FILL
XFILL_7__395_ gnd vdd FILL
XFILL_8__337_ gnd vdd FILL
XFILL_6__400_ gnd vdd FILL
XFILL_2__578_ gnd vdd FILL
X_552_ _82_ _85_ _86_ vdd gnd NAND2X1
XFILL_4__480_ gnd vdd FILL
XFILL_5__514_ gnd vdd FILL
XFILL_8__566_ gnd vdd FILL
XFILL_2__387_ gnd vdd FILL
XFILL_0__605_ gnd vdd FILL
XFILL_3__329_ gnd vdd FILL
X_608_ acc_reg[6] RdyCtl_6_bF$buf4 En_bF$buf1 _137_ vdd gnd OAI21X1
XFILL_4__536_ gnd vdd FILL
X_361_ _181_ _190_ _196_ _197_ vdd gnd NAND3X1
XFILL_5__323_ gnd vdd FILL
XFILL_8__375_ gnd vdd FILL
XFILL_0__414_ gnd vdd FILL
XFILL_3__558_ gnd vdd FILL
X_417_ _156_ _241_ _248_ _249_ vdd gnd OAI21X1
XFILL_1__621_ gnd vdd FILL
XFILL_4__345_ gnd vdd FILL
XFILL_7__489_ gnd vdd FILL
X_590_ _119_ _116_ _120_ vdd gnd NAND2X1
XFILL_5__552_ gnd vdd FILL
XFILL_3__367_ gnd vdd FILL
X_646_ _20_ clk_bF$buf2 acc_reg[13] vdd gnd DFFPOSX1
XFILL_1__430_ gnd vdd FILL
XFILL_4__574_ gnd vdd FILL
XFILL_5__608_ gnd vdd FILL
XFILL_5__361_ gnd vdd FILL
XFILL_7__510_ gnd vdd FILL
XFILL_0__452_ gnd vdd FILL
XFILL_3__596_ gnd vdd FILL
X_455_ acc_reg[18] RdyCtl_6_bF$buf2 En_bF$buf4 _285_ vdd gnd OAI21X1
XFILL76050x3750 gnd vdd FILL
XFILL_4__383_ gnd vdd FILL
XFILL_5__417_ gnd vdd FILL
XFILL_8__469_ gnd vdd FILL
XFILL_5__590_ gnd vdd FILL
XFILL_6__532_ gnd vdd FILL
XFILL_0__508_ gnd vdd FILL
XFILL_4__439_ gnd vdd FILL
XFILL_2__502_ gnd vdd FILL
XFILL75750x14550 gnd vdd FILL
XFILL_6__341_ gnd vdd FILL
XFILL_0__317_ gnd vdd FILL
XFILL_0__490_ gnd vdd FILL
XFILL_1__524_ gnd vdd FILL
XFILL_4__668_ gnd vdd FILL
X_493_ _309_ _310_ _37_ vdd gnd NOR2X1
XFILL_5__455_ gnd vdd FILL
XFILL_6__570_ gnd vdd FILL
XFILL_7__604_ gnd vdd FILL
XFILL_0__546_ gnd vdd FILL
X_549_ _80_ _81_ _83_ vdd gnd OR2X2
XFILL_1__333_ gnd vdd FILL
XFILL_4__477_ gnd vdd FILL
XFILL_2__540_ gnd vdd FILL
XFILL_7__413_ gnd vdd FILL
XFILL_0__355_ gnd vdd FILL
XFILL_3__499_ gnd vdd FILL
X_358_ _192_ _193_ _194_ _18_ vdd gnd AOI21X1
XFILL_1__562_ gnd vdd FILL
XFILL_5__493_ gnd vdd FILL
XFILL_6__435_ gnd vdd FILL
XFILL_0__584_ gnd vdd FILL
XFILL_1__618_ gnd vdd FILL
X_587_ acc_reg[5] FCW[5] _117_ vdd gnd AND2X2
XFILL74850x39750 gnd vdd FILL
XFILL_1__371_ gnd vdd FILL
XFILL_2__405_ gnd vdd FILL
XFILL_5__549_ gnd vdd FILL
XFILL_3__520_ gnd vdd FILL
XFILL_7__451_ gnd vdd FILL
XFILL_0__393_ gnd vdd FILL
XFILL_1__427_ gnd vdd FILL
X_396_ acc_reg[15] FCW[15] _229_ vdd gnd NAND2X1
XFILL_5__358_ gnd vdd FILL
XFILL_6__473_ gnd vdd FILL
XFILL_7__507_ gnd vdd FILL
XFILL_0__449_ gnd vdd FILL
XFILL_8__622_ gnd vdd FILL
XFILL_2__443_ gnd vdd FILL
XFILL_5__587_ gnd vdd FILL
XFILL_6__529_ gnd vdd FILL
XFILL_7__316_ gnd vdd FILL
XFILL_1__465_ gnd vdd FILL
XFILL_8__431_ gnd vdd FILL
XFILL_5__396_ gnd vdd FILL
XFILL_3__614_ gnd vdd FILL
XFILL_6__338_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_4__401_ gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_7__545_ gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0__487_ gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_2__481_ gnd vdd FILL
XFILL_3__423_ gnd vdd FILL
XFILL_6__567_ gnd vdd FILL
XFILL_7__354_ gnd vdd FILL
XFILL_2__537_ gnd vdd FILL
XFILL_6__376_ gnd vdd FILL
X_511_ Atmp[5] _55_ vdd gnd INVX1
XFILL_7__583_ gnd vdd FILL
XFILL_1__559_ gnd vdd FILL
XFILL_8__525_ gnd vdd FILL
XFILL_2__346_ gnd vdd FILL
XFILL_8_CLKBUF1_insert0 gnd vdd FILL
XFILL_8_CLKBUF1_insert1 gnd vdd FILL
XFILL_8_CLKBUF1_insert3 gnd vdd FILL
XFILL_8_CLKBUF1_insert4 gnd vdd FILL
XFILL_8_CLKBUF1_insert5 gnd vdd FILL
XFILL_3__461_ gnd vdd FILL
X_320_ _156_ _159_ _160_ vdd gnd OR2X2
XBUFX2_insert20 _73_ _73__bF$buf0 vdd gnd BUFX2
XFILL_7__392_ gnd vdd FILL
XFILL_1__368_ gnd vdd FILL
XFILL_2__575_ gnd vdd FILL
XFILL_3__517_ gnd vdd FILL
XFILL75150x39750 gnd vdd FILL
XFILL_7__448_ gnd vdd FILL
XFILL_5__511_ gnd vdd FILL
XFILL_1__597_ gnd vdd FILL
XFILL_8__563_ gnd vdd FILL
XFILL_2__384_ gnd vdd FILL
XFILL_0__602_ gnd vdd FILL
XFILL_3__326_ gnd vdd FILL
X_605_ _130_ _134_ vdd gnd INVX1
XFILL_4__533_ gnd vdd FILL
XFILL_8__619_ gnd vdd FILL
XFILL_5__320_ gnd vdd FILL
XFILL_8__372_ gnd vdd FILL
XFILL_0__411_ gnd vdd FILL
XFILL_3__555_ gnd vdd FILL
X_414_ _235_ _221_ _230_ _246_ vdd gnd AOI21X1
XFILL_4__342_ gnd vdd FILL
XFILL_7__486_ gnd vdd FILL
XFILL_3__364_ gnd vdd FILL
X_643_ _17_ clk_bF$buf4 acc_reg[10] vdd gnd DFFPOSX1
XFILL_4__571_ gnd vdd FILL
XFILL_5__605_ gnd vdd FILL
XFILL_2__478_ gnd vdd FILL
XFILL_3__593_ gnd vdd FILL
X_452_ _249_ _280_ _281_ _282_ vdd gnd AOI21X1
XFILL_4__380_ gnd vdd FILL
XFILL_5__414_ gnd vdd FILL
XFILL_8__466_ gnd vdd FILL
XFILL_0__505_ gnd vdd FILL
X_508_ RdyCtl[1] _50_ _52_ _53_ vdd gnd OAI21X1
XFILL_4__436_ gnd vdd FILL
XFILL_0__314_ gnd vdd FILL
XFILL_3__458_ gnd vdd FILL
X_317_ acc_reg[8] FCW[8] _157_ vdd gnd NAND2X1
XFILL_1__521_ gnd vdd FILL
XFILL_4__665_ gnd vdd FILL
XFILL_7__389_ gnd vdd FILL
X_490_ _56_ _73__bF$buf3 _308_ _36_ vdd gnd AOI21X1
XFILL_5__452_ gnd vdd FILL
XFILL74550x50550 gnd vdd FILL
XFILL_7__601_ gnd vdd FILL
XFILL_0__543_ gnd vdd FILL
X_546_ _79_ _80_ vdd gnd INVX1
XFILL_1__330_ gnd vdd FILL
XFILL_4__474_ gnd vdd FILL
XFILL_5__508_ gnd vdd FILL
XFILL_6__623_ gnd vdd FILL
XFILL_7__410_ gnd vdd FILL
XFILL_0__352_ gnd vdd FILL
XFILL_3__496_ gnd vdd FILL
X_355_ _187_ _191_ _192_ vdd gnd OR2X2
XFILL_5__317_ gnd vdd FILL
XFILL_8__369_ gnd vdd FILL
XFILL_5__490_ gnd vdd FILL
XFILL_6__432_ gnd vdd FILL
XFILL_0__408_ gnd vdd FILL
XFILL_0__581_ gnd vdd FILL
XFILL_1__615_ gnd vdd FILL
XFILL_4__339_ gnd vdd FILL
X_584_ acc_reg[4] RdyCtl_6_bF$buf4 En_bF$buf1 _115_ vdd gnd OAI21X1
XFILL_2__402_ gnd vdd FILL
XFILL_5__546_ gnd vdd FILL
XFILL_8__598_ gnd vdd FILL
XFILL_0__390_ gnd vdd FILL
XFILL_1__424_ gnd vdd FILL
XFILL_4__568_ gnd vdd FILL
X_393_ acc_reg[14] RdyCtl_6_bF$buf1 En_bF$buf3 _227_ vdd gnd OAI21X1
XFILL_5__355_ gnd vdd FILL
XFILL_6__470_ gnd vdd FILL
XFILL_7__504_ gnd vdd FILL
XFILL_0__446_ gnd vdd FILL
X_449_ _278_ _274_ _279_ vdd gnd NAND2X1
XFILL_4__377_ gnd vdd FILL
XFILL_2__440_ gnd vdd FILL
XFILL_5__584_ gnd vdd FILL
XFILL_6__526_ gnd vdd FILL
XFILL_7__313_ gnd vdd FILL
XFILL_3__399_ gnd vdd FILL
XFILL_1__462_ gnd vdd FILL
XFILL_5__393_ gnd vdd FILL
XFILL_3__611_ gnd vdd FILL
XFILL_6__335_ gnd vdd FILL
XFILL_7__542_ gnd vdd FILL
XFILL_0__484_ gnd vdd FILL
XFILL_1__518_ gnd vdd FILL
X_487_ acc_reg[16] _73__bF$buf3 En_bF$buf1 _307_ vdd gnd OAI21X1
XFILL_5__449_ gnd vdd FILL
XFILL_3__420_ gnd vdd FILL
XFILL_6__564_ gnd vdd FILL
XFILL_7__351_ gnd vdd FILL
XFILL_1__327_ gnd vdd FILL
XFILL_2__534_ gnd vdd FILL
XFILL_6__373_ gnd vdd FILL
XFILL74850x25350 gnd vdd FILL
XFILL_7__407_ gnd vdd FILL
XFILL_0__349_ gnd vdd FILL
XFILL_7__580_ gnd vdd FILL
XFILL_1__556_ gnd vdd FILL
XFILL_2__343_ gnd vdd FILL
XFILL_5__487_ gnd vdd FILL
XFILL_6__429_ gnd vdd FILL
XFILL_0__578_ gnd vdd FILL
XFILL_1__365_ gnd vdd FILL
XFILL_8__331_ gnd vdd FILL
XFILL_2__572_ gnd vdd FILL
XFILL_3__514_ gnd vdd FILL
XFILL_7__445_ gnd vdd FILL
XFILL_0__387_ gnd vdd FILL
XFILL_1__594_ gnd vdd FILL
XFILL_8__560_ gnd vdd FILL
XFILL_2__381_ gnd vdd FILL
XFILL_3__323_ gnd vdd FILL
XFILL_6__467_ gnd vdd FILL
X_602_ _129_ _130_ _131_ vdd gnd NAND2X1
XFILL_4__530_ gnd vdd FILL
XFILL_8__616_ gnd vdd FILL
XFILL_2__437_ gnd vdd FILL
XFILL73650x57750 gnd vdd FILL
XFILL_3__552_ gnd vdd FILL
X_411_ _223_ _236_ _243_ vdd gnd NOR2X1
XFILL_7__483_ gnd vdd FILL
XFILL_1__459_ gnd vdd FILL
XFILL_8__425_ gnd vdd FILL
XFILL_2__666_ gnd vdd FILL
XFILL_3__608_ gnd vdd FILL
XFILL_3__361_ gnd vdd FILL
XFILL_7__539_ gnd vdd FILL
X_640_ _14_ clk_bF$buf4 acc_reg[7] vdd gnd DFFPOSX1
XFILL_5__602_ gnd vdd FILL
XFILL_2__475_ gnd vdd FILL
XFILL_3__417_ gnd vdd FILL
XFILL_3__590_ gnd vdd FILL
XFILL_4__624_ gnd vdd FILL
XFILL_7__348_ gnd vdd FILL
XFILL_5__411_ gnd vdd FILL
XFILL_1__497_ gnd vdd FILL
XFILL_8__463_ gnd vdd FILL
XFILL_0__502_ gnd vdd FILL
X_505_ _39_ _40_ _49_ _50_ vdd gnd OAI21X1
XFILL_4__433_ gnd vdd FILL
XFILL_7__577_ gnd vdd FILL
XFILL_8__519_ gnd vdd FILL
XFILL73950x10950 gnd vdd FILL
XFILL75150x25350 gnd vdd FILL
XFILL_3__455_ gnd vdd FILL
XFILL_6__599_ gnd vdd FILL
X_314_ _153_ _154_ vdd gnd INVX1
XFILL_7__386_ gnd vdd FILL
XFILL_8__328_ gnd vdd FILL
XFILL_2__569_ gnd vdd FILL
XFILL_0__540_ gnd vdd FILL
X_543_ _75_ _76_ _77_ _7_ vdd gnd AOI21X1
XFILL_4__471_ gnd vdd FILL
XFILL_5__505_ gnd vdd FILL
XFILL_8__557_ gnd vdd FILL
XFILL_6__620_ gnd vdd FILL
XFILL_2__378_ gnd vdd FILL
XFILL_3__493_ gnd vdd FILL
XFILL_4__527_ gnd vdd FILL
X_352_ acc_reg[11] FCW[11] _189_ vdd gnd NOR2X1
XFILL_5__314_ gnd vdd FILL
XFILL_8__366_ gnd vdd FILL
XFILL75450x68550 gnd vdd FILL
XFILL_0__405_ gnd vdd FILL
XFILL_3__549_ gnd vdd FILL
X_408_ _239_ _232_ _217_ _240_ vdd gnd NAND3X1
XFILL_1__612_ gnd vdd FILL
XFILL_4__336_ gnd vdd FILL
X_581_ _109_ _108_ _112_ vdd gnd NOR2X1
XFILL_5__543_ gnd vdd FILL
XFILL_8__595_ gnd vdd FILL
XFILL_3__358_ gnd vdd FILL
X_637_ _11_ clk_bF$buf3 acc_reg[4] vdd gnd DFFPOSX1
XFILL_1__421_ gnd vdd FILL
XFILL_4__565_ gnd vdd FILL
X_390_ _220_ _223_ _224_ vdd gnd OR2X2
XFILL_5__352_ gnd vdd FILL
XFILL_7__501_ gnd vdd FILL
XFILL_0__443_ gnd vdd FILL
XFILL_3__587_ gnd vdd FILL
X_446_ _68_ _275_ _276_ vdd gnd NOR2X1
XFILL_4__374_ gnd vdd FILL
XFILL_5__408_ gnd vdd FILL
XFILL_5__581_ gnd vdd FILL
XFILL_6__523_ gnd vdd FILL
XFILL75750x21750 gnd vdd FILL
XFILL_3__396_ gnd vdd FILL
XFILL_5__390_ gnd vdd FILL
XFILL_6__332_ gnd vdd FILL
XFILL_0__481_ gnd vdd FILL
XFILL_1__515_ gnd vdd FILL
X_484_ _41_ _73__bF$buf0 _305_ _33_ vdd gnd AOI21X1
XFILL_5__446_ gnd vdd FILL
XFILL_6__561_ gnd vdd FILL
XFILL_0__537_ gnd vdd FILL
XFILL_1__324_ gnd vdd FILL
XFILL_4__468_ gnd vdd FILL
XFILL_2__531_ gnd vdd FILL
XFILL_6__617_ gnd vdd FILL
XFILL_6__370_ gnd vdd FILL
XFILL_7__404_ gnd vdd FILL
XFILL_0__346_ gnd vdd FILL
X_349_ acc_reg[10] FCW[10] _186_ vdd gnd NAND2X1
XFILL_1__553_ gnd vdd FILL
XFILL_2__340_ gnd vdd FILL
XFILL_5__484_ gnd vdd FILL
XFILL_6__426_ gnd vdd FILL
XFILL_0__575_ gnd vdd FILL
XFILL_1__609_ gnd vdd FILL
X_578_ acc_reg[4] FCW[4] _109_ vdd gnd NOR2X1
XFILL_1__362_ gnd vdd FILL
XFILL_3__511_ gnd vdd FILL
XFILL_7__442_ gnd vdd FILL
XFILL_0__384_ gnd vdd FILL
XFILL_1__418_ gnd vdd FILL
X_387_ acc_reg[14] FCW[14] _221_ vdd gnd AND2X2
XFILL_1__591_ gnd vdd FILL
XFILL_2__625_ gnd vdd FILL
XFILL_5__349_ gnd vdd FILL
XFILL_3__320_ gnd vdd FILL
XFILL_6__464_ gnd vdd FILL
XFILL_8__613_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_2__434_ gnd vdd FILL
XFILL_5__578_ gnd vdd FILL
XFILL_7__480_ gnd vdd FILL
XFILL_1__456_ gnd vdd FILL
XFILL_8__422_ gnd vdd FILL
XFILL_6_CLKBUF1_insert0 gnd vdd FILL
XFILL_6_CLKBUF1_insert1 gnd vdd FILL
XFILL_6_CLKBUF1_insert2 gnd vdd FILL
XFILL_6_CLKBUF1_insert3 gnd vdd FILL
XFILL_6_CLKBUF1_insert4 gnd vdd FILL
XFILL_6_CLKBUF1_insert5 gnd vdd FILL
XFILL_5__387_ gnd vdd FILL
XFILL_3__605_ gnd vdd FILL
XFILL_6__329_ gnd vdd FILL
XFILL_7__536_ gnd vdd FILL
XFILL_0__478_ gnd vdd FILL
XFILL_2__472_ gnd vdd FILL
XFILL_3__414_ gnd vdd FILL
XFILL_6__558_ gnd vdd FILL
XFILL_4__621_ gnd vdd FILL
XFILL_7__345_ gnd vdd FILL
XFILL_1__494_ gnd vdd FILL
XFILL_8__460_ gnd vdd FILL
XFILL_2__528_ gnd vdd FILL
XFILL_6__367_ gnd vdd FILL
X_502_ _42_ _46_ _47_ vdd gnd NAND2X1
XFILL_4__430_ gnd vdd FILL
XFILL_7__574_ gnd vdd FILL
XFILL_8__516_ gnd vdd FILL
XFILL_2__337_ gnd vdd FILL
XFILL_3__452_ gnd vdd FILL
XFILL_6__596_ gnd vdd FILL
XFILL_7__383_ gnd vdd FILL
XFILL_1__359_ gnd vdd FILL
XFILL_8__325_ gnd vdd FILL
XFILL_2__566_ gnd vdd FILL
XFILL_3__508_ gnd vdd FILL
XFILL_6_BUFX2_insert20 gnd vdd FILL
XFILL_7__439_ gnd vdd FILL
X_540_ acc_reg[0] _75_ vdd gnd INVX1
XFILL_5__502_ gnd vdd FILL
XFILL_1__588_ gnd vdd FILL
XFILL_2__375_ gnd vdd FILL
XFILL_3__317_ gnd vdd FILL
XFILL_3__490_ gnd vdd FILL
XFILL_4__524_ gnd vdd FILL
XFILL_7__668_ gnd vdd FILL
XFILL_1__397_ gnd vdd FILL
XFILL_8__363_ gnd vdd FILL
XFILL_0__402_ gnd vdd FILL
XFILL_3__546_ gnd vdd FILL
X_405_ acc_reg[15] RdyCtl_6_bF$buf2 En_bF$buf3 _238_ vdd gnd OAI21X1
XFILL_4__333_ gnd vdd FILL
XFILL_7__477_ gnd vdd FILL
XFILL_8__419_ gnd vdd FILL
XFILL_5__540_ gnd vdd FILL
XFILL_3__355_ gnd vdd FILL
XFILL_6__499_ gnd vdd FILL
X_634_ _8_ clk_bF$buf0 acc_reg[1] vdd gnd DFFPOSX1
XFILL_4__562_ gnd vdd FILL
XFILL_2__469_ gnd vdd FILL
XFILL_0__440_ gnd vdd FILL
XFILL_3__584_ gnd vdd FILL
XFILL_4__618_ gnd vdd FILL
X_443_ _268_ _250_ _266_ _273_ vdd gnd AOI21X1
XFILL_4__371_ gnd vdd FILL
XFILL_5__405_ gnd vdd FILL
XFILL_8__457_ gnd vdd FILL
XFILL_6__520_ gnd vdd FILL
XFILL_3__393_ gnd vdd FILL
XFILL_4__427_ gnd vdd FILL
XFILL_3__449_ gnd vdd FILL
XFILL_1__512_ gnd vdd FILL
X_481_ acc_reg[13] _73__bF$buf4 En_bF$buf4 _304_ vdd gnd OAI21X1
XFILL_5__443_ gnd vdd FILL
XFILL_8__495_ gnd vdd FILL
XFILL_0__534_ gnd vdd FILL
X_537_ _42_ _74_ _4_ vdd gnd NOR2X1
XFILL75450x54150 gnd vdd FILL
XFILL_1__321_ gnd vdd FILL
XFILL_4__465_ gnd vdd FILL
XFILL_6__614_ gnd vdd FILL
XFILL74250x36150 gnd vdd FILL
XFILL_7__401_ gnd vdd FILL
XFILL_0__343_ gnd vdd FILL
XFILL_3__487_ gnd vdd FILL
X_346_ _182_ _183_ _184_ vdd gnd NAND2X1
XFILL_1__550_ gnd vdd FILL
XFILL_5__481_ gnd vdd FILL
XFILL_6__423_ gnd vdd FILL
XFILL73950x18150 gnd vdd FILL
XFILL_0__572_ gnd vdd FILL
XFILL_1__606_ gnd vdd FILL
X_575_ _105_ _89_ _97_ _106_ vdd gnd AOI21X1
XFILL_5__537_ gnd vdd FILL
XFILL_8__589_ gnd vdd FILL
XFILL_0__381_ gnd vdd FILL
XFILL_1__415_ gnd vdd FILL
XFILL_4__559_ gnd vdd FILL
X_384_ acc_reg[13] FCW[13] _218_ vdd gnd NOR2X1
XFILL_2__622_ gnd vdd FILL
XFILL_5__346_ gnd vdd FILL
XFILL_8__398_ gnd vdd FILL
XFILL_6__461_ gnd vdd FILL
XFILL_0__437_ gnd vdd FILL
XFILL_8__610_ gnd vdd FILL
XFILL_4__368_ gnd vdd FILL
XFILL_2__431_ gnd vdd FILL
XFILL_5__575_ gnd vdd FILL
XFILL_6__517_ gnd vdd FILL
XFILL_0__666_ gnd vdd FILL
XFILL_1__453_ gnd vdd FILL
XFILL_4__597_ gnd vdd FILL
XFILL_5__384_ gnd vdd FILL
XFILL_3__602_ gnd vdd FILL
XFILL_6__326_ gnd vdd FILL
XFILL_7__533_ gnd vdd FILL
XFILL_0__475_ gnd vdd FILL
XFILL_1__509_ gnd vdd FILL
X_478_ _62_ _73__bF$buf3 _302_ _30_ vdd gnd AOI21X1
XFILL_3__411_ gnd vdd FILL
XFILL_6__555_ gnd vdd FILL
XFILL_7__342_ gnd vdd FILL
XFILL_1__318_ gnd vdd FILL
XFILL_1__491_ gnd vdd FILL
XFILL_2__525_ gnd vdd FILL
XFILL_6__364_ gnd vdd FILL
XFILL_7__571_ gnd vdd FILL
XFILL_1__547_ gnd vdd FILL
XFILL_8__513_ gnd vdd FILL
XFILL_2__334_ gnd vdd FILL
XFILL_5__478_ gnd vdd FILL
XFILL_6__593_ gnd vdd FILL
XFILL_0__569_ gnd vdd FILL
XFILL_7__380_ gnd vdd FILL
XFILL_1__356_ gnd vdd FILL
XFILL_8__322_ gnd vdd FILL
XFILL_2__563_ gnd vdd FILL
XFILL_3__505_ gnd vdd FILL
XFILL_7__436_ gnd vdd FILL
XFILL_0__378_ gnd vdd FILL
XFILL_1__585_ gnd vdd FILL
XFILL_8__551_ gnd vdd FILL
XFILL_2__619_ gnd vdd FILL
XFILL_2__372_ gnd vdd FILL
XFILL_3__314_ gnd vdd FILL
XFILL_6__458_ gnd vdd FILL
XFILL_4__521_ gnd vdd FILL
XFILL_7__665_ gnd vdd FILL
XFILL_8__607_ gnd vdd FILL
XFILL_1__394_ gnd vdd FILL
XFILL_8__360_ gnd vdd FILL
XFILL_2__428_ gnd vdd FILL
XFILL_3__543_ gnd vdd FILL
X_402_ _231_ _235_ vdd gnd INVX1
XFILL_4__330_ gnd vdd FILL
XFILL_7__474_ gnd vdd FILL
XFILL_8__416_ gnd vdd FILL
XFILL_3__352_ gnd vdd FILL
XFILL_6__496_ gnd vdd FILL
X_631_ _5_ clk_bF$buf1 RdyCtl[5] vdd gnd DFFPOSX1
XFILL_2__466_ gnd vdd FILL
XFILL_3__408_ gnd vdd FILL
XFILL_3__581_ gnd vdd FILL
XFILL_4__615_ gnd vdd FILL
XFILL_7__339_ gnd vdd FILL
X_440_ acc_reg[17] RdyCtl_6_bF$buf3 En_bF$buf2 _271_ vdd gnd OAI21X1
XFILL_5__402_ gnd vdd FILL
XFILL_1__488_ gnd vdd FILL
XFILL_8__454_ gnd vdd FILL
XFILL_3__390_ gnd vdd FILL
XFILL_4__424_ gnd vdd FILL
XFILL_7__568_ gnd vdd FILL
XFILL_3__446_ gnd vdd FILL
XFILL_7__377_ gnd vdd FILL
XFILL_8__319_ gnd vdd FILL
XFILL_5__440_ gnd vdd FILL
XFILL_8__492_ gnd vdd FILL
XFILL_0__531_ gnd vdd FILL
XFILL_6__399_ gnd vdd FILL
X_534_ RdyCtl[0] En_bF$buf2 _1_ vdd gnd AND2X2
XFILL_4__462_ gnd vdd FILL
XFILL_8__548_ gnd vdd FILL
XFILL_6__611_ gnd vdd FILL
XFILL_2__369_ gnd vdd FILL
XFILL_0__340_ gnd vdd FILL
XFILL_3__484_ gnd vdd FILL
XFILL_4__518_ gnd vdd FILL
X_343_ _180_ _179_ _181_ vdd gnd NOR2X1
XFILL74250x57750 gnd vdd FILL
XFILL_6__420_ gnd vdd FILL
XFILL_2__598_ gnd vdd FILL
XFILL_1__603_ gnd vdd FILL
XFILL_4__327_ gnd vdd FILL
X_572_ _103_ RdyCtl_6_bF$buf4 _96_ _10_ vdd gnd AOI21X1
XFILL_5__534_ gnd vdd FILL
XFILL73950x39750 gnd vdd FILL
XFILL_8__586_ gnd vdd FILL
XFILL_0__625_ gnd vdd FILL
XFILL_3__349_ gnd vdd FILL
X_628_ _2_ clk_bF$buf5 RdyCtl[2] vdd gnd DFFPOSX1
XFILL_1__412_ gnd vdd FILL
XFILL_4__556_ gnd vdd FILL
X_381_ acc_reg[13] RdyCtl_6_bF$buf2 En_bF$buf4 _216_ vdd gnd OAI21X1
XFILL_5__343_ gnd vdd FILL
XFILL_0__434_ gnd vdd FILL
XFILL_3__578_ gnd vdd FILL
X_437_ _267_ _266_ _268_ vdd gnd NOR2X1
XFILL_4__365_ gnd vdd FILL
XFILL_5__572_ gnd vdd FILL
XFILL_6__514_ gnd vdd FILL
XFILL74550x10950 gnd vdd FILL
XFILL_3__387_ gnd vdd FILL
X_666_ _311_[1] Aout[1] vdd gnd BUFX2
XFILL_1__450_ gnd vdd FILL
XFILL_4__594_ gnd vdd FILL
XFILL_5__381_ gnd vdd FILL
XFILL_6__323_ gnd vdd FILL
XFILL_7__530_ gnd vdd FILL
XFILL_0__472_ gnd vdd FILL
XFILL_1__506_ gnd vdd FILL
X_475_ acc_reg[10] _73__bF$buf2 En_bF$buf2 _301_ vdd gnd OAI21X1
XFILL_5__437_ gnd vdd FILL
XFILL_6__552_ gnd vdd FILL
XFILL_0__528_ gnd vdd FILL
XFILL_2_BUFX2_insert10 gnd vdd FILL
XFILL_2_BUFX2_insert11 gnd vdd FILL
XFILL_2_BUFX2_insert12 gnd vdd FILL
XFILL_2_BUFX2_insert13 gnd vdd FILL
XFILL_2_BUFX2_insert14 gnd vdd FILL
XFILL_2_BUFX2_insert15 gnd vdd FILL
XFILL_2_BUFX2_insert16 gnd vdd FILL
XFILL_2_BUFX2_insert17 gnd vdd FILL
XFILL_2_BUFX2_insert18 gnd vdd FILL
XFILL_2_BUFX2_insert19 gnd vdd FILL
XFILL_1__315_ gnd vdd FILL
XFILL_4__459_ gnd vdd FILL
XFILL_2__522_ gnd vdd FILL
XFILL_5__666_ gnd vdd FILL
XFILL_6__608_ gnd vdd FILL
XFILL_6__361_ gnd vdd FILL
XFILL_0__337_ gnd vdd FILL
XFILL76050x68550 gnd vdd FILL
XFILL_1__544_ gnd vdd FILL
XFILL_8__510_ gnd vdd FILL
XFILL_2__331_ gnd vdd FILL
XFILL_5__475_ gnd vdd FILL
XFILL_6__417_ gnd vdd FILL
XFILL_6__590_ gnd vdd FILL
XFILL_7__624_ gnd vdd FILL
XFILL_0__566_ gnd vdd FILL
X_569_ _89_ _92_ _101_ vdd gnd NOR2X1
XFILL_1__353_ gnd vdd FILL
XFILL_4__497_ gnd vdd FILL
XFILL_4_CLKBUF1_insert0 gnd vdd FILL
XFILL_4_CLKBUF1_insert1 gnd vdd FILL
XFILL_4_CLKBUF1_insert2 gnd vdd FILL
XFILL_4_CLKBUF1_insert3 gnd vdd FILL
XFILL_4_CLKBUF1_insert4 gnd vdd FILL
XFILL_4_CLKBUF1_insert5 gnd vdd FILL
XFILL_2__560_ gnd vdd FILL
XFILL_3__502_ gnd vdd FILL
XFILL_7__433_ gnd vdd FILL
XFILL_0__375_ gnd vdd FILL
XFILL_1__409_ gnd vdd FILL
X_378_ _211_ _212_ _213_ vdd gnd NAND2X1
XFILL_1__582_ gnd vdd FILL
XFILL_2__616_ gnd vdd FILL
XFILL_6__455_ gnd vdd FILL
XFILL_8__604_ gnd vdd FILL
XFILL_1__391_ gnd vdd FILL
XFILL_2__425_ gnd vdd FILL
XFILL_5__569_ gnd vdd FILL
XFILL_3__540_ gnd vdd FILL
XFILL_7__471_ gnd vdd FILL
XFILL_1__447_ gnd vdd FILL
XFILL_8__413_ gnd vdd FILL
XFILL_5__378_ gnd vdd FILL
XFILL_6__493_ gnd vdd FILL
XFILL_7__527_ gnd vdd FILL
XFILL_0__469_ gnd vdd FILL
XFILL_2__463_ gnd vdd FILL
XFILL_3__405_ gnd vdd FILL
XFILL_6__549_ gnd vdd FILL
XFILL_4__612_ gnd vdd FILL
XFILL_7__336_ gnd vdd FILL
XFILL_1__485_ gnd vdd FILL
XFILL_2__519_ gnd vdd FILL
XFILL_6__358_ gnd vdd FILL
XFILL_4__421_ gnd vdd FILL
XFILL_7__565_ gnd vdd FILL
XFILL_2__328_ gnd vdd FILL
XFILL_3__443_ gnd vdd FILL
XFILL_6__587_ gnd vdd FILL
XFILL_7__374_ gnd vdd FILL
XFILL_8__316_ gnd vdd FILL
XFILL_2__557_ gnd vdd FILL
XFILL73650x50550 gnd vdd FILL
XFILL_6__396_ gnd vdd FILL
X_531_ RdyCtl_6_bF$buf0 _73_ vdd gnd INVX8
XFILL_1__579_ gnd vdd FILL
XFILL_2__366_ gnd vdd FILL
XFILL_3__481_ gnd vdd FILL
XFILL_4__515_ gnd vdd FILL
X_340_ _177_ _156_ _176_ _178_ vdd gnd OAI21X1
XFILL_1__388_ gnd vdd FILL
XFILL_8__354_ gnd vdd FILL
XFILL_2__595_ gnd vdd FILL
XFILL_3__537_ gnd vdd FILL
XFILL_1__600_ gnd vdd FILL
XFILL_4__324_ gnd vdd FILL
XFILL_7__468_ gnd vdd FILL
XFILL_5__531_ gnd vdd FILL
XFILL_0__622_ gnd vdd FILL
XFILL_3__346_ gnd vdd FILL
X_625_ _151_ _108_ _117_ _152_ vdd gnd AOI21X1
XFILL_4__553_ gnd vdd FILL
XFILL_5__340_ gnd vdd FILL
XFILL_8__392_ gnd vdd FILL
XFILL_0__431_ gnd vdd FILL
XFILL_3__575_ gnd vdd FILL
XFILL_4__609_ gnd vdd FILL
X_434_ _249_ _252_ _250_ _265_ vdd gnd AOI21X1
XFILL_4__362_ gnd vdd FILL
XFILL_8__448_ gnd vdd FILL
XFILL_6__511_ gnd vdd FILL
XFILL_3__384_ gnd vdd FILL
XFILL_4__418_ gnd vdd FILL
X_663_ _37_ clk_bF$buf1 Atmp[11] vdd gnd DFFPOSX1
XFILL_4__591_ gnd vdd FILL
XFILL_5__625_ gnd vdd FILL
XFILL_6__320_ gnd vdd FILL
XFILL_2__498_ gnd vdd FILL
XFILL_1__503_ gnd vdd FILL
X_472_ Atmp[1] RdyCtl_6_bF$buf0 _299_ vdd gnd NOR2X1
XFILL_5__434_ gnd vdd FILL
XFILL_8__486_ gnd vdd FILL
XFILL75450x61350 gnd vdd FILL
XFILL75450x28950 gnd vdd FILL
XFILL_0__525_ gnd vdd FILL
X_528_ _67_ _70_ _71_ vdd gnd NAND2X1
XFILL_4__456_ gnd vdd FILL
XFILL_6__605_ gnd vdd FILL
XFILL_0__334_ gnd vdd FILL
XFILL_3__478_ gnd vdd FILL
X_337_ _157_ _174_ _165_ _175_ vdd gnd OAI21X1
XFILL73950x25350 gnd vdd FILL
XFILL_1__541_ gnd vdd FILL
XFILL_5__472_ gnd vdd FILL
XFILL_6__414_ gnd vdd FILL
XFILL_7__621_ gnd vdd FILL
XFILL_0__563_ gnd vdd FILL
X_566_ acc_reg[3] FCW[3] _98_ vdd gnd NOR2X1
XFILL_1__350_ gnd vdd FILL
XFILL_4__494_ gnd vdd FILL
XFILL_5__528_ gnd vdd FILL
XFILL_0__619_ gnd vdd FILL
XFILL_7__430_ gnd vdd FILL
XFILL_0__372_ gnd vdd FILL
XFILL_1__406_ gnd vdd FILL
X_375_ _205_ _209_ _203_ _210_ vdd gnd OAI21X1
XFILL_2__613_ gnd vdd FILL
XFILL_5__337_ gnd vdd FILL
XFILL_8__389_ gnd vdd FILL
XFILL_6__452_ gnd vdd FILL
XFILL_0__428_ gnd vdd FILL
XFILL_4__359_ gnd vdd FILL
XFILL_2__422_ gnd vdd FILL
XFILL_5__566_ gnd vdd FILL
XFILL_6__508_ gnd vdd FILL
XFILL_1__444_ gnd vdd FILL
XFILL_8__410_ gnd vdd FILL
XFILL_4__588_ gnd vdd FILL
XFILL_5__375_ gnd vdd FILL
XFILL_6__317_ gnd vdd FILL
XFILL_6__490_ gnd vdd FILL
XFILL_7__524_ gnd vdd FILL
XFILL_0__466_ gnd vdd FILL
X_469_ Atmp[0] RdyCtl_6_bF$buf0 _297_ vdd gnd NOR2X1
XFILL_4__397_ gnd vdd FILL
XFILL_2__460_ gnd vdd FILL
XFILL_3__402_ gnd vdd FILL
XFILL_6__546_ gnd vdd FILL
XFILL76050x54150 gnd vdd FILL
XFILL_7__333_ gnd vdd FILL
XFILL_1__482_ gnd vdd FILL
XFILL_2__516_ gnd vdd FILL
XFILL75750x36150 gnd vdd FILL
XFILL_6__355_ gnd vdd FILL
XFILL_7__562_ gnd vdd FILL
XFILL_1__538_ gnd vdd FILL
XFILL_8__504_ gnd vdd FILL
XFILL74550x18150 gnd vdd FILL
XFILL_2__325_ gnd vdd FILL
XFILL_5__469_ gnd vdd FILL
XFILL_3__440_ gnd vdd FILL
XFILL_6__584_ gnd vdd FILL
XFILL_7__618_ gnd vdd FILL
XFILL_7__371_ gnd vdd FILL
XFILL_1__347_ gnd vdd FILL
XFILL_8__313_ gnd vdd FILL
XFILL_2__554_ gnd vdd FILL
XFILL_6__393_ gnd vdd FILL
XFILL_7__427_ gnd vdd FILL
XFILL_0__369_ gnd vdd FILL
XFILL_1__576_ gnd vdd FILL
XFILL_8__542_ gnd vdd FILL
XFILL_2__363_ gnd vdd FILL
XFILL_6__449_ gnd vdd FILL
XFILL_4__512_ gnd vdd FILL
XFILL_0__598_ gnd vdd FILL
XFILL_1__385_ gnd vdd FILL
XFILL_8__351_ gnd vdd FILL
XFILL_2__419_ gnd vdd FILL
XFILL_2__592_ gnd vdd FILL
XFILL_3__534_ gnd vdd FILL
XFILL_4__321_ gnd vdd FILL
XFILL_7__465_ gnd vdd FILL
XFILL_8__407_ gnd vdd FILL
XFILL_8__580_ gnd vdd FILL
XFILL_3__343_ gnd vdd FILL
XFILL_6__487_ gnd vdd FILL
X_622_ _129_ _130_ _148_ _149_ vdd gnd NAND3X1
XFILL_4__550_ gnd vdd FILL
XFILL_2__457_ gnd vdd FILL
XFILL_3__572_ gnd vdd FILL
XFILL_4__606_ gnd vdd FILL
X_431_ _262_ _253_ _263_ vdd gnd NAND2X1
XFILL_1__479_ gnd vdd FILL
XFILL_8__445_ gnd vdd FILL
XFILL_3__381_ gnd vdd FILL
XFILL_4__415_ gnd vdd FILL
XFILL_7__559_ gnd vdd FILL
X_660_ _34_ clk_bF$buf1 Atmp[7] vdd gnd DFFPOSX1
XFILL_5__622_ gnd vdd FILL
XFILL_2__495_ gnd vdd FILL
XFILL_3__437_ gnd vdd FILL
XFILL_1__500_ gnd vdd FILL
XFILL_7__368_ gnd vdd FILL
XFILL_5__431_ gnd vdd FILL
XFILL_8__483_ gnd vdd FILL
XFILL_0__522_ gnd vdd FILL
XFILL_3__666_ gnd vdd FILL
X_525_ acc_reg[18] _68_ vdd gnd INVX1
XFILL_4__453_ gnd vdd FILL
XFILL_7__597_ gnd vdd FILL
XFILL_8__539_ gnd vdd FILL
XFILL_6__602_ gnd vdd FILL
XFILL_0__331_ gnd vdd FILL
XFILL_3__475_ gnd vdd FILL
XFILL_4__509_ gnd vdd FILL
X_334_ acc_reg[9] RdyCtl_6_bF$buf0 En_bF$buf0 _173_ vdd gnd OAI21X1
XFILL_6__411_ gnd vdd FILL
XFILL_2__589_ gnd vdd FILL
XFILL_0__560_ gnd vdd FILL
XFILL_4__318_ gnd vdd FILL
X_563_ _94_ _95_ _74_ _9_ vdd gnd AOI21X1
XFILL_4__491_ gnd vdd FILL
XFILL_5__525_ gnd vdd FILL
XFILL_8__577_ gnd vdd FILL
XFILL_2__398_ gnd vdd FILL
XFILL_0__616_ gnd vdd FILL
X_619_ acc_reg[7] FCW[7] _146_ vdd gnd AND2X2
XFILL_1__403_ gnd vdd FILL
XFILL_4__547_ gnd vdd FILL
X_372_ _206_ _207_ RdyCtl_6_bF$buf2 _208_ vdd gnd OAI21X1
XFILL_2__610_ gnd vdd FILL
XFILL_5__334_ gnd vdd FILL
XFILL_8__386_ gnd vdd FILL
XFILL_0__425_ gnd vdd FILL
XFILL_3__569_ gnd vdd FILL
X_428_ _240_ _201_ _259_ _260_ vdd gnd OAI21X1
XFILL_4__356_ gnd vdd FILL
XFILL_5__563_ gnd vdd FILL
XFILL_6__505_ gnd vdd FILL
XFILL_3__378_ gnd vdd FILL
X_657_ _31_ clk_bF$buf2 Atmp[4] vdd gnd DFFPOSX1
XFILL_1__441_ gnd vdd FILL
XFILL_4__585_ gnd vdd FILL
XFILL_5__619_ gnd vdd FILL
XFILL75450x14550 gnd vdd FILL
XFILL_3_BUFX2_insert20 gnd vdd FILL
XFILL_5__372_ gnd vdd FILL
XFILL_6__314_ gnd vdd FILL
XFILL_7__521_ gnd vdd FILL
XFILL_0__463_ gnd vdd FILL
X_466_ _292_ _295_ vdd gnd INVX1
XFILL_2_CLKBUF1_insert0 gnd vdd FILL
XFILL_2_CLKBUF1_insert1 gnd vdd FILL
XFILL_2_CLKBUF1_insert2 gnd vdd FILL
XFILL_2_CLKBUF1_insert3 gnd vdd FILL
XFILL_2_CLKBUF1_insert4 gnd vdd FILL
XFILL_2_CLKBUF1_insert5 gnd vdd FILL
XFILL_4__394_ gnd vdd FILL
XFILL_5__428_ gnd vdd FILL
XFILL_6__543_ gnd vdd FILL
XFILL_0__519_ gnd vdd FILL
XFILL_7__330_ gnd vdd FILL
XFILL_2__513_ gnd vdd FILL
XFILL_6__352_ gnd vdd FILL
XFILL_0__328_ gnd vdd FILL
XFILL_1__535_ gnd vdd FILL
XFILL_8__501_ gnd vdd FILL
XFILL75750x57750 gnd vdd FILL
XFILL_2__322_ gnd vdd FILL
XFILL_5__466_ gnd vdd FILL
XFILL_6__408_ gnd vdd FILL
XFILL_6__581_ gnd vdd FILL
XFILL_7__615_ gnd vdd FILL
XFILL_0__557_ gnd vdd FILL
XFILL74550x39750 gnd vdd FILL
XFILL_1__344_ gnd vdd FILL
XFILL_4__488_ gnd vdd FILL
XFILL_2__551_ gnd vdd FILL
XFILL_6__390_ gnd vdd FILL
XFILL_7__424_ gnd vdd FILL
XFILL_0__366_ gnd vdd FILL
X_369_ _203_ _204_ _205_ vdd gnd NAND2X1
XFILL_1__573_ gnd vdd FILL
XFILL_2__607_ gnd vdd FILL
XFILL_2__360_ gnd vdd FILL
XFILL_6__446_ gnd vdd FILL
XFILL_8_BUFX2_insert20 gnd vdd FILL
XFILL_0__595_ gnd vdd FILL
X_598_ _112_ _119_ _127_ vdd gnd AND2X2
XFILL_1__382_ gnd vdd FILL
XFILL_2__416_ gnd vdd FILL
XFILL_3__531_ gnd vdd FILL
XFILL_7__462_ gnd vdd FILL
XFILL_1__438_ gnd vdd FILL
XFILL_5__369_ gnd vdd FILL
XFILL_3__340_ gnd vdd FILL
XFILL_6__484_ gnd vdd FILL
XFILL_7__518_ gnd vdd FILL
XFILL_1__667_ gnd vdd FILL
XFILL_2__454_ gnd vdd FILL
XFILL_5__598_ gnd vdd FILL
XFILL_4__603_ gnd vdd FILL
XFILL_7__327_ gnd vdd FILL
XFILL_1__476_ gnd vdd FILL
XFILL_3__625_ gnd vdd FILL
XFILL_6__349_ gnd vdd FILL
XFILL_4__412_ gnd vdd FILL
XFILL_7__556_ gnd vdd FILL
XFILL_0__498_ gnd vdd FILL
XFILL_2__319_ gnd vdd FILL
XFILL_2__492_ gnd vdd FILL
XFILL_3__434_ gnd vdd FILL
XFILL_6__578_ gnd vdd FILL
XFILL_7__365_ gnd vdd FILL
XFILL_8__480_ gnd vdd FILL
XFILL_2__548_ gnd vdd FILL
XFILL_6__387_ gnd vdd FILL
X_522_ RdyCtl[0] _64_ _65_ _311_[1] vdd gnd OAI21X1
XFILL_4__450_ gnd vdd FILL
XFILL_7__594_ gnd vdd FILL
XFILL_2__357_ gnd vdd FILL
XFILL_3__472_ gnd vdd FILL
XFILL_4__506_ gnd vdd FILL
X_331_ _169_ _164_ _170_ vdd gnd NAND2X1
XFILL_1__379_ gnd vdd FILL
XFILL_8__345_ gnd vdd FILL
XFILL_2__586_ gnd vdd FILL
XFILL_3__528_ gnd vdd FILL
XFILL_4__315_ gnd vdd FILL
XFILL_7__459_ gnd vdd FILL
X_560_ _73__bF$buf0 _92_ _93_ vdd gnd NOR2X1
XFILL_5__522_ gnd vdd FILL
XFILL_8__574_ gnd vdd FILL
XFILL_2__395_ gnd vdd FILL
XFILL_0__613_ gnd vdd FILL
XFILL_3__337_ gnd vdd FILL
X_616_ acc_reg[7] RdyCtl_6_bF$buf0 En_bF$buf0 _144_ vdd gnd OAI21X1
XFILL_1__400_ gnd vdd FILL
XFILL_4__544_ gnd vdd FILL
XFILL_5__331_ gnd vdd FILL
XFILL_8__383_ gnd vdd FILL
XFILL_0__422_ gnd vdd FILL
XFILL_3__566_ gnd vdd FILL
X_425_ _255_ _107_ _256_ _257_ vdd gnd OAI21X1
XFILL_4__353_ gnd vdd FILL
XFILL_7__497_ gnd vdd FILL
XFILL_8__439_ gnd vdd FILL
XFILL_5__560_ gnd vdd FILL
XFILL_6__502_ gnd vdd FILL
XFILL_3__375_ gnd vdd FILL
XFILL_4__409_ gnd vdd FILL
X_654_ _28_ clk_bF$buf4 Atmp[1] vdd gnd DFFPOSX1
XFILL_4__582_ gnd vdd FILL
XFILL_5__616_ gnd vdd FILL
XFILL_2__489_ gnd vdd FILL
XFILL_0__460_ gnd vdd FILL
X_463_ _290_ _291_ _292_ vdd gnd NAND2X1
XFILL_4__391_ gnd vdd FILL
XFILL_5__425_ gnd vdd FILL
XFILL_8__477_ gnd vdd FILL
XFILL74250x50550 gnd vdd FILL
XFILL_6__540_ gnd vdd FILL
XFILL_0__516_ gnd vdd FILL
X_519_ RdyCtl[1] _62_ _63_ vdd gnd NAND2X1
XFILL_4__447_ gnd vdd FILL
XFILL_2__510_ gnd vdd FILL
XFILL_0__325_ gnd vdd FILL
XFILL_3__469_ gnd vdd FILL
X_328_ FCW[9] _167_ vdd gnd INVX1
XFILL_1__532_ gnd vdd FILL
XFILL_5__463_ gnd vdd FILL
XFILL_6__405_ gnd vdd FILL
XFILL_7__612_ gnd vdd FILL
XFILL_0__554_ gnd vdd FILL
X_557_ acc_reg[2] FCW[2] _90_ vdd gnd NOR2X1
XFILL_1__341_ gnd vdd FILL
XFILL_4__485_ gnd vdd FILL
XFILL_5__519_ gnd vdd FILL
XFILL_7__421_ gnd vdd FILL
XFILL_0__363_ gnd vdd FILL
X_366_ _197_ _156_ _201_ _202_ vdd gnd OAI21X1
XFILL_1__570_ gnd vdd FILL
XFILL_2__604_ gnd vdd FILL
XFILL_5__328_ gnd vdd FILL
XFILL75750x7350 gnd vdd FILL
XFILL_6__443_ gnd vdd FILL
XFILL_0__419_ gnd vdd FILL
XFILL_0__592_ gnd vdd FILL
X_595_ _108_ _124_ vdd gnd INVX1
XFILL_2__413_ gnd vdd FILL
XFILL_5__557_ gnd vdd FILL
XFILL_1__435_ gnd vdd FILL
XFILL_8__401_ gnd vdd FILL
XFILL_4__579_ gnd vdd FILL
XFILL_5__366_ gnd vdd FILL
XFILL_6__481_ gnd vdd FILL
XFILL_7__515_ gnd vdd FILL
XFILL_0__457_ gnd vdd FILL
XFILL76050x61350 gnd vdd FILL
XFILL_4__388_ gnd vdd FILL
XFILL76050x28950 gnd vdd FILL
XFILL_2__451_ gnd vdd FILL
XFILL_5__595_ gnd vdd FILL
XFILL_6__537_ gnd vdd FILL
XFILL_4__600_ gnd vdd FILL
XFILL_7__324_ gnd vdd FILL
XFILL75750x43350 gnd vdd FILL
XFILL_1__473_ gnd vdd FILL
XFILL_2__507_ gnd vdd FILL
XFILL_3__622_ gnd vdd FILL
XFILL_6__346_ gnd vdd FILL
XFILL74550x25350 gnd vdd FILL
XFILL_7__553_ gnd vdd FILL
XFILL_0__495_ gnd vdd FILL
XFILL_1__529_ gnd vdd FILL
X_498_ Atmp[8] _43_ vdd gnd INVX1
XFILL_2__316_ gnd vdd FILL
XFILL_3__431_ gnd vdd FILL
XFILL_6__575_ gnd vdd FILL
XFILL_7__609_ gnd vdd FILL
XFILL_7__362_ gnd vdd FILL
XFILL_1__338_ gnd vdd FILL
XFILL_2__545_ gnd vdd FILL
XFILL_6__384_ gnd vdd FILL
XFILL_7__418_ gnd vdd FILL
XFILL_7__591_ gnd vdd FILL
XFILL_1__567_ gnd vdd FILL
XFILL_8__533_ gnd vdd FILL
XFILL_2__354_ gnd vdd FILL
XFILL_5__498_ gnd vdd FILL
XFILL74850x68550 gnd vdd FILL
XFILL_4__503_ gnd vdd FILL
XFILL_0__589_ gnd vdd FILL
XFILL_1__376_ gnd vdd FILL
XFILL_8__342_ gnd vdd FILL
XFILL_2__583_ gnd vdd FILL
XFILL_3__525_ gnd vdd FILL
XFILL_7__456_ gnd vdd FILL
XFILL_0__398_ gnd vdd FILL
XFILL_8__571_ gnd vdd FILL
XFILL_2__392_ gnd vdd FILL
XFILL_0__610_ gnd vdd FILL
XFILL_3__334_ gnd vdd FILL
XFILL_6__478_ gnd vdd FILL
X_613_ _139_ _140_ _141_ vdd gnd NAND2X1
XFILL_4__541_ gnd vdd FILL
XFILL_8__380_ gnd vdd FILL
XFILL_2__448_ gnd vdd FILL
XFILL_3__563_ gnd vdd FILL
X_422_ _141_ _131_ _254_ vdd gnd NOR2X1
XFILL_4__350_ gnd vdd FILL
XFILL_7__494_ gnd vdd FILL
XFILL_8__436_ gnd vdd FILL
XFILL_3__619_ gnd vdd FILL
XFILL_3__372_ gnd vdd FILL
XFILL_4__406_ gnd vdd FILL
X_651_ _25_ clk_bF$buf2 acc_reg[18] vdd gnd DFFPOSX1
XFILL_5__613_ gnd vdd FILL
XFILL_8__665_ gnd vdd FILL
XFILL_2__486_ gnd vdd FILL
XFILL_3__428_ gnd vdd FILL
XFILL_7__359_ gnd vdd FILL
X_460_ _277_ _282_ _288_ _289_ vdd gnd OAI21X1
XFILL_5__422_ gnd vdd FILL
XFILL_8__474_ gnd vdd FILL
XFILL_0__513_ gnd vdd FILL
X_516_ RdyCtl[3] _57_ _59_ _60_ vdd gnd OAI21X1
XFILL_4__444_ gnd vdd FILL
XFILL_7__588_ gnd vdd FILL
XFILL_0__322_ gnd vdd FILL
XFILL_3__466_ gnd vdd FILL
XFILL_4_BUFX2_insert10 gnd vdd FILL
XFILL_4_BUFX2_insert11 gnd vdd FILL
X_325_ _159_ _156_ _157_ _164_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert12 gnd vdd FILL
XFILL_4_BUFX2_insert13 gnd vdd FILL
XFILL_4_BUFX2_insert14 gnd vdd FILL
XFILL_4_BUFX2_insert15 gnd vdd FILL
XFILL_4_BUFX2_insert16 gnd vdd FILL
XFILL_4_BUFX2_insert17 gnd vdd FILL
XFILL_4_BUFX2_insert18 gnd vdd FILL
XFILL_4_BUFX2_insert19 gnd vdd FILL
XFILL_7__397_ gnd vdd FILL
XFILL_8__339_ gnd vdd FILL
XFILL75150x68550 gnd vdd FILL
XFILL_5__460_ gnd vdd FILL
XFILL_6__402_ gnd vdd FILL
XFILL_0__551_ gnd vdd FILL
X_554_ _86_ RdyCtl_6_bF$buf1 _87_ _8_ vdd gnd AOI21X1
XFILL_4__482_ gnd vdd FILL
XFILL_5__516_ gnd vdd FILL
XFILL_2__389_ gnd vdd FILL
XFILL_0__607_ gnd vdd FILL
XFILL_0__360_ gnd vdd FILL
XFILL_0_CLKBUF1_insert0 gnd vdd FILL
XFILL_0_CLKBUF1_insert1 gnd vdd FILL
XFILL_0_CLKBUF1_insert2 gnd vdd FILL
XFILL_0_CLKBUF1_insert3 gnd vdd FILL
XFILL_0_CLKBUF1_insert4 gnd vdd FILL
XFILL_0_CLKBUF1_insert5 gnd vdd FILL
XFILL_4__538_ gnd vdd FILL
X_363_ _189_ _199_ vdd gnd INVX1
XFILL_2__601_ gnd vdd FILL
XFILL_5__325_ gnd vdd FILL
XFILL_8__377_ gnd vdd FILL
XFILL_6__440_ gnd vdd FILL
XFILL_0__416_ gnd vdd FILL
X_419_ acc_reg[16] FCW[16] _251_ vdd gnd NOR2X1
XFILL_1__623_ gnd vdd FILL
XFILL_4__347_ gnd vdd FILL
X_592_ _73__bF$buf3 _121_ _122_ vdd gnd NOR2X1
XFILL_2__410_ gnd vdd FILL
XFILL_5__554_ gnd vdd FILL
XFILL75450x21750 gnd vdd FILL
XFILL_3__369_ gnd vdd FILL
X_648_ _22_ clk_bF$buf0 acc_reg[15] vdd gnd DFFPOSX1
XFILL_1__432_ gnd vdd FILL
XFILL_4__576_ gnd vdd FILL
XFILL_5__363_ gnd vdd FILL
XFILL_7__512_ gnd vdd FILL
XFILL_0__454_ gnd vdd FILL
XFILL_3__598_ gnd vdd FILL
X_457_ _0_ _286_ vdd gnd INVX1
XFILL_4__385_ gnd vdd FILL
XFILL_5__419_ gnd vdd FILL
XFILL_5__592_ gnd vdd FILL
XFILL_6__534_ gnd vdd FILL
XFILL_7__321_ gnd vdd FILL
XFILL_1__470_ gnd vdd FILL
XFILL_2__504_ gnd vdd FILL
XFILL75750x64950 gnd vdd FILL
XFILL_6__343_ gnd vdd FILL
XFILL_0__319_ gnd vdd FILL
XFILL_7__550_ gnd vdd FILL
XFILL_0__492_ gnd vdd FILL
XFILL_1__526_ gnd vdd FILL
X_495_ RdyCtl[2] _40_ vdd gnd INVX1
XFILL_2__313_ gnd vdd FILL
XFILL_5__457_ gnd vdd FILL
XFILL_6__572_ gnd vdd FILL
XFILL_7__606_ gnd vdd FILL
XFILL_0__548_ gnd vdd FILL
XFILL_1__335_ gnd vdd FILL
XFILL_4__479_ gnd vdd FILL
XFILL_2__542_ gnd vdd FILL
XFILL_6__381_ gnd vdd FILL
XFILL_7__415_ gnd vdd FILL
XFILL_0__357_ gnd vdd FILL
XFILL_1__564_ gnd vdd FILL
XFILL_8__530_ gnd vdd FILL
XFILL_2__351_ gnd vdd FILL
XFILL_5__495_ gnd vdd FILL
XFILL_6__437_ gnd vdd FILL
XFILL_4__500_ gnd vdd FILL
XFILL_0__586_ gnd vdd FILL
X_589_ _118_ _117_ _119_ vdd gnd NOR2X1
XFILL_1__373_ gnd vdd FILL
XFILL_2__407_ gnd vdd FILL
XFILL_2__580_ gnd vdd FILL
XFILL_3__522_ gnd vdd FILL
XFILL_6__666_ gnd vdd FILL
XFILL76050x14550 gnd vdd FILL
XFILL_7__453_ gnd vdd FILL
XFILL_0__395_ gnd vdd FILL
XFILL_1__429_ gnd vdd FILL
X_398_ acc_reg[15] FCW[15] _231_ vdd gnd NOR2X1
XFILL_3__331_ gnd vdd FILL
XFILL_6__475_ gnd vdd FILL
XFILL_7__509_ gnd vdd FILL
X_610_ _134_ _128_ _129_ _138_ vdd gnd OAI21X1
XFILL_8__624_ gnd vdd FILL
XFILL_2__445_ gnd vdd FILL
XFILL_5__589_ gnd vdd FILL
XFILL_3__560_ gnd vdd FILL
XFILL_7__318_ gnd vdd FILL
XFILL_7__491_ gnd vdd FILL
XFILL_1__467_ gnd vdd FILL
XFILL_8__433_ gnd vdd FILL
XFILL_5__398_ gnd vdd FILL
XFILL_3__616_ gnd vdd FILL
XFILL_8_BUFX2_insert7 gnd vdd FILL
XFILL_8_BUFX2_insert8 gnd vdd FILL
XFILL_8_BUFX2_insert9 gnd vdd FILL
XFILL_4__403_ gnd vdd FILL
XFILL_7__547_ gnd vdd FILL
XFILL_0__489_ gnd vdd FILL
XFILL_5__610_ gnd vdd FILL
XFILL_2__483_ gnd vdd FILL
XFILL_3__425_ gnd vdd FILL
XFILL_6__569_ gnd vdd FILL
XFILL_7__356_ gnd vdd FILL
XFILL_8__471_ gnd vdd FILL
XFILL_2__539_ gnd vdd FILL
XFILL74850x54150 gnd vdd FILL
XFILL_0__510_ gnd vdd FILL
XFILL_6__378_ gnd vdd FILL
X_513_ _44_ _56_ _45_ _57_ vdd gnd OAI21X1
XFILL_4__441_ gnd vdd FILL
XFILL_7__585_ gnd vdd FILL
XFILL_8__527_ gnd vdd FILL
XFILL_2__348_ gnd vdd FILL
XFILL_3__463_ gnd vdd FILL
X_322_ _161_ _160_ _162_ vdd gnd NAND2X1
XFILL_7__394_ gnd vdd FILL
XFILL_8__336_ gnd vdd FILL
XFILL_2__577_ gnd vdd FILL
XFILL_3__519_ gnd vdd FILL
X_551_ _84_ _85_ vdd gnd INVX1
XFILL_5__513_ gnd vdd FILL
XFILL_1__599_ gnd vdd FILL
XFILL_8__565_ gnd vdd FILL
XFILL_2__386_ gnd vdd FILL
XFILL_0__604_ gnd vdd FILL
XFILL_3__328_ gnd vdd FILL
X_607_ _135_ _132_ _136_ vdd gnd NAND2X1
XFILL_4__535_ gnd vdd FILL
X_360_ _159_ _169_ _196_ vdd gnd NOR2X1
XFILL_5__322_ gnd vdd FILL
XFILL_8__374_ gnd vdd FILL
XFILL_0__413_ gnd vdd FILL
XFILL_3__557_ gnd vdd FILL
X_416_ _244_ _242_ _247_ _248_ vdd gnd AOI21X1
XFILL_1__620_ gnd vdd FILL
XFILL_4__344_ gnd vdd FILL
XFILL_7__488_ gnd vdd FILL
XFILL_5__551_ gnd vdd FILL
XFILL_3__366_ gnd vdd FILL
X_645_ _19_ clk_bF$buf2 acc_reg[12] vdd gnd DFFPOSX1
XFILL_4__573_ gnd vdd FILL
XFILL_5__607_ gnd vdd FILL
XFILL_5__360_ gnd vdd FILL
XFILL_0__451_ gnd vdd FILL
XFILL_3__595_ gnd vdd FILL
X_454_ _279_ _283_ _284_ vdd gnd NAND2X1
XFILL_4__382_ gnd vdd FILL
XFILL_5__416_ gnd vdd FILL
XFILL_8__468_ gnd vdd FILL
XFILL_6__531_ gnd vdd FILL
XFILL_0__507_ gnd vdd FILL
XFILL75150x54150 gnd vdd FILL
XFILL_4__438_ gnd vdd FILL
XFILL_2__501_ gnd vdd FILL
XFILL_6__340_ gnd vdd FILL
XFILL_0__316_ gnd vdd FILL
X_319_ _157_ _158_ _159_ vdd gnd NAND2X1
XFILL_1__523_ gnd vdd FILL
XFILL_4__667_ gnd vdd FILL
X_492_ acc_reg[18] _73__bF$buf4 En_bF$buf4 _310_ vdd gnd OAI21X1
XFILL_5__454_ gnd vdd FILL
XFILL73650x18150 gnd vdd FILL
XFILL_7__603_ gnd vdd FILL
XFILL_0__545_ gnd vdd FILL
X_548_ _81_ _80_ _78_ _82_ vdd gnd OAI21X1
XFILL_1__332_ gnd vdd FILL
XFILL_4__476_ gnd vdd FILL
XFILL_6__625_ gnd vdd FILL
XFILL_7__412_ gnd vdd FILL
XFILL_0__354_ gnd vdd FILL
XFILL_3__498_ gnd vdd FILL
X_357_ acc_reg[11] RdyCtl_6_bF$buf3 En_bF$buf2 _194_ vdd gnd OAI21X1
XFILL_1__561_ gnd vdd FILL
XFILL_5__319_ gnd vdd FILL
XFILL_5__492_ gnd vdd FILL
XFILL_6__434_ gnd vdd FILL
XFILL_0__583_ gnd vdd FILL
XFILL_1__617_ gnd vdd FILL
X_586_ _111_ _112_ _108_ _116_ vdd gnd AOI21X1
XFILL_1__370_ gnd vdd FILL
XFILL_2__404_ gnd vdd FILL
XFILL_5__548_ gnd vdd FILL
XFILL_7__450_ gnd vdd FILL
XFILL_0__392_ gnd vdd FILL
XFILL_1__426_ gnd vdd FILL
X_395_ acc_reg[14] FCW[14] _228_ vdd gnd NAND2X1
XFILL_5__357_ gnd vdd FILL
XFILL_6__472_ gnd vdd FILL
XFILL_7__506_ gnd vdd FILL
XFILL_0__448_ gnd vdd FILL
XFILL_8__621_ gnd vdd FILL
XFILL_4__379_ gnd vdd FILL
XFILL75750x50550 gnd vdd FILL
XFILL_2__442_ gnd vdd FILL
XFILL_5__586_ gnd vdd FILL
XFILL_6__528_ gnd vdd FILL
XFILL_7__315_ gnd vdd FILL
XFILL_1__464_ gnd vdd FILL
XFILL_8__430_ gnd vdd FILL
XFILL_5__395_ gnd vdd FILL
XFILL_3__613_ gnd vdd FILL
XFILL_6__337_ gnd vdd FILL
XFILL_4__400_ gnd vdd FILL
XFILL_7__544_ gnd vdd FILL
XFILL_0__486_ gnd vdd FILL
X_489_ acc_reg[17] _73__bF$buf3 En_bF$buf2 _308_ vdd gnd OAI21X1
XFILL_2__480_ gnd vdd FILL
XFILL_3__422_ gnd vdd FILL
XFILL_6__566_ gnd vdd FILL
XFILL_7__353_ gnd vdd FILL
XFILL_1__329_ gnd vdd FILL
XFILL_2__536_ gnd vdd FILL
XFILL_6__375_ gnd vdd FILL
XFILL_7__409_ gnd vdd FILL
X_510_ RdyCtl[0] _53_ _54_ _311_[0] vdd gnd OAI21X1
XFILL_7__582_ gnd vdd FILL
XFILL_1__558_ gnd vdd FILL
XFILL_8__524_ gnd vdd FILL
XFILL_2__345_ gnd vdd FILL
XFILL_5__489_ gnd vdd FILL
XFILL_3__460_ gnd vdd FILL
XBUFX2_insert10 RdyCtl[6] RdyCtl_6_bF$buf0 vdd gnd BUFX2
XBUFX2_insert11 En En_bF$buf4 vdd gnd BUFX2
XBUFX2_insert12 En En_bF$buf3 vdd gnd BUFX2
XBUFX2_insert13 En En_bF$buf2 vdd gnd BUFX2
XBUFX2_insert14 En En_bF$buf1 vdd gnd BUFX2
XBUFX2_insert15 En En_bF$buf0 vdd gnd BUFX2
XBUFX2_insert16 _73_ _73__bF$buf4 vdd gnd BUFX2
XFILL_7__391_ gnd vdd FILL
XBUFX2_insert17 _73_ _73__bF$buf3 vdd gnd BUFX2
XBUFX2_insert18 _73_ _73__bF$buf2 vdd gnd BUFX2
XBUFX2_insert19 _73_ _73__bF$buf1 vdd gnd BUFX2
XFILL_1__367_ gnd vdd FILL
XFILL_8__333_ gnd vdd FILL
XFILL_2__574_ gnd vdd FILL
XFILL_3__516_ gnd vdd FILL
XFILL_7__447_ gnd vdd FILL
XFILL_0__389_ gnd vdd FILL
XFILL_5__510_ gnd vdd FILL
XFILL_1__596_ gnd vdd FILL
XFILL_8__562_ gnd vdd FILL
XFILL75150x7350 gnd vdd FILL
XFILL_2__383_ gnd vdd FILL
XFILL_0__601_ gnd vdd FILL
XFILL_3__325_ gnd vdd FILL
XFILL_6__469_ gnd vdd FILL
X_604_ _129_ _133_ vdd gnd INVX1
XFILL_4__532_ gnd vdd FILL
XFILL_8__618_ gnd vdd FILL
XFILL_2__439_ gnd vdd FILL
XFILL_0__410_ gnd vdd FILL
XFILL_3__554_ gnd vdd FILL
X_413_ _219_ _239_ _232_ _245_ vdd gnd NAND3X1
XFILL_4__341_ gnd vdd FILL
XFILL_7__485_ gnd vdd FILL
XFILL_8__427_ gnd vdd FILL
XFILL_2__668_ gnd vdd FILL
XFILL_3__363_ gnd vdd FILL
X_642_ _16_ clk_bF$buf4 acc_reg[9] vdd gnd DFFPOSX1
XFILL_4__570_ gnd vdd FILL
XFILL_5__604_ gnd vdd FILL
XFILL_2__477_ gnd vdd FILL
XFILL_3__419_ gnd vdd FILL
XFILL_3__592_ gnd vdd FILL
X_451_ _273_ _281_ vdd gnd INVX1
XFILL_5__413_ gnd vdd FILL
XFILL_1__499_ gnd vdd FILL
XFILL_5_BUFX2_insert20 gnd vdd FILL
XFILL_0__504_ gnd vdd FILL
X_507_ RdyCtl[1] _51_ _52_ vdd gnd NAND2X1
XFILL_4__435_ gnd vdd FILL
XFILL_7__579_ gnd vdd FILL
XFILL74550x150 gnd vdd FILL
XFILL_0__313_ gnd vdd FILL
XFILL_3__457_ gnd vdd FILL
X_316_ _150_ _111_ _155_ _156_ vdd gnd AOI21X1
XFILL_1__520_ gnd vdd FILL
XFILL_7__388_ gnd vdd FILL
XFILL_5__451_ gnd vdd FILL
XFILL_7__600_ gnd vdd FILL
XFILL_0__542_ gnd vdd FILL
X_545_ acc_reg[1] FCW[1] _79_ vdd gnd NAND2X1
XFILL_4__473_ gnd vdd FILL
XFILL_5__507_ gnd vdd FILL
XFILL73650x39750 gnd vdd FILL
XFILL_6__622_ gnd vdd FILL
XFILL_0__351_ gnd vdd FILL
XFILL_3__495_ gnd vdd FILL
XFILL_4__529_ gnd vdd FILL
X_354_ _190_ _191_ vdd gnd INVX1
XFILL_5__316_ gnd vdd FILL
XFILL_8__368_ gnd vdd FILL
XFILL_6__431_ gnd vdd FILL
XFILL_0__407_ gnd vdd FILL
XFILL_0__580_ gnd vdd FILL
XFILL_1__614_ gnd vdd FILL
XFILL_4__338_ gnd vdd FILL
X_583_ _113_ _110_ _114_ vdd gnd NAND2X1
XFILL_2__401_ gnd vdd FILL
XFILL_5__545_ gnd vdd FILL
XFILL74250x10950 gnd vdd FILL
X_639_ _13_ clk_bF$buf3 acc_reg[6] vdd gnd DFFPOSX1
XFILL_1__423_ gnd vdd FILL
XFILL_4__567_ gnd vdd FILL
X_392_ _225_ _224_ _226_ vdd gnd NAND2X1
XFILL_5__354_ gnd vdd FILL
XFILL_7__503_ gnd vdd FILL
XFILL_0__445_ gnd vdd FILL
XFILL_3__589_ gnd vdd FILL
X_448_ _277_ _276_ _278_ vdd gnd NOR2X1
XFILL_4__376_ gnd vdd FILL
XFILL_5__583_ gnd vdd FILL
XFILL_6__525_ gnd vdd FILL
XFILL_3__398_ gnd vdd FILL
XFILL_1__461_ gnd vdd FILL
XFILL_5__392_ gnd vdd FILL
XFILL_3__610_ gnd vdd FILL
XFILL_6__334_ gnd vdd FILL
XFILL_7__541_ gnd vdd FILL
XFILL_0__483_ gnd vdd FILL
XFILL_1__517_ gnd vdd FILL
X_486_ _58_ _73__bF$buf0 _306_ _34_ vdd gnd AOI21X1
XFILL_5__448_ gnd vdd FILL
XFILL_6__563_ gnd vdd FILL
XFILL_0__539_ gnd vdd FILL
XFILL_7__350_ gnd vdd FILL
XFILL_1__326_ gnd vdd FILL
XFILL_2__533_ gnd vdd FILL
XFILL_6__619_ gnd vdd FILL
XFILL_6__372_ gnd vdd FILL
XFILL_7__406_ gnd vdd FILL
XFILL_0__348_ gnd vdd FILL
XFILL_1__555_ gnd vdd FILL
XFILL_8__521_ gnd vdd FILL
XFILL_2__342_ gnd vdd FILL
XFILL_5__486_ gnd vdd FILL
XFILL_6__428_ gnd vdd FILL
XFILL_0__577_ gnd vdd FILL
XFILL_1__364_ gnd vdd FILL
XFILL_8__330_ gnd vdd FILL
XFILL76050x21750 gnd vdd FILL
XFILL_2__571_ gnd vdd FILL
XFILL_3__513_ gnd vdd FILL
XFILL_7__444_ gnd vdd FILL
XFILL_0__386_ gnd vdd FILL
X_389_ _221_ _222_ _223_ vdd gnd OR2X2
XFILL_1__593_ gnd vdd FILL
XFILL_2__380_ gnd vdd FILL
XFILL_3__322_ gnd vdd FILL
XFILL_6__466_ gnd vdd FILL
X_601_ acc_reg[6] FCW[6] _130_ vdd gnd OR2X2
XFILL_2__436_ gnd vdd FILL
XFILL_3__551_ gnd vdd FILL
X_410_ _200_ _198_ _242_ vdd gnd NAND2X1
XFILL_7__482_ gnd vdd FILL
XFILL_1__458_ gnd vdd FILL
XFILL_8__424_ gnd vdd FILL
XFILL_2__665_ gnd vdd FILL
XFILL_5__389_ gnd vdd FILL
XFILL_3__607_ gnd vdd FILL
XFILL_3__360_ gnd vdd FILL
XFILL_7__538_ gnd vdd FILL
XFILL_5__601_ gnd vdd FILL
XFILL_2__474_ gnd vdd FILL
XFILL_3__416_ gnd vdd FILL
XFILL74850x61350 gnd vdd FILL
XFILL_4__623_ gnd vdd FILL
XFILL74850x28950 gnd vdd FILL
XFILL_7__347_ gnd vdd FILL
XFILL_5__410_ gnd vdd FILL
XFILL_1__496_ gnd vdd FILL
XFILL_8__462_ gnd vdd FILL
XFILL_0__501_ gnd vdd FILL
XFILL_6__369_ gnd vdd FILL
X_504_ _40_ _48_ _49_ vdd gnd NAND2X1
XFILL_4__432_ gnd vdd FILL
XFILL_7__576_ gnd vdd FILL
XFILL_8__518_ gnd vdd FILL
XFILL_2__339_ gnd vdd FILL
XFILL_3__454_ gnd vdd FILL
XFILL_6__598_ gnd vdd FILL
X_313_ _129_ _147_ _139_ _153_ vdd gnd OAI21X1
XFILL_7__385_ gnd vdd FILL
XFILL_8__327_ gnd vdd FILL
XFILL_2__568_ gnd vdd FILL
X_542_ _75_ _76_ En_bF$buf3 _77_ vdd gnd OAI21X1
XFILL_4__470_ gnd vdd FILL
XFILL_5__504_ gnd vdd FILL
XFILL_8__556_ gnd vdd FILL
XFILL_2__377_ gnd vdd FILL
XFILL_3__319_ gnd vdd FILL
XFILL_3__492_ gnd vdd FILL
XFILL_4__526_ gnd vdd FILL
X_351_ acc_reg[11] FCW[11] _188_ vdd gnd AND2X2
XFILL_5__313_ gnd vdd FILL
XFILL_1__399_ gnd vdd FILL
XFILL_8__365_ gnd vdd FILL
XFILL_0__404_ gnd vdd FILL
XFILL_3__548_ gnd vdd FILL
X_407_ _222_ _221_ _239_ vdd gnd NOR2X1
XFILL_1__611_ gnd vdd FILL
XFILL_4__335_ gnd vdd FILL
XFILL_7__479_ gnd vdd FILL
X_580_ _106_ _104_ _111_ vdd gnd NAND2X1
XFILL_5__542_ gnd vdd FILL
XFILL_8__594_ gnd vdd FILL
XFILL_3__357_ gnd vdd FILL
X_636_ _10_ clk_bF$buf3 acc_reg[3] vdd gnd DFFPOSX1
XFILL_1__420_ gnd vdd FILL
XFILL_4__564_ gnd vdd FILL
XFILL_5__351_ gnd vdd FILL
XFILL_7__500_ gnd vdd FILL
XFILL_0__442_ gnd vdd FILL
XFILL_3__586_ gnd vdd FILL
X_445_ FCW[18] _275_ vdd gnd INVX1
XFILL_4__373_ gnd vdd FILL
XFILL_5__407_ gnd vdd FILL
XFILL_8__459_ gnd vdd FILL
XFILL75150x61350 gnd vdd FILL
XFILL_5__580_ gnd vdd FILL
XFILL75150x28950 gnd vdd FILL
XFILL_6__522_ gnd vdd FILL
XFILL_3__395_ gnd vdd FILL
XFILL_4__429_ gnd vdd FILL
XFILL_6__331_ gnd vdd FILL
XFILL_0__480_ gnd vdd FILL
XFILL_1__514_ gnd vdd FILL
X_483_ acc_reg[14] _73__bF$buf0 En_bF$buf3 _305_ vdd gnd OAI21X1
XFILL74850x7350 gnd vdd FILL
XFILL_5__445_ gnd vdd FILL
XFILL_8__497_ gnd vdd FILL
XFILL_6__560_ gnd vdd FILL
XFILL_0__536_ gnd vdd FILL
X_539_ _66_ _74_ _6_ vdd gnd NOR2X1
XFILL_1__323_ gnd vdd FILL
XFILL_4__467_ gnd vdd FILL
XFILL_2__530_ gnd vdd FILL
XFILL_6__616_ gnd vdd FILL
XFILL_7__403_ gnd vdd FILL
XFILL_0__345_ gnd vdd FILL
XFILL_3__489_ gnd vdd FILL
X_348_ _184_ RdyCtl_6_bF$buf3 _185_ _17_ vdd gnd AOI21X1
XFILL_1__552_ gnd vdd FILL
XFILL_5__483_ gnd vdd FILL
XFILL_6__425_ gnd vdd FILL
XFILL_0__574_ gnd vdd FILL
XFILL_1__608_ gnd vdd FILL
X_577_ acc_reg[4] FCW[4] _108_ vdd gnd AND2X2
XFILL_1__361_ gnd vdd FILL
XFILL_5__539_ gnd vdd FILL
XFILL_3__510_ gnd vdd FILL
XFILL_7__441_ gnd vdd FILL
XFILL_0__383_ gnd vdd FILL
XFILL_1__417_ gnd vdd FILL
X_386_ _202_ _217_ _219_ _220_ vdd gnd AOI21X1
XFILL_1__590_ gnd vdd FILL
XFILL_2__624_ gnd vdd FILL
XFILL_5__348_ gnd vdd FILL
XFILL_6__463_ gnd vdd FILL
XFILL_0__439_ gnd vdd FILL
XFILL_8__612_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
XFILL_1_BUFX2_insert15 gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
XFILL_2__433_ gnd vdd FILL
XFILL_1_BUFX2_insert18 gnd vdd FILL
XFILL_1_BUFX2_insert19 gnd vdd FILL
XFILL_5__577_ gnd vdd FILL
XFILL_6__519_ gnd vdd FILL
XFILL_0__668_ gnd vdd FILL
XFILL_1__455_ gnd vdd FILL
XFILL_8__421_ gnd vdd FILL
XFILL_4__599_ gnd vdd FILL
XFILL_5__386_ gnd vdd FILL
XFILL_3__604_ gnd vdd FILL
XFILL75450x36150 gnd vdd FILL
XFILL_6__328_ gnd vdd FILL
XFILL_7__535_ gnd vdd FILL
XFILL_0__477_ gnd vdd FILL
XFILL74250x18150 gnd vdd FILL
XFILL_2__471_ gnd vdd FILL
XFILL_3__413_ gnd vdd FILL
XFILL_6__557_ gnd vdd FILL
XFILL_4__620_ gnd vdd FILL
XFILL_7__344_ gnd vdd FILL
XFILL_1__493_ gnd vdd FILL
XFILL_2__527_ gnd vdd FILL
XFILL_6__366_ gnd vdd FILL
X_501_ _43_ _44_ _45_ _46_ vdd gnd OAI21X1
XFILL_7__573_ gnd vdd FILL
XFILL_1__549_ gnd vdd FILL
XFILL_8__515_ gnd vdd FILL
XFILL_2__336_ gnd vdd FILL
XFILL_3__451_ gnd vdd FILL
XFILL_6__595_ gnd vdd FILL
XFILL_7__382_ gnd vdd FILL
XFILL_1__358_ gnd vdd FILL
XFILL_2__565_ gnd vdd FILL
XFILL_3__507_ gnd vdd FILL
XFILL_6_BUFX2_insert10 gnd vdd FILL
XFILL_6_BUFX2_insert11 gnd vdd FILL
XFILL_6_BUFX2_insert12 gnd vdd FILL
XFILL_6_BUFX2_insert13 gnd vdd FILL
XFILL_6_BUFX2_insert14 gnd vdd FILL
XFILL_6_BUFX2_insert15 gnd vdd FILL
XFILL_6_BUFX2_insert16 gnd vdd FILL
XFILL_6_BUFX2_insert17 gnd vdd FILL
XFILL_6_BUFX2_insert18 gnd vdd FILL
XFILL_6_BUFX2_insert19 gnd vdd FILL
XFILL_7__438_ gnd vdd FILL
XFILL_5__501_ gnd vdd FILL
XFILL_1__587_ gnd vdd FILL
XFILL_8__553_ gnd vdd FILL
XFILL_2__374_ gnd vdd FILL
XFILL_3__316_ gnd vdd FILL
XFILL_4__523_ gnd vdd FILL
XFILL_7__667_ gnd vdd FILL
XFILL_8__609_ gnd vdd FILL
XFILL_1__396_ gnd vdd FILL
XFILL_0__401_ gnd vdd FILL
XFILL_3__545_ gnd vdd FILL
X_404_ _234_ _236_ _73__bF$buf4 _237_ vdd gnd AOI21X1
XFILL_4__332_ gnd vdd FILL
XFILL_7__476_ gnd vdd FILL
XFILL75450x3750 gnd vdd FILL
XFILL_8__591_ gnd vdd FILL
XFILL74850x14550 gnd vdd FILL
XFILL_3__354_ gnd vdd FILL
XFILL_6__498_ gnd vdd FILL
X_633_ _7_ clk_bF$buf0 acc_reg[0] vdd gnd DFFPOSX1
XFILL_4__561_ gnd vdd FILL
XFILL_2__468_ gnd vdd FILL
XFILL_3__583_ gnd vdd FILL
XFILL_4__617_ gnd vdd FILL
X_442_ _252_ _268_ _272_ vdd gnd NAND2X1
XFILL_4__370_ gnd vdd FILL
XFILL_5__404_ gnd vdd FILL
XFILL_3__392_ gnd vdd FILL
XFILL_4__426_ gnd vdd FILL
XFILL_3__448_ gnd vdd FILL
XFILL_1__511_ gnd vdd FILL
XFILL_7__379_ gnd vdd FILL
X_480_ _39_ _73__bF$buf2 _303_ _31_ vdd gnd AOI21X1
XFILL_5__442_ gnd vdd FILL
XFILL_8__494_ gnd vdd FILL
XFILL_0__533_ gnd vdd FILL
X_536_ _40_ _74_ _3_ vdd gnd NOR2X1
XFILL_1__320_ gnd vdd FILL
XFILL_4__464_ gnd vdd FILL
XFILL_6__613_ gnd vdd FILL
XFILL_7__400_ gnd vdd FILL
XFILL_0__342_ gnd vdd FILL
XFILL_3__486_ gnd vdd FILL
X_345_ _178_ _181_ _183_ vdd gnd OR2X2
XFILL_8__359_ gnd vdd FILL
XFILL_5__480_ gnd vdd FILL
XFILL_6__422_ gnd vdd FILL
XFILL_0__571_ gnd vdd FILL
XFILL_1__605_ gnd vdd FILL
XFILL_4__329_ gnd vdd FILL
X_574_ _98_ _105_ vdd gnd INVX1
XFILL_5__536_ gnd vdd FILL
XFILL_8__588_ gnd vdd FILL
XFILL_0__380_ gnd vdd FILL
XFILL_1__414_ gnd vdd FILL
XFILL_4__558_ gnd vdd FILL
X_383_ _205_ _213_ _217_ vdd gnd NOR2X1
XFILL75150x14550 gnd vdd FILL
XFILL_2__621_ gnd vdd FILL
XFILL_5__345_ gnd vdd FILL
XFILL_8__397_ gnd vdd FILL
XFILL_6__460_ gnd vdd FILL
XFILL_0__436_ gnd vdd FILL
X_439_ _265_ _268_ _73__bF$buf2 _270_ vdd gnd AOI21X1
XFILL_4__367_ gnd vdd FILL
XFILL_2__430_ gnd vdd FILL
XFILL_5__574_ gnd vdd FILL
XFILL_6__516_ gnd vdd FILL
XFILL_0__665_ gnd vdd FILL
XFILL_3__389_ gnd vdd FILL
X_668_ RdyCtl_6_bF$buf1 Vld vdd gnd BUFX2
XFILL_1__452_ gnd vdd FILL
XFILL_4__596_ gnd vdd FILL
XFILL_5__383_ gnd vdd FILL
XFILL_3__601_ gnd vdd FILL
XFILL_6__325_ gnd vdd FILL
XFILL_7__532_ gnd vdd FILL
XFILL_0__474_ gnd vdd FILL
XFILL_5_BUFX2_insert6 gnd vdd FILL
XFILL_5_BUFX2_insert7 gnd vdd FILL
XFILL_5_BUFX2_insert8 gnd vdd FILL
XFILL_1__508_ gnd vdd FILL
XFILL_5_BUFX2_insert9 gnd vdd FILL
X_477_ acc_reg[11] _73__bF$buf1 En_bF$buf0 _302_ vdd gnd OAI21X1
XFILL75450x57750 gnd vdd FILL
XFILL_5__439_ gnd vdd FILL
XFILL_3__410_ gnd vdd FILL
XFILL_6__554_ gnd vdd FILL
XFILL74250x39750 gnd vdd FILL
XFILL_7__341_ gnd vdd FILL
XFILL_1__317_ gnd vdd FILL
XFILL_1__490_ gnd vdd FILL
XFILL_2__524_ gnd vdd FILL
XFILL_5__668_ gnd vdd FILL
XFILL_6__363_ gnd vdd FILL
XFILL_0__339_ gnd vdd FILL
XFILL_7__570_ gnd vdd FILL
XFILL_1__546_ gnd vdd FILL
XFILL_2__333_ gnd vdd FILL
XFILL_5__477_ gnd vdd FILL
XFILL_6__419_ gnd vdd FILL
XFILL_6__592_ gnd vdd FILL
XFILL_0__568_ gnd vdd FILL
XFILL_1__355_ gnd vdd FILL
XFILL_8__321_ gnd vdd FILL
XFILL_4__499_ gnd vdd FILL
XFILL_2__562_ gnd vdd FILL
XFILL_3__504_ gnd vdd FILL
XFILL75750x10950 gnd vdd FILL
XFILL_7__435_ gnd vdd FILL
XFILL_0__377_ gnd vdd FILL
XFILL_7_BUFX2_insert6 gnd vdd FILL
XFILL_7_BUFX2_insert7 gnd vdd FILL
XFILL_7_BUFX2_insert8 gnd vdd FILL
XFILL_7_BUFX2_insert9 gnd vdd FILL
XFILL74850x150 gnd vdd FILL
XFILL_1__584_ gnd vdd FILL
XFILL_2__618_ gnd vdd FILL
XFILL_2__371_ gnd vdd FILL
XFILL_3__313_ gnd vdd FILL
XFILL_6__457_ gnd vdd FILL
XFILL_4__520_ gnd vdd FILL
XFILL_1__393_ gnd vdd FILL
XFILL_2__427_ gnd vdd FILL
XFILL_3__542_ gnd vdd FILL
X_401_ _223_ _220_ _228_ _234_ vdd gnd OAI21X1
XFILL_7__473_ gnd vdd FILL
XFILL_1__449_ gnd vdd FILL
XFILL_8__415_ gnd vdd FILL
XFILL_3__351_ gnd vdd FILL
XFILL_6__495_ gnd vdd FILL
XFILL_7__529_ gnd vdd FILL
X_630_ _4_ clk_bF$buf3 RdyCtl[4] vdd gnd DFFPOSX1
XFILL_2__465_ gnd vdd FILL
XFILL_3__407_ gnd vdd FILL
XFILL_3__580_ gnd vdd FILL
XFILL_4__614_ gnd vdd FILL
XFILL_7__338_ gnd vdd FILL
XFILL_5__401_ gnd vdd FILL
XFILL_1__487_ gnd vdd FILL
XFILL_8__453_ gnd vdd FILL
XFILL_4__423_ gnd vdd FILL
XFILL_7__567_ gnd vdd FILL
XFILL_8__509_ gnd vdd FILL
XFILL_3__445_ gnd vdd FILL
XFILL_6__589_ gnd vdd FILL
XFILL_7__376_ gnd vdd FILL
XFILL_8__318_ gnd vdd FILL
XFILL_8__491_ gnd vdd FILL
XFILL_2__559_ gnd vdd FILL
XFILL_0__530_ gnd vdd FILL
XFILL_6__398_ gnd vdd FILL
X_533_ _73__bF$buf2 _74_ _0_ vdd gnd NOR2X1
XFILL_4__461_ gnd vdd FILL
XFILL_8__547_ gnd vdd FILL
XFILL_6__610_ gnd vdd FILL
XFILL_2__368_ gnd vdd FILL
XFILL_3__483_ gnd vdd FILL
XFILL_4__517_ gnd vdd FILL
X_342_ acc_reg[10] FCW[10] _180_ vdd gnd NOR2X1
XFILL_8__356_ gnd vdd FILL
XFILL_2__597_ gnd vdd FILL
XFILL_3__539_ gnd vdd FILL
XFILL_1__602_ gnd vdd FILL
XFILL_4__326_ gnd vdd FILL
X_571_ _100_ _102_ _103_ vdd gnd NAND2X1
XFILL_5__533_ gnd vdd FILL
XFILL_8__585_ gnd vdd FILL
XFILL_0__624_ gnd vdd FILL
XFILL_3__348_ gnd vdd FILL
X_627_ _1_ clk_bF$buf5 RdyCtl[1] vdd gnd DFFPOSX1
XFILL_1__411_ gnd vdd FILL
XFILL_4__555_ gnd vdd FILL
X_380_ _210_ _213_ _73__bF$buf4 _215_ vdd gnd AOI21X1
XFILL_5__342_ gnd vdd FILL
XFILL_8__394_ gnd vdd FILL
XFILL_0__433_ gnd vdd FILL
XFILL_3__577_ gnd vdd FILL
X_436_ acc_reg[17] FCW[17] _267_ vdd gnd NOR2X1
XFILL_4__364_ gnd vdd FILL
XFILL_5__571_ gnd vdd FILL
XFILL_6__513_ gnd vdd FILL
XFILL_3__386_ gnd vdd FILL
X_665_ _311_[0] Aout[0] vdd gnd BUFX2
XFILL_4__593_ gnd vdd FILL
XFILL_5__380_ gnd vdd FILL
XFILL_6__322_ gnd vdd FILL
XFILL_0__471_ gnd vdd FILL
XFILL_1__505_ gnd vdd FILL
X_474_ _299_ _300_ _28_ vdd gnd NOR2X1
XFILL_5__436_ gnd vdd FILL
XFILL_8__488_ gnd vdd FILL
XFILL_6__551_ gnd vdd FILL
XFILL_0__527_ gnd vdd FILL
XFILL_1__314_ gnd vdd FILL
XFILL_4__458_ gnd vdd FILL
XFILL_2__521_ gnd vdd FILL
XFILL_5__665_ gnd vdd FILL
XFILL_6__607_ gnd vdd FILL
XFILL_6__360_ gnd vdd FILL
XFILL_0__336_ gnd vdd FILL
X_339_ _169_ _159_ _177_ vdd gnd OR2X2
XFILL_1__543_ gnd vdd FILL
XFILL_2__330_ gnd vdd FILL
XFILL_5__474_ gnd vdd FILL
XFILL_6__416_ gnd vdd FILL
XFILL_7__623_ gnd vdd FILL
XFILL_0__565_ gnd vdd FILL
X_568_ _89_ _92_ _99_ _100_ vdd gnd OAI21X1
XFILL_1__352_ gnd vdd FILL
XFILL_4__496_ gnd vdd FILL
XFILL_3__501_ gnd vdd FILL
XFILL_7__432_ gnd vdd FILL
XFILL_0__374_ gnd vdd FILL
XFILL_1__408_ gnd vdd FILL
X_377_ acc_reg[13] FCW[13] _212_ vdd gnd OR2X2
XFILL_1__581_ gnd vdd FILL
XFILL_2__615_ gnd vdd FILL
XFILL_5__339_ gnd vdd FILL
XFILL_6__454_ gnd vdd FILL
XFILL_8__603_ gnd vdd FILL
XFILL_1__390_ gnd vdd FILL
XFILL_2__424_ gnd vdd FILL
XFILL_5__568_ gnd vdd FILL
XFILL75450x43350 gnd vdd FILL
XFILL73950x150 gnd vdd FILL
XFILL_7__470_ gnd vdd FILL
XFILL_1__446_ gnd vdd FILL
XFILL_8__412_ gnd vdd FILL
XFILL_5__377_ gnd vdd FILL
XFILL_6__319_ gnd vdd FILL
XFILL74250x25350 gnd vdd FILL
XFILL_6__492_ gnd vdd FILL
XFILL_7__526_ gnd vdd FILL
XFILL_0__468_ gnd vdd FILL
XFILL_4__399_ gnd vdd FILL
XFILL_2__462_ gnd vdd FILL
XFILL_3__404_ gnd vdd FILL
XFILL_6__548_ gnd vdd FILL
XFILL_4__611_ gnd vdd FILL
XFILL_7__335_ gnd vdd FILL
XFILL_1__484_ gnd vdd FILL
XFILL_8__450_ gnd vdd FILL
XFILL_2__518_ gnd vdd FILL
XFILL_6__357_ gnd vdd FILL
XFILL_4__420_ gnd vdd FILL
XFILL_7__564_ gnd vdd FILL
XFILL_8__506_ gnd vdd FILL
XFILL_7_BUFX2_insert20 gnd vdd FILL
XFILL_2__327_ gnd vdd FILL
XFILL74550x68550 gnd vdd FILL
XFILL_3__442_ gnd vdd FILL
XFILL_6__586_ gnd vdd FILL
XFILL_7__373_ gnd vdd FILL
XFILL_1__349_ gnd vdd FILL
XFILL_2__556_ gnd vdd FILL
XFILL_6__395_ gnd vdd FILL
XFILL_7__429_ gnd vdd FILL
X_530_ _66_ _71_ _72_ _38_ vdd gnd OAI21X1
XFILL_1__578_ gnd vdd FILL
XFILL_8__544_ gnd vdd FILL
XFILL_2__365_ gnd vdd FILL
XFILL_3__480_ gnd vdd FILL
XFILL_4__514_ gnd vdd FILL
XFILL_1__387_ gnd vdd FILL
XFILL_2__594_ gnd vdd FILL
XFILL_3__536_ gnd vdd FILL
XFILL76050x7350 gnd vdd FILL
XFILL_4__323_ gnd vdd FILL
XFILL74850x21750 gnd vdd FILL
XFILL_7__467_ gnd vdd FILL
XFILL76050x36150 gnd vdd FILL
XFILL_5__530_ gnd vdd FILL
XFILL_8__582_ gnd vdd FILL
XFILL_0__621_ gnd vdd FILL
XFILL_3__345_ gnd vdd FILL
XFILL_6__489_ gnd vdd FILL
X_624_ _118_ _151_ vdd gnd INVX1
XFILL_4__552_ gnd vdd FILL
XFILL75750x18150 gnd vdd FILL
XFILL_8__391_ gnd vdd FILL
XFILL_2__459_ gnd vdd FILL
XFILL_0__430_ gnd vdd FILL
XFILL_3__574_ gnd vdd FILL
XFILL_4__608_ gnd vdd FILL
X_433_ _263_ RdyCtl_6_bF$buf3 _264_ _23_ vdd gnd AOI21X1
XFILL_4__361_ gnd vdd FILL
XFILL_8__447_ gnd vdd FILL
XFILL_6__510_ gnd vdd FILL
XFILL_3__383_ gnd vdd FILL
XFILL_4__417_ gnd vdd FILL
X_662_ _36_ clk_bF$buf3 Atmp[9] vdd gnd DFFPOSX1
XFILL_4__590_ gnd vdd FILL
XFILL_5__624_ gnd vdd FILL
XFILL_2__497_ gnd vdd FILL
XFILL_3__439_ gnd vdd FILL
XFILL_1__502_ gnd vdd FILL
X_471_ _297_ _298_ _27_ vdd gnd NOR2X1
XFILL_5__433_ gnd vdd FILL
XFILL_8__485_ gnd vdd FILL
XFILL_0__524_ gnd vdd FILL
XFILL_3__668_ gnd vdd FILL
X_527_ _68_ _69_ _70_ vdd gnd NAND2X1
XFILL_4__455_ gnd vdd FILL
XFILL_7__599_ gnd vdd FILL
XFILL_6__604_ gnd vdd FILL
XFILL_0__333_ gnd vdd FILL
XFILL_3__477_ gnd vdd FILL
X_336_ acc_reg[9] FCW[9] _174_ vdd gnd NOR2X1
XFILL_1__540_ gnd vdd FILL
XFILL_5__471_ gnd vdd FILL
XFILL_6__413_ gnd vdd FILL
XFILL_7__620_ gnd vdd FILL
XFILL_0__562_ gnd vdd FILL
X_565_ acc_reg[3] FCW[3] _97_ vdd gnd AND2X2
XFILL_4__493_ gnd vdd FILL
XFILL_5__527_ gnd vdd FILL
XFILL_8__579_ gnd vdd FILL
XFILL75150x21750 gnd vdd FILL
XFILL_0__618_ gnd vdd FILL
XFILL_0__371_ gnd vdd FILL
XFILL_1__405_ gnd vdd FILL
XFILL_4__549_ gnd vdd FILL
X_374_ _202_ _209_ vdd gnd INVX1
XFILL_2__612_ gnd vdd FILL
XFILL_5__336_ gnd vdd FILL
XFILL_8__388_ gnd vdd FILL
XFILL_6__451_ gnd vdd FILL
XFILL_0__427_ gnd vdd FILL
XFILL_8__600_ gnd vdd FILL
XFILL_4__358_ gnd vdd FILL
XFILL_2__421_ gnd vdd FILL
XFILL_5__565_ gnd vdd FILL
XFILL_6__507_ gnd vdd FILL
X_659_ _33_ clk_bF$buf0 Atmp[6] vdd gnd DFFPOSX1
XFILL_1__443_ gnd vdd FILL
XFILL_4__587_ gnd vdd FILL
XFILL_5__374_ gnd vdd FILL
XFILL_6__316_ gnd vdd FILL
XFILL75450x64950 gnd vdd FILL
XFILL_7__523_ gnd vdd FILL
XFILL_0__465_ gnd vdd FILL
X_468_ _286_ _287_ _296_ _293_ _26_ vdd 
+ gnd
+ AOI22X1
XFILL_4__396_ gnd vdd FILL
XFILL_3__401_ gnd vdd FILL
XFILL_6__545_ gnd vdd FILL
XFILL_7__332_ gnd vdd FILL
XFILL73950x61350 gnd vdd FILL
XFILL_1__481_ gnd vdd FILL
XFILL_2__515_ gnd vdd FILL
XFILL75150x150 gnd vdd FILL
XFILL_6__354_ gnd vdd FILL
XFILL_7__561_ gnd vdd FILL
XFILL_1__537_ gnd vdd FILL
XFILL_2__324_ gnd vdd FILL
XFILL_5__468_ gnd vdd FILL
XFILL_6__583_ gnd vdd FILL
XFILL_7__617_ gnd vdd FILL
XFILL_0__559_ gnd vdd FILL
XFILL_7__370_ gnd vdd FILL
XFILL_1__346_ gnd vdd FILL
XFILL_2__553_ gnd vdd FILL
XFILL_6__392_ gnd vdd FILL
XFILL_7__426_ gnd vdd FILL
XFILL_0__368_ gnd vdd FILL
XFILL_1__575_ gnd vdd FILL
XFILL_8__541_ gnd vdd FILL
XFILL_2__609_ gnd vdd FILL
XFILL_2__362_ gnd vdd FILL
XFILL_6__448_ gnd vdd FILL
XFILL_4__511_ gnd vdd FILL
XFILL_0__597_ gnd vdd FILL
XFILL_1__384_ gnd vdd FILL
XFILL_8__350_ gnd vdd FILL
XFILL_2__418_ gnd vdd FILL
XFILL_2__591_ gnd vdd FILL
XFILL_3__533_ gnd vdd FILL
XFILL_4__320_ gnd vdd FILL
XFILL_7__464_ gnd vdd FILL
XFILL_8__406_ gnd vdd FILL
XFILL_3__342_ gnd vdd FILL
XFILL_6__486_ gnd vdd FILL
X_621_ _147_ _146_ _148_ vdd gnd NOR2X1
XFILL76050x57750 gnd vdd FILL
XFILL_2__456_ gnd vdd FILL
XFILL75750x39750 gnd vdd FILL
XFILL_3__571_ gnd vdd FILL
XFILL_4__605_ gnd vdd FILL
XFILL_7__329_ gnd vdd FILL
X_430_ _250_ _251_ _261_ _262_ vdd gnd OAI21X1
XFILL_1__478_ gnd vdd FILL
XFILL_8__444_ gnd vdd FILL
XFILL_3__380_ gnd vdd FILL
XFILL_4__414_ gnd vdd FILL
XFILL_7__558_ gnd vdd FILL
XFILL_5__621_ gnd vdd FILL
XFILL_2__494_ gnd vdd FILL
XFILL_3__436_ gnd vdd FILL
XFILL_7__367_ gnd vdd FILL
XFILL_5__430_ gnd vdd FILL
XFILL_8__482_ gnd vdd FILL
XFILL_0__521_ gnd vdd FILL
XFILL_3__665_ gnd vdd FILL
XFILL_6__389_ gnd vdd FILL
X_524_ acc_reg[18] acc_reg[19] _67_ vdd gnd NAND2X1
XFILL_4__452_ gnd vdd FILL
XFILL_7__596_ gnd vdd FILL
XFILL_8__538_ gnd vdd FILL
XFILL_6__601_ gnd vdd FILL
XFILL_2__359_ gnd vdd FILL
XFILL_0__330_ gnd vdd FILL
XFILL_3__474_ gnd vdd FILL
XFILL_4__508_ gnd vdd FILL
X_333_ _73__bF$buf1 _171_ _172_ vdd gnd NOR2X1
XFILL_8__347_ gnd vdd FILL
XFILL_6__410_ gnd vdd FILL
XFILL_2__588_ gnd vdd FILL
XFILL_4__317_ gnd vdd FILL
X_562_ acc_reg[2] _73__bF$buf0 _95_ vdd gnd NAND2X1
XFILL_4__490_ gnd vdd FILL
XFILL_5__524_ gnd vdd FILL
XFILL_8__576_ gnd vdd FILL
XFILL_2__397_ gnd vdd FILL
XFILL_0__615_ gnd vdd FILL
XFILL_3__339_ gnd vdd FILL
X_618_ _112_ _119_ _145_ vdd gnd NAND2X1
XFILL_1__402_ gnd vdd FILL
XFILL_4__546_ gnd vdd FILL
X_371_ _202_ _205_ _207_ vdd gnd AND2X2
XFILL_5__333_ gnd vdd FILL
XFILL_0__424_ gnd vdd FILL
XFILL_3__568_ gnd vdd FILL
X_427_ _245_ _246_ _259_ vdd gnd AND2X2
XFILL_4__355_ gnd vdd FILL
XFILL_7__499_ gnd vdd FILL
XFILL_5__562_ gnd vdd FILL
XFILL_6__504_ gnd vdd FILL
XFILL_3__377_ gnd vdd FILL
X_656_ _30_ clk_bF$buf5 Atmp[3] vdd gnd DFFPOSX1
XFILL_1__440_ gnd vdd FILL
XFILL_4__584_ gnd vdd FILL
XFILL_5__618_ gnd vdd FILL
XFILL_3_BUFX2_insert10 gnd vdd FILL
XFILL_3_BUFX2_insert11 gnd vdd FILL
XFILL_3_BUFX2_insert12 gnd vdd FILL
XFILL_3_BUFX2_insert13 gnd vdd FILL
XFILL_3_BUFX2_insert14 gnd vdd FILL
XFILL_3_BUFX2_insert15 gnd vdd FILL
XFILL_3_BUFX2_insert16 gnd vdd FILL
XFILL_3_BUFX2_insert17 gnd vdd FILL
XFILL_3_BUFX2_insert18 gnd vdd FILL
XFILL_3_BUFX2_insert19 gnd vdd FILL
XFILL_5__371_ gnd vdd FILL
XFILL_6__313_ gnd vdd FILL
XFILL_7__520_ gnd vdd FILL
XFILL_0__462_ gnd vdd FILL
X_465_ _274_ _278_ _276_ _294_ vdd gnd AOI21X1
XFILL_4__393_ gnd vdd FILL
XFILL_5__427_ gnd vdd FILL
XFILL_6__542_ gnd vdd FILL
XFILL_0__518_ gnd vdd FILL
XFILL_4__449_ gnd vdd FILL
XFILL_2__512_ gnd vdd FILL
XFILL_6__351_ gnd vdd FILL
XFILL_0__327_ gnd vdd FILL
XFILL_1__534_ gnd vdd FILL
XFILL_8__500_ gnd vdd FILL
XFILL_2__321_ gnd vdd FILL
XFILL_5__465_ gnd vdd FILL
XFILL_6__407_ gnd vdd FILL
XFILL_6__580_ gnd vdd FILL
XFILL_7__614_ gnd vdd FILL
XFILL_0__556_ gnd vdd FILL
X_559_ _91_ _88_ _92_ vdd gnd AND2X2
XFILL_1__343_ gnd vdd FILL
XFILL_4__487_ gnd vdd FILL
XFILL74250x150 gnd vdd FILL
XFILL_2__550_ gnd vdd FILL
XFILL_7__423_ gnd vdd FILL
XFILL_0__365_ gnd vdd FILL
X_368_ acc_reg[12] FCW[12] _204_ vdd gnd OR2X2
XFILL_1__572_ gnd vdd FILL
XFILL_2__606_ gnd vdd FILL
XFILL_6__445_ gnd vdd FILL
XFILL_8_BUFX2_insert10 gnd vdd FILL
XFILL_8_BUFX2_insert12 gnd vdd FILL
XFILL_8_BUFX2_insert13 gnd vdd FILL
XFILL_8_BUFX2_insert14 gnd vdd FILL
XFILL_8_BUFX2_insert15 gnd vdd FILL
XFILL_8_BUFX2_insert17 gnd vdd FILL
XFILL_8_BUFX2_insert18 gnd vdd FILL
XFILL_8_BUFX2_insert19 gnd vdd FILL
XFILL_0__594_ gnd vdd FILL
X_597_ _118_ _124_ _125_ _126_ vdd gnd OAI21X1
XFILL75450x50550 gnd vdd FILL
XFILL_1__381_ gnd vdd FILL
XFILL_2__415_ gnd vdd FILL
XFILL_5__559_ gnd vdd FILL
XFILL_3__530_ gnd vdd FILL
XFILL_7__461_ gnd vdd FILL
XFILL_1__437_ gnd vdd FILL
XFILL_8__403_ gnd vdd FILL
XFILL_5__368_ gnd vdd FILL
XFILL_6__483_ gnd vdd FILL
XFILL_7__517_ gnd vdd FILL
XFILL_0__459_ gnd vdd FILL
XFILL73950x14550 gnd vdd FILL
XFILL_1__666_ gnd vdd FILL
XFILL_2__453_ gnd vdd FILL
XFILL_5__597_ gnd vdd FILL
XFILL_6__539_ gnd vdd FILL
XFILL_4__602_ gnd vdd FILL
XFILL_7__326_ gnd vdd FILL
XFILL_1__475_ gnd vdd FILL
XFILL_8__441_ gnd vdd FILL
XFILL_2__509_ gnd vdd FILL
XFILL_3__624_ gnd vdd FILL
XFILL_6__348_ gnd vdd FILL
XFILL_4__411_ gnd vdd FILL
XFILL_7__555_ gnd vdd FILL
XFILL_0__497_ gnd vdd FILL
XFILL_2__318_ gnd vdd FILL
XFILL_2__491_ gnd vdd FILL
XFILL_3__433_ gnd vdd FILL
XFILL_6__577_ gnd vdd FILL
XFILL_7__364_ gnd vdd FILL
XFILL_2__547_ gnd vdd FILL
XFILL_6__386_ gnd vdd FILL
X_521_ RdyCtl[0] Atmp[1] _65_ vdd gnd NAND2X1
XFILL_7__593_ gnd vdd FILL
XFILL_1__569_ gnd vdd FILL
XFILL_8__535_ gnd vdd FILL
XFILL_2__356_ gnd vdd FILL
XFILL_3__471_ gnd vdd FILL
XFILL_4__505_ gnd vdd FILL
X_330_ _165_ _168_ _169_ vdd gnd NAND2X1
XFILL_1__378_ gnd vdd FILL
XFILL_8__344_ gnd vdd FILL
XFILL_2__585_ gnd vdd FILL
XFILL76050x43350 gnd vdd FILL
XFILL_3__527_ gnd vdd FILL
XFILL_4__314_ gnd vdd FILL
XFILL_7__458_ gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_5__521_ gnd vdd FILL
XFILL75750x25350 gnd vdd FILL
XFILL_2__394_ gnd vdd FILL
XFILL_0__612_ gnd vdd FILL
XFILL_3__336_ gnd vdd FILL
X_615_ _138_ _141_ _73__bF$buf1 _143_ vdd gnd AOI21X1
XFILL_4__543_ gnd vdd FILL
XFILL_5__330_ gnd vdd FILL
XFILL_8__382_ gnd vdd FILL
XFILL_0__421_ gnd vdd FILL
XFILL_3__565_ gnd vdd FILL
X_424_ _254_ _126_ _153_ _256_ vdd gnd AOI21X1
XFILL_4__352_ gnd vdd FILL
XFILL_7__496_ gnd vdd FILL
XFILL_8__438_ gnd vdd FILL
XFILL_6__501_ gnd vdd FILL
XFILL_3__374_ gnd vdd FILL
XFILL_4__408_ gnd vdd FILL
X_653_ _27_ clk_bF$buf5 Atmp[0] vdd gnd DFFPOSX1
XFILL_4__581_ gnd vdd FILL
XFILL_5__615_ gnd vdd FILL
XFILL_8__667_ gnd vdd FILL
XFILL_2__488_ gnd vdd FILL
X_462_ acc_reg[19] FCW[19] _291_ vdd gnd OR2X2
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2_BUFX2_insert7 gnd vdd FILL
XFILL_4__390_ gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_2_BUFX2_insert9 gnd vdd FILL
XFILL_5__424_ gnd vdd FILL
XFILL_8__476_ gnd vdd FILL
XFILL_0__515_ gnd vdd FILL
X_518_ Atmp[3] _62_ vdd gnd INVX1
XFILL_4__446_ gnd vdd FILL
XFILL73350x39750 gnd vdd FILL
XFILL_0__324_ gnd vdd FILL
XFILL_3__468_ gnd vdd FILL
X_327_ acc_reg[9] _166_ vdd gnd INVX1
XFILL_1__531_ gnd vdd FILL
XFILL_7__399_ gnd vdd FILL
XFILL_5__462_ gnd vdd FILL
XFILL_6__404_ gnd vdd FILL
XFILL_7__611_ gnd vdd FILL
XFILL_0__553_ gnd vdd FILL
X_556_ acc_reg[2] FCW[2] _89_ vdd gnd AND2X2
XFILL_1__340_ gnd vdd FILL
XFILL_4__484_ gnd vdd FILL
XFILL_5__518_ gnd vdd FILL
XFILL_0__609_ gnd vdd FILL
XFILL_7__420_ gnd vdd FILL
XFILL_0__362_ gnd vdd FILL
X_365_ _198_ _200_ _201_ vdd gnd AND2X2
XFILL_2__603_ gnd vdd FILL
XFILL_5__327_ gnd vdd FILL
XFILL_8__379_ gnd vdd FILL
XFILL_4_BUFX2_insert6 gnd vdd FILL
XFILL_4_BUFX2_insert7 gnd vdd FILL
XFILL_4_BUFX2_insert8 gnd vdd FILL
XFILL_4_BUFX2_insert9 gnd vdd FILL
XFILL_6__442_ gnd vdd FILL
XFILL_0__418_ gnd vdd FILL
XFILL_0__591_ gnd vdd FILL
XFILL_1__625_ gnd vdd FILL
XFILL_4__349_ gnd vdd FILL
X_594_ _122_ _120_ _123_ _12_ vdd gnd AOI21X1
XFILL_2__412_ gnd vdd FILL
XFILL_5__556_ gnd vdd FILL
XFILL_1__434_ gnd vdd FILL
XFILL_8__400_ gnd vdd FILL
XFILL_4__578_ gnd vdd FILL
XFILL_5__365_ gnd vdd FILL
XFILL_6__480_ gnd vdd FILL
XFILL_7__514_ gnd vdd FILL
XFILL_0__456_ gnd vdd FILL
X_459_ _276_ _288_ vdd gnd INVX1
XFILL_4__387_ gnd vdd FILL
XFILL_2__450_ gnd vdd FILL
XFILL_5__594_ gnd vdd FILL
XFILL_6__536_ gnd vdd FILL
XFILL_7__323_ gnd vdd FILL
XFILL_1__472_ gnd vdd FILL
XFILL_2__506_ gnd vdd FILL
XFILL_6_BUFX2_insert6 gnd vdd FILL
XFILL_6_BUFX2_insert7 gnd vdd FILL
XFILL_6_BUFX2_insert8 gnd vdd FILL
XFILL_6_BUFX2_insert9 gnd vdd FILL
XFILL_3__621_ gnd vdd FILL
XFILL_6__345_ gnd vdd FILL
XFILL_7__552_ gnd vdd FILL
XFILL_0__494_ gnd vdd FILL
XFILL_1__528_ gnd vdd FILL
X_497_ RdyCtl[3] _42_ vdd gnd INVX1
XFILL_2__315_ gnd vdd FILL
XFILL_5__459_ gnd vdd FILL
XFILL_3__430_ gnd vdd FILL
XFILL_6__574_ gnd vdd FILL
XFILL_7__608_ gnd vdd FILL
XCLKBUF1_insert0 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert1 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert2 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert3 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert4 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert5 clk clk_bF$buf0 vdd gnd CLKBUF1
XFILL_7__361_ gnd vdd FILL
XFILL_1__337_ gnd vdd FILL
XFILL_2__544_ gnd vdd FILL
XFILL_6__383_ gnd vdd FILL
XFILL_7__417_ gnd vdd FILL
XFILL_0__359_ gnd vdd FILL
XFILL_7__590_ gnd vdd FILL
XFILL_1__566_ gnd vdd FILL
XFILL_8__532_ gnd vdd FILL
XFILL_2__353_ gnd vdd FILL
XFILL_5__497_ gnd vdd FILL
XFILL_6__439_ gnd vdd FILL
XFILL_4__502_ gnd vdd FILL
XFILL_0__588_ gnd vdd FILL
XFILL_1__375_ gnd vdd FILL
XFILL_8__341_ gnd vdd FILL
XFILL_2__409_ gnd vdd FILL
XFILL_2__582_ gnd vdd FILL
XFILL_3__524_ gnd vdd FILL
XFILL_6__668_ gnd vdd FILL
XFILL_7__455_ gnd vdd FILL
XFILL_0__397_ gnd vdd FILL
XFILL76050x64950 gnd vdd FILL
XFILL_8__570_ gnd vdd FILL
XFILL_2__391_ gnd vdd FILL
XFILL_3__333_ gnd vdd FILL
XFILL_6__477_ gnd vdd FILL
X_612_ acc_reg[7] FCW[7] _140_ vdd gnd OR2X2
XFILL_4__540_ gnd vdd FILL
XFILL75750x46950 gnd vdd FILL
XFILL_2__447_ gnd vdd FILL
XFILL74550x61350 gnd vdd FILL
XFILL_3__562_ gnd vdd FILL
X_421_ _252_ _249_ _253_ vdd gnd NAND2X1
XFILL74550x28950 gnd vdd FILL
XFILL_7__493_ gnd vdd FILL
XFILL_1__469_ gnd vdd FILL
XFILL_8__435_ gnd vdd FILL
XFILL_3__618_ gnd vdd FILL
XFILL_3__371_ gnd vdd FILL
XFILL_4__405_ gnd vdd FILL
XFILL_7__549_ gnd vdd FILL
X_650_ _24_ clk_bF$buf5 acc_reg[17] vdd gnd DFFPOSX1
XFILL_5__612_ gnd vdd FILL
XFILL_2__485_ gnd vdd FILL
XFILL_3__427_ gnd vdd FILL
XFILL_7__358_ gnd vdd FILL
XFILL_5__421_ gnd vdd FILL
XFILL_8__473_ gnd vdd FILL
XFILL_0__512_ gnd vdd FILL
X_515_ _58_ RdyCtl[3] RdyCtl[2] _59_ vdd gnd AOI21X1
XFILL_4__443_ gnd vdd FILL
XFILL_7__587_ gnd vdd FILL
XFILL_8__529_ gnd vdd FILL
XFILL_0__321_ gnd vdd FILL
XFILL_3__465_ gnd vdd FILL
X_324_ _162_ RdyCtl_6_bF$buf3 _163_ _15_ vdd gnd AOI21X1
XFILL_7__396_ gnd vdd FILL
XFILL_6__401_ gnd vdd FILL
XFILL_2__579_ gnd vdd FILL
XFILL_0__550_ gnd vdd FILL
X_553_ acc_reg[1] RdyCtl_6_bF$buf1 En_bF$buf3 _87_ vdd gnd OAI21X1
XFILL_4__481_ gnd vdd FILL
XFILL_5__515_ gnd vdd FILL
XFILL_8__567_ gnd vdd FILL
XFILL75450x150 gnd vdd FILL
XFILL_2__388_ gnd vdd FILL
XFILL_0__606_ gnd vdd FILL
X_609_ _136_ RdyCtl_6_bF$buf4 _137_ _13_ vdd gnd AOI21X1
XFILL_4__537_ gnd vdd FILL
X_362_ _175_ _181_ _190_ _198_ vdd gnd NAND3X1
XFILL_2__600_ gnd vdd FILL
XFILL_5__324_ gnd vdd FILL
XFILL_0__415_ gnd vdd FILL
XFILL_3__559_ gnd vdd FILL
X_418_ acc_reg[16] FCW[16] _250_ vdd gnd AND2X2
XFILL_1__622_ gnd vdd FILL
XFILL_4__346_ gnd vdd FILL
X_591_ _119_ _116_ _121_ vdd gnd NOR2X1
XFILL_5__553_ gnd vdd FILL
XFILL_3__368_ gnd vdd FILL
X_647_ _21_ clk_bF$buf0 acc_reg[14] vdd gnd DFFPOSX1
XFILL74850x36150 gnd vdd FILL
XFILL_1__431_ gnd vdd FILL
XFILL_4__575_ gnd vdd FILL
XFILL_5__609_ gnd vdd FILL
XFILL_5__362_ gnd vdd FILL
XFILL_7__511_ gnd vdd FILL
XFILL_0__453_ gnd vdd FILL
XFILL_3__597_ gnd vdd FILL
X_456_ _284_ RdyCtl_6_bF$buf2 _285_ _25_ vdd gnd AOI21X1
XFILL_4__384_ gnd vdd FILL
XFILL_5__418_ gnd vdd FILL
XFILL_5__591_ gnd vdd FILL
XFILL_6__533_ gnd vdd FILL
XFILL_0__509_ gnd vdd FILL
XFILL_7__320_ gnd vdd FILL
XFILL_2__503_ gnd vdd FILL
XFILL_6__342_ gnd vdd FILL
XFILL_0__318_ gnd vdd FILL
XFILL_0__491_ gnd vdd FILL
XFILL_1__525_ gnd vdd FILL
X_494_ Atmp[4] _39_ vdd gnd INVX1
XFILL_5__456_ gnd vdd FILL
XFILL_6__571_ gnd vdd FILL
XFILL_7__605_ gnd vdd FILL
XFILL_0__547_ gnd vdd FILL
XFILL_1__334_ gnd vdd FILL
XFILL_4__478_ gnd vdd FILL
XFILL_2__541_ gnd vdd FILL
XFILL_6__380_ gnd vdd FILL
XFILL_7__414_ gnd vdd FILL
XFILL_0__356_ gnd vdd FILL
X_359_ acc_reg[12] _73__bF$buf4 _195_ vdd gnd NAND2X1
XFILL_1__563_ gnd vdd FILL

.ends
.end
