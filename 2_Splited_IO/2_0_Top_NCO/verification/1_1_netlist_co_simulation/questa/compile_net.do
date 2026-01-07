onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# Verilog compile
vlog -sv -reportprogress 300 -work work -coverage +cover=bcesft ~/ETRI050_DesignKit/design/MyChip/2025_1st/NCO/2_Splited_IO/2_0_Top_NCO/source/netlist/asic/nco.v
vlog -sv -reportprogress 300 -work work -coverage +cover=bcesft ~/ETRI050_DesignKit/design/MyChip/2025_1st/NCO/2_Splited_IO/2_0_Top_NCO/source/netlist/asic/phase_accumulator.v
vlog -sv -reportprogress 300 -work work -coverage +cover=bcesft ~/ETRI050_DesignKit/design/MyChip/2025_1st/NCO/2_Splited_IO/2_0_Top_NCO/source/netlist/asic/cordic_element.v
vlog -sv -reportprogress 300 -work work -coverage +cover=bcesft ~/ETRI050_DesignKit/design/MyChip/2025_1st/NCO/2_Splited_IO/2_0_Top_NCO/source/netlist/asic/output_terminal.v
vlog -sv -reportprogress 300 -work work ~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v 

# compile and link SC source files
sccom -reportprogress -g -work work \
        sc_main.cpp -DMTI_SIM \
        srcs/TestBench.cpp -DMTI_SIM \
        -I./hdrs/ \
        -I./../../../../0_Algorithm/sc_timed/hdrs \
        -I./../../../../0_Algorithm/sc_timed/hdrs/subs

sccom -link

quit