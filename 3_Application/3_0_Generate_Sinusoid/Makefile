# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# Files --------------------------------------
SRC_DIR = ./srcs
HDR_DIR = ./hdrs
SUB_DIR = subs

# dirs
CURR_DIR       = .
CURR_DIR_ABS  := $(shell realpath $(CURR_DIR))
RTL_DIR        = ./rtl
RTL_DIR_ABS   := $(shell realpath $(RTL_DIR))

# SRCS
SC_SRCS  = ./sc_main.cpp \
		   ./$(SRC_DIR)/GenerateSinusoid.cpp

# HDRS
SC_HDRS  = ./$(HDR_DIR)/GenerateSinusoid.h \
		   ./$(HDR_DIR)/WrapperOfNCO.h 

# RTLS
RTL_SRCS  = $(RTL_DIR_ABS)/nco.v
RTL_SRCS += $(RTL_DIR_ABS)/phase_accumulator.v
RTL_SRCS += $(RTL_DIR_ABS)/cordic_element.v
RTL_SRCS += $(RTL_DIR_ABS)/output_terminal.v

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin

VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/$(HDR_DIR)
VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/$(HDR_DIR)
VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/$(HDR_DIR)/$(SUB_DIR)
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
VCOVERAGE    = --coverage

# Targets ------------------------------------------------------
SC_TOP       = TestBench
TOP_MODULE   = nco
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all:
	@echo 'Makefile for "NCO" verilog Netlist(gen by yosys) verification SystemC TB'
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      verilated                           | generate exe file                           |'
	@echo '|      run FCW=[ ] BIAS=[ ] XY=[ ]         | run netlist TB with verilator               |'
	@echo '|               |        |      |          |     ex) make run FCW=4096 BIAS=0 XY=0       |'
	@echo '|          (1~524288) (1 or 0) (1 or 0)    |                  <-----default------>       |'
	@echo '|                     (on off) (X    Y)    |                                             |'
	@echo '|      coverage                            | generate coverage data at ./logs/           |'
	@echo '|      clean                               | remove output files                         |'
	@echo '+----------------------------------------------------------------------------------------+'

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall -Wno-UNUSEDSIGNAL --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(RTL_SRCS) $(SC_SRCS)

FCW=4096
BIAS=0
XY=0

run : $(TARGET_DIR)/$(TARGET) $(NET_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) $(FCW) $(BIAS) $(XY) | python3 plot.py $(FCW) $(BIAS) $(XY)


#------------------------------------------------------------------------------


clean :
	rm -rf ./$(TARGET_DIR)