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
TIMED_DIR      = ../../../../0_Algorithm/sc_timed
TIMED_DIR_ABS := $(shell realpath $(TIMED_DIR))
UNTIMED_DIR      = ../../../../0_Algorithm/cpp_untimed
UNTIMED_DIR_ABS := $(shell realpath $(UNTIMED_DIR))
RTL_DIR        =  ../../source/rtl
RTL_DIR_ABS   := $(shell realpath $(RTL_DIR)) 

# SRCS
SC_SRCS  = ./sc_main.cpp \
		   ./$(SRC_DIR)/TestBench.cpp

# HDRS
SC_HDRS  = ./$(HDR_DIR)/TestBench.h \
		   ./$(HDR_DIR)/VerilatedNCO.h
SC_HDRS += $(wildcard $(TIMED_DIR_ABS)/$(HDR_DIR)/*.h)
SC_HDRS += $(wildcard $(TIMED_DIR_ABS)/$(HDR_DIR)/$(SUB_DIR)/*.h)

# RTLS
RTL_SRCS =  ./$(RTL_DIR)/nco.v
RTL_SRCS +=	./$(RTL_DIR)/phase_accumulator.v
RTL_SRCS += ./$(RTL_DIR)/cordic_element.v
RTL_SRCS += ./$(RTL_DIR)/output_terminal.v

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin

VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/$(HDR_DIR)
VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/$(HDR_DIR)
VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/$(HDR_DIR)/$(SUB_DIR)
VCFLAGS		+= -CFLAGS -I$(UNTIMED_DIR_ABS)/$(HDR_DIR)
VCFLAGS		+= -CFLAGS -I$(UNTIMED_DIR_ABS)/$(HDR_DIR)/$(SUB_DIR)
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS     += -CFLAGS -DVM_COVERAGE 
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
	@echo 'Makefile for "NCO" RTL verification SystemC TB'
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      verilated                           | generate exe file                           |'
	@echo '|      run SNUM=<sample num>               | test for ([un/signed],[X/Y],[FCW=2^(0~19)]) |'
	@echo '|                   |                      |     ex) make run SNUM=100                   |'
	@echo '|              (default: 200)              |                                             |'
	@echo '|      coverage                            | generate coverage data at ./logs/           |'
	@echo '|      clean                               | remove output files                         |'
	@echo '+----------------------------------------------------------------------------------------+'

verilated : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(RTL_SRCS) $(VERILOG_DEF) --exe --build $(VCOVERAGE) \
		$(VCFLAGS) $(SC_SRCS)
		
SNUM=200
run : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) $(SNUM) | tee ./test_vec/test_for_$(SNUM)samples.txt

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/ > ./logs/coverage.txt
	cat ./logs/coverage.txt

clean :
	rm -rf ./$(TARGET_DIR)