# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# SystemC testbench Reuse --------------------------------------
CURR_DIR_ABS    := $(shell realpath .)

# Targets ------------------------------------------------------
SC_TOP = TestBench
TOP_MODULE = nco
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

SC_SRCS =  ./sc_main.cpp \
		   ./srcs/TestBench.cpp

# Timed
SC_HDRS += ./hdrs/TestBench.h \
           ./hdrs/VerilatedNCO.h \
           ./hdrs/WrapperOfNCO.h

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin
RTL_DIR  =  ../../source/rtl
RTL_SRCS =  $(RTL_DIR)/nco.v \
            $(RTL_DIR)/phase_accumulator.v \
            $(RTL_DIR)/cordic_element.v \
            $(RTL_DIR)/output_terminal.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/hdrs
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl

# Build Rules --------------------------------------------------
verilated : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(RTL_SRCS) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) $(SNUM) | tee ./result/result_$(SNUM).txt
#| python3 plot_v3.py

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/ > coverage.txt

clean :
	rm -rf ./$(TARGET_DIR)