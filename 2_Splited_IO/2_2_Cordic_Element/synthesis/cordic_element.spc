*SPICE netlist created from verilog structural netlist module cordic_element by vlog2Spice (qflow)
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

.subckt cordic_element vdd gnd Ain[0] Ain[1] Aout[0] Aout[1] ISin
+ ISout Rdy Stg[0] Stg[1] Stg[2] Vld Xin[0] Xin[1]
+ Xout[0] Xout[1] Yin[0] Yin[1] Yout[0] Yout[1] clk 

XFILL_0__1661_ gnd vdd FILL
XFILL_0__1241_ gnd vdd FILL
XFILL_1__1402_ gnd vdd FILL
X_1677_ _843_ _844_ vdd gnd INVX1
X_1257_ _457_ _479_ _466_ _481_ vdd gnd NAND3X1
XFILL_0__1717_ gnd vdd FILL
XFILL_0__1470_ gnd vdd FILL
XFILL_0__1050_ gnd vdd FILL
XFILL_2__1068_ gnd vdd FILL
XFILL_1__1631_ gnd vdd FILL
XFILL_1__1211_ gnd vdd FILL
X_1486_ _119_ _665_ vdd gnd INVX1
X_1066_ Ain12b_11_bF$buf0 _298_ _295_ _299_ vdd gnd OAI21X1
XFILL_2__1700_ gnd vdd FILL
XFILL_0__1526_ gnd vdd FILL
XFILL_0__1106_ gnd vdd FILL
XFILL_2__1297_ gnd vdd FILL
XFILL_1__1440_ gnd vdd FILL
XFILL_1__1020_ gnd vdd FILL
X_1295_ _513_ _515_ _503_ _16_ vdd gnd OAI21X1
XFILL_0__1335_ gnd vdd FILL
XFILL_1__886_ gnd vdd FILL
XFILL_0__1564_ gnd vdd FILL
XFILL_0__1144_ gnd vdd FILL
XFILL_1__1725_ gnd vdd FILL
XFILL_1__1305_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert26 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert28 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
XFILL_0__1373_ gnd vdd FILL
XFILL_1__1534_ gnd vdd FILL
XFILL_1__1114_ gnd vdd FILL
X_1389_ Acalc[9] _188__bF$buf4 _603_ vdd gnd NAND2X1
XFILL88350x75750 gnd vdd FILL
XFILL_2__1603_ gnd vdd FILL
XFILL_0__1429_ gnd vdd FILL
XFILL_0__1009_ gnd vdd FILL
XFILL_2__958_ gnd vdd FILL
XFILL_0__1182_ gnd vdd FILL
X_1601_ Stg_2_bF$buf0 _484_ _771_ _772_ vdd gnd OAI21X1
X_932_ Xin0[1] Stg_0_bF$buf6 _169_ vdd gnd NAND2X1
XFILL_1__1343_ gnd vdd FILL
X_1198_ _422_ _423_ _424_ _425_ vdd gnd NAND3X1
XFILL_0__1658_ gnd vdd FILL
XFILL_0__1238_ gnd vdd FILL
X_1410_ Acalc[11] _188__bF$buf4 _622_ vdd gnd NAND2X1
XFILL_1__1572_ gnd vdd FILL
XFILL_1__1152_ gnd vdd FILL
XBUFX2_insert30 Stg[2] Stg_2_bF$buf4 vdd gnd BUFX2
XBUFX2_insert31 Stg[2] Stg_2_bF$buf3 vdd gnd BUFX2
XBUFX2_insert32 Stg[2] Stg_2_bF$buf2 vdd gnd BUFX2
XBUFX2_insert33 Stg[2] Stg_2_bF$buf1 vdd gnd BUFX2
XBUFX2_insert34 Stg[2] Stg_2_bF$buf0 vdd gnd BUFX2
XBUFX2_insert35 LoadCtl[0] LoadCtl_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert36 LoadCtl[0] LoadCtl_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert37 LoadCtl[0] LoadCtl_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert38 LoadCtl[0] LoadCtl_0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert39 Stg[1] Stg_1_bF$buf3 vdd gnd BUFX2
XFILL_2__1221_ gnd vdd FILL
XFILL_0__1467_ gnd vdd FILL
XFILL_0__1047_ gnd vdd FILL
XFILL_1__1628_ gnd vdd FILL
XFILL_1__1208_ gnd vdd FILL
X_970_ Stg_0_bF$buf6 Xin1[0] _206_ vdd gnd NAND2X1
XFILL_1__1381_ gnd vdd FILL
XFILL_2__1450_ gnd vdd FILL
XFILL_2__1030_ gnd vdd FILL
XFILL_0__1696_ gnd vdd FILL
XFILL_0__1276_ gnd vdd FILL
XFILL_1__1437_ gnd vdd FILL
XFILL_1__1017_ gnd vdd FILL
XFILL_1__1190_ gnd vdd FILL
XFILL_0__1085_ gnd vdd FILL
X_1504_ Stg_2_bF$buf1 _676_ _677_ _678_ vdd gnd AOI21X1
XFILL_1__1666_ gnd vdd FILL
XFILL_1__1246_ gnd vdd FILL
X_1733_ _5_ clk_bF$buf0 Xcalc[3] vdd gnd DFFPOSX1
X_1313_ Ain12b_11_bF$buf0 _494_ _532_ vdd gnd NOR2X1
XFILL_1__1475_ gnd vdd FILL
XFILL_1__1055_ gnd vdd FILL
XFILL_2__1544_ gnd vdd FILL
XFILL_2__1124_ gnd vdd FILL
XFILL_2__899_ gnd vdd FILL
X_1542_ _164__bF$buf4 _221_ _715_ vdd gnd NAND2X1
X_1122_ _348_ _331_ _343_ _352_ vdd gnd OAI21X1
XFILL_0__870_ gnd vdd FILL
XFILL_1__904_ gnd vdd FILL
X_873_ LoadCtl_0_bF$buf2 LoadCtl[1] _116_ vdd gnd NOR2X1
XFILL_1__1284_ gnd vdd FILL
XFILL_0__1599_ gnd vdd FILL
XFILL_0__1179_ gnd vdd FILL
XFILL_0__926_ gnd vdd FILL
X_929_ Stg_0_bF$buf1 Xin1[1] _166_ vdd gnd NAND2X1
X_1771_ _43_ clk_bF$buf2 Yin12b[7] vdd gnd DFFPOSX1
X_1351_ Ain12b[6] _568_ vdd gnd INVX1
XFILL_1__1093_ gnd vdd FILL
XFILL_0__1811_ gnd vdd FILL
X_1407_ _615_ _619_ _620_ vdd gnd AND2X2
XFILL_1__1569_ gnd vdd FILL
XFILL_1__1149_ gnd vdd FILL
X_1580_ _751_ _729_ _752_ vdd gnd AND2X2
X_1160_ _382_ _387_ _389_ vdd gnd NOR2X1
XFILL_1__942_ gnd vdd FILL
XFILL_0__1620_ gnd vdd FILL
XFILL_0__1200_ gnd vdd FILL
XFILL_2__1391_ gnd vdd FILL
X_1636_ _803_ _804_ _805_ vdd gnd NAND2X1
X_1216_ _437_ _436_ _442_ vdd gnd AND2X2
XFILL_0__964_ gnd vdd FILL
X_967_ Stg_0_bF$buf4 Xin12b[4] _203_ vdd gnd NAND2X1
XFILL_1__1378_ gnd vdd FILL
XFILL_2__1447_ gnd vdd FILL
XFILL_2__1027_ gnd vdd FILL
X_1445_ Yin[1] _625_ _643_ vdd gnd NAND2X1
X_1025_ Stg_0_bF$buf2 Yin1[0] _259_ vdd gnd NAND2X1
XFILL_1__1187_ gnd vdd FILL
XFILL_1__980_ gnd vdd FILL
X_1674_ _840_ _837_ _841_ vdd gnd NOR2X1
X_1254_ _477_ _455_ _474_ _478_ vdd gnd OAI21X1
XFILL_0__1714_ gnd vdd FILL
X_1483_ Ain[1] _635_ _663_ vdd gnd NAND2X1
X_1063_ _269_ _249_ _201__bF$buf3 _296_ vdd gnd OAI21X1
XFILL_0__1523_ gnd vdd FILL
XFILL_0__1103_ gnd vdd FILL
XFILL_2__1294_ gnd vdd FILL
X_1539_ _678_ _199_ _224_ _712_ vdd gnd NAND3X1
X_1119_ _348_ _331_ _350_ vdd gnd NAND2X1
XFILL_0__867_ gnd vdd FILL
X_1292_ _512_ _505_ _513_ vdd gnd NOR2X1
XFILL_0__1332_ gnd vdd FILL
X_1768_ _40_ clk_bF$buf4 Yin12b[8] vdd gnd DFFPOSX1
X_1348_ _563_ _201__bF$buf0 _565_ vdd gnd AND2X2
XFILL_0__1808_ gnd vdd FILL
XFILL_1__883_ gnd vdd FILL
XFILL_0__1561_ gnd vdd FILL
XFILL_0__1141_ gnd vdd FILL
XFILL_1__1722_ gnd vdd FILL
XFILL_1__1302_ gnd vdd FILL
X_1577_ _748_ _747_ Yin12b[4] _749_ vdd gnd OAI21X1
X_1157_ _384_ _366_ _385_ _386_ vdd gnd AOI21X1
XFILL_1__939_ gnd vdd FILL
XFILL_0__1617_ gnd vdd FILL
XFILL_0__1370_ gnd vdd FILL
XFILL_2__1388_ gnd vdd FILL
XFILL_1__1531_ gnd vdd FILL
XFILL_1__1111_ gnd vdd FILL
X_1386_ _599_ _601_ vdd gnd INVX1
XFILL_2__1600_ gnd vdd FILL
XFILL_0__1426_ gnd vdd FILL
XFILL_0__1006_ gnd vdd FILL
XFILL_2__955_ gnd vdd FILL
XFILL_1__1340_ gnd vdd FILL
X_1195_ Xin12b[8] _422_ vdd gnd INVX1
XFILL_1__977_ gnd vdd FILL
XFILL_0__1655_ gnd vdd FILL
XFILL_0__1235_ gnd vdd FILL
XFILL_0__999_ gnd vdd FILL
XFILL_0__1464_ gnd vdd FILL
XFILL_0__1044_ gnd vdd FILL
XFILL_1__1625_ gnd vdd FILL
XFILL_1__1205_ gnd vdd FILL
XFILL_0__1693_ gnd vdd FILL
XFILL_0__1273_ gnd vdd FILL
XFILL_1__1434_ gnd vdd FILL
XFILL_1__1014_ gnd vdd FILL
X_1289_ _508_ Ain1[0] _510_ vdd gnd OR2X2
XFILL_0__1329_ gnd vdd FILL
XFILL_0__1082_ gnd vdd FILL
X_1501_ Xin12b[9] Xin12b[8] Stg_0_bF$buf3 _675_ vdd gnd MUX2X1
XFILL_1__1663_ gnd vdd FILL
XFILL_1__1243_ gnd vdd FILL
X_1098_ _328_ _329_ _192_ _330_ vdd gnd AOI21X1
XFILL_0__1558_ gnd vdd FILL
XFILL_0__1138_ gnd vdd FILL
XFILL_1__1719_ gnd vdd FILL
XFILL88350x61350 gnd vdd FILL
X_1730_ _2_ clk_bF$buf7 Xcalc[0] vdd gnd DFFPOSX1
X_1310_ Acalc[3] _188__bF$buf0 _530_ vdd gnd NAND2X1
XFILL_1__1472_ gnd vdd FILL
XFILL_1__1052_ gnd vdd FILL
XFILL_2__1541_ gnd vdd FILL
XFILL_2__1121_ gnd vdd FILL
XFILL_0__1367_ gnd vdd FILL
XFILL_1__1528_ gnd vdd FILL
XFILL_1__1108_ gnd vdd FILL
XFILL_1__901_ gnd vdd FILL
X_870_ LoadCtl[3] _112_ _113_ vdd gnd NAND2X1
XFILL_1__1281_ gnd vdd FILL
XFILL_0__1596_ gnd vdd FILL
XFILL_0__1176_ gnd vdd FILL
XFILL_0__923_ gnd vdd FILL
X_926_ Yin0[0] _163_ vdd gnd INVX1
XFILL_1__1337_ gnd vdd FILL
XFILL_1__1090_ gnd vdd FILL
X_1404_ Ain12b_11_bF$buf2 _616_ _617_ vdd gnd NAND2X1
XFILL_1__1566_ gnd vdd FILL
XFILL_1__1146_ gnd vdd FILL
XFILL87450x86550 gnd vdd FILL
X_1633_ _201__bF$buf5 _801_ _799_ _802_ vdd gnd NAND3X1
X_1213_ _437_ _436_ _439_ vdd gnd OR2X2
XFILL_0__961_ gnd vdd FILL
X_964_ Yin0[1] _200_ vdd gnd INVX1
XFILL_1__1375_ gnd vdd FILL
XFILL_2__1444_ gnd vdd FILL
XFILL_2__1024_ gnd vdd FILL
X_1442_ LoadCtl_0_bF$buf0 _205_ _641_ _37_ vdd gnd OAI21X1
X_1022_ Yin1[1] _256_ vdd gnd INVX1
XFILL_1__1184_ gnd vdd FILL
XFILL_0__1499_ gnd vdd FILL
XFILL_0__1079_ gnd vdd FILL
X_1671_ _837_ _838_ _839_ vdd gnd OR2X2
X_1251_ _474_ _475_ vdd gnd INVX1
XFILL_0__1711_ gnd vdd FILL
X_1727_ _95_ _105_ _72_ vdd gnd NAND2X1
X_1307_ _523_ _527_ vdd gnd INVX1
XFILL_1__1469_ gnd vdd FILL
XFILL_1__1049_ gnd vdd FILL
X_1480_ _660_ _632_ _661_ _55_ vdd gnd AOI21X1
X_1060_ _236_ _292_ _293_ vdd gnd NAND2X1
XFILL_0__1520_ gnd vdd FILL
XFILL_0__1100_ gnd vdd FILL
XFILL_2__1291_ gnd vdd FILL
X_1536_ _707_ _709_ vdd gnd INVX2
X_1116_ _343_ _346_ _347_ vdd gnd AND2X2
XFILL_0__864_ gnd vdd FILL
X_867_ Acalc[6] _110_ vdd gnd INVX1
XFILL88650x36150 gnd vdd FILL
XFILL_1__1698_ gnd vdd FILL
XFILL_1__1278_ gnd vdd FILL
XFILL_2__1347_ gnd vdd FILL
X_1765_ _37_ clk_bF$buf5 Xin0[1] vdd gnd DFFPOSX1
X_1345_ _539_ _560_ _561_ _562_ vdd gnd AOI21X1
XFILL_1__1087_ gnd vdd FILL
XFILL_1__880_ gnd vdd FILL
X_1574_ _244_ _742_ _745_ _746_ vdd gnd NAND3X1
X_1154_ _363_ _366_ _347_ _383_ vdd gnd NAND3X1
XFILL_1__936_ gnd vdd FILL
XFILL_0__1614_ gnd vdd FILL
XFILL_0__958_ gnd vdd FILL
X_1383_ _596_ _560_ _598_ vdd gnd NAND2X1
XFILL_0__1423_ gnd vdd FILL
XFILL_0__1003_ gnd vdd FILL
XFILL_2__952_ gnd vdd FILL
XFILL_2__1194_ gnd vdd FILL
X_1439_ LoadCtl_0_bF$buf0 Xin[0] _640_ vdd gnd NAND2X1
X_1019_ _253_ _250_ _233_ _2_ vdd gnd OAI21X1
X_1192_ _401_ _394_ _201__bF$buf4 _419_ vdd gnd OAI21X1
XFILL_1__974_ gnd vdd FILL
XFILL_0__1652_ gnd vdd FILL
XFILL_0__1232_ gnd vdd FILL
XFILL_1__1813_ gnd vdd FILL
X_1668_ _832_ _835_ _836_ vdd gnd AND2X2
X_1248_ Yin12b[11] _471_ _472_ vdd gnd NAND2X1
XFILL_0__996_ gnd vdd FILL
X_999_ Yin1[0] _234_ vdd gnd INVX1
XFILL_0__1708_ gnd vdd FILL
XFILL_0__1461_ gnd vdd FILL
XFILL_0__1041_ gnd vdd FILL
XFILL_1__1622_ gnd vdd FILL
XFILL_1__1202_ gnd vdd FILL
X_1477_ _568_ _632_ _659_ _54_ vdd gnd OAI21X1
X_1057_ _289_ _290_ vdd gnd INVX1
XFILL_0__1517_ gnd vdd FILL
XFILL_0__1690_ gnd vdd FILL
XFILL_2__1288_ gnd vdd FILL
XFILL_0__1270_ gnd vdd FILL
XFILL_1__1431_ gnd vdd FILL
XFILL_1__1011_ gnd vdd FILL
X_1286_ Stg_2_bF$buf0 _484_ _506_ _507_ vdd gnd NAND3X1
XFILL_2__1500_ gnd vdd FILL
XFILL_0__1326_ gnd vdd FILL
XFILL_1_BUFX2_insert30 gnd vdd FILL
XFILL_1_BUFX2_insert31 gnd vdd FILL
XFILL_1_BUFX2_insert32 gnd vdd FILL
XFILL_1_BUFX2_insert33 gnd vdd FILL
XFILL_1_BUFX2_insert34 gnd vdd FILL
XFILL_1_BUFX2_insert35 gnd vdd FILL
XFILL_1_BUFX2_insert36 gnd vdd FILL
XFILL_1_BUFX2_insert37 gnd vdd FILL
XFILL_1_BUFX2_insert38 gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
XFILL_0_CLKBUF1_insert12 gnd vdd FILL
XFILL_0_CLKBUF1_insert13 gnd vdd FILL
XFILL_0_CLKBUF1_insert14 gnd vdd FILL
XFILL_0_CLKBUF1_insert15 gnd vdd FILL
XFILL_0_CLKBUF1_insert16 gnd vdd FILL
XFILL_0_CLKBUF1_insert17 gnd vdd FILL
XFILL_0_CLKBUF1_insert18 gnd vdd FILL
XFILL_0_CLKBUF1_insert19 gnd vdd FILL
XFILL_1__1660_ gnd vdd FILL
XFILL_1__1240_ gnd vdd FILL
X_1095_ _326_ _325_ _327_ vdd gnd NAND2X1
XFILL_1__877_ gnd vdd FILL
XFILL_0__1555_ gnd vdd FILL
XFILL_0__1135_ gnd vdd FILL
XFILL_1__1716_ gnd vdd FILL
XFILL_0__899_ gnd vdd FILL
XFILL88350x82950 gnd vdd FILL
XFILL_0__1364_ gnd vdd FILL
XFILL_1__1525_ gnd vdd FILL
XFILL_1__1105_ gnd vdd FILL
XFILL87150x64950 gnd vdd FILL
XFILL_2__949_ gnd vdd FILL
XFILL_0__1593_ gnd vdd FILL
XFILL_0__1173_ gnd vdd FILL
XFILL_0__920_ gnd vdd FILL
X_923_ LoadCtl_0_bF$buf3 Xcalc[1] _119_ Xcalc[3] _161_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1334_ gnd vdd FILL
X_1189_ Stg_2_bF$buf4 _414_ _415_ _416_ vdd gnd OAI21X1
XFILL_0__1649_ gnd vdd FILL
XFILL_0__1229_ gnd vdd FILL
X_1401_ _613_ _614_ vdd gnd INVX1
XFILL_1__1563_ gnd vdd FILL
XFILL_1__1143_ gnd vdd FILL
XFILL_0__1458_ gnd vdd FILL
XFILL_0__1038_ gnd vdd FILL
XFILL_1__1619_ gnd vdd FILL
X_1630_ _780_ _779_ _799_ vdd gnd NAND2X1
X_1210_ _435_ _183__bF$buf2 _395_ _436_ vdd gnd AOI21X1
X_961_ Xin12b[5] Xin12b[4] Stg_0_bF$buf4 _197_ vdd gnd MUX2X1
XFILL_1__1372_ gnd vdd FILL
XFILL_2__1441_ gnd vdd FILL
XFILL_2__1021_ gnd vdd FILL
XFILL_0__1687_ gnd vdd FILL
XFILL_0__1267_ gnd vdd FILL
XFILL_1__1428_ gnd vdd FILL
XFILL_1__1008_ gnd vdd FILL
XFILL_1__1181_ gnd vdd FILL
XFILL_0__1496_ gnd vdd FILL
XFILL_0__1076_ gnd vdd FILL
XFILL_1_BUFX2_insert0 gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
XFILL_1__1657_ gnd vdd FILL
XFILL_1__1237_ gnd vdd FILL
X_1724_ _92_ _87_ _96_ _103_ vdd gnd AOI21X1
X_1304_ _518_ _522_ _524_ vdd gnd NAND2X1
XFILL_1__1466_ gnd vdd FILL
XFILL_1__1046_ gnd vdd FILL
X_1533_ Stg_1_bF$buf1 _574_ LoadCtl_6_bF$buf3 _707_ vdd gnd OAI21X1
X_1113_ _322_ _310_ _201__bF$buf0 _344_ vdd gnd OAI21X1
X_864_ LoadCtl[4] Acalc[8] _107_ vdd gnd NAND2X1
XFILL_1__1695_ gnd vdd FILL
XFILL_1__1275_ gnd vdd FILL
XFILL_2__1344_ gnd vdd FILL
XFILL_0__917_ gnd vdd FILL
XFILL88650x57750 gnd vdd FILL
X_1762_ _34_ clk_bF$buf2 Xin1[0] vdd gnd DFFPOSX1
X_1342_ _557_ _559_ _544_ _19_ vdd gnd OAI21X1
XFILL_1__1084_ gnd vdd FILL
XFILL87450x39750 gnd vdd FILL
XFILL_0__1399_ gnd vdd FILL
X_1571_ _719_ _712_ _743_ vdd gnd NOR2X1
X_1151_ Xin12b[6] _379_ _380_ vdd gnd NAND2X1
XFILL_1__933_ gnd vdd FILL
XFILL_0__1611_ gnd vdd FILL
X_1627_ _794_ _766_ _795_ _796_ vdd gnd AOI21X1
X_1207_ Xcalc[9] _433_ vdd gnd INVX1
XFILL_0__955_ gnd vdd FILL
X_958_ Xin0[1] Xin0[0] Stg_0_bF$buf6 _194_ vdd gnd MUX2X1
XFILL_1__1369_ gnd vdd FILL
X_1380_ _570_ _582_ _595_ vdd gnd OR2X2
XFILL_2__1438_ gnd vdd FILL
XFILL_0__1420_ gnd vdd FILL
XFILL_2__1018_ gnd vdd FILL
XFILL_0__1000_ gnd vdd FILL
XFILL_2__1191_ gnd vdd FILL
X_1436_ _165_ _119_ _638_ _34_ vdd gnd OAI21X1
X_1016_ _247_ _251_ vdd gnd INVX1
XFILL_1__1598_ gnd vdd FILL
XFILL_1__1178_ gnd vdd FILL
XFILL_1__971_ gnd vdd FILL
XFILL_2__1667_ gnd vdd FILL
XFILL_2__1247_ gnd vdd FILL
XFILL_1__1810_ gnd vdd FILL
X_1665_ _803_ _799_ _201__bF$buf5 _833_ vdd gnd OAI21X1
X_1245_ _466_ _469_ _470_ vdd gnd NAND2X1
XFILL_0__993_ gnd vdd FILL
X_996_ _231_ _230_ _192_ _232_ vdd gnd AOI21X1
XFILL_0__1705_ gnd vdd FILL
X_1474_ Ain[1] _629_ _658_ vdd gnd NAND2X1
X_1054_ _164__bF$buf4 _243_ _287_ vdd gnd NAND2X1
XFILL_0__1514_ gnd vdd FILL
XFILL_2__1285_ gnd vdd FILL
X_1283_ Ain0[1] _504_ vdd gnd INVX1
XFILL_0__1323_ gnd vdd FILL
XFILL_2__1094_ gnd vdd FILL
X_1759_ _31_ clk_bF$buf6 Xin12b[7] vdd gnd DFFPOSX1
X_1339_ _556_ _545_ _557_ vdd gnd NOR2X1
X_1092_ _323_ _320_ _202_ _324_ vdd gnd AOI21X1
XFILL_1__874_ gnd vdd FILL
XFILL_2__908_ gnd vdd FILL
XFILL_0__1552_ gnd vdd FILL
XFILL_0__1132_ gnd vdd FILL
XFILL_1__1713_ gnd vdd FILL
X_1568_ Stg_2_bF$buf3 _739_ _740_ vdd gnd NAND2X1
X_1148_ _201__bF$buf1 _376_ _372_ _377_ vdd gnd NAND3X1
XFILL_0__896_ gnd vdd FILL
X_899_ Ycalc[11] _137_ _139_ vdd gnd NAND2X1
XFILL_0__1608_ gnd vdd FILL
XFILL_0__1361_ gnd vdd FILL
XFILL_1__1522_ gnd vdd FILL
XFILL_1__1102_ gnd vdd FILL
XFILL_2_BUFX2_insert50 gnd vdd FILL
XFILL_2_BUFX2_insert53 gnd vdd FILL
XFILL_2_BUFX2_insert56 gnd vdd FILL
XFILL_2_BUFX2_insert58 gnd vdd FILL
X_1797_ _62_ clk_bF$buf3 _860_ vdd gnd DFFPOSX1
X_1377_ _591_ _589_ _592_ vdd gnd NAND2X1
XFILL_0__1417_ gnd vdd FILL
XFILL_0__1590_ gnd vdd FILL
XFILL_0__1170_ gnd vdd FILL
XFILL_2__1188_ gnd vdd FILL
X_920_ Xcalc[5] _158_ vdd gnd INVX1
XFILL_1__1331_ gnd vdd FILL
X_1186_ _376_ _396_ _371_ _413_ vdd gnd NAND3X1
XFILL_1__968_ gnd vdd FILL
XFILL_2__1400_ gnd vdd FILL
XFILL_0__1646_ gnd vdd FILL
XFILL_0__1226_ gnd vdd FILL
XFILL_1__1560_ gnd vdd FILL
XFILL_1__1140_ gnd vdd FILL
XFILL_0__1455_ gnd vdd FILL
XFILL_0__1035_ gnd vdd FILL
XFILL_1__1616_ gnd vdd FILL
XFILL_0__1684_ gnd vdd FILL
XFILL_0__1264_ gnd vdd FILL
XFILL_1__1425_ gnd vdd FILL
XFILL_1__1005_ gnd vdd FILL
XFILL_0__1493_ gnd vdd FILL
XFILL_0__1073_ gnd vdd FILL
XFILL_1__1654_ gnd vdd FILL
XFILL_1__1234_ gnd vdd FILL
X_1089_ _310_ _321_ vdd gnd INVX1
XFILL_0__1549_ gnd vdd FILL
XFILL_0__1129_ gnd vdd FILL
X_1721_ _98_ _99_ _100_ vdd gnd NAND2X1
X_1301_ Stg_2_bF$buf0 Stg_1_bF$buf1 Ain12b_11_bF$buf4 _521_ vdd gnd OAI21X1
XFILL_1__1463_ gnd vdd FILL
XFILL_1__1043_ gnd vdd FILL
XFILL_0__1358_ gnd vdd FILL
XFILL_1__1519_ gnd vdd FILL
X_1530_ _703_ _704_ vdd gnd INVX1
X_1110_ _340_ _341_ vdd gnd INVX1
XFILL_1__1692_ gnd vdd FILL
XFILL_1__1272_ gnd vdd FILL
XFILL_2__1341_ gnd vdd FILL
XFILL_0__1587_ gnd vdd FILL
XFILL_0__1167_ gnd vdd FILL
XFILL_0__914_ gnd vdd FILL
X_917_ LoadCtl[4] Xcalc[9] _155_ vdd gnd NAND2X1
XFILL_1__1328_ gnd vdd FILL
XFILL_1__1081_ gnd vdd FILL
XFILL_0__1396_ gnd vdd FILL
X_1815_ _862_[1] Yout[1] vdd gnd BUFX2
XFILL_1__1557_ gnd vdd FILL
XFILL_1__1137_ gnd vdd FILL
XFILL_1__930_ gnd vdd FILL
X_1624_ _768_ _766_ _792_ _793_ vdd gnd NAND3X1
X_1204_ _430_ _431_ vdd gnd INVX1
XFILL_0__952_ gnd vdd FILL
X_955_ _183__bF$buf3 _190_ _191_ vdd gnd NAND2X1
XFILL_1__1366_ gnd vdd FILL
X_1433_ Xin[1] _635_ _637_ vdd gnd NAND2X1
X_1013_ Stg_2_bF$buf2 _247_ _248_ vdd gnd NAND2X1
XFILL_1__1595_ gnd vdd FILL
XFILL_1__1175_ gnd vdd FILL
XFILL_2__1664_ gnd vdd FILL
XFILL_2__1244_ gnd vdd FILL
X_1662_ _829_ _830_ vdd gnd INVX1
X_1242_ _462_ _467_ vdd gnd INVX1
XFILL_0__990_ gnd vdd FILL
X_993_ _227_ _228_ _229_ vdd gnd AND2X2
XFILL_0__1702_ gnd vdd FILL
XFILL_0__1299_ gnd vdd FILL
X_1718_ _858_ _76_ _201__bF$buf2 _97_ vdd gnd OAI21X1
X_1471_ _201__bF$buf1 _625_ _656_ _51_ vdd gnd OAI21X1
X_1051_ Yin12b[9] _284_ vdd gnd INVX1
XFILL_0__1511_ gnd vdd FILL
XFILL88650x43350 gnd vdd FILL
X_1527_ _700_ _701_ vdd gnd INVX1
X_1107_ Stg_2_bF$buf4 _247_ _337_ _338_ vdd gnd OAI21X1
XFILL_1__1689_ gnd vdd FILL
XFILL_1__1269_ gnd vdd FILL
X_1280_ LoadCtl_6_bF$buf4 _501_ _502_ vdd gnd NAND2X1
XFILL_2__1338_ gnd vdd FILL
XFILL_0__1320_ gnd vdd FILL
XFILL_2__1091_ gnd vdd FILL
X_1756_ _28_ clk_bF$buf4 Xin12b[8] vdd gnd DFFPOSX1
X_1336_ _549_ _547_ _553_ _554_ vdd gnd OAI21X1
XFILL_1__1498_ gnd vdd FILL
XFILL_1__1078_ gnd vdd FILL
XFILL_1__871_ gnd vdd FILL
XFILL_2__905_ gnd vdd FILL
XFILL_1__1710_ gnd vdd FILL
X_1565_ Stg_0_bF$buf5 _458_ _736_ _737_ vdd gnd OAI21X1
X_1145_ _183__bF$buf1 _288_ _374_ vdd gnd NAND2X1
XFILL_0__893_ gnd vdd FILL
XFILL_1__927_ gnd vdd FILL
X_896_ _117_ _135_ _136_ _862_[0] vdd gnd OAI21X1
XFILL_0__1605_ gnd vdd FILL
XFILL_0__949_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_2_BUFX2_insert22 gnd vdd FILL
XFILL_2_BUFX2_insert25 gnd vdd FILL
XFILL_2_BUFX2_insert28 gnd vdd FILL
X_1794_ LoadCtl[3] clk_bF$buf7 LoadCtl[4] vdd gnd DFFPOSX1
X_1374_ Ain12b[8] _588_ _589_ vdd gnd NAND2X1
XFILL_0__1414_ gnd vdd FILL
XFILL_2__1185_ gnd vdd FILL
X_1183_ _409_ _400_ _410_ vdd gnd AND2X2
XFILL_1__965_ gnd vdd FILL
XFILL_0__1643_ gnd vdd FILL
XFILL_0__1223_ gnd vdd FILL
X_1659_ Stg_2_bF$buf3 _825_ _826_ _827_ vdd gnd OAI21X1
X_1239_ _440_ _444_ _426_ _464_ vdd gnd NAND3X1
XFILL_0__987_ gnd vdd FILL
XFILL_0__1452_ gnd vdd FILL
XFILL_0__1032_ gnd vdd FILL
XFILL_1__1613_ gnd vdd FILL
X_1468_ Ain[0] _625_ _655_ vdd gnd NAND2X1
X_1048_ Xcalc[2] _188__bF$buf4 _281_ vdd gnd NAND2X1
XFILL_0__1508_ gnd vdd FILL
XFILL_0__1681_ gnd vdd FILL
XFILL_0__1261_ gnd vdd FILL
XFILL_1__1422_ gnd vdd FILL
XFILL_1__1002_ gnd vdd FILL
X_1697_ _76_ _201__bF$buf2 _858_ _77_ vdd gnd AOI21X1
X_1277_ _498_ _497_ _499_ vdd gnd NAND2X1
XFILL_0__1317_ gnd vdd FILL
XFILL_0__1490_ gnd vdd FILL
XFILL_0__1070_ gnd vdd FILL
XFILL_2__1088_ gnd vdd FILL
XFILL_1__1651_ gnd vdd FILL
XFILL_1__1231_ gnd vdd FILL
X_1086_ _316_ _317_ _318_ vdd gnd NAND2X1
XFILL_1__868_ gnd vdd FILL
XFILL_0__1546_ gnd vdd FILL
XFILL_0__1126_ gnd vdd FILL
XFILL_1__1707_ gnd vdd FILL
XFILL_1__1460_ gnd vdd FILL
XFILL_1__1040_ gnd vdd FILL
XFILL_0__1355_ gnd vdd FILL
XFILL_1__1516_ gnd vdd FILL
XFILL_0__1584_ gnd vdd FILL
XFILL_0__1164_ gnd vdd FILL
XFILL_0__911_ gnd vdd FILL
X_914_ LoadCtl_0_bF$buf3 Xcalc[0] _119_ Xcalc[2] _153_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1325_ gnd vdd FILL
XFILL_0__1393_ gnd vdd FILL
X_1812_ _861_[0] Xout[0] vdd gnd BUFX2
XFILL_1__1554_ gnd vdd FILL
XFILL_1__1134_ gnd vdd FILL
XFILL_0__1449_ gnd vdd FILL
XFILL_0__1029_ gnd vdd FILL
X_1621_ _132_ _188__bF$buf2 _790_ _709_ _67_ vdd 
+ gnd
+ AOI22X1
X_1201_ _427_ _428_ vdd gnd INVX1
X_952_ LoadCtl_6_bF$buf4 _188_ vdd gnd INVX8
XFILL_1__1363_ gnd vdd FILL
XFILL_0__1678_ gnd vdd FILL
XFILL_0__1258_ gnd vdd FILL
XFILL_1__1419_ gnd vdd FILL
X_1430_ _112_ _117_ _635_ vdd gnd NOR2X1
X_1010_ Stg_0_bF$buf2 Yin12b[5] _245_ vdd gnd NAND2X1
XFILL88350x21750 gnd vdd FILL
XFILL_1__1592_ gnd vdd FILL
XFILL_1__1172_ gnd vdd FILL
XFILL_2__1661_ gnd vdd FILL
XFILL_2__1241_ gnd vdd FILL
XFILL_0__1487_ gnd vdd FILL
XFILL_0__1067_ gnd vdd FILL
XFILL_1__1648_ gnd vdd FILL
XFILL_1__1228_ gnd vdd FILL
X_990_ _225_ _217_ _200_ _226_ vdd gnd AOI21X1
XFILL_2__1717_ gnd vdd FILL
XFILL_0__1296_ gnd vdd FILL
X_1715_ _129_ _188__bF$buf2 _94_ _709_ _71_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1457_ gnd vdd FILL
XFILL_1__1037_ gnd vdd FILL
X_1524_ Ain12b_11_bF$buf4 _696_ _697_ _698_ vdd gnd OAI21X1
X_1104_ Stg_1_bF$buf3 _334_ _335_ vdd gnd NAND2X1
XFILL_1__1686_ gnd vdd FILL
XFILL_1__1266_ gnd vdd FILL
XFILL88650x64950 gnd vdd FILL
XFILL_0__908_ gnd vdd FILL
XFILL87450x46950 gnd vdd FILL
X_1753_ _25_ clk_bF$buf7 Acalc[11] vdd gnd DFFPOSX1
X_1333_ _550_ Ain12b[5] _551_ vdd gnd AND2X2
XFILL_1__1495_ gnd vdd FILL
XFILL_1__1075_ gnd vdd FILL
XFILL_2__902_ gnd vdd FILL
XFILL_2__1564_ gnd vdd FILL
XFILL_2__1144_ gnd vdd FILL
X_1809_ _859_[1] Aout[1] vdd gnd BUFX2
X_1562_ _708_ _188__bF$buf2 _734_ _709_ _64_ vdd 
+ gnd
+ AOI22X1
X_1142_ _338_ _359_ _332_ _371_ vdd gnd NOR3X1
XFILL_0__890_ gnd vdd FILL
XFILL_1__924_ gnd vdd FILL
X_893_ _112_ _133_ _132_ _113_ _134_ vdd 
+ gnd
+ OAI22X1
XFILL_0__1602_ gnd vdd FILL
XFILL_0__1199_ gnd vdd FILL
X_1618_ _787_ _755_ _766_ _788_ vdd gnd OAI21X1
XFILL_0__946_ gnd vdd FILL
X_949_ _185_ _186_ vdd gnd INVX2
X_1791_ LoadCtl_0_bF$buf0 clk_bF$buf5 LoadCtl[1] vdd gnd DFFPOSX1
X_1371_ _201__bF$buf3 _292_ _586_ vdd gnd NAND2X1
XFILL_0__1411_ gnd vdd FILL
X_1427_ _172_ _632_ _633_ _30_ vdd gnd OAI21X1
X_1007_ Stg_0_bF$buf0 Yin12b[7] _242_ vdd gnd NAND2X1
XFILL_1__1589_ gnd vdd FILL
XFILL_1__1169_ gnd vdd FILL
X_1180_ _157_ _188__bF$buf3 _406_ _407_ _9_ vdd 
+ gnd
+ AOI22X1
XFILL_1__962_ gnd vdd FILL
XFILL_2__1658_ gnd vdd FILL
XFILL_0__1640_ gnd vdd FILL
XFILL_0__1220_ gnd vdd FILL
XFILL_2__1238_ gnd vdd FILL
X_1656_ _780_ _801_ _779_ _824_ vdd gnd NAND3X1
X_1236_ _459_ _460_ _458_ _461_ vdd gnd OAI21X1
XFILL_0__984_ gnd vdd FILL
X_987_ _222_ _221_ _164__bF$buf4 _223_ vdd gnd MUX2X1
XFILL_1__1398_ gnd vdd FILL
XFILL_1__1610_ gnd vdd FILL
X_1465_ LoadCtl_0_bF$buf1 _163_ _653_ _48_ vdd gnd OAI21X1
X_1045_ _273_ _278_ _277_ _279_ vdd gnd OAI21X1
XFILL_0__1505_ gnd vdd FILL
X_1694_ _843_ _847_ _201__bF$buf2 _74_ vdd gnd OAI21X1
X_1274_ Ain12b_11_bF$buf2 _494_ _495_ _496_ vdd gnd OAI21X1
XFILL_0__1314_ gnd vdd FILL
XFILL_2__1085_ gnd vdd FILL
X_1083_ _164__bF$buf3 _313_ _314_ _315_ vdd gnd OAI21X1
XFILL_1__865_ gnd vdd FILL
XFILL_0__1543_ gnd vdd FILL
XFILL_0__1123_ gnd vdd FILL
XFILL_1__1704_ gnd vdd FILL
XFILL87750x54150 gnd vdd FILL
X_1559_ _729_ _731_ _732_ vdd gnd NAND2X1
X_1139_ _352_ _368_ _369_ vdd gnd AND2X2
XFILL_0__887_ gnd vdd FILL
XFILL_0__1352_ gnd vdd FILL
XFILL_1__1513_ gnd vdd FILL
X_1788_ _60_ clk_bF$buf0 Ain0[0] vdd gnd DFFPOSX1
X_1368_ _573_ _582_ _188__bF$buf3 _584_ vdd gnd AOI21X1
XFILL_0__1408_ gnd vdd FILL
XFILL_0__1581_ gnd vdd FILL
XFILL_0__1161_ gnd vdd FILL
X_911_ Xcalc[4] _150_ vdd gnd INVX1
XFILL_1__1322_ gnd vdd FILL
X_1597_ _763_ _767_ Yin12b[5] _768_ vdd gnd OAI21X1
X_1177_ _400_ _404_ _405_ vdd gnd AND2X2
XFILL_1__959_ gnd vdd FILL
XFILL_2__1811_ gnd vdd FILL
XFILL_0__1637_ gnd vdd FILL
XFILL_0__1217_ gnd vdd FILL
XFILL_0__1390_ gnd vdd FILL
XFILL_1__1551_ gnd vdd FILL
XFILL_1__1131_ gnd vdd FILL
XFILL_0__1446_ gnd vdd FILL
XFILL_0__1026_ gnd vdd FILL
XFILL_1__1607_ gnd vdd FILL
XFILL_1__1360_ gnd vdd FILL
XFILL_1__997_ gnd vdd FILL
XFILL_0__1675_ gnd vdd FILL
XFILL_0__1255_ gnd vdd FILL
XFILL_1__1416_ gnd vdd FILL
XFILL_0__1484_ gnd vdd FILL
XFILL_0__1064_ gnd vdd FILL
XFILL_1__1645_ gnd vdd FILL
XFILL_1__1225_ gnd vdd FILL
XFILL_2__1714_ gnd vdd FILL
XFILL_0__1293_ gnd vdd FILL
X_1712_ _91_ _90_ _84_ _92_ vdd gnd OAI21X1
XFILL_1__1454_ gnd vdd FILL
XFILL_1__1034_ gnd vdd FILL
XFILL88050x54150 gnd vdd FILL
XFILL_0__1349_ gnd vdd FILL
X_1521_ Stg_2_bF$buf1 _693_ _694_ _695_ vdd gnd NAND3X1
X_1101_ _295_ _319_ _298_ _332_ vdd gnd NAND3X1
XFILL_1__1683_ gnd vdd FILL
XFILL_1__1263_ gnd vdd FILL
XFILL_0__1578_ gnd vdd FILL
XFILL_0__1158_ gnd vdd FILL
XFILL_0__905_ gnd vdd FILL
X_908_ LoadCtl[4] Xcalc[8] _147_ vdd gnd NAND2X1
XFILL_1__1319_ gnd vdd FILL
X_1750_ _22_ clk_bF$buf7 Acalc[8] vdd gnd DFFPOSX1
X_1330_ Stg_0_bF$buf1 Stg_1_bF$buf2 _184_ _548_ vdd gnd OAI21X1
XFILL_1__1492_ gnd vdd FILL
XFILL_1__1072_ gnd vdd FILL
XFILL_2__1808_ gnd vdd FILL
XFILL_2__1561_ gnd vdd FILL
XFILL_2__1141_ gnd vdd FILL
XFILL_0__1387_ gnd vdd FILL
X_1806_ _71_ clk_bF$buf1 Ycalc[10] vdd gnd DFFPOSX1
XFILL_1__1548_ gnd vdd FILL
XFILL_1__1128_ gnd vdd FILL
XFILL_1__921_ gnd vdd FILL
X_890_ LoadCtl[4] _129_ _130_ _131_ vdd gnd OAI21X1
XFILL_2__1617_ gnd vdd FILL
XFILL_0__1196_ gnd vdd FILL
X_1615_ Yin12b[6] _783_ _784_ _785_ vdd gnd NAND3X1
XFILL_0__943_ gnd vdd FILL
X_946_ Stg_2_bF$buf3 _183_ vdd gnd INVX4
XFILL_1__1357_ gnd vdd FILL
X_1424_ _441_ _629_ _631_ _29_ vdd gnd OAI21X1
X_1004_ _238_ _236_ _164__bF$buf1 _239_ vdd gnd MUX2X1
XFILL_1__1586_ gnd vdd FILL
XFILL_1__1166_ gnd vdd FILL
XFILL_2__1655_ gnd vdd FILL
XFILL_2__1235_ gnd vdd FILL
X_1653_ Yin12b[7] _802_ _805_ _821_ vdd gnd NAND3X1
X_1233_ Xin12b[10] _458_ vdd gnd INVX1
XFILL_0__981_ gnd vdd FILL
X_984_ _219_ _218_ _164__bF$buf2 _220_ vdd gnd MUX2X1
XFILL_1__1395_ gnd vdd FILL
XFILL_2__1464_ gnd vdd FILL
X_1709_ _786_ _806_ _809_ _89_ vdd gnd NOR3X1
XFILL88650x50550 gnd vdd FILL
X_1462_ Yin[1] _119_ _652_ vdd gnd NAND2X1
X_1042_ _255_ _275_ _274_ _276_ vdd gnd NAND3X1
XFILL_0__1502_ gnd vdd FILL
XFILL_0__1099_ gnd vdd FILL
X_1518_ _183__bF$buf1 _690_ _691_ _692_ vdd gnd NAND3X1
X_1691_ _138_ LoadCtl_6_bF$buf3 _857_ _70_ vdd gnd OAI21X1
X_1271_ Stg_1_bF$buf1 _492_ Stg_2_bF$buf2 _493_ vdd gnd OAI21X1
XFILL_0__1311_ gnd vdd FILL
XFILL_2__1082_ gnd vdd FILL
X_1747_ _19_ clk_bF$buf3 Acalc[5] vdd gnd DFFPOSX1
X_1327_ _541_ _542_ _536_ _545_ vdd gnd OAI21X1
XFILL_1__1489_ gnd vdd FILL
XFILL_1__1069_ gnd vdd FILL
X_1080_ Stg_0_bF$buf5 _311_ _312_ vdd gnd NAND2X1
XFILL_0__1540_ gnd vdd FILL
XFILL_2__1558_ gnd vdd FILL
XFILL_2__1138_ gnd vdd FILL
XFILL_0__1120_ gnd vdd FILL
XFILL_1__1701_ gnd vdd FILL
X_1556_ Yin1[1] _728_ _729_ vdd gnd NAND2X1
X_1136_ _212_ _365_ _364_ _366_ vdd gnd NAND3X1
XFILL_0__884_ gnd vdd FILL
XFILL_1__918_ gnd vdd FILL
X_887_ _117_ _127_ _128_ _859_[1] vdd gnd OAI21X1
XFILL_1__1298_ gnd vdd FILL
XFILL_1__1510_ gnd vdd FILL
X_1785_ _57_ clk_bF$buf6 Ain12b[5] vdd gnd DFFPOSX1
X_1365_ _580_ _579_ _581_ vdd gnd NOR2X1
XFILL_0__1405_ gnd vdd FILL
X_1594_ _761_ _762_ _765_ vdd gnd NAND2X1
X_1174_ _201__bF$buf4 _394_ _402_ vdd gnd NAND2X1
XFILL_1__956_ gnd vdd FILL
XFILL_0__1634_ gnd vdd FILL
XFILL_0__1214_ gnd vdd FILL
XFILL_0__978_ gnd vdd FILL
XFILL_0__1443_ gnd vdd FILL
XFILL_0__1023_ gnd vdd FILL
XFILL_2__972_ gnd vdd FILL
XFILL_1__1604_ gnd vdd FILL
X_1459_ _265_ _635_ _650_ _45_ vdd gnd OAI21X1
X_1039_ _270_ _272_ _205_ _273_ vdd gnd AOI21X1
XFILL_1__994_ gnd vdd FILL
XFILL_0__1672_ gnd vdd FILL
XFILL_0__1252_ gnd vdd FILL
XFILL_1__1413_ gnd vdd FILL
X_1688_ _841_ _854_ _855_ vdd gnd AND2X2
X_1268_ _188__bF$buf0 _489_ _490_ _14_ vdd gnd OAI21X1
XFILL_0__1308_ gnd vdd FILL
XFILL_0__1481_ gnd vdd FILL
XFILL_0__1061_ gnd vdd FILL
XFILL_1__1642_ gnd vdd FILL
XFILL_1__1222_ gnd vdd FILL
X_1497_ LoadCtl_6_bF$buf2 _670_ _671_ _62_ vdd gnd OAI21X1
X_1077_ _308_ _309_ vdd gnd INVX1
XFILL_2__1711_ gnd vdd FILL
XFILL_0__1537_ gnd vdd FILL
XFILL_0__1117_ gnd vdd FILL
XFILL_0__1290_ gnd vdd FILL
XFILL_1__1451_ gnd vdd FILL
XFILL_1__1031_ gnd vdd FILL
XFILL_0__1346_ gnd vdd FILL
XFILL_1__1507_ gnd vdd FILL
XFILL88050x75750 gnd vdd FILL
XFILL_1__1680_ gnd vdd FILL
XFILL_1__1260_ gnd vdd FILL
XFILL_1__897_ gnd vdd FILL
XFILL_0__1575_ gnd vdd FILL
XFILL_0__1155_ gnd vdd FILL
XFILL_0__902_ gnd vdd FILL
X_905_ LoadCtl_0_bF$buf1 Ycalc[1] _119_ Ycalc[3] _145_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1316_ gnd vdd FILL
XFILL_0__1384_ gnd vdd FILL
X_1803_ _68_ clk_bF$buf1 Ycalc[7] vdd gnd DFFPOSX1
XFILL_1__1545_ gnd vdd FILL
XFILL_1__1125_ gnd vdd FILL
XFILL_2__1614_ gnd vdd FILL
XFILL_2__969_ gnd vdd FILL
XFILL_0__1193_ gnd vdd FILL
X_1612_ _241_ _778_ _781_ _782_ vdd gnd NAND3X1
XFILL_0__940_ gnd vdd FILL
X_943_ _163_ _179_ _180_ vdd gnd NOR2X1
XFILL_1__1354_ gnd vdd FILL
XFILL_0__1669_ gnd vdd FILL
XFILL_0__1249_ gnd vdd FILL
X_1421_ Xin[0] _629_ _630_ vdd gnd NAND2X1
X_1001_ Stg_0_bF$buf2 _234_ _235_ _236_ vdd gnd OAI21X1
XFILL_1__1583_ gnd vdd FILL
XFILL_1__1163_ gnd vdd FILL
XFILL_0__1478_ gnd vdd FILL
XFILL_0__1058_ gnd vdd FILL
XFILL_1__1639_ gnd vdd FILL
XFILL_1__1219_ gnd vdd FILL
X_1650_ _262_ _807_ _808_ _818_ vdd gnd NAND3X1
X_1230_ Ain12b_11_bF$buf3 _436_ _437_ _455_ vdd gnd OAI21X1
X_981_ _201__bF$buf6 _179_ _216_ _217_ vdd gnd NAND3X1
XFILL_1__1392_ gnd vdd FILL
XFILL_2__1708_ gnd vdd FILL
XFILL_2__1461_ gnd vdd FILL
XFILL_2__1041_ gnd vdd FILL
XFILL_0__1287_ gnd vdd FILL
X_1706_ _85_ _84_ _82_ _86_ vdd gnd AOI21X1
XFILL_1__1448_ gnd vdd FILL
XFILL_1__1028_ gnd vdd FILL
XFILL_0__1096_ gnd vdd FILL
X_1515_ Stg_2_bF$buf4 _687_ _688_ _689_ vdd gnd NAND3X1
XFILL_1__1677_ gnd vdd FILL
XFILL_1__1257_ gnd vdd FILL
X_1744_ _16_ clk_bF$buf0 Acalc[2] vdd gnd DFFPOSX1
X_1324_ _541_ _542_ LoadCtl_6_bF$buf2 _543_ vdd gnd OAI21X1
XFILL_1__1486_ gnd vdd FILL
XFILL_1__1066_ gnd vdd FILL
XFILL_2__1555_ gnd vdd FILL
XFILL_2__1135_ gnd vdd FILL
X_1553_ _725_ Stg_2_bF$buf3 _717_ _726_ vdd gnd AOI21X1
X_1133_ Xin12b[5] _362_ _360_ _363_ vdd gnd NAND3X1
XFILL_0__881_ gnd vdd FILL
XFILL_1__915_ gnd vdd FILL
X_884_ _124_ _113_ _125_ _126_ vdd gnd OAI21X1
XFILL_1__1295_ gnd vdd FILL
X_1609_ _741_ _760_ _735_ _779_ vdd gnd NOR3X1
XFILL_0__937_ gnd vdd FILL
X_1782_ _54_ clk_bF$buf2 Ain12b[6] vdd gnd DFFPOSX1
X_1362_ Ain12b[7] _577_ _578_ vdd gnd NAND2X1
XFILL_0__1402_ gnd vdd FILL
X_1418_ _471_ _625_ _627_ _27_ vdd gnd OAI21X1
X_1591_ _741_ _735_ _201__bF$buf6 _762_ vdd gnd OAI21X1
X_1171_ _394_ _201__bF$buf1 _396_ _399_ vdd gnd AOI21X1
XFILL_1__953_ gnd vdd FILL
XFILL_0__1631_ gnd vdd FILL
XFILL_0__1211_ gnd vdd FILL
XFILL88350x3750 gnd vdd FILL
X_1647_ _811_ _813_ _815_ _816_ vdd gnd OAI21X1
X_1227_ _451_ _450_ _201__bF$buf4 _452_ vdd gnd OAI21X1
XFILL_0__975_ gnd vdd FILL
X_978_ Stg_0_bF$buf4 _212_ _213_ _214_ vdd gnd OAI21X1
XFILL_1__1389_ gnd vdd FILL
XFILL_0__1440_ gnd vdd FILL
XFILL_2__1458_ gnd vdd FILL
XFILL_0__1020_ gnd vdd FILL
XFILL_2__1038_ gnd vdd FILL
XFILL_1__1601_ gnd vdd FILL
X_1456_ Yin[0] _635_ _649_ vdd gnd NAND2X1
X_1036_ Ain12b_11_bF$buf2 _252_ _269_ _270_ vdd gnd OAI21X1
XFILL_1__1198_ gnd vdd FILL
XFILL_1__991_ gnd vdd FILL
XFILL_1__1410_ gnd vdd FILL
X_1685_ _844_ _851_ _852_ vdd gnd NOR2X1
X_1265_ _486_ _483_ _488_ vdd gnd AND2X2
XFILL_0__1725_ gnd vdd FILL
XFILL_0__1305_ gnd vdd FILL
X_1494_ LoadCtl_0_bF$buf2 _504_ _669_ _61_ vdd gnd OAI21X1
X_1074_ _304_ _306_ _281_ _4_ vdd gnd OAI21X1
XFILL87750x61350 gnd vdd FILL
XFILL_0__1534_ gnd vdd FILL
XFILL_0__1114_ gnd vdd FILL
XFILL_0__878_ gnd vdd FILL
XBUFX2_insert0 Stg[0] Stg_0_bF$buf6 vdd gnd BUFX2
XBUFX2_insert1 Stg[0] Stg_0_bF$buf5 vdd gnd BUFX2
XBUFX2_insert2 Stg[0] Stg_0_bF$buf4 vdd gnd BUFX2
XBUFX2_insert3 Stg[0] Stg_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert4 Stg[0] Stg_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert5 Stg[0] Stg_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert6 Stg[0] Stg_0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert7 _188_ _188__bF$buf4 vdd gnd BUFX2
XBUFX2_insert8 _188_ _188__bF$buf3 vdd gnd BUFX2
XBUFX2_insert9 _188_ _188__bF$buf2 vdd gnd BUFX2
XFILL_0__1343_ gnd vdd FILL
XFILL_2__872_ gnd vdd FILL
XFILL_1__1504_ gnd vdd FILL
X_1779_ _51_ clk_bF$buf6 Ain12b[11] vdd gnd DFFPOSX1
X_1359_ Stg_2_bF$buf0 Stg_0_bF$buf6 Ain12b_11_bF$buf4 _575_ vdd gnd OAI21X1
XFILL_1__894_ gnd vdd FILL
XFILL_0__1572_ gnd vdd FILL
XFILL_0__1152_ gnd vdd FILL
X_902_ Ycalc[5] _142_ vdd gnd INVX1
XFILL_1__1313_ gnd vdd FILL
X_1588_ _183__bF$buf0 _223_ _759_ vdd gnd NAND2X1
X_1168_ _315_ _183__bF$buf2 _395_ _396_ vdd gnd AOI21X1
XFILL_0__1628_ gnd vdd FILL
XFILL_0__1208_ gnd vdd FILL
XFILL_0__1381_ gnd vdd FILL
X_1800_ _65_ clk_bF$buf1 Ycalc[4] vdd gnd DFFPOSX1
XFILL_1__1542_ gnd vdd FILL
XFILL_1__1122_ gnd vdd FILL
X_1397_ _609_ _605_ LoadCtl_6_bF$buf0 _611_ vdd gnd OAI21X1
XFILL_2__1611_ gnd vdd FILL
XFILL_0__1437_ gnd vdd FILL
XFILL_0__1017_ gnd vdd FILL
XFILL_2__966_ gnd vdd FILL
XFILL_0__1190_ gnd vdd FILL
X_940_ Stg_0_bF$buf4 _175_ _176_ _177_ vdd gnd OAI21X1
XFILL_1__1351_ gnd vdd FILL
XFILL_1__988_ gnd vdd FILL
XFILL_0__1666_ gnd vdd FILL
XFILL_0__1246_ gnd vdd FILL
XFILL_1__1407_ gnd vdd FILL
XFILL_1__1580_ gnd vdd FILL
XFILL_1__1160_ gnd vdd FILL
XFILL_0__1475_ gnd vdd FILL
XFILL_0__1055_ gnd vdd FILL
XFILL_1__1636_ gnd vdd FILL
XFILL_1__1216_ gnd vdd FILL
XFILL_0__1284_ gnd vdd FILL
X_1703_ _845_ _848_ _284_ _83_ vdd gnd AOI21X1
XFILL88050x61350 gnd vdd FILL
XFILL_1__1445_ gnd vdd FILL
XFILL_1__1025_ gnd vdd FILL
XFILL_2__1514_ gnd vdd FILL
XFILL_2__869_ gnd vdd FILL
XFILL_0__1093_ gnd vdd FILL
X_1512_ Stg_0_bF$buf4 _212_ _686_ vdd gnd NAND2X1
XFILL_1__1674_ gnd vdd FILL
XFILL_1__1254_ gnd vdd FILL
XFILL_0__1569_ gnd vdd FILL
XFILL_0__1149_ gnd vdd FILL
X_1741_ _13_ clk_bF$buf6 Xcalc[11] vdd gnd DFFPOSX1
X_1321_ _536_ _538_ _539_ _540_ vdd gnd AOI21X1
XFILL_1__1483_ gnd vdd FILL
XFILL_1__1063_ gnd vdd FILL
XFILL_2__1132_ gnd vdd FILL
XFILL_0__1378_ gnd vdd FILL
XFILL_1__1539_ gnd vdd FILL
XFILL_1__1119_ gnd vdd FILL
X_1550_ Stg_0_bF$buf3 Xin12b[9] _722_ _723_ vdd gnd OAI21X1
X_1130_ _201__bF$buf1 _359_ _354_ _360_ vdd gnd NAND3X1
XFILL_1__912_ gnd vdd FILL
X_881_ LoadCtl[4] _121_ _122_ _123_ vdd gnd OAI21X1
XFILL_1__1292_ gnd vdd FILL
XFILL_2__1608_ gnd vdd FILL
XFILL_2__1361_ gnd vdd FILL
XFILL_0__1187_ gnd vdd FILL
X_1606_ _183__bF$buf0 _676_ _776_ vdd gnd NAND2X1
XFILL_0__934_ gnd vdd FILL
X_937_ Stg_0_bF$buf3 _172_ _173_ _174_ vdd gnd OAI21X1
XFILL_1__1348_ gnd vdd FILL
X_1415_ Xin[0] _625_ _626_ vdd gnd NAND2X1
XFILL_1__1577_ gnd vdd FILL
XFILL_1__1157_ gnd vdd FILL
XFILL_1__950_ gnd vdd FILL
X_1644_ Stg_2_bF$buf0 _484_ _812_ _813_ vdd gnd OAI21X1
X_1224_ Stg_2_bF$buf4 _373_ _415_ _449_ vdd gnd OAI21X1
XFILL_0__972_ gnd vdd FILL
X_975_ Stg_0_bF$buf3 _209_ _210_ _211_ vdd gnd OAI21X1
XFILL_1__1386_ gnd vdd FILL
XFILL_2__1455_ gnd vdd FILL
XFILL_2__1035_ gnd vdd FILL
X_1453_ _241_ _632_ _647_ _42_ vdd gnd OAI21X1
X_1033_ Stg_0_bF$buf0 _265_ _266_ _267_ vdd gnd OAI21X1
XFILL_1__1195_ gnd vdd FILL
X_1509_ _164__bF$buf2 _170_ _683_ vdd gnd NAND2X1
XFILL88350x36150 gnd vdd FILL
X_1682_ _284_ _848_ _845_ _849_ vdd gnd NAND3X1
X_1262_ Stg_0_bF$buf1 Stg_1_bF$buf2 _485_ vdd gnd NAND2X1
XFILL_0__1722_ gnd vdd FILL
XFILL_0__1302_ gnd vdd FILL
X_1738_ _10_ clk_bF$buf6 Xcalc[8] vdd gnd DFFPOSX1
X_1318_ Ain12b[4] _537_ vdd gnd INVX1
X_1491_ LoadCtl_0_bF$buf3 Ain[0] _668_ vdd gnd NAND2X1
X_1071_ _283_ _303_ _304_ vdd gnd NOR2X1
XFILL_0__1531_ gnd vdd FILL
XFILL_0__1111_ gnd vdd FILL
X_1547_ _201__bF$buf6 _719_ _712_ _720_ vdd gnd NAND3X1
X_1127_ _164__bF$buf3 _356_ _357_ vdd gnd NOR2X1
XFILL_0__875_ gnd vdd FILL
XFILL_1__909_ gnd vdd FILL
X_878_ _117_ _115_ _120_ _859_[0] vdd gnd OAI21X1
XFILL_1__1289_ gnd vdd FILL
XFILL_0__1340_ gnd vdd FILL
XFILL_2__1358_ gnd vdd FILL
XFILL_1__1501_ gnd vdd FILL
XFILL88650x79350 gnd vdd FILL
X_1776_ _48_ clk_bF$buf5 Yin0[0] vdd gnd DFFPOSX1
X_1356_ _110_ LoadCtl_6_bF$buf4 _572_ _571_ _20_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1098_ gnd vdd FILL
XFILL_1__891_ gnd vdd FILL
XFILL_1__1310_ gnd vdd FILL
X_1585_ _755_ _756_ vdd gnd INVX1
X_1165_ _392_ _388_ _393_ vdd gnd NOR2X1
XFILL_1__947_ gnd vdd FILL
XFILL_0__1625_ gnd vdd FILL
XFILL_0__1205_ gnd vdd FILL
XFILL_0__969_ gnd vdd FILL
X_1394_ Ain12b[9] _201__bF$buf0 _608_ vdd gnd NAND2X1
XFILL_0__1434_ gnd vdd FILL
XFILL_0__1014_ gnd vdd FILL
XFILL_2__963_ gnd vdd FILL
XFILL_1__985_ gnd vdd FILL
XFILL_0__1663_ gnd vdd FILL
XFILL_0__1243_ gnd vdd FILL
XFILL_1__1404_ gnd vdd FILL
X_1679_ _777_ _774_ _846_ vdd gnd NOR2X1
X_1259_ _154_ LoadCtl_6_bF$buf1 _480_ _482_ _13_ vdd 
+ gnd
+ OAI22X1
XFILL_0__1719_ gnd vdd FILL
XFILL_0__1472_ gnd vdd FILL
XFILL_0__1052_ gnd vdd FILL
XFILL_1__1633_ gnd vdd FILL
XFILL_1__1213_ gnd vdd FILL
X_1488_ _664_ _665_ _666_ _58_ vdd gnd OAI21X1
X_1068_ _300_ _301_ vdd gnd INVX1
XFILL_0__1528_ gnd vdd FILL
XFILL_0__1108_ gnd vdd FILL
XFILL_0__1281_ gnd vdd FILL
XFILL_2__1299_ gnd vdd FILL
X_1700_ _73_ _74_ _80_ vdd gnd NOR2X1
XFILL_1__1442_ gnd vdd FILL
XFILL_1__1022_ gnd vdd FILL
X_1297_ _516_ _517_ vdd gnd INVX1
XFILL_2__1511_ gnd vdd FILL
XFILL_0__1337_ gnd vdd FILL
XFILL_2__866_ gnd vdd FILL
XFILL_0__1090_ gnd vdd FILL
XFILL_1__1671_ gnd vdd FILL
XFILL_1__1251_ gnd vdd FILL
XFILL_1__888_ gnd vdd FILL
XFILL_0__1566_ gnd vdd FILL
XFILL_0__1146_ gnd vdd FILL
XFILL_1__1727_ gnd vdd FILL
XFILL_1__1307_ gnd vdd FILL
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
XFILL_1__1480_ gnd vdd FILL
XFILL_1__1060_ gnd vdd FILL
XFILL_0__1375_ gnd vdd FILL
XFILL_1__1536_ gnd vdd FILL
XFILL_1__1116_ gnd vdd FILL
XFILL_2__1605_ gnd vdd FILL
XFILL_0__1184_ gnd vdd FILL
X_1603_ _142_ LoadCtl_6_bF$buf3 _773_ _66_ vdd gnd OAI21X1
XFILL_0__931_ gnd vdd FILL
X_934_ _170_ _167_ _164__bF$buf1 _171_ vdd gnd MUX2X1
XFILL_1__1345_ gnd vdd FILL
X_1412_ _188__bF$buf4 _623_ _622_ _25_ vdd gnd OAI21X1
XFILL_1__1574_ gnd vdd FILL
XFILL_1__1154_ gnd vdd FILL
XBUFX2_insert50 Ain12b[11] Ain12b_11_bF$buf1 vdd gnd BUFX2
XBUFX2_insert51 Ain12b[11] Ain12b_11_bF$buf0 vdd gnd BUFX2
XBUFX2_insert52 _201_ _201__bF$buf6 vdd gnd BUFX2
XBUFX2_insert53 _201_ _201__bF$buf5 vdd gnd BUFX2
XBUFX2_insert54 _201_ _201__bF$buf4 vdd gnd BUFX2
XBUFX2_insert55 _201_ _201__bF$buf3 vdd gnd BUFX2
XBUFX2_insert56 _201_ _201__bF$buf2 vdd gnd BUFX2
XBUFX2_insert57 _201_ _201__bF$buf1 vdd gnd BUFX2
XBUFX2_insert58 _201_ _201__bF$buf0 vdd gnd BUFX2
XFILL_0__1469_ gnd vdd FILL
XFILL_0__1049_ gnd vdd FILL
X_1641_ _806_ _809_ _810_ vdd gnd NOR2X1
X_1221_ _440_ _444_ _431_ _421_ _447_ vdd 
+ gnd
+ AOI22X1
X_972_ _207_ _204_ _164__bF$buf2 _208_ vdd gnd MUX2X1
XFILL_1__1383_ gnd vdd FILL
XFILL_2__1452_ gnd vdd FILL
XFILL_2__1032_ gnd vdd FILL
XFILL_0__1698_ gnd vdd FILL
XFILL_0__1278_ gnd vdd FILL
XFILL_1__1439_ gnd vdd FILL
XFILL_1__1019_ gnd vdd FILL
X_1450_ Yin[1] _629_ _646_ vdd gnd NAND2X1
X_1030_ Stg_0_bF$buf0 _262_ _263_ _264_ vdd gnd OAI21X1
XFILL_1__1192_ gnd vdd FILL
XFILL_2__1508_ gnd vdd FILL
XFILL_2__1681_ gnd vdd FILL
XFILL_0__1087_ gnd vdd FILL
X_1506_ _492_ _165_ _680_ vdd gnd NAND2X1
XFILL_1__1668_ gnd vdd FILL
XFILL_1__1248_ gnd vdd FILL
XFILL88350x57750 gnd vdd FILL
X_1735_ _7_ clk_bF$buf3 Xcalc[5] vdd gnd DFFPOSX1
X_1315_ _493_ _533_ _201__bF$buf3 _534_ vdd gnd AOI21X1
XFILL_1__1477_ gnd vdd FILL
XFILL_1__1057_ gnd vdd FILL
X_1544_ _184_ _218_ _222_ _289_ _717_ vdd 
+ gnd
+ OAI22X1
X_1124_ _353_ _354_ vdd gnd INVX1
XFILL_0__872_ gnd vdd FILL
XFILL_1__906_ gnd vdd FILL
X_875_ LoadCtl[1] _118_ vdd gnd INVX1
XFILL_1__1286_ gnd vdd FILL
XFILL_2__1355_ gnd vdd FILL
XFILL_0__928_ gnd vdd FILL
X_1773_ _45_ clk_bF$buf2 Yin12b[5] vdd gnd DFFPOSX1
X_1353_ _569_ _567_ _570_ vdd gnd NAND2X1
XFILL_1__1095_ gnd vdd FILL
XFILL_0__1813_ gnd vdd FILL
XFILL_2__922_ gnd vdd FILL
X_1409_ _106_ LoadCtl_6_bF$buf0 _621_ _620_ _24_ vdd 
+ gnd
+ OAI22X1
XFILL88650x10950 gnd vdd FILL
X_1582_ _750_ _752_ _753_ _754_ vdd gnd OAI21X1
X_1162_ LoadCtl_6_bF$buf1 _390_ _391_ vdd gnd NAND2X1
XFILL_1__944_ gnd vdd FILL
XFILL_0__1622_ gnd vdd FILL
XFILL_0__1202_ gnd vdd FILL
X_1638_ _201__bF$buf5 _803_ _799_ _807_ vdd gnd NAND3X1
X_1218_ _443_ _442_ _441_ _444_ vdd gnd OAI21X1
XFILL_0__966_ gnd vdd FILL
X_969_ Xin0[1] _205_ vdd gnd INVX1
X_1391_ _599_ _593_ _604_ _605_ vdd gnd AOI21X1
XFILL_0__1431_ gnd vdd FILL
XFILL_0__1011_ gnd vdd FILL
X_1447_ Yin12b[8] _644_ vdd gnd INVX1
X_1027_ _260_ _258_ _164__bF$buf1 _261_ vdd gnd MUX2X1
XFILL_1__1189_ gnd vdd FILL
XFILL_1__982_ gnd vdd FILL
XFILL_0__1660_ gnd vdd FILL
XFILL_2__1678_ gnd vdd FILL
XFILL_2__1258_ gnd vdd FILL
XFILL_0__1240_ gnd vdd FILL
XFILL_1__1401_ gnd vdd FILL
X_1676_ Stg_2_bF$buf3 _758_ _826_ _843_ vdd gnd OAI21X1
X_1256_ _466_ _457_ _479_ _480_ vdd gnd AOI21X1
XFILL_0__1716_ gnd vdd FILL
XFILL_1__1630_ gnd vdd FILL
XFILL_1__1210_ gnd vdd FILL
X_1485_ Ain[0] _664_ vdd gnd INVX1
X_1065_ _240_ _248_ _269_ _298_ vdd gnd AOI21X1
XFILL_0__1525_ gnd vdd FILL
XFILL_0__1105_ gnd vdd FILL
XFILL_0__869_ gnd vdd FILL
X_1294_ LoadCtl_6_bF$buf4 _514_ _515_ vdd gnd NAND2X1
XFILL_0__1334_ gnd vdd FILL
XFILL_2__863_ gnd vdd FILL
XFILL_1__885_ gnd vdd FILL
XFILL_2__919_ gnd vdd FILL
XFILL_0__1563_ gnd vdd FILL
XFILL_0__1143_ gnd vdd FILL
XFILL_1__1724_ gnd vdd FILL
XFILL_1__1304_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
X_1579_ Yin1[1] _728_ _710_ _751_ vdd gnd OAI21X1
X_1159_ _387_ _382_ _388_ vdd gnd AND2X2
XFILL_0__1619_ gnd vdd FILL
XFILL_0__1372_ gnd vdd FILL
XFILL_1__1533_ gnd vdd FILL
XFILL_1__1113_ gnd vdd FILL
X_1388_ _600_ _602_ _585_ _22_ vdd gnd OAI21X1
XFILL_0__1428_ gnd vdd FILL
XFILL_0__1008_ gnd vdd FILL
XFILL_0__1181_ gnd vdd FILL
XFILL_2__1199_ gnd vdd FILL
X_1600_ _749_ _769_ _756_ _771_ vdd gnd NAND3X1
X_931_ Xin0[0] _168_ vdd gnd INVX1
XFILL_1__1342_ gnd vdd FILL
X_1197_ _416_ _419_ _424_ vdd gnd NAND2X1
XFILL_1__979_ gnd vdd FILL
XFILL_2__1411_ gnd vdd FILL
XFILL_0__1657_ gnd vdd FILL
XFILL_0__1237_ gnd vdd FILL
XFILL_1__1571_ gnd vdd FILL
XFILL_1__1151_ gnd vdd FILL
XBUFX2_insert20 _164_ _164__bF$buf4 vdd gnd BUFX2
XBUFX2_insert21 _164_ _164__bF$buf3 vdd gnd BUFX2
XBUFX2_insert22 _164_ _164__bF$buf2 vdd gnd BUFX2
XBUFX2_insert23 _164_ _164__bF$buf1 vdd gnd BUFX2
XBUFX2_insert24 _164_ _164__bF$buf0 vdd gnd BUFX2
XBUFX2_insert25 LoadCtl[6] LoadCtl_6_bF$buf4 vdd gnd BUFX2
XBUFX2_insert26 LoadCtl[6] LoadCtl_6_bF$buf3 vdd gnd BUFX2
XBUFX2_insert27 LoadCtl[6] LoadCtl_6_bF$buf2 vdd gnd BUFX2
XBUFX2_insert28 LoadCtl[6] LoadCtl_6_bF$buf1 vdd gnd BUFX2
XBUFX2_insert29 LoadCtl[6] LoadCtl_6_bF$buf0 vdd gnd BUFX2
XFILL_0__1466_ gnd vdd FILL
XFILL_0__1046_ gnd vdd FILL
XFILL_1__1627_ gnd vdd FILL
XFILL_1__1207_ gnd vdd FILL
XFILL_1__1380_ gnd vdd FILL
XFILL_0__1695_ gnd vdd FILL
XFILL_0__1275_ gnd vdd FILL
XFILL_1__1436_ gnd vdd FILL
XFILL_1__1016_ gnd vdd FILL
XFILL_2__1505_ gnd vdd FILL
XFILL_0__1084_ gnd vdd FILL
X_1503_ _184_ _193_ _197_ _289_ _677_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1665_ gnd vdd FILL
XFILL_1__1245_ gnd vdd FILL
X_1732_ _4_ clk_bF$buf0 Xcalc[2] vdd gnd DFFPOSX1
X_1312_ Acalc[4] _188__bF$buf4 _531_ vdd gnd NAND2X1
XFILL_1__1474_ gnd vdd FILL
XFILL_1__1054_ gnd vdd FILL
XFILL_0__1369_ gnd vdd FILL
X_1541_ Stg_0_bF$buf5 _441_ _713_ _714_ vdd gnd OAI21X1
X_1121_ _150_ _188__bF$buf3 _351_ _186_ _6_ vdd 
+ gnd
+ AOI22X1
XFILL_1__903_ gnd vdd FILL
X_872_ _108_ _109_ _114_ _115_ vdd gnd AOI21X1
XFILL_1__1283_ gnd vdd FILL
XFILL_2__1352_ gnd vdd FILL
XFILL_0__1598_ gnd vdd FILL
XFILL_0__1178_ gnd vdd FILL
XFILL_0__925_ gnd vdd FILL
X_928_ Xin1[0] _165_ vdd gnd INVX1
XFILL_1__1339_ gnd vdd FILL
X_1770_ _42_ clk_bF$buf2 Yin12b[6] vdd gnd DFFPOSX1
X_1350_ Ain12b[6] _566_ _567_ vdd gnd NAND2X1
XFILL_1__1092_ gnd vdd FILL
XFILL_0__1810_ gnd vdd FILL
XFILL_2__1408_ gnd vdd FILL
X_1406_ _617_ _618_ _619_ vdd gnd NAND2X1
XFILL_1__1568_ gnd vdd FILL
XFILL_1__1148_ gnd vdd FILL
XFILL_1__941_ gnd vdd FILL
X_1635_ _777_ _774_ _201__bF$buf5 _804_ vdd gnd OAI21X1
X_1215_ Xin12b[9] _441_ vdd gnd INVX1
XFILL_0__963_ gnd vdd FILL
X_966_ Xin1[1] _202_ vdd gnd INVX1
XFILL_2_CLKBUF1_insert14 gnd vdd FILL
XFILL_2_CLKBUF1_insert17 gnd vdd FILL
XFILL_1__1377_ gnd vdd FILL
X_1444_ _311_ _625_ _642_ _38_ vdd gnd OAI21X1
X_1024_ Stg_0_bF$buf2 _256_ _257_ _258_ vdd gnd OAI21X1
XFILL_1__1186_ gnd vdd FILL
XFILL88350x43350 gnd vdd FILL
XFILL_2__1675_ gnd vdd FILL
XFILL_2__1255_ gnd vdd FILL
X_1673_ _835_ _840_ vdd gnd INVX1
X_1253_ Ain12b_11_bF$buf3 _454_ _477_ vdd gnd NOR2X1
XFILL_0__1713_ gnd vdd FILL
X_1729_ _1_ clk_bF$buf5 Ycalc[1] vdd gnd DFFPOSX1
X_1309_ _528_ _526_ _529_ vdd gnd NAND2X1
X_1482_ _537_ _635_ _662_ _56_ vdd gnd OAI21X1
X_1062_ _288_ Stg_2_bF$buf1 _294_ _295_ vdd gnd AOI21X1
XFILL_0__1522_ gnd vdd FILL
XFILL_0__1102_ gnd vdd FILL
X_1538_ _710_ _711_ vdd gnd INVX1
X_1118_ _331_ _348_ _349_ vdd gnd OR2X2
XFILL_0__866_ gnd vdd FILL
X_869_ LoadCtl[2] _112_ vdd gnd INVX2
X_1291_ _511_ _512_ vdd gnd INVX1
XFILL88650x86550 gnd vdd FILL
XFILL_0__1331_ gnd vdd FILL
XFILL_2__1349_ gnd vdd FILL
X_1767_ _39_ clk_bF$buf4 Yin12b[11] vdd gnd DFFPOSX1
X_1347_ _201__bF$buf0 _563_ _564_ vdd gnd NOR2X1
XFILL_1__1089_ gnd vdd FILL
XFILL_1__882_ gnd vdd FILL
XFILL_2__916_ gnd vdd FILL
XFILL_0__1560_ gnd vdd FILL
XFILL_2__1578_ gnd vdd FILL
XFILL_0__1140_ gnd vdd FILL
XFILL_2__1158_ gnd vdd FILL
XFILL_1__1721_ gnd vdd FILL
XFILL_1__1301_ gnd vdd FILL
X_1576_ _735_ _201__bF$buf6 _741_ _748_ vdd gnd AOI21X1
X_1156_ _364_ _365_ _212_ _385_ vdd gnd AOI21X1
XFILL_1__938_ gnd vdd FILL
XFILL_0__1616_ gnd vdd FILL
XFILL_1__1530_ gnd vdd FILL
XFILL_1__1110_ gnd vdd FILL
X_1385_ _593_ _599_ _600_ vdd gnd NOR2X1
XFILL_0__1425_ gnd vdd FILL
XFILL_0__1005_ gnd vdd FILL
XFILL_2__1196_ gnd vdd FILL
X_1194_ Xin12b[8] _417_ _420_ _421_ vdd gnd NAND3X1
XFILL_1__976_ gnd vdd FILL
XFILL_0__1654_ gnd vdd FILL
XFILL_0__1234_ gnd vdd FILL
XFILL87750x21750 gnd vdd FILL
XFILL_1__1815_ gnd vdd FILL
XFILL_0__998_ gnd vdd FILL
XFILL_0__1463_ gnd vdd FILL
XFILL_0__1043_ gnd vdd FILL
XFILL88650x18150 gnd vdd FILL
XFILL_1__1624_ gnd vdd FILL
XFILL_1__1204_ gnd vdd FILL
X_1479_ Ain12b[7] _632_ _661_ vdd gnd NOR2X1
X_1059_ _184_ _292_ vdd gnd INVX1
XFILL_0__1519_ gnd vdd FILL
XFILL_0__1692_ gnd vdd FILL
XFILL_0__1272_ gnd vdd FILL
XFILL_1__1433_ gnd vdd FILL
XFILL_1__1013_ gnd vdd FILL
X_1288_ Ain1[0] _508_ _509_ vdd gnd NAND2X1
XFILL_2__1502_ gnd vdd FILL
XFILL_0__1328_ gnd vdd FILL
XFILL_1_BUFX2_insert50 gnd vdd FILL
XFILL_1_BUFX2_insert51 gnd vdd FILL
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert53 gnd vdd FILL
XFILL_1_BUFX2_insert54 gnd vdd FILL
XFILL_1_BUFX2_insert55 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1_BUFX2_insert57 gnd vdd FILL
XFILL_1_BUFX2_insert58 gnd vdd FILL
XFILL88650x7350 gnd vdd FILL
XFILL_2__1099_ gnd vdd FILL
XFILL_0__1081_ gnd vdd FILL
X_1500_ _199_ _224_ _674_ vdd gnd NAND2X1
XFILL_1__1662_ gnd vdd FILL
XFILL_1__1242_ gnd vdd FILL
X_1097_ _309_ _327_ _329_ vdd gnd NAND2X1
XFILL_1__879_ gnd vdd FILL
XFILL_2__1311_ gnd vdd FILL
XFILL_0__1557_ gnd vdd FILL
XFILL_0__1137_ gnd vdd FILL
XFILL_1__1718_ gnd vdd FILL
XFILL_1__1471_ gnd vdd FILL
XFILL_1__1051_ gnd vdd FILL
XFILL_0__1366_ gnd vdd FILL
XFILL_1__1527_ gnd vdd FILL
XFILL_1__1107_ gnd vdd FILL
XFILL_1__900_ gnd vdd FILL
XFILL_1__1280_ gnd vdd FILL
XFILL_0__1595_ gnd vdd FILL
XFILL_0__1175_ gnd vdd FILL
XFILL_0__922_ gnd vdd FILL
X_925_ Ycalc[0] _162_ vdd gnd INVX1
XFILL_1__1336_ gnd vdd FILL
XFILL_2__1405_ gnd vdd FILL
X_1403_ Ain12b[10] _616_ vdd gnd INVX1
XFILL_1__1565_ gnd vdd FILL
XFILL_1__1145_ gnd vdd FILL
XFILL88050x21750 gnd vdd FILL
X_1632_ _725_ _183__bF$buf2 _800_ _801_ vdd gnd AOI21X1
X_1212_ _436_ _437_ _438_ vdd gnd NAND2X1
XFILL_0__960_ gnd vdd FILL
X_963_ _198_ _195_ Stg_2_bF$buf1 _199_ vdd gnd MUX2X1
XFILL_1__1374_ gnd vdd FILL
XFILL_0__1689_ gnd vdd FILL
XFILL_0__1269_ gnd vdd FILL
X_1441_ LoadCtl_0_bF$buf0 Xin[1] _641_ vdd gnd NAND2X1
X_1021_ _168_ _252_ _255_ vdd gnd NOR2X1
XFILL_1__1183_ gnd vdd FILL
XFILL_2__1672_ gnd vdd FILL
XFILL_2__1252_ gnd vdd FILL
XFILL_0__1498_ gnd vdd FILL
XFILL_0__1078_ gnd vdd FILL
XFILL_1__1659_ gnd vdd FILL
XFILL_1__1239_ gnd vdd FILL
XFILL88350x64950 gnd vdd FILL
X_1670_ _836_ _823_ _191_ _838_ vdd gnd OAI21X1
X_1250_ _472_ _473_ _474_ vdd gnd NAND2X1
XFILL_0__1710_ gnd vdd FILL
XFILL_2__1308_ gnd vdd FILL
X_1726_ _102_ _104_ _709_ _105_ vdd gnd OAI21X1
X_1306_ _523_ _525_ _517_ _526_ vdd gnd OAI21X1
XFILL_1__1468_ gnd vdd FILL
XFILL_1__1048_ gnd vdd FILL
X_1535_ Ycalc[3] _708_ vdd gnd INVX1
X_1115_ _175_ _340_ _345_ _346_ vdd gnd NAND3X1
XFILL_0__863_ gnd vdd FILL
X_866_ LoadCtl[3] LoadCtl[2] _109_ vdd gnd NOR2X1
XFILL_1__1697_ gnd vdd FILL
XFILL_1__1277_ gnd vdd FILL
XFILL_0__919_ gnd vdd FILL
X_1764_ _36_ clk_bF$buf5 Xin0[0] vdd gnd DFFPOSX1
X_1344_ _536_ _555_ _552_ _561_ vdd gnd OAI21X1
XFILL_1__1086_ gnd vdd FILL
XFILL_2__913_ gnd vdd FILL
XFILL_2__1575_ gnd vdd FILL
XFILL_2__1155_ gnd vdd FILL
X_1573_ Ain12b_11_bF$buf1 _743_ _744_ _745_ vdd gnd OAI21X1
X_1153_ _380_ _381_ _382_ vdd gnd AND2X2
XFILL_1__935_ gnd vdd FILL
XFILL_0__1613_ gnd vdd FILL
X_1629_ _797_ _782_ _791_ _798_ vdd gnd AOI21X1
X_1209_ _355_ _357_ _435_ vdd gnd OR2X2
XFILL_0__957_ gnd vdd FILL
X_1382_ _561_ _596_ _594_ _597_ vdd gnd AOI21X1
XFILL_0__1422_ gnd vdd FILL
XFILL_0__1002_ gnd vdd FILL
X_1438_ _202_ _119_ _639_ _35_ vdd gnd OAI21X1
X_1018_ _168_ _252_ _186_ _253_ vdd gnd OAI21X1
X_1191_ _416_ _418_ vdd gnd INVX1
XFILL_1__973_ gnd vdd FILL
XFILL_0__1651_ gnd vdd FILL
XFILL_2__1669_ gnd vdd FILL
XFILL_0__1231_ gnd vdd FILL
XFILL_2__1249_ gnd vdd FILL
XFILL_1__1812_ gnd vdd FILL
X_1667_ Yin12b[8] _829_ _834_ _835_ vdd gnd NAND3X1
X_1247_ Xin12b[11] _471_ vdd gnd INVX1
XFILL_0__995_ gnd vdd FILL
X_998_ Xcalc[0] _188__bF$buf1 _233_ vdd gnd NAND2X1
XFILL_0__1707_ gnd vdd FILL
XFILL_0__1460_ gnd vdd FILL
XFILL_0__1040_ gnd vdd FILL
XFILL_1__1621_ gnd vdd FILL
XFILL_1__1201_ gnd vdd FILL
XFILL88650x72150 gnd vdd FILL
X_1476_ Ain[0] _632_ _659_ vdd gnd NAND2X1
X_1056_ Stg_1_bF$buf2 _183__bF$buf1 _289_ vdd gnd NAND2X1
XFILL88650x39750 gnd vdd FILL
XFILL_0__1516_ gnd vdd FILL
XFILL_1__1430_ gnd vdd FILL
XFILL_1__1010_ gnd vdd FILL
X_1285_ _492_ _164__bF$buf1 Ain12b_11_bF$buf4 _506_ vdd gnd OAI21X1
XFILL_0__1325_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_1_BUFX2_insert26 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
XFILL_1_BUFX2_insert28 gnd vdd FILL
XFILL_1_BUFX2_insert29 gnd vdd FILL
XFILL_2__1096_ gnd vdd FILL
X_1094_ _202_ _320_ _323_ _326_ vdd gnd NAND3X1
XFILL_1__876_ gnd vdd FILL
XFILL_0__1554_ gnd vdd FILL
XFILL_0__1134_ gnd vdd FILL
XFILL_1__1715_ gnd vdd FILL
XFILL_0__898_ gnd vdd FILL
XFILL_0__1363_ gnd vdd FILL
XFILL_1__1524_ gnd vdd FILL
XFILL_1__1104_ gnd vdd FILL
X_1799_ _64_ clk_bF$buf1 Ycalc[3] vdd gnd DFFPOSX1
X_1379_ _580_ _567_ _578_ _594_ vdd gnd OAI21X1
XFILL_0__1419_ gnd vdd FILL
XFILL_0__1592_ gnd vdd FILL
XFILL_0__1172_ gnd vdd FILL
X_922_ _109_ _156_ _159_ _160_ vdd gnd AOI21X1
XFILL_1__1333_ gnd vdd FILL
X_1188_ _395_ _415_ vdd gnd INVX1
XFILL_2__1402_ gnd vdd FILL
XFILL_0__1648_ gnd vdd FILL
XFILL_0__1228_ gnd vdd FILL
XFILL_1__1809_ gnd vdd FILL
X_1400_ _592_ _609_ _613_ vdd gnd OR2X2
XFILL_1__1562_ gnd vdd FILL
XFILL_1__1142_ gnd vdd FILL
XFILL_0__1457_ gnd vdd FILL
XFILL_0__1037_ gnd vdd FILL
XFILL_2__986_ gnd vdd FILL
XFILL_1__1618_ gnd vdd FILL
X_960_ Xin12b[7] Xin12b[6] Stg_0_bF$buf3 _196_ vdd gnd MUX2X1
XFILL_1__1371_ gnd vdd FILL
XFILL_0__1686_ gnd vdd FILL
XFILL_0__1266_ gnd vdd FILL
XFILL_1__1427_ gnd vdd FILL
XFILL_1__1007_ gnd vdd FILL
XFILL_1__1180_ gnd vdd FILL
XFILL_0__1495_ gnd vdd FILL
XFILL_0__1075_ gnd vdd FILL
XFILL_1__1656_ gnd vdd FILL
XFILL_1__1236_ gnd vdd FILL
XFILL_2__1725_ gnd vdd FILL
XFILL_2__1305_ gnd vdd FILL
X_1723_ _96_ _101_ _86_ _102_ vdd gnd NOR3X1
X_1303_ _518_ _522_ _523_ vdd gnd NOR2X1
XFILL_1__1465_ gnd vdd FILL
XFILL_1__1045_ gnd vdd FILL
X_1532_ _704_ _705_ _192_ _706_ vdd gnd AOI21X1
X_1112_ _342_ _341_ Xin12b[4] _343_ vdd gnd OAI21X1
X_863_ Acalc[10] _106_ vdd gnd INVX1
XFILL_1__1694_ gnd vdd FILL
XFILL_1__1274_ gnd vdd FILL
XFILL_0__1589_ gnd vdd FILL
XFILL_0__1169_ gnd vdd FILL
XFILL_0__916_ gnd vdd FILL
X_919_ Xcalc[7] _157_ vdd gnd INVX1
X_1761_ _33_ clk_bF$buf6 Xin12b[5] vdd gnd DFFPOSX1
X_1341_ LoadCtl_6_bF$buf2 _558_ _559_ vdd gnd NAND2X1
XFILL_1__1083_ gnd vdd FILL
XFILL_2__910_ gnd vdd FILL
XFILL_2__1572_ gnd vdd FILL
XFILL_2__1152_ gnd vdd FILL
XFILL_0__1398_ gnd vdd FILL
XFILL_1__1559_ gnd vdd FILL
XFILL_1__1139_ gnd vdd FILL
X_1570_ _201__bF$buf6 _741_ _735_ _742_ vdd gnd NAND3X1
X_1150_ _378_ _377_ _379_ vdd gnd NAND2X1
XFILL_1__932_ gnd vdd FILL
XFILL_0__1610_ gnd vdd FILL
XFILL_2__1628_ gnd vdd FILL
XFILL_2__1208_ gnd vdd FILL
X_1626_ _764_ _765_ _265_ _795_ vdd gnd AOI21X1
X_1206_ _432_ _428_ _408_ _10_ vdd gnd OAI21X1
XFILL_0__954_ gnd vdd FILL
X_957_ Xin1[1] Xin1[0] Stg_0_bF$buf1 _193_ vdd gnd MUX2X1
XFILL_1__1368_ gnd vdd FILL
X_1435_ Xin[0] _119_ _638_ vdd gnd NAND2X1
X_1015_ Xin0[0] _249_ _250_ vdd gnd NOR2X1
XFILL_1__1597_ gnd vdd FILL
XFILL_1__1177_ gnd vdd FILL
XFILL_1__970_ gnd vdd FILL
X_1664_ _831_ _830_ _644_ _832_ vdd gnd OAI21X1
X_1244_ _467_ _468_ _469_ vdd gnd NAND2X1
XFILL_0__992_ gnd vdd FILL
X_995_ _229_ _181_ _231_ vdd gnd OR2X2
XFILL_0__1704_ gnd vdd FILL
XFILL_2__1475_ gnd vdd FILL
XFILL_2__1055_ gnd vdd FILL
X_1473_ _590_ _629_ _657_ _52_ vdd gnd OAI21X1
X_1053_ Stg_0_bF$buf0 Yin12b[8] _285_ _286_ vdd gnd OAI21X1
XFILL_0__1513_ gnd vdd FILL
X_1529_ _673_ _702_ _703_ vdd gnd NOR2X1
X_1109_ _201__bF$buf1 _339_ _332_ _340_ vdd gnd NAND3X1
X_1282_ Acalc[2] _188__bF$buf1 _503_ vdd gnd NAND2X1
XFILL_0__1322_ gnd vdd FILL
X_1758_ _30_ clk_bF$buf4 Xin12b[6] vdd gnd DFFPOSX1
X_1338_ _555_ _556_ vdd gnd INVX1
X_1091_ Ain12b_11_bF$buf0 _321_ _322_ _323_ vdd gnd OAI21X1
XFILL_1__873_ gnd vdd FILL
XFILL_0__1551_ gnd vdd FILL
XFILL_2__1569_ gnd vdd FILL
XFILL_0__1131_ gnd vdd FILL
XFILL_2__1149_ gnd vdd FILL
XFILL_1__1712_ gnd vdd FILL
X_1567_ Stg_1_bF$buf3 _675_ _738_ _739_ vdd gnd OAI21X1
X_1147_ _375_ _376_ vdd gnd INVX1
XFILL_0__895_ gnd vdd FILL
XFILL_1__929_ gnd vdd FILL
X_898_ Ycalc[9] _138_ vdd gnd INVX1
XFILL_0__1607_ gnd vdd FILL
XFILL_0__1360_ gnd vdd FILL
XFILL_1__1521_ gnd vdd FILL
XFILL_1__1101_ gnd vdd FILL
XFILL_2_BUFX2_insert42 gnd vdd FILL
XFILL_2_BUFX2_insert45 gnd vdd FILL
XFILL_2_BUFX2_insert47 gnd vdd FILL
X_1796_ LoadCtl[5] clk_bF$buf5 LoadCtl[6] vdd gnd DFFPOSX1
X_1376_ _590_ _587_ _591_ vdd gnd NAND2X1
XFILL_0__1416_ gnd vdd FILL
XFILL_1__1330_ gnd vdd FILL
X_1185_ _410_ _411_ _412_ vdd gnd NAND2X1
XFILL_1__967_ gnd vdd FILL
XFILL_0__1645_ gnd vdd FILL
XFILL_0__1225_ gnd vdd FILL
XFILL88650x25350 gnd vdd FILL
XFILL_0__989_ gnd vdd FILL
XFILL_0__1454_ gnd vdd FILL
XFILL_0__1034_ gnd vdd FILL
XFILL_2__983_ gnd vdd FILL
XFILL_1__1615_ gnd vdd FILL
XFILL_0__1683_ gnd vdd FILL
XFILL_0__1263_ gnd vdd FILL
XFILL_1__1424_ gnd vdd FILL
XFILL_1__1004_ gnd vdd FILL
X_1699_ _311_ _75_ _78_ _79_ vdd gnd NAND3X1
X_1279_ _487_ _499_ _501_ vdd gnd NAND2X1
XFILL_0__1319_ gnd vdd FILL
XFILL_0__1492_ gnd vdd FILL
XFILL_0__1072_ gnd vdd FILL
XFILL_1__1653_ gnd vdd FILL
XFILL_1__1233_ gnd vdd FILL
X_1088_ _201__bF$buf0 _319_ _310_ _320_ vdd gnd NAND3X1
XFILL_2__1722_ gnd vdd FILL
XFILL_2__1302_ gnd vdd FILL
XFILL_0__1548_ gnd vdd FILL
XFILL_0__1128_ gnd vdd FILL
XFILL_1__1709_ gnd vdd FILL
X_1720_ _97_ _475_ _99_ vdd gnd OR2X2
X_1300_ _201__bF$buf3 _519_ _520_ vdd gnd NAND2X1
XFILL_1__1462_ gnd vdd FILL
XFILL_1__1042_ gnd vdd FILL
XFILL_0__1357_ gnd vdd FILL
XFILL_1__1518_ gnd vdd FILL
XFILL_1__1691_ gnd vdd FILL
XFILL_1__1271_ gnd vdd FILL
XFILL_0__1586_ gnd vdd FILL
XFILL_0__1166_ gnd vdd FILL
XFILL_0__913_ gnd vdd FILL
X_916_ Xcalc[11] _154_ vdd gnd INVX1
XFILL_1__1327_ gnd vdd FILL
XFILL_1__1080_ gnd vdd FILL
XFILL_0__1395_ gnd vdd FILL
X_1814_ _862_[0] Yout[0] vdd gnd BUFX2
XFILL_1__1556_ gnd vdd FILL
XFILL_1__1136_ gnd vdd FILL
XFILL_2__1625_ gnd vdd FILL
XFILL_2__1205_ gnd vdd FILL
X_1623_ _749_ _746_ _792_ vdd gnd AND2X2
X_1203_ _411_ _410_ _429_ _430_ vdd gnd AOI21X1
XFILL_0__951_ gnd vdd FILL
X_954_ Stg_0_bF$buf6 Stg_1_bF$buf1 _190_ vdd gnd NOR2X1
XFILL_1__1365_ gnd vdd FILL
X_1432_ _175_ _635_ _636_ _32_ vdd gnd OAI21X1
X_1012_ _246_ _243_ _164__bF$buf4 _247_ vdd gnd MUX2X1
XFILL_1__1594_ gnd vdd FILL
XFILL_1__1174_ gnd vdd FILL
XFILL_0__1489_ gnd vdd FILL
XFILL_0__1069_ gnd vdd FILL
X_1661_ _201__bF$buf5 _828_ _824_ _829_ vdd gnd NAND3X1
X_1241_ _463_ _465_ _462_ _466_ vdd gnd OAI21X1
X_992_ _200_ _217_ _225_ _228_ vdd gnd NAND3X1
XFILL_2__1719_ gnd vdd FILL
XFILL_0__1701_ gnd vdd FILL
XFILL_2__1472_ gnd vdd FILL
XFILL_2__1052_ gnd vdd FILL
XFILL_0__1298_ gnd vdd FILL
X_1717_ _81_ _96_ vdd gnd INVX1
XFILL_1__1459_ gnd vdd FILL
XFILL_1__1039_ gnd vdd FILL
X_1470_ Ain[1] _625_ _656_ vdd gnd NAND2X1
X_1050_ _282_ _283_ vdd gnd INVX1
XFILL_0__1510_ gnd vdd FILL
XFILL_2__1528_ gnd vdd FILL
XFILL88050x7350 gnd vdd FILL
X_1526_ Yin1[0] _679_ _698_ _700_ vdd gnd NAND3X1
X_1106_ Stg_2_bF$buf4 _336_ _337_ vdd gnd NAND2X1
XFILL_1__1688_ gnd vdd FILL
XFILL_1__1268_ gnd vdd FILL
X_1755_ _27_ clk_bF$buf4 Xin12b[11] vdd gnd DFFPOSX1
X_1335_ Ain12b[5] _553_ vdd gnd INVX1
XFILL_1__1497_ gnd vdd FILL
XFILL_1__1077_ gnd vdd FILL
XFILL_1__870_ gnd vdd FILL
XFILL_2__1566_ gnd vdd FILL
XFILL_2__1146_ gnd vdd FILL
X_1564_ Stg_0_bF$buf5 Xin12b[11] _736_ vdd gnd NAND2X1
X_1144_ _164__bF$buf3 _334_ _357_ _373_ vdd gnd AOI21X1
XFILL_0__892_ gnd vdd FILL
XFILL_1__926_ gnd vdd FILL
X_895_ LoadCtl_0_bF$buf1 Ycalc[0] _119_ Ycalc[2] _136_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1604_ gnd vdd FILL
XFILL_2__1375_ gnd vdd FILL
XFILL_0__948_ gnd vdd FILL
XFILL_2_BUFX2_insert11 gnd vdd FILL
X_1793_ LoadCtl[2] clk_bF$buf7 LoadCtl[3] vdd gnd DFFPOSX1
X_1373_ _587_ _588_ vdd gnd INVX1
XFILL_0__1413_ gnd vdd FILL
X_1429_ _209_ _632_ _634_ _31_ vdd gnd OAI21X1
X_1009_ Yin12b[4] _244_ vdd gnd INVX1
X_1182_ _392_ _404_ _409_ vdd gnd NAND2X1
XFILL_1__964_ gnd vdd FILL
XFILL_0__1642_ gnd vdd FILL
XFILL_0__1222_ gnd vdd FILL
X_1658_ _800_ _826_ vdd gnd INVX1
X_1238_ _421_ _445_ _440_ _463_ vdd gnd OAI21X1
XFILL_0__986_ gnd vdd FILL
X_989_ Ain12b_11_bF$buf4 _199_ _224_ _225_ vdd gnd OAI21X1
XFILL_2__1469_ gnd vdd FILL
XFILL_0__1451_ gnd vdd FILL
XFILL_2__1049_ gnd vdd FILL
XFILL_0__1031_ gnd vdd FILL
XFILL88650x46950 gnd vdd FILL
XFILL_2__980_ gnd vdd FILL
XFILL_1__1612_ gnd vdd FILL
X_1467_ LoadCtl_0_bF$buf1 _200_ _654_ _49_ vdd gnd OAI21X1
X_1047_ _188__bF$buf1 _280_ _254_ _3_ vdd gnd OAI21X1
XFILL87450x61350 gnd vdd FILL
XFILL_0__1507_ gnd vdd FILL
XFILL_0__1680_ gnd vdd FILL
XFILL_0__1260_ gnd vdd FILL
XFILL_1__1421_ gnd vdd FILL
XFILL_1__1001_ gnd vdd FILL
X_1696_ _844_ _842_ _76_ vdd gnd NAND2X1
X_1276_ Ain0[1] _496_ _498_ vdd gnd NAND2X1
XFILL_0__1316_ gnd vdd FILL
XFILL_1__1650_ gnd vdd FILL
XFILL_1__1230_ gnd vdd FILL
X_1085_ _258_ _292_ _317_ vdd gnd NAND2X1
XFILL_1__867_ gnd vdd FILL
XFILL_0__1545_ gnd vdd FILL
XFILL_0__1125_ gnd vdd FILL
XFILL_1__1706_ gnd vdd FILL
XFILL_0__889_ gnd vdd FILL
XFILL_0__1354_ gnd vdd FILL
XFILL_2__883_ gnd vdd FILL
XFILL_1__1515_ gnd vdd FILL
XFILL_0__1583_ gnd vdd FILL
XFILL_0__1163_ gnd vdd FILL
XFILL_0__910_ gnd vdd FILL
X_913_ _109_ _148_ _151_ _152_ vdd gnd AOI21X1
XFILL_1__1324_ gnd vdd FILL
X_1599_ _756_ _749_ _769_ _770_ vdd gnd AOI21X1
X_1179_ _393_ _405_ _185_ _407_ vdd gnd AOI21X1
XFILL_2__1813_ gnd vdd FILL
XFILL_0__1639_ gnd vdd FILL
XFILL_0__1219_ gnd vdd FILL
XFILL_0__1392_ gnd vdd FILL
X_1811_ LoadCtl_6_bF$buf0 Vld vdd gnd BUFX2
XFILL_1__1553_ gnd vdd FILL
XFILL_1__1133_ gnd vdd FILL
XFILL_2__1622_ gnd vdd FILL
XFILL_2__1202_ gnd vdd FILL
XFILL_0__1448_ gnd vdd FILL
XFILL_0__1028_ gnd vdd FILL
XFILL_2__977_ gnd vdd FILL
XFILL_1__1609_ gnd vdd FILL
X_1620_ _786_ _788_ _789_ _790_ vdd gnd OAI21X1
X_1200_ _412_ _426_ _427_ vdd gnd OR2X2
X_951_ _162_ LoadCtl_6_bF$buf4 _187_ _0_ vdd gnd OAI21X1
XFILL_1__1362_ gnd vdd FILL
XFILL_1__999_ gnd vdd FILL
XFILL_0__1677_ gnd vdd FILL
XFILL_0__1257_ gnd vdd FILL
XFILL_1__1418_ gnd vdd FILL
XFILL_1__1591_ gnd vdd FILL
XFILL_1__1171_ gnd vdd FILL
XFILL_0__1486_ gnd vdd FILL
XFILL_0__1066_ gnd vdd FILL
XFILL_1__1647_ gnd vdd FILL
XFILL_1__1227_ gnd vdd FILL
XFILL_0__1295_ gnd vdd FILL
X_1714_ _93_ _86_ _94_ vdd gnd OR2X2
XFILL_1__1456_ gnd vdd FILL
XFILL_1__1036_ gnd vdd FILL
XFILL_2__1525_ gnd vdd FILL
XFILL_2__1105_ gnd vdd FILL
X_1523_ _678_ _697_ vdd gnd INVX1
X_1103_ Stg_0_bF$buf5 _311_ _333_ _334_ vdd gnd OAI21X1
XFILL_1__1685_ gnd vdd FILL
XFILL_1__1265_ gnd vdd FILL
XFILL_0__907_ gnd vdd FILL
X_1752_ _24_ clk_bF$buf0 Acalc[10] vdd gnd DFFPOSX1
X_1332_ _549_ _547_ _550_ vdd gnd NOR2X1
XFILL_1__1494_ gnd vdd FILL
XFILL_1__1074_ gnd vdd FILL
XFILL_0__1389_ gnd vdd FILL
X_1808_ _859_[0] Aout[0] vdd gnd BUFX2
X_1561_ _711_ _732_ _733_ _734_ vdd gnd OAI21X1
X_1141_ _158_ LoadCtl_6_bF$buf2 _370_ _369_ _7_ vdd 
+ gnd
+ OAI22X1
XFILL_1__923_ gnd vdd FILL
X_892_ Ycalc[4] _133_ vdd gnd INVX1
XFILL_0__1601_ gnd vdd FILL
XFILL_2__1619_ gnd vdd FILL
XFILL_2__1372_ gnd vdd FILL
XFILL_0__1198_ gnd vdd FILL
X_1617_ _749_ _768_ _787_ vdd gnd NAND2X1
XFILL_0__945_ gnd vdd FILL
X_948_ Stg_0_bF$buf4 _184_ LoadCtl_6_bF$buf2 _185_ vdd gnd OAI21X1
XFILL_1__1359_ gnd vdd FILL
X_1790_ Rdy clk_bF$buf4 LoadCtl[0] vdd gnd DFFPOSX1
X_1370_ Acalc[8] _188__bF$buf4 _585_ vdd gnd NAND2X1
XFILL_0__1410_ gnd vdd FILL
X_1426_ Xin[0] _632_ _633_ vdd gnd NAND2X1
X_1006_ Yin12b[6] _241_ vdd gnd INVX1
XFILL_1__1588_ gnd vdd FILL
XFILL_1__1168_ gnd vdd FILL
XFILL_1__961_ gnd vdd FILL
X_1655_ _822_ _788_ _819_ _823_ vdd gnd OAI21X1
X_1235_ _454_ _452_ _460_ vdd gnd NOR2X1
XFILL_0__983_ gnd vdd FILL
X_986_ Xin12b[6] Xin12b[5] Stg_0_bF$buf4 _222_ vdd gnd MUX2X1
XFILL_1__1397_ gnd vdd FILL
XFILL_2__1466_ gnd vdd FILL
XFILL_2__1046_ gnd vdd FILL
X_1464_ LoadCtl_0_bF$buf1 Yin[0] _653_ vdd gnd NAND2X1
X_1044_ _275_ _278_ vdd gnd INVX1
XFILL_0__1504_ gnd vdd FILL
X_1693_ _858_ _73_ vdd gnd INVX1
X_1273_ Ain12b_11_bF$buf2 _486_ _494_ _495_ vdd gnd OAI21X1
XFILL_0__1313_ gnd vdd FILL
X_1749_ _21_ clk_bF$buf3 Acalc[7] vdd gnd DFFPOSX1
X_1329_ _546_ _547_ vdd gnd INVX1
XFILL88350x79350 gnd vdd FILL
X_1082_ _164__bF$buf3 _264_ _314_ vdd gnd NAND2X1
XFILL_1__864_ gnd vdd FILL
XFILL_0__1542_ gnd vdd FILL
XFILL_0__1122_ gnd vdd FILL
XFILL_1__1703_ gnd vdd FILL
X_1558_ _730_ _731_ vdd gnd INVX1
X_1138_ _367_ _368_ vdd gnd INVX1
XFILL_0__886_ gnd vdd FILL
X_889_ LoadCtl[4] Ycalc[8] _130_ vdd gnd NAND2X1
XFILL_2__1369_ gnd vdd FILL
XFILL_0__1351_ gnd vdd FILL
XFILL_2__880_ gnd vdd FILL
XFILL_1__1512_ gnd vdd FILL
X_1787_ _59_ clk_bF$buf7 Ain1[1] vdd gnd DFFPOSX1
X_1367_ _573_ _582_ _583_ vdd gnd OR2X2
XFILL_0__1407_ gnd vdd FILL
XFILL_2__936_ gnd vdd FILL
XFILL_0__1580_ gnd vdd FILL
XFILL_0__1160_ gnd vdd FILL
X_910_ Xcalc[6] _149_ vdd gnd INVX1
XFILL_1__1321_ gnd vdd FILL
X_1596_ _765_ _767_ vdd gnd INVX1
X_1176_ _209_ _397_ _403_ _404_ vdd gnd NAND3X1
XFILL_1__958_ gnd vdd FILL
XFILL88650x32550 gnd vdd FILL
XFILL_0__1636_ gnd vdd FILL
XFILL_0__1216_ gnd vdd FILL
XFILL_1__1550_ gnd vdd FILL
XFILL_1__1130_ gnd vdd FILL
XFILL_0__1445_ gnd vdd FILL
XFILL_0__1025_ gnd vdd FILL
XFILL_2__974_ gnd vdd FILL
XFILL_1__1606_ gnd vdd FILL
XFILL_1__996_ gnd vdd FILL
XFILL_0__1674_ gnd vdd FILL
XFILL_0__1254_ gnd vdd FILL
XFILL_1__1415_ gnd vdd FILL
XFILL_0__1483_ gnd vdd FILL
XFILL_0__1063_ gnd vdd FILL
XFILL_1__1644_ gnd vdd FILL
XFILL_1__1224_ gnd vdd FILL
X_1499_ _181_ _228_ _226_ _673_ vdd gnd AOI21X1
X_1079_ Yin12b[10] _311_ vdd gnd INVX1
XFILL_0__1539_ gnd vdd FILL
XFILL_0__1119_ gnd vdd FILL
XFILL_0__1292_ gnd vdd FILL
X_1711_ _849_ _853_ _836_ _91_ vdd gnd NAND3X1
XFILL_1__1453_ gnd vdd FILL
XFILL_1__1033_ gnd vdd FILL
XFILL_2__1522_ gnd vdd FILL
XFILL_2__1102_ gnd vdd FILL
XFILL_0__1348_ gnd vdd FILL
XFILL_2__877_ gnd vdd FILL
XFILL_1__1509_ gnd vdd FILL
X_1520_ Stg_1_bF$buf0 _211_ _694_ vdd gnd NAND2X1
X_1100_ _308_ _326_ _324_ _331_ vdd gnd AOI21X1
XFILL_1__1682_ gnd vdd FILL
XFILL_1__1262_ gnd vdd FILL
XFILL_1__899_ gnd vdd FILL
XFILL_0__1577_ gnd vdd FILL
XFILL_0__1157_ gnd vdd FILL
XFILL_0__904_ gnd vdd FILL
X_907_ Xcalc[10] _146_ vdd gnd INVX1
XFILL_1__1318_ gnd vdd FILL
XFILL_1__1491_ gnd vdd FILL
XFILL_1__1071_ gnd vdd FILL
XFILL_0__1386_ gnd vdd FILL
X_1805_ _70_ clk_bF$buf1 Ycalc[9] vdd gnd DFFPOSX1
XFILL_1__1547_ gnd vdd FILL
XFILL_1__1127_ gnd vdd FILL
XFILL_1__920_ gnd vdd FILL
XFILL_0__1195_ gnd vdd FILL
X_1614_ Ain12b_11_bF$buf1 _779_ _777_ _784_ vdd gnd OAI21X1
XFILL_0__942_ gnd vdd FILL
X_945_ _181_ _182_ vdd gnd INVX1
XFILL_1__1356_ gnd vdd FILL
XFILL_2__1425_ gnd vdd FILL
X_1423_ Xin[1] _629_ _631_ vdd gnd NAND2X1
X_1003_ Stg_0_bF$buf2 _163_ _237_ _238_ vdd gnd OAI21X1
XFILL_1__1585_ gnd vdd FILL
XFILL_1__1165_ gnd vdd FILL
X_1652_ _782_ _785_ _820_ vdd gnd AND2X2
X_1232_ _456_ _453_ Xin12b[10] _457_ vdd gnd OAI21X1
XFILL_0__980_ gnd vdd FILL
X_983_ Xin1[0] Xin0[1] Stg_0_bF$buf6 _219_ vdd gnd MUX2X1
XFILL_1__1394_ gnd vdd FILL
XFILL_2__1043_ gnd vdd FILL
XFILL88050x57750 gnd vdd FILL
XFILL_0__1289_ gnd vdd FILL
X_1708_ _785_ _806_ _821_ _88_ vdd gnd OAI21X1
X_1461_ _234_ _119_ _651_ _46_ vdd gnd OAI21X1
X_1041_ _205_ _272_ _270_ _275_ vdd gnd NAND3X1
XFILL_2__1519_ gnd vdd FILL
XFILL_0__1501_ gnd vdd FILL
XFILL_2__1692_ gnd vdd FILL
XFILL_2__1272_ gnd vdd FILL
XFILL_0__1098_ gnd vdd FILL
X_1517_ _164__bF$buf2 _207_ _691_ vdd gnd NAND2X1
XFILL_1__1679_ gnd vdd FILL
XFILL_1__1259_ gnd vdd FILL
X_1690_ _856_ _855_ _709_ _857_ vdd gnd OAI21X1
X_1270_ Stg_0_bF$buf4 _492_ vdd gnd INVX2
XFILL_0__1310_ gnd vdd FILL
X_1746_ _18_ clk_bF$buf3 Acalc[4] vdd gnd DFFPOSX1
X_1326_ Acalc[5] _188__bF$buf3 _544_ vdd gnd NAND2X1
XFILL_1__1488_ gnd vdd FILL
XFILL_1__1068_ gnd vdd FILL
XFILL_1__1700_ gnd vdd FILL
X_1555_ _720_ _727_ _728_ vdd gnd NAND2X1
X_1135_ Ain12b_11_bF$buf3 _353_ _359_ _365_ vdd gnd OAI21X1
XFILL_0__883_ gnd vdd FILL
XFILL_1__917_ gnd vdd FILL
X_886_ LoadCtl_0_bF$buf3 Acalc[1] _119_ Acalc[3] _128_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1297_ gnd vdd FILL
XFILL_2__1366_ gnd vdd FILL
XFILL_0__939_ gnd vdd FILL
X_1784_ _56_ clk_bF$buf6 Ain12b[4] vdd gnd DFFPOSX1
X_1364_ Ain12b[7] _577_ _580_ vdd gnd NOR2X1
XFILL_0__1404_ gnd vdd FILL
XFILL_2__933_ gnd vdd FILL
X_1593_ _763_ _764_ vdd gnd INVX1
X_1173_ _396_ _401_ vdd gnd INVX1
XFILL_1__955_ gnd vdd FILL
XFILL_0__1633_ gnd vdd FILL
XFILL_0__1213_ gnd vdd FILL
X_1649_ Ycalc[8] _817_ vdd gnd INVX1
X_1229_ _449_ _454_ vdd gnd INVX1
XFILL_0__977_ gnd vdd FILL
XFILL_0__1442_ gnd vdd FILL
XFILL_0__1022_ gnd vdd FILL
XFILL_1__1603_ gnd vdd FILL
X_1458_ Yin[1] _635_ _650_ vdd gnd NAND2X1
X_1038_ _201__bF$buf3 _271_ _249_ _272_ vdd gnd NAND3X1
XFILL_1__993_ gnd vdd FILL
XFILL_2__1689_ gnd vdd FILL
XFILL_0__1671_ gnd vdd FILL
XFILL_2__1269_ gnd vdd FILL
XFILL_0__1251_ gnd vdd FILL
XFILL_1__1412_ gnd vdd FILL
X_1687_ _853_ _849_ _854_ vdd gnd AND2X2
X_1267_ Acalc[0] _188__bF$buf0 _490_ vdd gnd NAND2X1
XFILL_0__1727_ gnd vdd FILL
XFILL_0__1307_ gnd vdd FILL
XFILL_0__1480_ gnd vdd FILL
XFILL_0__1060_ gnd vdd FILL
XFILL_1__1641_ gnd vdd FILL
XFILL_1__1221_ gnd vdd FILL
X_1496_ LoadCtl_6_bF$buf1 ISin _671_ vdd gnd NAND2X1
X_1076_ _282_ _302_ _300_ _308_ vdd gnd OAI21X1
XFILL_0__1536_ gnd vdd FILL
XFILL_0__1116_ gnd vdd FILL
XFILL_1__1450_ gnd vdd FILL
XFILL_1__1030_ gnd vdd FILL
XFILL_0__1345_ gnd vdd FILL
XFILL_2__874_ gnd vdd FILL
XFILL_1__1506_ gnd vdd FILL
XFILL_1__896_ gnd vdd FILL
XFILL_0__1574_ gnd vdd FILL
XFILL_0__1154_ gnd vdd FILL
XFILL_0__901_ gnd vdd FILL
X_904_ _109_ _140_ _143_ _144_ vdd gnd AOI21X1
XFILL_1__1315_ gnd vdd FILL
XFILL_0__1383_ gnd vdd FILL
X_1802_ _67_ clk_bF$buf1 Ycalc[6] vdd gnd DFFPOSX1
XFILL_1__1544_ gnd vdd FILL
XFILL_1__1124_ gnd vdd FILL
X_1399_ _609_ _589_ _608_ _612_ vdd gnd OAI21X1
XFILL_0__1439_ gnd vdd FILL
XFILL_0__1019_ gnd vdd FILL
XFILL_0__1192_ gnd vdd FILL
X_1611_ Ain12b_11_bF$buf1 _779_ _780_ _781_ vdd gnd OAI21X1
X_942_ _178_ _171_ Stg_2_bF$buf2 _179_ vdd gnd MUX2X1
XFILL_1__1353_ gnd vdd FILL
XFILL_2__1422_ gnd vdd FILL
XFILL_2__1002_ gnd vdd FILL
XFILL_0__1668_ gnd vdd FILL
XFILL_0__1248_ gnd vdd FILL
XFILL_1__1409_ gnd vdd FILL
XCLKBUF1_insert12 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert13 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert14 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert15 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert16 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert17 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert18 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert19 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1420_ _628_ _109_ _629_ vdd gnd AND2X2
X_1000_ Stg_0_bF$buf2 Yin1[1] _235_ vdd gnd NAND2X1
XFILL_1__1582_ gnd vdd FILL
XFILL_1__1162_ gnd vdd FILL
XFILL_0__1477_ gnd vdd FILL
XFILL_0__1057_ gnd vdd FILL
XFILL_1__1638_ gnd vdd FILL
XFILL_1__1218_ gnd vdd FILL
X_980_ _215_ _208_ Stg_2_bF$buf1 _216_ vdd gnd MUX2X1
XFILL_1__1391_ gnd vdd FILL
XFILL_0__1286_ gnd vdd FILL
X_1705_ _836_ _854_ _823_ _85_ vdd gnd NAND3X1
XFILL_1__1447_ gnd vdd FILL
XFILL_1__1027_ gnd vdd FILL
XFILL_2__1516_ gnd vdd FILL
XFILL_0__1095_ gnd vdd FILL
X_1514_ Stg_1_bF$buf0 _174_ _688_ vdd gnd NAND2X1
XFILL_1__1676_ gnd vdd FILL
XFILL_1__1256_ gnd vdd FILL
X_1743_ _15_ clk_bF$buf0 Acalc[1] vdd gnd DFFPOSX1
X_1323_ _539_ _542_ vdd gnd INVX1
XFILL_1__1485_ gnd vdd FILL
XFILL_1__1065_ gnd vdd FILL
X_1552_ _164__bF$buf0 _723_ _724_ _725_ vdd gnd OAI21X1
X_1132_ Ain12b_11_bF$buf0 _353_ _361_ _362_ vdd gnd OAI21X1
XFILL_0__880_ gnd vdd FILL
XFILL_1__914_ gnd vdd FILL
X_883_ LoadCtl[2] Acalc[5] _125_ vdd gnd NAND2X1
XFILL_1__1294_ gnd vdd FILL
XFILL_2__1363_ gnd vdd FILL
XFILL_0__1189_ gnd vdd FILL
X_1608_ _201__bF$buf5 _777_ _774_ _778_ vdd gnd NAND3X1
XFILL_0__936_ gnd vdd FILL
X_939_ Stg_0_bF$buf4 Xin12b[5] _176_ vdd gnd NAND2X1
X_1781_ _53_ clk_bF$buf3 Ain12b[9] vdd gnd DFFPOSX1
X_1361_ _576_ _577_ vdd gnd INVX1
XFILL_0__1401_ gnd vdd FILL
XFILL_2__1419_ gnd vdd FILL
XFILL_2__930_ gnd vdd FILL
XFILL_2__1592_ gnd vdd FILL
X_1417_ Xin[1] _625_ _627_ vdd gnd NAND2X1
XFILL_1__1579_ gnd vdd FILL
XFILL_1__1159_ gnd vdd FILL
X_1590_ _760_ _761_ vdd gnd INVX1
X_1170_ _397_ _398_ vdd gnd INVX1
XFILL_1__952_ gnd vdd FILL
XFILL_0__1630_ gnd vdd FILL
XFILL_0__1210_ gnd vdd FILL
X_1646_ _814_ _815_ vdd gnd INVX1
X_1226_ _436_ _451_ vdd gnd INVX1
XFILL_0__974_ gnd vdd FILL
X_977_ Stg_0_bF$buf3 Xin12b[6] _213_ vdd gnd NAND2X1
XFILL_1__1388_ gnd vdd FILL
XFILL_1__1600_ gnd vdd FILL
X_1455_ _262_ _632_ _648_ _43_ vdd gnd OAI21X1
X_1035_ _268_ _261_ Stg_2_bF$buf2 _269_ vdd gnd MUX2X1
XFILL_1__1197_ gnd vdd FILL
XFILL_1__990_ gnd vdd FILL
XFILL_2__1686_ gnd vdd FILL
XFILL_2__1266_ gnd vdd FILL
X_1684_ _827_ _824_ _201__bF$buf2 _851_ vdd gnd OAI21X1
X_1264_ _483_ _486_ _487_ vdd gnd NOR2X1
XFILL88350x86550 gnd vdd FILL
XFILL_0__1724_ gnd vdd FILL
XFILL_0__1304_ gnd vdd FILL
X_1493_ LoadCtl_0_bF$buf2 Ain[1] _669_ vdd gnd NAND2X1
X_1073_ _282_ _305_ _186_ _306_ vdd gnd OAI21X1
XFILL_0__1533_ gnd vdd FILL
XFILL_0__1113_ gnd vdd FILL
X_1549_ Stg_0_bF$buf5 _458_ _722_ vdd gnd NAND2X1
X_1129_ Stg_2_bF$buf4 _268_ _358_ _359_ vdd gnd OAI21X1
XFILL_0__877_ gnd vdd FILL
XFILL_0__1342_ gnd vdd FILL
XFILL_1__1503_ gnd vdd FILL
X_1778_ _50_ clk_bF$buf3 Ain12b[10] vdd gnd DFFPOSX1
X_1358_ _183__bF$buf3 _492_ _201__bF$buf3 _574_ vdd gnd NAND3X1
XFILL_1__893_ gnd vdd FILL
XFILL_2__927_ gnd vdd FILL
XFILL_0__1571_ gnd vdd FILL
XFILL_2__1589_ gnd vdd FILL
XFILL_0__1151_ gnd vdd FILL
XFILL_2__1169_ gnd vdd FILL
X_901_ Ycalc[7] _141_ vdd gnd INVX1
XFILL_1__1312_ gnd vdd FILL
X_1587_ _164__bF$buf3 _714_ _757_ _758_ vdd gnd AOI21X1
X_1167_ _183__bF$buf2 _356_ _395_ vdd gnd NOR2X1
XFILL_1__949_ gnd vdd FILL
XFILL_0__1627_ gnd vdd FILL
XFILL_0__1207_ gnd vdd FILL
XFILL87450x21750 gnd vdd FILL
XFILL_0__1380_ gnd vdd FILL
XFILL_1__1541_ gnd vdd FILL
XFILL_1__1121_ gnd vdd FILL
X_1396_ _605_ _609_ _610_ vdd gnd AND2X2
XFILL_0__1436_ gnd vdd FILL
XFILL_0__1016_ gnd vdd FILL
XFILL88350x18150 gnd vdd FILL
XFILL_1__1350_ gnd vdd FILL
XFILL_1__987_ gnd vdd FILL
XFILL_0__1665_ gnd vdd FILL
XFILL_0__1245_ gnd vdd FILL
XFILL_1__1406_ gnd vdd FILL
XFILL87750x64950 gnd vdd FILL
XFILL_0__1474_ gnd vdd FILL
XFILL_0__1054_ gnd vdd FILL
XFILL_1__1635_ gnd vdd FILL
XFILL_1__1215_ gnd vdd FILL
XFILL_0__1283_ gnd vdd FILL
X_1702_ _81_ _79_ _82_ vdd gnd NAND2X1
XFILL_1__1444_ gnd vdd FILL
XFILL_1__1024_ gnd vdd FILL
X_1299_ Stg_0_bF$buf6 _164__bF$buf1 Stg_2_bF$buf2 _519_ vdd gnd OAI21X1
XFILL_0__1339_ gnd vdd FILL
XFILL_0__1092_ gnd vdd FILL
X_1511_ _492_ _175_ _685_ vdd gnd NAND2X1
XFILL_1__1673_ gnd vdd FILL
XFILL_1__1253_ gnd vdd FILL
XFILL_2__1322_ gnd vdd FILL
XFILL_0__1568_ gnd vdd FILL
XFILL_0__1148_ gnd vdd FILL
XFILL_1__1309_ gnd vdd FILL
X_1740_ _12_ clk_bF$buf6 Xcalc[10] vdd gnd DFFPOSX1
X_1320_ _525_ _517_ _527_ _539_ vdd gnd OAI21X1
XFILL_1__1482_ gnd vdd FILL
XFILL_1__1062_ gnd vdd FILL
XFILL_0__1377_ gnd vdd FILL
XFILL_1__1538_ gnd vdd FILL
XFILL_1__1118_ gnd vdd FILL
XFILL_1__911_ gnd vdd FILL
X_880_ LoadCtl[4] Acalc[9] _122_ vdd gnd NAND2X1
XFILL_1__1291_ gnd vdd FILL
XFILL_0__1186_ gnd vdd FILL
X_1605_ _164__bF$buf3 _737_ _757_ _775_ vdd gnd AOI21X1
XFILL_0__933_ gnd vdd FILL
X_936_ Stg_0_bF$buf3 Xin12b[7] _173_ vdd gnd NAND2X1
XFILL_1__1347_ gnd vdd FILL
XFILL_2__1416_ gnd vdd FILL
X_1414_ _117_ _624_ _625_ vdd gnd NOR2X1
XFILL_1__1576_ gnd vdd FILL
XFILL_1__1156_ gnd vdd FILL
XFILL88050x64950 gnd vdd FILL
X_1643_ _810_ _798_ _812_ vdd gnd NAND2X1
X_1223_ _433_ LoadCtl_6_bF$buf1 _448_ _11_ vdd gnd OAI21X1
XFILL_0__971_ gnd vdd FILL
X_974_ Stg_0_bF$buf3 Xin12b[8] _210_ vdd gnd NAND2X1
XFILL_1__1385_ gnd vdd FILL
X_1452_ Yin[0] _632_ _647_ vdd gnd NAND2X1
X_1032_ Stg_0_bF$buf0 Yin12b[6] _266_ vdd gnd NAND2X1
XFILL_1__1194_ gnd vdd FILL
XFILL_2__1683_ gnd vdd FILL
XFILL_2__1263_ gnd vdd FILL
XFILL_0__1089_ gnd vdd FILL
X_1508_ Stg_1_bF$buf2 _681_ _680_ _682_ vdd gnd NAND3X1
X_1681_ _201__bF$buf2 _843_ _847_ _848_ vdd gnd NAND3X1
X_1261_ _190_ _484_ vdd gnd INVX1
XFILL_0__1721_ gnd vdd FILL
XFILL_2__1319_ gnd vdd FILL
XFILL_0__1301_ gnd vdd FILL
X_1737_ _9_ clk_bF$buf6 Xcalc[7] vdd gnd DFFPOSX1
X_1317_ Ain12b[4] _535_ _536_ vdd gnd NAND2X1
XFILL_1__1479_ gnd vdd FILL
XFILL_1__1059_ gnd vdd FILL
X_1490_ _660_ _665_ _667_ _59_ vdd gnd OAI21X1
X_1070_ _302_ _301_ _303_ vdd gnd NOR2X1
XFILL_0__1530_ gnd vdd FILL
XFILL_0__1110_ gnd vdd FILL
X_1546_ _183__bF$buf0 _716_ _718_ _719_ vdd gnd OAI21X1
X_1126_ Yin12b[11] _356_ vdd gnd INVX1
XFILL_0__874_ gnd vdd FILL
XFILL_1__908_ gnd vdd FILL
X_877_ LoadCtl_0_bF$buf3 Acalc[0] _119_ Acalc[2] _120_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1288_ gnd vdd FILL
XFILL_1__1500_ gnd vdd FILL
X_1775_ _47_ clk_bF$buf1 Yin1[1] vdd gnd DFFPOSX1
X_1355_ _570_ _562_ LoadCtl_6_bF$buf4 _572_ vdd gnd OAI21X1
XFILL_1__1097_ gnd vdd FILL
XFILL_0__1815_ gnd vdd FILL
XFILL_1__890_ gnd vdd FILL
XFILL_2__924_ gnd vdd FILL
XFILL_2__1586_ gnd vdd FILL
XFILL_2__1166_ gnd vdd FILL
X_1584_ _751_ _729_ _750_ _755_ vdd gnd AOI21X1
X_1164_ _377_ _378_ _172_ _392_ vdd gnd AOI21X1
XFILL_1__946_ gnd vdd FILL
XFILL_0__1624_ gnd vdd FILL
XFILL_0__1204_ gnd vdd FILL
XFILL_0__968_ gnd vdd FILL
X_1393_ Ain12b_11_bF$buf2 _606_ _607_ vdd gnd NAND2X1
XFILL_0__1433_ gnd vdd FILL
XFILL_0__1013_ gnd vdd FILL
X_1449_ _644_ _629_ _645_ _40_ vdd gnd OAI21X1
X_1029_ Stg_0_bF$buf0 Yin12b[8] _263_ vdd gnd NAND2X1
XFILL88350x72150 gnd vdd FILL
XFILL88350x39750 gnd vdd FILL
XFILL_1__984_ gnd vdd FILL
XFILL_0__1662_ gnd vdd FILL
XFILL_0__1242_ gnd vdd FILL
XFILL_1__1403_ gnd vdd FILL
X_1678_ Ain12b_11_bF$buf1 _842_ _844_ _845_ vdd gnd OAI21X1
X_1258_ _186_ _481_ _482_ vdd gnd NAND2X1
XFILL_0__1718_ gnd vdd FILL
XFILL_0__1471_ gnd vdd FILL
XFILL_2__1489_ gnd vdd FILL
XFILL_0__1051_ gnd vdd FILL
XFILL_1__1632_ gnd vdd FILL
XFILL_1__1212_ gnd vdd FILL
X_1487_ LoadCtl_0_bF$buf2 _118_ Ain1[0] _666_ vdd gnd OAI21X1
X_1067_ Xin1[0] _299_ _297_ _300_ vdd gnd NAND3X1
XFILL_0__1527_ gnd vdd FILL
XFILL_0__1107_ gnd vdd FILL
XFILL_0__1280_ gnd vdd FILL
XFILL_1__1441_ gnd vdd FILL
XFILL_1__1021_ gnd vdd FILL
X_1296_ _509_ _514_ _516_ vdd gnd NAND2X1
XFILL_0__1336_ gnd vdd FILL
XFILL_1__1670_ gnd vdd FILL
XFILL_1__1250_ gnd vdd FILL
XFILL_1__887_ gnd vdd FILL
XFILL_0__1565_ gnd vdd FILL
XFILL_0__1145_ gnd vdd FILL
XFILL_1__1726_ gnd vdd FILL
XFILL_1__1306_ gnd vdd FILL
XFILL_0_BUFX2_insert30 gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0_BUFX2_insert34 gnd vdd FILL
XFILL_0_BUFX2_insert35 gnd vdd FILL
XFILL_0_BUFX2_insert36 gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
XFILL_0_BUFX2_insert38 gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
XFILL_0__1374_ gnd vdd FILL
XFILL_1__1535_ gnd vdd FILL
XFILL_1__1115_ gnd vdd FILL
XFILL_0__1183_ gnd vdd FILL
X_1602_ _770_ _772_ _709_ _773_ vdd gnd OAI21X1
XFILL_0__930_ gnd vdd FILL
X_933_ Stg_0_bF$buf6 _168_ _169_ _170_ vdd gnd OAI21X1
XFILL_1__1344_ gnd vdd FILL
X_1199_ _421_ _425_ _426_ vdd gnd AND2X2
XFILL_2__1413_ gnd vdd FILL
XFILL_0__1659_ gnd vdd FILL
XFILL_0__1239_ gnd vdd FILL
X_1411_ _619_ _615_ _618_ _623_ vdd gnd OAI21X1
XFILL_1__1573_ gnd vdd FILL
XFILL_1__1153_ gnd vdd FILL
XBUFX2_insert40 Stg[1] Stg_1_bF$buf2 vdd gnd BUFX2
XBUFX2_insert41 Stg[1] Stg_1_bF$buf1 vdd gnd BUFX2
XBUFX2_insert42 Stg[1] Stg_1_bF$buf0 vdd gnd BUFX2
XBUFX2_insert43 _183_ _183__bF$buf3 vdd gnd BUFX2
XBUFX2_insert44 _183_ _183__bF$buf2 vdd gnd BUFX2
XBUFX2_insert45 _183_ _183__bF$buf1 vdd gnd BUFX2
XBUFX2_insert46 _183_ _183__bF$buf0 vdd gnd BUFX2
XBUFX2_insert47 Ain12b[11] Ain12b_11_bF$buf4 vdd gnd BUFX2
XBUFX2_insert48 Ain12b[11] Ain12b_11_bF$buf3 vdd gnd BUFX2
XBUFX2_insert49 Ain12b[11] Ain12b_11_bF$buf2 vdd gnd BUFX2
XFILL_2__1642_ gnd vdd FILL
XFILL_0__1468_ gnd vdd FILL
XFILL_0__1048_ gnd vdd FILL
XFILL_2__997_ gnd vdd FILL
XFILL_1__1629_ gnd vdd FILL
XFILL_1__1209_ gnd vdd FILL
X_1640_ _808_ _807_ _262_ _809_ vdd gnd AOI21X1
X_1220_ _434_ _445_ _430_ _446_ vdd gnd NOR3X1
X_971_ Stg_0_bF$buf6 _205_ _206_ _207_ vdd gnd OAI21X1
XFILL_1__1382_ gnd vdd FILL
XFILL_0__1697_ gnd vdd FILL
XFILL_0__1277_ gnd vdd FILL
XFILL_1__1438_ gnd vdd FILL
XFILL_1__1018_ gnd vdd FILL
XFILL_1__1191_ gnd vdd FILL
XFILL_2__1260_ gnd vdd FILL
XFILL_0__1086_ gnd vdd FILL
X_1505_ _201__bF$buf6 _678_ _674_ _679_ vdd gnd NAND3X1
XFILL_1__1667_ gnd vdd FILL
XFILL_1__1247_ gnd vdd FILL
XFILL_2__1316_ gnd vdd FILL
X_1734_ _6_ clk_bF$buf3 Xcalc[4] vdd gnd DFFPOSX1
X_1314_ Stg_0_bF$buf1 _183__bF$buf3 _164__bF$buf1 _533_ vdd gnd NAND3X1
XFILL_1__1476_ gnd vdd FILL
XFILL_1__1056_ gnd vdd FILL
X_1543_ _164__bF$buf4 _714_ _715_ _716_ vdd gnd OAI21X1
X_1123_ _338_ _332_ _353_ vdd gnd NOR2X1
XFILL_0__871_ gnd vdd FILL
XFILL_1__905_ gnd vdd FILL
X_874_ _116_ _117_ vdd gnd INVX2
XFILL_1__1285_ gnd vdd FILL
XFILL_0__927_ gnd vdd FILL
X_1772_ _44_ clk_bF$buf2 Yin12b[4] vdd gnd DFFPOSX1
X_1352_ _564_ _565_ _568_ _569_ vdd gnd OAI21X1
XFILL_1__1094_ gnd vdd FILL
XFILL_0__1812_ gnd vdd FILL
XFILL_2__1583_ gnd vdd FILL
XFILL_2__1163_ gnd vdd FILL
X_1408_ _619_ _615_ LoadCtl_6_bF$buf0 _621_ vdd gnd OAI21X1
X_1581_ _752_ _750_ _192_ _753_ vdd gnd AOI21X1
X_1161_ _389_ _388_ _191_ _390_ vdd gnd OAI21X1
XFILL_1__943_ gnd vdd FILL
XFILL_2__1639_ gnd vdd FILL
XFILL_0__1621_ gnd vdd FILL
XFILL_0__1201_ gnd vdd FILL
XFILL_2__1219_ gnd vdd FILL
X_1637_ _805_ _802_ Yin12b[7] _806_ vdd gnd AOI21X1
X_1217_ _436_ _437_ _443_ vdd gnd NOR2X1
XFILL_0__965_ gnd vdd FILL
X_968_ Stg_0_bF$buf1 _202_ _203_ _204_ vdd gnd OAI21X1
XFILL_1__1379_ gnd vdd FILL
X_1390_ _589_ _604_ vdd gnd INVX1
XFILL_0__1430_ gnd vdd FILL
XFILL_0__1010_ gnd vdd FILL
X_1446_ _356_ _625_ _643_ _39_ vdd gnd OAI21X1
X_1026_ Stg_0_bF$buf2 _200_ _259_ _260_ vdd gnd OAI21X1
XFILL_1__1188_ gnd vdd FILL
XFILL_1__981_ gnd vdd FILL
XFILL_1__1400_ gnd vdd FILL
X_1675_ _827_ _824_ _842_ vdd gnd NOR2X1
X_1255_ _478_ _476_ _479_ vdd gnd NAND2X1
XFILL_0__1715_ gnd vdd FILL
XFILL_2__1486_ gnd vdd FILL
XFILL_2__1066_ gnd vdd FILL
X_1484_ _553_ _635_ _663_ _57_ vdd gnd OAI21X1
X_1064_ _296_ _295_ _297_ vdd gnd OR2X2
XFILL_0__1524_ gnd vdd FILL
XFILL_0__1104_ gnd vdd FILL
XFILL_0__868_ gnd vdd FILL
X_1293_ _512_ _505_ _514_ vdd gnd NAND2X1
XFILL_0__1333_ gnd vdd FILL
X_1769_ _41_ clk_bF$buf4 Yin12b[9] vdd gnd DFFPOSX1
X_1349_ _564_ _565_ _566_ vdd gnd NOR2X1
XFILL_0__1809_ gnd vdd FILL
XFILL_1__884_ gnd vdd FILL
XFILL_0__1562_ gnd vdd FILL
XFILL_0__1142_ gnd vdd FILL
XFILL_1__1723_ gnd vdd FILL
XFILL_1__1303_ gnd vdd FILL
X_1578_ _746_ _749_ _750_ vdd gnd NAND2X1
X_1158_ _331_ _383_ _386_ _387_ vdd gnd OAI21X1
XFILL_0__1618_ gnd vdd FILL
XFILL_0__1371_ gnd vdd FILL
XFILL88350x25350 gnd vdd FILL
XFILL_1__1532_ gnd vdd FILL
XFILL_1__1112_ gnd vdd FILL
X_1387_ _592_ _601_ LoadCtl_6_bF$buf0 _602_ vdd gnd OAI21X1
XFILL_0__1427_ gnd vdd FILL
XFILL_0__1007_ gnd vdd FILL
XFILL_0__1180_ gnd vdd FILL
X_930_ Stg_0_bF$buf1 _165_ _166_ _167_ vdd gnd OAI21X1
XFILL_1__1341_ gnd vdd FILL
X_1196_ _201__bF$buf4 _418_ _413_ _423_ vdd gnd NAND3X1
XFILL_1__978_ gnd vdd FILL
XFILL_0__1656_ gnd vdd FILL
XFILL_0__1236_ gnd vdd FILL
XFILL_1__1570_ gnd vdd FILL
XFILL_1__1150_ gnd vdd FILL
XBUFX2_insert10 _188_ _188__bF$buf1 vdd gnd BUFX2
XBUFX2_insert11 _188_ _188__bF$buf0 vdd gnd BUFX2
XFILL_0__1465_ gnd vdd FILL
XFILL_0__1045_ gnd vdd FILL
XFILL_2__994_ gnd vdd FILL
XFILL_1__1626_ gnd vdd FILL
XFILL_1__1206_ gnd vdd FILL
XFILL_0__1694_ gnd vdd FILL
XFILL_0__1274_ gnd vdd FILL
XFILL_1__1435_ gnd vdd FILL
XFILL_1__1015_ gnd vdd FILL
XFILL_0__1083_ gnd vdd FILL
X_1502_ _675_ _196_ Stg_1_bF$buf3 _676_ vdd gnd MUX2X1
XFILL_1__1664_ gnd vdd FILL
XFILL_1__1244_ gnd vdd FILL
X_1099_ _188__bF$buf1 _330_ _307_ _5_ vdd gnd OAI21X1
XFILL_2__1313_ gnd vdd FILL
XFILL_0__1559_ gnd vdd FILL
XFILL_0__1139_ gnd vdd FILL
X_1731_ _3_ clk_bF$buf0 Xcalc[1] vdd gnd DFFPOSX1
X_1311_ _188__bF$buf0 _529_ _530_ _17_ vdd gnd OAI21X1
XFILL_1__1473_ gnd vdd FILL
XFILL_1__1053_ gnd vdd FILL
XFILL_0__1368_ gnd vdd FILL
XFILL_2__897_ gnd vdd FILL
XFILL_1__1529_ gnd vdd FILL
XFILL_1__1109_ gnd vdd FILL
X_1540_ Stg_0_bF$buf5 Xin12b[10] _713_ vdd gnd NAND2X1
X_1120_ _350_ _349_ _351_ vdd gnd NAND2X1
XFILL_1__902_ gnd vdd FILL
X_871_ _110_ _113_ _111_ _114_ vdd gnd OAI21X1
XFILL_1__1282_ gnd vdd FILL
XFILL_0__1597_ gnd vdd FILL
XFILL_0__1177_ gnd vdd FILL
XFILL_0__924_ gnd vdd FILL
X_927_ Stg_1_bF$buf0 _164_ vdd gnd INVX8
XFILL_1__1338_ gnd vdd FILL
XFILL_1__1091_ gnd vdd FILL
XFILL_2__1580_ gnd vdd FILL
XFILL_2__1160_ gnd vdd FILL
X_1405_ Ain12b[10] _201__bF$buf0 _618_ vdd gnd NAND2X1
XFILL_1__1567_ gnd vdd FILL
XFILL_1__1147_ gnd vdd FILL
XFILL_1__940_ gnd vdd FILL
XFILL_2__1636_ gnd vdd FILL
XFILL_2__1216_ gnd vdd FILL
X_1634_ _801_ _803_ vdd gnd INVX1
X_1214_ Xin12b[9] _438_ _439_ _440_ vdd gnd NAND3X1
XFILL_0__962_ gnd vdd FILL
X_965_ Ain12b_11_bF$buf0 _201_ vdd gnd INVX8
XFILL_1__1376_ gnd vdd FILL
X_1443_ Yin[0] _625_ _642_ vdd gnd NAND2X1
X_1023_ Stg_0_bF$buf2 Yin12b[4] _257_ vdd gnd NAND2X1
XFILL_1__1185_ gnd vdd FILL
X_1672_ _817_ _188__bF$buf2 _839_ _815_ _69_ vdd 
+ gnd
+ AOI22X1
X_1252_ Ain12b_11_bF$buf3 _459_ _475_ _476_ vdd gnd OAI21X1
XFILL_0__1712_ gnd vdd FILL
XFILL_2__1483_ gnd vdd FILL
XFILL_2__1063_ gnd vdd FILL
X_1728_ _0_ clk_bF$buf5 Ycalc[0] vdd gnd DFFPOSX1
X_1308_ _527_ _524_ _516_ _528_ vdd gnd NAND3X1
X_1481_ Ain[0] _635_ _662_ vdd gnd NAND2X1
X_1061_ _291_ _293_ _294_ vdd gnd NAND2X1
XFILL_0__1521_ gnd vdd FILL
XFILL_2__1539_ gnd vdd FILL
XFILL_2__1119_ gnd vdd FILL
XFILL_0__1101_ gnd vdd FILL
X_1537_ _699_ _673_ _700_ _710_ vdd gnd OAI21X1
X_1117_ _347_ _348_ vdd gnd INVX1
XFILL_0__865_ gnd vdd FILL
X_868_ LoadCtl[2] Acalc[4] _111_ vdd gnd NAND2X1
XFILL_1__1699_ gnd vdd FILL
XFILL_1__1279_ gnd vdd FILL
X_1290_ _509_ _510_ _511_ vdd gnd NAND2X1
XFILL_0__1330_ gnd vdd FILL
X_1766_ _38_ clk_bF$buf4 Yin12b[10] vdd gnd DFFPOSX1
X_1346_ Stg_2_bF$buf2 _485_ _191_ _563_ vdd gnd OAI21X1
XFILL_1__1088_ gnd vdd FILL
XFILL_1__881_ gnd vdd FILL
XFILL_1__1720_ gnd vdd FILL
XFILL_1_CLKBUF1_insert12 gnd vdd FILL
XFILL_1__1300_ gnd vdd FILL
XFILL_1_CLKBUF1_insert13 gnd vdd FILL
XFILL_1_CLKBUF1_insert14 gnd vdd FILL
XFILL_1_CLKBUF1_insert15 gnd vdd FILL
XFILL_1_CLKBUF1_insert16 gnd vdd FILL
XFILL_1_CLKBUF1_insert17 gnd vdd FILL
XFILL_1_CLKBUF1_insert18 gnd vdd FILL
XFILL_1_CLKBUF1_insert19 gnd vdd FILL
X_1575_ _742_ _747_ vdd gnd INVX1
X_1155_ _343_ _384_ vdd gnd INVX1
XFILL_1__937_ gnd vdd FILL
XFILL_0__1615_ gnd vdd FILL
XFILL_2__1386_ gnd vdd FILL
XFILL_0__959_ gnd vdd FILL
X_1384_ _598_ _542_ _597_ _599_ vdd gnd OAI21X1
XFILL_0__1424_ gnd vdd FILL
XFILL_0__1004_ gnd vdd FILL
XFILL88350x46950 gnd vdd FILL
X_1193_ _418_ _419_ _420_ vdd gnd NAND2X1
XFILL_1__975_ gnd vdd FILL
XFILL_0__1653_ gnd vdd FILL
XFILL_0__1233_ gnd vdd FILL
XFILL_1__1814_ gnd vdd FILL
X_1669_ _823_ _836_ _837_ vdd gnd AND2X2
X_1249_ Xin12b[11] _356_ _473_ vdd gnd NAND2X1
XFILL_0__997_ gnd vdd FILL
XFILL_0__1709_ gnd vdd FILL
XFILL_0__1462_ gnd vdd FILL
XFILL_0__1042_ gnd vdd FILL
XFILL_2__991_ gnd vdd FILL
XFILL_1__1623_ gnd vdd FILL
XFILL_1__1203_ gnd vdd FILL
X_1478_ Ain[1] _660_ vdd gnd INVX1
X_1058_ _246_ _290_ _291_ vdd gnd NAND2X1
XFILL_0__1518_ gnd vdd FILL
XFILL_0__1691_ gnd vdd FILL
XFILL_0__1271_ gnd vdd FILL
XFILL_1__1432_ gnd vdd FILL
XFILL_1__1012_ gnd vdd FILL
X_1287_ Stg_2_bF$buf0 _506_ _507_ _508_ vdd gnd OAI21X1
XFILL_0__1327_ gnd vdd FILL
XFILL_1_BUFX2_insert40 gnd vdd FILL
XFILL_1_BUFX2_insert41 gnd vdd FILL
XFILL_1_BUFX2_insert42 gnd vdd FILL
XFILL_1_BUFX2_insert43 gnd vdd FILL
XFILL_1_BUFX2_insert44 gnd vdd FILL
XFILL_1_BUFX2_insert45 gnd vdd FILL
XFILL_1_BUFX2_insert46 gnd vdd FILL
XFILL_1_BUFX2_insert47 gnd vdd FILL
XFILL_1_BUFX2_insert48 gnd vdd FILL
XFILL_1_BUFX2_insert49 gnd vdd FILL
XFILL_0__1080_ gnd vdd FILL
XFILL_1__1661_ gnd vdd FILL
XFILL_1__1241_ gnd vdd FILL
X_1096_ _327_ _309_ _328_ vdd gnd OR2X2
XFILL_1__878_ gnd vdd FILL
XFILL_0__1556_ gnd vdd FILL
XFILL_0__1136_ gnd vdd FILL
XFILL_1__1717_ gnd vdd FILL
XFILL_1__1470_ gnd vdd FILL
XFILL_1__1050_ gnd vdd FILL
XFILL_0__1365_ gnd vdd FILL
XFILL_2__894_ gnd vdd FILL
XFILL_1__1526_ gnd vdd FILL
XFILL_1__1106_ gnd vdd FILL
XFILL_0__1594_ gnd vdd FILL
XFILL_0__1174_ gnd vdd FILL
XFILL_0__921_ gnd vdd FILL
X_924_ _117_ _160_ _161_ _861_[1] vdd gnd OAI21X1
XFILL_1__1335_ gnd vdd FILL
XFILL88650x54150 gnd vdd FILL
X_1402_ _599_ _614_ _612_ _615_ vdd gnd AOI21X1
XFILL_1__1564_ gnd vdd FILL
XFILL_1__1144_ gnd vdd FILL
XFILL_2__1633_ gnd vdd FILL
XFILL_2__1213_ gnd vdd FILL
XFILL_0__1459_ gnd vdd FILL
XFILL_0__1039_ gnd vdd FILL
XFILL_2__988_ gnd vdd FILL
X_1631_ _183__bF$buf2 _471_ _800_ vdd gnd NOR2X1
X_1211_ _416_ _413_ _201__bF$buf4 _437_ vdd gnd OAI21X1
X_962_ _197_ _196_ _164__bF$buf0 _198_ vdd gnd MUX2X1
XFILL_1__1373_ gnd vdd FILL
XFILL_0__1688_ gnd vdd FILL
XFILL_0__1268_ gnd vdd FILL
XFILL_1__1429_ gnd vdd FILL
XFILL_1__1009_ gnd vdd FILL
X_1440_ LoadCtl_0_bF$buf0 _168_ _640_ _36_ vdd gnd OAI21X1
X_1020_ Xcalc[1] _188__bF$buf0 _254_ vdd gnd NAND2X1
XFILL_1__1182_ gnd vdd FILL
XFILL_0__1497_ gnd vdd FILL
XFILL_0__1077_ gnd vdd FILL
XFILL_1__1658_ gnd vdd FILL
XFILL_1__1238_ gnd vdd FILL
XFILL_2__1480_ gnd vdd FILL
XFILL_2__1060_ gnd vdd FILL
X_1725_ _100_ _103_ _191_ _104_ vdd gnd OAI21X1
X_1305_ _524_ _525_ vdd gnd INVX1
XFILL_1__1467_ gnd vdd FILL
XFILL_1__1047_ gnd vdd FILL
XFILL_2__1536_ gnd vdd FILL
XFILL_2__1116_ gnd vdd FILL
X_1534_ _707_ _706_ _672_ _63_ vdd gnd OAI21X1
X_1114_ _338_ _344_ _345_ vdd gnd NAND2X1
X_865_ LoadCtl[4] _106_ _107_ _108_ vdd gnd OAI21X1
XFILL_1__1696_ gnd vdd FILL
XFILL_1__1276_ gnd vdd FILL
XFILL_0__918_ gnd vdd FILL
X_1763_ _35_ clk_bF$buf2 Xin1[1] vdd gnd DFFPOSX1
X_1343_ _541_ _555_ _560_ vdd gnd NOR2X1
XFILL_1__1085_ gnd vdd FILL
X_1572_ _741_ _744_ vdd gnd INVX1
X_1152_ _172_ _378_ _377_ _381_ vdd gnd NAND3X1
XFILL_1__934_ gnd vdd FILL
XFILL_0__1612_ gnd vdd FILL
XFILL_2__1383_ gnd vdd FILL
X_1628_ _793_ _752_ _796_ _797_ vdd gnd OAI21X1
X_1208_ _421_ _434_ vdd gnd INVX1
XFILL_0__956_ gnd vdd FILL
X_959_ _194_ _193_ _164__bF$buf2 _195_ vdd gnd MUX2X1
X_1381_ _595_ _596_ vdd gnd INVX1
XFILL_0__1421_ gnd vdd FILL
XFILL_0__1001_ gnd vdd FILL
X_1437_ Xin[1] _119_ _639_ vdd gnd NAND2X1
X_1017_ _183__bF$buf3 _251_ _240_ _252_ vdd gnd OAI21X1
XFILL_1__1599_ gnd vdd FILL
XFILL_1__1179_ gnd vdd FILL
X_1190_ _201__bF$buf4 _416_ _413_ _417_ vdd gnd NAND3X1
XFILL_1__972_ gnd vdd FILL
XFILL_0__1650_ gnd vdd FILL
XFILL_0__1230_ gnd vdd FILL
XFILL_1__1811_ gnd vdd FILL
X_1666_ _827_ _833_ _834_ vdd gnd NAND2X1
X_1246_ _146_ _188__bF$buf3 _470_ _186_ _12_ vdd 
+ gnd
+ AOI22X1
XFILL_0__994_ gnd vdd FILL
X_997_ _188__bF$buf1 _232_ _189_ _1_ vdd gnd OAI21X1
XFILL_0__1706_ gnd vdd FILL
XFILL_2__1477_ gnd vdd FILL
XFILL_2__1057_ gnd vdd FILL
XFILL88050x79350 gnd vdd FILL
XFILL_1__1620_ gnd vdd FILL
XFILL_1__1200_ gnd vdd FILL
X_1475_ _606_ _629_ _658_ _53_ vdd gnd OAI21X1
X_1055_ _164__bF$buf4 _286_ _287_ _288_ vdd gnd OAI21X1
XFILL_0__1515_ gnd vdd FILL
X_1284_ _504_ _496_ _501_ _505_ vdd gnd OAI21X1
XFILL_0__1324_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
X_1093_ _324_ _325_ vdd gnd INVX1
XFILL_1__875_ gnd vdd FILL
XFILL_0__1553_ gnd vdd FILL
XFILL_0__1133_ gnd vdd FILL
XFILL_1__1714_ gnd vdd FILL
X_1569_ Stg_2_bF$buf3 _178_ _740_ _741_ vdd gnd OAI21X1
X_1149_ Ain12b_11_bF$buf3 _371_ _375_ _378_ vdd gnd OAI21X1
XFILL_0__897_ gnd vdd FILL
XFILL_0__1609_ gnd vdd FILL
XFILL_0__1362_ gnd vdd FILL
XFILL_2__891_ gnd vdd FILL
XFILL_1__1523_ gnd vdd FILL
XFILL_1__1103_ gnd vdd FILL
X_1798_ _63_ clk_bF$buf5 Ycalc[2] vdd gnd DFFPOSX1
X_1378_ _592_ _593_ vdd gnd INVX1
XFILL_0__1418_ gnd vdd FILL
XFILL_2__947_ gnd vdd FILL
XFILL_0__1591_ gnd vdd FILL
XFILL_0__1171_ gnd vdd FILL
X_921_ _112_ _158_ _157_ _113_ _159_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1332_ gnd vdd FILL
X_1187_ _336_ _414_ vdd gnd INVX1
XFILL_1__969_ gnd vdd FILL
XFILL_0__1647_ gnd vdd FILL
XFILL_0__1227_ gnd vdd FILL
XFILL_1__1808_ gnd vdd FILL
XFILL_1__1561_ gnd vdd FILL
XFILL_1__1141_ gnd vdd FILL
XFILL88650x75750 gnd vdd FILL
XFILL_2__1630_ gnd vdd FILL
XFILL_2__1210_ gnd vdd FILL
XFILL_0__1456_ gnd vdd FILL
XFILL_0__1036_ gnd vdd FILL
XFILL_1__1617_ gnd vdd FILL
XFILL_1__1370_ gnd vdd FILL
XFILL_0__1685_ gnd vdd FILL
XFILL_0__1265_ gnd vdd FILL
XFILL_1__1426_ gnd vdd FILL
XFILL_1__1006_ gnd vdd FILL
XFILL_0__1494_ gnd vdd FILL
XFILL_0__1074_ gnd vdd FILL
XFILL_1__1655_ gnd vdd FILL
XFILL_1__1235_ gnd vdd FILL
X_1722_ _100_ _101_ vdd gnd INVX1
X_1302_ _492_ _521_ _520_ _522_ vdd gnd OAI21X1
XFILL_1__1464_ gnd vdd FILL
XFILL_1__1044_ gnd vdd FILL
XFILL_2__1533_ gnd vdd FILL
XFILL_2__1113_ gnd vdd FILL
XFILL_0__1359_ gnd vdd FILL
XFILL_2__888_ gnd vdd FILL
X_1531_ _699_ _701_ _673_ _705_ vdd gnd OAI21X1
X_1111_ _332_ _201__bF$buf1 _339_ _342_ vdd gnd AOI21X1
XFILL_1__1693_ gnd vdd FILL
XFILL_1__1273_ gnd vdd FILL
XFILL88350x7350 gnd vdd FILL
XFILL_0__1588_ gnd vdd FILL
XFILL_0__1168_ gnd vdd FILL
XFILL_0__915_ gnd vdd FILL
X_918_ LoadCtl[4] _154_ _155_ _156_ vdd gnd OAI21X1
XFILL_1__1329_ gnd vdd FILL
X_1760_ _32_ clk_bF$buf2 Xin12b[4] vdd gnd DFFPOSX1
X_1340_ _556_ _545_ _558_ vdd gnd NAND2X1
XFILL_1__1082_ gnd vdd FILL
XFILL_0__1397_ gnd vdd FILL
XFILL_1__1558_ gnd vdd FILL
XFILL_1__1138_ gnd vdd FILL
XFILL_1__931_ gnd vdd FILL
XFILL_2__1380_ gnd vdd FILL
X_1625_ _749_ _794_ vdd gnd INVX1
X_1205_ _186_ _431_ _432_ vdd gnd NAND2X1
XFILL_0__953_ gnd vdd FILL
X_956_ _191_ _192_ vdd gnd INVX2
XFILL_1__1367_ gnd vdd FILL
XFILL_2__1436_ gnd vdd FILL
XFILL_2__1016_ gnd vdd FILL
X_1434_ _212_ _635_ _637_ _33_ vdd gnd OAI21X1
X_1014_ _240_ _248_ _249_ vdd gnd AND2X2
XFILL_1__1596_ gnd vdd FILL
XFILL_1__1176_ gnd vdd FILL
X_1663_ _824_ _201__bF$buf2 _828_ _831_ vdd gnd AOI21X1
X_1243_ _463_ _465_ _468_ vdd gnd NOR2X1
XFILL_0__991_ gnd vdd FILL
X_994_ Yin0[0] _199_ _229_ _230_ vdd gnd OAI21X1
XFILL_0__1703_ gnd vdd FILL
X_1719_ _475_ _97_ _98_ vdd gnd NAND2X1
X_1472_ Ain[0] _629_ _657_ vdd gnd NAND2X1
X_1052_ Stg_0_bF$buf0 _284_ _285_ vdd gnd NAND2X1
XFILL_0__1512_ gnd vdd FILL
XFILL_2__1283_ gnd vdd FILL
X_1528_ _701_ _699_ _702_ vdd gnd OR2X2
X_1108_ _338_ _339_ vdd gnd INVX1
X_1281_ _500_ _502_ _491_ _15_ vdd gnd OAI21X1
XFILL_0__1321_ gnd vdd FILL
X_1757_ _29_ clk_bF$buf4 Xin12b[9] vdd gnd DFFPOSX1
X_1337_ _554_ _552_ _555_ vdd gnd NAND2X1
XFILL_1__1499_ gnd vdd FILL
XFILL_1__1079_ gnd vdd FILL
X_1090_ _319_ _322_ vdd gnd INVX1
XFILL_1__872_ gnd vdd FILL
XFILL_0__1550_ gnd vdd FILL
XFILL_0__1130_ gnd vdd FILL
XFILL_1__1711_ gnd vdd FILL
X_1566_ Stg_1_bF$buf3 _737_ _738_ vdd gnd NAND2X1
X_1146_ _183__bF$buf2 _373_ _374_ _375_ vdd gnd OAI21X1
XFILL_0__894_ gnd vdd FILL
XFILL_1__928_ gnd vdd FILL
X_897_ LoadCtl[4] _137_ vdd gnd INVX1
XFILL_0__1606_ gnd vdd FILL
XFILL_2__1377_ gnd vdd FILL
XFILL_1__1520_ gnd vdd FILL
XFILL_1__1100_ gnd vdd FILL
XFILL_2_BUFX2_insert31 gnd vdd FILL
XFILL_2_BUFX2_insert33 gnd vdd FILL
XFILL_2_BUFX2_insert36 gnd vdd FILL
XFILL_2_BUFX2_insert39 gnd vdd FILL
X_1795_ LoadCtl[4] clk_bF$buf5 LoadCtl[5] vdd gnd DFFPOSX1
X_1375_ Ain12b[8] _590_ vdd gnd INVX1
XFILL_0__1415_ gnd vdd FILL
XFILL_2__944_ gnd vdd FILL
X_1184_ _382_ _387_ _405_ _411_ vdd gnd NAND3X1
XFILL_1__966_ gnd vdd FILL
XFILL_0__1644_ gnd vdd FILL
XFILL_0__1224_ gnd vdd FILL
XFILL_0__988_ gnd vdd FILL
XFILL88650x150 gnd vdd FILL
XFILL_0__1453_ gnd vdd FILL
XFILL_0__1033_ gnd vdd FILL
XFILL_1__1614_ gnd vdd FILL
X_1469_ _616_ _625_ _655_ _50_ vdd gnd OAI21X1
X_1049_ _255_ _275_ _273_ _282_ vdd gnd AOI21X1
XFILL_0__1509_ gnd vdd FILL
XFILL_0__1682_ gnd vdd FILL
XFILL_0__1262_ gnd vdd FILL
XFILL_1__1423_ gnd vdd FILL
XFILL_1__1003_ gnd vdd FILL
X_1698_ _77_ _78_ vdd gnd INVX1
X_1278_ _487_ _499_ _500_ vdd gnd NOR2X1
XFILL_0__1318_ gnd vdd FILL
XFILL_0__1491_ gnd vdd FILL
XFILL_0__1071_ gnd vdd FILL
XFILL_1__1652_ gnd vdd FILL
XFILL_1__1232_ gnd vdd FILL
X_1087_ _315_ Stg_2_bF$buf1 _318_ _319_ vdd gnd AOI21X1
XFILL_1__869_ gnd vdd FILL
XFILL_0__1547_ gnd vdd FILL
XFILL_0__1127_ gnd vdd FILL
XFILL_1__1708_ gnd vdd FILL
XFILL_1__1461_ gnd vdd FILL
XFILL_1__1041_ gnd vdd FILL
XFILL_2__1530_ gnd vdd FILL
XFILL_2__1110_ gnd vdd FILL
XFILL_0__1356_ gnd vdd FILL
XFILL_2__885_ gnd vdd FILL
XFILL_1__1517_ gnd vdd FILL
XFILL_1__1690_ gnd vdd FILL
XFILL_1__1270_ gnd vdd FILL
XFILL_0__1585_ gnd vdd FILL
XFILL_0__1165_ gnd vdd FILL
XFILL_0__912_ gnd vdd FILL
X_915_ _117_ _152_ _153_ _861_[0] vdd gnd OAI21X1
XFILL_1__1326_ gnd vdd FILL
XFILL88650x61350 gnd vdd FILL
XFILL_0__1394_ gnd vdd FILL
X_1813_ _861_[1] Xout[1] vdd gnd BUFX2
XFILL_1__1555_ gnd vdd FILL
XFILL_1__1135_ gnd vdd FILL
X_1622_ _785_ _791_ vdd gnd INVX1
X_1202_ _426_ _429_ vdd gnd INVX1
XFILL_0__950_ gnd vdd FILL
X_953_ Ycalc[1] _188__bF$buf2 _189_ vdd gnd NAND2X1
XFILL_1__1364_ gnd vdd FILL
XFILL_2__1433_ gnd vdd FILL
XFILL_2__1013_ gnd vdd FILL
XFILL_0__1679_ gnd vdd FILL
XFILL_0__1259_ gnd vdd FILL
X_1431_ Xin[0] _635_ _636_ vdd gnd NAND2X1
X_1011_ Stg_0_bF$buf0 _244_ _245_ _246_ vdd gnd OAI21X1
XFILL_1__1593_ gnd vdd FILL
XFILL_1__1173_ gnd vdd FILL
XFILL_0__1488_ gnd vdd FILL
XFILL_0__1068_ gnd vdd FILL
XFILL87750x86550 gnd vdd FILL
XFILL_1__1649_ gnd vdd FILL
XFILL_1__1229_ gnd vdd FILL
X_1660_ _827_ _828_ vdd gnd INVX1
X_1240_ _410_ _411_ _464_ _465_ vdd gnd AOI21X1
X_991_ _226_ _227_ vdd gnd INVX1
XFILL_0__1700_ gnd vdd FILL
XFILL_0__1297_ gnd vdd FILL
X_1716_ Ycalc[11] _188__bF$buf2 _95_ vdd gnd NAND2X1
XFILL_1__1458_ gnd vdd FILL
XFILL_1__1038_ gnd vdd FILL
XFILL_2__1107_ gnd vdd FILL
XFILL_2__1280_ gnd vdd FILL
X_1525_ _698_ _679_ Yin1[0] _699_ vdd gnd AOI21X1
X_1105_ Stg_1_bF$buf3 _286_ _335_ _336_ vdd gnd OAI21X1
XFILL_1__1687_ gnd vdd FILL
XFILL_1__1267_ gnd vdd FILL
XFILL_2__1336_ gnd vdd FILL
XFILL_0__909_ gnd vdd FILL
X_1754_ _26_ clk_bF$buf4 Xin12b[10] vdd gnd DFFPOSX1
X_1334_ _551_ _552_ vdd gnd INVX1
XFILL_1__1496_ gnd vdd FILL
XFILL_1__1076_ gnd vdd FILL
X_1563_ _678_ _726_ _696_ _735_ vdd gnd NAND3X1
X_1143_ _371_ _372_ vdd gnd INVX1
XFILL_0__891_ gnd vdd FILL
XFILL_1__925_ gnd vdd FILL
X_894_ _109_ _131_ _134_ _135_ vdd gnd AOI21X1
XFILL_0__1603_ gnd vdd FILL
X_1619_ _788_ _786_ _192_ _789_ vdd gnd AOI21X1
XFILL_0__947_ gnd vdd FILL
X_1792_ LoadCtl[1] clk_bF$buf5 LoadCtl[2] vdd gnd DFFPOSX1
X_1372_ _521_ _586_ _587_ vdd gnd NAND2X1
XFILL_0__1412_ gnd vdd FILL
XFILL_2__941_ gnd vdd FILL
XFILL_2__1183_ gnd vdd FILL
X_1428_ Xin[1] _632_ _634_ vdd gnd NAND2X1
X_1008_ Stg_0_bF$buf0 _241_ _242_ _243_ vdd gnd OAI21X1
X_1181_ Xcalc[8] _188__bF$buf3 _408_ vdd gnd NAND2X1
XFILL_1__963_ gnd vdd FILL
XFILL_0__1641_ gnd vdd FILL
XFILL_0__1221_ gnd vdd FILL
X_1657_ _739_ _825_ vdd gnd INVX1
X_1237_ _457_ _461_ _462_ vdd gnd AND2X2
XFILL_0__985_ gnd vdd FILL
X_988_ _223_ _220_ Stg_2_bF$buf1 _224_ vdd gnd MUX2X1
XFILL_1__1399_ gnd vdd FILL
XFILL88050x86550 gnd vdd FILL
XFILL_0__1450_ gnd vdd FILL
XFILL_0__1030_ gnd vdd FILL
XFILL_1__1611_ gnd vdd FILL
X_1466_ LoadCtl_0_bF$buf1 Yin[1] _654_ vdd gnd NAND2X1
X_1046_ _279_ _276_ _192_ _280_ vdd gnd AOI21X1
XFILL_0__1506_ gnd vdd FILL
XFILL_2__1697_ gnd vdd FILL
XFILL_2__1277_ gnd vdd FILL
XFILL_1__1420_ gnd vdd FILL
XFILL_1__1000_ gnd vdd FILL
X_1695_ _74_ _73_ _75_ vdd gnd OR2X2
X_1275_ _496_ Ain0[1] _497_ vdd gnd OR2X2
XFILL_0__1315_ gnd vdd FILL
X_1084_ _267_ _290_ _316_ vdd gnd NAND2X1
XFILL_1__866_ gnd vdd FILL
XFILL_0__1544_ gnd vdd FILL
XFILL_0__1124_ gnd vdd FILL
XFILL_1__1705_ gnd vdd FILL
XFILL_0__888_ gnd vdd FILL
XFILL_0__1353_ gnd vdd FILL
XFILL_1__1514_ gnd vdd FILL
X_1789_ _61_ clk_bF$buf7 Ain0[1] vdd gnd DFFPOSX1
X_1369_ _124_ _188__bF$buf3 _583_ _584_ _21_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1409_ gnd vdd FILL
XFILL_2__938_ gnd vdd FILL
XFILL_0__1582_ gnd vdd FILL
XFILL_0__1162_ gnd vdd FILL
X_912_ _112_ _150_ _149_ _113_ _151_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1323_ gnd vdd FILL
X_1598_ _766_ _768_ _769_ vdd gnd AND2X2
X_1178_ _393_ _405_ _406_ vdd gnd OR2X2
XFILL_0__1638_ gnd vdd FILL
XFILL_0__1218_ gnd vdd FILL
XFILL88650x82950 gnd vdd FILL
XFILL_0__1391_ gnd vdd FILL
X_1810_ _860_ ISout vdd gnd BUFX2
XFILL_1__1552_ gnd vdd FILL
XFILL_1__1132_ gnd vdd FILL
XFILL87450x64950 gnd vdd FILL
XFILL_0__1447_ gnd vdd FILL
XFILL_0__1027_ gnd vdd FILL
XFILL_1__1608_ gnd vdd FILL
X_950_ _180_ _182_ _186_ _187_ vdd gnd OAI21X1
XFILL_1__1361_ gnd vdd FILL
XFILL_1__998_ gnd vdd FILL
XFILL_2__1430_ gnd vdd FILL
XFILL_2__1010_ gnd vdd FILL
XFILL_0__1676_ gnd vdd FILL
XFILL_0__1256_ gnd vdd FILL
XFILL_1__1417_ gnd vdd FILL
XFILL_1__1590_ gnd vdd FILL
XFILL_1__1170_ gnd vdd FILL
XFILL_0__1485_ gnd vdd FILL
XFILL_0__1065_ gnd vdd FILL
XFILL_1__1646_ gnd vdd FILL
XFILL_1__1226_ gnd vdd FILL
XFILL_0__1294_ gnd vdd FILL
X_1713_ _87_ _92_ _191_ _93_ vdd gnd OAI21X1
XFILL_1__1455_ gnd vdd FILL
XFILL_1__1035_ gnd vdd FILL
XFILL88650x14550 gnd vdd FILL
X_1522_ _684_ _689_ _692_ _695_ _696_ vdd 
+ gnd
+ AOI22X1
X_1102_ Stg_0_bF$buf5 Yin12b[11] _333_ vdd gnd NAND2X1
XFILL_1__1684_ gnd vdd FILL
XFILL_1__1264_ gnd vdd FILL
XFILL_2__1333_ gnd vdd FILL
XFILL_0__1579_ gnd vdd FILL
XFILL_0__1159_ gnd vdd FILL
XFILL_0__906_ gnd vdd FILL
X_909_ LoadCtl[4] _146_ _147_ _148_ vdd gnd OAI21X1
X_1751_ _23_ clk_bF$buf7 Acalc[9] vdd gnd DFFPOSX1
X_1331_ _201__bF$buf0 _548_ _549_ vdd gnd NOR2X1
XFILL_1__1493_ gnd vdd FILL
XFILL_1__1073_ gnd vdd FILL
XFILL_0__1388_ gnd vdd FILL
X_1807_ _72_ clk_bF$buf1 Ycalc[11] vdd gnd DFFPOSX1
XFILL88650x3750 gnd vdd FILL
XFILL_1__1549_ gnd vdd FILL
XFILL_1__1129_ gnd vdd FILL
X_1560_ _732_ _711_ _192_ _733_ vdd gnd AOI21X1
X_1140_ _368_ _352_ _186_ _370_ vdd gnd OAI21X1
XFILL_1__922_ gnd vdd FILL
X_891_ Ycalc[6] _132_ vdd gnd INVX1
XFILL_0__1600_ gnd vdd FILL
XFILL_0__1197_ gnd vdd FILL
X_1616_ _782_ _785_ _786_ vdd gnd NAND2X1
XFILL_0__944_ gnd vdd FILL
X_947_ _183__bF$buf1 _164__bF$buf2 _184_ vdd gnd NAND2X1
XFILL_1__1358_ gnd vdd FILL
XFILL87750x72150 gnd vdd FILL
XFILL_2__1427_ gnd vdd FILL
XFILL_2__1007_ gnd vdd FILL
XFILL87750x39750 gnd vdd FILL
XFILL_2__1180_ gnd vdd FILL
X_1425_ _113_ _117_ _632_ vdd gnd NOR2X1
X_1005_ _183__bF$buf3 _239_ _240_ vdd gnd NAND2X1
XFILL_1__1587_ gnd vdd FILL
XFILL_1__1167_ gnd vdd FILL
XFILL_1__960_ gnd vdd FILL
X_1654_ _818_ _821_ _820_ _822_ vdd gnd NAND3X1
X_1234_ _449_ _455_ _459_ vdd gnd NOR2X1
XFILL_0__982_ gnd vdd FILL
X_985_ Xin12b[8] Xin12b[7] Stg_0_bF$buf3 _221_ vdd gnd MUX2X1
XFILL_1__1396_ gnd vdd FILL
X_1463_ _256_ _119_ _652_ _47_ vdd gnd OAI21X1
X_1043_ _255_ _277_ vdd gnd INVX1
XFILL_0__1503_ gnd vdd FILL
XFILL_2__1694_ gnd vdd FILL
XFILL_2__1274_ gnd vdd FILL
X_1519_ _164__bF$buf0 _214_ _693_ vdd gnd NAND2X1
X_1692_ Stg_2_bF$buf3 _775_ _826_ _858_ vdd gnd OAI21X1
X_1272_ Stg_2_bF$buf2 _492_ _493_ _494_ vdd gnd OAI21X1
XFILL_0__1312_ gnd vdd FILL
X_1748_ _20_ clk_bF$buf0 Acalc[6] vdd gnd DFFPOSX1
X_1328_ _190_ _292_ _201__bF$buf3 _546_ vdd gnd OAI21X1
X_1081_ Stg_0_bF$buf5 Yin12b[9] _312_ _313_ vdd gnd OAI21X1
XFILL_1__863_ gnd vdd FILL
XFILL_0__1541_ gnd vdd FILL
XFILL_0__1121_ gnd vdd FILL
XFILL_1__1702_ gnd vdd FILL
X_1557_ Yin1[1] _728_ _730_ vdd gnd NOR2X1
X_1137_ _363_ _366_ _367_ vdd gnd NAND2X1
XFILL_0__885_ gnd vdd FILL
XFILL_1__919_ gnd vdd FILL
X_888_ Ycalc[10] _129_ vdd gnd INVX1
XFILL_1__1299_ gnd vdd FILL
XFILL_0__1350_ gnd vdd FILL
XFILL_1__1511_ gnd vdd FILL
X_1786_ _58_ clk_bF$buf7 Ain1[0] vdd gnd DFFPOSX1
X_1366_ _581_ _582_ vdd gnd INVX1
XFILL_0__1406_ gnd vdd FILL
XFILL_2__1597_ gnd vdd FILL
XFILL_2__1177_ gnd vdd FILL
XFILL88050x72150 gnd vdd FILL
XFILL_1__1320_ gnd vdd FILL
XFILL88050x39750 gnd vdd FILL
X_1595_ _265_ _765_ _764_ _766_ vdd gnd NAND3X1
X_1175_ _401_ _402_ _403_ vdd gnd NAND2X1
XFILL_1__957_ gnd vdd FILL
XFILL_0__1635_ gnd vdd FILL
XFILL_0__1215_ gnd vdd FILL
XFILL_0__979_ gnd vdd FILL
XFILL_0__1444_ gnd vdd FILL
XFILL_0__1024_ gnd vdd FILL
XFILL_1__1605_ gnd vdd FILL
XFILL_1__995_ gnd vdd FILL
XFILL_0__1673_ gnd vdd FILL
XFILL_0__1253_ gnd vdd FILL
XFILL_1__1414_ gnd vdd FILL
X_1689_ _854_ _841_ _191_ _856_ vdd gnd OAI21X1
X_1269_ Acalc[1] _188__bF$buf0 _491_ vdd gnd NAND2X1
XFILL_0__1309_ gnd vdd FILL
XFILL_0__1482_ gnd vdd FILL
XFILL_0__1062_ gnd vdd FILL
XFILL_1__1643_ gnd vdd FILL
XFILL_1__1223_ gnd vdd FILL
X_1498_ Ycalc[2] _188__bF$buf1 _672_ vdd gnd NAND2X1
X_1078_ _295_ _298_ _310_ vdd gnd NAND2X1
XFILL_0__1538_ gnd vdd FILL
XFILL_0__1118_ gnd vdd FILL
XFILL_0__1291_ gnd vdd FILL
X_1710_ _89_ _797_ _88_ _90_ vdd gnd AOI21X1
XFILL_1__1452_ gnd vdd FILL
XFILL_1__1032_ gnd vdd FILL
XFILL_0__1347_ gnd vdd FILL
XFILL_1__1508_ gnd vdd FILL
XFILL_1__1681_ gnd vdd FILL
XFILL_1__1261_ gnd vdd FILL
XFILL_1__898_ gnd vdd FILL
XFILL_2__1330_ gnd vdd FILL
XFILL_0__1576_ gnd vdd FILL
XFILL_0__1156_ gnd vdd FILL
XFILL_0__903_ gnd vdd FILL
X_906_ _117_ _144_ _145_ _862_[1] vdd gnd OAI21X1
XFILL_1__1317_ gnd vdd FILL
XFILL_1__1490_ gnd vdd FILL
XFILL_1__1070_ gnd vdd FILL
XFILL_0__1385_ gnd vdd FILL
X_1804_ _69_ clk_bF$buf1 Ycalc[8] vdd gnd DFFPOSX1
XFILL_1__1546_ gnd vdd FILL
XFILL_1__1126_ gnd vdd FILL
XFILL_0__1194_ gnd vdd FILL
X_1613_ _201__bF$buf5 _780_ _774_ _783_ vdd gnd NAND3X1
XFILL_0__941_ gnd vdd FILL
X_944_ _163_ _179_ _181_ vdd gnd NAND2X1
XFILL_1__1355_ gnd vdd FILL
XFILL_2__1004_ gnd vdd FILL
X_1422_ _422_ _629_ _630_ _28_ vdd gnd OAI21X1
X_1002_ Stg_0_bF$buf2 Yin0[1] _237_ vdd gnd NAND2X1
XFILL_1__1584_ gnd vdd FILL
XFILL_1__1164_ gnd vdd FILL
XFILL_2__1653_ gnd vdd FILL
XFILL_2__1233_ gnd vdd FILL
XFILL_0__1479_ gnd vdd FILL
XFILL_0__1059_ gnd vdd FILL
X_1651_ _791_ _818_ _809_ _819_ vdd gnd AOI21X1
X_1231_ _454_ _455_ _456_ vdd gnd NOR2X1
X_982_ Xin12b[4] Xin1[1] Stg_0_bF$buf1 _218_ vdd gnd MUX2X1
XFILL_1__1393_ gnd vdd FILL
XFILL_0__1288_ gnd vdd FILL
X_1707_ _79_ _81_ _87_ vdd gnd AND2X2
XFILL_1__1449_ gnd vdd FILL
XFILL_1__1029_ gnd vdd FILL
X_1460_ Yin[0] _119_ _651_ vdd gnd NAND2X1
X_1040_ _273_ _274_ vdd gnd INVX1
XFILL_0__1500_ gnd vdd FILL
XFILL_0__1097_ gnd vdd FILL
X_1516_ Stg_1_bF$buf2 _204_ _690_ vdd gnd NAND2X1
XFILL_1__1678_ gnd vdd FILL
XFILL_1__1258_ gnd vdd FILL
XFILL_2__1327_ gnd vdd FILL
XFILL_2__1080_ gnd vdd FILL
X_1745_ _17_ clk_bF$buf0 Acalc[3] vdd gnd DFFPOSX1
X_1325_ _540_ _543_ _531_ _18_ vdd gnd OAI21X1
XFILL_1__1487_ gnd vdd FILL
XFILL_1__1067_ gnd vdd FILL
X_1554_ Ain12b_11_bF$buf1 _721_ _726_ _727_ vdd gnd OAI21X1
X_1134_ _201__bF$buf1 _361_ _354_ _364_ vdd gnd NAND3X1
XFILL_0__882_ gnd vdd FILL
XFILL_1__916_ gnd vdd FILL
X_885_ _109_ _123_ _126_ _127_ vdd gnd AOI21X1
XFILL_1__1296_ gnd vdd FILL
XFILL_0__938_ gnd vdd FILL
X_1783_ _55_ clk_bF$buf7 Ain12b[7] vdd gnd DFFPOSX1
X_1363_ _578_ _579_ vdd gnd INVX1
XFILL_0__1403_ gnd vdd FILL
XFILL_2__1594_ gnd vdd FILL
XFILL_2__1174_ gnd vdd FILL
X_1419_ _137_ _117_ _628_ vdd gnd NOR2X1
X_1592_ _761_ _762_ _763_ vdd gnd NOR2X1
X_1172_ _399_ _398_ Xin12b[7] _400_ vdd gnd OAI21X1
XFILL_1__954_ gnd vdd FILL
XFILL_0__1632_ gnd vdd FILL
XFILL_0__1212_ gnd vdd FILL
X_1648_ _141_ LoadCtl_6_bF$buf3 _816_ _68_ vdd gnd OAI21X1
X_1228_ _449_ _452_ _453_ vdd gnd NOR2X1
XFILL_0__976_ gnd vdd FILL
X_979_ _214_ _211_ _164__bF$buf0 _215_ vdd gnd MUX2X1
XFILL_0__1441_ gnd vdd FILL
XFILL_0__1021_ gnd vdd FILL
XFILL_1__1602_ gnd vdd FILL
X_1457_ _244_ _635_ _649_ _44_ vdd gnd OAI21X1
X_1037_ _269_ _271_ vdd gnd INVX1
XFILL_1__1199_ gnd vdd FILL
XFILL_1__992_ gnd vdd FILL
XFILL_0__1670_ gnd vdd FILL
XFILL_0__1250_ gnd vdd FILL
XFILL_1__1411_ gnd vdd FILL
X_1686_ _850_ _852_ Yin12b[9] _853_ vdd gnd OAI21X1
X_1266_ _488_ _487_ _489_ vdd gnd OR2X2
XFILL_0__1726_ gnd vdd FILL
XFILL_0__1306_ gnd vdd FILL
XFILL_2__1497_ gnd vdd FILL
XFILL_2__1077_ gnd vdd FILL
XFILL_1__1640_ gnd vdd FILL
XFILL_1__1220_ gnd vdd FILL
X_1495_ _860_ _670_ vdd gnd INVX1
X_1075_ Xcalc[3] _188__bF$buf4 _307_ vdd gnd NAND2X1
XFILL_0__1535_ gnd vdd FILL
XFILL_0__1115_ gnd vdd FILL
XFILL_0__879_ gnd vdd FILL
XFILL_0__1344_ gnd vdd FILL
XFILL_1__1505_ gnd vdd FILL
XFILL88050x25350 gnd vdd FILL
XFILL_1__895_ gnd vdd FILL
XFILL_0__1573_ gnd vdd FILL
XFILL_0__1153_ gnd vdd FILL
XFILL_0__900_ gnd vdd FILL
X_903_ _112_ _142_ _141_ _113_ _143_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1314_ gnd vdd FILL
X_1589_ _183__bF$buf0 _758_ _759_ _760_ vdd gnd OAI21X1
X_1169_ _201__bF$buf4 _396_ _394_ _397_ vdd gnd NAND3X1
XFILL_0__1629_ gnd vdd FILL
XFILL_0__1209_ gnd vdd FILL
XFILL_0__1382_ gnd vdd FILL
X_1801_ _66_ clk_bF$buf1 Ycalc[5] vdd gnd DFFPOSX1
XFILL_1__1543_ gnd vdd FILL
XFILL_1__1123_ gnd vdd FILL
X_1398_ _611_ _610_ _603_ _23_ vdd gnd OAI21X1
XFILL_0__1438_ gnd vdd FILL
XFILL_0__1018_ gnd vdd FILL
XFILL_0__1191_ gnd vdd FILL
X_1610_ _777_ _780_ vdd gnd INVX1
X_941_ _177_ _174_ _164__bF$buf0 _178_ vdd gnd MUX2X1
XFILL_1__1352_ gnd vdd FILL
XFILL_1__989_ gnd vdd FILL
XFILL_0__1667_ gnd vdd FILL
XFILL_0__1247_ gnd vdd FILL
XFILL_1__1408_ gnd vdd FILL
XFILL_1__1581_ gnd vdd FILL
XFILL_1__1161_ gnd vdd FILL
XFILL_2__1650_ gnd vdd FILL
XFILL_2__1230_ gnd vdd FILL
XFILL_0__1476_ gnd vdd FILL
XFILL_0__1056_ gnd vdd FILL
XFILL_1__1637_ gnd vdd FILL
XFILL_1__1217_ gnd vdd FILL
XFILL_1__1390_ gnd vdd FILL
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_2__1706_ gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_0__1285_ gnd vdd FILL
X_1704_ _840_ _849_ _83_ _84_ vdd gnd AOI21X1
XFILL_1__1446_ gnd vdd FILL
XFILL_1__1026_ gnd vdd FILL
XFILL88650x21750 gnd vdd FILL
XFILL_0__1094_ gnd vdd FILL
X_1513_ _164__bF$buf2 _686_ _685_ _687_ vdd gnd NAND3X1
XFILL_1__1675_ gnd vdd FILL
XFILL_1__1255_ gnd vdd FILL
XFILL_2__1324_ gnd vdd FILL
X_1742_ _14_ clk_bF$buf0 Acalc[0] vdd gnd DFFPOSX1
X_1322_ _538_ _536_ _541_ vdd gnd NAND2X1
XFILL_1__1484_ gnd vdd FILL
XFILL_1__1064_ gnd vdd FILL
XFILL_2__1553_ gnd vdd FILL
XFILL_0__1379_ gnd vdd FILL
X_1551_ _164__bF$buf0 _211_ _724_ vdd gnd NAND2X1
X_1131_ _359_ _361_ vdd gnd INVX1
XFILL_1__913_ gnd vdd FILL
X_882_ Acalc[7] _124_ vdd gnd INVX1
XFILL_1__1293_ gnd vdd FILL
XFILL_2_BUFX2_insert0 gnd vdd FILL
XFILL_2_BUFX2_insert3 gnd vdd FILL
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_0__1188_ gnd vdd FILL
X_1607_ _183__bF$buf0 _775_ _776_ _777_ vdd gnd OAI21X1
XFILL_0__935_ gnd vdd FILL
XFILL87750x46950 gnd vdd FILL
X_938_ Xin12b[4] _175_ vdd gnd INVX1
XFILL_1__1349_ gnd vdd FILL
X_1780_ _52_ clk_bF$buf3 Ain12b[8] vdd gnd DFFPOSX1
X_1360_ _575_ _574_ _576_ vdd gnd NAND2X1
XFILL_0__1400_ gnd vdd FILL
XFILL_2__1171_ gnd vdd FILL
X_1416_ _458_ _625_ _626_ _26_ vdd gnd OAI21X1
XFILL_1__1578_ gnd vdd FILL
XFILL_1__1158_ gnd vdd FILL
XFILL_1__951_ gnd vdd FILL
XFILL_2__1647_ gnd vdd FILL
XFILL_2__1227_ gnd vdd FILL
X_1645_ _201__bF$buf6 _191_ LoadCtl_6_bF$buf3 _814_ vdd gnd OAI21X1
X_1225_ _413_ _416_ _450_ vdd gnd OR2X2
XFILL_0__973_ gnd vdd FILL
X_976_ Xin12b[5] _212_ vdd gnd INVX1
XFILL_1__1387_ gnd vdd FILL
X_1454_ Yin[1] _632_ _648_ vdd gnd NAND2X1
X_1034_ _267_ _264_ _164__bF$buf4 _268_ vdd gnd MUX2X1
XFILL_1__1196_ gnd vdd FILL
X_1683_ _847_ _201__bF$buf2 _843_ _850_ vdd gnd AOI21X1
X_1263_ _183__bF$buf3 _484_ _485_ _486_ vdd gnd OAI21X1
XFILL_0__1723_ gnd vdd FILL
XFILL_0__1303_ gnd vdd FILL
XFILL_2__1494_ gnd vdd FILL
XFILL_2__1074_ gnd vdd FILL
X_1739_ _11_ clk_bF$buf6 Xcalc[9] vdd gnd DFFPOSX1
X_1319_ _534_ _532_ _537_ _538_ vdd gnd OAI21X1
X_1492_ LoadCtl_0_bF$buf3 _483_ _668_ _60_ vdd gnd OAI21X1
X_1072_ _303_ _305_ vdd gnd INVX1
XFILL_0__1532_ gnd vdd FILL
XFILL_0__1112_ gnd vdd FILL
X_1548_ _712_ _721_ vdd gnd INVX1
X_1128_ _357_ _355_ Stg_2_bF$buf4 _358_ vdd gnd OAI21X1
XFILL_0__876_ gnd vdd FILL
X_879_ Acalc[11] _121_ vdd gnd INVX1
XFILL_0__1341_ gnd vdd FILL
XFILL_1__1502_ gnd vdd FILL
X_1777_ _49_ clk_bF$buf2 Yin0[1] vdd gnd DFFPOSX1
X_1357_ _570_ _562_ _567_ _573_ vdd gnd OAI21X1
XFILL_1__1099_ gnd vdd FILL
XFILL_1__892_ gnd vdd FILL
XFILL88050x46950 gnd vdd FILL
XFILL_0__1570_ gnd vdd FILL
XFILL_0__1150_ gnd vdd FILL
X_900_ _137_ _138_ _139_ _140_ vdd gnd OAI21X1
XFILL_1__1311_ gnd vdd FILL
XFILL88050x3750 gnd vdd FILL
X_1586_ _164__bF$buf3 _471_ _757_ vdd gnd NOR2X1
X_1166_ _361_ _376_ _353_ _394_ vdd gnd NAND3X1
XFILL_1__948_ gnd vdd FILL
XFILL_0__1626_ gnd vdd FILL
XFILL_0__1206_ gnd vdd FILL
XFILL_2__1397_ gnd vdd FILL
XFILL_1__1540_ gnd vdd FILL
XFILL_1__1120_ gnd vdd FILL
X_1395_ _607_ _608_ _609_ vdd gnd NAND2X1
XFILL_0__1435_ gnd vdd FILL
XFILL_0__1015_ gnd vdd FILL
XFILL_1__986_ gnd vdd FILL
XFILL_0__1664_ gnd vdd FILL
XFILL_0__1244_ gnd vdd FILL
XFILL_1__1405_ gnd vdd FILL
XFILL_0__1473_ gnd vdd FILL
XFILL_0__1053_ gnd vdd FILL
XFILL_1__1634_ gnd vdd FILL
XFILL_1__1214_ gnd vdd FILL
X_1489_ LoadCtl_0_bF$buf2 _118_ Ain1[1] _667_ vdd gnd OAI21X1
X_1069_ _297_ _299_ Xin1[0] _302_ vdd gnd AOI21X1
XFILL_2__1703_ gnd vdd FILL
XFILL_0__1529_ gnd vdd FILL
XFILL_0__1109_ gnd vdd FILL
XFILL_0__1282_ gnd vdd FILL
X_1701_ _77_ _80_ Yin12b[10] _81_ vdd gnd OAI21X1
XFILL_1__1443_ gnd vdd FILL
XFILL_1__1023_ gnd vdd FILL
X_1298_ Ain1[1] _518_ vdd gnd INVX1
XFILL_0__1338_ gnd vdd FILL
XFILL_0__1091_ gnd vdd FILL
X_1510_ _183__bF$buf1 _682_ _683_ _684_ vdd gnd NAND3X1
XFILL_1__1672_ gnd vdd FILL
XFILL_1__1252_ gnd vdd FILL
XFILL_1__889_ gnd vdd FILL
XFILL_0__1567_ gnd vdd FILL
XFILL_0__1147_ gnd vdd FILL
XFILL_1__1308_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert51 gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_0_BUFX2_insert53 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert55 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert57 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_1__1481_ gnd vdd FILL
XFILL_1__1061_ gnd vdd FILL
XFILL_2__1550_ gnd vdd FILL
XFILL_2__1130_ gnd vdd FILL
XFILL88350x54150 gnd vdd FILL
XFILL_0__1376_ gnd vdd FILL
XFILL_1__1537_ gnd vdd FILL
XFILL_1__1117_ gnd vdd FILL
XFILL_1__910_ gnd vdd FILL
XFILL_1__1290_ gnd vdd FILL
XFILL_0__1185_ gnd vdd FILL
X_1604_ _744_ _761_ _743_ _774_ vdd gnd NAND3X1
XFILL_0__932_ gnd vdd FILL
X_935_ Xin12b[6] _172_ vdd gnd INVX1
XFILL_1__1346_ gnd vdd FILL
X_1413_ LoadCtl[5] _137_ _109_ _624_ vdd gnd NAND3X1
XFILL_1__1575_ gnd vdd FILL
XFILL_1__1155_ gnd vdd FILL
XFILL_2__1644_ gnd vdd FILL
XFILL_2__1224_ gnd vdd FILL
X_1642_ _810_ _798_ _811_ vdd gnd NOR2X1
X_1222_ _446_ _447_ _186_ _448_ vdd gnd OAI21X1
XFILL_0__970_ gnd vdd FILL
X_973_ Xin12b[7] _209_ vdd gnd INVX1
XFILL_1__1384_ gnd vdd FILL
XFILL_0__1699_ gnd vdd FILL
XFILL_0__1279_ gnd vdd FILL
X_1451_ _284_ _629_ _646_ _41_ vdd gnd OAI21X1
X_1031_ Yin12b[5] _265_ vdd gnd INVX1
XFILL_1__1193_ gnd vdd FILL
XFILL_0__1088_ gnd vdd FILL
X_1507_ Stg_0_bF$buf1 _202_ _681_ vdd gnd NAND2X1
XFILL_1__1669_ gnd vdd FILL
XFILL_1__1249_ gnd vdd FILL
X_1680_ _801_ _828_ _846_ _847_ vdd gnd NAND3X1
X_1260_ Ain0[0] _483_ vdd gnd INVX1
XFILL_0__1720_ gnd vdd FILL
XFILL_0__1300_ gnd vdd FILL
XFILL_2__1491_ gnd vdd FILL
XFILL_2__1071_ gnd vdd FILL
X_1736_ _8_ clk_bF$buf3 Xcalc[6] vdd gnd DFFPOSX1
X_1316_ _534_ _532_ _535_ vdd gnd NOR2X1
XFILL_1__1478_ gnd vdd FILL
XFILL_1__1058_ gnd vdd FILL
XFILL_2__1547_ gnd vdd FILL
XFILL_2__1127_ gnd vdd FILL
X_1545_ _717_ _718_ vdd gnd INVX1
X_1125_ Stg_1_bF$buf0 _313_ _355_ vdd gnd NOR2X1
XFILL_0__873_ gnd vdd FILL
XFILL_1__907_ gnd vdd FILL
X_876_ LoadCtl_0_bF$buf2 _118_ _119_ vdd gnd NOR2X1
XFILL_1__1287_ gnd vdd FILL
XFILL_0__929_ gnd vdd FILL
X_1774_ _46_ clk_bF$buf2 Yin1[0] vdd gnd DFFPOSX1
X_1354_ _562_ _570_ _571_ vdd gnd AND2X2
XFILL_1__1096_ gnd vdd FILL
XFILL_0__1814_ gnd vdd FILL
X_1583_ _133_ _188__bF$buf2 _754_ _709_ _65_ vdd 
+ gnd
+ AOI22X1
X_1163_ _149_ LoadCtl_6_bF$buf1 _391_ _8_ vdd gnd OAI21X1
XFILL_1__945_ gnd vdd FILL
XFILL_0__1623_ gnd vdd FILL
XFILL_0__1203_ gnd vdd FILL
XFILL_2__1394_ gnd vdd FILL
X_1639_ _801_ _804_ _808_ vdd gnd NAND2X1
X_1219_ _444_ _440_ _445_ vdd gnd NAND2X1
XFILL_0__967_ gnd vdd FILL
X_1392_ Ain12b[9] _606_ vdd gnd INVX1
XFILL_0__1432_ gnd vdd FILL
XFILL_0__1012_ gnd vdd FILL
XFILL_2__961_ gnd vdd FILL
X_1448_ Yin[0] _629_ _645_ vdd gnd NAND2X1
X_1028_ Yin12b[7] _262_ vdd gnd INVX1
XFILL_1__983_ gnd vdd FILL

.ends
.end
