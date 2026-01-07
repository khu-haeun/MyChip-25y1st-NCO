*SPICE netlist created from verilog structural netlist module output_terminal by vlog2Spice (qflow)
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

.subckt output_terminal vdd gnd Dout[0] Dout[1] Dout[2] Dout[3] Dout[4]
+ Dout[5] Dout[6] Dout[7] Dout[8] Dout[9] Dout[10] Dout[11] ISin
+ Rdy Vld Xin[0] Xin[1] Yin[0] Yin[1] clk selSign
+ selXY 

XFILL_2__350_ gnd vdd FILL
XFILL_5__494_ gnd vdd FILL
XFILL_6__436_ gnd vdd FILL
XFILL_1__619_ gnd vdd FILL
X_588_ _39_ clk_bF$buf2 Xin12b[4] vdd gnd DFFPOSX1
XFILL_1__372_ gnd vdd FILL
XFILL_2__406_ gnd vdd FILL
XFILL_3__521_ gnd vdd FILL
XFILL_7__452_ gnd vdd FILL
XFILL_0__394_ gnd vdd FILL
XFILL_1__428_ gnd vdd FILL
X_397_ Xin12b[6] Xin12b[7] _145_ vdd gnd NOR2X1
XFILL_5__359_ gnd vdd FILL
XFILL75150x36150 gnd vdd FILL
XFILL_3__330_ gnd vdd FILL
XFILL_6__474_ gnd vdd FILL
XFILL_7__508_ gnd vdd FILL
XFILL_8__623_ gnd vdd FILL
XFILL_2__444_ gnd vdd FILL
XFILL_9__410_ gnd vdd FILL
XFILL_6__283_ gnd vdd FILL
XFILL_7__317_ gnd vdd FILL
XFILL_7__490_ gnd vdd FILL
XFILL_1__466_ gnd vdd FILL
XFILL_8__432_ gnd vdd FILL
XFILL_5__397_ gnd vdd FILL
XFILL_3__615_ gnd vdd FILL
XFILL_6__339_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_4__402_ gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_7__546_ gnd vdd FILL
XFILL_0__488_ gnd vdd FILL
XFILL_1__275_ gnd vdd FILL
XFILL_2__309_ gnd vdd FILL
XFILL_2__482_ gnd vdd FILL
XFILL_3__424_ gnd vdd FILL
XFILL_7__355_ gnd vdd FILL
XFILL_0__297_ gnd vdd FILL
XFILL_8__470_ gnd vdd FILL
XFILL_2__538_ gnd vdd FILL
XFILL_9__504_ gnd vdd FILL
XFILL_2__291_ gnd vdd FILL
XFILL_6__377_ gnd vdd FILL
X_512_ _244_ _242_ _219_ _245_ vdd gnd NAND3X1
XFILL_4__440_ gnd vdd FILL
XFILL_8__526_ gnd vdd FILL
XFILL_2__347_ gnd vdd FILL
XFILL_9__313_ gnd vdd FILL
XFILL_3__462_ gnd vdd FILL
X_321_ Yin[1] _80_ _83_ vdd gnd NAND2X1
XFILL_7__393_ gnd vdd FILL
XFILL_1__369_ gnd vdd FILL
XFILL_8__335_ gnd vdd FILL
XFILL_9__542_ gnd vdd FILL
XFILL_3__518_ gnd vdd FILL
XFILL_4__305_ gnd vdd FILL
XFILL_7__449_ gnd vdd FILL
X_550_ _237_ _251_ _268_ _46_ vdd gnd OAI21X1
XFILL_5__512_ gnd vdd FILL
XFILL_2__385_ gnd vdd FILL
XFILL_9__351_ gnd vdd FILL
XFILL_3__327_ gnd vdd FILL
X_606_ Rdy clk_bF$buf5 LoadCtl[0] vdd gnd DFFPOSX1
XFILL_4__534_ gnd vdd FILL
XFILL_5__321_ gnd vdd FILL
XFILL_8__373_ gnd vdd FILL
XFILL_9__407_ gnd vdd FILL
XFILL_0__412_ gnd vdd FILL
XFILL_3__556_ gnd vdd FILL
X_415_ ISreg_bF$buf1 Xin12b[10] _160_ _161_ vdd gnd NAND3X1
XFILL_4__343_ gnd vdd FILL
XFILL_7__487_ gnd vdd FILL
XFILL_8__429_ gnd vdd FILL
XFILL_5__550_ gnd vdd FILL
XFILL_3__365_ gnd vdd FILL
XFILL_7__296_ gnd vdd FILL
XFILL_6__301_ gnd vdd FILL
XFILL_2__479_ gnd vdd FILL
XFILL_9__445_ gnd vdd FILL
XFILL74850x57750 gnd vdd FILL
XFILL_0__450_ gnd vdd FILL
X_453_ Yin1[0] Yin1[1] _193_ vdd gnd NOR2X1
XFILL_4__381_ gnd vdd FILL
XFILL_5__415_ gnd vdd FILL
XFILL_8__467_ gnd vdd FILL
XFILL_6__530_ gnd vdd FILL
XFILL_2__288_ gnd vdd FILL
XFILL_0__506_ gnd vdd FILL
X_509_ ISreg_bF$buf3 Yin12b[10] _242_ vdd gnd NAND2X1
XFILL_4__437_ gnd vdd FILL
XFILL_2__500_ gnd vdd FILL
XFILL_8__276_ gnd vdd FILL
XFILL_0__315_ gnd vdd FILL
XFILL_3__459_ gnd vdd FILL
X_318_ Yin[0] _80_ _81_ vdd gnd NAND2X1
XFILL_1__522_ gnd vdd FILL
X_491_ _225_ _224_ _226_ vdd gnd OR2X2
XFILL_5__453_ gnd vdd FILL
XFILL_0__544_ gnd vdd FILL
X_547_ Yin[0] _251_ _267_ vdd gnd NAND2X1
XFILL_1__331_ gnd vdd FILL
XFILL_4__475_ gnd vdd FILL
XFILL_5__509_ gnd vdd FILL
XFILL_6__624_ gnd vdd FILL
XFILL_7__411_ gnd vdd FILL
XFILL_0__353_ gnd vdd FILL
XFILL_3__497_ gnd vdd FILL
X_356_ _96__bF$buf2 _108_ _109_ _11_ vdd gnd OAI21X1
XFILL_4__284_ gnd vdd FILL
XFILL_5__318_ gnd vdd FILL
XFILL_5__491_ gnd vdd FILL
XFILL_6__433_ gnd vdd FILL
XFILL_0__409_ gnd vdd FILL
XFILL_1__616_ gnd vdd FILL
X_585_ _36_ clk_bF$buf1 Xin12b[9] vdd gnd DFFPOSX1
XFILL_2__403_ gnd vdd FILL
XFILL_5__547_ gnd vdd FILL
XFILL_9__386_ gnd vdd FILL
XFILL_0__391_ gnd vdd FILL
XFILL_1__425_ gnd vdd FILL
X_394_ LoadCtl_6_bF$buf3 _139_ _142_ _143_ vdd gnd NAND3X1
XFILL_5__356_ gnd vdd FILL
XFILL_6__471_ gnd vdd FILL
XFILL_7__505_ gnd vdd FILL
XFILL_0__447_ gnd vdd FILL
XFILL_8__620_ gnd vdd FILL
XFILL75150x57750 gnd vdd FILL
XFILL_4__378_ gnd vdd FILL
XFILL_2__441_ gnd vdd FILL
XFILL_6__527_ gnd vdd FILL
XFILL_6__280_ gnd vdd FILL
XFILL_7__314_ gnd vdd FILL
XFILL_1__463_ gnd vdd FILL
XFILL_5__394_ gnd vdd FILL
XFILL_6__336_ gnd vdd FILL
XFILL_7__543_ gnd vdd FILL
XFILL_0__485_ gnd vdd FILL
XFILL_1__519_ gnd vdd FILL
X_488_ _96__bF$buf0 _222_ _223_ _29_ vdd gnd OAI21X1
XFILL_2__306_ gnd vdd FILL
XFILL_3__421_ gnd vdd FILL
XFILL_9__289_ gnd vdd FILL
XFILL_7__352_ gnd vdd FILL
XFILL_0__294_ gnd vdd FILL
XFILL_1__328_ gnd vdd FILL
X_297_ Ycalc[8] _65_ vdd gnd INVX1
XFILL_2__535_ gnd vdd FILL
XFILL_9__501_ gnd vdd FILL
XFILL75450x10950 gnd vdd FILL
XFILL_6__374_ gnd vdd FILL
XFILL_7__408_ gnd vdd FILL
XFILL_8__523_ gnd vdd FILL
XFILL_2__344_ gnd vdd FILL
XFILL_5__488_ gnd vdd FILL
XFILL_7_CLKBUF1_insert0 gnd vdd FILL
XFILL_7_CLKBUF1_insert1 gnd vdd FILL
XFILL_7_CLKBUF1_insert2 gnd vdd FILL
XFILL_7_CLKBUF1_insert3 gnd vdd FILL
XFILL_7_CLKBUF1_insert4 gnd vdd FILL
XFILL_7_CLKBUF1_insert5 gnd vdd FILL
XFILL_7_CLKBUF1_insert6 gnd vdd FILL
XFILL_7__390_ gnd vdd FILL
XFILL_1__366_ gnd vdd FILL
XFILL_8__332_ gnd vdd FILL
XFILL_5__297_ gnd vdd FILL
XFILL_3__515_ gnd vdd FILL
XFILL_4__302_ gnd vdd FILL
XFILL_7__446_ gnd vdd FILL
XFILL_0__388_ gnd vdd FILL
XFILL_2__382_ gnd vdd FILL
XFILL_3__324_ gnd vdd FILL
XFILL_6__468_ gnd vdd FILL
X_603_ _5_ clk_bF$buf5 Yin1[1] vdd gnd DFFPOSX1
XFILL_4__531_ gnd vdd FILL
XFILL_8__617_ gnd vdd FILL
XFILL_8__370_ gnd vdd FILL
XFILL_2__438_ gnd vdd FILL
XFILL_3__553_ gnd vdd FILL
XFILL_6__277_ gnd vdd FILL
X_412_ _129_ _145_ _158_ vdd gnd AND2X2
XFILL_4__340_ gnd vdd FILL
XFILL_7__484_ gnd vdd FILL
XFILL_8__426_ gnd vdd FILL
XFILL_3__362_ gnd vdd FILL
XFILL_7__293_ gnd vdd FILL
XFILL_2__476_ gnd vdd FILL
XFILL_3__418_ gnd vdd FILL
XFILL_4__625_ gnd vdd FILL
XFILL_7__349_ gnd vdd FILL
X_450_ _189_ Yin1[1] _191_ vdd gnd OR2X2
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
XFILL_2__285_ gnd vdd FILL
XFILL_0__503_ gnd vdd FILL
X_506_ Yin12b[11] _169_ _239_ vdd gnd NAND2X1
XFILL_4__434_ gnd vdd FILL
XFILL_8__273_ gnd vdd FILL
XFILL_0__312_ gnd vdd FILL
XFILL_9__480_ gnd vdd FILL
XFILL_3__456_ gnd vdd FILL
X_315_ Yin12b[4] _78_ vdd gnd INVX1
XFILL_7__387_ gnd vdd FILL
XFILL_8__329_ gnd vdd FILL
XFILL_5__450_ gnd vdd FILL
XFILL_0__541_ gnd vdd FILL
X_544_ LoadCtl[0] _95_ _265_ _43_ vdd gnd OAI21X1
XFILL_4__472_ gnd vdd FILL
XFILL_5__506_ gnd vdd FILL
XFILL_6__621_ gnd vdd FILL
XFILL_2__379_ gnd vdd FILL
XFILL_9__345_ gnd vdd FILL
XFILL_0__350_ gnd vdd FILL
XFILL_3__494_ gnd vdd FILL
XFILL_4__528_ gnd vdd FILL
X_353_ _93_ _106_ _103_ _107_ vdd gnd OAI21X1
XFILL_4__281_ gnd vdd FILL
XFILL_5__315_ gnd vdd FILL
XFILL_8__367_ gnd vdd FILL
XFILL_6__430_ gnd vdd FILL
XFILL_0__406_ gnd vdd FILL
X_409_ _154_ _153_ _96__bF$buf3 _156_ vdd gnd AOI21X1
XFILL_1__613_ gnd vdd FILL
XFILL_4__337_ gnd vdd FILL
X_582_ _33_ clk_bF$buf2 Xin12b[10] vdd gnd DFFPOSX1
XFILL_2__400_ gnd vdd FILL
XFILL_5__544_ gnd vdd FILL
XFILL_9__383_ gnd vdd FILL
XFILL_3__359_ gnd vdd FILL
XFILL_1__422_ gnd vdd FILL
X_391_ Xin12b[7] _140_ vdd gnd INVX1
XFILL_5__353_ gnd vdd FILL
XFILL_9__439_ gnd vdd FILL
XFILL_7__502_ gnd vdd FILL
XFILL_0__444_ gnd vdd FILL
X_447_ _53_ LoadCtl_6_bF$buf4 _188_ _23_ vdd gnd OAI21X1
XFILL_4__375_ gnd vdd FILL
XFILL_5__409_ gnd vdd FILL
XFILL_6__524_ gnd vdd FILL
XFILL_7__311_ gnd vdd FILL
XFILL_3__397_ gnd vdd FILL
XFILL_1__460_ gnd vdd FILL
XFILL_5__391_ gnd vdd FILL
XFILL_6__333_ gnd vdd FILL
XFILL_0__309_ gnd vdd FILL
XFILL_9__477_ gnd vdd FILL
XFILL_7__540_ gnd vdd FILL
XFILL_0__482_ gnd vdd FILL
XFILL_1__516_ gnd vdd FILL
X_485_ _216_ _219_ _221_ vdd gnd NAND2X1
XFILL_2__303_ gnd vdd FILL
XFILL_5__447_ gnd vdd FILL
XFILL_8__499_ gnd vdd FILL
XFILL_0__538_ gnd vdd FILL
XFILL_9__286_ gnd vdd FILL
XFILL_0__291_ gnd vdd FILL
XFILL_1__325_ gnd vdd FILL
XFILL_4__469_ gnd vdd FILL
X_294_ Ycalc[7] _63_ vdd gnd INVX1
XFILL_2__532_ gnd vdd FILL
XFILL_6__618_ gnd vdd FILL
XFILL_6__371_ gnd vdd FILL
XFILL_7__405_ gnd vdd FILL
XFILL_0__347_ gnd vdd FILL
XFILL_1__554_ gnd vdd FILL
XFILL_8__520_ gnd vdd FILL
XFILL_4__278_ gnd vdd FILL
XFILL_2__341_ gnd vdd FILL
XFILL_5__485_ gnd vdd FILL
XFILL_6__427_ gnd vdd FILL
X_579_ _30_ clk_bF$buf6 Ycalc[9] vdd gnd DFFPOSX1
XFILL_1__363_ gnd vdd FILL
XFILL_5__294_ gnd vdd FILL
XFILL_3__512_ gnd vdd FILL
XFILL_7__443_ gnd vdd FILL
XFILL_0__385_ gnd vdd FILL
XFILL_1__419_ gnd vdd FILL
X_388_ Xcalc[7] _137_ vdd gnd INVX1
XFILL_3__321_ gnd vdd FILL
XFILL_6__465_ gnd vdd FILL
X_600_ _2_ clk_bF$buf4 Yin12b[4] vdd gnd DFFPOSX1
XFILL_8__614_ gnd vdd FILL
XFILL_2__435_ gnd vdd FILL
XFILL_9__401_ gnd vdd FILL
XFILL_3__550_ gnd vdd FILL
XFILL_6__274_ gnd vdd FILL
XFILL_7__308_ gnd vdd FILL
XFILL_7__481_ gnd vdd FILL
XFILL_1__457_ gnd vdd FILL
XFILL_8__423_ gnd vdd FILL
XFILL_5__388_ gnd vdd FILL
XFILL_7__537_ gnd vdd FILL
XFILL_0__479_ gnd vdd FILL
XFILL_7__290_ gnd vdd FILL
XFILL_2__473_ gnd vdd FILL
XFILL_3__415_ gnd vdd FILL
XFILL_4__622_ gnd vdd FILL
XFILL_7__346_ gnd vdd FILL
XFILL_0__288_ gnd vdd FILL
XFILL_1__495_ gnd vdd FILL
XFILL_8__461_ gnd vdd FILL
XFILL_2__529_ gnd vdd FILL
XFILL_2__282_ gnd vdd FILL
XFILL_0__500_ gnd vdd FILL
XFILL_6__368_ gnd vdd FILL
X_503_ Ycalc[11] _96__bF$buf1 _236_ vdd gnd NAND2X1
XFILL_4__431_ gnd vdd FILL
XFILL_8__517_ gnd vdd FILL
XFILL_2__338_ gnd vdd FILL
XFILL_9__304_ gnd vdd FILL
XFILL_3__453_ gnd vdd FILL
X_312_ _74_ LoadCtl[3] _75_ _76_ vdd gnd NAND3X1
XFILL_7__384_ gnd vdd FILL
XFILL_8__326_ gnd vdd FILL
XFILL_9__533_ gnd vdd FILL
XFILL_3__509_ gnd vdd FILL
X_541_ LoadCtl[0] _85_ Xin1[1] _264_ vdd gnd OAI21X1
XFILL_5__503_ gnd vdd FILL
XFILL_8__555_ gnd vdd FILL
XFILL_2__376_ gnd vdd FILL
XFILL_9__342_ gnd vdd FILL
XFILL_3__318_ gnd vdd FILL
XFILL73050x10950 gnd vdd FILL
XFILL_3__491_ gnd vdd FILL
XFILL_4__525_ gnd vdd FILL
X_350_ Xin0[0] Xin0[1] ISreg_bF$buf1 _104_ vdd gnd OAI21X1
XFILL_5__312_ gnd vdd FILL
XFILL_1__398_ gnd vdd FILL
XFILL_8__364_ gnd vdd FILL
XFILL_0__403_ gnd vdd FILL
XFILL_3__547_ gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
X_406_ Xin12b[9] _153_ vdd gnd INVX1
XFILL_4__334_ gnd vdd FILL
XFILL_7__478_ gnd vdd FILL
XFILL_5__541_ gnd vdd FILL
XFILL_9__380_ gnd vdd FILL
XFILL_3__356_ gnd vdd FILL
XFILL_7__287_ gnd vdd FILL
XFILL_5__350_ gnd vdd FILL
XFILL_9__436_ gnd vdd FILL
XFILL_0__441_ gnd vdd FILL
XFILL_4__619_ gnd vdd FILL
X_444_ Yin0[0] Yin0[1] _186_ vdd gnd NOR2X1
XFILL_4__372_ gnd vdd FILL
XFILL_5__406_ gnd vdd FILL
XFILL_8__458_ gnd vdd FILL
XFILL_6__521_ gnd vdd FILL
XFILL_2__279_ gnd vdd FILL
XFILL_3__394_ gnd vdd FILL
XFILL_4__428_ gnd vdd FILL
XFILL_6__330_ gnd vdd FILL
XFILL_0__306_ gnd vdd FILL
XFILL_9__474_ gnd vdd FILL
X_309_ Yin[1] _73_ vdd gnd INVX1
XFILL_3_BUFX2_insert7 gnd vdd FILL
XFILL_3_BUFX2_insert8 gnd vdd FILL
XFILL_3_BUFX2_insert9 gnd vdd FILL
XFILL_1__513_ gnd vdd FILL
X_482_ _203_ _217_ _218_ vdd gnd NAND2X1
XFILL_2__300_ gnd vdd FILL
XFILL_5__444_ gnd vdd FILL
XFILL_8__496_ gnd vdd FILL
XFILL_0__535_ gnd vdd FILL
XFILL_9__283_ gnd vdd FILL
X_538_ _123_ _80_ _262_ _40_ vdd gnd OAI21X1
XFILL_1__322_ gnd vdd FILL
XFILL_4__466_ gnd vdd FILL
X_291_ Ycalc[6] _61_ vdd gnd INVX1
XFILL_6__615_ gnd vdd FILL
XFILL_9__339_ gnd vdd FILL
XFILL_7__402_ gnd vdd FILL
XFILL_0__344_ gnd vdd FILL
XFILL_3__488_ gnd vdd FILL
X_347_ Xcalc[1] _96__bF$buf4 _102_ vdd gnd NAND2X1
XFILL_1__551_ gnd vdd FILL
XFILL_4__275_ gnd vdd FILL
XFILL_5__309_ gnd vdd FILL
XFILL_5__482_ gnd vdd FILL
XFILL_6__424_ gnd vdd FILL
XFILL_3__297_ gnd vdd FILL
X_576_ _27_ clk_bF$buf4 Ycalc[6] vdd gnd DFFPOSX1
XFILL_1__360_ gnd vdd FILL
XFILL_5__538_ gnd vdd FILL
XFILL_5__291_ gnd vdd FILL
XFILL_9__377_ gnd vdd FILL
XFILL_7__440_ gnd vdd FILL
XFILL_0__382_ gnd vdd FILL
XFILL_1__416_ gnd vdd FILL
X_385_ _131_ _134_ _135_ vdd gnd NAND2X1
XFILL_2__623_ gnd vdd FILL
XFILL_5__347_ gnd vdd FILL
XFILL_8__399_ gnd vdd FILL
XFILL_6__462_ gnd vdd FILL
XFILL_0__438_ gnd vdd FILL
XFILL_4__369_ gnd vdd FILL
XFILL_2__432_ gnd vdd FILL
XFILL_6__518_ gnd vdd FILL
XFILL_7__305_ gnd vdd FILL
XFILL73650x28950 gnd vdd FILL
XFILL_1__454_ gnd vdd FILL
XFILL_8__420_ gnd vdd FILL
XFILL_5__385_ gnd vdd FILL
XFILL_6__327_ gnd vdd FILL
XFILL_5_CLKBUF1_insert0 gnd vdd FILL
XFILL_5_CLKBUF1_insert1 gnd vdd FILL
XFILL_5_CLKBUF1_insert2 gnd vdd FILL
XFILL_5_CLKBUF1_insert3 gnd vdd FILL
XFILL_5_CLKBUF1_insert4 gnd vdd FILL
XFILL_5_CLKBUF1_insert5 gnd vdd FILL
XFILL_5_CLKBUF1_insert6 gnd vdd FILL
XFILL_7__534_ gnd vdd FILL
XFILL_0__476_ gnd vdd FILL
X_479_ _63_ LoadCtl_6_bF$buf2 _215_ _28_ vdd gnd OAI21X1
XFILL_2__470_ gnd vdd FILL
XFILL_3__412_ gnd vdd FILL
XFILL_6__556_ gnd vdd FILL
XFILL_7__343_ gnd vdd FILL
XFILL_0__285_ gnd vdd FILL
XFILL_1__319_ gnd vdd FILL
X_288_ Ycalc[5] _59_ vdd gnd INVX1
XFILL_1__492_ gnd vdd FILL
XFILL_2__526_ gnd vdd FILL
XFILL_6__365_ gnd vdd FILL
X_500_ _232_ _233_ _234_ vdd gnd NAND2X1
XFILL_1__548_ gnd vdd FILL
XFILL_8__514_ gnd vdd FILL
XFILL_2__335_ gnd vdd FILL
XFILL_9__301_ gnd vdd FILL
XFILL_5__479_ gnd vdd FILL
XFILL_3__450_ gnd vdd FILL
XFILL_7__381_ gnd vdd FILL
XFILL_1__357_ gnd vdd FILL
XFILL_8__323_ gnd vdd FILL
XFILL_9__530_ gnd vdd FILL
XFILL_5__288_ gnd vdd FILL
XFILL_3__506_ gnd vdd FILL
XFILL_7__437_ gnd vdd FILL
XFILL_0__379_ gnd vdd FILL
XFILL_5__500_ gnd vdd FILL
XFILL_8__552_ gnd vdd FILL
XFILL_2__373_ gnd vdd FILL
XFILL_3__315_ gnd vdd FILL
XFILL_6__459_ gnd vdd FILL
XFILL_4__522_ gnd vdd FILL
XFILL_1__395_ gnd vdd FILL
XFILL_8__361_ gnd vdd FILL
XFILL_2__429_ gnd vdd FILL
XFILL75450x72150 gnd vdd FILL
XFILL_0__400_ gnd vdd FILL
XFILL_3__544_ gnd vdd FILL
XFILL75450x39750 gnd vdd FILL
X_403_ Xcalc[8] _96__bF$buf1 _151_ vdd gnd NAND2X1
XFILL_4__331_ gnd vdd FILL
XFILL_7__475_ gnd vdd FILL
XFILL_8__417_ gnd vdd FILL
XFILL_9__624_ gnd vdd FILL
XFILL_3__353_ gnd vdd FILL
XFILL_6__497_ gnd vdd FILL
XFILL_7__284_ gnd vdd FILL
XFILL_2__467_ gnd vdd FILL
XFILL_9__433_ gnd vdd FILL
XFILL_3__409_ gnd vdd FILL
XFILL_4__616_ gnd vdd FILL
X_441_ Yin1[0] _183_ vdd gnd INVX1
XFILL_5__403_ gnd vdd FILL
XFILL_1__489_ gnd vdd FILL
XFILL_8__455_ gnd vdd FILL
XFILL_2__276_ gnd vdd FILL
XFILL_3__391_ gnd vdd FILL
XFILL_4__425_ gnd vdd FILL
XFILL_1__298_ gnd vdd FILL
XFILL_0__303_ gnd vdd FILL
XFILL_9__471_ gnd vdd FILL
XFILL_3__447_ gnd vdd FILL
X_306_ Ycalc[11] _71_ vdd gnd INVX1
XFILL_1__510_ gnd vdd FILL
XFILL_7__378_ gnd vdd FILL
XFILL_5__441_ gnd vdd FILL
XFILL_8__493_ gnd vdd FILL
XFILL_9__527_ gnd vdd FILL
XFILL_0__532_ gnd vdd FILL
X_535_ Xin[0] _80_ _261_ vdd gnd NAND2X1
XFILL_4__463_ gnd vdd FILL
XFILL_8__549_ gnd vdd FILL
XFILL_9__336_ gnd vdd FILL
XFILL_0__341_ gnd vdd FILL
XFILL_3__485_ gnd vdd FILL
XFILL_4__519_ gnd vdd FILL
X_344_ Xin0[1] _99_ vdd gnd INVX1
XFILL_5__306_ gnd vdd FILL
XFILL_8__358_ gnd vdd FILL
XFILL_6__421_ gnd vdd FILL
XFILL_3__294_ gnd vdd FILL
XFILL_4__328_ gnd vdd FILL
X_573_ _24_ clk_bF$buf0 Ycalc[3] vdd gnd DFFPOSX1
XFILL_5__535_ gnd vdd FILL
XFILL_1__413_ gnd vdd FILL
X_382_ Xin12b[6] _132_ vdd gnd INVX1
XFILL_2__620_ gnd vdd FILL
XFILL_5__344_ gnd vdd FILL
XFILL_8__396_ gnd vdd FILL
XFILL_0__435_ gnd vdd FILL
X_438_ _89_ _93_ _91_ _181_ vdd gnd OAI21X1
XFILL_4__366_ gnd vdd FILL
XFILL_6__515_ gnd vdd FILL
XFILL_7__302_ gnd vdd FILL
XFILL_3__388_ gnd vdd FILL
XFILL_1__451_ gnd vdd FILL
XFILL_5__382_ gnd vdd FILL
XFILL_6__324_ gnd vdd FILL
XFILL_7__531_ gnd vdd FILL
XFILL_0__473_ gnd vdd FILL
XFILL_1__507_ gnd vdd FILL
X_476_ ISreg_bF$buf4 Yin12b[6] _213_ vdd gnd NAND2X1
XFILL_5__438_ gnd vdd FILL
XFILL_6__553_ gnd vdd FILL
XFILL_0__529_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_2_BUFX2_insert21 gnd vdd FILL
XFILL_2_BUFX2_insert22 gnd vdd FILL
XFILL_2_BUFX2_insert23 gnd vdd FILL
XFILL_2_BUFX2_insert24 gnd vdd FILL
XFILL_2_BUFX2_insert25 gnd vdd FILL
XFILL_7__340_ gnd vdd FILL
XFILL_0__282_ gnd vdd FILL
XFILL_1__316_ gnd vdd FILL
X_285_ Ycalc[4] _57_ vdd gnd INVX1
XFILL_2__523_ gnd vdd FILL
XFILL_8__299_ gnd vdd FILL
XFILL_6__362_ gnd vdd FILL
XFILL_0__338_ gnd vdd FILL
XFILL_1__545_ gnd vdd FILL
XFILL_8__511_ gnd vdd FILL
XFILL_2__332_ gnd vdd FILL
XFILL_5__476_ gnd vdd FILL
XFILL_6__418_ gnd vdd FILL
XFILL_7__625_ gnd vdd FILL
XFILL_1__354_ gnd vdd FILL
XFILL_8__320_ gnd vdd FILL
XFILL_4__498_ gnd vdd FILL
XFILL_5__285_ gnd vdd FILL
XFILL_3__503_ gnd vdd FILL
XFILL_7__434_ gnd vdd FILL
XFILL_0__376_ gnd vdd FILL
X_379_ Xin12b[4] Xin12b[5] _129_ vdd gnd NOR2X1
XFILL_2__617_ gnd vdd FILL
XFILL_2__370_ gnd vdd FILL
XFILL_3__312_ gnd vdd FILL
XFILL_6__456_ gnd vdd FILL
XFILL_1__392_ gnd vdd FILL
XFILL_2__426_ gnd vdd FILL
XFILL_3__541_ gnd vdd FILL
X_400_ _147_ _144_ _148_ vdd gnd OR2X2
XFILL_7__472_ gnd vdd FILL
XFILL_1__448_ gnd vdd FILL
XFILL_8__414_ gnd vdd FILL
XFILL_9__621_ gnd vdd FILL
XFILL_5__379_ gnd vdd FILL
XFILL_3__350_ gnd vdd FILL
XFILL_6__494_ gnd vdd FILL
XFILL_7__528_ gnd vdd FILL
XFILL_7__281_ gnd vdd FILL
XFILL_2__464_ gnd vdd FILL
XFILL_9__430_ gnd vdd FILL
XFILL_3__406_ gnd vdd FILL
XFILL73950x57750 gnd vdd FILL
XFILL_4__613_ gnd vdd FILL
XFILL_7__337_ gnd vdd FILL
XFILL_0__279_ gnd vdd FILL
XFILL_5__400_ gnd vdd FILL
XFILL_1__486_ gnd vdd FILL
XFILL_8__452_ gnd vdd FILL
XFILL_2__273_ gnd vdd FILL
XFILL_6__359_ gnd vdd FILL
XFILL_4__422_ gnd vdd FILL
XFILL_8__508_ gnd vdd FILL
XFILL_1__295_ gnd vdd FILL
XFILL_2__329_ gnd vdd FILL
XFILL_0__300_ gnd vdd FILL
XFILL_3__444_ gnd vdd FILL
X_303_ Ycalc[10] _69_ vdd gnd INVX1
XFILL_7__375_ gnd vdd FILL
XFILL_8__317_ gnd vdd FILL
XFILL_8__490_ gnd vdd FILL
XFILL_6__397_ gnd vdd FILL
X_532_ _254_ _76_ _259_ _37_ vdd gnd OAI21X1
XFILL_4__460_ gnd vdd FILL
XFILL_8__546_ gnd vdd FILL
XFILL75450x25350 gnd vdd FILL
XFILL_2__367_ gnd vdd FILL
XFILL_3__309_ gnd vdd FILL
XFILL_3__482_ gnd vdd FILL
XFILL_4__516_ gnd vdd FILL
X_341_ Xcalc[0] _96__bF$buf4 _97_ vdd gnd NAND2X1
XFILL_5__303_ gnd vdd FILL
XFILL_1__389_ gnd vdd FILL
XFILL_8__355_ gnd vdd FILL
XFILL_3__538_ gnd vdd FILL
XFILL_3__291_ gnd vdd FILL
XFILL_4__325_ gnd vdd FILL
XFILL_7__469_ gnd vdd FILL
X_570_ _21_ clk_bF$buf3 Ycalc[0] vdd gnd DFFPOSX1
XFILL_5__532_ gnd vdd FILL
XFILL_0__623_ gnd vdd FILL
XFILL_9__371_ gnd vdd FILL
XFILL_3__347_ gnd vdd FILL
XFILL_1__410_ gnd vdd FILL
XFILL_4__554_ gnd vdd FILL
XFILL_7__278_ gnd vdd FILL
XFILL_5__341_ gnd vdd FILL
XFILL_8__393_ gnd vdd FILL
XFILL_0__432_ gnd vdd FILL
X_435_ Yin0[0] LoadCtl_6_bF$buf0 _179_ vdd gnd NAND2X1
XFILL_4__363_ gnd vdd FILL
XFILL_8__449_ gnd vdd FILL
XFILL_6__512_ gnd vdd FILL
XFILL_3__385_ gnd vdd FILL
XFILL73050x72150 gnd vdd FILL
XFILL_4__419_ gnd vdd FILL
XFILL_6__321_ gnd vdd FILL
XFILL_2__499_ gnd vdd FILL
XFILL_9__465_ gnd vdd FILL
XFILL_0__470_ gnd vdd FILL
XFILL_1__504_ gnd vdd FILL
X_473_ _206_ _203_ _197_ _210_ vdd gnd NAND3X1
XFILL_5__435_ gnd vdd FILL
XFILL_8__487_ gnd vdd FILL
XFILL_6__550_ gnd vdd FILL
XFILL_0__526_ gnd vdd FILL
XFILL_9__274_ gnd vdd FILL
X_529_ Xin12b[9] _255_ _258_ vdd gnd NAND2X1
XFILL_1__313_ gnd vdd FILL
XFILL_4__457_ gnd vdd FILL
X_282_ Ycalc[3] _55_ vdd gnd INVX1
XFILL_2__520_ gnd vdd FILL
XFILL_8__296_ gnd vdd FILL
XFILL_0__335_ gnd vdd FILL
XFILL_3__479_ gnd vdd FILL
X_338_ LoadCtl_6_bF$buf1 _93_ _94_ _8_ vdd gnd OAI21X1
XFILL_1__542_ gnd vdd FILL
XFILL_5__473_ gnd vdd FILL
XFILL_6__415_ gnd vdd FILL
XFILL_7__622_ gnd vdd FILL
XFILL_3__288_ gnd vdd FILL
X_567_ _18_ clk_bF$buf3 Xcalc[9] vdd gnd DFFPOSX1
XFILL_1__351_ gnd vdd FILL
XFILL_4__495_ gnd vdd FILL
XFILL_5__529_ gnd vdd FILL
XFILL_5__282_ gnd vdd FILL
XFILL_3__500_ gnd vdd FILL
XFILL_9__368_ gnd vdd FILL
XFILL_3_CLKBUF1_insert0 gnd vdd FILL
XFILL_3_CLKBUF1_insert1 gnd vdd FILL
XFILL_3_CLKBUF1_insert2 gnd vdd FILL
XFILL_3_CLKBUF1_insert3 gnd vdd FILL
XFILL_3_CLKBUF1_insert4 gnd vdd FILL
XFILL_3_CLKBUF1_insert5 gnd vdd FILL
XFILL_3_CLKBUF1_insert6 gnd vdd FILL
XFILL_7__431_ gnd vdd FILL
XFILL_0__373_ gnd vdd FILL
XFILL_1__407_ gnd vdd FILL
X_376_ _126_ _125_ _127_ vdd gnd NAND2X1
XFILL_2__614_ gnd vdd FILL
XFILL_5__338_ gnd vdd FILL
XFILL_6__453_ gnd vdd FILL
XFILL_0__429_ gnd vdd FILL
XFILL_2__423_ gnd vdd FILL
XFILL_6__509_ gnd vdd FILL
XFILL_1__445_ gnd vdd FILL
XFILL_8__411_ gnd vdd FILL
XFILL_5__376_ gnd vdd FILL
XFILL_6__318_ gnd vdd FILL
XFILL_6__491_ gnd vdd FILL
XFILL_7__525_ gnd vdd FILL
XFILL_0__467_ gnd vdd FILL
XFILL_4__398_ gnd vdd FILL
XFILL_2__461_ gnd vdd FILL
XFILL_3__403_ gnd vdd FILL
XFILL_6__547_ gnd vdd FILL
XFILL_7__334_ gnd vdd FILL
XFILL_0__276_ gnd vdd FILL
X_279_ Ycalc[2] _53_ vdd gnd INVX1
XFILL_1__483_ gnd vdd FILL
XFILL_2__517_ gnd vdd FILL
XFILL_6__356_ gnd vdd FILL
XFILL_1__539_ gnd vdd FILL
XFILL_8__505_ gnd vdd FILL
XFILL_7_BUFX2_insert10 gnd vdd FILL
XFILL_7_BUFX2_insert11 gnd vdd FILL
XFILL_7_BUFX2_insert12 gnd vdd FILL
XFILL_7_BUFX2_insert13 gnd vdd FILL
XFILL_7_BUFX2_insert14 gnd vdd FILL
XFILL_7_BUFX2_insert15 gnd vdd FILL
XFILL_7_BUFX2_insert16 gnd vdd FILL
XFILL_1__292_ gnd vdd FILL
XFILL_7_BUFX2_insert17 gnd vdd FILL
XFILL_7_BUFX2_insert18 gnd vdd FILL
XFILL_7_BUFX2_insert19 gnd vdd FILL
XFILL_2__326_ gnd vdd FILL
XFILL_3__441_ gnd vdd FILL
XFILL_7__619_ gnd vdd FILL
X_300_ Ycalc[9] _67_ vdd gnd INVX1
XFILL_7__372_ gnd vdd FILL
XFILL_1__348_ gnd vdd FILL
XFILL_8__314_ gnd vdd FILL
XFILL_2__555_ gnd vdd FILL
XFILL_5__279_ gnd vdd FILL
XFILL_6__394_ gnd vdd FILL
XFILL_7__428_ gnd vdd FILL
XFILL_8__543_ gnd vdd FILL
XFILL_2__364_ gnd vdd FILL
XFILL_9__330_ gnd vdd FILL
XFILL_3__306_ gnd vdd FILL
XFILL_4__513_ gnd vdd FILL
XFILL75450x46950 gnd vdd FILL
XFILL_5__300_ gnd vdd FILL
XFILL_1__386_ gnd vdd FILL
XFILL_8__352_ gnd vdd FILL
XFILL_3__535_ gnd vdd FILL
XFILL74250x28950 gnd vdd FILL
XFILL_4__322_ gnd vdd FILL
XFILL_7__466_ gnd vdd FILL
XFILL_8__408_ gnd vdd FILL
XFILL_9__615_ gnd vdd FILL
XFILL_0__620_ gnd vdd FILL
XFILL_3__344_ gnd vdd FILL
XFILL_6__488_ gnd vdd FILL
X_623_ _272_[8] Dout[8] vdd gnd BUFX2
XFILL_4__551_ gnd vdd FILL
XFILL_7__275_ gnd vdd FILL
XFILL_8__390_ gnd vdd FILL
XFILL_2__458_ gnd vdd FILL
XFILL_9__424_ gnd vdd FILL
XFILL_6__297_ gnd vdd FILL
X_432_ _171_ _176_ _177_ vdd gnd NAND2X1
XFILL_4__360_ gnd vdd FILL
XFILL_8__446_ gnd vdd FILL
XFILL_3__382_ gnd vdd FILL
XFILL_4__416_ gnd vdd FILL
XFILL_5__623_ gnd vdd FILL
XFILL_1__289_ gnd vdd FILL
XFILL_2__496_ gnd vdd FILL
XFILL_9__462_ gnd vdd FILL
XFILL_3__438_ gnd vdd FILL
XFILL_1__501_ gnd vdd FILL
XFILL_7__369_ gnd vdd FILL
X_470_ _206_ _207_ _208_ vdd gnd NAND2X1
XFILL_5__432_ gnd vdd FILL
XFILL_8__484_ gnd vdd FILL
XFILL_9__518_ gnd vdd FILL
XFILL_0__523_ gnd vdd FILL
X_526_ Xin12b[8] _255_ _256_ vdd gnd NAND2X1
XFILL_1__310_ gnd vdd FILL
XFILL_4__454_ gnd vdd FILL
XFILL_8__293_ gnd vdd FILL
XFILL_9__327_ gnd vdd FILL
XFILL_0__332_ gnd vdd FILL
XFILL_3__476_ gnd vdd FILL
X_335_ LoadCtl[0] _91_ _92_ _7_ vdd gnd OAI21X1
XFILL_8__349_ gnd vdd FILL
XFILL_5__470_ gnd vdd FILL
XFILL_6__412_ gnd vdd FILL
XFILL_9__556_ gnd vdd FILL
XFILL_3__285_ gnd vdd FILL
XFILL_4__319_ gnd vdd FILL
X_564_ _15_ clk_bF$buf5 Xcalc[6] vdd gnd DFFPOSX1
XFILL75750x54150 gnd vdd FILL
XFILL_4__492_ gnd vdd FILL
XFILL_5__526_ gnd vdd FILL
XFILL_2__399_ gnd vdd FILL
XFILL_0__617_ gnd vdd FILL
XFILL_9__365_ gnd vdd FILL
XFILL74550x36150 gnd vdd FILL
XFILL_0__370_ gnd vdd FILL
XFILL_1__404_ gnd vdd FILL
XFILL_4__548_ gnd vdd FILL
X_373_ Xin12b[4] _116_ ISreg_bF$buf1 _124_ vdd gnd OAI21X1
XFILL_5__335_ gnd vdd FILL
XFILL_8__387_ gnd vdd FILL
XFILL_6__450_ gnd vdd FILL
XFILL_0__426_ gnd vdd FILL
X_429_ _172_ _173_ _163_ _174_ vdd gnd NAND3X1
XFILL_4__357_ gnd vdd FILL
XFILL_2__420_ gnd vdd FILL
XFILL_6__506_ gnd vdd FILL
XFILL_3__379_ gnd vdd FILL
XFILL_1__442_ gnd vdd FILL
XFILL_5__373_ gnd vdd FILL
XFILL_6__315_ gnd vdd FILL
XFILL_9__459_ gnd vdd FILL
XFILL_7__522_ gnd vdd FILL
XFILL_0__464_ gnd vdd FILL
X_467_ ISreg_bF$buf4 Yin12b[6] _204_ _205_ vdd gnd NAND3X1
XFILL_4__395_ gnd vdd FILL
XFILL_5__429_ gnd vdd FILL
XFILL_3__400_ gnd vdd FILL
XFILL_6__544_ gnd vdd FILL
XFILL_7__331_ gnd vdd FILL
XFILL_0__273_ gnd vdd FILL
XFILL_1__307_ gnd vdd FILL
X_276_ Ycalc[1] _51_ vdd gnd INVX1
XFILL_1__480_ gnd vdd FILL
XFILL_2__514_ gnd vdd FILL
XFILL_6__353_ gnd vdd FILL
XFILL_0__329_ gnd vdd FILL
XFILL_9__497_ gnd vdd FILL
XFILL_1__536_ gnd vdd FILL
XFILL_8__502_ gnd vdd FILL
XFILL_2__323_ gnd vdd FILL
XFILL_5__467_ gnd vdd FILL
XFILL_6__409_ gnd vdd FILL
XFILL_7__616_ gnd vdd FILL
XFILL_1__345_ gnd vdd FILL
XFILL_8__311_ gnd vdd FILL
XFILL_4__489_ gnd vdd FILL
XFILL_2__552_ gnd vdd FILL
XFILL_5__276_ gnd vdd FILL
XFILL_6__391_ gnd vdd FILL
XFILL_7__425_ gnd vdd FILL
XFILL_0__367_ gnd vdd FILL
XFILL_8__540_ gnd vdd FILL
XFILL_4__298_ gnd vdd FILL
XFILL_2__361_ gnd vdd FILL
XFILL_3__303_ gnd vdd FILL
XFILL_6__447_ gnd vdd FILL
XFILL_4__510_ gnd vdd FILL
X_599_ _1_ clk_bF$buf4 Yin12b[7] vdd gnd DFFPOSX1
XFILL_1__383_ gnd vdd FILL
XFILL_2__417_ gnd vdd FILL
XFILL_3__532_ gnd vdd FILL
XFILL_7__463_ gnd vdd FILL
XFILL_1__439_ gnd vdd FILL
XFILL_8__405_ gnd vdd FILL
XFILL_3__341_ gnd vdd FILL
XFILL_6__485_ gnd vdd FILL
XFILL_7__519_ gnd vdd FILL
X_620_ _272_[5] Dout[5] vdd gnd BUFX2
XFILL_2__455_ gnd vdd FILL
XFILL_9__421_ gnd vdd FILL
XFILL_6__294_ gnd vdd FILL
XFILL_7__328_ gnd vdd FILL
XFILL_1__477_ gnd vdd FILL
XFILL_8__443_ gnd vdd FILL
XFILL_4__413_ gnd vdd FILL
XFILL_0__499_ gnd vdd FILL
XFILL_5__620_ gnd vdd FILL
XFILL_1__286_ gnd vdd FILL
XFILL_2__493_ gnd vdd FILL
XFILL_3__435_ gnd vdd FILL
XFILL_7__366_ gnd vdd FILL
XFILL_8__308_ gnd vdd FILL
XFILL_8__481_ gnd vdd FILL
XFILL_2__549_ gnd vdd FILL
XFILL_9__515_ gnd vdd FILL
XFILL_0__520_ gnd vdd FILL
XFILL_6__388_ gnd vdd FILL
X_523_ _167_ _251_ _253_ _34_ vdd gnd OAI21X1
XFILL_4__451_ gnd vdd FILL
XFILL_8__537_ gnd vdd FILL
XFILL_8__290_ gnd vdd FILL
XFILL_2__358_ gnd vdd FILL
XFILL_9__324_ gnd vdd FILL
XFILL_3__473_ gnd vdd FILL
XFILL_4__507_ gnd vdd FILL
X_332_ LoadCtl[0] _89_ _90_ _6_ vdd gnd OAI21X1
XFILL_8__346_ gnd vdd FILL
XFILL_9__553_ gnd vdd FILL
XFILL_3__529_ gnd vdd FILL
XFILL_3__282_ gnd vdd FILL
XFILL_4__316_ gnd vdd FILL
X_561_ _12_ clk_bF$buf3 Xcalc[3] vdd gnd DFFPOSX1
XFILL_5__523_ gnd vdd FILL
XFILL_2__396_ gnd vdd FILL
XFILL_0__614_ gnd vdd FILL
XFILL_9__362_ gnd vdd FILL
XFILL_3__338_ gnd vdd FILL
X_617_ _272_[2] Dout[2] vdd gnd BUFX2
XFILL_1__401_ gnd vdd FILL
XFILL_4__545_ gnd vdd FILL
X_370_ Xcalc[4] _96__bF$buf4 _122_ vdd gnd NAND2X1
XFILL_5__332_ gnd vdd FILL
XFILL_8__384_ gnd vdd FILL
XFILL_9__418_ gnd vdd FILL
XFILL74550x57750 gnd vdd FILL
XFILL_0__423_ gnd vdd FILL
X_426_ _168_ _170_ _171_ vdd gnd NAND2X1
XFILL_4__354_ gnd vdd FILL
XFILL_7__498_ gnd vdd FILL
XFILL_6__503_ gnd vdd FILL
XFILL_3__376_ gnd vdd FILL
XFILL_5__617_ gnd vdd FILL
XFILL_5__370_ gnd vdd FILL
XFILL_6__312_ gnd vdd FILL
XFILL_9__456_ gnd vdd FILL
XFILL_0__461_ gnd vdd FILL
X_464_ _59_ _96__bF$buf1 _201_ _202_ _26_ vdd 
+ gnd
+ AOI22X1
XFILL_4__392_ gnd vdd FILL
XFILL_5__426_ gnd vdd FILL
XFILL_8__478_ gnd vdd FILL
XFILL_1_CLKBUF1_insert0 gnd vdd FILL
XFILL_1_CLKBUF1_insert1 gnd vdd FILL
XFILL_1_CLKBUF1_insert2 gnd vdd FILL
XFILL_1_CLKBUF1_insert3 gnd vdd FILL
XFILL_1_CLKBUF1_insert4 gnd vdd FILL
XFILL_1_CLKBUF1_insert5 gnd vdd FILL
XFILL_1_CLKBUF1_insert6 gnd vdd FILL
XFILL_6__541_ gnd vdd FILL
XFILL_2__299_ gnd vdd FILL
XFILL_0__517_ gnd vdd FILL
XFILL74850x10950 gnd vdd FILL
XFILL_1__304_ gnd vdd FILL
XFILL_4__448_ gnd vdd FILL
X_273_ Ycalc[0] _49_ vdd gnd INVX1
XFILL_2__511_ gnd vdd FILL
XFILL_8__287_ gnd vdd FILL
XFILL_6__350_ gnd vdd FILL
XFILL_0__326_ gnd vdd FILL
X_329_ _73_ _86_ _88_ _5_ vdd gnd OAI21X1
XFILL_1__533_ gnd vdd FILL
XFILL_2__320_ gnd vdd FILL
XFILL_5__464_ gnd vdd FILL
XFILL_6__406_ gnd vdd FILL
XFILL_7__613_ gnd vdd FILL
XFILL_0__555_ gnd vdd FILL
XFILL_3__279_ gnd vdd FILL
X_558_ _9_ clk_bF$buf0 Xcalc[0] vdd gnd DFFPOSX1
XFILL_1__342_ gnd vdd FILL
XFILL_4__486_ gnd vdd FILL
XFILL_5__273_ gnd vdd FILL
XFILL_7__422_ gnd vdd FILL
XFILL_0__364_ gnd vdd FILL
X_367_ _106_ _115_ _119_ vdd gnd AND2X2
XFILL_4__295_ gnd vdd FILL
XFILL_5__329_ gnd vdd FILL
XFILL_3__300_ gnd vdd FILL
XFILL_6__444_ gnd vdd FILL
X_596_ _47_ clk_bF$buf4 Yin12b[8] vdd gnd DFFPOSX1
XFILL_1__380_ gnd vdd FILL
XFILL_2__414_ gnd vdd FILL
XFILL_7__460_ gnd vdd FILL
XFILL_1__436_ gnd vdd FILL
XFILL_8__402_ gnd vdd FILL
XFILL_5__367_ gnd vdd FILL
XFILL_6__309_ gnd vdd FILL
XFILL_6__482_ gnd vdd FILL
XFILL_7__516_ gnd vdd FILL
XFILL_0__458_ gnd vdd FILL
XBUFX2_insert7 selXY selXY_bF$buf3 vdd gnd BUFX2
XBUFX2_insert8 selXY selXY_bF$buf2 vdd gnd BUFX2
XBUFX2_insert9 selXY selXY_bF$buf1 vdd gnd BUFX2
XFILL_4__389_ gnd vdd FILL
XFILL_2__452_ gnd vdd FILL
XFILL_6__538_ gnd vdd FILL
XFILL_6__291_ gnd vdd FILL
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
X_499_ ISreg_bF$buf3 _230_ _233_ vdd gnd NAND2X1
XFILL_1__283_ gnd vdd FILL
XFILL_2__317_ gnd vdd FILL
XFILL_2__490_ gnd vdd FILL
XFILL_3__432_ gnd vdd FILL
XFILL_7__363_ gnd vdd FILL
XFILL_1__339_ gnd vdd FILL
XFILL_8__305_ gnd vdd FILL
XFILL_2__546_ gnd vdd FILL
XFILL_9__512_ gnd vdd FILL
XFILL_6__385_ gnd vdd FILL
XFILL_7__419_ gnd vdd FILL
X_520_ Xin[0] _251_ _252_ vdd gnd NAND2X1
XFILL_8__534_ gnd vdd FILL
XFILL_2__355_ gnd vdd FILL
XFILL_9__321_ gnd vdd FILL
XFILL_5__499_ gnd vdd FILL
XFILL_3__470_ gnd vdd FILL
XFILL_4__504_ gnd vdd FILL
XFILL_1__377_ gnd vdd FILL
XFILL_8__343_ gnd vdd FILL
XFILL_9__550_ gnd vdd FILL
XFILL_3__526_ gnd vdd FILL
XFILL_4__313_ gnd vdd FILL
XFILL_7__457_ gnd vdd FILL
XFILL_0__399_ gnd vdd FILL
XFILL_5__520_ gnd vdd FILL
XFILL_2__393_ gnd vdd FILL
XFILL_3__335_ gnd vdd FILL
XFILL_6__479_ gnd vdd FILL
X_614_ _272_[1] Dout[1] vdd gnd BUFX2
XFILL_4__542_ gnd vdd FILL
XFILL_8__381_ gnd vdd FILL
XFILL_2__449_ gnd vdd FILL
XFILL_9__415_ gnd vdd FILL
XFILL_0__420_ gnd vdd FILL
XFILL_6__288_ gnd vdd FILL
X_423_ selSign _167_ _168_ vdd gnd NAND2X1
XFILL_4__351_ gnd vdd FILL
XFILL_7__495_ gnd vdd FILL
XFILL_8__437_ gnd vdd FILL
XFILL_6__500_ gnd vdd FILL
XFILL_3__373_ gnd vdd FILL
XFILL_4__407_ gnd vdd FILL
XFILL_5__614_ gnd vdd FILL
XFILL_2__487_ gnd vdd FILL
XFILL_3__429_ gnd vdd FILL
X_461_ _93_ _78_ _195_ _200_ vdd gnd OAI21X1
XFILL_5__423_ gnd vdd FILL
XFILL_8__475_ gnd vdd FILL
XFILL_2__296_ gnd vdd FILL
XFILL_0__514_ gnd vdd FILL
X_517_ _75_ _248_ _249_ vdd gnd AND2X2
XFILL_1__301_ gnd vdd FILL
XFILL_4__445_ gnd vdd FILL
XFILL_8__284_ gnd vdd FILL
XFILL_0__323_ gnd vdd FILL
XFILL_3__467_ gnd vdd FILL
XFILL_4_BUFX2_insert20 gnd vdd FILL
XFILL_4_BUFX2_insert21 gnd vdd FILL
X_326_ LoadCtl[0] _85_ Yin1[0] _87_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert22 gnd vdd FILL
XFILL_4_BUFX2_insert23 gnd vdd FILL
XFILL_4_BUFX2_insert24 gnd vdd FILL
XFILL_4_BUFX2_insert25 gnd vdd FILL
XFILL_1__530_ gnd vdd FILL
XFILL_7__398_ gnd vdd FILL
XFILL_5__461_ gnd vdd FILL
XFILL75750x61350 gnd vdd FILL
XFILL_6__403_ gnd vdd FILL
XFILL75750x28950 gnd vdd FILL
XFILL_0__552_ gnd vdd FILL
XFILL_3__276_ gnd vdd FILL
X_555_ Yin12b[6] _76_ _271_ vdd gnd NAND2X1
XFILL_4__483_ gnd vdd FILL
XFILL_5__517_ gnd vdd FILL
XFILL_9__356_ gnd vdd FILL
XFILL_0__361_ gnd vdd FILL
XFILL_4__539_ gnd vdd FILL
X_364_ _106_ _115_ _116_ vdd gnd NAND2X1
XFILL_4__292_ gnd vdd FILL
XFILL_5__326_ gnd vdd FILL
XFILL_8__378_ gnd vdd FILL
XFILL_6__441_ gnd vdd FILL
XFILL_0__417_ gnd vdd FILL
XFILL_1__624_ gnd vdd FILL
XFILL_4__348_ gnd vdd FILL
X_593_ _44_ clk_bF$buf2 Xin0[1] vdd gnd DFFPOSX1
XFILL_2__411_ gnd vdd FILL
XFILL_5__555_ gnd vdd FILL
XFILL_9__394_ gnd vdd FILL
XFILL_1__433_ gnd vdd FILL
XFILL_5__364_ gnd vdd FILL
XFILL_6__306_ gnd vdd FILL
XFILL_7__513_ gnd vdd FILL
XFILL_0__455_ gnd vdd FILL
X_458_ _93_ _197_ _78_ _198_ vdd gnd OAI21X1
XFILL_4__386_ gnd vdd FILL
XFILL_6__535_ gnd vdd FILL
XFILL_7__322_ gnd vdd FILL
XFILL_1__471_ gnd vdd FILL
XFILL_2__505_ gnd vdd FILL
XFILL_3__620_ gnd vdd FILL
XFILL_6__344_ gnd vdd FILL
XFILL_9__488_ gnd vdd FILL
XFILL_7__551_ gnd vdd FILL
XFILL_0__493_ gnd vdd FILL
XFILL_1__527_ gnd vdd FILL
X_496_ _229_ _197_ _228_ _230_ vdd gnd NAND3X1
XFILL_1__280_ gnd vdd FILL
XFILL_2__314_ gnd vdd FILL
XFILL_5__458_ gnd vdd FILL
XFILL_0__549_ gnd vdd FILL
XFILL_9__297_ gnd vdd FILL
XFILL_7__360_ gnd vdd FILL
XFILL_1__336_ gnd vdd FILL
XFILL_8__302_ gnd vdd FILL
XFILL_2__543_ gnd vdd FILL
XFILL_6__382_ gnd vdd FILL
XFILL_7__416_ gnd vdd FILL
XFILL_0__358_ gnd vdd FILL
XFILL75450x7350 gnd vdd FILL
XFILL_8__531_ gnd vdd FILL
XFILL_4__289_ gnd vdd FILL
XFILL_2__352_ gnd vdd FILL
XFILL_5__496_ gnd vdd FILL
XFILL_6__438_ gnd vdd FILL
XFILL_4__501_ gnd vdd FILL
XFILL_1__374_ gnd vdd FILL
XFILL_8__340_ gnd vdd FILL
XFILL_2__408_ gnd vdd FILL
XFILL_3__523_ gnd vdd FILL
XFILL_4__310_ gnd vdd FILL
XFILL_7__454_ gnd vdd FILL
XFILL_0__396_ gnd vdd FILL
X_399_ _116_ _146_ ISreg_bF$buf2 _147_ vdd gnd OAI21X1
XFILL_2__390_ gnd vdd FILL
XFILL_3__332_ gnd vdd FILL
XFILL_6__476_ gnd vdd FILL
X_611_ LoadCtl[4] clk_bF$buf1 LoadCtl[5] vdd gnd DFFPOSX1
XFILL_8__625_ gnd vdd FILL
XFILL_2__446_ gnd vdd FILL
XFILL_6__285_ gnd vdd FILL
XFILL_7__319_ gnd vdd FILL
X_420_ _157_ LoadCtl_6_bF$buf4 _165_ _19_ vdd gnd OAI21X1
XFILL_7__492_ gnd vdd FILL
XFILL_1__468_ gnd vdd FILL
XFILL_8__434_ gnd vdd FILL
XFILL_5__399_ gnd vdd FILL
XFILL_3__617_ gnd vdd FILL
XFILL_3__370_ gnd vdd FILL
XFILL_4__404_ gnd vdd FILL
XFILL_7__548_ gnd vdd FILL
XFILL_1__277_ gnd vdd FILL
XFILL_2__484_ gnd vdd FILL
XFILL_9__450_ gnd vdd FILL
XFILL_3__426_ gnd vdd FILL
XFILL_7__357_ gnd vdd FILL
XFILL_0__299_ gnd vdd FILL
XFILL_5__420_ gnd vdd FILL
XFILL_8__472_ gnd vdd FILL
XFILL_2__293_ gnd vdd FILL
XFILL_0__511_ gnd vdd FILL
XFILL_6__379_ gnd vdd FILL
X_514_ LoadCtl_6_bF$buf2 _246_ _243_ _247_ vdd gnd NAND3X1
XFILL_4__442_ gnd vdd FILL
XFILL_8__528_ gnd vdd FILL
XFILL_8__281_ gnd vdd FILL
XFILL_2__349_ gnd vdd FILL
XFILL_9__315_ gnd vdd FILL
XFILL_0__320_ gnd vdd FILL
XFILL_3__464_ gnd vdd FILL
X_323_ Yin[0] _84_ vdd gnd INVX1
XFILL_7__395_ gnd vdd FILL
XFILL_8__337_ gnd vdd FILL
XFILL_6__400_ gnd vdd FILL
XFILL_9__544_ gnd vdd FILL
XFILL_3__273_ gnd vdd FILL
XFILL_4__307_ gnd vdd FILL
X_552_ _84_ _255_ _269_ _47_ vdd gnd OAI21X1
XFILL_4__480_ gnd vdd FILL
XFILL_5__514_ gnd vdd FILL
XFILL_2__387_ gnd vdd FILL
XFILL_9__353_ gnd vdd FILL
XFILL_3__329_ gnd vdd FILL
X_608_ LoadCtl[1] clk_bF$buf1 LoadCtl[2] vdd gnd DFFPOSX1
XFILL_4__536_ gnd vdd FILL
X_361_ Xcalc[3] _96__bF$buf1 _114_ vdd gnd NAND2X1
XFILL_5__323_ gnd vdd FILL
XFILL_8__375_ gnd vdd FILL
XFILL_9__409_ gnd vdd FILL
XFILL_0__414_ gnd vdd FILL
X_417_ ISreg_bF$buf2 _160_ _163_ vdd gnd NAND2X1
XFILL_1__621_ gnd vdd FILL
XFILL_4__345_ gnd vdd FILL
XFILL_7__489_ gnd vdd FILL
X_590_ _41_ clk_bF$buf5 Xin1[0] vdd gnd DFFPOSX1
XFILL_5__552_ gnd vdd FILL
XFILL_9__391_ gnd vdd FILL
XFILL_3__367_ gnd vdd FILL
XFILL_1__430_ gnd vdd FILL
XFILL_7__298_ gnd vdd FILL
XFILL_5__361_ gnd vdd FILL
XFILL_6__303_ gnd vdd FILL
XFILL_9__447_ gnd vdd FILL
XFILL_7__510_ gnd vdd FILL
XFILL_0__452_ gnd vdd FILL
X_455_ ISreg_bF$buf3 _194_ _195_ vdd gnd NAND2X1
XFILL_4__383_ gnd vdd FILL
XFILL_5__417_ gnd vdd FILL
XFILL_8__469_ gnd vdd FILL
XFILL_6__532_ gnd vdd FILL
XFILL_0__508_ gnd vdd FILL
XFILL_4__439_ gnd vdd FILL
XFILL_2__502_ gnd vdd FILL
XFILL_8__278_ gnd vdd FILL
XFILL75750x14550 gnd vdd FILL
XFILL_6__341_ gnd vdd FILL
XFILL_0__317_ gnd vdd FILL
XFILL_9__485_ gnd vdd FILL
XFILL_0__490_ gnd vdd FILL
XFILL_1__524_ gnd vdd FILL
X_493_ _67_ _96__bF$buf0 _226_ _227_ _30_ vdd 
+ gnd
+ AOI22X1
XFILL_2__311_ gnd vdd FILL
XFILL_5__455_ gnd vdd FILL
XFILL_0__546_ gnd vdd FILL
XFILL_9__294_ gnd vdd FILL
X_549_ Yin[1] _251_ _268_ vdd gnd NAND2X1
XFILL_1__333_ gnd vdd FILL
XFILL_4__477_ gnd vdd FILL
XFILL_9_BUFX2_insert11 gnd vdd FILL
XFILL_9_BUFX2_insert12 gnd vdd FILL
XFILL_9_BUFX2_insert13 gnd vdd FILL
XFILL_9_BUFX2_insert15 gnd vdd FILL
XFILL_9_BUFX2_insert16 gnd vdd FILL
XFILL_9_BUFX2_insert17 gnd vdd FILL
XFILL_9_BUFX2_insert19 gnd vdd FILL
XFILL_2__540_ gnd vdd FILL
XFILL_7__413_ gnd vdd FILL
XFILL_0__355_ gnd vdd FILL
XFILL_3__499_ gnd vdd FILL
X_358_ Xin1[1] _110_ _111_ vdd gnd NAND2X1
XFILL_4__286_ gnd vdd FILL
XFILL_5__493_ gnd vdd FILL
XFILL_6__435_ gnd vdd FILL
XFILL74850x72150 gnd vdd FILL
XFILL_1__618_ gnd vdd FILL
X_587_ _38_ clk_bF$buf1 Xin12b[7] vdd gnd DFFPOSX1
XFILL74850x39750 gnd vdd FILL
XFILL_1__371_ gnd vdd FILL
XFILL_2__405_ gnd vdd FILL
XFILL_5__549_ gnd vdd FILL
XFILL_3__520_ gnd vdd FILL
XFILL_9__388_ gnd vdd FILL
XFILL_7__451_ gnd vdd FILL
XFILL_0__393_ gnd vdd FILL
XFILL73350x28950 gnd vdd FILL
XFILL_1__427_ gnd vdd FILL
X_396_ Xin12b[8] _144_ vdd gnd INVX1
XFILL_5__358_ gnd vdd FILL
XFILL_6__473_ gnd vdd FILL
XFILL_7__507_ gnd vdd FILL
XFILL_0__449_ gnd vdd FILL
XFILL_8__622_ gnd vdd FILL
XFILL_2__443_ gnd vdd FILL
XFILL_6__529_ gnd vdd FILL
XFILL_6__282_ gnd vdd FILL
XFILL_7__316_ gnd vdd FILL
XFILL_1__465_ gnd vdd FILL
XFILL_8__431_ gnd vdd FILL
XFILL_5__396_ gnd vdd FILL
XFILL_3__614_ gnd vdd FILL
XFILL_6__338_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_4__401_ gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_7__545_ gnd vdd FILL
XFILL_0__487_ gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_1__274_ gnd vdd FILL
XFILL_2__308_ gnd vdd FILL
XFILL_2__481_ gnd vdd FILL
XFILL_3__423_ gnd vdd FILL
XFILL_7__354_ gnd vdd FILL
XFILL_0__296_ gnd vdd FILL
X_299_ selXY_bF$buf1 _65_ _66_ _272_[8] vdd gnd OAI21X1
XFILL_2__537_ gnd vdd FILL
XFILL_9__503_ gnd vdd FILL
XFILL_2__290_ gnd vdd FILL
XFILL_6__376_ gnd vdd FILL
X_511_ Yin12b[8] Yin12b[9] ISreg_bF$buf4 _244_ vdd gnd OAI21X1
XFILL_8__525_ gnd vdd FILL
XFILL_2__346_ gnd vdd FILL
XFILL_9__312_ gnd vdd FILL
XFILL_8_CLKBUF1_insert0 gnd vdd FILL
XFILL_8_CLKBUF1_insert1 gnd vdd FILL
XFILL_8_CLKBUF1_insert2 gnd vdd FILL
XFILL_8_CLKBUF1_insert3 gnd vdd FILL
XFILL_8_CLKBUF1_insert4 gnd vdd FILL
XFILL_8_CLKBUF1_insert5 gnd vdd FILL
XFILL_8_CLKBUF1_insert6 gnd vdd FILL
XFILL_3__461_ gnd vdd FILL
X_320_ Yin12b[5] _82_ vdd gnd INVX1
XBUFX2_insert20 LoadCtl[6] LoadCtl_6_bF$buf0 vdd gnd BUFX2
XBUFX2_insert21 _96_ _96__bF$buf4 vdd gnd BUFX2
XBUFX2_insert22 _96_ _96__bF$buf3 vdd gnd BUFX2
XBUFX2_insert23 _96_ _96__bF$buf2 vdd gnd BUFX2
XBUFX2_insert24 _96_ _96__bF$buf1 vdd gnd BUFX2
XBUFX2_insert25 _96_ _96__bF$buf0 vdd gnd BUFX2
XFILL_7__392_ gnd vdd FILL
XFILL_1__368_ gnd vdd FILL
XFILL_8__334_ gnd vdd FILL
XFILL75150x72150 gnd vdd FILL
XFILL_9__541_ gnd vdd FILL
XFILL_5__299_ gnd vdd FILL
XFILL_3__517_ gnd vdd FILL
XFILL75150x39750 gnd vdd FILL
XFILL_4__304_ gnd vdd FILL
XFILL_7__448_ gnd vdd FILL
XFILL_5__511_ gnd vdd FILL
XFILL_2__384_ gnd vdd FILL
XFILL_9__350_ gnd vdd FILL
XFILL_3__326_ gnd vdd FILL
X_605_ _7_ clk_bF$buf3 Yin0[1] vdd gnd DFFPOSX1
XFILL_4__533_ gnd vdd FILL
XFILL_8__619_ gnd vdd FILL
XFILL_5__320_ gnd vdd FILL
XFILL_8__372_ gnd vdd FILL
XFILL_9__406_ gnd vdd FILL
XFILL_0__411_ gnd vdd FILL
XFILL_3__555_ gnd vdd FILL
XFILL_6__279_ gnd vdd FILL
X_414_ _159_ _119_ _158_ _160_ vdd gnd NAND3X1
XFILL_4__342_ gnd vdd FILL
XFILL_7__486_ gnd vdd FILL
XFILL_8__428_ gnd vdd FILL
XFILL_3__364_ gnd vdd FILL
XFILL_7__295_ gnd vdd FILL
XFILL_6__300_ gnd vdd FILL
XFILL_2__478_ gnd vdd FILL
XFILL_9__444_ gnd vdd FILL
X_452_ _55_ LoadCtl_6_bF$buf4 _192_ _24_ vdd gnd OAI21X1
XFILL_4__380_ gnd vdd FILL
XFILL_5__414_ gnd vdd FILL
XFILL_8__466_ gnd vdd FILL
XFILL_2__287_ gnd vdd FILL
XFILL_0__505_ gnd vdd FILL
X_508_ _240_ _241_ vdd gnd INVX1
XFILL_4__436_ gnd vdd FILL
XFILL_8__275_ gnd vdd FILL
XFILL_9__309_ gnd vdd FILL
XFILL_0__314_ gnd vdd FILL
XFILL_9__482_ gnd vdd FILL
XFILL_3__458_ gnd vdd FILL
X_317_ _74_ _79_ _80_ vdd gnd NOR2X1
XFILL_1__521_ gnd vdd FILL
XFILL_7__389_ gnd vdd FILL
X_490_ _93_ _216_ _219_ _225_ vdd gnd OAI21X1
XFILL_5__452_ gnd vdd FILL
XFILL_9__538_ gnd vdd FILL
XFILL_0__543_ gnd vdd FILL
XFILL_9__291_ gnd vdd FILL
X_546_ LoadCtl[0] _99_ _266_ _44_ vdd gnd OAI21X1
XFILL_1__330_ gnd vdd FILL
XFILL_4__474_ gnd vdd FILL
XFILL_5__508_ gnd vdd FILL
XFILL_6__623_ gnd vdd FILL
XFILL_9__347_ gnd vdd FILL
XFILL_7__410_ gnd vdd FILL
XFILL_0__352_ gnd vdd FILL
XFILL_3__496_ gnd vdd FILL
X_355_ Xcalc[2] _96__bF$buf2 _109_ vdd gnd NAND2X1
XFILL_4__283_ gnd vdd FILL
XFILL_5__317_ gnd vdd FILL
XFILL_8__369_ gnd vdd FILL
XFILL_5__490_ gnd vdd FILL
XFILL_6__432_ gnd vdd FILL
XFILL_0__408_ gnd vdd FILL
XFILL_1__615_ gnd vdd FILL
XFILL_4__339_ gnd vdd FILL
X_584_ _35_ clk_bF$buf5 Xin12b[8] vdd gnd DFFPOSX1
XFILL_2__402_ gnd vdd FILL
XFILL_5__546_ gnd vdd FILL
XFILL_0__390_ gnd vdd FILL
XFILL_1__424_ gnd vdd FILL
X_393_ _140_ _141_ _133_ _142_ vdd gnd NAND3X1
XFILL_5__355_ gnd vdd FILL
XFILL_6__470_ gnd vdd FILL
XFILL_7__504_ gnd vdd FILL
XFILL_0__446_ gnd vdd FILL
X_449_ Yin1[1] _189_ _190_ vdd gnd NAND2X1
XFILL_4__377_ gnd vdd FILL
XFILL_2__440_ gnd vdd FILL
XFILL_6__526_ gnd vdd FILL
XFILL_7__313_ gnd vdd FILL
XFILL_3__399_ gnd vdd FILL
XFILL_1__462_ gnd vdd FILL
XFILL_5__393_ gnd vdd FILL
XFILL_6__335_ gnd vdd FILL
XFILL_7__542_ gnd vdd FILL
XFILL_0__484_ gnd vdd FILL
XFILL_1__518_ gnd vdd FILL
X_487_ Ycalc[8] _96__bF$buf0 _223_ vdd gnd NAND2X1
XFILL_2__305_ gnd vdd FILL
XFILL_5__449_ gnd vdd FILL
XFILL_3__420_ gnd vdd FILL
XFILL_7__351_ gnd vdd FILL
XFILL_0__293_ gnd vdd FILL
XFILL_1__327_ gnd vdd FILL
X_296_ selXY_bF$buf1 _63_ _64_ _272_[7] vdd gnd OAI21X1
XFILL_2__534_ gnd vdd FILL
XFILL_9__500_ gnd vdd FILL
XFILL_6__373_ gnd vdd FILL
XFILL74850x25350 gnd vdd FILL
XFILL_7__407_ gnd vdd FILL
XFILL_0__349_ gnd vdd FILL
XFILL_1__556_ gnd vdd FILL
XFILL_8__522_ gnd vdd FILL
XFILL_2__343_ gnd vdd FILL
XFILL_5__487_ gnd vdd FILL
XFILL_6__429_ gnd vdd FILL
XFILL_1__365_ gnd vdd FILL
XFILL_8__331_ gnd vdd FILL
XFILL_5__296_ gnd vdd FILL
XFILL_3__514_ gnd vdd FILL
XFILL_4__301_ gnd vdd FILL
XFILL_7__445_ gnd vdd FILL
XFILL_0__387_ gnd vdd FILL
XFILL_2__381_ gnd vdd FILL
XFILL_3__323_ gnd vdd FILL
XFILL_6__467_ gnd vdd FILL
X_602_ _4_ clk_bF$buf5 Yin1[0] vdd gnd DFFPOSX1
XFILL_4__530_ gnd vdd FILL
XFILL_8__616_ gnd vdd FILL
XFILL_2__437_ gnd vdd FILL
XFILL_9__403_ gnd vdd FILL
XFILL73650x57750 gnd vdd FILL
XFILL_3__552_ gnd vdd FILL
XFILL_6__276_ gnd vdd FILL
X_411_ Xcalc[10] _157_ vdd gnd INVX1
XFILL_7__483_ gnd vdd FILL
XFILL_1__459_ gnd vdd FILL
XFILL_8__425_ gnd vdd FILL
XFILL_3__361_ gnd vdd FILL
XFILL_7__539_ gnd vdd FILL
XFILL_7__292_ gnd vdd FILL
XFILL_2__475_ gnd vdd FILL
XFILL_9__441_ gnd vdd FILL
XFILL_3__417_ gnd vdd FILL
XFILL_4__624_ gnd vdd FILL
XFILL_7__348_ gnd vdd FILL
XFILL_5__411_ gnd vdd FILL
XFILL_1__497_ gnd vdd FILL
XFILL_8__463_ gnd vdd FILL
XFILL_2__284_ gnd vdd FILL
XFILL_0__502_ gnd vdd FILL
X_505_ selSign _237_ _238_ vdd gnd NAND2X1
XFILL_4__433_ gnd vdd FILL
XFILL_8__519_ gnd vdd FILL
XFILL73950x10950 gnd vdd FILL
XFILL75150x25350 gnd vdd FILL
XFILL_9__306_ gnd vdd FILL
XFILL_0__311_ gnd vdd FILL
XFILL_3__455_ gnd vdd FILL
X_314_ _73_ _76_ _77_ _1_ vdd gnd OAI21X1
XFILL_7__386_ gnd vdd FILL
XFILL_8__328_ gnd vdd FILL
XFILL_9__535_ gnd vdd FILL
XFILL_0__540_ gnd vdd FILL
X_543_ LoadCtl[0] Xin[0] _265_ vdd gnd NAND2X1
XFILL_4__471_ gnd vdd FILL
XFILL_5__505_ gnd vdd FILL
XFILL_6__620_ gnd vdd FILL
XFILL_2__378_ gnd vdd FILL
XFILL_3__493_ gnd vdd FILL
XFILL_4__527_ gnd vdd FILL
X_352_ Xin0[0] Xin0[1] _106_ vdd gnd NOR2X1
XFILL_4__280_ gnd vdd FILL
XFILL_5__314_ gnd vdd FILL
XFILL_8__366_ gnd vdd FILL
XFILL_0__405_ gnd vdd FILL
XFILL_3__549_ gnd vdd FILL
X_408_ _154_ _153_ _155_ vdd gnd OR2X2
XFILL_4__336_ gnd vdd FILL
X_581_ _32_ clk_bF$buf6 Ycalc[11] vdd gnd DFFPOSX1
XFILL_5__543_ gnd vdd FILL
XFILL_3__358_ gnd vdd FILL
XFILL_1__421_ gnd vdd FILL
XFILL_7__289_ gnd vdd FILL
X_390_ ISreg_bF$buf0 Xin12b[7] _138_ _139_ vdd gnd NAND3X1
XFILL_5__352_ gnd vdd FILL
XFILL_7__501_ gnd vdd FILL
XFILL_0__443_ gnd vdd FILL
X_446_ LoadCtl_6_bF$buf0 _187_ _185_ _188_ vdd gnd NAND3X1
XFILL_4__374_ gnd vdd FILL
XFILL_5__408_ gnd vdd FILL
XFILL_6__523_ gnd vdd FILL
XFILL_7__310_ gnd vdd FILL
XFILL_3__396_ gnd vdd FILL
XFILL_5__390_ gnd vdd FILL
XFILL_6__332_ gnd vdd FILL
XFILL_0__308_ gnd vdd FILL
XFILL_0__481_ gnd vdd FILL
XFILL_1__515_ gnd vdd FILL
X_484_ _219_ _216_ _220_ vdd gnd OR2X2
XFILL_2__302_ gnd vdd FILL
XFILL_5__446_ gnd vdd FILL
XFILL_8__498_ gnd vdd FILL
XFILL_0__537_ gnd vdd FILL
XFILL_9__285_ gnd vdd FILL
XFILL_0__290_ gnd vdd FILL
XFILL_1__324_ gnd vdd FILL
XFILL_4__468_ gnd vdd FILL
X_293_ selXY_bF$buf2 _61_ _62_ _272_[6] vdd gnd OAI21X1
XFILL_2__531_ gnd vdd FILL
XFILL_6__617_ gnd vdd FILL
XFILL_6__370_ gnd vdd FILL
XFILL_7__404_ gnd vdd FILL
XFILL_0__346_ gnd vdd FILL
X_349_ Xin1[0] _103_ vdd gnd INVX1
XFILL_1__553_ gnd vdd FILL
XFILL_4__277_ gnd vdd FILL
XFILL_2__340_ gnd vdd FILL
XFILL_5__484_ gnd vdd FILL
XFILL_6__426_ gnd vdd FILL
XFILL_3__299_ gnd vdd FILL
X_578_ _29_ clk_bF$buf6 Ycalc[8] vdd gnd DFFPOSX1
XFILL_1__362_ gnd vdd FILL
XFILL_5__293_ gnd vdd FILL
XFILL_3__511_ gnd vdd FILL
XFILL_9__379_ gnd vdd FILL
XFILL_7__442_ gnd vdd FILL
XFILL_0__384_ gnd vdd FILL
XFILL_1__418_ gnd vdd FILL
X_387_ _96__bF$buf3 _135_ _136_ _15_ vdd gnd OAI21X1
XFILL_2__625_ gnd vdd FILL
XFILL_5__349_ gnd vdd FILL
XFILL_3__320_ gnd vdd FILL
XFILL_6__464_ gnd vdd FILL
XFILL_8__613_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_2__434_ gnd vdd FILL
XFILL_6__273_ gnd vdd FILL
XFILL_7__307_ gnd vdd FILL
XFILL_7__480_ gnd vdd FILL
XFILL_1__456_ gnd vdd FILL
XFILL_8__422_ gnd vdd FILL
XFILL_6_CLKBUF1_insert0 gnd vdd FILL
XFILL_6_CLKBUF1_insert1 gnd vdd FILL
XFILL_6_CLKBUF1_insert2 gnd vdd FILL
XFILL_6_CLKBUF1_insert3 gnd vdd FILL
XFILL_6_CLKBUF1_insert4 gnd vdd FILL
XFILL_6_CLKBUF1_insert5 gnd vdd FILL
XFILL_6_CLKBUF1_insert6 gnd vdd FILL
XFILL_5__387_ gnd vdd FILL
XFILL_6__329_ gnd vdd FILL
XFILL_7__536_ gnd vdd FILL
XFILL_0__478_ gnd vdd FILL
XFILL_2__472_ gnd vdd FILL
XFILL_3__414_ gnd vdd FILL
XFILL_4__621_ gnd vdd FILL
XFILL_7__345_ gnd vdd FILL
XFILL_0__287_ gnd vdd FILL
XFILL_1__494_ gnd vdd FILL
XFILL_8__460_ gnd vdd FILL
XFILL_2__528_ gnd vdd FILL
XFILL_2__281_ gnd vdd FILL
XFILL_6__367_ gnd vdd FILL
X_502_ _69_ LoadCtl_6_bF$buf2 _235_ _31_ vdd gnd OAI21X1
XFILL_4__430_ gnd vdd FILL
XFILL_8__516_ gnd vdd FILL
XFILL_2__337_ gnd vdd FILL
XFILL_3__452_ gnd vdd FILL
X_311_ LoadCtl[0] LoadCtl[1] _75_ vdd gnd NOR2X1
XFILL75150x46950 gnd vdd FILL
XFILL_7__383_ gnd vdd FILL
XFILL_1__359_ gnd vdd FILL
XFILL_8__325_ gnd vdd FILL
XFILL_3__508_ gnd vdd FILL
XFILL_6_BUFX2_insert20 gnd vdd FILL
XFILL_6_BUFX2_insert21 gnd vdd FILL
XFILL_6_BUFX2_insert22 gnd vdd FILL
XFILL_6_BUFX2_insert23 gnd vdd FILL
XFILL_6_BUFX2_insert24 gnd vdd FILL
XFILL_6_BUFX2_insert25 gnd vdd FILL
XFILL_7__439_ gnd vdd FILL
X_540_ _254_ _86_ _263_ _41_ vdd gnd OAI21X1
XFILL_5__502_ gnd vdd FILL
XFILL_8__554_ gnd vdd FILL
XFILL_2__375_ gnd vdd FILL
XFILL_9__341_ gnd vdd FILL
XFILL_3__317_ gnd vdd FILL
XFILL_3__490_ gnd vdd FILL
XFILL_4__524_ gnd vdd FILL
XFILL_5__311_ gnd vdd FILL
XFILL_1__397_ gnd vdd FILL
XFILL_8__363_ gnd vdd FILL
XFILL_0__402_ gnd vdd FILL
XFILL_3__546_ gnd vdd FILL
X_405_ Xcalc[9] _152_ vdd gnd INVX1
XFILL_4__333_ gnd vdd FILL
XFILL_7__477_ gnd vdd FILL
XFILL_8__419_ gnd vdd FILL
XFILL_5__540_ gnd vdd FILL
XFILL_3__355_ gnd vdd FILL
XFILL_6__499_ gnd vdd FILL
XFILL_7__286_ gnd vdd FILL
XFILL_2__469_ gnd vdd FILL
XFILL_9__435_ gnd vdd FILL
XFILL_0__440_ gnd vdd FILL
XFILL_4__618_ gnd vdd FILL
X_443_ _184_ _183_ _185_ vdd gnd OR2X2
XFILL_4__371_ gnd vdd FILL
XFILL_5__405_ gnd vdd FILL
XFILL_8__457_ gnd vdd FILL
XFILL_6__520_ gnd vdd FILL
XFILL_2__278_ gnd vdd FILL
XFILL_3__393_ gnd vdd FILL
XFILL_4__427_ gnd vdd FILL
XFILL_0__305_ gnd vdd FILL
XFILL_9__473_ gnd vdd FILL
XFILL_3__449_ gnd vdd FILL
X_308_ selXY_bF$buf2 _71_ _72_ _272_[11] vdd gnd OAI21X1
XFILL_1__512_ gnd vdd FILL
X_481_ Yin12b[6] Yin12b[7] _217_ vdd gnd NOR2X1
XFILL_5__443_ gnd vdd FILL
XFILL_8__495_ gnd vdd FILL
XFILL_9__529_ gnd vdd FILL
XFILL_0__534_ gnd vdd FILL
XFILL_9__282_ gnd vdd FILL
X_537_ Xin[1] _80_ _262_ vdd gnd NAND2X1
XFILL75450x54150 gnd vdd FILL
XFILL_1__321_ gnd vdd FILL
XFILL_4__465_ gnd vdd FILL
X_290_ selXY_bF$buf2 _59_ _60_ _272_[5] vdd gnd OAI21X1
XFILL_6__614_ gnd vdd FILL
XFILL_9__338_ gnd vdd FILL
XFILL_7__401_ gnd vdd FILL
XFILL_0__343_ gnd vdd FILL
XFILL_3__487_ gnd vdd FILL
X_346_ _98_ _100_ _101_ vdd gnd NAND2X1
XFILL_1__550_ gnd vdd FILL
XFILL_4__274_ gnd vdd FILL
XFILL_5__308_ gnd vdd FILL
XFILL_5__481_ gnd vdd FILL
XFILL_6__423_ gnd vdd FILL
XFILL_3__296_ gnd vdd FILL
X_575_ _26_ clk_bF$buf6 Ycalc[5] vdd gnd DFFPOSX1
XFILL_5__537_ gnd vdd FILL
XFILL_5__290_ gnd vdd FILL
XFILL_9__376_ gnd vdd FILL
XFILL_0__381_ gnd vdd FILL
XFILL_1__415_ gnd vdd FILL
X_384_ _132_ _133_ _134_ vdd gnd NAND2X1
XFILL_2__622_ gnd vdd FILL
XFILL_5__346_ gnd vdd FILL
XFILL_8__398_ gnd vdd FILL
XFILL_6__461_ gnd vdd FILL
XFILL_0__437_ gnd vdd FILL
XFILL_4__368_ gnd vdd FILL
XFILL_2__431_ gnd vdd FILL
XFILL_6__517_ gnd vdd FILL
XFILL_7__304_ gnd vdd FILL
XFILL_1__453_ gnd vdd FILL
XFILL_5__384_ gnd vdd FILL
XFILL_6__326_ gnd vdd FILL
XFILL_7__533_ gnd vdd FILL
XFILL_0__475_ gnd vdd FILL
XFILL_1__509_ gnd vdd FILL
X_478_ LoadCtl_6_bF$buf1 _211_ _214_ _215_ vdd gnd NAND3X1
XFILL_3__411_ gnd vdd FILL
XFILL_6__555_ gnd vdd FILL
XFILL_9__279_ gnd vdd FILL
XFILL_7__342_ gnd vdd FILL
XFILL_0__284_ gnd vdd FILL
XFILL_1__318_ gnd vdd FILL
X_287_ selXY_bF$buf0 _57_ _58_ _272_[4] vdd gnd OAI21X1
XFILL_1__491_ gnd vdd FILL
XFILL_2__525_ gnd vdd FILL
XFILL_6__364_ gnd vdd FILL
XFILL_1__547_ gnd vdd FILL
XFILL_8__513_ gnd vdd FILL
XFILL_2__334_ gnd vdd FILL
XFILL_9__300_ gnd vdd FILL
XFILL_5__478_ gnd vdd FILL
XFILL_7__380_ gnd vdd FILL
XFILL_1__356_ gnd vdd FILL
XFILL_8__322_ gnd vdd FILL
XFILL_5__287_ gnd vdd FILL
XFILL_3__505_ gnd vdd FILL
XFILL_7__436_ gnd vdd FILL
XFILL_0__378_ gnd vdd FILL
XFILL_8__551_ gnd vdd FILL
XFILL_2__619_ gnd vdd FILL
XFILL_2__372_ gnd vdd FILL
XFILL_3__314_ gnd vdd FILL
XFILL_6__458_ gnd vdd FILL
XFILL_4__521_ gnd vdd FILL
XFILL_1__394_ gnd vdd FILL
XFILL_8__360_ gnd vdd FILL
XFILL_2__428_ gnd vdd FILL
XFILL_3__543_ gnd vdd FILL
X_402_ _149_ _148_ _150_ vdd gnd NAND2X1
XFILL_4__330_ gnd vdd FILL
XFILL_7__474_ gnd vdd FILL
XFILL_8__416_ gnd vdd FILL
XFILL_9__623_ gnd vdd FILL
XFILL_3__352_ gnd vdd FILL
XFILL_6__496_ gnd vdd FILL
XFILL_7__283_ gnd vdd FILL
XFILL_2__466_ gnd vdd FILL
XFILL_9__432_ gnd vdd FILL
XFILL_3__408_ gnd vdd FILL
XFILL_4__615_ gnd vdd FILL
XFILL_7__339_ gnd vdd FILL
X_440_ _51_ LoadCtl_6_bF$buf4 _182_ _22_ vdd gnd OAI21X1
XFILL_5__402_ gnd vdd FILL
XFILL_1__488_ gnd vdd FILL
XFILL_8__454_ gnd vdd FILL
XFILL_2__275_ gnd vdd FILL
XFILL_3__390_ gnd vdd FILL
XFILL_4__424_ gnd vdd FILL
XFILL_1__297_ gnd vdd FILL
XFILL_0__302_ gnd vdd FILL
XFILL_9__470_ gnd vdd FILL
XFILL_3__446_ gnd vdd FILL
X_305_ selXY_bF$buf1 _69_ _70_ _272_[10] vdd gnd OAI21X1
XFILL_7__377_ gnd vdd FILL
XFILL_8__319_ gnd vdd FILL
XFILL_5__440_ gnd vdd FILL
XFILL_8__492_ gnd vdd FILL
XFILL_9__526_ gnd vdd FILL
XFILL_0__531_ gnd vdd FILL
XFILL_6__399_ gnd vdd FILL
X_534_ _257_ _76_ _260_ _38_ vdd gnd OAI21X1
XFILL_4__462_ gnd vdd FILL
XFILL_8__548_ gnd vdd FILL
XFILL_2__369_ gnd vdd FILL
XFILL_9__335_ gnd vdd FILL
XFILL_0__340_ gnd vdd FILL
XFILL_3__484_ gnd vdd FILL
XFILL_4__518_ gnd vdd FILL
X_343_ ISreg_bF$buf1 Xin0[0] Xin0[1] _98_ vdd gnd NAND3X1
XFILL_5__305_ gnd vdd FILL
XFILL_8__357_ gnd vdd FILL
XFILL74250x57750 gnd vdd FILL
XFILL_6__420_ gnd vdd FILL
XFILL_3__293_ gnd vdd FILL
XFILL_4__327_ gnd vdd FILL
X_572_ _23_ clk_bF$buf0 Ycalc[2] vdd gnd DFFPOSX1
XFILL73950x72150 gnd vdd FILL
XFILL_5__534_ gnd vdd FILL
XFILL_0__625_ gnd vdd FILL
XFILL_9__373_ gnd vdd FILL
XFILL_3__349_ gnd vdd FILL
XFILL_1__412_ gnd vdd FILL
XFILL_4__556_ gnd vdd FILL
X_381_ ISreg_bF$buf0 Xin12b[6] _130_ _131_ vdd gnd NAND3X1
XFILL_5__343_ gnd vdd FILL
XFILL_8__395_ gnd vdd FILL
XFILL_9__429_ gnd vdd FILL
XFILL_0__434_ gnd vdd FILL
X_437_ Yin0[0] Yin0[1] ISreg_bF$buf2 _180_ vdd gnd NAND3X1
XFILL_4__365_ gnd vdd FILL
XFILL_6__514_ gnd vdd FILL
XFILL74550x10950 gnd vdd FILL
XFILL_7__301_ gnd vdd FILL
XFILL_3__387_ gnd vdd FILL
XFILL_1__450_ gnd vdd FILL
XFILL_5__381_ gnd vdd FILL
XFILL_6__323_ gnd vdd FILL
XFILL_9__467_ gnd vdd FILL
XFILL_7__530_ gnd vdd FILL
XFILL_0__472_ gnd vdd FILL
XFILL_1__506_ gnd vdd FILL
X_475_ Yin12b[7] _212_ vdd gnd INVX1
XFILL_5__437_ gnd vdd FILL
XFILL_8__489_ gnd vdd FILL
XFILL_6__552_ gnd vdd FILL
XFILL_0__528_ gnd vdd FILL
XFILL_9__276_ gnd vdd FILL
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
XFILL_0__281_ gnd vdd FILL
XFILL_1__315_ gnd vdd FILL
XFILL_4__459_ gnd vdd FILL
X_284_ selXY_bF$buf0 _55_ _56_ _272_[3] vdd gnd OAI21X1
XFILL_2__522_ gnd vdd FILL
XFILL_8__298_ gnd vdd FILL
XFILL_6__361_ gnd vdd FILL
XFILL_0__337_ gnd vdd FILL
XFILL_1__544_ gnd vdd FILL
XFILL_8__510_ gnd vdd FILL
XFILL_2__331_ gnd vdd FILL
XFILL_5__475_ gnd vdd FILL
XFILL_6__417_ gnd vdd FILL
XFILL_7__624_ gnd vdd FILL
X_569_ _20_ clk_bF$buf2 Xcalc[11] vdd gnd DFFPOSX1
XFILL_1__353_ gnd vdd FILL
XFILL_4__497_ gnd vdd FILL
XFILL_4_CLKBUF1_insert0 gnd vdd FILL
XFILL_4_CLKBUF1_insert1 gnd vdd FILL
XFILL_4_CLKBUF1_insert2 gnd vdd FILL
XFILL_4_CLKBUF1_insert3 gnd vdd FILL
XFILL_4_CLKBUF1_insert4 gnd vdd FILL
XFILL_4_CLKBUF1_insert5 gnd vdd FILL
XFILL_4_CLKBUF1_insert6 gnd vdd FILL
XFILL_5__284_ gnd vdd FILL
XFILL_3__502_ gnd vdd FILL
XFILL_7__433_ gnd vdd FILL
XFILL_0__375_ gnd vdd FILL
XFILL_1__409_ gnd vdd FILL
X_378_ _96__bF$buf2 _127_ _128_ _14_ vdd gnd OAI21X1
XFILL_2__616_ gnd vdd FILL
XFILL_3__311_ gnd vdd FILL
XFILL_6__455_ gnd vdd FILL
XFILL_1__391_ gnd vdd FILL
XFILL_2__425_ gnd vdd FILL
XFILL_3__540_ gnd vdd FILL
XFILL_7__471_ gnd vdd FILL
XFILL_1__447_ gnd vdd FILL
XFILL_8__413_ gnd vdd FILL
XFILL_9__620_ gnd vdd FILL
XFILL_5__378_ gnd vdd FILL
XFILL_6__493_ gnd vdd FILL
XFILL_7__527_ gnd vdd FILL
XFILL_0__469_ gnd vdd FILL
XFILL_7__280_ gnd vdd FILL
XFILL_2__463_ gnd vdd FILL
XFILL_3__405_ gnd vdd FILL
XFILL_6__549_ gnd vdd FILL
XFILL_7__336_ gnd vdd FILL
XFILL_0__278_ gnd vdd FILL
XFILL_1__485_ gnd vdd FILL
XFILL_8__451_ gnd vdd FILL
XFILL_2__519_ gnd vdd FILL
XFILL_6__358_ gnd vdd FILL
XFILL_4__421_ gnd vdd FILL
XFILL_8__507_ gnd vdd FILL
XFILL_1__294_ gnd vdd FILL
XFILL_2__328_ gnd vdd FILL
XFILL_3__443_ gnd vdd FILL
X_302_ selXY_bF$buf1 _67_ _68_ _272_[9] vdd gnd OAI21X1
XFILL_7__374_ gnd vdd FILL
XFILL_8__316_ gnd vdd FILL
XFILL_9__523_ gnd vdd FILL
XFILL_6__396_ gnd vdd FILL
X_531_ Xin12b[6] _76_ _259_ vdd gnd NAND2X1
XFILL_8__545_ gnd vdd FILL
XFILL_2__366_ gnd vdd FILL
XFILL_9__332_ gnd vdd FILL
XFILL_3__308_ gnd vdd FILL
XFILL_3__481_ gnd vdd FILL
XFILL_4__515_ gnd vdd FILL
X_340_ LoadCtl_6_bF$buf4 _96_ vdd gnd INVX8
XFILL_5__302_ gnd vdd FILL
XFILL_1__388_ gnd vdd FILL
XFILL_8__354_ gnd vdd FILL
XFILL_3__537_ gnd vdd FILL
XFILL_3__290_ gnd vdd FILL
XFILL_4__324_ gnd vdd FILL
XFILL_7__468_ gnd vdd FILL
XFILL_5__531_ gnd vdd FILL
XFILL_9__617_ gnd vdd FILL
XFILL_0__622_ gnd vdd FILL
XFILL_3__346_ gnd vdd FILL
X_625_ LoadCtl_6_bF$buf2 Vld vdd gnd BUFX2
XFILL_4__553_ gnd vdd FILL
XFILL_7__277_ gnd vdd FILL
XFILL_5__340_ gnd vdd FILL
XFILL_8__392_ gnd vdd FILL
XFILL_9__426_ gnd vdd FILL
XFILL_0__431_ gnd vdd FILL
XFILL_6__299_ gnd vdd FILL
X_434_ _166_ _178_ _20_ vdd gnd NAND2X1
XFILL_4__362_ gnd vdd FILL
XFILL_8__448_ gnd vdd FILL
XFILL_6__511_ gnd vdd FILL
XFILL_3__384_ gnd vdd FILL
XFILL_4__418_ gnd vdd FILL
XFILL_5__625_ gnd vdd FILL
XFILL_6__320_ gnd vdd FILL
XFILL_2__498_ gnd vdd FILL
XFILL_1__503_ gnd vdd FILL
X_472_ _61_ LoadCtl_6_bF$buf1 _209_ _27_ vdd gnd OAI21X1
XFILL_5__434_ gnd vdd FILL
XFILL_8__486_ gnd vdd FILL
XFILL75450x61350 gnd vdd FILL
XFILL75450x28950 gnd vdd FILL
XFILL_0__525_ gnd vdd FILL
X_528_ Xin[1] _257_ vdd gnd INVX1
XFILL_1__312_ gnd vdd FILL
XFILL_4__456_ gnd vdd FILL
X_281_ selXY_bF$buf3 _53_ _54_ _272_[2] vdd gnd OAI21X1
XFILL_8__295_ gnd vdd FILL
XFILL_0__334_ gnd vdd FILL
XFILL_3__478_ gnd vdd FILL
X_337_ ISin LoadCtl_6_bF$buf1 _94_ vdd gnd NAND2X1
XFILL_1__541_ gnd vdd FILL
XFILL_5__472_ gnd vdd FILL
XFILL_6__414_ gnd vdd FILL
XFILL_7__621_ gnd vdd FILL
XFILL_3__287_ gnd vdd FILL
X_566_ _17_ clk_bF$buf6 Xcalc[8] vdd gnd DFFPOSX1
XFILL_1__350_ gnd vdd FILL
XFILL_4__494_ gnd vdd FILL
XFILL_5__528_ gnd vdd FILL
XFILL_5__281_ gnd vdd FILL
XFILL_0__619_ gnd vdd FILL
XFILL_7__430_ gnd vdd FILL
XFILL_0__372_ gnd vdd FILL
XFILL_1__406_ gnd vdd FILL
X_375_ _123_ _124_ _126_ vdd gnd NAND2X1
XFILL_2__613_ gnd vdd FILL
XFILL_5__337_ gnd vdd FILL
XFILL_8__389_ gnd vdd FILL
XFILL_6__452_ gnd vdd FILL
XFILL_0__428_ gnd vdd FILL
XFILL_4__359_ gnd vdd FILL
XFILL_2__422_ gnd vdd FILL
XFILL_6__508_ gnd vdd FILL
XFILL_1__444_ gnd vdd FILL
XFILL_8__410_ gnd vdd FILL
XFILL_5__375_ gnd vdd FILL
XFILL_6__317_ gnd vdd FILL
XFILL_6__490_ gnd vdd FILL
XFILL_7__524_ gnd vdd FILL
XFILL_0__466_ gnd vdd FILL
X_469_ ISreg_bF$buf4 _204_ _207_ vdd gnd NAND2X1
XFILL_4__397_ gnd vdd FILL
XFILL_2__460_ gnd vdd FILL
XFILL_3__402_ gnd vdd FILL
XFILL_6__546_ gnd vdd FILL
XFILL_7__333_ gnd vdd FILL
XFILL_0__275_ gnd vdd FILL
XFILL_1__309_ gnd vdd FILL
X_278_ selXY_bF$buf3 _51_ _52_ _272_[1] vdd gnd OAI21X1
XFILL_1__482_ gnd vdd FILL
XFILL_2__516_ gnd vdd FILL
XFILL75750x36150 gnd vdd FILL
XFILL_6__355_ gnd vdd FILL
XFILL_9__499_ gnd vdd FILL
XFILL_1__538_ gnd vdd FILL
XFILL_8__504_ gnd vdd FILL
XFILL_1__291_ gnd vdd FILL
XFILL_2__325_ gnd vdd FILL
XFILL_5__469_ gnd vdd FILL
XFILL_3__440_ gnd vdd FILL
XFILL_7__618_ gnd vdd FILL
XFILL_7__371_ gnd vdd FILL
XFILL_1__347_ gnd vdd FILL
XFILL_8__313_ gnd vdd FILL
XFILL_2__554_ gnd vdd FILL
XFILL_9__520_ gnd vdd FILL
XFILL_5__278_ gnd vdd FILL
XFILL_6__393_ gnd vdd FILL
XFILL_7__427_ gnd vdd FILL
XFILL_0__369_ gnd vdd FILL
XFILL_8__542_ gnd vdd FILL
XFILL_2__363_ gnd vdd FILL
XFILL_3__305_ gnd vdd FILL
XFILL_6__449_ gnd vdd FILL
XFILL_4__512_ gnd vdd FILL
XFILL_1__385_ gnd vdd FILL
XFILL_8__351_ gnd vdd FILL
XFILL_2__419_ gnd vdd FILL
XFILL_3__534_ gnd vdd FILL
XFILL_4__321_ gnd vdd FILL
XFILL_7__465_ gnd vdd FILL
XFILL_8__407_ gnd vdd FILL
XFILL_3__343_ gnd vdd FILL
XFILL_6__487_ gnd vdd FILL
X_622_ _272_[7] Dout[7] vdd gnd BUFX2
XFILL_4__550_ gnd vdd FILL
XFILL_7__274_ gnd vdd FILL
XFILL_2__457_ gnd vdd FILL
XFILL_6__296_ gnd vdd FILL
X_431_ _175_ _173_ _147_ _176_ vdd gnd NAND3X1
XFILL_1__479_ gnd vdd FILL
XFILL_8__445_ gnd vdd FILL
XFILL_3__381_ gnd vdd FILL
XFILL_4__415_ gnd vdd FILL
XFILL_5__622_ gnd vdd FILL
XFILL_1__288_ gnd vdd FILL
XFILL_2__495_ gnd vdd FILL
XFILL_3__437_ gnd vdd FILL
XFILL_1__500_ gnd vdd FILL
XFILL_7__368_ gnd vdd FILL
XFILL_5__431_ gnd vdd FILL
XFILL_8__483_ gnd vdd FILL
XFILL_0__522_ gnd vdd FILL
X_525_ LoadCtl[4] _249_ _255_ vdd gnd NAND2X1
XFILL_4__453_ gnd vdd FILL
XFILL_8__539_ gnd vdd FILL
XFILL_8__292_ gnd vdd FILL
XFILL_9__326_ gnd vdd FILL
XFILL_0__331_ gnd vdd FILL
XFILL_3__475_ gnd vdd FILL
XFILL_4__509_ gnd vdd FILL
X_334_ LoadCtl[0] Yin[1] _92_ vdd gnd NAND2X1
XFILL_8__348_ gnd vdd FILL
XFILL_6__411_ gnd vdd FILL
XFILL_9__555_ gnd vdd FILL
XFILL_3__284_ gnd vdd FILL
XFILL_4__318_ gnd vdd FILL
X_563_ _14_ clk_bF$buf0 Xcalc[5] vdd gnd DFFPOSX1
XFILL_4__491_ gnd vdd FILL
XFILL_5__525_ gnd vdd FILL
XFILL_2__398_ gnd vdd FILL
XFILL_0__616_ gnd vdd FILL
XFILL_9__364_ gnd vdd FILL
X_619_ _272_[4] Dout[4] vdd gnd BUFX2
XFILL_1__403_ gnd vdd FILL
XFILL_4__547_ gnd vdd FILL
X_372_ Xin12b[5] _123_ vdd gnd INVX1
XFILL_5__334_ gnd vdd FILL
XFILL_8__386_ gnd vdd FILL
XFILL_0__425_ gnd vdd FILL
X_428_ ISreg_bF$buf2 Xin12b[10] _173_ vdd gnd NAND2X1
XFILL_4__356_ gnd vdd FILL
XFILL_6__505_ gnd vdd FILL
XFILL_3__378_ gnd vdd FILL
XFILL_1__441_ gnd vdd FILL
XFILL_5__619_ gnd vdd FILL
XFILL_3_BUFX2_insert20 gnd vdd FILL
XFILL_3_BUFX2_insert21 gnd vdd FILL
XFILL_3_BUFX2_insert22 gnd vdd FILL
XFILL_3_BUFX2_insert23 gnd vdd FILL
XFILL_3_BUFX2_insert24 gnd vdd FILL
XFILL_3_BUFX2_insert25 gnd vdd FILL
XFILL_5__372_ gnd vdd FILL
XFILL_6__314_ gnd vdd FILL
XFILL_9__458_ gnd vdd FILL
XFILL_7__521_ gnd vdd FILL
XFILL_0__463_ gnd vdd FILL
X_466_ _203_ _197_ _204_ vdd gnd NAND2X1
XFILL_2_CLKBUF1_insert0 gnd vdd FILL
XFILL_2_CLKBUF1_insert1 gnd vdd FILL
XFILL_2_CLKBUF1_insert2 gnd vdd FILL
XFILL_2_CLKBUF1_insert3 gnd vdd FILL
XFILL_2_CLKBUF1_insert4 gnd vdd FILL
XFILL_2_CLKBUF1_insert5 gnd vdd FILL
XFILL_2_CLKBUF1_insert6 gnd vdd FILL
XFILL_4__394_ gnd vdd FILL
XFILL_5__428_ gnd vdd FILL
XFILL_6__543_ gnd vdd FILL
XFILL_0__519_ gnd vdd FILL
XFILL_7__330_ gnd vdd FILL
XFILL_1__306_ gnd vdd FILL
X_275_ selXY_bF$buf3 _49_ _50_ _272_[0] vdd gnd OAI21X1
XFILL_2__513_ gnd vdd FILL
XFILL_8__289_ gnd vdd FILL
XFILL_6__352_ gnd vdd FILL
XFILL_0__328_ gnd vdd FILL
XFILL_9__496_ gnd vdd FILL
XFILL_1__535_ gnd vdd FILL
XFILL_8__501_ gnd vdd FILL
XFILL75750x57750 gnd vdd FILL
XFILL_2__322_ gnd vdd FILL
XFILL_5__466_ gnd vdd FILL
XFILL_6__408_ gnd vdd FILL
XFILL_7__615_ gnd vdd FILL
XFILL74550x72150 gnd vdd FILL
XFILL74550x39750 gnd vdd FILL
XFILL_1__344_ gnd vdd FILL
XFILL_8__310_ gnd vdd FILL
XFILL_4__488_ gnd vdd FILL
XFILL_2__551_ gnd vdd FILL
XFILL_5__275_ gnd vdd FILL
XFILL_6__390_ gnd vdd FILL
XFILL_7__424_ gnd vdd FILL
XFILL_0__366_ gnd vdd FILL
XFILL73050x28950 gnd vdd FILL
X_369_ _117_ _120_ _121_ vdd gnd NAND2X1
XFILL_4__297_ gnd vdd FILL
XFILL_2__360_ gnd vdd FILL
XFILL_3__302_ gnd vdd FILL
XFILL_6__446_ gnd vdd FILL
XFILL_8_BUFX2_insert20 gnd vdd FILL
XFILL_8_BUFX2_insert21 gnd vdd FILL
XFILL_8_BUFX2_insert22 gnd vdd FILL
XFILL_8_BUFX2_insert23 gnd vdd FILL
XFILL_8_BUFX2_insert24 gnd vdd FILL
XFILL_8_BUFX2_insert25 gnd vdd FILL
X_598_ _0_ clk_bF$buf4 Yin12b[6] vdd gnd DFFPOSX1
XFILL_1__382_ gnd vdd FILL
XFILL_2__416_ gnd vdd FILL
XFILL_3__531_ gnd vdd FILL
XFILL_9__399_ gnd vdd FILL
XFILL_7__462_ gnd vdd FILL
XFILL_1__438_ gnd vdd FILL
XFILL_8__404_ gnd vdd FILL
XFILL_5__369_ gnd vdd FILL
XFILL_3__340_ gnd vdd FILL
XFILL_6__484_ gnd vdd FILL
XFILL_7__518_ gnd vdd FILL
XFILL_2__454_ gnd vdd FILL
XFILL_9__420_ gnd vdd FILL
XFILL_6__293_ gnd vdd FILL
XFILL_7__327_ gnd vdd FILL
XFILL_1__476_ gnd vdd FILL
XFILL_8__442_ gnd vdd FILL
XFILL_3__625_ gnd vdd FILL
XFILL_6__349_ gnd vdd FILL
XFILL_4__412_ gnd vdd FILL
XFILL_7__556_ gnd vdd FILL
XFILL_0__498_ gnd vdd FILL
XFILL_1__285_ gnd vdd FILL
XFILL_2__319_ gnd vdd FILL
XFILL_2__492_ gnd vdd FILL
XFILL_3__434_ gnd vdd FILL
XFILL_7__365_ gnd vdd FILL
XFILL_8__307_ gnd vdd FILL
XFILL_8__480_ gnd vdd FILL
XFILL_2__548_ gnd vdd FILL
XFILL_9__514_ gnd vdd FILL
XFILL_6__387_ gnd vdd FILL
X_522_ Xin[1] _251_ _253_ vdd gnd NAND2X1
XFILL_4__450_ gnd vdd FILL
XFILL_8__536_ gnd vdd FILL
XFILL_2__357_ gnd vdd FILL
XFILL_9__323_ gnd vdd FILL
XFILL_3__472_ gnd vdd FILL
XFILL_4__506_ gnd vdd FILL
X_331_ LoadCtl[0] Yin[0] _90_ vdd gnd NAND2X1
XFILL_1__379_ gnd vdd FILL
XFILL_8__345_ gnd vdd FILL
XFILL_9__552_ gnd vdd FILL
XFILL_3__528_ gnd vdd FILL
XFILL_3__281_ gnd vdd FILL
XFILL_4__315_ gnd vdd FILL
XFILL_7__459_ gnd vdd FILL
X_560_ _11_ clk_bF$buf0 Xcalc[2] vdd gnd DFFPOSX1
XFILL_5__522_ gnd vdd FILL
XFILL_2__395_ gnd vdd FILL
XFILL_0__613_ gnd vdd FILL
XFILL_9__361_ gnd vdd FILL
XFILL_3__337_ gnd vdd FILL
X_616_ _272_[11] Dout[11] vdd gnd BUFX2
XFILL_1__400_ gnd vdd FILL
XFILL_4__544_ gnd vdd FILL
XFILL_5__331_ gnd vdd FILL
XFILL_8__383_ gnd vdd FILL
XFILL_9__417_ gnd vdd FILL
XFILL_0__422_ gnd vdd FILL
X_425_ Xin12b[11] _169_ _170_ vdd gnd NAND2X1
XFILL_4__353_ gnd vdd FILL
XFILL_7__497_ gnd vdd FILL
XFILL_8__439_ gnd vdd FILL
XFILL_6__502_ gnd vdd FILL
XFILL_3__375_ gnd vdd FILL
XFILL_4__409_ gnd vdd FILL
XFILL_5__616_ gnd vdd FILL
XFILL_6__311_ gnd vdd FILL
XFILL_2__489_ gnd vdd FILL
XFILL_9__455_ gnd vdd FILL
XFILL_0__460_ gnd vdd FILL
X_463_ _200_ _82_ _96__bF$buf1 _202_ vdd gnd AOI21X1
XFILL_4__391_ gnd vdd FILL
XFILL_5__425_ gnd vdd FILL
XFILL_8__477_ gnd vdd FILL
XFILL_6__540_ gnd vdd FILL
XFILL_2__298_ gnd vdd FILL
XFILL_0__516_ gnd vdd FILL
X_519_ LoadCtl[4] _250_ _251_ vdd gnd NOR2X1
XFILL_1__303_ gnd vdd FILL
XFILL_4__447_ gnd vdd FILL
XFILL_2__510_ gnd vdd FILL
XFILL_8__286_ gnd vdd FILL
XFILL_0__325_ gnd vdd FILL
XFILL_9__493_ gnd vdd FILL
XFILL_3__469_ gnd vdd FILL
X_328_ LoadCtl[0] _85_ Yin1[1] _88_ vdd gnd OAI21X1
XFILL_1__532_ gnd vdd FILL
XFILL_5__463_ gnd vdd FILL
XFILL_6__405_ gnd vdd FILL
XFILL_9__549_ gnd vdd FILL
XFILL_0__554_ gnd vdd FILL
XFILL_3__278_ gnd vdd FILL
X_557_ _8_ clk_bF$buf4 ISreg vdd gnd DFFPOSX1
XFILL_1__341_ gnd vdd FILL
XFILL_4__485_ gnd vdd FILL
XFILL_5__519_ gnd vdd FILL
XFILL_9__358_ gnd vdd FILL
XFILL_7__421_ gnd vdd FILL
XFILL_0__363_ gnd vdd FILL
X_366_ Xin12b[4] _118_ vdd gnd INVX1
XFILL_4__294_ gnd vdd FILL
XFILL_5__328_ gnd vdd FILL
XFILL75750x7350 gnd vdd FILL
XFILL_6__443_ gnd vdd FILL
XFILL_0__419_ gnd vdd FILL
X_595_ _46_ clk_bF$buf2 Yin12b[11] vdd gnd DFFPOSX1
XFILL_2__413_ gnd vdd FILL
XFILL_9__396_ gnd vdd FILL
XFILL_1__435_ gnd vdd FILL
XFILL_8__401_ gnd vdd FILL
XFILL_5__366_ gnd vdd FILL
XFILL_6__308_ gnd vdd FILL
XFILL_6__481_ gnd vdd FILL
XFILL_7__515_ gnd vdd FILL
XFILL_0__457_ gnd vdd FILL
XFILL_4__388_ gnd vdd FILL
XFILL_2__451_ gnd vdd FILL
XFILL_6__537_ gnd vdd FILL
XFILL_6__290_ gnd vdd FILL
XFILL_7__324_ gnd vdd FILL
XFILL_1__473_ gnd vdd FILL
XFILL_2__507_ gnd vdd FILL
XFILL_3__622_ gnd vdd FILL
XFILL_6__346_ gnd vdd FILL
XFILL74550x25350 gnd vdd FILL
XFILL_7__553_ gnd vdd FILL
XFILL_0__495_ gnd vdd FILL
XFILL_1__529_ gnd vdd FILL
X_498_ Yin12b[10] _232_ vdd gnd INVX1
XFILL_1__282_ gnd vdd FILL
XFILL_2__316_ gnd vdd FILL
XFILL_3__431_ gnd vdd FILL
XFILL_7__362_ gnd vdd FILL
XFILL_1__338_ gnd vdd FILL
XFILL_8__304_ gnd vdd FILL
XFILL_2__545_ gnd vdd FILL
XFILL_9__511_ gnd vdd FILL
XFILL_6__384_ gnd vdd FILL
XFILL_7__418_ gnd vdd FILL
XFILL_8__533_ gnd vdd FILL
XFILL_2__354_ gnd vdd FILL
XFILL_9__320_ gnd vdd FILL
XFILL_5__498_ gnd vdd FILL
XFILL_4__503_ gnd vdd FILL
XFILL_1__376_ gnd vdd FILL
XFILL_8__342_ gnd vdd FILL
XFILL_3__525_ gnd vdd FILL
XFILL73350x57750 gnd vdd FILL
XFILL_4__312_ gnd vdd FILL
XFILL_7__456_ gnd vdd FILL
XFILL_0__398_ gnd vdd FILL
XFILL_2__392_ gnd vdd FILL
XFILL_3__334_ gnd vdd FILL
XFILL_6__478_ gnd vdd FILL
X_613_ _272_[0] Dout[0] vdd gnd BUFX2
XFILL_4__541_ gnd vdd FILL
XFILL_8__380_ gnd vdd FILL
XFILL_2__448_ gnd vdd FILL
XFILL_9__414_ gnd vdd FILL
XFILL_6__287_ gnd vdd FILL
X_422_ Xin12b[11] _167_ vdd gnd INVX1
XFILL_4__350_ gnd vdd FILL
XFILL_7__494_ gnd vdd FILL
XFILL_8__436_ gnd vdd FILL
XFILL_3__619_ gnd vdd FILL
XFILL_3__372_ gnd vdd FILL
XFILL_4__406_ gnd vdd FILL
XFILL73650x10950 gnd vdd FILL
XFILL_5__613_ gnd vdd FILL
XFILL_1__279_ gnd vdd FILL
XFILL_2__486_ gnd vdd FILL
XFILL_9__452_ gnd vdd FILL
XFILL_3__428_ gnd vdd FILL
XFILL_7__359_ gnd vdd FILL
X_460_ _57_ LoadCtl_6_bF$buf0 _199_ _25_ vdd gnd OAI21X1
XFILL_5__422_ gnd vdd FILL
XFILL_8__474_ gnd vdd FILL
XFILL_9__508_ gnd vdd FILL
XFILL_2__295_ gnd vdd FILL
XFILL_0__513_ gnd vdd FILL
X_516_ LoadCtl[2] LoadCtl[3] _248_ vdd gnd NOR2X1
XFILL_1__300_ gnd vdd FILL
XFILL_4__444_ gnd vdd FILL
XFILL_8__283_ gnd vdd FILL
XFILL_9__317_ gnd vdd FILL
XFILL_0__322_ gnd vdd FILL
XFILL_9__490_ gnd vdd FILL
XFILL_3__466_ gnd vdd FILL
XFILL_4_BUFX2_insert10 gnd vdd FILL
XFILL_4_BUFX2_insert11 gnd vdd FILL
X_325_ _85_ LoadCtl[0] _86_ vdd gnd OR2X2
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
XFILL_5__460_ gnd vdd FILL
XFILL_6__402_ gnd vdd FILL
XFILL_9__546_ gnd vdd FILL
XFILL_0__551_ gnd vdd FILL
XFILL_3__275_ gnd vdd FILL
XFILL_4__309_ gnd vdd FILL
X_554_ _73_ _255_ _270_ _48_ vdd gnd OAI21X1
XFILL_4__482_ gnd vdd FILL
XFILL_5__516_ gnd vdd FILL
XFILL_2__389_ gnd vdd FILL
XFILL_0__360_ gnd vdd FILL
XFILL_0_CLKBUF1_insert0 gnd vdd FILL
XFILL_0_CLKBUF1_insert1 gnd vdd FILL
XFILL_0_CLKBUF1_insert2 gnd vdd FILL
XFILL_0_CLKBUF1_insert3 gnd vdd FILL
XFILL_0_CLKBUF1_insert4 gnd vdd FILL
XFILL_0_CLKBUF1_insert5 gnd vdd FILL
XFILL_4__538_ gnd vdd FILL
XFILL_0_CLKBUF1_insert6 gnd vdd FILL
X_363_ Xin1[0] Xin1[1] _115_ vdd gnd NOR2X1
XFILL_4__291_ gnd vdd FILL
XFILL_5__325_ gnd vdd FILL
XFILL_8__377_ gnd vdd FILL
XFILL_6__440_ gnd vdd FILL
XFILL_0__416_ gnd vdd FILL
X_419_ LoadCtl_6_bF$buf3 _161_ _164_ _165_ vdd gnd NAND3X1
XFILL_1__623_ gnd vdd FILL
XFILL_4__347_ gnd vdd FILL
X_592_ _43_ clk_bF$buf2 Xin0[0] vdd gnd DFFPOSX1
XFILL_2__410_ gnd vdd FILL
XFILL_5__554_ gnd vdd FILL
XFILL_3__369_ gnd vdd FILL
XFILL_1__432_ gnd vdd FILL
XFILL_5__363_ gnd vdd FILL
XFILL_6__305_ gnd vdd FILL
XFILL_7__512_ gnd vdd FILL
XFILL_0__454_ gnd vdd FILL
X_457_ _186_ _193_ _197_ vdd gnd AND2X2
XFILL_4__385_ gnd vdd FILL
XFILL_5__419_ gnd vdd FILL
XFILL_6__534_ gnd vdd FILL
XFILL_7__321_ gnd vdd FILL
XFILL_1__470_ gnd vdd FILL
XFILL_2__504_ gnd vdd FILL
XFILL_6__343_ gnd vdd FILL
XFILL_0__319_ gnd vdd FILL
XFILL_7__550_ gnd vdd FILL
XFILL_0__492_ gnd vdd FILL
XFILL_1__526_ gnd vdd FILL
X_495_ Yin12b[8] Yin12b[9] _229_ vdd gnd NOR2X1
XFILL_2__313_ gnd vdd FILL
XFILL_5__457_ gnd vdd FILL
XFILL_0__548_ gnd vdd FILL
XFILL_9__296_ gnd vdd FILL
XFILL_1__335_ gnd vdd FILL
XFILL_8__301_ gnd vdd FILL
XFILL_4__479_ gnd vdd FILL
XFILL_2__542_ gnd vdd FILL
XFILL_6__381_ gnd vdd FILL
XFILL_7__415_ gnd vdd FILL
XFILL_0__357_ gnd vdd FILL
XFILL_8__530_ gnd vdd FILL
XFILL_4__288_ gnd vdd FILL
XFILL_2__351_ gnd vdd FILL
XFILL_5__495_ gnd vdd FILL
XFILL_6__437_ gnd vdd FILL
XFILL_4__500_ gnd vdd FILL
X_589_ _40_ clk_bF$buf2 Xin12b[5] vdd gnd DFFPOSX1
XFILL_1__373_ gnd vdd FILL
XFILL_2__407_ gnd vdd FILL
XFILL_3__522_ gnd vdd FILL
XFILL_7__453_ gnd vdd FILL
XFILL_0__395_ gnd vdd FILL
XFILL_1__429_ gnd vdd FILL
X_398_ _129_ _145_ _146_ vdd gnd NAND2X1
XFILL_3__331_ gnd vdd FILL
XFILL_6__475_ gnd vdd FILL
XFILL_7__509_ gnd vdd FILL
X_610_ LoadCtl[3] clk_bF$buf1 LoadCtl[4] vdd gnd DFFPOSX1
XFILL_8__624_ gnd vdd FILL
XFILL_2__445_ gnd vdd FILL
XFILL_9__411_ gnd vdd FILL
XFILL_6__284_ gnd vdd FILL
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
XFILL_1__276_ gnd vdd FILL
XFILL_2__483_ gnd vdd FILL
XFILL_3__425_ gnd vdd FILL
XFILL_7__356_ gnd vdd FILL
XFILL_0__298_ gnd vdd FILL
XFILL_8__471_ gnd vdd FILL
XFILL_2__539_ gnd vdd FILL
XFILL_9__505_ gnd vdd FILL
XFILL_2__292_ gnd vdd FILL
XFILL_0__510_ gnd vdd FILL
XFILL_6__378_ gnd vdd FILL
X_513_ _240_ _245_ _246_ vdd gnd NAND2X1
XFILL_4__441_ gnd vdd FILL
XFILL_9_CLKBUF1_insert0 gnd vdd FILL
XFILL_9_CLKBUF1_insert1 gnd vdd FILL
XFILL_9_CLKBUF1_insert2 gnd vdd FILL
XFILL_9_CLKBUF1_insert4 gnd vdd FILL
XFILL_8__527_ gnd vdd FILL
XFILL_9_CLKBUF1_insert5 gnd vdd FILL
XFILL_9_CLKBUF1_insert6 gnd vdd FILL
XFILL_8__280_ gnd vdd FILL
XFILL_2__348_ gnd vdd FILL
XFILL_3__463_ gnd vdd FILL
X_322_ _82_ _80_ _83_ _3_ vdd gnd OAI21X1
XFILL_7__394_ gnd vdd FILL
XFILL_8__336_ gnd vdd FILL
XFILL_3__519_ gnd vdd FILL
XFILL_4__306_ gnd vdd FILL
X_551_ Yin12b[8] _255_ _269_ vdd gnd NAND2X1
XFILL_5__513_ gnd vdd FILL
XFILL_2__386_ gnd vdd FILL
XFILL_3__328_ gnd vdd FILL
X_607_ LoadCtl[0] clk_bF$buf1 LoadCtl[1] vdd gnd DFFPOSX1
XFILL_4__535_ gnd vdd FILL
X_360_ _111_ _112_ _113_ vdd gnd NAND2X1
XFILL_5__322_ gnd vdd FILL
XFILL_8__374_ gnd vdd FILL
XFILL_0__413_ gnd vdd FILL
X_416_ Xin12b[10] _162_ vdd gnd INVX1
XFILL_1__620_ gnd vdd FILL
XFILL_4__344_ gnd vdd FILL
XFILL_7__488_ gnd vdd FILL
XFILL_5__551_ gnd vdd FILL
XFILL_9__390_ gnd vdd FILL
XFILL_3__366_ gnd vdd FILL
XFILL_7__297_ gnd vdd FILL
XFILL_5__360_ gnd vdd FILL
XFILL_6__302_ gnd vdd FILL
XFILL_0__451_ gnd vdd FILL
X_454_ _186_ _193_ _194_ vdd gnd NAND2X1
XFILL_4__382_ gnd vdd FILL
XFILL_5__416_ gnd vdd FILL
XFILL_8__468_ gnd vdd FILL
XFILL_6__531_ gnd vdd FILL
XFILL_2__289_ gnd vdd FILL
XFILL_0__507_ gnd vdd FILL
XFILL_4__438_ gnd vdd FILL
XFILL_2__501_ gnd vdd FILL
XFILL_8__277_ gnd vdd FILL
XFILL_6__340_ gnd vdd FILL
XFILL_0__316_ gnd vdd FILL
XFILL_9__484_ gnd vdd FILL
X_319_ _78_ _80_ _81_ _2_ vdd gnd OAI21X1
XFILL_1__523_ gnd vdd FILL
X_492_ _225_ _224_ _96__bF$buf0 _227_ vdd gnd AOI21X1
XFILL_2__310_ gnd vdd FILL
XFILL_5__454_ gnd vdd FILL
XFILL_0__545_ gnd vdd FILL
XFILL_9__293_ gnd vdd FILL
X_548_ _232_ _251_ _267_ _45_ vdd gnd OAI21X1
XFILL_1__332_ gnd vdd FILL
XFILL_4__476_ gnd vdd FILL
XFILL_6__625_ gnd vdd FILL
XFILL_9__349_ gnd vdd FILL
XFILL_7__412_ gnd vdd FILL
XFILL_0__354_ gnd vdd FILL
XFILL_3__498_ gnd vdd FILL
X_357_ _93_ _103_ _104_ _110_ vdd gnd OAI21X1
XFILL_4__285_ gnd vdd FILL
XFILL_5__319_ gnd vdd FILL
XFILL_5__492_ gnd vdd FILL
XFILL_6__434_ gnd vdd FILL
XFILL_1__617_ gnd vdd FILL
X_586_ _37_ clk_bF$buf5 Xin12b[6] vdd gnd DFFPOSX1
XFILL_1__370_ gnd vdd FILL
XFILL_2__404_ gnd vdd FILL
XFILL_5__548_ gnd vdd FILL
XFILL_9__387_ gnd vdd FILL
XFILL_7__450_ gnd vdd FILL
XFILL_0__392_ gnd vdd FILL
XFILL_1__426_ gnd vdd FILL
X_395_ _137_ LoadCtl_6_bF$buf3 _143_ _16_ vdd gnd OAI21X1
XFILL_5__357_ gnd vdd FILL
XFILL_6__472_ gnd vdd FILL
XFILL_7__506_ gnd vdd FILL
XFILL_0__448_ gnd vdd FILL
XFILL_8__621_ gnd vdd FILL
XFILL_4__379_ gnd vdd FILL
XFILL75750x50550 gnd vdd FILL
XFILL_2__442_ gnd vdd FILL
XFILL_6__528_ gnd vdd FILL
XFILL_6__281_ gnd vdd FILL
XFILL_7__315_ gnd vdd FILL
XFILL_1__464_ gnd vdd FILL
XFILL_8__430_ gnd vdd FILL
XFILL_5__395_ gnd vdd FILL
XFILL_3__613_ gnd vdd FILL
XFILL_6__337_ gnd vdd FILL
XFILL_4__400_ gnd vdd FILL
XFILL_7__544_ gnd vdd FILL
XFILL_0__486_ gnd vdd FILL
X_489_ Yin12b[9] _224_ vdd gnd INVX1
XFILL_1__273_ gnd vdd FILL
XFILL_2__307_ gnd vdd FILL
XFILL_2__480_ gnd vdd FILL
XFILL_3__422_ gnd vdd FILL
XFILL_7__353_ gnd vdd FILL
XFILL_0__295_ gnd vdd FILL
XFILL_1__329_ gnd vdd FILL
X_298_ selXY_bF$buf1 Xcalc[8] _66_ vdd gnd NAND2X1
XFILL_2__536_ gnd vdd FILL
XFILL_6__375_ gnd vdd FILL
XFILL_7__409_ gnd vdd FILL
X_510_ _241_ _242_ _233_ _243_ vdd gnd NAND3X1
XFILL_8__524_ gnd vdd FILL
XFILL_2__345_ gnd vdd FILL
XFILL_9__311_ gnd vdd FILL
XFILL_5__489_ gnd vdd FILL
XFILL_3__460_ gnd vdd FILL
XBUFX2_insert10 selXY selXY_bF$buf0 vdd gnd BUFX2
XBUFX2_insert11 ISreg ISreg_bF$buf4 vdd gnd BUFX2
XBUFX2_insert12 ISreg ISreg_bF$buf3 vdd gnd BUFX2
XBUFX2_insert13 ISreg ISreg_bF$buf2 vdd gnd BUFX2
XBUFX2_insert14 ISreg ISreg_bF$buf1 vdd gnd BUFX2
XBUFX2_insert15 ISreg ISreg_bF$buf0 vdd gnd BUFX2
XBUFX2_insert16 LoadCtl[6] LoadCtl_6_bF$buf4 vdd gnd BUFX2
XFILL_7__391_ gnd vdd FILL
XBUFX2_insert17 LoadCtl[6] LoadCtl_6_bF$buf3 vdd gnd BUFX2
XBUFX2_insert18 LoadCtl[6] LoadCtl_6_bF$buf2 vdd gnd BUFX2
XBUFX2_insert19 LoadCtl[6] LoadCtl_6_bF$buf1 vdd gnd BUFX2
XFILL_1__367_ gnd vdd FILL
XFILL_8__333_ gnd vdd FILL
XFILL_9__540_ gnd vdd FILL
XFILL_5__298_ gnd vdd FILL
XFILL_3__516_ gnd vdd FILL
XFILL_4__303_ gnd vdd FILL
XFILL_7__447_ gnd vdd FILL
XFILL_0__389_ gnd vdd FILL
XFILL_5__510_ gnd vdd FILL
XFILL75150x7350 gnd vdd FILL
XFILL_2__383_ gnd vdd FILL
XFILL_3__325_ gnd vdd FILL
XFILL_6__469_ gnd vdd FILL
X_604_ _6_ clk_bF$buf3 Yin0[0] vdd gnd DFFPOSX1
XFILL_4__532_ gnd vdd FILL
XFILL_8__618_ gnd vdd FILL
XFILL_8__371_ gnd vdd FILL
XFILL_2__439_ gnd vdd FILL
XFILL_9__405_ gnd vdd FILL
XFILL_0__410_ gnd vdd FILL
XFILL_3__554_ gnd vdd FILL
XFILL_6__278_ gnd vdd FILL
X_413_ Xin12b[8] Xin12b[9] _159_ vdd gnd NOR2X1
XFILL_4__341_ gnd vdd FILL
XFILL_7__485_ gnd vdd FILL
XFILL_8__427_ gnd vdd FILL
XFILL_3__363_ gnd vdd FILL
XFILL_7__294_ gnd vdd FILL
XFILL_2__477_ gnd vdd FILL
XFILL_9__443_ gnd vdd FILL
XFILL_3__419_ gnd vdd FILL
X_451_ LoadCtl_6_bF$buf0 _190_ _191_ _192_ vdd gnd NAND3X1
XFILL_5__413_ gnd vdd FILL
XFILL_1__499_ gnd vdd FILL
XFILL_8__465_ gnd vdd FILL
XFILL_5_BUFX2_insert20 gnd vdd FILL
XFILL_5_BUFX2_insert21 gnd vdd FILL
XFILL_5_BUFX2_insert22 gnd vdd FILL
XFILL_5_BUFX2_insert23 gnd vdd FILL
XFILL_5_BUFX2_insert24 gnd vdd FILL
XFILL_5_BUFX2_insert25 gnd vdd FILL
XFILL_2__286_ gnd vdd FILL
XFILL_0__504_ gnd vdd FILL
X_507_ _238_ _239_ _240_ vdd gnd NAND2X1
XFILL_4__435_ gnd vdd FILL
XFILL_8__274_ gnd vdd FILL
XFILL_9__308_ gnd vdd FILL
XFILL_0__313_ gnd vdd FILL
XFILL_9__481_ gnd vdd FILL
XFILL_3__457_ gnd vdd FILL
X_316_ _75_ _79_ vdd gnd INVX1
XFILL_1__520_ gnd vdd FILL
XFILL_7__388_ gnd vdd FILL
XFILL_5__451_ gnd vdd FILL
XFILL_9__537_ gnd vdd FILL
XFILL_0__542_ gnd vdd FILL
XFILL_9__290_ gnd vdd FILL
X_545_ LoadCtl[0] Xin[1] _266_ vdd gnd NAND2X1
XFILL73650x72150 gnd vdd FILL
XFILL_4__473_ gnd vdd FILL
XFILL_5__507_ gnd vdd FILL
XFILL_6__622_ gnd vdd FILL
XFILL_9__346_ gnd vdd FILL
XFILL_0__351_ gnd vdd FILL
XFILL_3__495_ gnd vdd FILL
XFILL_4__529_ gnd vdd FILL
X_354_ _107_ _105_ _108_ vdd gnd NAND2X1
XFILL_4__282_ gnd vdd FILL
XFILL_5__316_ gnd vdd FILL
XFILL_8__368_ gnd vdd FILL
XFILL_6__431_ gnd vdd FILL
XFILL_0__407_ gnd vdd FILL
XFILL_1__614_ gnd vdd FILL
XFILL_4__338_ gnd vdd FILL
X_583_ _34_ clk_bF$buf2 Xin12b[11] vdd gnd DFFPOSX1
XFILL_2__401_ gnd vdd FILL
XFILL_5__545_ gnd vdd FILL
XFILL_9__384_ gnd vdd FILL
XFILL74250x10950 gnd vdd FILL
XFILL_1__423_ gnd vdd FILL
X_392_ ISreg_bF$buf0 Xin12b[6] _141_ vdd gnd NAND2X1
XFILL_5__354_ gnd vdd FILL
XFILL_7__503_ gnd vdd FILL
XFILL_0__445_ gnd vdd FILL
X_448_ _93_ _183_ _184_ _189_ vdd gnd OAI21X1
XFILL_4__376_ gnd vdd FILL
XFILL_6__525_ gnd vdd FILL
XFILL_7__312_ gnd vdd FILL
XFILL_3__398_ gnd vdd FILL
XFILL_1__461_ gnd vdd FILL
XFILL_5__392_ gnd vdd FILL
XFILL_6__334_ gnd vdd FILL
XFILL_9__478_ gnd vdd FILL
XFILL_7__541_ gnd vdd FILL
XFILL_0__483_ gnd vdd FILL
XFILL_1__517_ gnd vdd FILL
X_486_ _221_ _220_ _222_ vdd gnd NAND2X1
XFILL_2__304_ gnd vdd FILL
XFILL_5__448_ gnd vdd FILL
XFILL_0__539_ gnd vdd FILL
XFILL_9__287_ gnd vdd FILL
XFILL_7__350_ gnd vdd FILL
XFILL_0__292_ gnd vdd FILL
XFILL_1__326_ gnd vdd FILL
X_295_ selXY_bF$buf2 Xcalc[7] _64_ vdd gnd NAND2X1
XFILL_2__533_ gnd vdd FILL
XFILL_6__619_ gnd vdd FILL
XFILL_6__372_ gnd vdd FILL
XFILL_7__406_ gnd vdd FILL
XFILL_0__348_ gnd vdd FILL
XFILL_1__555_ gnd vdd FILL
XFILL_8__521_ gnd vdd FILL
XFILL_4__279_ gnd vdd FILL
XFILL_2__342_ gnd vdd FILL
XFILL_5__486_ gnd vdd FILL
XFILL_6__428_ gnd vdd FILL
XFILL_1__364_ gnd vdd FILL
XFILL_8__330_ gnd vdd FILL
XFILL_5__295_ gnd vdd FILL
XFILL_3__513_ gnd vdd FILL
XFILL_4__300_ gnd vdd FILL
XFILL_7__444_ gnd vdd FILL
XFILL_0__386_ gnd vdd FILL
X_389_ _132_ _129_ _119_ _138_ vdd gnd NAND3X1
XFILL_2__380_ gnd vdd FILL
XFILL_3__322_ gnd vdd FILL
XFILL_6__466_ gnd vdd FILL
X_601_ _3_ clk_bF$buf4 Yin12b[5] vdd gnd DFFPOSX1
XFILL_8__615_ gnd vdd FILL
XFILL_2__436_ gnd vdd FILL
XFILL_9__402_ gnd vdd FILL
XFILL_3__551_ gnd vdd FILL
XFILL_6__275_ gnd vdd FILL
XFILL_7__309_ gnd vdd FILL
X_410_ _152_ _96__bF$buf3 _155_ _156_ _18_ vdd 
+ gnd
+ AOI22X1
XFILL_7__482_ gnd vdd FILL
XFILL_1__458_ gnd vdd FILL
XFILL_8__424_ gnd vdd FILL
XFILL_5__389_ gnd vdd FILL
XFILL_3__360_ gnd vdd FILL
XFILL_7__538_ gnd vdd FILL
XFILL_7__291_ gnd vdd FILL
XFILL_2__474_ gnd vdd FILL
XFILL_9__440_ gnd vdd FILL
XFILL_3__416_ gnd vdd FILL
XFILL_4__623_ gnd vdd FILL
XFILL74850x28950 gnd vdd FILL
XFILL_7__347_ gnd vdd FILL
XFILL_0__289_ gnd vdd FILL
XFILL_5__410_ gnd vdd FILL
XFILL_1__496_ gnd vdd FILL
XFILL_8__462_ gnd vdd FILL
XFILL_2__283_ gnd vdd FILL
XFILL_0__501_ gnd vdd FILL
XFILL_6__369_ gnd vdd FILL
X_504_ Yin12b[11] _237_ vdd gnd INVX1
XFILL_4__432_ gnd vdd FILL
XFILL_8__518_ gnd vdd FILL
XFILL_2__339_ gnd vdd FILL
XFILL_9__305_ gnd vdd FILL
XFILL_0__310_ gnd vdd FILL
XFILL_3__454_ gnd vdd FILL
X_313_ Yin12b[7] _76_ _77_ vdd gnd NAND2X1
XFILL_7__385_ gnd vdd FILL
XFILL_8__327_ gnd vdd FILL
XFILL_9__534_ gnd vdd FILL
X_542_ _257_ _86_ _264_ _42_ vdd gnd OAI21X1
XFILL_4__470_ gnd vdd FILL
XFILL_5__504_ gnd vdd FILL
XFILL_8__556_ gnd vdd FILL
XFILL_2__377_ gnd vdd FILL
XFILL_9__343_ gnd vdd FILL
XFILL_3__319_ gnd vdd FILL
XFILL_3__492_ gnd vdd FILL
XFILL_4__526_ gnd vdd FILL
X_351_ _104_ _103_ _105_ vdd gnd OR2X2
XFILL_5__313_ gnd vdd FILL
XFILL_1__399_ gnd vdd FILL
XFILL_8__365_ gnd vdd FILL
XFILL_0__404_ gnd vdd FILL
XFILL_3__548_ gnd vdd FILL
X_407_ _93_ _144_ _147_ _154_ vdd gnd OAI21X1
XFILL_4__335_ gnd vdd FILL
XFILL_7__479_ gnd vdd FILL
X_580_ _31_ clk_bF$buf6 Ycalc[10] vdd gnd DFFPOSX1
XFILL_5__542_ gnd vdd FILL
XFILL_9__381_ gnd vdd FILL
XFILL_3__357_ gnd vdd FILL
XFILL_1__420_ gnd vdd FILL
XFILL_7__288_ gnd vdd FILL
XFILL_5__351_ gnd vdd FILL
XFILL_9__437_ gnd vdd FILL
XFILL_7__500_ gnd vdd FILL
XFILL_0__442_ gnd vdd FILL
X_445_ _93_ _186_ _183_ _187_ vdd gnd OAI21X1
XFILL_4__373_ gnd vdd FILL
XFILL_5__407_ gnd vdd FILL
XFILL_8__459_ gnd vdd FILL
XFILL75150x28950 gnd vdd FILL
XFILL_6__522_ gnd vdd FILL
XFILL_3__395_ gnd vdd FILL
XFILL_4__429_ gnd vdd FILL
XFILL_6__331_ gnd vdd FILL
XFILL_0__307_ gnd vdd FILL
XFILL_9__475_ gnd vdd FILL
XFILL_0__480_ gnd vdd FILL
XFILL_1__514_ gnd vdd FILL
X_483_ _194_ _218_ ISreg_bF$buf3 _219_ vdd gnd OAI21X1
XFILL_2__301_ gnd vdd FILL
XFILL_5__445_ gnd vdd FILL
XFILL_8__497_ gnd vdd FILL
XFILL_0__536_ gnd vdd FILL
X_539_ LoadCtl[0] _85_ Xin1[0] _263_ vdd gnd OAI21X1
XFILL_1__323_ gnd vdd FILL
XFILL_4__467_ gnd vdd FILL
X_292_ selXY_bF$buf1 Xcalc[6] _62_ vdd gnd NAND2X1
XFILL_2__530_ gnd vdd FILL
XFILL_6__616_ gnd vdd FILL
XFILL_7__403_ gnd vdd FILL
XFILL_0__345_ gnd vdd FILL
XFILL_3__489_ gnd vdd FILL
X_348_ _96__bF$buf4 _101_ _102_ _10_ vdd gnd OAI21X1
XFILL_1__552_ gnd vdd FILL
XFILL_4__276_ gnd vdd FILL
XFILL_5__483_ gnd vdd FILL
XFILL_6__425_ gnd vdd FILL
XFILL_3__298_ gnd vdd FILL
X_577_ _28_ clk_bF$buf6 Ycalc[7] vdd gnd DFFPOSX1
XFILL_1__361_ gnd vdd FILL
XFILL_5__539_ gnd vdd FILL
XFILL_5__292_ gnd vdd FILL
XFILL_3__510_ gnd vdd FILL
XFILL_7__441_ gnd vdd FILL
XFILL_0__383_ gnd vdd FILL
XFILL_1__417_ gnd vdd FILL
X_386_ Xcalc[6] _96__bF$buf3 _136_ vdd gnd NAND2X1
XFILL_2__624_ gnd vdd FILL
XFILL_5__348_ gnd vdd FILL
XFILL_6__463_ gnd vdd FILL
XFILL_0__439_ gnd vdd FILL
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
XFILL_6__519_ gnd vdd FILL
XFILL_7__306_ gnd vdd FILL
XFILL_1__455_ gnd vdd FILL
XFILL_8__421_ gnd vdd FILL
XFILL_5__386_ gnd vdd FILL
XFILL75450x36150 gnd vdd FILL
XFILL_6__328_ gnd vdd FILL
XFILL_7__535_ gnd vdd FILL
XFILL_0__477_ gnd vdd FILL
XFILL72750x10950 gnd vdd FILL
XFILL_2__471_ gnd vdd FILL
XFILL_3__413_ gnd vdd FILL
XFILL_4__620_ gnd vdd FILL
XFILL_7__344_ gnd vdd FILL
XFILL_0__286_ gnd vdd FILL
X_289_ selXY_bF$buf0 Xcalc[5] _60_ vdd gnd NAND2X1
XFILL_1__493_ gnd vdd FILL
XFILL_2__527_ gnd vdd FILL
XFILL_2__280_ gnd vdd FILL
XFILL_6__366_ gnd vdd FILL
X_501_ LoadCtl_6_bF$buf2 _231_ _234_ _235_ vdd gnd NAND3X1
XFILL_1__549_ gnd vdd FILL
XFILL_8__515_ gnd vdd FILL
XFILL_2__336_ gnd vdd FILL
XFILL_9__302_ gnd vdd FILL
XFILL_3__451_ gnd vdd FILL
X_310_ LoadCtl[2] _74_ vdd gnd INVX1
XFILL_7__382_ gnd vdd FILL
XFILL_1__358_ gnd vdd FILL
XFILL_8__324_ gnd vdd FILL
XFILL_9__531_ gnd vdd FILL
XFILL_5__289_ gnd vdd FILL
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
XFILL_8__553_ gnd vdd FILL
XFILL_2__374_ gnd vdd FILL
XFILL_3__316_ gnd vdd FILL
XFILL_4__523_ gnd vdd FILL
XFILL_5__310_ gnd vdd FILL
XFILL_1__396_ gnd vdd FILL
XFILL_8__362_ gnd vdd FILL
XFILL_0__401_ gnd vdd FILL
XFILL_3__545_ gnd vdd FILL
X_404_ _96__bF$buf0 _150_ _151_ _17_ vdd gnd OAI21X1
XFILL_4__332_ gnd vdd FILL
XFILL_7__476_ gnd vdd FILL
XFILL_8__418_ gnd vdd FILL
XFILL_9__625_ gnd vdd FILL
XFILL_3__354_ gnd vdd FILL
XFILL_6__498_ gnd vdd FILL
XFILL_7__285_ gnd vdd FILL
XFILL_2__468_ gnd vdd FILL
XFILL_4__617_ gnd vdd FILL
X_442_ Yin0[0] Yin0[1] ISreg_bF$buf2 _184_ vdd gnd OAI21X1
XFILL_4__370_ gnd vdd FILL
XFILL_5__404_ gnd vdd FILL
XFILL_8__456_ gnd vdd FILL
XFILL_2__277_ gnd vdd FILL
XFILL_3__392_ gnd vdd FILL
XFILL_4__426_ gnd vdd FILL
XFILL_1__299_ gnd vdd FILL
XFILL_0__304_ gnd vdd FILL
XFILL_3__448_ gnd vdd FILL
X_307_ selXY_bF$buf2 Xcalc[11] _72_ vdd gnd NAND2X1
XFILL_1__511_ gnd vdd FILL
XFILL_7__379_ gnd vdd FILL
X_480_ Yin12b[8] _216_ vdd gnd INVX1
XFILL_5__442_ gnd vdd FILL
XFILL_8__494_ gnd vdd FILL
XFILL_0__533_ gnd vdd FILL
XFILL_9__281_ gnd vdd FILL
X_536_ _118_ _80_ _261_ _39_ vdd gnd OAI21X1
XFILL_1__320_ gnd vdd FILL
XFILL_4__464_ gnd vdd FILL
XFILL_6__613_ gnd vdd FILL
XFILL_7__400_ gnd vdd FILL
XFILL_0__342_ gnd vdd FILL
XFILL_3__486_ gnd vdd FILL
X_345_ _93_ _95_ _99_ _100_ vdd gnd OAI21X1
XFILL_4__273_ gnd vdd FILL
XFILL_5__307_ gnd vdd FILL
XFILL_8__359_ gnd vdd FILL
XFILL_5__480_ gnd vdd FILL
XFILL_6__422_ gnd vdd FILL
XFILL_3__295_ gnd vdd FILL
XFILL_4__329_ gnd vdd FILL
X_574_ _25_ clk_bF$buf6 Ycalc[4] vdd gnd DFFPOSX1
XFILL_5__536_ gnd vdd FILL
XFILL_9__375_ gnd vdd FILL
XFILL_0__380_ gnd vdd FILL
XFILL_1__414_ gnd vdd FILL
X_383_ ISreg_bF$buf0 _130_ _133_ vdd gnd NAND2X1
XFILL_2__621_ gnd vdd FILL
XFILL_5__345_ gnd vdd FILL
XFILL_8__397_ gnd vdd FILL
XFILL_6__460_ gnd vdd FILL
XFILL_0__436_ gnd vdd FILL
X_439_ LoadCtl_6_bF$buf3 _180_ _181_ _182_ vdd gnd NAND3X1
XFILL_4__367_ gnd vdd FILL
XFILL_2__430_ gnd vdd FILL
XFILL_6__516_ gnd vdd FILL
XFILL_7__303_ gnd vdd FILL
XFILL_3__389_ gnd vdd FILL
XFILL_1__452_ gnd vdd FILL
XFILL_5__383_ gnd vdd FILL
XFILL_6__325_ gnd vdd FILL
XFILL_9__469_ gnd vdd FILL
XFILL_7__532_ gnd vdd FILL
XFILL_0__474_ gnd vdd FILL
XFILL_5_BUFX2_insert7 gnd vdd FILL
XFILL_1__508_ gnd vdd FILL
XFILL_5_BUFX2_insert8 gnd vdd FILL
XFILL_5_BUFX2_insert9 gnd vdd FILL
X_477_ _212_ _213_ _207_ _214_ vdd gnd NAND3X1
XFILL75450x57750 gnd vdd FILL
XFILL_5__439_ gnd vdd FILL
XFILL_3__410_ gnd vdd FILL
XFILL_6__554_ gnd vdd FILL
XFILL_9__278_ gnd vdd FILL
XFILL74250x72150 gnd vdd FILL
XFILL74250x39750 gnd vdd FILL
XFILL_7__341_ gnd vdd FILL
XFILL_0__283_ gnd vdd FILL
XFILL_1__317_ gnd vdd FILL
X_286_ selXY_bF$buf3 Xcalc[4] _58_ vdd gnd NAND2X1
XFILL_1__490_ gnd vdd FILL
XFILL_2__524_ gnd vdd FILL
XFILL_6__363_ gnd vdd FILL
XFILL_0__339_ gnd vdd FILL
XFILL_1__546_ gnd vdd FILL
XFILL_8__512_ gnd vdd FILL
XFILL_2__333_ gnd vdd FILL
XFILL_5__477_ gnd vdd FILL
XFILL_6__419_ gnd vdd FILL
XFILL_1__355_ gnd vdd FILL
XFILL_8__321_ gnd vdd FILL
XFILL_4__499_ gnd vdd FILL
XFILL_5__286_ gnd vdd FILL
XFILL_3__504_ gnd vdd FILL
XFILL75750x10950 gnd vdd FILL
XFILL_7__435_ gnd vdd FILL
XFILL_0__377_ gnd vdd FILL
XFILL_7_BUFX2_insert7 gnd vdd FILL
XFILL_7_BUFX2_insert8 gnd vdd FILL
XFILL_7_BUFX2_insert9 gnd vdd FILL
XFILL_8__550_ gnd vdd FILL
XFILL_2__618_ gnd vdd FILL
XFILL_2__371_ gnd vdd FILL
XFILL_3__313_ gnd vdd FILL
XFILL_6__457_ gnd vdd FILL
XFILL_4__520_ gnd vdd FILL
XFILL_1__393_ gnd vdd FILL
XFILL_2__427_ gnd vdd FILL
XFILL_3__542_ gnd vdd FILL
X_401_ _144_ _147_ _149_ vdd gnd NAND2X1
XFILL_7__473_ gnd vdd FILL
XFILL_1__449_ gnd vdd FILL
XFILL_8__415_ gnd vdd FILL
XFILL_3__351_ gnd vdd FILL
XFILL_6__495_ gnd vdd FILL
XFILL_7__529_ gnd vdd FILL
XFILL_7__282_ gnd vdd FILL
XFILL_2__465_ gnd vdd FILL
XFILL_3__407_ gnd vdd FILL
XFILL_4__614_ gnd vdd FILL
XFILL_7__338_ gnd vdd FILL
XFILL_9_BUFX2_insert8 gnd vdd FILL
XFILL_9_BUFX2_insert9 gnd vdd FILL
XFILL_5__401_ gnd vdd FILL
XFILL_1__487_ gnd vdd FILL
XFILL_8__453_ gnd vdd FILL
XFILL_2__274_ gnd vdd FILL
XFILL_4__423_ gnd vdd FILL
XFILL_8__509_ gnd vdd FILL
XFILL_1__296_ gnd vdd FILL
XFILL_0__301_ gnd vdd FILL
XFILL_3__445_ gnd vdd FILL
X_304_ selXY_bF$buf2 Xcalc[10] _70_ vdd gnd NAND2X1
XFILL_7__376_ gnd vdd FILL
XFILL_8__318_ gnd vdd FILL
XFILL_8__491_ gnd vdd FILL
XFILL_9__525_ gnd vdd FILL
XFILL_0__530_ gnd vdd FILL
XFILL_6__398_ gnd vdd FILL
X_533_ Xin12b[7] _76_ _260_ vdd gnd NAND2X1
XFILL_4__461_ gnd vdd FILL
XFILL_8__547_ gnd vdd FILL
XFILL_2__368_ gnd vdd FILL
XFILL_9__334_ gnd vdd FILL
XFILL_3__483_ gnd vdd FILL
XFILL_4__517_ gnd vdd FILL
X_342_ _95_ _96__bF$buf2 _97_ _9_ vdd gnd OAI21X1
XFILL_5__304_ gnd vdd FILL
XFILL_8__356_ gnd vdd FILL
XFILL_3__539_ gnd vdd FILL
XFILL_3__292_ gnd vdd FILL
XFILL_4__326_ gnd vdd FILL
X_571_ _22_ clk_bF$buf3 Ycalc[1] vdd gnd DFFPOSX1
XFILL_5__533_ gnd vdd FILL
XFILL_9__619_ gnd vdd FILL
XFILL_0__624_ gnd vdd FILL
XFILL_9__372_ gnd vdd FILL
XFILL_3__348_ gnd vdd FILL
XFILL_1__411_ gnd vdd FILL
XFILL_4__555_ gnd vdd FILL
XFILL_7__279_ gnd vdd FILL
X_380_ _129_ _119_ _130_ vdd gnd NAND2X1
XFILL_5__342_ gnd vdd FILL
XFILL_8__394_ gnd vdd FILL
XFILL_9__428_ gnd vdd FILL
XFILL_0__433_ gnd vdd FILL
X_436_ LoadCtl_6_bF$buf4 _49_ _179_ _21_ vdd gnd OAI21X1
XFILL_4__364_ gnd vdd FILL
XFILL_6__513_ gnd vdd FILL
XFILL_7__300_ gnd vdd FILL
XFILL_3__386_ gnd vdd FILL
XFILL_5__380_ gnd vdd FILL
XFILL_6__322_ gnd vdd FILL
XFILL_9__466_ gnd vdd FILL
XFILL_0__471_ gnd vdd FILL
XFILL_1__505_ gnd vdd FILL
X_474_ ISreg_bF$buf4 Yin12b[7] _210_ _211_ vdd gnd NAND3X1
XFILL_5__436_ gnd vdd FILL
XFILL_8__488_ gnd vdd FILL
XFILL_6__551_ gnd vdd FILL
XFILL_0__527_ gnd vdd FILL
XFILL_9__275_ gnd vdd FILL
XFILL_0__280_ gnd vdd FILL
XFILL_1__314_ gnd vdd FILL
XFILL_4__458_ gnd vdd FILL
X_283_ selXY_bF$buf0 Xcalc[3] _56_ vdd gnd NAND2X1
XFILL_2__521_ gnd vdd FILL
XFILL_8__297_ gnd vdd FILL
XFILL_6__360_ gnd vdd FILL
XFILL_0__336_ gnd vdd FILL
X_339_ Xin0[0] _95_ vdd gnd INVX1
XFILL_1__543_ gnd vdd FILL
XFILL_2__330_ gnd vdd FILL
XFILL_5__474_ gnd vdd FILL
XFILL_6__416_ gnd vdd FILL
XFILL_7__623_ gnd vdd FILL
XFILL_3__289_ gnd vdd FILL
X_568_ _19_ clk_bF$buf3 Xcalc[10] vdd gnd DFFPOSX1
XFILL_1__352_ gnd vdd FILL
XFILL_4__496_ gnd vdd FILL
XFILL_5__283_ gnd vdd FILL
XFILL_3__501_ gnd vdd FILL
XFILL_9__369_ gnd vdd FILL
XFILL_7__432_ gnd vdd FILL
XFILL_0__374_ gnd vdd FILL
XFILL_1__408_ gnd vdd FILL
X_377_ Xcalc[5] _96__bF$buf2 _128_ vdd gnd NAND2X1
XFILL_2__615_ gnd vdd FILL
XFILL_5__339_ gnd vdd FILL
XFILL_3__310_ gnd vdd FILL
XFILL_6__454_ gnd vdd FILL
XFILL_1__390_ gnd vdd FILL
XFILL_2__424_ gnd vdd FILL
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
XFILL_7__335_ gnd vdd FILL
XFILL_0__277_ gnd vdd FILL
XFILL_1__484_ gnd vdd FILL
XFILL_8__450_ gnd vdd FILL
XFILL_2__518_ gnd vdd FILL
XFILL_6__357_ gnd vdd FILL
XFILL_4__420_ gnd vdd FILL
XFILL_8__506_ gnd vdd FILL
XFILL_7_BUFX2_insert20 gnd vdd FILL
XFILL_7_BUFX2_insert21 gnd vdd FILL
XFILL_7_BUFX2_insert22 gnd vdd FILL
XFILL_7_BUFX2_insert23 gnd vdd FILL
XFILL_7_BUFX2_insert24 gnd vdd FILL
XFILL_7_BUFX2_insert25 gnd vdd FILL
XFILL_1__293_ gnd vdd FILL
XFILL_2__327_ gnd vdd FILL
XFILL_3__442_ gnd vdd FILL
X_301_ selXY_bF$buf0 Xcalc[9] _68_ vdd gnd NAND2X1
XFILL_7__373_ gnd vdd FILL
XFILL_1__349_ gnd vdd FILL
XFILL_8__315_ gnd vdd FILL
XFILL_2__556_ gnd vdd FILL
XFILL_9__522_ gnd vdd FILL
XFILL_6__395_ gnd vdd FILL
XFILL_7__429_ gnd vdd FILL
X_530_ _257_ _255_ _258_ _36_ vdd gnd OAI21X1
XFILL_8__544_ gnd vdd FILL
XFILL72750x72150 gnd vdd FILL
XFILL_2__365_ gnd vdd FILL
XFILL_9__331_ gnd vdd FILL
XFILL_3__307_ gnd vdd FILL
XFILL_3__480_ gnd vdd FILL
XFILL_4__514_ gnd vdd FILL
XFILL_5__301_ gnd vdd FILL
XFILL_1__387_ gnd vdd FILL
XFILL_8__353_ gnd vdd FILL
XFILL_3__536_ gnd vdd FILL
XFILL_4__323_ gnd vdd FILL
XFILL_7__467_ gnd vdd FILL
XFILL_8__409_ gnd vdd FILL
XFILL_5__530_ gnd vdd FILL
XFILL_9__616_ gnd vdd FILL
XFILL_0__621_ gnd vdd FILL
XFILL_3__345_ gnd vdd FILL
XFILL_6__489_ gnd vdd FILL
X_624_ _272_[9] Dout[9] vdd gnd BUFX2
XFILL73350x10950 gnd vdd FILL
XFILL_4__552_ gnd vdd FILL
XFILL_7__276_ gnd vdd FILL
XFILL75750x18150 gnd vdd FILL
XFILL_8__391_ gnd vdd FILL
XFILL_2__459_ gnd vdd FILL
XFILL_9__425_ gnd vdd FILL
XFILL_0__430_ gnd vdd FILL
XFILL_6__298_ gnd vdd FILL
X_433_ LoadCtl_6_bF$buf3 _177_ _174_ _178_ vdd gnd NAND3X1
XFILL_4__361_ gnd vdd FILL
XFILL_8__447_ gnd vdd FILL
XFILL_6__510_ gnd vdd FILL
XFILL_3__383_ gnd vdd FILL
XFILL_4__417_ gnd vdd FILL
XFILL_5__624_ gnd vdd FILL
XFILL_2__497_ gnd vdd FILL
XFILL_9__463_ gnd vdd FILL
XFILL_3__439_ gnd vdd FILL
XFILL_1__502_ gnd vdd FILL
X_471_ LoadCtl_6_bF$buf1 _205_ _208_ _209_ vdd gnd NAND3X1
XFILL_5__433_ gnd vdd FILL
XFILL_8__485_ gnd vdd FILL
XFILL_9__519_ gnd vdd FILL
XFILL_0__524_ gnd vdd FILL
X_527_ _254_ _255_ _256_ _35_ vdd gnd OAI21X1
XFILL_1__311_ gnd vdd FILL
XFILL_4__455_ gnd vdd FILL
X_280_ selXY_bF$buf3 Xcalc[2] _54_ vdd gnd NAND2X1
XFILL_8__294_ gnd vdd FILL
XFILL_9__328_ gnd vdd FILL
XFILL_0__333_ gnd vdd FILL
XFILL_3__477_ gnd vdd FILL
X_336_ ISreg_bF$buf4 _93_ vdd gnd INVX4
XFILL_1__540_ gnd vdd FILL
XFILL_5__471_ gnd vdd FILL
XFILL_6__413_ gnd vdd FILL
XFILL_7__620_ gnd vdd FILL
XFILL_3__286_ gnd vdd FILL
X_565_ _16_ clk_bF$buf0 Xcalc[7] vdd gnd DFFPOSX1
XFILL_4__493_ gnd vdd FILL
XFILL_5__527_ gnd vdd FILL
XFILL_5__280_ gnd vdd FILL
XFILL_0__618_ gnd vdd FILL
XFILL_9__366_ gnd vdd FILL
XFILL_0__371_ gnd vdd FILL
XFILL_1__405_ gnd vdd FILL
XFILL_4__549_ gnd vdd FILL
X_374_ _124_ _123_ _125_ vdd gnd OR2X2
XFILL_5__336_ gnd vdd FILL
XFILL_8__388_ gnd vdd FILL
XFILL_6__451_ gnd vdd FILL
XFILL_0__427_ gnd vdd FILL
XFILL_4__358_ gnd vdd FILL
XFILL_2__421_ gnd vdd FILL
XFILL_6__507_ gnd vdd FILL
XFILL_1__443_ gnd vdd FILL
XFILL_5__374_ gnd vdd FILL
XFILL_6__316_ gnd vdd FILL
XFILL_7__523_ gnd vdd FILL
XFILL_0__465_ gnd vdd FILL
X_468_ Yin12b[6] _206_ vdd gnd INVX1
XFILL_4__396_ gnd vdd FILL
XFILL_3__401_ gnd vdd FILL
XFILL_6__545_ gnd vdd FILL
XFILL_7__332_ gnd vdd FILL
XFILL_0__274_ gnd vdd FILL
XFILL_1__308_ gnd vdd FILL
X_277_ selXY_bF$buf3 Xcalc[1] _52_ vdd gnd NAND2X1
XFILL73950x28950 gnd vdd FILL
XFILL_1__481_ gnd vdd FILL
XFILL_2__515_ gnd vdd FILL
XFILL_6__354_ gnd vdd FILL
XFILL_1__537_ gnd vdd FILL
XFILL_8__503_ gnd vdd FILL
XFILL_1__290_ gnd vdd FILL
XFILL_2__324_ gnd vdd FILL
XFILL_5__468_ gnd vdd FILL
XFILL_7__617_ gnd vdd FILL
XFILL_7__370_ gnd vdd FILL
XFILL_1__346_ gnd vdd FILL
XFILL_8__312_ gnd vdd FILL
XFILL_2__553_ gnd vdd FILL
XFILL_5__277_ gnd vdd FILL
XFILL_6__392_ gnd vdd FILL
XFILL_7__426_ gnd vdd FILL
XFILL_0__368_ gnd vdd FILL
XFILL_8__541_ gnd vdd FILL
XFILL_4__299_ gnd vdd FILL
XFILL_2__362_ gnd vdd FILL
XFILL_3__304_ gnd vdd FILL
XFILL_6__448_ gnd vdd FILL
XFILL_4__511_ gnd vdd FILL
XFILL_1__384_ gnd vdd FILL
XFILL_8__350_ gnd vdd FILL
XFILL_2__418_ gnd vdd FILL
XFILL_3__533_ gnd vdd FILL
XFILL_4__320_ gnd vdd FILL
XFILL_7__464_ gnd vdd FILL
XFILL_8__406_ gnd vdd FILL
XFILL_9__613_ gnd vdd FILL
XFILL_3__342_ gnd vdd FILL
XFILL_6__486_ gnd vdd FILL
X_621_ _272_[6] Dout[6] vdd gnd BUFX2
XFILL_7__273_ gnd vdd FILL
XFILL_2__456_ gnd vdd FILL
XFILL_9__422_ gnd vdd FILL
XFILL75750x72150 gnd vdd FILL
XFILL75750x39750 gnd vdd FILL
XFILL_6__295_ gnd vdd FILL
XFILL_7__329_ gnd vdd FILL
X_430_ Xin12b[8] Xin12b[9] ISreg_bF$buf0 _175_ vdd gnd OAI21X1
XFILL_1__478_ gnd vdd FILL
XFILL_8__444_ gnd vdd FILL
XFILL_3__380_ gnd vdd FILL
XFILL_4__414_ gnd vdd FILL
XFILL_5__621_ gnd vdd FILL
XFILL_1__287_ gnd vdd FILL
XFILL_2__494_ gnd vdd FILL
XFILL_9__460_ gnd vdd FILL
XFILL_3__436_ gnd vdd FILL
XFILL_7__367_ gnd vdd FILL
XFILL_8__309_ gnd vdd FILL
XFILL_5__430_ gnd vdd FILL
XFILL_8__482_ gnd vdd FILL
XFILL_9__516_ gnd vdd FILL
XFILL_0__521_ gnd vdd FILL
XFILL_6__389_ gnd vdd FILL
X_524_ Xin[0] _254_ vdd gnd INVX1
XFILL_4__452_ gnd vdd FILL
XFILL_8__538_ gnd vdd FILL
XFILL_8__291_ gnd vdd FILL
XFILL_2__359_ gnd vdd FILL
XFILL_0__330_ gnd vdd FILL
XFILL_3__474_ gnd vdd FILL
XFILL_4__508_ gnd vdd FILL
X_333_ Yin0[1] _91_ vdd gnd INVX1
XFILL_8__347_ gnd vdd FILL
XFILL_6__410_ gnd vdd FILL
XFILL_3__283_ gnd vdd FILL
XFILL_4__317_ gnd vdd FILL
X_562_ _13_ clk_bF$buf0 Xcalc[4] vdd gnd DFFPOSX1
XFILL_4__490_ gnd vdd FILL
XFILL_5__524_ gnd vdd FILL
XFILL_2__397_ gnd vdd FILL
XFILL_0__615_ gnd vdd FILL
XFILL_3__339_ gnd vdd FILL
X_618_ _272_[3] Dout[3] vdd gnd BUFX2
XFILL_1__402_ gnd vdd FILL
XFILL_4__546_ gnd vdd FILL
X_371_ _96__bF$buf4 _121_ _122_ _13_ vdd gnd OAI21X1
XFILL_5__333_ gnd vdd FILL
XFILL_8__385_ gnd vdd FILL
XFILL_0__424_ gnd vdd FILL
X_427_ _171_ _172_ vdd gnd INVX1
XFILL_4__355_ gnd vdd FILL
XFILL_7__499_ gnd vdd FILL
XFILL_6__504_ gnd vdd FILL
XFILL_3__377_ gnd vdd FILL
XFILL_1__440_ gnd vdd FILL
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
X_465_ Yin12b[4] Yin12b[5] _203_ vdd gnd NOR2X1
XFILL_4__393_ gnd vdd FILL
XFILL_5__427_ gnd vdd FILL
XFILL_8__479_ gnd vdd FILL
XFILL_6__542_ gnd vdd FILL
XFILL_0__518_ gnd vdd FILL
XFILL_1__305_ gnd vdd FILL
XFILL_4__449_ gnd vdd FILL
X_274_ Xcalc[0] selXY_bF$buf0 _50_ vdd gnd NAND2X1
XFILL_2__512_ gnd vdd FILL
XFILL_8__288_ gnd vdd FILL
XFILL_6__351_ gnd vdd FILL
XFILL_0__327_ gnd vdd FILL
XFILL_9__495_ gnd vdd FILL
XFILL_1__534_ gnd vdd FILL
XFILL_8__500_ gnd vdd FILL
XFILL_2__321_ gnd vdd FILL
XFILL_5__465_ gnd vdd FILL
XFILL_6__407_ gnd vdd FILL
XFILL_7__614_ gnd vdd FILL
XFILL_0__556_ gnd vdd FILL
X_559_ _10_ clk_bF$buf0 Xcalc[1] vdd gnd DFFPOSX1
XFILL_1__343_ gnd vdd FILL
XFILL_4__487_ gnd vdd FILL
XFILL_2__550_ gnd vdd FILL
XFILL_5__274_ gnd vdd FILL
XFILL_7__423_ gnd vdd FILL
XFILL_0__365_ gnd vdd FILL
X_368_ _93_ _119_ _118_ _120_ vdd gnd OAI21X1
XFILL_4__296_ gnd vdd FILL
XFILL_3__301_ gnd vdd FILL
XFILL_6__445_ gnd vdd FILL
XFILL_8_BUFX2_insert10 gnd vdd FILL
XFILL_8_BUFX2_insert11 gnd vdd FILL
XFILL_8_BUFX2_insert12 gnd vdd FILL
XFILL_8_BUFX2_insert13 gnd vdd FILL
XFILL_8_BUFX2_insert14 gnd vdd FILL
XFILL_8_BUFX2_insert15 gnd vdd FILL
XFILL_8_BUFX2_insert16 gnd vdd FILL
XFILL_8_BUFX2_insert17 gnd vdd FILL
XFILL_8_BUFX2_insert18 gnd vdd FILL
XFILL_8_BUFX2_insert19 gnd vdd FILL
X_597_ _48_ clk_bF$buf4 Yin12b[9] vdd gnd DFFPOSX1
XFILL75450x50550 gnd vdd FILL
XFILL_1__381_ gnd vdd FILL
XFILL_2__415_ gnd vdd FILL
XFILL_3__530_ gnd vdd FILL
XFILL_9__398_ gnd vdd FILL
XFILL_7__461_ gnd vdd FILL
XFILL_1__437_ gnd vdd FILL
XFILL_8__403_ gnd vdd FILL
XFILL_5__368_ gnd vdd FILL
XFILL_6__483_ gnd vdd FILL
XFILL_7__517_ gnd vdd FILL
XFILL_0__459_ gnd vdd FILL
XFILL_2__453_ gnd vdd FILL
XFILL_6__539_ gnd vdd FILL
XFILL_6__292_ gnd vdd FILL
XFILL_7__326_ gnd vdd FILL
XFILL_1__475_ gnd vdd FILL
XFILL_8__441_ gnd vdd FILL
XFILL_2__509_ gnd vdd FILL
XFILL_3__624_ gnd vdd FILL
XFILL_6__348_ gnd vdd FILL
XFILL_4__411_ gnd vdd FILL
XFILL_7__555_ gnd vdd FILL
XFILL_0__497_ gnd vdd FILL
XFILL_1__284_ gnd vdd FILL
XFILL_2__318_ gnd vdd FILL
XFILL_2__491_ gnd vdd FILL
XFILL_3__433_ gnd vdd FILL
XFILL_7__364_ gnd vdd FILL
XFILL_8__306_ gnd vdd FILL
XFILL_2__547_ gnd vdd FILL
XFILL_6__386_ gnd vdd FILL
X_521_ _162_ _251_ _252_ _33_ vdd gnd OAI21X1
XFILL_8__535_ gnd vdd FILL
XFILL_2__356_ gnd vdd FILL
XFILL_3__471_ gnd vdd FILL
XFILL_4__505_ gnd vdd FILL
X_330_ Yin0[0] _89_ vdd gnd INVX1
XFILL_1__378_ gnd vdd FILL
XFILL_8__344_ gnd vdd FILL
XFILL_3__527_ gnd vdd FILL
XFILL_3__280_ gnd vdd FILL
XFILL_4__314_ gnd vdd FILL
XFILL_7__458_ gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_5__521_ gnd vdd FILL
XFILL75750x25350 gnd vdd FILL
XFILL_2__394_ gnd vdd FILL
XFILL_9__360_ gnd vdd FILL
XFILL_3__336_ gnd vdd FILL
X_615_ _272_[10] Dout[10] vdd gnd BUFX2
XFILL_4__543_ gnd vdd FILL
XFILL_5__330_ gnd vdd FILL
XFILL_8__382_ gnd vdd FILL
XFILL_0__421_ gnd vdd FILL
XFILL_6__289_ gnd vdd FILL
X_424_ selSign _169_ vdd gnd INVX1
XFILL_4__352_ gnd vdd FILL
XFILL_7__496_ gnd vdd FILL
XFILL_8__438_ gnd vdd FILL
XFILL_6__501_ gnd vdd FILL
XFILL_3__374_ gnd vdd FILL
XFILL_4__408_ gnd vdd FILL
XFILL_5__615_ gnd vdd FILL
XFILL_6__310_ gnd vdd FILL
XFILL_2__488_ gnd vdd FILL
XFILL_9__454_ gnd vdd FILL
X_462_ _200_ _82_ _201_ vdd gnd OR2X2
XFILL_2_BUFX2_insert7 gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_4__390_ gnd vdd FILL
XFILL_2_BUFX2_insert9 gnd vdd FILL
XFILL_5__424_ gnd vdd FILL
XFILL_8__476_ gnd vdd FILL
XFILL_2__297_ gnd vdd FILL
XFILL_0__515_ gnd vdd FILL
X_518_ LoadCtl[5] _249_ _250_ vdd gnd NAND2X1
XFILL73350x72150 gnd vdd FILL
XFILL_1__302_ gnd vdd FILL
XFILL_4__446_ gnd vdd FILL
XFILL_8__285_ gnd vdd FILL
XFILL_9__319_ gnd vdd FILL
XFILL_0__324_ gnd vdd FILL
XFILL_9__492_ gnd vdd FILL
XFILL_3__468_ gnd vdd FILL
X_327_ _84_ _86_ _87_ _4_ vdd gnd OAI21X1
XFILL_1__531_ gnd vdd FILL
XFILL_7__399_ gnd vdd FILL
XFILL_5__462_ gnd vdd FILL
XFILL_6__404_ gnd vdd FILL
XFILL_9__548_ gnd vdd FILL
XFILL_0__553_ gnd vdd FILL
XFILL_3__277_ gnd vdd FILL
X_556_ _84_ _76_ _271_ _0_ vdd gnd OAI21X1
XFILL_1__340_ gnd vdd FILL
XFILL_4__484_ gnd vdd FILL
XFILL_5__518_ gnd vdd FILL
XFILL_9__357_ gnd vdd FILL
XFILL_7__420_ gnd vdd FILL
XFILL_0__362_ gnd vdd FILL
X_365_ ISreg_bF$buf1 Xin12b[4] _116_ _117_ vdd gnd NAND3X1
XFILL_4__293_ gnd vdd FILL
XFILL_5__327_ gnd vdd FILL
XFILL_8__379_ gnd vdd FILL
XFILL_4_BUFX2_insert7 gnd vdd FILL
XFILL_4_BUFX2_insert8 gnd vdd FILL
XFILL_4_BUFX2_insert9 gnd vdd FILL
XFILL_6__442_ gnd vdd FILL
XFILL_0__418_ gnd vdd FILL
XFILL_1__625_ gnd vdd FILL
XFILL_4__349_ gnd vdd FILL
X_594_ _45_ clk_bF$buf3 Yin12b[10] vdd gnd DFFPOSX1
XFILL_2__412_ gnd vdd FILL
XFILL_5__556_ gnd vdd FILL
XFILL_9__395_ gnd vdd FILL
XFILL_1__434_ gnd vdd FILL
XFILL_8__400_ gnd vdd FILL
XFILL_5__365_ gnd vdd FILL
XFILL_6__307_ gnd vdd FILL
XFILL_6__480_ gnd vdd FILL
XFILL_7__514_ gnd vdd FILL
XFILL_0__456_ gnd vdd FILL
X_459_ LoadCtl_6_bF$buf0 _198_ _196_ _199_ vdd gnd NAND3X1
XFILL_4__387_ gnd vdd FILL
XFILL_2__450_ gnd vdd FILL
XFILL_6__536_ gnd vdd FILL
XFILL_7__323_ gnd vdd FILL
XFILL_1__472_ gnd vdd FILL
XFILL_2__506_ gnd vdd FILL
XFILL_6_BUFX2_insert7 gnd vdd FILL
XFILL_6_BUFX2_insert8 gnd vdd FILL
XFILL_6_BUFX2_insert9 gnd vdd FILL
XFILL_3__621_ gnd vdd FILL
XFILL_6__345_ gnd vdd FILL
XFILL_9__489_ gnd vdd FILL
XFILL_7__552_ gnd vdd FILL
XFILL_0__494_ gnd vdd FILL
XFILL_1__528_ gnd vdd FILL
X_497_ ISreg_bF$buf3 Yin12b[10] _230_ _231_ vdd gnd NAND3X1
XFILL_1__281_ gnd vdd FILL
XFILL_2__315_ gnd vdd FILL
XFILL_5__459_ gnd vdd FILL
XFILL_3__430_ gnd vdd FILL
XFILL_9__298_ gnd vdd FILL
XCLKBUF1_insert0 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert1 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert2 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert3 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert4 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert5 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert6 clk clk_bF$buf0 vdd gnd CLKBUF1
XFILL_7__361_ gnd vdd FILL
XFILL_1__337_ gnd vdd FILL
XFILL_8__303_ gnd vdd FILL
XFILL_2__544_ gnd vdd FILL
XFILL_9__510_ gnd vdd FILL
XFILL_6__383_ gnd vdd FILL
XFILL_7__417_ gnd vdd FILL
XFILL_0__359_ gnd vdd FILL
XFILL_8__532_ gnd vdd FILL
XFILL_2__353_ gnd vdd FILL
XFILL_5__497_ gnd vdd FILL
XFILL_6__439_ gnd vdd FILL
XFILL_4__502_ gnd vdd FILL
XFILL_1__375_ gnd vdd FILL
XFILL_8__341_ gnd vdd FILL
XFILL_2__409_ gnd vdd FILL
XFILL_3__524_ gnd vdd FILL
XFILL_4__311_ gnd vdd FILL
XFILL_7__455_ gnd vdd FILL
XFILL_0__397_ gnd vdd FILL
XFILL_2__391_ gnd vdd FILL
XFILL_3__333_ gnd vdd FILL
XFILL_6__477_ gnd vdd FILL
X_612_ LoadCtl[5] clk_bF$buf1 LoadCtl[6] vdd gnd DFFPOSX1
XFILL_4__540_ gnd vdd FILL
XFILL75750x46950 gnd vdd FILL
XFILL_2__447_ gnd vdd FILL
XFILL_9__413_ gnd vdd FILL
XFILL_6__286_ gnd vdd FILL
X_421_ Xcalc[11] _96__bF$buf4 _166_ vdd gnd NAND2X1
XFILL74550x28950 gnd vdd FILL
XFILL_7__493_ gnd vdd FILL
XFILL_1__469_ gnd vdd FILL
XFILL_8__435_ gnd vdd FILL
XFILL_3__618_ gnd vdd FILL
XFILL_3__371_ gnd vdd FILL
XFILL_4__405_ gnd vdd FILL
XFILL_7__549_ gnd vdd FILL
XFILL_1__278_ gnd vdd FILL
XFILL_2__485_ gnd vdd FILL
XFILL_9__451_ gnd vdd FILL
XFILL_3__427_ gnd vdd FILL
XFILL_7__358_ gnd vdd FILL
XFILL_5__421_ gnd vdd FILL
XFILL_8__473_ gnd vdd FILL
XFILL_9__507_ gnd vdd FILL
XFILL_2__294_ gnd vdd FILL
XFILL_0__512_ gnd vdd FILL
X_515_ _236_ _247_ _32_ vdd gnd NAND2X1
XFILL_4__443_ gnd vdd FILL
XFILL_8__529_ gnd vdd FILL
XFILL_8__282_ gnd vdd FILL
XFILL_9__316_ gnd vdd FILL
XFILL_0__321_ gnd vdd FILL
XFILL_3__465_ gnd vdd FILL
X_324_ LoadCtl[1] _85_ vdd gnd INVX2
XFILL_7__396_ gnd vdd FILL
XFILL_8__338_ gnd vdd FILL
XFILL_6__401_ gnd vdd FILL
XFILL_9__545_ gnd vdd FILL
XFILL_0__550_ gnd vdd FILL
XFILL_3__274_ gnd vdd FILL
XFILL_4__308_ gnd vdd FILL
X_553_ Yin12b[9] _255_ _270_ vdd gnd NAND2X1
XFILL_4__481_ gnd vdd FILL
XFILL_5__515_ gnd vdd FILL
XFILL_2__388_ gnd vdd FILL
XFILL_9__354_ gnd vdd FILL
X_609_ LoadCtl[2] clk_bF$buf1 LoadCtl[3] vdd gnd DFFPOSX1
XFILL_4__537_ gnd vdd FILL
X_362_ _96__bF$buf3 _113_ _114_ _12_ vdd gnd OAI21X1
XFILL_4__290_ gnd vdd FILL
XFILL_5__324_ gnd vdd FILL
XFILL_8__376_ gnd vdd FILL
XFILL_0__415_ gnd vdd FILL
X_418_ _162_ _163_ _164_ vdd gnd NAND2X1
XFILL_1__622_ gnd vdd FILL
XFILL_4__346_ gnd vdd FILL
X_591_ _42_ clk_bF$buf5 Xin1[1] vdd gnd DFFPOSX1
XFILL_5__553_ gnd vdd FILL
XFILL_9__392_ gnd vdd FILL
XFILL_3__368_ gnd vdd FILL
XFILL74850x36150 gnd vdd FILL
XFILL_1__431_ gnd vdd FILL
XFILL_7__299_ gnd vdd FILL
XFILL_5__362_ gnd vdd FILL
XFILL_6__304_ gnd vdd FILL
XFILL_9__448_ gnd vdd FILL
XFILL_7__511_ gnd vdd FILL
XFILL_0__453_ gnd vdd FILL
X_456_ _195_ _78_ _196_ vdd gnd OR2X2
XFILL_4__384_ gnd vdd FILL
XFILL_5__418_ gnd vdd FILL
XFILL_6__533_ gnd vdd FILL
XFILL_0__509_ gnd vdd FILL
XFILL_7__320_ gnd vdd FILL
XFILL_2__503_ gnd vdd FILL
XFILL_8__279_ gnd vdd FILL
XFILL_6__342_ gnd vdd FILL
XFILL_0__318_ gnd vdd FILL
XFILL_9__486_ gnd vdd FILL
XFILL_0__491_ gnd vdd FILL
XFILL_1__525_ gnd vdd FILL
X_494_ _203_ _217_ _228_ vdd gnd AND2X2
XFILL_2__312_ gnd vdd FILL
XFILL_5__456_ gnd vdd FILL
XFILL_0__547_ gnd vdd FILL
XFILL_1__334_ gnd vdd FILL
XFILL_8__300_ gnd vdd FILL
XFILL_4__478_ gnd vdd FILL
XFILL_9_BUFX2_insert20 gnd vdd FILL
XFILL_9_BUFX2_insert21 gnd vdd FILL
XFILL_9_BUFX2_insert23 gnd vdd FILL
XFILL_9_BUFX2_insert24 gnd vdd FILL
XFILL_9_BUFX2_insert25 gnd vdd FILL
XFILL_2__541_ gnd vdd FILL
XFILL_6__380_ gnd vdd FILL
XFILL_7__414_ gnd vdd FILL
XFILL_0__356_ gnd vdd FILL
X_359_ _110_ Xin1[1] _112_ vdd gnd OR2X2
XFILL_4__287_ gnd vdd FILL

.ends
.end
